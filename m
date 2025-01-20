Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 025BBA16DC7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:50:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 006BB10E419;
	Mon, 20 Jan 2025 13:50:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CyIaESZj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4750810E416;
 Mon, 20 Jan 2025 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737381054; x=1768917054;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wQpcX06Ui/Vxu6cazWeAdqmoeS0HGi1BEWl7mgUrS3c=;
 b=CyIaESZjlxeUNZCksf0+t6VYNGJkK8vb94X0rAmVkft/YPwrvOf6912P
 F7JjPQpeYZPxpQuVOAcqyD2E6Xh6vfhkQyF/fclHgkI2oAJ9U8V7XLvsG
 RhWlhpgeT1sJHPTTSd5CjN1q3e43hKTLDZugf2Tgc6Jbe6KreK+uXBPfy
 0UJmrdqECFbC67kpThXxrgD3E8b4f8stNEd4874RMykw4ukN9bbnjxiUF
 uMIMpsc3hIS/pyOA6yTudP32dkAVRD7nxpagXKmByB5FRY8pKCEu6D3kq
 e9O01x91tyzLFc2SBax1541hUQqTv3q1yP6S1UU90j4I3XKX3k+ZtkiDl g==;
X-CSE-ConnectionGUID: Coztq646QMe4gUf71faYbQ==
X-CSE-MsgGUID: rR6/jKrwSRm4Hk2hI0xGpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="49169623"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="49169623"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:50:54 -0800
X-CSE-ConnectionGUID: ZdG+bMQSQb6t6odE30akQw==
X-CSE-MsgGUID: kBddW7ovQsaW5NMhw3BuyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106464314"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.253])
 ([10.245.244.253])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:50:52 -0800
Message-ID: <87ef6c2e-a5c9-431a-9ea5-3b709e913384@linux.intel.com>
Date: Mon, 20 Jan 2025 14:50:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] drm/i915: Pimp display fault reporting
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
References: <20250116174758.18298-1-ville.syrjala@linux.intel.com>
 <20250116174758.18298-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20250116174758.18298-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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



Den 2025-01-16 kl. 18:47, skrev Ville Syrjala:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Decode the display faults a bit more extensively so that one
> doesn't have translate the bitmask to planes/etc. manually.
> Also for plane faults we can read out a bit of state from the
> relevant plane(s) and dump that out.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   .../gpu/drm/i915/display/intel_atomic_plane.c |   2 +-
>   .../gpu/drm/i915/display/intel_atomic_plane.h |   2 +
>   .../gpu/drm/i915/display/intel_display_irq.c  | 156 +++++++++++++++++-
>   3 files changed, 155 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 612e9b0ec14a..0aeb5f00d9c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -663,7 +663,7 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
>   					       old_plane_state, new_plane_state);
>   }
>   
> -static struct intel_plane *
> +struct intel_plane *
>   intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> index 0f982f452ff3..298bb97b37a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -19,6 +19,8 @@ struct intel_plane;
>   struct intel_plane_state;
>   enum plane_id;
>   
> +struct intel_plane *
> +intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id);
>   unsigned int intel_adjusted_rate(const struct drm_rect *src,
>   				 const struct drm_rect *dst,
>   				 unsigned int rate);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index f06273d9bc8c..1b3b6b8bc794 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -10,6 +10,7 @@
>   #include "i915_irq.h"
>   #include "i915_reg.h"
>   #include "icl_dsi_regs.h"
> +#include "intel_atomic_plane.h"
>   #include "intel_crtc.h"
>   #include "intel_de.h"
>   #include "intel_display_irq.h"
> @@ -26,6 +27,52 @@
>   #include "intel_psr.h"
>   #include "intel_psr_regs.h"
>   
> +struct pipe_fault_handler {
> +	bool (*handle)(struct intel_crtc *crtc, enum plane_id plane_id);
> +	u32 fault;
> +	enum plane_id plane_id;
> +};
> +
> +static bool handle_plane_fault(struct intel_crtc *crtc, enum plane_id plane_id)
> +{
> +	struct intel_display *display = to_intel_display(crtc);
> +	struct intel_plane_error error = {};
> +	struct intel_plane *plane;
> +
> +	plane = intel_crtc_get_plane(crtc, plane_id);
> +	if (!plane || !plane->capture_error)
> +		return false;
> +
> +	plane->capture_error(crtc, plane, &error);
> +
> +	drm_err_ratelimited(display->drm,
> +			    "[CRTC:%d:%s][PLANE:%d:%s] fault (CTL=0x%x, SURF=0x%x, SURFLIVE=0x%x)\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    plane->base.base.id, plane->base.name,
> +			    error.ctl, error.surf, error.surflive);

Could we drop the CRTC here?
<3> [264.586596] xe 0000:00:02.0: [drm] *ERROR* [CRTC:82:pipe 
A][PLANE:32:plane 1A] fault (CTL=0x94001002, SURF=0x1800000, 
SURFLIVE=0x1800000)

Looks to be a bit redundant to print CRTC and plane here. Most likely 
PLANE is good enough. :-)

Cheers,
~Maarten

