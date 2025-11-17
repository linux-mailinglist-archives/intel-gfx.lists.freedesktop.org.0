Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCB5C64CEF
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 16:09:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C84010E3BF;
	Mon, 17 Nov 2025 15:09:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XE98Rcuj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1AC310E3BE;
 Mon, 17 Nov 2025 15:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763392186; x=1794928186;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nnBaxtv5YzLjHEBR1ICdDGI3V57ZneAXwqdEDblFDrY=;
 b=XE98RcujBkEoPiuE5yxH07Jg60K2Dtt05FtMN/Bv49DVtLbpoFWnLVdD
 u3z6QrIkBQGrnM7rKL514LNHvvq3aD1HpUtAED8PqvuxLD8vzxssaujw9
 vkRV+yTLv9RTkVO0mMSevCv7ZwCyf+2ouRiW7X5CPQzx8xjEFHofOG9ZU
 vOGY+MBER5b62Qwma5S/KURE62wgkHTz1tmW8G0kQZFiAG9FKrcE+9Qox
 ForH9ejRxC9DMqUama+vWefnrhJIW/j0tdjrd1mFg0HoiI/IXa1hK01e9
 v+jf+w+3t8q+cXs0V4HTWHkPySrUgKGSldPJynkKq3Mqmr4sEc5t3h5kR w==;
X-CSE-ConnectionGUID: yZt6TLNeSsKkN/Q46AfzGA==
X-CSE-MsgGUID: 0XADpwsMScOM/HcHdcdVpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="75714315"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="75714315"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:09:46 -0800
X-CSE-ConnectionGUID: fWIlURioTsOM7VcaoGfH4A==
X-CSE-MsgGUID: MAjmM7MtSOeJvlXw9s4+ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="195612119"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.42])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 07:09:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>
Subject: Re: [RFC 4/8] drm/i915/cmtg: program vrr registers of cmtg
In-Reply-To: <20251117114216.1522615-5-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251117114216.1522615-1-animesh.manna@intel.com>
 <20251117114216.1522615-5-animesh.manna@intel.com>
Date: Mon, 17 Nov 2025 17:09:38 +0200
Message-ID: <ef595fd92b80e5d48deec222923d2c0e129ca472@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 17 Nov 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> Enable vrr if it is enabled on cmtg registers.

This violates the basic principle that hardware and software states are
kept separate. When we write the software state to the hardware, making
parts of it conditional on the existing hardware state results in
non-deterministic behaviour.

BR,
Jani.

>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 19 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  5 +++++
>  2 files changed, 24 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index 5e9aaa50b38f..3dfb691913cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -17,6 +17,7 @@
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> +#include "intel_vrr_regs.h"
>  
>  /**
>   * DOC: Common Primary Timing Generator (CMTG)
> @@ -213,6 +214,7 @@ static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 vctl;
>  
>  	intel_de_write(display, TRANS_HTOTAL_CMTG(cpu_transcoder),
>  		       intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder)));
> @@ -226,6 +228,23 @@ static void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state)
>  		       intel_de_read(display, TRANS_VBLANK(display, cpu_transcoder)));
>  	intel_de_write(display, TRANS_VSYNC_CMTG(cpu_transcoder),
>  		       intel_de_read(display, TRANS_VSYNC(display, cpu_transcoder)));
> +
> +	vctl = intel_de_read(display, TRANS_VRR_CTL(display, cpu_transcoder));
> +	if (vctl & VRR_CTL_VRR_ENABLE) {
> +		u32 vmax, flipline, vmin;
> +
> +		vmax = intel_de_read(display, TRANS_VRR_VMAX(display, cpu_transcoder));
> +		flipline = intel_de_read(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder));
> +		if (vmax != flipline)
> +			return;
> +
> +		vmin = intel_de_read(display, TRANS_VRR_VMIN(display, cpu_transcoder));
> +
> +		intel_de_write(display, TRANS_VRR_VMAX_CMTG(cpu_transcoder), vmax);
> +		intel_de_write(display, TRANS_VRR_VMIN_CMTG(cpu_transcoder), vmin);
> +		intel_de_write(display, TRANS_VRR_FLIPLINE_CMTG(cpu_transcoder), flipline);
> +		intel_de_write(display, TRANS_VRR_CTL_CMTG(cpu_transcoder), vctl);
> +	}
>  }
>  
>  void intel_cmtg_enable(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 47403bbcac7d..37dee7165852 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -33,4 +33,9 @@ enum cmtg {
>  #define TRANS_VBLANK_CMTG(id)		_MMIO(0x6F010 + (id) * 0x100)
>  #define TRANS_VSYNC_CMTG(id)		_MMIO(0x6F014 + (id) * 0x100)
>  
> +#define TRANS_VRR_CTL_CMTG(id)		_MMIO(0x6F420 + (id) * 0x100)
> +#define TRANS_VRR_VMAX_CMTG(id)		_MMIO(0x6F424 + (id) * 0x100)
> +#define TRANS_VRR_VMIN_CMTG(id)		_MMIO(0x6F434 + (id) * 0x100)
> +#define TRANS_VRR_FLIPLINE_CMTG(id)	_MMIO(0x6F438 + (id) * 0x100)
> +
>  #endif /* __INTEL_CMTG_REGS_H__ */

-- 
Jani Nikula, Intel
