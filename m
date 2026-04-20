Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FIDCtb25WnjpgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 11:50:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DAC4290A7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 11:50:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01CC210E157;
	Mon, 20 Apr 2026 09:50:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="W57WOtCe";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HKe+jwXq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D7810E488
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 09:50:10 +0000 (UTC)
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63K97EBd2755820
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 09:50:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=kWuPigQBRvg2mmG1YEkZ2x38
 8ocHV9caZV1E1+5l688=; b=W57WOtCeOcicX3eqOdiyb3EDavkLG5irwHoXW55M
 wmRlpJepFltE0GBwDB/eEZBvMRLgtu+23T/xt1DZn4WHzXcrKRfoVPgQut1CClJX
 VOYHOXibM3WI5SZiwdhnS4DizoNnKO4tGaZ4JSDZcp8Th2Dask97hw6Z7ZhAr1cP
 aMwPD+EXq8OVfnwV4UiLLWKNWccIeCI0Dub5H2t9t3AcazG6saJukNtykdqRYJkj
 D4s0lFeY98n8l5NcyXmUp7ALuyhcmg4wVEJt2Z//32LLZZj1qsrLH43JCZX/QjPe
 A2yRQiUlXqP2y/JQ0XNndxovMBtB55L3BZJYG3/1Jqd95A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dnh7xg5j5-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 09:50:09 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id
 d75a77b69052e-50b4076dc16so38091931cf.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2026 02:50:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776678609; x=1777283409;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=kWuPigQBRvg2mmG1YEkZ2x388ocHV9caZV1E1+5l688=;
 b=HKe+jwXqAMTzTly5iC3qHJ7xfAzBlEF3qX5DLEKmIoOHyeOaiKdKWEWC8scqAc/27O
 n9cewflgYxHPBZKjQVcUzSekNPSK/3UpUul+HkVu8pdw3c7W+OMG+FdLnHdiWazgZOVQ
 RsBNFOXWuz1fgnKQwDUh9haKdfYvYuEjNkaUZxF+/OYEQDWV36k6r5HB4Vnv4MORIPdg
 yJk7F2S9qY/8weiY4pXEiUuhXh+u7M3NvaQk3Aft0mkRjlWYFPaWTlXyIjc3U9LeDBga
 4Lfc0X1mD5iSfiokhdaa0IwMFZhcOEx3LoLL+MZH0iq1RbBlKVn2dKcHYTRHuOgl0996
 lvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776678609; x=1777283409;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=kWuPigQBRvg2mmG1YEkZ2x388ocHV9caZV1E1+5l688=;
 b=IQ0Rgyn/6sPq193oSuk7hZNg4iMrbw8ciZ7AbCHJSDhPyL363Zv20SUxcBswTTzOGs
 TspM+71VwqYwupif/HgLHk5Rjto60IC288qSgK3qSbKZi7gUpRWRyeabVaj/iroZJdWL
 yapuL2q5pO4j5xX9wSZQSpxc7WIYKnMAgmckd+AuFP8odwhC5G5E9R1kgMIoti4qooK+
 oiYCwF6NowGsP8gvQNC1e1McuR221WMQWlUnIlcBpSPjc0EqjnvBjZXWSKsp05itYw/D
 WbQQsukA9dG4k6vetIfA/LbZp3rral460NIdNBsIByhWx7JzThhTbfRXbekRXc8qESkI
 Vg3Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ9/q2Up0jNq8sv7trBmo2IWlanoqKYh7FL1gdgG6lEAu9yroLC04TEKm56hJqifrKasLgkanoZQRmI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx7ut9a2Wsjpk141w8PabK/9V3Nk2cSoURaJZanBiclQcwjS5N7
 8AaOdRuxEygigcrlNf2Jd2CCjVMgUV2BWYrSR/QqZ/0q2/EQBK3m24e1on6qgJ22eUYF4rzWysJ
 AvBJ4YNMj9XGQNRJ7nTnVzG4VsazcZb82ASJxB/Lnx9T1DptgbDrneFcuOYDPT6yqdFWDVxE=
