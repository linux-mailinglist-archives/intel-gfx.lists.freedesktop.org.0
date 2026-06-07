Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k/U4OLbjJWrZNAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 07 Jun 2026 23:33:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D22C651ACB
	for <lists+intel-gfx@lfdr.de>; Sun, 07 Jun 2026 23:33:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=EiVvTbWM;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="h/3Bda01";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=reject) header.from=qualcomm.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EDE510E681;
	Sun,  7 Jun 2026 21:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA06810E4CB
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jun 2026 21:33:39 +0000 (UTC)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 657EkCT3373694
 for <intel-gfx@lists.freedesktop.org>; Sun, 7 Jun 2026 21:33:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 3FB7VsGWBD03rpwArJX/noldaF7TiU950Nm2TSbfvyU=; b=EiVvTbWMNddLSWaX
 m3G9rugq0EFbtLfwWqsRQ3hFgDPCVYJysVU7USetWURk2Wuq306mU05XNloSioDW
 jcsrziM9VNVsqT8zM4nuiL99YeswMiGt/cBhD/5Ose//4pxfRa7cPiBA+2a1SyDN
 +q3U49r1JRYSaK875YDBzAylCpDWi+xrsj1jXbNdJS1i8JWKIUaNzNki86Ky4ahB
 BWtjMrua70BmHtF4shrL32VKmvGOviGHCrb+UuPkdZvshfA5ml2l0oCTfwBwuzgl
 Q+GZbCfbRiPXyolSgympyGUcISNKDocU+ul3Bdmzao2loCOm/mFaVhfiWhgxhjCF
 34NSUQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4emcadvhv6-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Sun, 07 Jun 2026 21:33:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-5179e5ba14cso33991141cf.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 07 Jun 2026 14:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1780868018; x=1781472818;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=3FB7VsGWBD03rpwArJX/noldaF7TiU950Nm2TSbfvyU=;
 b=h/3Bda013EXMkZo64dqttzRUeiPaO3ikZj6N0yRXsxkv8xWE4ux+KsGEIV6w12fejC
 Sl6rd/h8nEkOUxr+/l0XPJR1PzRhmAzXYJATAAWPyOcp2kwG03jvEIZ0dU8lOf9K/iUp
 zSkAMz/05T4v2cRlLq/5gVQFJpwFxfQ0e4Xx4EAlWmW7JiGIAILI8Wpr4DnUl71hXILr
 9Fh9gRhVXVD/qOZHXDyNmanReLYKRhv+N+kuz1BNxtRWzvTSDer1vq/ZTew1WaMzls2u
 xSZoJP3K9goVgiBF56lYZqIB6axE4/RSZfS7ozLyGucT7ZrH0QXw+dK3ZdDPnxl2NB+f
 RccQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780868018; x=1781472818;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=3FB7VsGWBD03rpwArJX/noldaF7TiU950Nm2TSbfvyU=;
 b=BtsYh18liAKWcfMGawUxE/GV2RKERId/MEsJ1vOAyU8fWpG+Z4xYu+A8/syfYfXkfX
 2pAMpzDu9xqGKRFnVv20RPRCPYo+FRUHab1rbTWGW1KjSq6x0xzw9o5uEKTbIX2v8SM1
 mijTCuQaCf6UIQE1qIgFdUd3ikG7E60dHKgmCqb7Def6uBt8YuujuQzlTtqNTmLVV74b
 tD180on9uHFdXDxp3ONX6DlX6vshkxIoYN1968pw86eOywv/BxJWRdJKIBpANOp8yuu6
 Sc15RlXOC44sfHs8R74fPj3r+75hdUvxr9Fh9YULIv0PPnH9Z26mm0NHtPdida2Yu/GY
 QW1w==
X-Forwarded-Encrypted: i=1;
 AFNElJ8eo8n9h1ZYS5UbCkrqKsiaT5cygXwyYKRW56kid0US7HYre05OVZQPuzDYmD02LhLNntUqV7BPVQE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwdlBWIjY9r3y+9OEyKFUsdQynjU98wLHLobqe2XcdDmRu/KaqM
 glwZeb7HK0yAL+jqPbzr3rE+T+BSHfbI/CUeS5gmiJNK+VMAdItS/udBogt2IfSUjRb+poRzIwK
 AMVdkSIlsSzKMVuIX450InV7ltqefCvUq1MjO1lHRIftw2XVcLEa5aVK8QwJ+6UhzDDoZ/L4=
X-Gm-Gg: Acq92OERF8tHVyg9DAy3J1ycNAABVpYUVn48j8Nz7Och4intLsO7Dsg/lc22gd0LMW6
 xXP8oPMHZd5+T4KGORHl8g9et5xFBSjA70flt3QfhXDT34R8Jt3ypsrEp8sMbltMccYfBjvxPNi
 FPQLaTm9/QnOK1ox7ISlua39X8fZRzubxLXtnfWxLxFTWgqzmUe0Ad10j3s+ShgcRBQf23I5v93
 7VSiFIDnOk+QECaYvjknJRGV/UKiRnuXty1VgOC4za9Lpv0metJi8BvER1gN0LdHVh680CxPYyI
 Gd8pjU5jYulcsZC6cyJEZ6lwCnOnV4ayfNvtDdyLNQxGwrv3sk03cbR6t1fd9MUZa0inAjmfJai
 L1Ks/dbjFRc1EcBa0O6vXt9a1AqZuaGQUfuZyJhNTt/+WRsBAH55qoGK+1WMUMMcZXlo0i7kwOQ
 9db13ACHOSUbTfGxMabuL9oXgU9sSQFp0JkazdQgJgHZyLyQ==
