Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14825AA4A4E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Apr 2025 13:43:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F30610E739;
	Wed, 30 Apr 2025 11:43:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LSRak/+c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3367D10E739;
 Wed, 30 Apr 2025 11:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746013379; x=1777549379;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=A+lESLzXz6pH64PtiMJPKninmIEH4lL4TAuKybRPQBc=;
 b=LSRak/+cgXsh0GTeYdcRYpte9uJ04sdSh0B2tLXYZoknd9PZI2KEoai8
 IQcUyOXTRDvSefZ7pB4p6Opc7SBx+HABKkOBR4qpe50hcmN5XA/CsR+Nb
 v5EbuJs36BzvXfPT6iqXfuvuxP+S38y2tVPO+0Arc2HE/Y3tGAKUIspwf
 f+XziBJiFhjPJF1OrqMGwH16rKKe72HUSEQQdWycfadhk99ksdXlwKCRW
 2uqlOna4wgW/R7QpOSIQvx4fndgwQzNxePx7K+fSi5cAPYe5KFB7BXi5a
 tzvUbjgZPKlPYnmH/f3URUt2xtYKkIZ733lY9EMO1PQbYEdGFf1JiOyDc w==;
X-CSE-ConnectionGUID: RJgolhctRDuWLTmd7DAT/w==
X-CSE-MsgGUID: C5/LtQIbRtaTSS5DpSY9Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="59029633"
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="59029633"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 04:42:58 -0700
X-CSE-ConnectionGUID: zXCWPc+1Rt6Kzb9tOVTz6Q==
X-CSE-MsgGUID: V+z7vZouTO2BsW2ia58mcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,251,1739865600"; d="scan'208";a="138926390"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 04:42:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com
Subject: Re: [PATCH] drm/i915/vrr: Program EMP_AS_SDP_TL for DP AS SDP
In-Reply-To: <20250429143055.130701-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250429143055.130701-1-ankit.k.nautiyal@intel.com>
Date: Wed, 30 Apr 2025 14:42:53 +0300
Message-ID: <87msbxvps2.fsf@intel.com>
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

On Tue, 29 Apr 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> The register EMP_AS_SDP_TL (MTL) was introduced for configuring the
> double buffering point and transmission line for
> HDMI Video Timing Extended Metadata Packet (VTEMP) for VRR.
> This was also intended to be configured for DP to HDMI2.1 PCON to
> support VRR.
>
> From BMG and LNL+ onwards, this register was extended to Display Port
> Adaptive Sync SDP to have a common register to configure double
> buffering point and transmission line for both HDMI and DP VRR related
> packets.
>
> Currently, we do not support VRR for either native HDMI or via PCON.
> However we need to configure this for DP SDP case. As per the spec,
> program the register to set Vsync start as the double buffering point
> for DP AS SDP.
>
> Bspec:70984, 71197
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 20 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr_regs.h |  6 ++++++
>  2 files changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c6565baf815a..2447bdfde5af 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -576,6 +576,22 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>  	return false;
>  }
>  
> +static
> +void intel_vrr_set_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)

How do you pronounce that function name?

BR,
Jani.

> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	/*
> +	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
> +	 * double buffering point and transmission line for Adaptive Sync SDP.
> +	 */
> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
> +		intel_de_write(display,
> +			       EMP_AS_SDP_TL(display, cpu_transcoder),
> +			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> +}
> +
>  void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -595,6 +611,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  		       TRANS_PUSH_EN);
>  
>  	if (!intel_vrr_always_use_vrr_tg(display)) {
> +		intel_vrr_set_emp_as_sdp_tl(crtc_state);
> +
>  		if (crtc_state->cmrr.enable) {
>  			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> @@ -646,6 +664,8 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>  		       TRANS_PUSH_EN);
>  
> +	intel_vrr_set_emp_as_sdp_tl(crtc_state);
> +
>  	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 6ed0e0dc97e7..d2af1b6710bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -108,6 +108,12 @@
>  #define VRR_VSYNC_START_MASK			REG_GENMASK(12, 0)
>  #define VRR_VSYNC_START(vsync_start)		REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>  
> +/* Common register for HDMI VTEMP and DP AS SDP */
> +#define _EMP_AS_SDP_TL_A			0x60204
> +#define EMP_AS_SDP_DB_TL_MASK			REG_GENMASK(12, 0)
> +#define EMP_AS_SDP_TL(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _EMP_AS_SDP_TL_A)
> +#define EMP_AS_SDP_DB_TL(db_transmit_line)	REG_FIELD_PREP(EMP_AS_SDP_DB_TL_MASK, (db_transmit_line))
> +
>  /*CMRR Registers*/
>  
>  #define _TRANS_CMRR_M_LO_A			0x604F0

-- 
Jani Nikula, Intel
