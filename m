Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMHmNNe35mlJ0AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:33:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 536C8434D50
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 01:33:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E3D10E78E;
	Mon, 20 Apr 2026 23:33:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="PFcxKqyg";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PXTPWIH1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D95C10E790
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:33:39 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63KMhmC51128065
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:33:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=qcppdkim1; bh=XQsfJtP1gB2TJ/00be02TM
 63V5nsoWhB0nnFNGctejU=; b=PFcxKqygGKhdobJN9o9FgmbwQc/TMPOi9rfgG+
 Q/NVPVsNdgjToRzVfKt/X2S6m/R7a235lTLXdfCcnxHv9vcCial2Ogh7IWsOHxgW
 ZzVwbLr831xV9YbwVAaxB4XHFz2IMY/WTQmr24UsVRfxjrfO9VxuHLfRPhJR4Qm/
 8bsQF5rCwsWIAyu6OPzwAdWNeQc1p4flIHWY3DZXKE+CPWFdgh7AWkA2fZskIfEr
 z6AmkscJQSyQnUa/dJE/raTS+UrYWX0GTJA1WczDTswpvskyzSl9hZWFdawpR5iP
 dpakKMTE8I0sFlbbiuIHQy315FxBNBDmi3u+sUZ812p8azBA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnw68r369-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 23:33:38 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id
 6a1803df08f44-8a8ea3f1becso10426226d6.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 16:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776728018; x=1777332818;
 darn=lists.freedesktop.org; 
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:from:to:cc:subject:date:message-id:reply-to;
 bh=XQsfJtP1gB2TJ/00be02TM63V5nsoWhB0nnFNGctejU=;
 b=PXTPWIH1p5itKkYt6XWBhaa630RnO01LBXjC3OFi12msOuEagkzX8bNQ11J4+Zy61Q
 rUHwI0xs5VEiw7kXLFcY2BNYF6QhtVMFLjvcC+kJTj1k0KV50E1WycGCb7Uv8R8ZvvPA
 bhezlUPiqZFMpAv22Yoahg4ToHBvPzaoGntreosigN2iBWVqaxNkZwXZDCmaB4qhtKK1
 IDYfagzVurQtr9sq+/OiMrvxj5t0lyXO2biUjT62RVRk/DKzrUO7oiqtgMTH6nDYXnqu
 5yV+tYH4JFYHkOw4SSIr0rdPeAZwEO/fB/ac+UphG5vhiRCX8kSgFbUfB0H+6CjEfuCU
 c7mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776728018; x=1777332818;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XQsfJtP1gB2TJ/00be02TM63V5nsoWhB0nnFNGctejU=;
 b=PR7Vak0A+XxA9TumL40fF+2TvsUqtvU/TaADx1CEW5ooQky7yAf+t0/jx48yY4C87Z
 vQqsdVfsD7eEj7Xu0OOeglO5FQhEjnB0lQxC+3/wj1vfcxVAhsp0xGRKFArgt7BB2O0X
 ICJ3TDo5TpjK0dDIeFcbwaGbsTgZF7s1HZQ8+w1gVKMbb6U5Gw9BN0mg7SkxgSgW6xqm
 DM9F3gql5r69IOMo87f+ntSsisKRPg10TtyRNBzDbBFzA+Z1F5ZKN/Er3tcEnufnnkKc
 iXqGzblc/11eCMwDEvuZ5ulaWgcyxCWyxedukBXHuUmEmtTKn4roHfhydeP3SHLMM2/3
 A2SA==
X-Forwarded-Encrypted: i=1;
 AFNElJ90M8Lljzp5ZODA4OaKONxitxVLFYRg/r3beYiPPrOkqcjJqm3gp1MZI94Sk7lbSwwEL/SDfiPeRzg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSyrd/uee5W2i4IbaSPF+VntuHWwaS0i5qMfef5u7wmZUYwitS
 bcilvnrMk++EFFjLF7244IcDmWECht+u3V0yE7iO9A+hbnuuSnU9PtNgCt9PjzwDwfnewefPRkS
 FPaAGGx6htJqf+52mryInfRxEVZKfvjBXPC4QhRzeVbBtua34a4O3DXVQLmE7LWcw8n1pzjo=
X-Gm-Gg: AeBDieu2ag1Q3LqcFn5PivNkqLWhzYTJ/+lAUrevHfLOB8iFT1/8t0lBRyWp0H2h8My
 lyrQwqa3pzwIvGRM1+IZfXZwzk6gHCX/+pomA1FfIbNemAteO+7ALn8wDL/5biS/AXTpyMKbHGD
 0CNmApU1jXrxH4w/HGD4MuZf2z+uN7prSch417Ml2WgV151nVoc2nopPizwjV51R+zsOVUIWCE8
 fLOahQwVbE/+UoGz3aBEPwvBxyFHnIR/KW7j3eVAYBXh5Jw7xu+o5aT5cE5GbF7Qi7i59eF6CCa
 GvtCV4s8ZOe8uMdV/NCNPTpBy2DTiJIaE5tJwVpevNtikxfDuxtMjdm1+LyTRyl8eDqOhexYgU0
 9CLogSUUHd4ftarwQ2NMYNtllFQhs7iub4RBETNf3tCTeqhiUZhCnFVuPSxEOWcXwmjPI32SYjT
 G7kgPCylJJVjbPY6uXbxmGqDb6NFGwQxZWaHDqIHQaizLlYg==
X-Received: by 2002:ac8:5895:0:b0:50d:ce35:6e67 with SMTP id
 d75a77b69052e-50e36eba371mr227233851cf.42.1776728017681; 
 Mon, 20 Apr 2026 16:33:37 -0700 (PDT)
X-Received: by 2002:ac8:5895:0:b0:50d:ce35:6e67 with SMTP id
 d75a77b69052e-50e36eba371mr227233141cf.42.1776728016992; 
 Mon, 20 Apr 2026 16:33:36 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185bc627sm3320714e87.29.2026.04.20.16.33.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 16:33:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 0/6] drm: handle IRQ_HPD events correctly
Date: Tue, 21 Apr 2026 02:33:30 +0300
Message-Id: <20260421-hpd-irq-events-v3-0-44d2bf40dfc2@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMq35mkC/23N0QqCMBQG4FeRXTfZTqbYVe8RXWzzLBfldNNRi
 O/eZgRR3Rz44T/fPxOPzqAn+2wmDoPxxnYxbDcZUa3ozkhNEzMBBiUreEHbvqHGDRQDdqOnWIF
 UrCrFTnMSn3qH2txX8Hh6ZT/JC6oxKanRGj9a91gXA0+9N15+44FTRrmQXHOlJUg4WO/zYRJXZ
 W+3PB6SNgJ8KMB+FIhKwUBrhAprrP8oy7I8AT+kHYcLAQAA
X-Change-ID: 20260414-hpd-irq-events-e72bc076a5f1
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3125;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=YINjf9ePwOc1LBKz011yyCdv56U3Vxqxsj8hcJeg9A8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBp5rfM+HhKIJwr7zvWAAoLigezFercScFRQkcYR
 +GxFkPgEfiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaea3zAAKCRCLPIo+Aiko
 1Ud/CACAR7O1rCWEq1Pc6b+zxeRIfcw7Z3DbjXG9qUEQJnR3Rn066wXoAYd+w7DM0pHAGlXwFM+
 uExom09rZXGybkuk8RMUF9BhFvGeoU+/wz7IQcuu+xNpMoRGwVhH1/Y9hFL8/HTg11Loub3hs8s
 zN6hj/tAQ8eOiW87C8joLay9NhNFTWFRWzDW8vkYckf8QkrsIVzQ7NGKujxaHDwVim7lqB6GMpY
 261dlrExN9eHCDfui4VtxbRB1ghcBss4hsGTG6LNDCvIPYH9L2Z/+yxgVs/eLAKPcJUXhqTVTu4
 009eiMwIy2t28uElKLaLguILuo04eghoPAfPDh1EnKmz4ns/
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: 4BHEJZdUbGiiRie1bXUaTJ9DWUe7IC5Z
X-Authority-Analysis: v=2.4 cv=apyCzyZV c=1 sm=1 tr=0 ts=69e6b7d2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=52TPwIQhNpV4Ze06EwUA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDIzMCBTYWx0ZWRfXwSVacHVHrJJT
 fDDaCyMDMD9A7uBWKtWlkT7jUvxNU7pH1LOZ45wcX4CeUcu3ePE/qSMZttAzFaoPQB668kw9guP
 onKIfKiHvylEWdEflU5XMmhaLjbfMjtd8p3SJhg0Idh0YMzmvLsbgsLBfmt37zbrn1GWnbn/ROD
 UZ+wo3325Quea1PlhZVQoyWLDn/oxbu+Jo4zxS21Ivxl/OevmT3MaEqPaZhhLFMY8CRtQpET2Gy
 ipsjKxW9dAPcRNZy+7YDnILzdpSF1FdvpcswP6WxykkZakZPH731ilonu5fyipMQup7OZox4uSb
 VgTjarWTD0ygN88egJmmkmDtpgxuV2XGvbjvKtgtDsdxuVipBRk82XApezMTU/LI7Zgo0cdHW5y
 mO04OQTiyyWwekW0qt3tLAPBrMnIm0fQgV5ZtzyJ6gLhvP1ckSfPRpgrWRCrIjIoqIHL6Mql9D5
 rugEWPljK0jEYdhG+TQ==
X-Proofpoint-GUID: 4BHEJZdUbGiiRie1bXUaTJ9DWUe7IC5Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_04,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,qualcomm.com:dkim,qualcomm.com:email,msgid.link:url]
X-Rspamd-Queue-Id: 536C8434D50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Both DisplayPort and HDMI standards define a way for the Sink / display
to notify the Source / host about some kinds of events. In case of HDMI
it's as simple as singnalling changes to the EDID. In case of
DisplayPort it's more complicated and requires actual checking of the
DPCD registers.

Currently USB-C drivers don't have a way to deliver the IRQ_HPD
notifications, leading to missing MST notifications. Provide necessary
plumbing to let IRQ_HPD events be passed to the DisplayPort drivers.

Note: the Yoga C630 UCSI driver and Acer Aspire1 EC driver are not yet
enabled to send the IRQ_HPD events. Both of them would need some more
reverse engineering to find out how the event is being reported by the
EC.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v3:
- Fixed build error if aux bridges are disabled (Intel GFX CI)
- Link to v2: https://patch.msgid.link/20260420-hpd-irq-events-v2-0-402ffe27e9e9@oss.qualcomm.com

Changes in v2:
- Change irq_hpd arg to be an enum, possibly desribing other uses (Toni)
- Account for that, chaning the API accordingly (with_irq -> extra,
  etc.)
- Wire up AUX bridge notifications
- Link to v1: https://patch.msgid.link/20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com

---
Dmitry Baryshkov (6):
      drm/connector: report IRQ_HPD events to drm_connector_oob_hotplug_event()
      drm/bridge: pass down IRQ_HPD to the drivers
      drm/bridge: aux-hpd: let drivers pass IRQ_HPD events
      drm/msm: dp: handle the IRQ_HPD events reported by USB-C
      soc: qcom: pmic-glink-altmode: pass down HPD_IRQ events
      usb: typec: ucsi: huawei-gaokun: pass down HPD_IRQ events

 drivers/gpu/drm/bridge/aux-hpd-bridge.c        | 11 +++++----
 drivers/gpu/drm/bridge/chrontel-ch7033.c       |  3 ++-
 drivers/gpu/drm/bridge/lontium-lt8912b.c       |  3 ++-
 drivers/gpu/drm/bridge/lontium-lt9611uxc.c     |  3 ++-
 drivers/gpu/drm/bridge/ti-tfp410.c             |  4 ++--
 drivers/gpu/drm/display/drm_bridge_connector.c | 22 ++++++++++--------
 drivers/gpu/drm/drm_bridge.c                   | 20 ++++++++++-------
 drivers/gpu/drm/drm_connector.c                |  7 ++++--
 drivers/gpu/drm/i915/display/intel_dp.c        |  3 ++-
 drivers/gpu/drm/meson/meson_encoder_hdmi.c     |  3 ++-
 drivers/gpu/drm/msm/dp/dp_display.c            |  6 ++++-
 drivers/gpu/drm/msm/dp/dp_drm.h                |  3 ++-
 drivers/gpu/drm/omapdrm/dss/hdmi4.c            |  3 ++-
 drivers/soc/qcom/pmic_glink_altmode.c          |  6 ++++-
 drivers/usb/typec/altmodes/displayport.c       | 15 +++++++++----
 drivers/usb/typec/ucsi/ucsi_huawei_gaokun.c    | 11 +++++----
 include/drm/bridge/aux-bridge.h                | 13 +++++++++--
 include/drm/drm_bridge.h                       | 31 +++++++++++++++++++++-----
 include/drm/drm_connector.h                    | 22 ++++++++++++++++--
 19 files changed, 138 insertions(+), 51 deletions(-)
---
base-commit: c7275b05bc428c7373d97aa2da02d3a7fa6b9f66
change-id: 20260414-hpd-irq-events-e72bc076a5f1

Best regards,
--  
With best wishes
Dmitry

