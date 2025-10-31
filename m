Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5FFC2430E
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 10:36:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D29010EAE2;
	Fri, 31 Oct 2025 09:36:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="WNppK8iX";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H1pkdngH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11B4110EAE2
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 09:35:59 +0000 (UTC)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 59V9YF6K1513350
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 09:35:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 AE9otBVBcEexeCfrvE/nk91Z9IAd1uol89Nt0hwiqRU=; b=WNppK8iXQ+5JkJmJ
 IK0p23JVD7GhYa8XpPx4aQKVzOWSw1aSe0VeQEEg9CEGajR7Y4XeujzHO4kojchR
 5QGH3jjf7snoIHG+iqLVoZDuanuXwMi3U6mihO9Ibi1VEB2VI4TT8DsyDK2KroSw
 zTfPe1uEYnlje2lrz9qp+T3kisdPxlf9VyxIJWz2xhgvcFJc8YYECFqVdD6JxqnD
 1VSZO+oDKfh1zP5SX+LX33ayD5hkoAIF/w0sfgimjTxhLjes3m2yKbJHmyUVgS0b
 V69mggpmosmgH4zXYHh0XF5da9s8hnsaQoOEZkfAS7ZgOcMi3q5yB0EWLS250vir
 ev2v4A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4k69h71v-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 09:35:58 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-4ecf82440dcso2912861cf.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Oct 2025 02:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1761903358; x=1762508158;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=AE9otBVBcEexeCfrvE/nk91Z9IAd1uol89Nt0hwiqRU=;
 b=H1pkdngHvqL03xmGlrSxQztcZlHnlcpNRbUm7AdHmyW3Hn2APnfYhFgMHHbBDMoRNk
 fyB6TYhbwh1NeQznxkM79PNb9lDpHocfinatfVYIdAsij/AKWyg7p+vOtPOmQ445TqQX
 U84nXrtbyFcRoa60b4AwttGL8+7u4UbX00H7QnSOm4yPSh1q08yB9+wSglOfQNvir8it
 8AbOFKB7wnp/xFYklDRtxS6KWVlJLbglF5rlU/2N5axiXCvbKTImeXzpN/m325Uozuj5
 NDBT3KrpNM9chlGs6kqrA6oU2MZLH3f9hHw6i76kD/XscweEnQcPsTf8VSeM3/K8uKSK
 KpUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761903358; x=1762508158;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AE9otBVBcEexeCfrvE/nk91Z9IAd1uol89Nt0hwiqRU=;
 b=i9Ffgi+ZmnmvoKRa4xZnC3Nk54R8aS8rYMfaYXRxMEu1PftQYSCya4qpkqYeUexPl6
 Dfe98qnCL5lCeugMgzHuPbZW0QZ50yOfLOJeACYYQV9mW1cq7cSIB4I+yFv0T/f6mq0V
 0/CIti/ZtXvd7rAC4b+/pd2ciaqYpIQtuED5x2y0M/AarN7sBpGq1Q1hvhi2/2JC9nIy
 TBbb+oSi3MrtVDfnKHjg6vOBAvVQYrHIQr6X/8W0QegLDo4b2CppsjbLGiqvjiPGJDFJ
 YXanbC8Usjd7IojSzHygd4R0EaLlk9LxsMhW1zemr+Pr2Q2lQl92/wW5khr+w0Xa981Z
 ZnZg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWS4Mz/PwqTXnQS1+/AlSSyyTBk07aCYEKzS3/w43kOkTBRs68+4em3OQVAJo0i+aLcqUwzVI8cIww=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxNn4gBftq2fdHixFAZ0ClpBZpp9EeFdQ8hwLH49fhWGJCu9QwX
 ebKo1t2mRtI8XtK9DUmUiVOEdaB3TMAapy2J4YpoU5NZ+hgo2zIEkhuFzayUEDI8rCNZ4MQUclz
 M4BUxO8ifYeygvUHtOyLjBwp3gBMD+46O86+sbS4d5COpvCXGH9cGrJiCrlqrWeDznEy0S9s=
X-Gm-Gg: ASbGnctaag5bKavd6u2uFLGvRCdT1oOsLvTEvvKVoOTP9512Ny3Yhq6dSjWpDpz+ksH
 FC3Mrk7WUFrXQhd0wJ8Hnn+FlJVhWsphVPaz5x0/egbAXbO5lYdezdiyCB66jceiQ0Pxl4bR6Z2
 jme0cBSEPOkIX1DgskgYJz2J2xVU+mMa6QOOotlCE2HRhP1wko2WWpBzKuZBDAiOIyxMl2jeuy/
 IRshCzzC+Y3y8P25MZTnztzzTdfkXWuaaWhTNQngayJ8DgHYQyrigvfLNnqgCTD69XkUp52pFFp
 oRV6yRoJgd8PNmj6TTBjY0bD64/Dmb3gB2E6M0pg5h0yqe+/xPy0BhdhpdNAJUA8NdIbLSzfqNM
 vZEzlBMfly+CgSR7aTIB/GDSgY3NRfRWquHqxXRh9RXRweo9gaNjsyCYV
X-Received: by 2002:ac8:7f94:0:b0:4ec:efbe:804c with SMTP id
 d75a77b69052e-4ed30fbae1amr19443901cf.11.1761903358307; 
 Fri, 31 Oct 2025 02:35:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFM64Dqu4qewULsJFetcmJmwTPjhEdUVf5uOKf3Q05MzwfWGWCLJH888ksuI5tZfx6XDLpCCQ==
