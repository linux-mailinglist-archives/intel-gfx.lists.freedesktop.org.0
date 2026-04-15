Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qE4KLNId4GkGcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:22:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 607AD408DFD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:22:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24BB10E786;
	Wed, 15 Apr 2026 23:22:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="dy+HDyD8";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UltBrhCa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 879A210E786
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:54 +0000 (UTC)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63FFKWBY1565845
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 Vr30iwIqmebM7hvnEfidMs2EUAZWyrOGgpsLJ6GZ70Q=; b=dy+HDyD8rosMW30L
 FUNS2GM/lG+f/jTnHznm8IJHSBbRKc8RhizcSnMXCOajnDCwPJ/IKZK3lnQYIZiR
 5VKDEhgK4DHJVakIozsfYZg7KlcCwAMoGQOmkhSGBjTFSmCtWANSVh5S2uR937Qs
 H0E459ajMWPkg3SVX2V0hyqHbN+cuo+/M2f7gOfIlX9gb4gOjGTiTivjV/7Yp08h
 F8AQkM8ppWipV88ZV6NJ/dxUwcEez1dQlF9I1+cOieWmHaPGJZj2fhGu6Ty/ESU1
 0i2Ir6mBYMoWn4ekLksWwE/zbLXb7CbdULcLrzuFhEX1qItdysCZyXaSC8yRLZ6b
 MXl3cQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dj7wv2qt5-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:53 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-8cfc1634e43so859732485a.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 16:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776295373; x=1776900173;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=Vr30iwIqmebM7hvnEfidMs2EUAZWyrOGgpsLJ6GZ70Q=;
 b=UltBrhCaVzChWu80ErzS0sc5c9zyTY/8jy6RYo5MLz1mdj3NN/Jna3NYyqcmWJX5+R
 jqLqdqrYbEDCVcf8YL+abfi0/MgV9oGQB15Zw7oTMVDPoAvUWJDGrHLB/dQArTmMdJ4y
 Mh4lABsqaKz8Abl8kxog3SD0JwfN1pKoWGU9iRYyWMtYiCT1iOoTx2fU6ZHss7K5ySNY
 aiIXXol+hHm/7xz37jJh0P2uvbarwHx9sTn8GslGsfZN/NCj+v+gqOvJ/fVNEe4WsRWQ
 PQg+qba9if6pSRHWxW98IyBjR9RTeR8SB31TMqBXq47J3vZMpxcQ++2PwkGWNShWXgjL
 vO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776295373; x=1776900173;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Vr30iwIqmebM7hvnEfidMs2EUAZWyrOGgpsLJ6GZ70Q=;
 b=XfRvHCD7HfNZ87dxz4t3tNaYpZ9A0KfenSz7mv5XW8fOwN4buoW9E19Q1TLT+6RfGC
 y48yj1HHPNlupFgX6QJU+WYoum9vT0AzA0t8LOH/yQjDXM4ZhbgGTQ7mYrqnPopISe6E
 zMpCmp1BULQIR3uTHzy9WzB2UZDGkUhIZ5BuL/YxK6O+FTdOAt1ilxQ4PLbDXRCmTdUJ
 H5/NorM8mo5dSGWx32KQzcQ6KxkIfPmPEX/dplsKDWzSX6LfHDgbTu4zmjMn9i9R5QuI
 5GDX+LMverfg3i5PuCpaRYqtFw7BxPwG8ePKNqPDDOupDwjN7r4zZkSpcmKQZhZBPAJO
 X1Bw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/Epjg6VgFhSt2kx0lHovUXe+CJL6RyccD0ZY/JeY/uRTO2ROMk10ruLE7H2zvCSXkv0RKqkmgEZwo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxhK4wkGMOzNFMdNVJCfJQoQ9DCVUA6uTpXPAlAuuCmpI1auG5T
 oKY0zIU0udh0yT4T1j7QscKoC76XCxdaAMsM2hQ09Kie2iG6fwUVRBo+5g2GrKWIqhEg2dEVkQV
 XAk9dePu6SdP61c09cBlZ+XBPUuVTTT/X2eo0kTv3pMHNgV1Q1ZAdYwMqHeK8d8cY3LvEKcE=
X-Gm-Gg: AeBDieulBbaNpo4d5S+YjCMEQGu4jTRAg3NKlQi9tGJGKyqTRv1RNoNw6QlnpsXn0tK
 yqmn0f2c5pb9G/tm8kpM3wKeAQ9RAly1LQq3Y2UvWqMdvO/mUPY2B91bLRRrWV3KGEutyU66zk4
 +G1aruXRU1EKr79rnp+WYrQ185TsgS3JeV2npX0A93+DIqxPOBhZJuz67aQ6pX/C1h9zY+fF/vo
 6DJ6ziWKu4r76otNfvwub717cQFQ55n0StOobN7dskE1xCi0f32WkFrZ4m6lcJ9j68OmnBx2VNY
 RJbn1vFWhdxaX1wY4BwH69ejiJ73TcWd3fXy59RtED+izzXDBmPSV6DR7/jPjCWpRzBV0k5a4z9
 8yZxq7I+6ZdY3RkTMi8Ouu+jy6gRvOKCvth6T9j+NE3bEU3UyQguxAcpfEoPUFKqNB6XTSvARPf
 1YVx4sEU5WYUMSIUQq+io//sSIX9BCqfcD5p4mpQQs7Yy8FQ==
