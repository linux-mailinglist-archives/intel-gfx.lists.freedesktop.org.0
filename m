Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKIXDsbBBGp7NgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 20:24:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6154538DAE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 20:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0AA610F00E;
	Wed, 13 May 2026 18:24:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="L926dWnb";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y6o5SSHI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E50E810EFE9
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 18:24:02 +0000 (UTC)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 64DGuIZQ3995555
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 18:24:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 sZrnMsT7jt/4L++ru9IvAvxyFjbRkLz2gfqjnGiw80s=; b=L926dWnbrlNFEaqp
 srzRYuP0cO0M8CQROQviJ240OwfSEfGfQkjbDWjadxTXeUGNt9JYCz2eOPBXiVMi
 reTJ/PRQJ9I7gmqRo3iKPD6xxNuzJSjsU5HEUsQFY6Vl9KFE4wO14tlNEUuyvvp9
 BV1Q8J/d+hIcdRBvj5Vwf6AwCWTcEQBgR3qPxVBpRg7PbOWMYZaSgsZJh7w+1yJP
 juhymAF7rJU1/fKM7YlysCzzyUCQMC1mZua8c9pmeUD6fi4mdDcceyHTwYp2x1yc
 x+g+3i7jbjZ3Lsljj7CqG7gPLkFr0h8+ay6DFmGE3wnZyULseJ2QoxdDEd920u5L
 ODmvYg==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com
 [209.85.222.70])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e4w8urb5m-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 18:24:01 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id
 a1e0cc1a2514c-95d41dc2ea7so3428672241.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2026 11:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1778696641; x=1779301441;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=sZrnMsT7jt/4L++ru9IvAvxyFjbRkLz2gfqjnGiw80s=;
 b=Y6o5SSHI8d7qenPoTYOv1HPBiC3Vuz9QiOtnk3spFi2HH2yOrMT/vnaJlF4hHgMP7A
 alMPTt/L2+ruP1GMAoe8ybZ5z8QPkcHHiEsIu/OFhnBO7PPmNWFAP1oj4gR9TWePewgA
 3+AyeNW/Ge1S7vQA5I/1MDNINvtAshckr3cc9M6021In63v6zZYez9t9EuARHwbqQXFR
 sgXFP6rZOMKAALhbJ1FvMqDAXJ2Y2IxSLkRbh8RuU4oci3VoIi9alg1f31qr8WCUJq9p
 rcFpBp8Mo5sTkosotRZQSY4ibHvehva4X8Y53E6iYQ44/9y4IrQ2S/y/1XuaCeB5bZdn
 Lyzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778696641; x=1779301441;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=sZrnMsT7jt/4L++ru9IvAvxyFjbRkLz2gfqjnGiw80s=;
 b=kwJbpYwbJYoxjYnRuxavwumzSonReIw9E5GvKdaPkOCV97a0yRE76AC32JF0kDaMAr
 QqYsa13i9c6IKLeD4HiOHbhEBeSpSszvOYvJx+hCj+/npgqZsLD1+hQLHmt1XRXdfhnH
 IgQ1zggvh0F9Y63QX0TRPOVjIOvbM0jv6VMqkEnqInjp617EY5lPN6twarLiXH/ZLy3A
 3TSTlfI23+60yi8RHkBC4VIy5qmMDmtUWAl33QKlhjaHrAJLBuNr/Togdj6uU2BuuaIb
 DogqmNrJBWh6Y8t9QoFqq7D/hbSgJvBxFU2URtv66Si0bbM/h/GaFNXFdH2dg8weZRV/
 t+1w==
X-Forwarded-Encrypted: i=1;
 AFNElJ+oM9L5LY1HqCpgAjc/TYY9Zux4ZSG9Ql2qjwVKmoF/2SQvCL8mLYfKpCoOiU7erFtM1UFc6fwNSdw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwIxmMtLzhcLipbN3sbO35zJoCChrbKM1P8/nhxBPALCUoVV37u
 yPdqgpEV9VtmYyKAGI2MQ6H+18l18j7anBJGs35VjJiqRUZgsmd1WTDNP41rFIiv9JFIK5UlAI5
 70Ae+AMNQEcIKUhQh2pF0ZmZcOZpNIGbSG8qMuG8VRGS2WdZ4mwOipnjxaV/aCKmb1kPlVSA0Ag
 Bj8/M=
X-Gm-Gg: Acq92OGS3T3gZ/EO/w6O7Yg8MEDebIvFYqSdSLuZrHZItp0gNab/M2oPHjKBhev2wNa
 EHjDcJb34dw3jlPdhfPC66Mz7xI8NS25U0WKApzrH7kTp6NaNoAzZq8E0tM1zQv7Ys+f+u+qlyQ
 2GZcMD8r9hU/xxWR/T3yTVpRNHRue1c0tL9ajjZengSu9epkhixtoJeYVO7gbdDSeFQDQpUWsFB
 CQ3XAgjrAk9my95RNi5OeEDMUuBt6RBSLDjk+zxT2GYvhxe++ln3vD9Myc5VC99TqfK2kRwTCIA
 bcS4ItZby/av45VWBziq4GNsG8aLwFEw6m6BTMxmjFK+HZrDCzJAljtuL/bJfLQ23hGA1rAIAGj
 Gt0Ge4GKVQi4HLrw7CCla+GkA2L///W3DnJmVP61Na8wUDpwjBlr8n8GNG/fjv/97KErN/ZlLPh
 SFoj619uwKz6XHnPJNipWFUQzFzpgBWBYf+cU=
