Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C91546C94
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 20:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8625112822;
	Fri, 10 Jun 2022 18:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C4E4112822;
 Fri, 10 Jun 2022 18:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654886265; x=1686422265;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mD75dNPSaSWf/BH3Pj6YxvoBXBm7R41OUQXBTcwa0yc=;
 b=O9yNrEAT1/tQSS+MA9EczYq8O6qMBMqn4CvfARevDQ2Fz7m1NCWMaVVP
 5/XNkCq5D2RwNRXoXsObWfqM078r9Tz9GKcOLeNVkuGVA1+akVoO1HRsc
 dYDBkIPla46WWEtj82Nx8JNDePaSZK4gW1l9VXYpyM8PNjFQqW4G793ZF
 gpswikrDHme4dilyau/UsohtBJ1KR75SSMaxBNNA4yVBs0Ck7vMsZCpO8
 KeWg8GaCZ4x9Pb2XA2vUM6t7JYKa0/c8GzmvgoKHairLCvj16ale7ZL4M
 Uy1Y6lxuFqR0+oC2cM68rV0Nb9WeM6VKPmoivU4yMPkI3CjJ2++8N/qDX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="257544473"
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="257544473"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 11:37:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="638263474"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 10 Jun 2022 11:37:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jun 2022 21:37:41 +0300
Date: Fri, 10 Jun 2022 21:37:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YqOPdYtBRLz4aDIp@intel.com>
References: <20220610160024.903701-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220610160024.903701-1-andrzej.hajda@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v7] drm/i915/display: disable HPD workers
 before display driver unregister
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 10, 2022 at 06:00:24PM +0200, Andrzej Hajda wrote:
> Handling HPD during driver removal is pointless, and can cause different
> use-after-free/concurrency issues:
> 1. Setup of deferred fbdev after fbdev unregistration.
> 2. Access to DP-AUX after DP-AUX removal.
> 
> Below stacktraces of both cases observed on CI:
> 
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
> [283.405824] cpu_latency_qos_update_request called for unknown object
> [283.405866] WARNING: CPU: 2 PID: 240 at kernel/power/qos.c:296 cpu_latency_qos_update_request+0x2d/0x100
> [283.405912] CPU: 2 PID: 240 Comm: kworker/u64:9 Not tainted 5.18.0-rc6-Patchwork_103738v3-g1672d1c43e43+ #1
> [283.405915] Hardware name: Intel Corporation Raptor Lake Client Platform/RPL-S ADP-S DDR5 UDIMM CRB, BIOS RPLSFWI1.R00.2397.A01.2109300731 09/30/2021
> [283.405916] Workqueue: i915-dp i915_digport_work_func [i915]
> [283.406020] RIP: 0010:cpu_latency_qos_update_request+0x2d/0x100
> ...
> [283.406040] Call Trace:
> [283.406041]  <TASK>
> [283.406044]  intel_dp_aux_xfer+0x60e/0x8e0 [i915]
> [283.406131]  ? finish_swait+0x80/0x80
> [283.406139]  intel_dp_aux_transfer+0xc5/0x2b0 [i915]
> [283.406218]  drm_dp_dpcd_access+0x79/0x130 [drm_display_helper]
> [283.406227]  drm_dp_dpcd_read+0xe2/0xf0 [drm_display_helper]
> [283.406233]  intel_dp_hpd_pulse+0x134/0x570 [i915]
> [283.406308]  ? __down_killable+0x70/0x140
> [283.406313]  i915_digport_work_func+0xba/0x150 [i915]
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
> Hi All,
> 
> I am not sure about changes in shutdown path, any comments welcome.
> I suspect suspend path have also some common bits, but I am little
> bit afraid of touching it.
> 
> Changes:
> v1 - v6:
>     - chasing the bug appearing only on public CI.
> v7:
>     - shutdown path adjusted (suggested by Jani)
> 
> Regards
> Andrzej
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 ++++-------
>  drivers/gpu/drm/i915/i915_driver.c           |  5 ++---
>  2 files changed, 6 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 186b37925d23f2..f9952ee8289fb2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -10490,13 +10490,6 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
>  	 */
>  	intel_hpd_poll_fini(i915);
>  
> -	/*
> -	 * MST topology needs to be suspended so we don't have any calls to
> -	 * fbdev after it's finalized. MST will be destroyed later as part of
> -	 * drm_mode_config_cleanup()
> -	 */
> -	intel_dp_mst_suspend(i915);
> -
>  	/* poll work can call into fbdev, hence clean that up afterwards */
>  	intel_fbdev_fini(i915);
>  
> @@ -10588,6 +10581,10 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
>  
> +	intel_dp_mst_suspend(i915);
> +	intel_hpd_cancel_work(i915);
> +	drm_kms_helper_poll_disable(&i915->drm);
> +
>  	intel_fbdev_unregister(i915);
>  	intel_audio_deinit(i915);
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d26dcca7e654aa..82cdccf072e2bc 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1070,15 +1070,14 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	i915_gem_suspend(i915);
>  
>  	if (HAS_DISPLAY(i915)) {
> +		intel_dp_mst_suspend(i915);
> +		intel_hpd_cancel_work(i915);
>  		drm_kms_helper_poll_disable(&i915->drm);
>  
>  		drm_atomic_helper_shutdown(&i915->drm);

You can't suspend MST before this since this is what actually turns the
displays off.

The real chicken and egg sitaation is due to MST sideband depending
on HPD_IRQs to work, but we want to stop the rest of hotplug processing
before we shut down the displays to make sure fbdev/etc. doesn't light
them back up. 

If we didn't have MST sidband we could just turn off hotplug interrupts
ahead of time and flush the works, but with MST we need to keep the
interrupts alive. So I suspect we need some kind of flag to indicate
that at least full hotplug handling should not happen even though the
hotplug interrupts are still enabled.


>  	}
>  
> -	intel_dp_mst_suspend(i915);
> -
>  	intel_runtime_pm_disable_interrupts(i915);
> -	intel_hpd_cancel_work(i915);
>  
>  	intel_suspend_encoders(i915);
>  	intel_shutdown_encoders(i915);
> -- 
> 2.25.1

-- 
Ville Syrj�l�
Intel
