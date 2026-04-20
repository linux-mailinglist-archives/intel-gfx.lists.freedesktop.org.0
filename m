Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEAiD+5G5mnQuAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 17:31:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A9942E48F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 17:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6037D10E6D6;
	Mon, 20 Apr 2026 15:31:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="dc56aiY0";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QueeMEtW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D0610E6CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 15:31:52 +0000 (UTC)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63K985uc1600585
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 15:31:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 sZrnMsT7jt/4L++ru9IvAvxyFjbRkLz2gfqjnGiw80s=; b=dc56aiY0njf5+Kcz
 oFQPOQ91h2MpZ8CmCMDVtHY8m9nILsnRIaA/Vx977nx91Wmc8Sdbby+vw1yXj+ZQ
 wHQWbax935GdSPuPHBXrU7rOGk5pDGViPAHaLifUl8/AjILEK4gEhxvQJmOE4LIX
 QClHAFk3ltJ169TzNbTg/NDqkcItxlv0F8BcrghValOaZ7evTLLUVERglK60GuEI
 zCiFsyLirNRvOpbp/ho78zveMutmMh0tUrft3roSURDYxz0vLR7pi8YwA1qDJmG+
 h1Nxyq08VVabWRbbumHVDd2G//ZFhDUBpkbFqfsZLNZx9PBNyqVqE5TfE8GMnPvk
 a9aecA==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com
 [209.85.160.71])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh899d2a-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 15:31:51 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id
 586e51a60fabf-40f09403c56so7513479fac.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 08:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776699111; x=1777303911;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=sZrnMsT7jt/4L++ru9IvAvxyFjbRkLz2gfqjnGiw80s=;
 b=QueeMEtWoo3GjbbpzEn4rJamnf4tc8qpTAFm+eMKNRDnwV683zQJCbsBB5gDM+QZwu
 p1tevq8F86LRo8NFnZSW9XnN7TO5cPAs7QRtGQ0nLg5Wk3mX2bge3qC1B8632UXCMC8m
 MyiijJ4xdOu7y7Oe/DI+p/sXAuc3dMFzZWDcL3uDk8ljEkCWl6XwzAUE5Rg9eUTCwfIM
 SPHuuY0H5ELXz9oNL/tWX+tHbNwc71G6MNPhhHPCGAo0bVabUfuhnyA0v0KRqGA+XP7Y
 odjrKqseBhUgWhKPvitlu81iBvn92rBcZEtr9m5sUQq1Bk10o0NMUSrRn4wSBd4ev6AH
 g0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776699111; x=1777303911;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=sZrnMsT7jt/4L++ru9IvAvxyFjbRkLz2gfqjnGiw80s=;
 b=HPO4PlRrK6SC3ReKE2O08xu6L4/ilS1TbZ6yLvYYgJr34LZi/Qzhhr0VP6x0ausoXm
 PGA3H7WPKlY46L+Movnx0LdnW85SiSJlTmDQD/aX5mnaIZ1O4gqlPBeBj2wTjXo6/yD4
 k/R4JEyiQnbAXhheWan/pVfBLHf3/8SIIO4fxcaYnFlJkhkyqs88m3E4ElQxJcFt+Mg4
 gSInLTdinUm8gVM1wTzBIXEW4eARQPfXZTPpZitIJMYxJ4gQKGA8izDnY4V1uvV8tzqA
 bWHa6sIdLb0HEA9S6Fu3xZbnTOfACl3BOI1yp3cHsVge8ogLc0Jb9Jf2+UEVXJyBgy5b
 K14A==
X-Forwarded-Encrypted: i=1;
 AFNElJ8WJJJNGwadZk9UCr1LCXAPndSMxBa247i9H28A6tvvmgISfSHklYhl37wmJ4XnSzhuHzVBlHzLac0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yya+fFD+a5Lc6IIThOI6f3B8qfuT/6yVTOZr7d8NcJIPY9St5pR
 FsDOZrFv5Ck/ZWxxVkGkUc64/0k3Bv7aLr+6DXVkB7VNe78XrTCA/+7SJlC0YGqC9OTjFerDsQO
 niyUJvV+WSe826Qv6Abc1zS/4awrW/cNSVffb3Q/W0JW6XH/P7b9/T3Lw6gL8Rj92GWLPwpQ=