X-Received: by 2002:a05:6102:3754:b0:636:46ee:2f0b with SMTP id
 ada2fe7eead31-63771e93dd2mr2536255137.12.1778696640951; 
 Wed, 13 May 2026 11:24:00 -0700 (PDT)
X-Received: by 2002:a05:6102:3754:b0:636:46ee:2f0b with SMTP id
 ada2fe7eead31-63771e93dd2mr2536205137.12.1778696640430; 
 Wed, 13 May 2026 11:24:00 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a8a951d1f6sm4212851e87.23.2026.05.13.11.23.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2026 11:23:58 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 13 May 2026 21:23:24 +0300
Subject: [PATCH RESEND v3 4/6] drm/msm: dp: handle the IRQ_HPD events
 reported by USB-C
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-hpd-irq-events-v3-4-086857017f16@oss.qualcomm.com>
References: <20260513-hpd-irq-events-v3-0-086857017f16@oss.qualcomm.com>
In-Reply-To: <20260513-hpd-irq-events-v3-0-086857017f16@oss.qualcomm.com>
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
 freedreno@lists.freedesktop.org,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=891;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=+/ILvBuGhqekKhSlkO02babbVbDbrJeHq8l4XOhAwlU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqBMG0abAwQqrwNKrmGMKndnLCYyJA6PXn23RVR
 jIy1b2VxsmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCagTBtAAKCRCLPIo+Aiko
 1dGPCACNGtpqzbvMTWs5X5vG8ECac3Hmh2yf8eM0hhFimdemipY/3p1uE7tZ1kfXqE9pDI1tP49
 wqoR6jikFqcgnRZ8SpkPDt3z2v8IjbTYJObqopxYBFmBaUt9lrvfMYHjf1IRxPBi0juVhtyKqEE
 I3psZD5FRUZi9u7VKDzuMV4vqUQitc9UgMQYvFPmPG/qomdvVXZJgCwlMUaSCY9/5RHsT3TNKC9
 JQNkKOHh+ORyA8ZutxDUNr1WX70N0HMl6YY7t91D4ZYk7vBzHYUOcRa5mm3GvAXPnywKP3vMquG
 6lyEjDNfEPjnhsGq8tO/gH5cybCBy0/PqZe1OxCjHZf+ALPU
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=WP1PmHsR c=1 sm=1 tr=0 ts=6a04c1c2 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=3ML_fINe3tzxlWvVV4AA:9 a=QEXdDO2ut3YA:10 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-GUID: lqOw9Fy4M-RVlL9q008ov-MVihQa4pVd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTEzMDE4MyBTYWx0ZWRfX6h7xzeYmZ1qD
 K8japSTRBFZFh2SHccEos5rekX5i4adX6BaxqR8R7DgtWipyFs35JjP07vwursMxQHko2VVnSVX
 6gZRhelw5JAU6Mihh5pYe9nNHgSwZ7BbwCfHOCtN3CMwutHwRczCWJwgBgICM5PJtcde9phmSL4
 WoGb42tHZBvRyF6PFgc0dC44d8iQjqH0DfxWhw5Vtg5qeRxeikaYcckwECAs5E3CapVIvuJTx0e
 MPfflvLRVZJYbosLl42lyvppI+0yOD6EIWdcyJEQu9hl4JFoOWPjouqYL30oJ0ezvhCt3ViJjRq
 M8VvDN+s2f9OWFl/eH+g1uf6HAhM7WkK/gPynRLxE3s/cv0WI4xQOVCtZ6svUeaxpf+IGH2Mc6M
 av72Q/BRAShVUBSwAim7WgLFOQZpNzIfdr0x/k6yac88mCK3+HLuWLyr0DFdGkrOmHHgXZrE1Wt
 2xT388VQj3Ixy6WvEKw==
X-Proofpoint-ORIG-GUID: lqOw9Fy4M-RVlL9q008ov-MVihQa4pVd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-13_02,2026-05-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 bulkscore=0 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605050000
 definitions=main-2605130183
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
X-Rspamd-Queue-Id: D6154538DAE
X-Rspamd-Server: lfdr
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
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:dmitry.baryshkov@oss.qualcomm.com,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[43];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim]
X-Rspamd-Action: no action

Let the MSM DisplayPort driver properly track and handle IRQ_HPD
delivered over the OOB events (e.g. from the USB-C AltMode handler).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index 7a0623fdbd8e..8df579bb320a 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -1800,4 +1800,7 @@ void msm_dp_bridge_hpd_notify(struct drm_bridge *bridge,
 		msm_dp_add_event(dp, EV_HPD_PLUG_INT, 0, 0);
 	else if (msm_dp_display->link_ready && status == connector_status_disconnected)
 		msm_dp_add_event(dp, EV_HPD_UNPLUG_INT, 0, 0);
+
+	if (extra_status == DRM_CONNECTOR_DP_IRQ_HPD)
+		msm_dp_add_event(dp, EV_IRQ_HPD_INT, 0, 0);
 }

-- 
2.47.3

