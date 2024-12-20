Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F109F8F0E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 10:34:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7097610EF5A;
	Fri, 20 Dec 2024 09:34:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YzD8Hs78";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 707BA10EF50;
 Fri, 20 Dec 2024 09:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734687290; x=1766223290;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PGpOEXYdIgd6qIE4Cxq9hP0EVpGo2qCV1eY7OaPTJEw=;
 b=YzD8Hs78uFNWi+AcU5xCyqLvc7SH8aXjPvTtANT7lQeCUW2z3seElMg7
 dL6cz2DoXCiNkUx3CqkMgcoRBZAqI/QuYoIpl4hlpnxrC0d+saz4RGBbl
 8GnEuEGBFquSyheHMOuaJhTJJWiSM9g2M9lqyVMWi6KT6X4w9t5nvMBkp
 x8byMqIDxOVWZfW8/ZI5ZQCM5cVyee/tqFpV8ltjrGbPKdoqOgYK9jLmB
 sMu0gjTXol7+nM9eswxIKoyWDbEG698FPpzqe63U+IU1rJPeqMXf7FVDL
 eM2NXKZ+ynphReYqao1d/8/vlwGVl9stiKChNuQ/RxkKgDPOGjF1ccSQl A==;
X-CSE-ConnectionGUID: UuyVFNcRT3eCpttDF9ZF1A==
X-CSE-MsgGUID: 9LJQ4XH2QvqCFrKk5NiMfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45838534"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="45838534"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 01:34:50 -0800
X-CSE-ConnectionGUID: q+vnp7ceS9iN6zKWougkHQ==
X-CSE-MsgGUID: AiWR+cuuTG65IFhUv/G2xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98662967"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Dec 2024 01:34:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2024 11:34:47 +0200
Date: Fri, 20 Dec 2024 11:34:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 05/10] drm/i915/psr: Ensure SFF/CFF bits are not written
 at their sample point
Message-ID: <Z2U6N12oPGh8Anbj@intel.com>
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
 <20241213063528.2759659-6-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241213063528.2759659-6-jouni.hogander@intel.com>
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

On Fri, Dec 13, 2024 at 08:35:23AM +0200, Jouni Högander wrote:
> Bspec says this for SFF/CFF:
> 
> "Hardware samples this bit on the start of every V. Blank Guardband
> region. For deterministic behavior, Software should ensure it is not
> changing this bit around the sample point."
> 
> This can be achieved by using intel_vblank_evade.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index c074de6b6c12..8aa2574ba5c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -26,6 +26,7 @@
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_damage_helper.h>
>  #include <drm/drm_debugfs.h>
> +#include <drm/drm_vblank.h>
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> @@ -44,6 +45,7 @@
>  #include "intel_psr.h"
>  #include "intel_psr_regs.h"
>  #include "intel_snps_phy.h"
> +#include "intel_vblank.h"
>  #include "skl_universal_plane.h"
>  
>  /**
> @@ -3114,16 +3116,31 @@ static void intel_psr_configure_full_frame_update(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> +	struct intel_crtc *crtc = intel_crtc_for_pipe(display, intel_dp->psr.pipe);
> +	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);

You can't use that without proper locking.

> +	struct intel_vblank_evade_ctx evade;
>  
>  	if (!intel_dp->psr.psr2_sel_fetch_enabled)
>  		return;
>  
> +	intel_vblank_evade_init(crtc_state, crtc_state, &evade);
> +
> +	drm_crtc_vblank_get(&crtc->base);
> +
> +	local_irq_disable();
> +
> +	intel_vblank_evade(&evade);
> +
> +	drm_crtc_vblank_put(&crtc->base);
> +
>  	intel_de_write(display,
>  		       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
>  		       man_trk_ctl_enable_bit_get(display) |
>  		       man_trk_ctl_partial_frame_bit_get(display) |
>  		       man_trk_ctl_single_full_frame_bit_get(display) |
>  		       man_trk_ctl_continuos_full_frame(display));
> +
> +	local_irq_enable();
>  }
>  
>  static void _psr_invalidate_handle(struct intel_dp *intel_dp)
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
