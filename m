Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG/RLPrEt2m1VAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 09:53:14 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FC72967C5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 09:53:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF6E610E379;
	Mon, 16 Mar 2026 08:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J9dZvd++";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7950610E372;
 Mon, 16 Mar 2026 08:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773651191; x=1805187191;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=PI/mAYTBRcU4Lz4+ZDh76VUhW4ibWpPBttE/6cvygZQ=;
 b=J9dZvd++TIebHJ+eUE9x2UeLKTz1Br5cRi2xOHadbR1MjV+ZZAjIupps
 WK/nx/63RhxuGEBtJeaLh7OGBsnvasZStfPrOAMRYlCwAGUvDG7wQdyKn
 EYit7vuP2Kfjxzjyln0tOvUj5s44VqjOHckpr2KCbkIffoVg4t7abhERp
 +CeBdRy9EidwuezAn91C0ZZj+2PR7sJzSiQ6c6C9zvdAD5Opbq2BteYSe
 d/Y4grqq2/k8iPkCPQ4v5uc7hPlaz+Ds2SKWbPOV2sn1DMGeluqT+EXrq
 ha8s0Eh+MW+1N911OKSTyG3t8tJ1AhVmooucDP9s+S0McwooaOmPBZW/7 Q==;
X-CSE-ConnectionGUID: t69z6jfAQ1GowT1BuRir8A==
X-CSE-MsgGUID: esM36LXnSE6dqoE54y0qoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74697098"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="74697098"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 01:53:10 -0700
X-CSE-ConnectionGUID: lbZZBjlgQ7iKsGNu2li5Ig==
X-CSE-MsgGUID: salQm0erT+KA4U7veGXdBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="222050115"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 01:52:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hou Wenlong <houwenlong.hwl@antgroup.com>, linux-kernel@vger.kernel.org
Cc: Hou Wenlong <houwenlong.hwl@antgroup.com>, Alex Deucher
 <alexander.deucher@amd.com>, Alex Hung <alex.hung@amd.com>, Alvin Lee
 <alvin.lee2@amd.com>, amd-gfx@lists.freedesktop.org, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>,
 Ausef Yousof <auyousof@amd.com>, Bhuvanachandra Pinninti
 <bpinnint@amd.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>, Charlene Liu <charlene.liu@amd.com>,
 Chenyu Chen <chen-yu.chen@amd.com>, Chris Park <chris.park@amd.com>,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
 <airlied@gmail.com>, Dillon Varone <dillon.varone@amd.com>, Dmytro
 Laktyushkin <dmytro.laktyushkin@amd.com>, dri-devel@lists.freedesktop.org,
 Gustavo Sousa <gustavo.sousa@intel.com>, Harold Sun <Harold.Sun@amd.com>,
 Harry Wentland <harry.wentland@amd.com>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Jun Lei
 <jun.lei@amd.com>, Karthi Kandasamy <karthi.kandasamy@amd.com>, Leo Chen
 <leo.chen@amd.com>, Leo Li <sunpeng.li@amd.com>, Lohita Mudimela
 <lohita.mudimela@amd.com>, Lucas De Marchi <demarchi@kernel.org>,
 Meenakshikumar Somasundaram <meenakshikumar.somasundaram@amd.com>,
 Nicholas Carbones <Nicholas.Carbones@amd.com>, Ray Wu <ray.wu@amd.com>,
 Relja Vojvodic <rvojvodi@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ryan Seto <ryanseto@amd.com>,
 Samson Tam <Samson.Tam@amd.com>, Simona Vetter <simona@ffwll.ch>, Timur
 =?utf-8?Q?Krist=C3=B3f?= <timur.kristof@gmail.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>,
 Wayne Lin <wayne.lin@amd.com>, Wenjing Liu <wenjing.liu@amd.com>, Yan Li
 <yan.li@amd.com>, Zhenyu Wang <zhenyuw.linux@gmail.com>, Zhi Wang
 <zhi.wang.linux@gmail.com>
Subject: Re: [PATCH 1/2] drm/i915/gvt: Rename struct 'pixel_format' to
 'gvt_pixel_format'
In-Reply-To: <f5e603648f6733047bbf74a5af6ae4b4436a44f6.1773629419.git.houwenlong.hwl@antgroup.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1773629419.git.houwenlong.hwl@antgroup.com>
 <f5e603648f6733047bbf74a5af6ae4b4436a44f6.1773629419.git.houwenlong.hwl@antgroup.com>
Date: Mon, 16 Mar 2026 10:52:51 +0200
Message-ID: <832d5f67f05edfb9c97694a8f7bada0104d1be67@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[47];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[antgroup.com,amd.com,lists.freedesktop.org,intel.com,gmail.com,linux.intel.com,kernel.org,igalia.com,ffwll.ch,ursulin.net];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 64FC72967C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 16 Mar 2026, Hou Wenlong <houwenlong.hwl@antgroup.com> wrote:
> Rename the local struct 'pixel_format' to 'gvt_pixel_format' to avoid
> potential name conflicts with the 'pixel_format' struct defined in
> include/video/pixel_format.h.
>
> Signed-off-by: Hou Wenlong <houwenlong.hwl@antgroup.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

and ack for merging via whichever branch you prefer.

> ---
>  drivers/gpu/drm/i915/gvt/fb_decoder.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
> index d7abf38df532..25fffc77f138 100644
> --- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
> +++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
> @@ -48,13 +48,13 @@
>  #include "i915_reg.h"
>  
>  #define PRIMARY_FORMAT_NUM	16
> -struct pixel_format {
> +struct gvt_pixel_format {
>  	int drm_format;	/* Pixel format in DRM definition */
>  	int bpp; /* Bits per pixel, 0 indicates invalid */
>  	const char *desc; /* The description */
>  };
>  
> -static const struct pixel_format bdw_pixel_formats[] = {
> +static const struct gvt_pixel_format bdw_pixel_formats[] = {
>  	{DRM_FORMAT_C8, 8, "8-bit Indexed"},
>  	{DRM_FORMAT_RGB565, 16, "16-bit BGRX (5:6:5 MSB-R:G:B)"},
>  	{DRM_FORMAT_XRGB8888, 32, "32-bit BGRX (8:8:8:8 MSB-X:R:G:B)"},
> @@ -67,7 +67,7 @@ static const struct pixel_format bdw_pixel_formats[] = {
>  	{}
>  };
>  
> -static const struct pixel_format skl_pixel_formats[] = {
> +static const struct gvt_pixel_format skl_pixel_formats[] = {
>  	{DRM_FORMAT_YUYV, 16, "16-bit packed YUYV (8:8:8:8 MSB-V:Y2:U:Y1)"},
>  	{DRM_FORMAT_UYVY, 16, "16-bit packed UYVY (8:8:8:8 MSB-Y2:V:Y1:U)"},
>  	{DRM_FORMAT_YVYU, 16, "16-bit packed YVYU (8:8:8:8 MSB-U:Y2:V:Y1)"},

-- 
Jani Nikula, Intel