X-Received: by 2002:ac8:7f94:0:b0:4ec:efbe:804c with SMTP id
 d75a77b69052e-4ed30fbae1amr19443691cf.11.1761903357777; 
 Fri, 31 Oct 2025 02:35:57 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl.
 [78.88.45.245]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6407b438536sm1183628a12.26.2025.10.31.02.35.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Oct 2025 02:35:57 -0700 (PDT)
Message-ID: <60a8f86b-f529-47d0-92fd-90ffebe28243@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 10:35:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/display/dp: Rename bit 4 of DPCD TEST_REQUEST to
 match DP2.1 spec
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "robin.clark@oss.qualcomm.com" <robin.clark@oss.qualcomm.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "lumag@kernel.org"
 <lumag@kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "sean@poorly.run" <sean@poorly.run>
References: <20251028222817.3290035-1-khaled.almahallawy@intel.com>
 <78679e08-2a38-477b-a080-be0442465fbe@oss.qualcomm.com>
 <e8902945b65cee777e14bd47ac6e27ff4a0bd281.camel@intel.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e8902945b65cee777e14bd47ac6e27ff4a0bd281.camel@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: vTzvWGepABGs4S7oNClRWZsJMKHsd-3t
X-Proofpoint-GUID: vTzvWGepABGs4S7oNClRWZsJMKHsd-3t
X-Authority-Analysis: v=2.4 cv=OYaVzxTY c=1 sm=1 tr=0 ts=690482ff cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=COk6AnOGAAAA:8 a=1UTDxpAJyHcS0dvM0xQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDA4NiBTYWx0ZWRfX78KoIP6koQDY
 7uKjvdI1vYCD0MvlXdiO8WGGANmk9vGYxIAeBDOZ2cP0RaxzGHv5FX51hTvCkkUFE5XPKzCoT4J
 lx5S5uiqFCF4ehbEy06Xz4nGtdePucz7sfUK0ODn8CZlnvt+HVvYzjxSF1/C5P8dAZ06MnQGs4S
 ZDKpbbS9n6opbRvJc/Rx3wWpyedTTUnTqyCpUcZB1VHiMT3sgG+I+aMaaw/8+ahJjReesR7C4QR
 /y6+bATKp+o68bk/dThPXQZ5ddEcPvyZmrN3WuMF9ZZukbKEGLK+5Gmhgns20HnAYyRejC/gB51
 49mvZ2UDB3eAyGHvLgTTLApgCOPLT4W5BGhqojApkyeggYQt/+hB7g85QmyfYE+0nkz3wGrtdxX
 HQJ9dzCC8IegmeL2URllrUUs50Od7A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310086
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/29/25 10:42 PM, Almahallawy, Khaled wrote:
> On Wed, 2025-10-29 at 10:42 +0100, Konrad Dybcio wrote:
>> On 10/28/25 11:28 PM, Khaled Almahallawy wrote:
>>> The DP_TEST_LINK_FAUX_PATTERN field was deprecated in the DP 1.3
>>> spec.
>>> Update its name to align with the DP 2.1 definition and reflect its
>>> actual use in the code. No functional changes.
>>>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Cc: Rob Clark <robin.clark@oss.qualcomm.com>
>>> Cc: Dmitry Baryshkov <lumag@kernel.org>
>>> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
>>> Cc: Sean Paul <sean@poorly.run>
>>> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
>>> ---
>>>  drivers/gpu/drm/msm/dp/dp_link.c | 2 +-
>>>  include/drm/display/drm_dp.h     | 2 +-
>>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/msm/dp/dp_link.c
>>> b/drivers/gpu/drm/msm/dp/dp_link.c
>>> index 66e1bbd80db3..5d465cf4dbc2 100644
>>> --- a/drivers/gpu/drm/msm/dp/dp_link.c
>>> +++ b/drivers/gpu/drm/msm/dp/dp_link.c
>>> @@ -665,7 +665,7 @@ static int msm_dp_link_parse_request(struct
>>> msm_dp_link_private *link)
>>>  		return rlen;
>>>  	}
>>>  
>>> -	if (!data || (data == DP_TEST_LINK_FAUX_PATTERN)) {
>>> +	if (!data || (data ==
>>> DP_TEST_PHY_TEST_CHANNEL_CODING_TYPE)) {
>>>  		drm_dbg_dp(link->drm_dev, "link 0x%x not
>>> supported\n", data);
>>>  		goto end;
>>>  	}
>>> diff --git a/include/drm/display/drm_dp.h
>>> b/include/drm/display/drm_dp.h
>>> index e4eebabab975..610b8cbf1125 100644
>>> --- a/include/drm/display/drm_dp.h
>>> +++ b/include/drm/display/drm_dp.h
>>> @@ -849,7 +849,7 @@
>>>  # define DP_TEST_LINK_VIDEO_PATTERN	    (1 << 1)
>>>  # define DP_TEST_LINK_EDID_READ		    (1 << 2)
>>>  # define DP_TEST_LINK_PHY_TEST_PATTERN	    (1 << 3) /* DPCD >=
>>> 1.1 */
>>> -# define DP_TEST_LINK_FAUX_PATTERN	    (1 << 4) /* DPCD >=
>>> 1.2 */
>>> +# define DP_TEST_PHY_TEST_CHANNEL_CODING_TYPE	    (1 << 4)
>>
>> I think it'd be useful to keep a comment of what it was before the
>> deprecation and rename
> 
> Given that msm is currently the only driver that reads this bit and
> correctly interprets it when handling automated test requests to
> determine 128b/132b support—and following the style used throughout
> this file, since I don’t see other examples referencing deprecated
> names in comments
> 
> what do you think about using something like this instead?
> 
> #define DP_TEST_PHY_TEST_CHANNEL_CODING_TYPE  (1 << 4) /* DP 2.1 */

Makes sense, let's do it

Konrad