X-Received: by 2002:a05:622a:7d92:b0:517:b68a:8d8f with SMTP id
 d75a77b69052e-517b699d7d4mr24580931cf.19.1780868018429; 
 Sun, 07 Jun 2026 14:33:38 -0700 (PDT)
X-Received: by 2002:a05:622a:7d92:b0:517:b68a:8d8f with SMTP id
 d75a77b69052e-517b699d7d4mr24580671cf.19.1780868017994; 
 Sun, 07 Jun 2026 14:33:37 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-396ac2d5ea9sm40374041fa.32.2026.06.07.14.33.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2026 14:33:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 08 Jun 2026 00:33:09 +0300
Subject: [PATCH v4 8/8] usb: typec: ucsi: huawei-gaokun: pass down HPD_IRQ
 events
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260608-hpd-irq-events-v4-8-30b62b335487@oss.qualcomm.com>
References: <20260608-hpd-irq-events-v4-0-30b62b335487@oss.qualcomm.com>
In-Reply-To: <20260608-hpd-irq-events-v4-0-30b62b335487@oss.qualcomm.com>
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
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Francesco Dolcini <francesco@dolcini.it>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1481;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=3SjZ31inNFNocQI2RmpCu4Tw/qg0rtSCt0SZ5oE3dI8=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqJeOQ0bhQoOsJj857BdAUiqH5pox278y0oAyGy
 RFMbu1dyjqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaiXjkAAKCRCLPIo+Aiko
 1adXB/9gLuR7QGRjAk+HXqf2b8R0PyE0WvdRPYlehmbvDdwTKUxzBuDzzuiV0kTay/bmwkqLoYP
 eSEgECp1mqSpjvxIbCTbpUNLT81GFFEDtjKOgp0EizyaOAmRWZF431B/LHJEqBNRywGDAMR6g28
 XBko5Ih990ex9CIhpqFhfLNy8a/OK0J8+WGQPmWoxwIt9PsO976mFy3iFyD5v4yPJ19GDBS9g1L
 mBGAh4TQw1r6fDBZ0z7VjlgWvcKT0EJs+3W6Mwh/6R/5YhL3raA9bpt8HLs1yUxKd/64FRiW39e
 4xRBwvcrgMfsxCVs47NwyImiptqBmFZy7rW5+/2YVxJAwuCc
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=DIa/JSNb c=1 sm=1 tr=0 ts=6a25e3b3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=pGLkceISAAAA:8
 a=QyXUC8HyAAAA:8 a=EUspDBNiAAAA:8 a=HJ0TMOZLSqZlwYNULgAA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: g-swj_ghLJZ95kx7HqeoYTA0UP3N0YMB
X-Proofpoint-ORIG-GUID: g-swj_ghLJZ95kx7HqeoYTA0UP3N0YMB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDIxNyBTYWx0ZWRfXzAo6rjE3HPHe
 gTf4ZrWx+wsGt1hjcaa8l3CJ1v2c2s7Xqd1TEdwNqaru7aKAX/yb9YK4aR29gvRyggpeJrBKHf+
 twlXf+BJnTd978QApGrkKDUuXaY9bSo5b5Agi5H1l6IX6PgdJwKrnVvgdKC8fPpeOk2riSdRtXM
 hbANN8CBdG4jD+Z5FFCPdNC488GS0rA/Cwnpo8m6/vmOhoadw2FbG7UpnWa0UWeYh20CqjjldEI
 QOm17lcFOxfxhub5cn1qz4ZQljeS/+xp9+u9EmRgpi+HNu0Y3JuVEtRNBys26MCNyhr6+5HesO1
 sa6Svmi3ZcdhnOBxEoLwNCvW6BXsvxkHYc2DW7SRnLgNzRY3J+VbClpG3D4YEfj2jc+T0pyT+ES
 n9cebqdrgZWpNQ/Sj2vaMCVQ73Y8BspB4ybv6cOWwJ6pQYVG5/e3uFmBomf/Ci0uBTqkuThEilu
 Wrv1MlyNw7Ea8Eq5HoA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606070217
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:luca.ceresoli@bootlin.com,m:francesco@dolcini.it,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kerne
 l.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru,bootlin.com,dolcini.it];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[44];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
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
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,intel.com:email,qualcomm.com:email,qualcomm.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8D22C651ACB

The DisplayPort standard defines a special kind of HPD events called
IRQ_HPD. These events are used to notify DP Source about the events on
the Sink side.

Pass IRQ_HPD events from the EC to the HPD bridge, letting those
to be delivered to the DisplayPort driver.

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

