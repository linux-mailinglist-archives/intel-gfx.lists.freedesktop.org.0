Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E0152BBEB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 16:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA38710E9E3;
	Wed, 18 May 2022 14:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24AD610E35F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652883353; x=1684419353;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6bQo/M8s98Xr2Z1YvKKIilhWxFLEwJ6QT/JHRUvxNgw=;
 b=h8xYQpM0lI0Ail3ZzOPLYSmNAxNd7X2PQ1efoyKMhygGzLh+4gWIu86V
 y6OuB3m741wfrL4AG248F4hguxvrTwlQ0Cajj4MIHXK8pfjNL0rZoM9Ne
 Iij/ks2hg6UfKpQHke4dlKEaZTDmKaCxYAnop46TplrLpZqPcws8XUI7m
 R55Rg+chmzCmhTKdbfPJCaKO4Quv9mnEGSqTdWzHj76yvW6GK1nvf0UoL
 d3M+J4GRQXskiS1JJ31rbmy1dWNQuByoF+NMnxjvpqHha9C5LW2YTt++/
 CLQ12H6yyLj+VtT4krc9eHzKSekJMiGaMRQZPE1vLAFiJOlFEO7DFyDpw w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="252210505"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="252210505"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 07:15:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="597815211"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 18 May 2022 07:15:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 May 2022 17:15:39 +0300
Date: Wed, 18 May 2022 17:15:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <YoT/iw8w06n+ITP4@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
 <20220518130716.10936-8-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220518130716.10936-8-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/rpm: Enable D3Cold VRAM SR
 Support
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 18, 2022 at 06:37:16PM +0530, Anshuman Gupta wrote:
> Intel Client DGFX card supports D3Cold with two option.
> D3Cold-off zero watt, D3Cold-VRAM Self Refresh.
> 
> i915 requires to evict the lmem objects to smem in order to
> support D3Cold-Off, which increases i915 the suspend/resume
> latency. Enabling VRAM Self Refresh feature optimize the
> latency with additional power cost which required to retain
> the lmem.
> 
> Adding intel_runtime_idle (runtime_idle callback) to enable
> VRAM_SR, it will be used for policy to choose
> between D3Cold-off vs D3Cold-VRAM_SR.
> 
> Since we have introduced i915 runtime_idle callback.
> It need to be warranted that Runtime PM Core invokes runtime_idle
> callback when runtime usages count becomes zero. That requires
> to use pm_runtime_put instead of pm_runtime_put_autosuspend.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c      | 26 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_runtime_pm.c |  3 +--
>  2 files changed, 27 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 5a9d5529fc90..bbb11c632799 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1541,6 +1541,31 @@ static int i915_pm_restore(struct device *kdev)
>  	return i915_pm_resume(kdev);
>  }
>  
> +static int intel_runtime_idle(struct device *kdev)
> +{
> +	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
> +	int ret = 1;
> +
> +	if (!HAS_LMEM_SR(dev_priv)) {
> +		/*TODO: Prepare for D3Cold-Off */
> +		goto out;
> +	}
> +
> +	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> +
> +	ret = intel_pm_vram_sr(dev_priv, true)

I don't get why this idle callback is here. Why aren't you just
calling that directly from the suspend handler?

> +	if (!ret)
> +		drm_dbg(&dev_priv->drm, "VRAM Self Refresh enabled\n");
> +
> +	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> +
> +out:
> +	pm_runtime_mark_last_busy(kdev);
> +	pm_runtime_autosuspend(kdev);
> +
> +	return ret;
> +}
> +
>  static int intel_runtime_suspend(struct device *kdev)
>  {
>  	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
> @@ -1726,6 +1751,7 @@ const struct dev_pm_ops i915_pm_ops = {
>  	.restore = i915_pm_restore,
>  
>  	/* S0ix (via runtime suspend) event handlers */
> +	.runtime_idle = intel_runtime_idle,
>  	.runtime_suspend = intel_runtime_suspend,
>  	.runtime_resume = intel_runtime_resume,
>  };
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 6ed5786bcd29..4dade7e8a795 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -492,8 +492,7 @@ static void __intel_runtime_pm_put(struct intel_runtime_pm *rpm,
>  
>  	intel_runtime_pm_release(rpm, wakelock);
>  
> -	pm_runtime_mark_last_busy(kdev);
> -	pm_runtime_put_autosuspend(kdev);
> +	pm_runtime_put(kdev);
>  }
>  
>  /**
> -- 
> 2.26.2

-- 
Ville Syrjälä
Intel