X-Gm-Gg: AeBDietbZnO7Pwlwvpi1E8y5LVoQQ7l6hzFA+8vjpXAmGXD8HJjAnk7AdCwT2SiHdks
 fg7oq0B4IVwH4YuYyrKDP+J822G6gh7ppRGHzPJozKsPLc1DkJaTX2VSJJcAN6WUACSbmVg7ZrY
 KYuGm3RUHtdsb6wtyvSqtYSyvSWfakPQhGenvwUb3W3D2vZ0AQiK8GpEUJZ4+h5qPRWmvxBFGvo
 OXl9OAW3NHWRV2XRg1ZPUE+dXpUY4syPEEc9rufukekf7bqlxKjtsmhYQ84whzesp0q7Oytpwqy
 hrzy1LRDXCKjZoLIRgenqDkXMWM3NjqhPWsCyFKymC6mHlHmBn8oZBZpORhGrvcS7WxlpAnQgDM
 X/BGtOnNa6SGPKK76rENgBYRfU3sJLL/l8QPxjYKzhLIOrmsvGzR7icI3LoFjgEQ+a4PHFvz1ov
 CmfjC/U37Rm/XvKG4WpnN02sG4aKiFjnS8E2gtaDKw0FY6XQ==
X-Received: by 2002:ac8:7f15:0:b0:50e:5f37:a821 with SMTP id
 d75a77b69052e-50e5f37af22mr37013141cf.36.1776678608868; 
 Mon, 20 Apr 2026 02:50:08 -0700 (PDT)
X-Received: by 2002:ac8:7f15:0:b0:50e:5f37:a821 with SMTP id
 d75a77b69052e-50e5f37af22mr37012641cf.36.1776678608356; 
 Mon, 20 Apr 2026 02:50:08 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185ad138sm2859553e87.9.2026.04.20.02.50.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2026 02:50:07 -0700 (PDT)
Date: Mon, 20 Apr 2026 12:50:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
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
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Pengyu Luo <mitltlatltl@gmail.com>, Nikita Travkin <nikita@trvn.ru>,
 Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Subject: Re: [PATCH 1/6] drm/connector: report IRQ_HPD events to
 drm_connector_oob_hotplug_event()
Message-ID: <3vrqk67oivkgo26xdc3r774rvj3jn3t6sfydhlytyrfiftubhg@cipain7xxcjz>
References: <20260416-hpd-irq-events-v1-0-1ab1f1cfb2b2@oss.qualcomm.com>
 <20260416-hpd-irq-events-v1-1-1ab1f1cfb2b2@oss.qualcomm.com>
 <51b7c44e-36c9-461f-983a-eaa86eeb8cfd@ideasonboard.com>
 <6z572fdjkvjqvedifwvotgdy4lcrifiqvkjpnutousjqc6764r@zepfzkqy2kbu>
 <a2e60e74-a1be-469d-8f4d-ecce1f30b517@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a2e60e74-a1be-469d-8f4d-ecce1f30b517@ideasonboard.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIwMDA5NCBTYWx0ZWRfX60oGxyTmNB6c
 rh47y49Ya8mJG3h8LKvUg9a/4iEvQgxdbS7FfJbWVpuTCW7Wqa1M+Z0O3drpaC/crKvpf5b1KzU
 WnkUNJFBZsS5QbFlFxbraEBk+PGA1ygvtYa3QRsfNNAR0jLLOcKZ3Jr/6kl/Sq3qj0qKxurdV8c
 Ion4DGIa1p02o6ciPOfoOLHa0vGQ+yhgJsf48hnsIV7OhV4JTrMKN4N2nzmhr3sSp1HqHLo2eUO
 stfwM83bbZeHZELMxqpSA7RoRtix0BFLzXVMO/N1fZDJZbVPC019/TjAse/p8Z9SaqcLpNJlam6
 jd7OoPs3zSRl0ltwjrmMsFYZQy6VAmUH67OZJ90phtVqP4ioabQkgZSH0jxeG5vPR+GcgLCMbyP
 T4KrQuJ5acmlK5IAW5u1HI7idV4p1WMOk4FnNPnByGkq7Y7kKTGXYVmDKIBkDts0s2nGe43Ufui
 gQ7dTPaJ9TTcFscfSwA==
X-Authority-Analysis: v=2.4 cv=BPmDalQG c=1 sm=1 tr=0 ts=69e5f6d1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=VVbN_I7Xu8gywQYyaxkA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 5N1V3cdn2JfTME5UTOChEz_q4ss6WojT
X-Proofpoint-GUID: 5N1V3cdn2JfTME5UTOChEz_q4ss6WojT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-20_02,2026-04-17_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604200094
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[42];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomi.valkeinen@ideasonboard.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.
 run,m:marijn.suijten@somainline.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
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
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 84DAC4290A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Apr 20, 2026 at 07:50:46AM +0300, Tomi Valkeinen wrote:
> Hi,
> 
> On 18/04/2026 01:32, Dmitry Baryshkov wrote:
> > On Thu, Apr 16, 2026 at 11:10:03AM +0300, Tomi Valkeinen wrote:
> > > Hi,
> > > 
> > > On 16/04/2026 02:22, Dmitry Baryshkov wrote:
> > > > The DisplayPort standard defines a special kind of events called IRQ.
> > > > These events are used to notify DP Source about the events on the Sink
> > > > side. It is extremely important for DP MST handling, where the MST
> > > > events are reported through this IRQ.
> > > > 
> > > > In case of the USB-C DP AltMode there is no actual HPD pulse, but the
> > > > events are ported through the bits in the AltMode VDOs.
> > > > 
> > > > Extend the drm_connector_oob_hotplug_event() interface and report IRQ
> > > > events to the DisplayPort Sink drivers.
> > > > 
> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > > ---
> > > >    drivers/gpu/drm/drm_connector.c          |  4 +++-
> > > >    drivers/usb/typec/altmodes/displayport.c | 12 ++++++++----
> > > >    include/drm/drm_connector.h              |  3 ++-
> > > >    3 files changed, 13 insertions(+), 6 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> > > > index 47dc53c4a738..5fdacbd84bd7 100644
> > > > --- a/drivers/gpu/drm/drm_connector.c
> > > > +++ b/drivers/gpu/drm/drm_connector.c
> > > > @@ -3510,6 +3510,7 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> > > >     * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
> > > >     * @connector_fwnode: fwnode_handle to report the event on
> > > >     * @status: hot plug detect logical state
> > > > + * @irq_hpd: HPD pulse detected
> > > >     *
> > > >     * On some hardware a hotplug event notification may come from outside the display
> > > >     * driver / device. An example of this is some USB Type-C setups where the hardware
> > > > @@ -3520,7 +3521,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
> > > >     * a drm_connector reference through calling drm_connector_find_by_fwnode().
> > > >     */
> > > >    void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
> > > > -				     enum drm_connector_status status)
> > > > +				     enum drm_connector_status status,
> > > > +				     bool irq_hpd)
> > > I find the "IRQ HPD" naming always confusing, even if I'm somewhat familiar
> > > with DP, but if someone has mainly worked on HDMI, I'm sure it's even worse.
> > > 
> > > Can we define this a bit more precisely? Is 'irq_hpd' only for displayport?
> > > If so, perhaps 'dp_irq_hpd' or 'displayport_irq_hpd'. I might even call it
> > > 'dp_hpd_pulse', but maybe that's not good as the spec talks about HPD pulse
> > > for both short and long ones (although in the kernel doc you just write "HPD
> > > pulse")... The kernel doc could be expanded a bit to make it clear what this
> > > flag indicates.
> > 
> > I attempted to stay away from defining a DP-specific flag, keeping it
> > generic enough. HDMI is pretty close (IMO) to requiring separate flag in
> 
> If it's not specifically the DP IRQ HPD, then we need to define what it
> means. I tried to think what it would mean with HDMI, but I didn't come up
> with anything.

I might be mistaken, but I had someting like HEAC HPD / EDID status
changes in mind (or HDCP-triggered HPD status changes). But here I
admit, I hadn't checked if it is actually applicable or not.

Anyway, for e.g. DVI or VGA that means nothing. But, my point really is
to abstain from defining someting as DP-only in the top-level API.

> 
> > Linux. Likewise I'd rather not use "pulse". The DP AltMode defines a bit
> > in the VDO rather than a pulse.
> > 
> > Anyway, if irq_hpd doesn't sound precise enough, what about "bool
> > extra_irq"? This would convey that this is the extra hpd-related IRQ,
> > but it would also be obvious that it's not related to the HPD pin
> > itself.
> We'd still need to define what exactly it means. I think it might be better
> to just define it as the DP IRQ HPD, as then the meaning is clear.
> 
> Also, would an enum flags parameter be better than a bool parameter?

Maybe not enum, but u32 param. Then it can become:

@extra_status: additional type-specific information provided by the sink
without changing the HPD state

void drm_connector_oob_hotplug_event(..., u32 extra_status);

/* DP short HPD pulse or corresponding AltMode flag */
#define DRM_CONNECTOR_OOB_DP_IRQ_HPD BIT(0)
/* DP long HPD pulse, debounced XXX: do we need this? */
#define DRM_CONNECTOR_OOB_DP_REPLUG BIT(1)

For HDMI we might want to define:

/* HDMI 1.4b 8.5, HPD pulse */
#define DRM_CONNECTOR_OOB_HDMI_REPLUG BIT(0)

Or might not, 100ms is long enough for all debouncers.

For HDMI we potentially have another source of OOB events, CDC-messages
from CEC controller. I have not looked in the details of the HEAC 3.

-- 
With best wishes
Dmitry