X-Received: by 2002:ac8:588c:0:b0:50d:9e36:f961 with SMTP id
 d75a77b69052e-50dd5ad88b2mr362529691cf.20.1776295372979; 
 Wed, 15 Apr 2026 16:22:52 -0700 (PDT)
X-Received: by 2002:ac8:588c:0:b0:50d:9e36:f961 with SMTP id
 d75a77b69052e-50dd5ad88b2mr362528991cf.20.1776295372491; 
 Wed, 15 Apr 2026 16:22:52 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a40a272852sm817054e87.10.2026.04.15.16.22.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 16:22:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 16 Apr 2026 02:22:36 +0300
Subject: [PATCH 5/6] soc: qcom: pmic-glink-altmode: pass down HPD_IRQ
 events
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-hpd-irq-events-v1-5-1ab1f1cfb2b2@oss.qualcomm.com>
References: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
In-Reply-To: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1009;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=DMjriJDCdMjopTDai5VHPDfHuDEfFaw+9gvGTyDPhTQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBp4B25RIprvup1/Ku4C5KowC01NBQ8O5kpPwx4h
 eobWONDt92JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaeAduQAKCRCLPIo+Aiko
 1QO1B/0SHnYn7panRBTo1IS+8Cr8do8q3/z8CG8T6fTAgUXlq7xy/zOnHoCF42M0ieXTyV7YQ/z
 cQnWdqx+Erjt/bwe0xRuejxplCDVdRnwoqJWlkTQa3RRpVC3Pv1J3HETUgH9dQxAe2InJ5RdKbp
 I2lxInSBYOdMD30sbJs2NfKL+tcRKO3hy5lap1+JKBCjWzIKj4juaEgZcxleBs1mdIhAWgzZGUD
 nLFhYljjrwhvhv6dvi+IXD9E5I1faQmchJFUq7tjgSod3CPzjUL4byQJIpqrpRZRYM4mlUzY81g
 41iEJM/GZIAKEMqXIyPiU2UPMeuXPR6g4go3iwvPkEoI4Fmr
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: bQE3Xn1WqB4e5q3YWwJtUwqh5WDETQVy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDIxOSBTYWx0ZWRfX2f3Nx4dmXlY7
 YE4ezN+xqpO5qa6pOnvTAsMeID3281UYRyHa2m5f4+cuSJ8xL0DUIIGL3e3voXQq/m6he/QQcbO
 Eh5Izpo3JZHRJJ0bMBAuGqPh1Wo9KKHOW79zlwR2Xf/0hdy3yIxteRHO2Ut1IB0wW6N+IuhkXHO
 YXvJt7SLYZAUwtmxQBZoWlgsGpQAPMoSKB9opHQl3d7QKTiVhLM1GwtHDzRMYQOf+O4F7lJUH0l
 Lz/cqpWkZtzUy1kGJctCNTjFNYuIbEeGa0FYhyAsRh4Vl0Jt/esATpUMYQZJ6nDvYA3QVcfyfxd
 Q3olw7NaoD4IB2I79tIca5nxZPgC8VuQws6dYzZvY6CeNFJXPCTSca+GK/GMUo7jTAqr0BtpgTA
 AvS+9Wuk2eAFyml6Hi9ULkGeNySgANC/vghJSbfYuXAhILgHEkSZ9tsADpPO4Ma3ioaDSzJCz3Q
 gqqBPBJ21gmBcWl2HEA==
X-Authority-Analysis: v=2.4 cv=GYgnWwXL c=1 sm=1 tr=0 ts=69e01dcd cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=5qjnEABnMYrc5H2CFY0A:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: bQE3Xn1WqB4e5q3YWwJtUwqh5WDETQVy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-15_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 clxscore=1015 priorityscore=1501 suspectscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604150219
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[42];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:dkim,qualcomm.com:email]
X-Rspamd-Queue-Id: 607AD408DFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Pass IRQ_HPD events to the HPD bridge, letting those to be delivered to
the DisplayPort driver.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/soc/qcom/pmic_glink_altmode.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/pmic_glink_altmode.c b/drivers/soc/qcom/pmic_glink_altmode.c
index 619bad2c27ee..618dce748316 100644
--- a/drivers/soc/qcom/pmic_glink_altmode.c
+++ b/drivers/soc/qcom/pmic_glink_altmode.c
@@ -373,7 +373,9 @@ static void pmic_glink_altmode_worker(struct work_struct *work)
 		else
 			conn_status = connector_status_disconnected;
 
-		drm_aux_hpd_bridge_notify(&alt_port->bridge->dev, conn_status);
+		drm_aux_hpd_bridge_notify_with_irq(&alt_port->bridge->dev,
+						   conn_status,
+						   alt_port->hpd_irq);
 	} else if (alt_port->mux_ctrl == MUX_CTRL_STATE_TUNNELING) {
 		if (alt_port->svid == USB_TYPEC_TBT_SID)
 			pmic_glink_altmode_enable_tbt(altmode, alt_port);

-- 
2.47.3

