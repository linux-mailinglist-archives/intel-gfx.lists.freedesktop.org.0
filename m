Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D097C6E9B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 131EE10E042;
	Thu, 12 Oct 2023 12:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 512E610E042
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697115449; x=1728651449;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=w1myuBg6U6qriFHRNimU93BHOb/3h4qSdYqPfBB3vS0=;
 b=ZUEyWWIHmfCf8dvU+2kFrtGtqu65GU19vOiw+lsS7zNHPbLc0W7nPWl7
 +sqeSPkwQSe/Bo1KLGjMd70UsKCYByAzegLJlZydsufrR9szMJFjDolKz
 KIfLw98JO3m05c7Qrhi+ATcBMDuRA9G5o1TeigipPLRcbnOy72n6vsdO5
 /6scsbyXejh64Rx+kOpyQZWiMCFJOrSskW+rHESRxujWm3XfqoWz+aVS4
 rkU2Bg8C0cWjM+RWn4mTPUZDkM1SAP2bRa4OZ/zjszOmGVehYqutcg6kz
 XjP1w6TxqP9W2IMhSxDFmNxGoRMah8PB9H2eY6Zc11uxFq8wMbOpIZeyT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="388768990"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="388768990"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844994068"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="844994068"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:57:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:57:25 +0300
Date: Thu, 12 Oct 2023 15:57:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZSftNdJkXaIglJe2@intel.com>
References: <20231011202259.1090131-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231011202259.1090131-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sprite: move sprite_name() to
 intel_sprite.c
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

On Wed, Oct 11, 2023 at 11:22:59PM +0300, Jani Nikula wrote:
> Move sprite_name() where its only user is, and convert it to a function,
> removing the implicit dev_priv usage.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.h | 1 -
>  drivers/gpu/drm/i915/display/intel_sprite.c  | 7 ++++++-
>  2 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 0e5dffe8f018..163469fe67a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -105,7 +105,6 @@ enum i9xx_plane_id {
>  };
>  
>  #define plane_name(p) ((p) + 'A')
> -#define sprite_name(p, s) ((p) * DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[(p)] + (s) + 'A')
>  
>  #define for_each_plane_id_on_crtc(__crtc, __p) \
>  	for ((__p) = PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 1fb16510f750..d7b440c8caef 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -48,6 +48,11 @@
>  #include "intel_frontbuffer.h"
>  #include "intel_sprite.h"
>  
> +static char sprite_name(struct drm_i915_private *i915, enum pipe pipe, int sprite)
> +{
> +	return pipe * DISPLAY_RUNTIME_INFO(i915)->num_sprites[pipe] + sprite + 'A';
> +}
> +
>  static void i9xx_plane_linear_gamma(u16 gamma[8])
>  {
>  	/* The points are not evenly spaced. */
> @@ -1636,7 +1641,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
>  				       0, plane_funcs,
>  				       formats, num_formats, modifiers,
>  				       DRM_PLANE_TYPE_OVERLAY,
> -				       "sprite %c", sprite_name(pipe, sprite));
> +				       "sprite %c", sprite_name(dev_priv, pipe, sprite));
>  	kfree(modifiers);
>  
>  	if (ret)
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
