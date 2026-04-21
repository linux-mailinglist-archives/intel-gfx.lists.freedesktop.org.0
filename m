Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cdnWJ8ec52ml+QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:50:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD7843CEFD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 17:50:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 962B210E8D6;
	Tue, 21 Apr 2026 15:50:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.b="oK9RP7f8";
	dkim=pass (2048-bit key; unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R5l1U1xn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com
 [205.220.168.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D830E10E8C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:50:28 +0000 (UTC)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
 by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 63LCtPSb1538502
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:50:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
 cc:content-type:date:from:in-reply-to:message-id:mime-version
 :references:subject:to; s=qcppdkim1; bh=Hto5MsLIcmZUVCfT6iG1LCNf
 XNnKxNxx4T+khh9MBY0=; b=oK9RP7f8lu1aYiEjyHk0aEqVOStaTYP8ae8V/J7A
 fzg+ethVOI9SKF2wkvXHoNExyOeQHiKBw03ubwQ0ZkxOuxchLGZaDFZD/6eke1ER
 lWh045Gz8CLO1BgAQernTvNiezf//bRho1r23hw7uvbfJWka/ZD7lTQ/l3Nk+3K5
 fsBJ9vLY6luVvAD3o3j6arPyJnsZmRPdwdM1yA4Bxa88vQleeuL8u+64rbv8TAog
 uyjMUw9MZx7XXEO7S+8paqmukDnwv6a9YWK9iQ13GwdEeWKUjB9WG2TjV/FvCe1T
 jdultxl8/v+ktl/VbRYH0wCB+VxraY7Tog1iwrufH9q4DA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200])
 by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dp4hahx2q-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 15:50:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id
 d75a77b69052e-50d812c898cso119614221cf.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 08:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oss.qualcomm.com; s=google; t=1776786627; x=1777391427;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Hto5MsLIcmZUVCfT6iG1LCNfXNnKxNxx4T+khh9MBY0=;
 b=R5l1U1xnd6w2NlPLC5rj+1KR396hpHO8wn2fnrPLhYjX1OmnE/NC/nxdKK+8uObIwP
 4bfULGkblmtu0pJYxNlTShU0euwglYGy0oPU267unfhGeYHuZl0aS89sfgDgJBhiT0y3
 cHZErXIDCuMQUrJVC6hdFBZ/9gZfclEOipVadb1LfvT0ZmYmhsC7hZiJI2dCr8cPj4Xg
 vTAS+3m1KAieb6v/od4xim+G8eYps5juLDgndKenCnlHCKtgooFo/o2PRFlktX70+II4
 ThXEYc3BqNWSoo4rU9D+kghWx9SLbXltuDpg0sbZytfvk3Pyz6oeIYpgYkyIvyWV+tm5
 F2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776786627; x=1777391427;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Hto5MsLIcmZUVCfT6iG1LCNfXNnKxNxx4T+khh9MBY0=;
 b=TcvuYYMqvS7+e6sxDZ0Qb8zR7U+g6DheLhOwgjDum6gaRgdbkGKlfrCj4464LXzeQt
 oU5sFd80hVx+RUHxzdQByGa/XfY6EYy4WQS2eVPsq3n8FdeuwFr96PiWTYP7yhPasDS7
 UCX9LsDx9c6nnY8+Qf5UJvkRAYjQS4D+43rOA5l12EnZxx3ABNP8B0ZKRA4TPqnK47xf
 rmntfGO5AZp/o4WPGk7YxlqTmM6Ec5SwrPhDzEmXFuLKeEtOe+iiLtFdh1sE9biNp2xP
 HDKFpQjwDLF7oLVC1ZuSFxhhoHDaCIf+ampjg0gKkwqNuyI63SmhF3Ga9Vfyjv5v3xbM
 sBGw==
X-Forwarded-Encrypted: i=1;
 AFNElJ8GAiPOeCKpxUVCkWuu2bNW61wblUJ8kS1ddeePAFp2nQ8ae5y7yQ1LCPKPX6ad2yUL7B3j3N7/NHM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyoh4r5oRUq7/nuxfFs24UugaxMwRrKE5Whb6B58aF5PMRdMTZz
 RDZlzT+k4NpbQOhLBquyzqlkQjjlwzka+2ifLYxKQmRQ2zkx4Z8/4EhOY3ZgpEvgT95a2FejOhv
 I5p/Pe3aTJJGlxn/Zdpmpq8BMsvB2AMD1nxr54Nz5Vp8x1L69KBDbMxX6GLd0pEBA8KOivZQ=
