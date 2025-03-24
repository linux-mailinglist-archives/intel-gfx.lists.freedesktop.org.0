Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C52A6E1BA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 18:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6404F10E17F;
	Mon, 24 Mar 2025 17:55:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ByKTn3dY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05BBE10E17F;
 Mon, 24 Mar 2025 17:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742838943; x=1774374943;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=np/mrHC7pfqMp16MPB24hSbLuEqmzBtxHfk+/SUbjhs=;
 b=ByKTn3dYYuMzGdPUsOtFSo05OuR0cWyAz/RhBjVaxZwAdoRO9bMUcfkg
 CnmfRzp+TxwgemJMOCxD90TAeZjjuqs/pSdSHLxyHpgAPboBZaWip4kSK
 rUM6A4lOtXdQU+RFL/nmNltR0vJWoZ1wdtRnVUpJWflX6Rc62Uw1YIbmj
 jcJxP/Y6AkTUFwI9ANfVpNSinGWB/MInf334wMR+J2dP03ocapWakeAwr
 RO5PVDTSUwHI7PwuN5hinYoIY+ek1uWLnv7rfZlsePK1MvrMizRK93v0I
 sOrDf9FpK4S6CG9gnNLtar3RjTaxdhQgx0ITDBMQHufvNvQkT5mxS7XER A==;
X-CSE-ConnectionGUID: R4zE/HA0S/KR1OGia6NvTw==
X-CSE-MsgGUID: tNQx6+WkRjqyeg4DkF6+ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="47933048"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="47933048"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 10:55:43 -0700
X-CSE-ConnectionGUID: nSqnzZlbRKOkzwg94FK3yQ==
X-CSE-MsgGUID: FLivqDtRQTywUAW9dOLtlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="129315486"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 24 Mar 2025 10:55:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Mar 2025 19:55:38 +0200
Date: Mon, 24 Mar 2025 19:55:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 14/16] drm/i915/vrr: Set trans_vrr_ctl in
 intel_vrr_set_transcoder_timings()
Message-ID: <Z-Gcmj25OkDqB9wO@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
 <20250324133248.4071909-15-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250324133248.4071909-15-ankit.k.nautiyal@intel.com>
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

On Mon, Mar 24, 2025 at 07:02:46PM +0530, Ankit Nautiyal wrote:
> We now always set vrr.flipline, vmin, and vmax for all platforms that
> support VRR. Therefore, we should set all TRANS_VRR_CTL bits except
> VRR_ENABLE. Without this, the readback for these bits will fail because we
> only read vrr.flipline, vmin, and vmax if TRANS_VRR_CTL has the
> FLIPLINE_EN bit set.
> 
> For platforms that always have the VRR Timing Generator enabled,
> the FLIPLINE_EN bit is always set in TRANS_VRR_CTL during
> intel_transcoder_vrr_enable(). However, for the remaining platforms
> (that do not always have the VRR Timing Generator enabled) if a full
> modeset doesn't occur and VRR is not enabled, the bit is not set.
> 
> This results in a mismatch between the software state and hardware state
> because the software state expects VRR timings like flipline, vmin, and
> vmax to be set, but the readout for these doesn't happen since the
> FLIPLINE_EN bit is not set in TRANS_VRR_CTL.
> 
> To avoid this mismatch, write trans_vrr_ctl in
> intel_vrr_set_transcoder_timings() even when VRR is not enabled
> for platforms that do not have the VRR Timing Generator always enabled.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5e60da2bb0c3..414f93851059 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -484,6 +484,10 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  
>  	intel_vrr_set_fixed_rr_timings(crtc_state);
>  
> +	if (!intel_vrr_always_use_vrr_tg(display) && !crtc_state->vrr.enable)
> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> +			       trans_vrr_ctl(crtc_state));
> +

The whole situation around intel_vrr_set_transcoder_timings() is a bit
of a mess now. Technically intel_pre_update_crtc() shouldn't need to
call it at all anymore since we set up everything during crtc enable,
intel_set_transcoder_timings_lrr() and vrr_enable(). But this fastboot
case is somewhat of a special case. I think we probably need to clean
this stuff up further.

But for the moment this looks fine since VRR should be disabled whenever
this is called, and therefore it just does some redundant VRR register
writes in the typical case.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	if (HAS_AS_SDP(display))
>  		intel_de_write(display,
>  			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