X-Gm-Gg: AeBDieuE41VyOo5fJ/cwkTZEzKuhdshfr3Pu8IsY6b9h/6sooihZP0rTx2/A29DPYQ6
 G9Ucsfswr6ZdJN0TV7PfmGQuWqDDFtE3VlTxJUEz0m5hED/gQxOwISUwjpHCV2P2ypiZkDadVHR
 ZE2Etwot4FQQvhhhuyHQqFGim7rtVRGr8gTN1FoRyd/YBj1NwerttclmrRX//2yoy2gfuLDFWvz
 S7DGQWjprjtqcIXWtlnzsO4klQpbwV7aDnt5upenPQ3ho1slFOrpZn10usQhavtCnfwhz6xrpNU
 XTcgkY5U0iTpLQ/87i8lUVxjh1NYc8cz/bBv28awnrYkNDBuyRW2ESd7b8mS2CZ8nVyV1AE2/Bl
 XFNePTnxDfwmGbJ+jrV7QyIsF06Cg3aof8SlWpd4ksN95DJWtM+N/2D5qJ/ItEwtgBFxZpWzpO7
 Czd9Z07BT2VGUZ0mQ39UwgM8iLN1lHXtYpUMyTFtyPpNWRCQ==
X-Received: by 2002:a05:6808:1a19:b0:475:be2f:c56b with SMTP id
 5614622812f47-4799bc82da9mr6189598b6e.3.1776699110535; 
 Mon, 20 Apr 2026 08:31:50 -0700 (PDT)
X-Received: by 2002:a05:6808:1a19:b0:475:be2f:c56b with SMTP id
 5614622812f47-4799bc82da9mr6189564b6e.3.1776699109639; 
 Mon, 20 Apr 2026 08:31:49 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185bc31dsm3071171e87.22.2026.04.20.08.31.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 08:31:48 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 20 Apr 2026 18:31:42 +0300
Subject: [PATCH v2 4/6] drm/msm: dp: handle the IRQ_HPD events reported by
 USB-C
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-hpd-irq-events-v2-4-402ffe27e9e9@oss.qualcomm.com>
References: <20260420-hpd-irq-events-v2-0-402ffe27e9e9@oss.qualcomm.com>
In-Reply-To: <20260420-hpd-irq-events-v2-0-402ffe27e9e9@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=891;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=+/ILvBuGhqekKhSlkO02babbVbDbrJeHq8l4XOhAwlU=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+Yztzu7z9UUln2K6NOXnBhWfvkJW3tKzoWyB3ecY64yK
 JZ9Obmtk9GYhYGRi0FWTJHFp6Blasym5LAPO6bWwwxiZQKZwsDFKQAT+aHLwdApKn4j4vk80fWZ
 Xe+zpj3i6mhbFtPpIdHZ5N7Y3qwa9r9B6Frgrrvy7z8e6hBpLvy1VO76FYfvd069TuoIK+W8Mi1
 C7imLUXYezym3QgPjmdMmCdrf2+1brvbBtF9aaosZ26HHZgkXriZoVZ3IFd4umhkVfU95gt3C/4
 X55x7+2t63sdfz2bQvyuvO1yRnOAV/W9bnzzAvxDgr+7Xuh7Jknnbh2lPb7tk8K83VDZrozMHGU
 vSmev/TY8u2ful4dbbeWppBOU63bDq3c/Lul4ndC6qLG1ammn3a/sPVYufDX/yWdl+/SvaV6R2b
 7tG0MJs3eMqbuEjW/yvDTjz41seRtS3t8yFdM+7VJosYAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDE1MSBTYWx0ZWRfX1o6N2/5Kp25Z
 DeT9Y6AejY/5uftcnpOGM9DeLbYPbBU7NVFAB6iVlVJG97v4w8vEe4CVohLVoI/4lRcLE8XD1nU
 Dq0Dfs/RPN95R+ZiQO1ckAyX4m8z7X0liPsK1f7XhwyKOtSn+XhNpUspbXPJAK/IrfYP/bDMEWV
 xoSd1nAVTkEufRtdc07szLqTj/hN8SroUCd4VxDrXCC7hvSZiz6eC0xemCzmDhrzJvEwczr+p97
 rbyKJRxlayHiaEE5ClFPwRDrnAC6NwCzffOEbaCwFl7Etu7TS7Qbd0qQjykM+rgB+jPUf+79acd
 FuniitzwAsuGqEkCdNanWQbByJAxyDV7fwkrNs+GBuDsk6SO45T/qrH24LxL1c93Q6ES0/87HOL
 eNSjrUK/I3bDgP6KU/CTrlYMSYtPxw6SZweV8btGqIP2/PeR6CdBdsgKhQxScS5PshTO3laZUPz
 7yVSf6/gO2ppoOtjGnQ==
X-Authority-Analysis: v=2.4 cv=D6B37PRj c=1 sm=1 tr=0 ts=69e646e7 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=3ML_fINe3tzxlWvVV4AA:9 a=QEXdDO2ut3YA:10 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-ORIG-GUID: L72nF23Wr4dr1VdumwDno3hKIRmGPjv4
X-Proofpoint-GUID: L72nF23Wr4dr1VdumwDno3hKIRmGPjv4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_03,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200151
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
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_TWELVE(0.00)[42];
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
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E0A9942E48F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

