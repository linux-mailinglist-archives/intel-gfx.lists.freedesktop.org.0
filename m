Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLkUFsUd4GkGcwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:22:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DBE408D95
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 01:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5A810E789;
	Wed, 15 Apr 2026 23:22:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="HN9jqGQm";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IWmVxveE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4460E10E786
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:42 +0000 (UTC)
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63FF4UTR862172
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
 iT4ySHxd8iMiHVjfS/Pg8NfDAUzunyhUM2tZEku061M=; b=HN9jqGQmz0rOg6qq
 gM7Ah4W9Y7kaF29tucblX1H2+R1u9HMVdLhD4pohGhFPwRkMBxkDz43FDkLMQoLN
 jQkAjCv5F8SxaZTZS/FjIzwzRcQHO4DByVL1mJ86ZL/F/QB+5BBEnAXmjnYKsKJB
 VgL0Bgi15wvGsmuL9cz99m8I2UoaMBaPjB90kxh+yJGJDBwcQJlndgmNoQSOq5lG
 MwNjxpGuAyTfHllF3pAV5L5yZc0RF+gc9AXbHSbIFskv2VOaQ2sbmiiSjOIyl98o
 JrQLvEZy2eW/FpHX4FJwnaEiJzTKcmiavrDodZqk56xfxpH7na6bVJRXKflYmCdf
 FsfsIQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4djd0e9f3h-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 23:22:41 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-50d812c898cso195383571cf.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 16:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776295361; x=1776900161;
 darn=lists.freedesktop.org; 
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=iT4ySHxd8iMiHVjfS/Pg8NfDAUzunyhUM2tZEku061M=;
 b=IWmVxveEU53+D775jy8kuU3pE8vJfCOpGqvU0qsGrKfxy6Gxe/dwIDMVZF4WhV3o0d
 M4JNl+86u+0zAOTnYeVLQTTSYjCg/OIwxDnnHObRV9z5e98dvtt7MybmMospKaSCa6Z0
 7bS3wQaoEj3XIov/khXjL9a++9tzwWtIVdleAtVpPoPYsoYTw1fpgWb/bYv2amm4kqhZ
 BfPEMsYgN7WOWjP5StyfHZHaKzHC9qR7clX27OjYGjFuSH/AiO3fEO5Ni5f9DWAYWJH2
 3xeis9paJh+sVT0m/gqCHgzTFuvk56GkKnRifu84wMnUziUos24PggPHj4Cyh7cPCBWv
 1kvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776295361; x=1776900161;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=iT4ySHxd8iMiHVjfS/Pg8NfDAUzunyhUM2tZEku061M=;
 b=INMDTu4XKXeoHz/3cSP1p7LFvNvQAs6sDErxMhq3n0lXJfAmKUwY4dN6/qvCB/g2qK
 l6pNvrd329IGi2JmHbAWXwQALMpYuEKlI84/KCTWjNwnKsmQEMTpceZfU5+40cbQIRes
 PCmgZGs5KfD1kYBLBZD+R+zlhtamsLKerD1c8U374arLdv/pIAoK/6BuPiIKmE6dm7cj
 2YfMyWfUjG/QnszSIp4IGetBNxyYHbQSRPdzCse5bAB6XBWlWG46uEA+DtPMZi8Zp1B4
 fb+SgnSy3wA/vIgpCXNWpSQ0nlzgmM8Vy7Po/AystU94tYNln74I7aNzv/NbzZuSNFkW
 AZ+g==
X-Forwarded-Encrypted: i=1;
 AFNElJ9krlL3nZogx1HKH3p37BSJY9QG4tcNcey+9+DY6DjXR4N9U4i6n9+heaLUkm8eJVknUBg84FEkWjs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyxw/vw3V5QOOPQbELaHJ6byv5rOlfrZWYYDEnWiMVfbYHMpAh9
 xyw710D499rahEZ6NZJMFMvlz31y6lRT+9ZKXsB57nZJIJFSk9nbxT9EoWY18M84/DRIXZq0hgv
 Sxm3wa3dD4sVR/UwyhI7a0HQoCSjfv3/ObJhqGUf1E60+YzVaZmVA0ZmAM/MSVLSGD+yUiEU=
