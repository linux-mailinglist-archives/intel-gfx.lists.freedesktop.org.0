Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ENxsJO635mli0AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:34:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37814434DF7
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FA110EB69;
	Mon, 20 Apr 2026 23:34:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="HpvBvE1Q";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XswJcXwk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2607E10E7C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:34:02 +0000 (UTC)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63KF32531600571
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:34:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 li1QTXDLKUg9Sb2Wzb5S3vgbZrLxrrKq59N8rWxZa0g=; b=HpvBvE1QLHNxgFMc
 QoUecGt/rJg9vNlE4G4+5je7Lv52Wc44BKL4NREup+GtkJlzefSb9vMblGPkSi07
 ssTeEQHMaSu89LcWDOxAHa/PJL+Yf8BE0ke+O2jJfO0FpawHKOcX1KLkIqHvcn1E
 gBG+0dRkFjFCmb1LR8re7MIJVF4MmVbox0mXkUWK8uWMxtq09/mu9qzVtW9uZkZA
 xv+A/lnE9lVAnDglO/OJuphfp2iKqnhgqrn6HY4ejWe8pYxvZxopCN2STQcdgeP8
 I2cyMh/ZdSD8PqhlianfkMpq4FGHhh37vXF/fTe9/kimWd6Q1USMiJ9QOyLukYDL
 czPPFw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh89aw2e-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:34:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-50edf0245b0so30030011cf.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 16:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776728040; x=1777332840;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=li1QTXDLKUg9Sb2Wzb5S3vgbZrLxrrKq59N8rWxZa0g=;
 b=XswJcXwkuoqkWu/5ltgE38HlPSfFlXoOWp/vJpskzOWJHmwVUvjwyEtz5ql1OVRXKR
 vRZRBstuGnFFTpCTf1Z/iGdfXylVOFxlupnV0G8HIVi8edh3P/2g6tNla2rTYm5Q/IR0
 RWn8A1k86kw8GR4XlLJWhTy1sUp5e6R5O8Il43qY8b4J+q6LuK8FnD2mDmij8+2keU5z
 BJm32Si/ijBl9Ilpd4KnHhY0gUfXDLvL9abLnDnSEBIdVA4UlkdBIoDj7odxcpzFqEWJ
 5wktxIW62VdoKsnVKqp27Xusy6Lb0gZ3hKRfidK2FbCzzLTvZufMtHQrK0G5SJXBCm6t
 VbIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776728040; x=1777332840;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=li1QTXDLKUg9Sb2Wzb5S3vgbZrLxrrKq59N8rWxZa0g=;
 b=pc5BWyf4rBaxDHhHPTpZk9+VN3rbwuDXVKbJlsWB27qxc7aVDlV9x2jIMIZt3sMC/b
 5qUTousG9xGO/CViSxAOzWMGrEWqYYNv693cZrsai5vidjt4slg/51HAxHffSb/9UGKX
 Jqiv4QE5MtCgW1RfSXoBh/tGZ5F7irpKe9Ahw+i96rMw2jGmWcLvznS0tVcQ+cphFcYP
 A0GR0prIh5+XsbxdkQFJtEujQSqYMCQQyNSr7vzA9LrUX5b7c7zNQLVGfmdXn7ZuBCVS
 llu3FtDEilfKuwi0RN9tXJxx4tGaxClO+2SFMysIY5FtGUr7vcmDsMKTaKPsO0ZEiSA+
 x7ig==
X-Forwarded-Encrypted: i=1;
 AFNElJ9E5/rJLjm05spakQIrvZUf7BQaTDa05Gu1BiQBUMx8LqiwNj5TMCwocfPgMsNXzqu2k1OUvUEimFs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwPE8wHx+06YyVslanyGYx9Did3jcOJ1Jysto7G3r0u7Z0709Ba
 Dly/aKjbWBXi6Kq3COD35ZWP3KZUgiJoW0JRSPj3L54zLlTJtg6PKwuTKVHti1MQ3pHwQGwULPX
 HPkZql4cMOzGCMuf5Qqz8hWDDbO6bbNXC3VZultAv7rzkbKkcpLPwDYcyTanLFNRcibjUhjY=
X-Gm-Gg: AeBDietT3+yDj84qzwo4Tcipc1pwUoRXPi4WrDeCwZOUbJIIV5VOSAGKfiAaw9vrJrq
 BmPJGn5bvS80Z/+T9k4f654Njlb2ohdYc+ILi798ZU86+r+auKWl2dRDE4Kf++axOCmNy1FtEdZ
 ADXorgpbKSUao8OdE3P4tjvUJGd1dt2AXzgvKaSdz7KPXsNXtpSYkAygF2VoXozcRvb+RP9wQeZ
 S9q6HHy6r1CnptjAquAi5xH2fQ94w5u/v5rToxKNtQlL45SyxrIVWvRck2PoifwRgvbYIIAO5LH
 bimM98f/LVqC2blB9tfSpnIOjCXJ1jpP96IoLjckS/yjGqeZNL9ZoZ+hHVd63R6jEnjVuBt2Bxj
 gvEPOrKQGtHVITALL17HXhHZ6Netj+zvnIOYa5uvD93HORtnWiBe3J1M5d/kJxFtbsK2OZ0u4qQ
 zZ6B4yetDzc3pxsVHuzcskhXRZuiX/H9KoKv9/b3ME6mgq2A==