X-Gm-Gg: AeBDiesb4HAvT9I+A8+NL6FAdFNp258SoJNr9zgJrsCqwmB0AJ2iHN0vUbvuTdWqubZ
 ggPfWG3PzKH0c8O0lrx1YOfAc0SczlAgqzysevHek1dThEzaWxLQIatYDYlChNq7E/2Cf4U9eIP
 ZzbJVkLw6k8WCbUDFG8mE+hwfDGzpcxMsPhbCb4qEi/kBJWKEA0yBOcXVgeDhu76ZRBs8fnh7yt
 +8FcwWs6bKRGKwce2FgnVk13Cp1exIN3LbyN2YdTgDGCXQOyDbttlIVwLtN7ySs8CgfvoQAp2eV
 Z+3+8QlwzYS8NRoQ8mevG73JmloyWzjAo1FTKeDRPwL1uq37tACK65CA3iR3dZjmv0kB6gtOdJ3
 ksPjC3JsXPqolJN1ToAqb/KvG0r4vKKbPe+fQmNfpGoCcaGJ4ovJiWkulS2Ys89T0asWMVGOPUB
 OULSAz4o8+yJvAuEhltHxorWAJBlHfuO0u5+MUDR2d081mqA==
X-Received: by 2002:a05:622a:5c1b:b0:50d:a71d:810d with SMTP id
 d75a77b69052e-50e36e9c5bdmr268930001cf.28.1776786627065; 
 Tue, 21 Apr 2026 08:50:27 -0700 (PDT)
X-Received: by 2002:a05:622a:5c1b:b0:50d:a71d:810d with SMTP id
 d75a77b69052e-50e36e9c5bdmr268929381cf.28.1776786626578; 
 Tue, 21 Apr 2026 08:50:26 -0700 (PDT)
Received: from umbar.lan
 (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi.
 [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-5a4185ad11fsm3739915e87.14.2026.04.21.08.50.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2026 08:50:25 -0700 (PDT)
Date: Tue, 21 Apr 2026 18:50:23 +0300
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
Subject: Re: [PATCH v2 11/20] drm/atomic-state-helper: Rename
 __drm_atomic_helper_connector_state_reset()
Message-ID: <ogjitbayzgefsouxgwhjia4vzmmpfagupddmmoxokvdscjouqo@dyaz5v7c4lyh>
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
 <20260320-drm-mode-config-init-v2-11-c63f1134e76c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260320-drm-mode-config-init-v2-11-c63f1134e76c@kernel.org>
X-Authority-Analysis: v=2.4 cv=bOQm5v+Z c=1 sm=1 tr=0 ts=69e79cc4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=P1BnusSwAAAA:8
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fOc9-Nj7kuNS0fQUIscA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=D0XLA9XvdZm18NrgonBM:22
X-Proofpoint-GUID: _8ntAQ8r8nUr9HZgdC0WO-BpN8RKcqGX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIxMDE1NyBTYWx0ZWRfX7QvTaumMXGd+
 2pv6sgtAdb2LR/qbWzSb99V84MX203emp7NmZU/9CvvRH9Oxs3T/ntmPKsRnhgd4AyovQ1odb+V
 yS01wKog42QL4i3lbTdE+iqYLVoScTI6VD6/VGbuGa0ZW/DzlMd3/q9PYrJt1NOMJqbmOETEerm
 piUeNvarYVr4uXgKqXdnMkvhDXbJgddvQpRZJtyPs9Fue96VTyu+sRu7MNPp7qb6PGLIcaiGgT6
 V0s9J3UBaFh1aioSA43uO40um0+HD9xUdB96NLDB1GxHOgqMPaudl0VADf+4cY3xz4vGL8O97la
 J9tg6DuH8yyN5WtsqD2X5BlsmcIa/xlNkD5vkjR8ZmoMCH8uNgpYJqabMxxeUp+81B0cjlrIuki
 BeucJ1T3b52NsT9WUGlTY6gaS+6j544/nqgNEDBYFWscVVqAL6dmwrUIYtAil3LQe9UIfLJi6ZF
 cKRLI8F1mlNvqrKRdHg==
X-Proofpoint-ORIG-GUID: _8ntAQ8r8nUr9HZgdC0WO-BpN8RKcqGX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604070000 definitions=main-2604210157
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideasonboard.com:email,qualcomm.com:dkim,qualcomm.com:email]
X-Rspamd-Queue-Id: 1CD7843CEFD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 05:27:18PM +0100, Maxime Ripard wrote:
> __drm_atomic_helper_connector_state_reset() is used to initialize a
> newly allocated drm_connector_state, and is being typically called by
> the drm_connector_funcs.reset implementation.
> 
> Since we want to consolidate DRM objects state allocation around the
> atomic_create_state callback that will only allocate and initialize a
> new drm_connector_state instance, we will need to call
> __drm_atomic_helper_connector_state_reset() from both the reset and
> atomic_create hooks.
> 
> To avoid any confusion, we can thus rename
> __drm_atomic_helper_connector_state_reset() to
> __drm_atomic_helper_connector_state_init().
> 
> Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/drm_atomic_state_helper.c | 10 +++++-----
>  include/drm/drm_atomic_state_helper.h     |  2 +-
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry
