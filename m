Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GYIC5OoDWpr1AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 14:26:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879D658D9DB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 14:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6479710E267;
	Wed, 20 May 2026 12:26:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="IEL3c5Pj";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Licu8vcB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16A6010E267
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2026 12:26:55 +0000 (UTC)
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 64K7cpER1636916
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2026 12:26:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=R2TeQqks38QIoyDMGjnlHZik
 TcCtv1Rua8ztzIrSGMs=; b=IEL3c5PjqWlF+XsnVNBCelp1TMrAsAl6meLx5Fpo
 Qr75sMcTLEqvMdOoHpU+OYtP9rhIOv8nIPX2wfHkYe4nimwsj6eonlhLInzGyoGl
 oVbmLIkw1KIBlyCCv2dRGadc3GEqceUukay8kCYuJCqZoEdQWqv7JKh3rokRh08w
 Uw9B+rDuloBd2LhhoKtrHOmBshYeaAUnYl5ZUQrOOdDMV4niA2Ik+YRqg/JSVkE3
 E569Mg7PhhYWhMWuS8uuPG91zGmYPDzSEjVVfHeVMZ/bqIpFWEmQfMJzWK0Y5oxS
 Hh9rAA455ZRtUUTKQxNd6bvmZcDtMzG4mGTNObVxK1Q1SQ==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com
 [209.85.222.69])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e8t3scjs4-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2026 12:26:54 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id
 a1e0cc1a2514c-95cfe3d4c16so9544573241.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2026 05:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1779280013; x=1779884813;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=R2TeQqks38QIoyDMGjnlHZikTcCtv1Rua8ztzIrSGMs=;
 b=Licu8vcBFuE2+M+nh4PznlmAYB9chsDTOj0EvCXCIc4vnVnzsHua+9YucNGdpsFtZR
 n37Gj6qtpovpgUIOVhc/ik4efcI7Gon3u0nXgDx+qliWnDkQvj6t1yC7j2rJXA5KZz2/
 86krft4LdjLsDm+0PV8Ae9+tupHLLOuZXLrcySTxwKNb2EJZ+U4zowIsqZsvQlAVjRbN
 IJV768275ufFsW4T4/LpzTGhubBsaejdzfyPdgNX9esnr0J/5aiSdLZ2iMpMvWWkfr6N
 Pzs/nGNvYETn+fQJBM75KhnSKaBkhrl38JLzOYl4BPrJIYmNwi0CgSv52G3rUtCx15sR
 SxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779280013; x=1779884813;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=R2TeQqks38QIoyDMGjnlHZikTcCtv1Rua8ztzIrSGMs=;
 b=S9ISCNgQ+FmVkh94d/lK8xib5DFdKEjOHlIcD3fD3V2E8bZdrqROjbYemGXTwXBgg+
 4wuvX0+EkKv03LGTcUeNO6dGxv62mOe65VmRlMsK6+sTu6bA44b/4k+2g0+c87V1F2I4
 BuFOEuBRMnTiwU4fL2l6wJEjRgWUN6+dlJk/aC5aylRyGaWU+E51ffn2WuVw23t6AkLQ
 FijP/Scualk4y4eESM3O3iT7Ksce1bTDq9IIXeh9Rj39tKk6vWmi0WUp1eb/R0Y7HkeV
 XSK3uOgAH0nb9HTvMsYWQ+Amur6ikINgR1bFOeDU3bUI4Nnh35UFTS6bOFcTth+3fg/L
 gM2g==
X-Forwarded-Encrypted: i=1;
 AFNElJ8JaP/J6gBOdh9xJCjp9EVq/srNJ3RV1jov6+ZbKplGSur/4WIdLkQSsWsSNCSFkeWYL45o68t5hTU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw9bjh+mad0qno+vcr6mZ064xyPGPOO1oQabrAzg6L5bKgn328f
 K7B+oITFYrVT78cD0NVrdt0F3SfWkYLbMg3oydQo6byztJ1N8o8Uw1GdGisfJIaEQtplzvMshbO
 +XTKxfIUviPhuTqPI+zhvJ8N1OKediEVbdWSTC+BVAgL9CN6EsgVXYKjejy/p2sX5YvY4GNw=
