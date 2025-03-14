Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BCFA611EA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 14:03:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44DD710E9E9;
	Fri, 14 Mar 2025 13:03:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="iSH/PJi0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A624B10E95C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 06:00:11 +0000 (UTC)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52DLlQx9030363
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 06:00:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 cbVY8Zk+Bw747ivKpsWKnew31zOXihiyANI1TT91neA=; b=iSH/PJi0YezNRtkY
 dpNv02INGvdoV/jUzb+Y97CXJhkRhl7k9IHGc8vIJYRhD8kBWAndMZt8bAQ9j8qK
 T25Xh+mdLgw1W8n2a/H61+Uu3I5VaWwhErZCuUyNumUHT0ki29GdpbW9IQhwcQUc
 D8gXtezyl9uQM66HnU18S4SnO2cr0Ngdvv/CFpEXWSYiEzBRrey5eLUNblDyIB/p
 YQ4UpbtDQqHQu6yYYlHQ7fxOk/3gcFQlq9SoqruRdQNHfAB0jKQhfSKLgs4O4ubw
 RNXefAxKhL5OpjqUM4Kt1Dtk3BCKgoS5ZzJNxy+rkXY65htEEawZep5sB1KFgU4y
 Hz7MgQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2qr65r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 06:00:10 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-6e90b13f5c3so38236226d6.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 23:00:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741932010; x=1742536810;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cbVY8Zk+Bw747ivKpsWKnew31zOXihiyANI1TT91neA=;
 b=UWJJlMsQxS/lrhrVWflw7MLuSFT5JopVmR9RzfNg5Q1GOP22iLyPoMqE4jZCsVBu8u
 Agm71EyjLaaaSB2QbMEUbx5Z8MFVx8PHnubMWUqcAVxLEN+0cbIa8jO3Cc3Si594L8mZ
 bqnridCSi1Y0b7dzl3vmn5m9Og+gfHlrr4rbQUOErvRS/zZ5l4qIsjRAtivKZjN07X4u
 CwqyULG7iAsqea9X+w5CN/xUHBrmBGP9Hd1alJS8RGN6E+GbT5AHRf6u2tTtJk5pI3Oj
 QcPfCvxq0q70X+U93aaR5dQDBuST6CI8mzC9wURDehyfOzpQsHouzirpdW7+uHHNv2Yj
 Le/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCU2hBk/xE8TyOKh/6y7Xo2uqnm39OTALFkDKI1KGzmHnlUL6V3hCQvwVqENBydTHGYKIqxxbeYHMXk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxCJTUAi/gg1Eo6nvPAuNltO8Fz23L7WELcKO63oPhhF4upcxBH
 D1in3QOBp/g7wYl7vII+q9v8Ryig/hRjeIim7hqIihmEWgycctAY6RWRvODAqDZYAw45Xp/CKYi
 iWjFmVPfS+djbDHxrU2EsDKlDzX5sxaYNydb1siKqUcGb72xaVnR/oiUnUchDf3C4Tu8=
X-Gm-Gg: ASbGncuFrzV/87eJHRK1uev5gZOSIctazBzrIY5I9K8kzF2MjWE/zXqrv/Iylt0VKXY
 BW1S8WtbkMgfjzKq8u+H2afv5F8tBdxKKoG0t/vw24ZL8NpXSuqDVBJ7CIKZTs693cXGovJ9AZ4
 HozepdswKykZGwtuFzdA3Ycpqv2MY4OtuNjEjrXHISBkwzLqbHZyHbTG2jxoQ1ayjbiGPGB8Goz
 GdT39gpMmuIYOJdPVvT/0QINIshTh5VoiW+fF+MmwFeWaLwYMpp+ofggsYZKMQBg8OlwUGgAKKR
 Qe6+4rLbN7SmCMbPnN97kzTFuMzzkmPbuaYhRZBvcyyzcJHdBAxSyFpWgImJI5jEZKgKZEMG1W0
 S8TnGfVfLLvxPUakePxgJGzdIfNM0
X-Received: by 2002:ad4:574b:0:b0:6e8:ed7f:1a79 with SMTP id
 6a1803df08f44-6eaeaae57d1mr15644346d6.32.1741932009821; 
 Thu, 13 Mar 2025 23:00:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHcgU00eyr5XASnEImRqIWYtWGc2UYmD6PrXDB358rvxCRjRi5ns6GMfxlC2KlnhemJ1qIM5w==
X-Received: by 2002:ad4:574b:0:b0:6e8:ed7f:1a79 with SMTP id
 6a1803df08f44-6eaeaae57d1mr15643986d6.32.1741932009432; 
 Thu, 13 Mar 2025 23:00:09 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-549ba88332dsm416136e87.181.2025.03.13.23.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Mar 2025 23:00:08 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 14 Mar 2025 07:59:45 +0200
Subject: [PATCH RFC v4 4/6] drm/display: dp-cec: use new DCPD access
 helpers
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-drm-rework-dpcd-access-v4-4-e86ef6fc6d76@oss.qualcomm.com>
References: <20250314-drm-rework-dpcd-access-v4-0-e86ef6fc6d76@oss.qualcomm.com>
In-Reply-To: <20250314-drm-rework-dpcd-access-v4-0-e86ef6fc6d76@oss.qualcomm.com>
To: Lyude Paul <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Yongqin Liu <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jani Nikula <jani.nikula@intel.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5086;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=d/g0s+1RbkEZsu0cFrspMKQl16Oh0pnUASV91YvLy1M=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ/rlozfjJduPlNmHutiX5RW7N8Y/suDPkal6dvNz+qyIz
 nkTZ9h0MhqzMDByMciKKbL4FLRMjdmUHPZhx9R6mEGsTCBTGLg4BWAixkc5GKabub47veITs/KC
 4jfrnZnmB2g1eZgfuyIgkPL0aVT79GdB9xgPzd/4bx+/z/QOGb1CjuLc2xbdaT3Jv507dVMY50z
 eYlFlrLBvqki4vr3Djt/CUpLqDN15BxRqNKwVctIS2lXbipn5lNs4W0VWMccqt23t4v737F+4Hg
 PfiteRmx4samJPcFm64Ijkc6mDfMqOjaf/nvt+71LFO6VfikEKX8NTEpLWxVcq9Nz6cPmcz5dIp
 x3bTNO2XrGZe8LkbnxSaKXgmYNXtM/NnFWlE2qVf0Ci1yPJ/rCK37FfSzu1+N5rXbNJ1tn56kmO
 ZLRV2iZX16dfS9eEn+8r2D9/wtQ7b+3cPdYp8G1Mv10BAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: USG4NmVHBNUATR8M6IbspxhEG503DvUp
X-Proofpoint-GUID: USG4NmVHBNUATR8M6IbspxhEG503DvUp
X-Authority-Analysis: v=2.4 cv=TIhFS0la c=1 sm=1 tr=0 ts=67d3c5ea cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=20KFwNOVAAAA:8 a=QyXUC8HyAAAA:8
 a=Bz2Z_qUYR0Plbu_cxIUA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_02,2025-03-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 mlxscore=0 clxscore=1015 bulkscore=0
 malwarescore=0 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140045
X-Mailman-Approved-At: Fri, 14 Mar 2025 13:03:45 +0000
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

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Switch drm_dp_cec.c to use new set of DPCD read / write helpers.

Reviewed-by: Lyude Paul <lyude@redhat.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/display/drm_dp_cec.c | 37 ++++++++++++++++++------------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_cec.c b/drivers/gpu/drm/display/drm_dp_cec.c
index 56a4965e518cc237c992a2e31b9f6de05c14766a..ed31471bd0e28826254ecedac48c5c126729d470 100644
--- a/drivers/gpu/drm/display/drm_dp_cec.c
+++ b/drivers/gpu/drm/display/drm_dp_cec.c
@@ -96,7 +96,7 @@ static int drm_dp_cec_adap_enable(struct cec_adapter *adap, bool enable)
 	u32 val = enable ? DP_CEC_TUNNELING_ENABLE : 0;
 	ssize_t err = 0;
 
-	err = drm_dp_dpcd_writeb(aux, DP_CEC_TUNNELING_CONTROL, val);
+	err = drm_dp_dpcd_write_byte(aux, DP_CEC_TUNNELING_CONTROL, val);
 	return (enable && err < 0) ? err : 0;
 }
 
@@ -112,7 +112,7 @@ static int drm_dp_cec_adap_log_addr(struct cec_adapter *adap, u8 addr)
 		la_mask |= adap->log_addrs.log_addr_mask | (1 << addr);
 	mask[0] = la_mask & 0xff;
 	mask[1] = la_mask >> 8;
-	err = drm_dp_dpcd_write(aux, DP_CEC_LOGICAL_ADDRESS_MASK, mask, 2);
+	err = drm_dp_dpcd_write_data(aux, DP_CEC_LOGICAL_ADDRESS_MASK, mask, 2);
 	return (addr != CEC_LOG_ADDR_INVALID && err < 0) ? err : 0;
 }
 
@@ -123,15 +123,14 @@ static int drm_dp_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
 	unsigned int retries = min(5, attempts - 1);
 	ssize_t err;
 
-	err = drm_dp_dpcd_write(aux, DP_CEC_TX_MESSAGE_BUFFER,
-				msg->msg, msg->len);
+	err = drm_dp_dpcd_write_data(aux, DP_CEC_TX_MESSAGE_BUFFER,
+				     msg->msg, msg->len);
 	if (err < 0)
 		return err;
 
-	err = drm_dp_dpcd_writeb(aux, DP_CEC_TX_MESSAGE_INFO,
-				 (msg->len - 1) | (retries << 4) |
-				 DP_CEC_TX_MESSAGE_SEND);
-	return err < 0 ? err : 0;
+	return drm_dp_dpcd_write_byte(aux, DP_CEC_TX_MESSAGE_INFO,
+				      (msg->len - 1) | (retries << 4) |
+				      DP_CEC_TX_MESSAGE_SEND);
 }
 
 static int drm_dp_cec_adap_monitor_all_enable(struct cec_adapter *adap,
@@ -144,13 +143,13 @@ static int drm_dp_cec_adap_monitor_all_enable(struct cec_adapter *adap,
 	if (!(adap->capabilities & CEC_CAP_MONITOR_ALL))
 		return 0;
 
-	err = drm_dp_dpcd_readb(aux, DP_CEC_TUNNELING_CONTROL, &val);
-	if (err >= 0) {
+	err = drm_dp_dpcd_read_byte(aux, DP_CEC_TUNNELING_CONTROL, &val);
+	if (!err) {
 		if (enable)
 			val |= DP_CEC_SNOOPING_ENABLE;
 		else
 			val &= ~DP_CEC_SNOOPING_ENABLE;
-		err = drm_dp_dpcd_writeb(aux, DP_CEC_TUNNELING_CONTROL, val);
+		err = drm_dp_dpcd_write_byte(aux, DP_CEC_TUNNELING_CONTROL, val);
 	}
 	return (enable && err < 0) ? err : 0;
 }
@@ -194,7 +193,7 @@ static int drm_dp_cec_received(struct drm_dp_aux *aux)
 	u8 rx_msg_info;
 	ssize_t err;
 
-	err = drm_dp_dpcd_readb(aux, DP_CEC_RX_MESSAGE_INFO, &rx_msg_info);
+	err = drm_dp_dpcd_read_byte(aux, DP_CEC_RX_MESSAGE_INFO, &rx_msg_info);
 	if (err < 0)
 		return err;
 
@@ -202,7 +201,7 @@ static int drm_dp_cec_received(struct drm_dp_aux *aux)
 		return 0;
 
 	msg.len = (rx_msg_info & DP_CEC_RX_MESSAGE_LEN_MASK) + 1;
-	err = drm_dp_dpcd_read(aux, DP_CEC_RX_MESSAGE_BUFFER, msg.msg, msg.len);
+	err = drm_dp_dpcd_read_data(aux, DP_CEC_RX_MESSAGE_BUFFER, msg.msg, msg.len);
 	if (err < 0)
 		return err;
 
@@ -215,7 +214,7 @@ static void drm_dp_cec_handle_irq(struct drm_dp_aux *aux)
 	struct cec_adapter *adap = aux->cec.adap;
 	u8 flags;
 
-	if (drm_dp_dpcd_readb(aux, DP_CEC_TUNNELING_IRQ_FLAGS, &flags) < 0)
+	if (drm_dp_dpcd_read_byte(aux, DP_CEC_TUNNELING_IRQ_FLAGS, &flags) < 0)
 		return;
 
 	if (flags & DP_CEC_RX_MESSAGE_INFO_VALID)
@@ -230,7 +229,7 @@ static void drm_dp_cec_handle_irq(struct drm_dp_aux *aux)
 		 (DP_CEC_TX_ADDRESS_NACK_ERROR | DP_CEC_TX_DATA_NACK_ERROR))
 		cec_transmit_attempt_done(adap, CEC_TX_STATUS_NACK |
 						CEC_TX_STATUS_MAX_RETRIES);
-	drm_dp_dpcd_writeb(aux, DP_CEC_TUNNELING_IRQ_FLAGS, flags);
+	drm_dp_dpcd_write_byte(aux, DP_CEC_TUNNELING_IRQ_FLAGS, flags);
 }
 
 /**
@@ -253,13 +252,13 @@ void drm_dp_cec_irq(struct drm_dp_aux *aux)
 	if (!aux->cec.adap)
 		goto unlock;
 
-	ret = drm_dp_dpcd_readb(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1,
-				&cec_irq);
+	ret = drm_dp_dpcd_read_byte(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1,
+				    &cec_irq);
 	if (ret < 0 || !(cec_irq & DP_CEC_IRQ))
 		goto unlock;
 
 	drm_dp_cec_handle_irq(aux);
-	drm_dp_dpcd_writeb(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1, DP_CEC_IRQ);
+	drm_dp_dpcd_write_byte(aux, DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1, DP_CEC_IRQ);
 unlock:
 	mutex_unlock(&aux->cec.lock);
 }
@@ -269,7 +268,7 @@ static bool drm_dp_cec_cap(struct drm_dp_aux *aux, u8 *cec_cap)
 {
 	u8 cap = 0;
 
-	if (drm_dp_dpcd_readb(aux, DP_CEC_TUNNELING_CAPABILITY, &cap) != 1 ||
+	if (drm_dp_dpcd_read_byte(aux, DP_CEC_TUNNELING_CAPABILITY, &cap) < 0 ||
 	    !(cap & DP_CEC_TUNNELING_CAPABLE))
 		return false;
 	if (cec_cap)

-- 
2.39.5

