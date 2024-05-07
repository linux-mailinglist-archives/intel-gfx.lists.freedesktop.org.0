Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6381F8BE847
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 18:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B1510F0E7;
	Tue,  7 May 2024 16:08:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YVlotvnr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D633710E914;
 Tue,  7 May 2024 16:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715098081; x=1746634081;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2w4dI/w1wBDQbAaLfx5WiSK9Dzz9FqkqCxA4Fyl7JzQ=;
 b=YVlotvnrUOLNv9MOYU7bvuuv6bzz3YshiveOCuOKmy9t8hZODn1DnEDC
 Eqw8Esh4g4TLKBDJibxkfrfCIpJaZwfOWuYUwGBA9uXEf45pO8494YoMo
 uQv18oQ3fPE+k8Z8RgjhKL0VCrSFoi3LUNBcLZvOMyC32QivsXhy1Lex3
 OJ0CKf8JnTIfZt3O32bT3wZfZot6K0ZxvjdBJPI3LWuy07U67zvsaL4yw
 RjssaVNvxsXC0iKMB69XS783j0ep3mJQRUnEObW8y4lxJdhW4E8udEiLH
 h+w9nrizDNNLvWUT38hBNg2WO8inFy7Gk8/7XmblmFsYrcU7ClgJeA9GP g==;
X-CSE-ConnectionGUID: RJO9211cSgiuvDNBsgnNHw==
X-CSE-MsgGUID: a5QtzTxJRD+PMt2bBF2HWw==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="14693910"
X-IronPort-AV: E=Sophos;i="6.08,142,1712646000"; d="scan'208";a="14693910"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 09:08:00 -0700
X-CSE-ConnectionGUID: 0SiPiUnYQ12S9hFDNX2gjg==
X-CSE-MsgGUID: vZ85WMUpQciF9t3jhW1IkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,142,1712646000"; d="scan'208";a="28547778"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 May 2024 09:07:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 May 2024 19:07:55 +0300
Date: Tue, 7 May 2024 19:07:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 "Mathew, Alwin" <alwin.mathew@intel.com>,
 "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: Re: [RFC PATCH 2/3] drm/xe/display: allow creation of case
 I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer
Message-ID: <ZjpR203p3wcy8yW0@intel.com>
References: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
 <20240506185238.364539-3-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240506185238.364539-3-juhapekka.heikkila@gmail.com>
X-Patchwork-Hint: comment
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

On Mon, May 06, 2024 at 09:52:37PM +0300, Juha-Pekka Heikkila wrote:
> Add I915_FORMAT_MOD_4_TILED_XE2_CCS to possible created tiling for new framebuffer
> on Xe driver.
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> index 9693c56d386b..59adcd15eb31 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -145,6 +145,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  	case I915_FORMAT_MOD_X_TILED:
>  	case I915_FORMAT_MOD_Y_TILED:
>  	case I915_FORMAT_MOD_4_TILED:
> +	case I915_FORMAT_MOD_4_TILED_XE2_CCS:

Are we actually expecting GOP to enable compression?

>  		break;
>  	default:
>  		drm_dbg(&dev_priv->drm,
> -- 
> 2.43.2

-- 
Ville Syrjälä
Intel