X-Gm-Gg: Acq92OF/eei38Z0/sth+8MHhXP3BtaLXWUGR2XAYWSEFF4c1gY3e3DdlxzAAvNf4tFJ
 8D/KpQq27eRVRB6YsGYGuaN8AAaIFaVXt2T4zOtHWfiDJUjIAhn6Kz4WHu+tL56w1wKkqfLg+PV
 1d48G4DdmOhoQ1kGtG1NPACyXWDQNw3j8cqYwR4RAdpMyY+RwRfMo8pHHFhhyhNnDNkcvpa5hYT
 zA+kXqmOXCFytIBcYBYg34/csknYjhW7jbOO3uhc1hZzhJgBSXm+DcbtUMY7EQc3BF6QF3pejx5
 aAEwVddVx6KDtCOKiYtgsaVqfSdVTHDuSaxdHjVmzrfd6iaVmOuBQQX4aQTrPT5sBW9VPS9VW5m
 i8C0BFoQVdkdzhFf08ko1b5Bstl6132//BqroSr4aOaI0GkQ8TrzEIUOV6A3u8+z2nOx64xBg5T
 zZ3PbxEzvDe/G9Er1HzkDkAPb0GVN/VIJBP8U=
X-Received: by 2002:a05:6102:5e86:b0:633:d7ec:153c with SMTP id
 ada2fe7eead31-63a3c801ffemr13878898137.3.1779280013363; 
 Wed, 20 May 2026 05:26:53 -0700 (PDT)
X-Received: by 2002:a05:6102:5e86:b0:633:d7ec:153c with SMTP id
 ada2fe7eead31-63a3c801ffemr13878848137.3.1779280012801; 
 Wed, 20 May 2026 05:26:52 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a90f11a7a0sm4868217e87.24.2026.05.20.05.26.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2026 05:26:51 -0700 (PDT)
Date: Wed, 20 May 2026 15:26:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
Subject: Re: [PATCH RESEND v3 1/6] drm/connector: report IRQ_HPD events to
 drm_connector_oob_hotplug_event()
Message-ID: <vvlw4f6xo7krq3xoyxuoaa3tecrgduw5qlujp3qf3zzibzjesv@demhqzadavql>
References: <20260513-hpd-irq-events-v3-0-086857017f16@oss.qualcomm.com>
 <20260513-hpd-irq-events-v3-1-086857017f16@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260513-hpd-irq-events-v3-1-086857017f16@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIwMDEyMCBTYWx0ZWRfX+NCV2f4pVndz
 Wt4cP5alPrJDJQdukSsLrjOTkhRvIMy0VNOf64JehR/7C8Hi58fmzJLbl37ZbnyTy1ta4QvM66x
 hfAOGNBljI/XkS7CIkwlluypg1yPv64ZhbZBzMrlnM4L/FsruNGLoWtLL5EmkEaA2mo7i7KzCzN
 bU+hgHHDbHA8k+Eh0gbitmesar/ES5vVnZJ6DTDVi470/pK/Ite+EN0hzX6UkEEAWqC7pJxHk0p
 HRQjjwIEP+U7PxSzCM7NQBjGlYGjGa5iVh2jNiEkHV8qJXVpIjSLOIogfMTOFelUddDEJz6vZ2W
 YgqWlaSBhwNOx0yuXIng7i7nofoiCeJj/bN167wvNIlX7Fkp/1jbI48Dx8CsX4VcR5MgSuda+nQ
 d2bxbsWQh2c0ozvCWF5MTmMdmnsZn6EuGJsqinCmD1t3Tnsubq36c0afhNJGRGBH8LKNnFwzogh
 3k3n/fy0UTzOuLEldeg==
X-Authority-Analysis: v=2.4 cv=Oc6oyBTY c=1 sm=1 tr=0 ts=6a0da88e cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=6jUhzznPuw0D9V4-6sIA:9 a=CjuIK1q_8ugA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-GUID: cCrfqheU0P9I4Qe_UWd67UgZDxrTFvzs
X-Proofpoint-ORIG-GUID: cCrfqheU0P9I4Qe_UWd67UgZDxrTFvzs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-20_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605200120
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[42];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:heikki.krogerus@linux.intel.com,m:gregkh@linuxfoundation.org,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:adrien.grassein@gmail.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:robin.clark@oss.qualcomm.com,m:lumag@kernel.org,m:abhinav.kumar@linux.dev,m:jesszhan0024@gmail.com,m:sean@poorly.run,m:marijn.suijten@somainline.org,m:tomi.valkeinen@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:mitltlatltl@gmail.com,m:nikita@trvn.ru,m:yongxing.mou@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:intel-xe@lists.
 freedesktop.org,m:linux-amlogic@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-arm-msm@vger.kernel.org,m:freedreno@lists.freedesktop.org,m:jernejskrabec@gmail.com,m:adriengrassein@gmail.com,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linuxfoundation.org,intel.com,linaro.org,ideasonboard.com,kwiboo.se,ursulin.net,baylibre.com,googlemail.com,oss.qualcomm.com,linux.dev,poorly.run,somainline.org,trvn.ru];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim]
X-Rspamd-Queue-Id: 879D658D9DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 13, 2026 at 09:23:21PM +0300, Dmitry Baryshkov wrote:
> The DisplayPort standard defines a special kind of events called IRQ.
> These events are used to notify DP Source about the events on the Sink
> side. It is extremely important for DP MST handling, where the MST
> events are reported through this IRQ.
> 
> In case of the USB-C DP AltMode there is no actual HPD pulse, but the
> events are ported through the bits in the AltMode VDOs.
> 
> Extend the drm_connector_oob_hotplug_event() interface and report IRQ
> events to the DisplayPort Sink drivers.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/drm_connector.c          |  5 ++++-
>  drivers/usb/typec/altmodes/displayport.c | 15 +++++++++++----
>  include/drm/drm_connector.h              | 19 ++++++++++++++++++-
>  3 files changed, 33 insertions(+), 6 deletions(-)

Greg, Heikki, would you please ack merging this through the drm tree?

> 
> diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
> index 47dc53c4a738..edee9daccd51 100644
> --- a/drivers/gpu/drm/drm_connector.c
> +++ b/drivers/gpu/drm/drm_connector.c
> @@ -3510,6 +3510,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
>   * drm_connector_oob_hotplug_event - Report out-of-band hotplug event to connector
>   * @connector_fwnode: fwnode_handle to report the event on
>   * @status: hot plug detect logical state
> + * @extra_status: additional information provided by the sink without changing
> + * the HPD state (or in addition to such a change).
>   *
>   * On some hardware a hotplug event notification may come from outside the display
>   * driver / device. An example of this is some USB Type-C setups where the hardware
> @@ -3520,7 +3522,8 @@ struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
>   * a drm_connector reference through calling drm_connector_find_by_fwnode().
>   */
>  void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
> -				     enum drm_connector_status status)
> +				     enum drm_connector_status status,
> +				     enum drm_connector_status_extra extra_status)
>  {
>  	struct drm_connector *connector;
>  
> diff --git a/drivers/usb/typec/altmodes/displayport.c b/drivers/usb/typec/altmodes/displayport.c
> index 35d9c3086990..7182a8e2e710 100644
> --- a/drivers/usb/typec/altmodes/displayport.c
> +++ b/drivers/usb/typec/altmodes/displayport.c
> @@ -189,7 +189,9 @@ static int dp_altmode_status_update(struct dp_altmode *dp)
>  	} else {
>  		drm_connector_oob_hotplug_event(dp->connector_fwnode,
>  						hpd ? connector_status_connected :
> -						      connector_status_disconnected);
> +						      connector_status_disconnected,
> +						(hpd && irq_hpd) ? DRM_CONNECTOR_DP_IRQ_HPD :
> +								   DRM_CONNECTOR_NO_EXTRA_STATUS);
>  		dp->hpd = hpd;
>  		sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
>  		if (hpd && irq_hpd) {
> @@ -212,7 +214,10 @@ static int dp_altmode_configured(struct dp_altmode *dp)
>  	 */
>  	if (dp->pending_hpd) {
>  		drm_connector_oob_hotplug_event(dp->connector_fwnode,
> -						connector_status_connected);
> +						connector_status_connected,
> +						dp->pending_irq_hpd ?
> +						DRM_CONNECTOR_DP_IRQ_HPD :
> +						DRM_CONNECTOR_NO_EXTRA_STATUS);
>  		sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
>  		dp->pending_hpd = false;
>  		if (dp->pending_irq_hpd) {
> @@ -397,7 +402,8 @@ static int dp_altmode_vdm(struct typec_altmode *alt,
>  			dp->data.conf = 0;
>  			if (dp->hpd) {
>  				drm_connector_oob_hotplug_event(dp->connector_fwnode,
> -								connector_status_disconnected);
> +								connector_status_disconnected,
> +								DRM_CONNECTOR_NO_EXTRA_STATUS);
>  				dp->hpd = false;
>  				sysfs_notify(&dp->alt->dev.kobj, "displayport", "hpd");
>  			}
> @@ -827,7 +833,8 @@ void dp_altmode_remove(struct typec_altmode *alt)
>  
>  	if (dp->connector_fwnode) {
>  		drm_connector_oob_hotplug_event(dp->connector_fwnode,
> -						connector_status_disconnected);
> +						connector_status_disconnected,
> +						DRM_CONNECTOR_NO_EXTRA_STATUS);
>  
>  		fwnode_handle_put(dp->connector_fwnode);
>  	}
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index f83f28cae207..e05197e970d3 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -91,6 +91,22 @@ enum drm_connector_status {
>  	connector_status_unknown = 3,
>  };
>  
> +/**
> + * enum drm_connector_status_extra - additional events sent by the sink /
> + * display together or in replacement of the HPD status changes.
> + */
> +enum drm_connector_status_extra {
> +	/**
> +	 * @DRM_CONNECTOR_NO_EXTRA_STATUS: No additional status reported.
> +	 */
> +	DRM_CONNECTOR_NO_EXTRA_STATUS,
> +	/**
> +	 * @DRM_CONNECTOR_DP_IRQ_HPD: DisplayPort Sink has sent the
> +	 * IRQ_HPD (either by the HPD short pulse or via the AltMode event).
> +	 */
> +	DRM_CONNECTOR_DP_IRQ_HPD,
> +};
> +
>  /**
>   * enum drm_connector_registration_state - userspace registration status for
>   * a &drm_connector
> @@ -2521,7 +2537,8 @@ drm_connector_is_unregistered(struct drm_connector *connector)
>  }
>  
>  void drm_connector_oob_hotplug_event(struct fwnode_handle *connector_fwnode,
> -				     enum drm_connector_status status);
> +				     enum drm_connector_status status,
> +				     enum drm_connector_status_extra extra_status);
>  const char *drm_get_connector_type_name(unsigned int connector_type);
>  const char *drm_get_connector_status_name(enum drm_connector_status status);
>  const char *drm_get_subpixel_order_name(enum subpixel_order order);
> 
> -- 
> 2.47.3
> 

-- 
With best wishes
Dmitry
