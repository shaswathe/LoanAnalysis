import streamlit as st
st.title("Loan Risk Prediction System")
import streamlit as st
import pickle
import numpy as np

# Load trained model
model = pickle.load(open('loan_risk_model.pkl', 'rb'))

# Title
st.title("Loan Risk Prediction System")

st.write("Enter customer details to predict risk category")

# Inputs
credit_score = st.number_input("Credit Score")
income = st.number_input("Net Monthly Income")
delinquent = st.number_input("Number of Delinquencies")
enquiries = st.number_input("Total Enquiries")
cc_util = st.number_input("CC Utilization")
pl_util = st.number_input("PL Utilization")
missed_payment = st.number_input("Total Missed Payments")

# Prediction Button
if st.button("Predict Risk"):

    input_data = np.array([[
        credit_score,
        income,
        delinquent,
        enquiries,
        cc_util,
        pl_util,
        missed_payment
    ]])

    prediction = model.predict(input_data)

    if prediction[0] == 0:
        st.success("Low Risk Customer")

    elif prediction[0] == 1:
        st.warning("Medium Risk Customer")

    else:
        st.error("High Risk Customer")