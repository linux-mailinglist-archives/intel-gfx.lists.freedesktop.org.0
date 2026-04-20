Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPzMF/FG5mnOuAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 17:32:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E18842E4C0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 17:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6799710E6DB;
	Mon, 20 Apr 2026 15:31:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="RmkyS6fn";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c8HNVzHS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF5A10E6D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 15:31:55 +0000 (UTC)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63K97M3k084442
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 15:31:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 li1QTXDLKUg9Sb2Wzb5S3vgbZrLxrrKq59N8rWxZa0g=; b=RmkyS6fnhb+Kw7Cz
 CHA3bm4xEZvLa67Sc7VaByoq1777MMO32UoiFTCX9OWYl84bQUYSUt5oiuxal4+t
 Y5EjaMT5Dl60Zqc9cnFtdpSqrrXt/Hq1Q1gJ2ZTj5efhBlyqCoDmo6GXDGMI7Ly1
 wF+BUTYzGoj2FvjH6kNVWk2Zwuf0aIRQjO4vHjmTZjJjwQsYHQCJIkwWUgK64xhY
 AAaJIEKog00iwU+sBfnxn0QYK9FacFb+525cT8XdaTQ2UxU7Gze2/JgUjJaxX/EO
 nzWgfUvOT7pye2NzxlbQvMiL6wc0h/titHO5Dy0JcW+JIEu5tAw3o/AyaFwaJJxs
 gK0rlw==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com
 [209.85.167.199])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh81hd7q-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 15:31:54 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id
 5614622812f47-46335278e7bso6527934b6e.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 08:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776699114; x=1777303914;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=li1QTXDLKUg9Sb2Wzb5S3vgbZrLxrrKq59N8rWxZa0g=;
 b=c8HNVzHS2Q225Ua+ylvyNxcLyU2B1FHbXzYCzS+hNpxnz/W/qTVbtngIl776QGyfCD
 LZYbQ1gEGoxOUTro2ENpnYKpjx6VegVwQ+P/hm8UqLOjJGNAyHlq9MTRSx83++/+TL1d
 fcvo4tQbzWvOm6WvZmbMeJ0dwyUkYwGLiu8GjcRn9ZAbap7SfMCD9eaTD2AalYucmI0p
 nP8MfArCHDcr0HCxBTap3Cx/DWx8BRHHOm55MRy6T/yqKPbbgGgx4JvtcC7JwgVOXy1q
 nFTHbsLGmFOS9Xo7T0MVi7VZWN6fzBNpGLiWah4JsWu/8GsumGGppPvdCEPUiSYNtCy1
 ilHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776699114; x=1777303914;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=li1QTXDLKUg9Sb2Wzb5S3vgbZrLxrrKq59N8rWxZa0g=;
 b=M/AVume3Mt/ty/Flcj+qpo9tAsuQuJf/lTwX+m9axokaOHjjUZCD9xa5bAfwOn0N+F
 0yU2EB7p/aPNy7OSa+KAKInio+iBV7ZTJXkkpGoTORC5mChbhTtZJ4HkNlXXreRUJ4Dw
 +X5f+Nn2dAL3yOIHZJfjHaGI1pPsHx49qxs1XmBZfQE5die3k4CpTSPtnmL7NQ3cKQZI
 tSAuZT1cn7ZuEwETcl0UeL4uw/Emhq5N+mm3vXSMJ6U9lDeNv+xioaNvTIyufcaFToQx
 v+6tWLMaXwktPjVJYJTaOcyE8TjRklNq9PaOib84ToMjDUbNtcsftrHisDtYx3ZIPM+s
 Oi8Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ9rY36HJbkWDN+y8z75TUejeN2IefmSkfRLz8n4x5z+hZ/8C+JcFpJ2JSJdEPbHiTcY9F69vFAtHXk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyueLrCQfLCqiKWZ/2LyE6SQvKwLaHyKoyMoeUu7ZJlbnZzeEwz
 A6tFkoMlJJGfg9Bo7wdTiqtfXMpdgundoVdPeMjO/QLnefTHwWDuQ7dPlRkALrzbEEi0D395TS9
 a+yJsA/Xb6G0SktgX8xu4O28NLCqjcYbOoQ5mdVRKweuXDEyZtl440FogaChBARYUWOA07Rs=