X-Gm-Gg: AeBDievt4TTtS/Y8yXDoCQJf6by3pK2zLBc2zZ/oRWCD47cQgd/wkInFk3o2qWsEIBz
 OF81W4bdYmf5gQiV/3BB8giz1oM5XhUro+y5/4jfuUcvEo7PlKgCDR5fxqh6NuwTu881pYyeUG6
 I7YFFANvR547Y1x+ntA47rJEDgNAsy8OdRzWdwZVHVBNdkZKyjagfmZ9HRbfA7XtrqF0FwGFGd3
 riQUssTaqDTYTmONRFkygfkOO555ZpkywyVNxzf57IXsxXoHQIijHd3/PgBVdDKBjU0LpUk8yNX
 xv80AJUYz08iptnK7FUvdglkc1YBlfh8eKvYHnuVF+TlGtb9V/+f1DbpO30n0POtZBedxP3oOfJ
 2D05X5nNtC9kpsOJJLD4a+IQ2TrRa8bgSjwpVte6Z6qA1jIUCY4NdpP30sU6NU6wgr+hbBPY4LY
 DhbVyqExfT1qcrJCc0rsMJz1m+apyDTheE/IeflMmkrjqV+A==
X-Received: by 2002:a05:622a:13cd:b0:50d:c0c9:c985 with SMTP id
 d75a77b69052e-50dd5b30efcmr356728691cf.2.1776295360531; 
 Wed, 15 Apr 2026 16:22:40 -0700 (PDT)
X-Received: by 2002:a05:622a:13cd:b0:50d:c0c9:c985 with SMTP id
 d75a77b69052e-50dd5b30efcmr356728031cf.2.1776295359994; 
 Wed, 15 Apr 2026 16:22:39 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a40a272852sm817054e87.10.2026.04.15.16.22.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 16:22:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 16 Apr 2026 02:22:32 +0300
Subject: [PATCH 1/6] drm/connector: report IRQ_HPD events to
 drm_connector_oob_hotplug_event()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-hpd-irq-events-v1-1-1ab1f1cfb2b2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4349;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=J3Awa0W9x47e9VDImgKb//FhRzSC+4krtGr/Wy12gno=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+YD2Z0/KxXy+84z8JxSP2aQ1M3eUcvU9ilBtXjR/aqj+
 2Z3LuboZDRmYWDkYpAVU2TxKWiZGrMpOezDjqn1MINYmUCmMHBxCsBEegXY/0d62BYrmU3n/7zq
 w+ajokINzO7HGphf9f7u+KVYY9GZPPPd+dPrFkd72JYIiEYv+Cgyof3QC9HYhe8y7N7v8o55f8f
 3X2Ke4BGewnim+rd2rxrcf07ba/hJLfSBAqcl671TPhwNIbvfN0euXzJFsjR5bzDT9YdzJh+Ym/
 DrT8lMr/j1XxkOpW5ULS/5e7N5VoX432Vz5+0VLIppu617LG7ZrHzlp8d/Zss9j9FTmRRq5zq/c
 aVoRAqT3bZowYyZno1Hlf17Mu6zn+s/mVhZfvShDm/vs2P85XszgkUDjLKetR15xhyY5ufn1Hkv
 c23zbjeWi9birs2+dzzKg7olbd5uy6nRu3vQ1+Tx4h1/AA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 4y5O3mh5VsR8_JZml3x0gJA9g5aGzcVv
X-Proofpoint-ORIG-GUID: 4y5O3mh5VsR8_JZml3x0gJA9g5aGzcVv
X-Authority-Analysis: v=2.4 cv=GP441ONK c=1 sm=1 tr=0 ts=69e01dc1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=TP8XqTAxF71JeV6NEI0A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDE1MDIxOSBTYWx0ZWRfX69srSjkYhB3L
 AqYS/wd8OvzJDWrckiqcit/ehaS2ftgfs9zkPbGERq0g3LGhyk46MTivY49oyjhT9Qj16dCVpyd
 hOfLiHXw8LfKykIeVKmsmYEo4P1zZ4MSwHMW8teE08knvf96O2NjJ6ubslA+/+fGDIwXATty/HN
 LRj+KfpUyuc11QMde7PfBxqa3ToQYqT+BsZqO0Ye606X4EGjPfZXQSgX4t3ifAmR7RWtlh7iz4H
 U7DMF19KIFZE4eN10Bi0GAPUqXaM1QmiNCM9hfoKeuzCNC/XNIyKSyqvx9hpLLxb+6jnNKSb4SF
 71WRHk6T4kYDECQyldXveOkFjlbKBxuXcoL0yDbqh1CSnNYMBLP5H0OAkHbzkKWXlCGUEw7Nzx2
 XOy08TOwe5FUvgS2zOfyAdEvjU2csV+06SK32VyhKBk2fFotFDOiV6Fk6oBvY6eNufnZJv7UpQG
 oLlbGLDmIjnRJZyrPLA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-15_01,2026-04-13_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604070000
 definitions=main-2604150219
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 03DBE408D95
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The DisplayPort standard defines a special kind of events called IRQ.
These events are used to notify DP Source about the events on the Sink
side. It is extremely important for DP MST handling, where the MST
events are reported through this IRQ.

