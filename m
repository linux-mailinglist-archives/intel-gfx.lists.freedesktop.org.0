Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77464645D16
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 15:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5570110E3C5;
	Wed,  7 Dec 2022 14:59:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964EB10E3C5
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 14:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670425145; x=1701961145;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0EHl48tbtJLo1JLKONL3RhVTZvBnKsQ7gfmsJcPiijc=;
 b=E3f9G4UsTkt/fvMJCsUq+qPXFKocKyNX9brLxkgBacC+dFDniIUxORpo
 qxLxGDSpNUdMVMVkwgcRgSAA31CxPrKjOehsuPU5BHIFnMJ9zyAvAgWEz
 oKLm/UDoOX2MW4i0PC4lu/X6QlgTe2YXP+dFP2jpAjbJ3UjIqQy3GTrMf
 ryfnu7tuuY3SSRbm96AmcfgHeg7daLVAF8UHrS1KOJjMERr4mElnPm9EO
 yHQfvrpgAul5IE241wDCcs2KzyhAJzURxzRltjEByTQD+GD1QQTYwuKiE
 uBP7O7UdjMBGI3rjrKi59b8dysVDzIW2E4lvpW+XGDMfHH7DCRKf8aBbs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="379074367"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="379074367"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 06:59:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="646630266"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="646630266"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 07 Dec 2022 06:59:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Dec 2022 16:59:01 +0200
Date: Wed, 7 Dec 2022 16:59:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y5CqNYDoSWVwO8HN@intel.com>
References: <20221205122918.3092092-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221205122918.3092092-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: drop uncore locking around
 i8xx/i965 fbc nuke
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

On Mon, Dec 05, 2022 at 02:29:18PM +0200, Jani Nikula wrote:
> The locking should not be needed after commits de5bd083d247
> ("drm/i915/fbc: Skip nuke when flip is pending") and 7cfd1a18c5f9
> ("drm/i915: Remove remaining locks from i9xx plane udpates").
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b5ee5ea0d010..deba0c49c827 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -323,10 +323,8 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
>  	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
>  	struct drm_i915_private *dev_priv = fbc->i915;
>  
> -	spin_lock_irq(&dev_priv->uncore.lock);
>  	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
>  			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
> -	spin_unlock_irq(&dev_priv->uncore.lock);
>  }
>  
>  static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
> @@ -359,10 +357,8 @@ static void i965_fbc_nuke(struct intel_fbc *fbc)
>  	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
>  	struct drm_i915_private *dev_priv = fbc->i915;
>  
> -	spin_lock_irq(&dev_priv->uncore.lock);
>  	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
>  			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
> -	spin_unlock_irq(&dev_priv->uncore.lock);
>  }
>  
>  static const struct intel_fbc_funcs i965_fbc_funcs = {
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