X-Gm-Gg: AeBDieveBUb+0tzzS3EJ3cpfX8h4iphw7Q3bCxfNyRKPerhwBijuBOAUtXiQ1lPjk71
 s53bwJ1w8csznHbCCZJI+dq0i96/PigHqNIumL2uVDU7zAuJ6vdtfk0AJfmzQxKqVdzdUbtyHFb
 x3MXQgh1LwupYgrg0KOQNBsstsiu8LrP520ZeZphT4yPtiSXvfFPlbMzOMirslemnX7vTH4jotX
 tAe7qOox+7Jy3jVRZygF7SsjfMm6NoEG75aYfqzwLtgkMRlYzezc8y1Oxjewj/NqArHYR7TqbAb
 ecHBtpBQrvdAp1typ0E8C/5Q0/6rIG4fjUgZeExlCs9Th2IfizIcunZJ20M0l9w7BnteU23j/MI
 UXqH6zfSk8k4oDGhQnYGcxZMku4pXftdxmwmHw1EQZRWoZAzH5RV3GKhBKjyr+L+6LB2hy2pllZ
 w8hYtn3tjAgsTpy09hclNkMDk0TBZNFpLK6WT9QT/gh2p/7g==
X-Received: by 2002:a05:6808:130e:b0:45c:85fa:5a3e with SMTP id
 5614622812f47-4799bfdd9c8mr6136771b6e.25.1776699113605; 
 Mon, 20 Apr 2026 08:31:53 -0700 (PDT)
X-Received: by 2002:a05:6808:130e:b0:45c:85fa:5a3e with SMTP id
 5614622812f47-4799bfdd9c8mr6136710b6e.25.1776699113069; 
 Mon, 20 Apr 2026 08:31:53 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185bc31dsm3071171e87.22.2026.04.20.08.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 08:31:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 20 Apr 2026 18:31:44 +0300
Subject: [PATCH v2 6/6] usb: typec: ucsi: huawei-gaokun: pass down HPD_IRQ
 events
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260420-hpd-irq-events-v2-6-402ffe27e9e9@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1309;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=mxGolAt7ROQ681cKNciUMVefMdiRDsSwC5zox5THv9w=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBp5kbdKgPye7XiAeoSoakScVMUMjCOu46HRvpZ/
 8qrEonxwheJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaeZG3QAKCRCLPIo+Aiko
 1Un6B/9Xc/mQPkkBXKR61XdHwQ1fxJIryoBdS++LX1KT0pEEYteBKqRJ/XSYQUrc+EPfqLU9PMe
 H5fUvSJHLdqvfoBUCUEQk1YTcGI7SpMzLE8TkrLZ01bkDNnf5fF1nWJ2jeH0js+HhXpHXNYwq6+
 eMkODvtWK6jOOzLJVIWNEp1Jf/1Qo6CBDpX7f6O8hgnOauDvYkX3G4NrCVHZbGnvqgxwfoT2Fmz
 XfzV/uRG9TPUQ007KR6NG8ovnQVsBtzYYjzGiMZtRYlCbgMnemhbOxWRCAYGadr/D7zvREJKKaC
 /KB3r6hKi8dNIA7osaCTEBo1CdUrJ6ljvRhahpB9mb6AkOwp
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDE1MSBTYWx0ZWRfX/lpM5DB60/b1
 oIu5JUCIOovDPqZpJ5a39Gp2f36fUZbPyEkdQ5lVvUJ/EKQ/HncjJTJkYClz7tVbivwXchjlko9
 YXGi5+VZzItxngDI3wG3adB1aE78IFWD+pSQUAe6Jw9t94wBUtjsrUlj6qI17mHZkrF4EoG0YJD
 aU0yRIcZ3XTWPta9lz2RGLr0KynqBae0XZx2d4Lz2nl5pOxLHgza8j3rVoxuf/fvrC7oftxF8xX
 65G7o6/obOykNVBVyITUEjzz7KLm8z0TDAMEpMcW7NYRYEbxe3FjdMJ3CTnhijnzuMwxZVmc/Td
 x4PfWe37GHQInH7CyJSrnvect/t1wUi98BtSwakTa13mGHlDuGxQeEEgOOFPwNdBjsvFXf809wb
 A1vzkzKN6Gl9f4OPJWDgdb990+xgI4+d13xf7lHuqtqbRjGrQ3jJDhc5wsQgOEzQC27PVtQWH1R
 3rYHyuA2Xd8uLq4Q8Vw==
X-Proofpoint-GUID: faRJ1SIUfgHZA48i_ZAxxVer97MwxFDH
X-Proofpoint-ORIG-GUID: faRJ1SIUfgHZA48i_ZAxxVer97MwxFDH
X-Authority-Analysis: v=2.4 cv=PsKjqQM3 c=1 sm=1 tr=0 ts=69e646ea cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=pGLkceISAAAA:8
 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=xNxaoOyMFJLcTYWjjPMA:9 a=QEXdDO2ut3YA:10
 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_03,2026-04-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 spamscore=0 impostorscore=0 malwarescore=0
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
X-Rspamd-Queue-Id: 0E18842E4C0
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

