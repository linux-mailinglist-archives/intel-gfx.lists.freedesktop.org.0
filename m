Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7CE59C4BC
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 19:10:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F479A0E7;
	Mon, 22 Aug 2022 17:10:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C31A99FE5;
 Mon, 22 Aug 2022 17:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661188243; x=1692724243;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ssvWBLCDZnP/yihlltXm5kmReTEeHrCSeXL9CJXGLSE=;
 b=cmwS8XRzb9wv/clAfg2+Q03DlRXQesO8MWcCzLM1682UZs/xx8a4HPfG
 +nw3nsBHHyLw99N5beTayLnDTHAWHcqYFoYgAWvrEgDcesCf6uCj/mYvs
 sp6JGp/HwdlrSTAEKEj8znH2/SCVPwiN4LwWzCnn+5rxlF4GQBCLK1NZi
 nEpITB0SPnHv7orUntPPpe/EyUPuBv7cDyez9uEFPRNmbFDBgaPOFUoht
 BpHWq6GLjyaC6P71XgF0x/a4xvebSRs0XcnS4i2w8TXoPOkurhE+FHNrt
 Q8dnlffMmFHENvvxGFWjuWOKAR7uJx607e4c4zFipZ4h5bO0EUBX1I9Kx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="276500768"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="276500768"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 10:10:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="605368410"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 10:10:40 -0700
Date: Mon, 22 Aug 2022 20:10:36 +0300
From: Imre Deak <imre.deak@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YwO4jPxVwHNJRphW@ideak-desk.fi.intel.com>
References: <20220722125143.1604709-1-andrzej.hajda@intel.com>
 <20220722125143.1604709-3-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220722125143.1604709-3-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 2/4] drm/i915/fbdev: suspend HPD before
 fbdev unregistration
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 22, 2022 at 02:51:41PM +0200, Andrzej Hajda wrote:
> HPD event after fbdev unregistration can cause registration of deferred
> fbdev which will not be unregistered later, causing use-after-free.
> To avoid it HPD handling should be suspended before fbdev unregistration.
> 
> It should fix following GPF:
> [272.634530] general protection fault, probably for non-canonical address 0x6b6b6b6b6b6b6b6b: 0000 [#1] PREEMPT SMP NOPTI
> [272.634536] CPU: 0 PID: 6030 Comm: i915_selftest Tainted: G     U            5.18.0-rc5-CI_DRM_11603-g12dccf4f5eef+ #1
> [272.634541] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.2397.A01.2109300731 09/30/2021
> [272.634545] RIP: 0010:fb_do_apertures_overlap.part.14+0x26/0x60
> ...
> [272.634582] Call Trace:
> [272.634583]  <TASK>
> [272.634585]  do_remove_conflicting_framebuffers+0x59/0xa0
> [272.634589]  remove_conflicting_framebuffers+0x2d/0xc0
> [272.634592]  remove_conflicting_pci_framebuffers+0xc8/0x110
> [272.634595]  drm_aperture_remove_conflicting_pci_framebuffers+0x52/0x70
> [272.634604]  i915_driver_probe+0x63a/0xdd0 [i915]
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5329
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5510
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 221336178991f0..94ddc0f34fde64 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -573,7 +573,8 @@ void intel_fbdev_unregister(struct drm_i915_private *dev_priv)
>  	if (!ifbdev)
>  		return;
>  
> -	cancel_work_sync(&dev_priv->fbdev_suspend_work);
> +	intel_fbdev_set_suspend(&dev_priv->drm, FBINFO_STATE_SUSPENDED, true);
> +
>  	if (!current_is_async())
>  		intel_fbdev_sync(ifbdev);
>  
> @@ -618,7 +619,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
>  	struct fb_info *info;
>  
>  	if (!ifbdev || !ifbdev->vma)
> -		return;
> +		goto unlock;

goto set_suspend; 

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  
>  	info = ifbdev->helper.fbdev;
>  
> @@ -661,6 +662,7 @@ void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous
>  	drm_fb_helper_set_suspend(&ifbdev->helper, state);
>  	console_unlock();
>  
> +unlock:
>  	intel_fbdev_hpd_set_suspend(dev_priv, state);
>  }
>  
> -- 
> 2.25.1
> 
