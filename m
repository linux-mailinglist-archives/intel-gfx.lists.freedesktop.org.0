Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E77B96376D8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 11:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31ABC10E04F;
	Thu, 24 Nov 2022 10:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EB210E04F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Nov 2022 10:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669287177; x=1700823177;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8OCdXL8kvBnnCVhkHvMtPMzI7zSGMFwzHMNF94eBMRM=;
 b=ItMy6qG9NIefyCWb02iQxi0tD18wBNoTjisoHH0NAxfr6XT/bUILiG20
 Xo7MPYtmTMBuUTQgwDzkbmG9GokjSYvjLW+O94UpdVtVAHOZtfAnxhGTU
 JfqWmO5mY5VTiyK1iWN3ABWBfFVk9c0UyWXlFKyXDOLOK2KwcMnZ2hJiG
 Y2boLMSQacD7SVbLXhzTRAv481VCZCqlX95sM+KjdkCoXwVQ/48iRk8ea
 e+HD6qrynDrvrBxfLBV6Ntk+B7HtKEH5vu6afdXrAMKrf44tUKoWBaouy
 a9RpTOpybAmMQgADVTP+/ZkgoqgTXed3Ip+STL47rQ4I4vTagGLdLdqfu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="314310924"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="314310924"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 02:52:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="619982971"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="619982971"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 24 Nov 2022 02:52:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Nov 2022 12:52:53 +0200
Date: Thu, 24 Nov 2022 12:52:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y39NBXNDDwwq4sKj@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
 <6d9653c249d4a863b4bec71b66ddb5718dd3c8c3.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6d9653c249d4a863b4bec71b66ddb5718dd3c8c3.1669238194.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915/fbc: switch to intel_de_*
 register accessors in display code
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

On Wed, Nov 23, 2022 at 11:18:25PM +0200, Jani Nikula wrote:
> Avoid direct uncore use in display code. Use the new
> intel_de_rewrite_fw().
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b5ee5ea0d010..6066ac412e6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -323,10 +323,7 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
>  	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
>  	struct drm_i915_private *dev_priv = fbc->i915;
>  
> -	spin_lock_irq(&dev_priv->uncore.lock);
> -	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
> -			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
> -	spin_unlock_irq(&dev_priv->uncore.lock);
> +	intel_de_rewrite_fw(dev_priv, DSPADDR(i9xx_plane));

intel_de_rewrite_fw() seems to imply some kind of atomicicity guarantee
here. But that entirely depends on whether the other writers of this
register also protect it with unore.lock. So just a misleading illusion.

That said, this locking stuff shouldn't even be needed since 
commit de5bd083d247 ("drm/i915/fbc: Skip nuke when flip is pending")
commit 7cfd1a18c5f9 ("drm/i915: Remove remaining locks from i9xx plane udpates")

>  }
>  
>  static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
> @@ -359,10 +356,7 @@ static void i965_fbc_nuke(struct intel_fbc *fbc)
>  	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
>  	struct drm_i915_private *dev_priv = fbc->i915;
>  
> -	spin_lock_irq(&dev_priv->uncore.lock);
> -	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
> -			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
> -	spin_unlock_irq(&dev_priv->uncore.lock);
> +	intel_de_rewrite_fw(dev_priv, DSPSURF(i9xx_plane));
>  }
>  
>  static const struct intel_fbc_funcs i965_fbc_funcs = {
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
