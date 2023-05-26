Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9389E712B06
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EC3610E1D5;
	Fri, 26 May 2023 16:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C4D510E81A
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119781; x=1716655781;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sKTixdgZoVG7kR6gpmn6/TdITvc8x8l/hwx0g4QeO8s=;
 b=QQ7PxBDw9WYPyjGJzXNB/Kg5rQ88nDjmghStrJXnWN1eqlTZFcX8ZNhZ
 ahvbTNxrKQN9A4qqtDAgJdiLNXLz7eDhfElOzKv4Qn84t1omfVC1/MZk4
 oKZHaPF6aCsIGINTLSSVoJpncMv1SUdA9/9scHmLK2ZCblzYeLGETmnBV
 /FMMAEHWYWTC/b6zXiuipGOBfhZoNjweU956vYi17M4TGQ6daLxJF0gpt
 0ryLG8BcdLQtNTggJ0TI+yi1/U0Bwu4kAvdzmAzBJ3vQwgyg37XF++wlE
 Ga6PTggULqR03GOriGGjLtAA/wmh3l2W7m/3rH99ov9kF4pEbcfQ9dqNR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="353089035"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="353089035"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:49:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="736058562"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="736058562"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 26 May 2023 09:49:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 May 2023 19:49:37 +0300
Date: Fri, 26 May 2023 19:49:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZHDjIbKT8-X5m5VW@intel.com>
References: <cover.1685119006.git.jani.nikula@intel.com>
 <0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0988d237e56c56568f035053da8e2e2308a17d3a.1685119007.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915/plane: warn on non-zero
 plane offset
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 26, 2023 at 07:37:54PM +0300, Jani Nikula wrote:
> We assume the plane offset is 0. Warn if it's not. This also fixes a
> warn on unused but set variable offset.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c          | 2 ++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 616654adbfb8..b52a681ca85e 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -1037,6 +1037,8 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
>  	}
>  	plane_config->base = base;
>  
> +	drm_WARN_ON(&dev_priv->drm, offset != 0);
> +

The gen2/3 codepath doesn't appear to initialize offset at all.

With that fixed this is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	val = intel_de_read(dev_priv, PIPESRC(pipe));
>  	fb->width = REG_FIELD_GET(PIPESRC_WIDTH_MASK, val) + 1;
>  	fb->height = REG_FIELD_GET(PIPESRC_HEIGHT_MASK, val) + 1;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 36070d86550f..6b01a0b68b97 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2529,6 +2529,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>  	plane_config->base = base;
>  
>  	offset = intel_de_read(dev_priv, PLANE_OFFSET(pipe, plane_id));
> +	drm_WARN_ON(&dev_priv->drm, offset != 0);
>  
>  	val = intel_de_read(dev_priv, PLANE_SIZE(pipe, plane_id));
>  	fb->height = REG_FIELD_GET(PLANE_HEIGHT_MASK, val) + 1;
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