X-Received: by 2002:a05:622a:4245:b0:50d:8056:da41 with SMTP id
 d75a77b69052e-50e36836149mr208589971cf.2.1776728040287; 
 Mon, 20 Apr 2026 16:34:00 -0700 (PDT)
X-Received: by 2002:a05:622a:4245:b0:50d:8056:da41 with SMTP id
 d75a77b69052e-50e36836149mr208589331cf.2.1776728039743; 
 Mon, 20 Apr 2026 16:33:59 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185bc627sm3320714e87.29.2026.04.20.16.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 16:33:57 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 21 Apr 2026 02:33:36 +0300
Subject: [PATCH v3 6/6] usb: typec: ucsi: huawei-gaokun: pass down HPD_IRQ
 events
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260421-hpd-irq-events-v3-6-44d2bf40dfc2@oss.qualcomm.com>
References: <20260421-hpd-irq-events-v3-0-44d2bf40dfc2@oss.qualcomm.com>
In-Reply-To: <20260421-hpd-irq-events-v3-0-44d2bf40dfc2@oss.qualcomm.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Adrien Grassein <adrien.grassein@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Clark <robin.clark@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>,
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1309;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=mxGolAt7ROQ681cKNciUMVefMdiRDsSwC5zox5THv9w=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBp5rfNcYA6Kn6vJQasDmoVbhaWkp9oc1LDRkXYb
 fBIXvmCUy2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaea3zQAKCRCLPIo+Aiko
 1R4BB/9GohI0ZFgi+xqrkYGMe/3Udg5Nue1jmSANu/Otqvi7uD155XM2P9LxdiNxtumuSBIOZV0
 ZM2YwJ0094hTPQVf33GGO2TTcvusZV5uQYJ6XLsZYcjreXdNaU7hK/gy3K8J4CDrGah5ai3YG9m
 YPp1Ywnej+ym0q/P04Fko3yj+I+nVVhCJX0grp75+IBHoxlXcN3UQoN52HycYjjeL4oagQReQym
 NR8P+cZwdhtT8RR8dl13lWVTAt92Z7A+IJLUpzga0kyQWAuxOxI4W8RLlO1AGkhOTjPYzfNV+2S
 1iHdUU4TuohfcHIGhYbTI1erKqCzoEvMrcoEnptsZKObh68L
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDIzMCBTYWx0ZWRfXxgsyb0GPgy3Y
 fHnNwwmucDtuWgevo/kDYeuG+hhsHw8psXGsiwgf0jqSmVoemxUgtL/cDeATFBlOZ662ig//LQl
 MD9fCDuoRU5RIPRw642DNYWgICezNohDJh+iH8Qvmdsa5Q4fCduRnJ2iZL6B9SM5yGOxOPzhTGj
 Xa6wReklxOfJNGOVlRffzu8oX6dADtL1tgKAJpjiiIKBYWQxk6fIJDmZNvFgVATD9xSij8iZ33t
 90KsJH773OqXpvD3aRqZ2RS30QNWc/9hi0zxXTuiFAPL//p8c71wklZeZACMKTD3e81dFt27+S5
 yTkVCxR6a/61AOm3RBxU371KyyrwI0AP8frFsJ/Pufw4XkkLJU9Mp0VeIZa2fis/Ro7GOx4+9Q6
 QQxDgK7cXDt5fqOyVAizo3EmdM6rkAZSL2ggLOvBerc4pDIg54WIeZ0VDFzJAjX4tOdwy7CNQAr
 Oe805WPFIMuBBcfJoMA==
X-Authority-Analysis: v=2.4 cv=D6B37PRj c=1 sm=1 tr=0 ts=69e6b7e8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=pGLkceISAAAA:8
 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=xNxaoOyMFJLcTYWjjPMA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 9FrKTtBYOjONmd8VsZF0qyNnLSkuYKiV
X-Proofpoint-GUID: 9FrKTtBYOjONmd8VsZF0qyNnLSkuYKiV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_04,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200230
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[42];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	ARC_NA(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,intel.com:email,qualcomm.com:dkim,qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 37814434DF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Pass IRQ_HPD events to the HPD bridge, letting those to be delivered to
the DisplayPort driver.

Reviewed-by: Pengyu Luo <mitltlatltl@gmail.com>
Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c b/drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c
index ca749fde49bd..5e3f887ecbd8 100644
--- a/drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c
+++ b/drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c
@@ -299,10 +299,13 @@ static void gaokun_ucsi_handle_altmode(struct gaokun_ucsi_port *port)
 
 	/* UCSI callback .connector_status() have set orientation */
 	if (port->bridge)
-		drm_aux_hpd_bridge_notify(&port->bridge->dev,
-					  port->hpd_state ?
-					  connector_status_connected :
-					  connector_status_disconnected);
+		drm_aux_hpd_bridge_notify_extra(&port->bridge->dev,
+						port->hpd_state ?
+						connector_status_connected :
+						connector_status_disconnected,
+						port->hpd_irq ?
+						DRM_CONNECTOR_DP_IRQ_HPD :
+						DRM_CONNECTOR_NO_EXTRA_STATUS);
 
 	gaokun_ec_ucsi_pan_ack(uec->ec, port->idx);
 }

-- 
2.47.3