In case of the USB-C DP AltMode there is no actual HPD pulse, but the
events are ported through the bits in the AltMode VDOs.

Extend the drm_connector_oob_hotplug_event() interface and report IRQ
events to the DisplayPort Sink drivers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/drm_connector.c          |  4 +++-
 drivers/usb/typec/altmodes/displayport.c | 12 ++++++++----
 include/drm/drm_connector.h              |  3 ++-
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 47dc53c4a738..5fdacbd84bd7 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -3510,6 +3510,7 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
  * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
  * @connector_fwnode: fwnode_handle to report the event on
  * @status: hot plug detect logical state
+ * @irq_hpd: HPD pulse detected
  *
  * On some hardware a hotplug event notification may come from outside the display
  * driver / device. An example of this is some USB Type-C setups where the hardware
@@ -3520,7 +3521,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
  * a drm_connector reference through calling drm_connector_find_by_fwnode().
  */
 void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
-				     enum drm_connector_status status)
+				     enum drm_connector_status status,
+				     bool irq_hpd)
 {
 	struct drm_connector *connector;
 
diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/typec/altmodes/displayport.c
index 35d9c3086990..0cade62da905 100644
--- a/drivers/usb/typec/altmodes/displayport.c
+++ b/drivers/usb/typec/altmodes/displayport.c
@@ -189,7 +189,8 @@ static int dp_altmode_status_update(struct dp_altmode *dp)
 	} else {
 		drm_connector_oob_hotplug_event(dp->connector_fwnode,
 						hpd ? connector_status_connected :
-						      connector_status_disconnected);
+						      connector_status_disconnected,
+						hpd && irq_hpd);
 		dp->hpd = hpd;
 		sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
 		if (hpd && irq_hpd) {
@@ -212,7 +213,8 @@ static int dp_altmode_configured(struct dp_altmode *dp)
 	 */
 	if (dp->pending_hpd) {
 		drm_connector_oob_hotplug_event(dp->connector_fwnode,
-						connector_status_connected);
+						connector_status_connected,
+						dp->pending_irq_hpd);
 		sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
 		dp->pending_hpd = false;
 		if (dp->pending_irq_hpd) {
@@ -397,7 +399,8 @@ static int dp_altmode_vdm(struct typec_altmode *alt,
 			dp->data.conf = 0;
 			if (dp->hpd) {
 				drm_connector_oob_hotplug_event(dp->connector_fwnode,
-								connector_status_disconnected);
+								connector_status_disconnected,
+								false);
 				dp->hpd = false;
 				sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
 			}
@@ -827,7 +830,8 @@ void dp_altmode_remove(struct typec_altmode *alt)
 
 	if (dp->connector_fwnode) {
 		drm_connector_oob_hotplug_event(dp->connector_fwnode,
-						connector_status_disconnected);
+						connector_status_disconnected,
+						false);
 
 		fwnode_handle_put(dp->connector_fwnode);
 	}
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index f83f28cae207..e8e7e6c9eb5c 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -2521,7 +2521,8 @@ drm_connector_is_unregistered(struct drm_connector *connector)
 }
 
 void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
-				     enum drm_connector_status status);
+				     enum drm_connector_status status,
+				     bool irq_hpd);
 const char *drm_get_connector_type_name(unsigned int connector_type);
 const char *drm_get_connector_status_name(enum drm_connector_status status);
 const char *drm_get_subpixel_order_name(enum subpixel_order order);

-- 
2.47.3

