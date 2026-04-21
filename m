Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMXNGoaf52ml+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 18:02:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEF343D15C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 18:02:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF08710ED30;
	Tue, 21 Apr 2026 16:02:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="DoC4TJD1";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JaJTznkz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com
 [205.220.180.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0119F10ED19
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 16:02:10 +0000 (UTC)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63LFbBoB3336929
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 16:02:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=laMpQ/PEThA++8VKoCP5uoEG
 KvqMhipe1NJOiXj6OFA=; b=DoC4TJD1tox6cQCMrbUYn1E6UWT7nQKw64cl8O7+
 NPINHQmS86XXE01DFnSK+4Iq8z/cJ9md0LTLnXSvwDY99fNJEnGBBEtU2hXt8Tns
 X/oZu1q8unPKTYt/aULiBdGGz4oxZot83flyQIozJYQI7cHemjuH9wj7Nid6f/Ul
 8YZSwK+xIBYxPGW368kAHIHy3ICmMhIMt4BK9nnyTlys1W/VZdyVlJkg4HrkGdVW
 z/CGvbjYIFmHKcpRDrDGBTGKC+OKGu+5hx+6iAc8n9bZY8VbLIYiyeQRd+HhqlTi
 y+Afw1j0QBfYxjVU8jsbrX3BtzHQ4NhIhObbJwTXckxD3w==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com
 [209.85.167.198])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpc1jg360-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 16:02:09 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id
 5614622812f47-475f6d0de69so7063112b6e.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 09:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776787329; x=1777392129;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=laMpQ/PEThA++8VKoCP5uoEGKvqMhipe1NJOiXj6OFA=;
 b=JaJTznkzrHcRh8e/Lx/FCNww4E8vXlI+VQXQ/dPAjZSQWzyKuMUMA/ypqKhuOhRsth
 nKucao8rZ1OzeSarNElsSs1L+/s/X9Hb4DDnCMvJVS4qPY4P5ju++BsmYWUI0k6OnMVl
 YvmVYXP5dv10OPZwwvVMMZ+tEH3W+LAXdeSNPf/SFB3kmwlHSqwCjpHw0f+hcvLAbAcB
 RJvo/Rj1QVF6fyrBpr7i+57guopVj109HfiVGbfXkGWcH4+05+F4fvon3uTvOeM4uzN9
 ukbW1eBpr1o3ELooiyaP8COufJJyvvznN9BcBbFmwqEN6MxnPg04doYopS8wFZYt0qQc
 DApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776787329; x=1777392129;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=laMpQ/PEThA++8VKoCP5uoEGKvqMhipe1NJOiXj6OFA=;
 b=I4rfDDfoYap1Jp87bZAjOyJ88dCSLYlqLvukRQW85T1susGvHyEaid8JOPS/540Sb4
 XS/ESbZrkyal7uqisUBKWqQI4tSaxUuWw145rds29V80A2YCJixTDA8gc9uOwXZum7U7
 /DumQHn+zBoR97mbPdC2Tv1IIxTnv0o1g2CODnCd9SNowX+dkveO3UjFBiOlE1sfIp+T
 OQyu762yxWjICkFqMCVWCWQin4AM8CZW8RovRdEEKq8m0Ur5CWewDM66wx1NVWja3k2P
 dKbnt0YQQrNwp0/s8U9Z45hF2tl84jxu2g2UtLe3Z514IDH2WKko0XTFqUgXqR8wlF2r
 8VPA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/kLYwjf+wbAOYIqE6CnLH5NquhyXbTlkCN0J2y7PHYsp4wVxlSiyswbvZ11gIL71DFEwzHb8bDaUc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzwSoeeNx7ukUQsr5P8DsZEBWWwZvPJRQOLsyRad9YtAvHkZgJj
 vPM4m79UkIAq3oJkty6AB9IR+OH9dMF/1sx+GkNQ09Pdyh761EDZKp85NohARCMpELxy+L+jZJ5
 bFX/pmmlTEpPM1CB26pAEMWarXJtRYQIxVfEN26NgFqNXGQCAt4Psqz94+5xaZ1MPix8EXXM=
X-Gm-Gg: AeBDieusYtYV2aQ6isQAwGiN+tKYal5o3IMs7nz3X0y7LKO6m4GHaTsJlyAlglCqyTE
 WovNOnNmQIBeKwwZW4nioRQpd06SafS+g8uJeyMxL3xb72LecmaMmW8tJaZ96F1GGPZM1w33M/y
 gkGWfauyM34lALwjbHc4EXpP6NzhIjroVrnVVGs88pJQjs06n3Q/S6dH+mTkfrzZrp3kXtDTp+0
 A/N2exoK8NC28hBaHxicr64gKQm7MERCMWlLlU6+HP/wH5PkuWDSwpbwdV/iiBoGBiMi6BZoQhN
 DtuV/1FgmYL3/Mx/ey6gZFXwWEcV9ZjleZtxiXsxCspzcwalDfHyKUPWb4EQ2dcJ7mTYgpYS07I
 mOj21Ebh7Islb7hSzEZGMo/cFlhfjh5zLoIIpWlTj6T1CmHv4QBHs7DNYWFideEflKJdqeKlznE
 mzjUCxcyVCoT+Vt6JdguRidOo6qwGYt6p+yWQVBliwUPoFYA==
X-Received: by 2002:a05:6808:4f1e:b0:467:1941:1f18 with SMTP id
 5614622812f47-4799c951609mr10816739b6e.14.1776787329125; 
 Tue, 21 Apr 2026 09:02:09 -0700 (PDT)
X-Received: by 2002:a05:6808:4f1e:b0:467:1941:1f18 with SMTP id
 5614622812f47-4799c951609mr10816664b6e.14.1776787328396; 
 Tue, 21 Apr 2026 09:02:08 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-38ecb7613a9sm31882641fa.41.2026.04.21.09.02.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2026 09:02:07 -0700 (PDT)
Date: Tue, 21 Apr 2026 19:02:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Jyri Sarha <jyri.sarha@iki.fi>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Simon Ser <contact@emersion.fr>,
 Harry Wentland <harry.wentland@amd.com>, Melissa Wen <mwen@igalia.com>,
 Sebastian Wick <sebastian.wick@redhat.com>, Alex Hung <alex.hung@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Chen-Yu Tsai <wens@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Daniel Stone <daniels@collabora.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v2 14/20] drm/mode-config: Create
 drm_mode_config_create_state()
Message-ID: <uzfggjuv3yfegfnzjd4jm5losp6zxtxzrhtbncappzekyrcdzs@7awi7qw4kchv>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-14-c63f1134e76c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320-drm-mode-config-init-v2-14-c63f1134e76c@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDE1OSBTYWx0ZWRfXxtC3UXHioxqO
 PV6pRU+65bFoiTB2j7E+BvvzMXGVWArUuN4SaCmYmH+tUTM6qWoWddIhSRdgRyU5yVzhwh2fDkS
 MkcxI4BtDfufR0SZf3bpVdGRTQCLMhh61Jab23wVhrytJDRc/opKHI2IH2MwaNSWcBng42RQPcY
 TRxSqsh2WgNxs/YUj1r9GkfJKIU2hvQlqJzzwydHD3WzKp13i9SIjmULWrCkYEXFE86nheq9PFd
 uFc667UywQ5x/m1IsJ7hYVAZaKzMoIf+yQfW+SH3MzVwCKsu/qajD90FVYl46d2CDn9YGMy4H93
 D4bLc+I++7BDluiAJoF4KQ+EiiZwi+kAQgqk+M2RRr26yXb7oy7TZpf1lMTiGkgHYvXvlIlLqv8
 qGV/qxzLKLD4I/wV4+lKpPxQPTw8qR2yNv8ONxoR4OYwaC09jJxUebi0o0GczhI58/aGS053/MD
 h2w/lq+LKLh3zUvYr7A==
X-Proofpoint-GUID: LOxISJ0b3SChMBiHtcQTCGcZHgudbvZT
X-Authority-Analysis: v=2.4 cv=IcG3n2qa c=1 sm=1 tr=0 ts=69e79f82 cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=-GMv20tOWX2ILgXXLssA:9 a=CjuIK1q_8ugA:10
 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-ORIG-GUID: LOxISJ0b3SChMBiHtcQTCGcZHgudbvZT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0 adultscore=0
 spamscore=0 malwarescore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604210159
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
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:jyri.sarha@iki.fi,m:tomi.valkeinen@ideasonboard.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:contact@emersion.fr,m:harry.wentland@amd.com,m:mwen@igalia.com,m:sebastian.wick@redhat.com,m:alex.hung@amd.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:wens@kernel.org,m:samuel@sholland.org,m:dave.stevenson@raspberrypi.com,m:mcanal@igalia.com,m:kernel-list@raspberrypi.com,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniels@collabora.com,m:intel-xe@lists.freedesktop.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:jernejskrabec@gmail.com,s:lists@lf
 dr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,lwn.net,linuxfoundation.org,iki.fi,ideasonboard.com,intel.com,linaro.org,kernel.org,kwiboo.se,emersion.fr,amd.com,igalia.com,redhat.com,ursulin.net,sholland.org,raspberrypi.com,lists.freedesktop.org,vger.kernel.org,collabora.com,lists.infradead.org,lists.linux.dev];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email]
X-Rspamd-Queue-Id: CDEF343D15C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 05:27:21PM +0100, Maxime Ripard wrote:
> drm_mode_config_reset() can be used to create the initial state, but
> also to return to the initial state, when doing a suspend/resume cycle
> for example.
> 
> It also affects both the software and the hardware, and drivers can
> choose to reset the hardware as well. Most will just create an empty
> state and the synchronisation between hardware and software states will
> effectively be done when the first commit is done.
> 
> That dual role can be harmful, since some objects do need to be
> initialized but also need to be preserved across a suspend/resume cycle.
> drm_private_obj are such objects for example.
> 
> Thus, let's create another helper for drivers to call to initialize
> their state when the driver is loaded, so we can make
> drm_mode_config_reset() only about handling suspend/resume and similar.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_atomic.c      | 12 +++++-
>  drivers/gpu/drm/drm_mode_config.c | 87 +++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_mode_config.h     |  1 +
>  3 files changed, 98 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
