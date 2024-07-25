Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F00993C3D0
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 16:12:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CE310E82A;
	Thu, 25 Jul 2024 14:12:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EElCnYGI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9285A10E82A
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 14:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721916771; x=1753452771;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=52n7HUZF/LTPxgfVz2UzlAhlQjzmQrEiiM0uMTxbCE0=;
 b=EElCnYGIrRKgWmJ/QV95VpU8CzaCPdTiedscHN3kC/S2K+IhIeTBjiZY
 Zt6DuRboFsfO/Fc/mJzPx4Ny4zvfn76VlgNSgc82h+N/SMn742PkjFrFf
 ZBQC1GHVRQF6QSMbsM7DLFmdbQw4n6kPu6DtgFqapxB4pYLM0Hs952JBM
 2lWMDWxBjfwY0sLDdrfBzWocn4b0Kmf/SMH0rAj4Qjrrqod9lHHor/2Ce
 mTuRmxRzm+9BF/NpFiGD8wPY058V+MEmz7Wj9r/FgnmXYt8gjG2PlUe2D
 ktb9C9RMbylOtwLH5YojltLPq6jAvcaJgBjY7SLHLzD6X7GiMnNkESwut w==;
X-CSE-ConnectionGUID: g+/PclRmSH6KG4Ews6CDXQ==
X-CSE-MsgGUID: J9qgrDNUQ16fzB/5mMZ79w==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="19835205"
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="19835205"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 07:12:51 -0700
X-CSE-ConnectionGUID: HhkqxjdqSSWx6EskcWBgmA==
X-CSE-MsgGUID: RNwHSLjpSy+j3mPMQmcV7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,236,1716274800"; d="scan'208";a="76150893"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.243])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 07:12:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: Re: [PATCH] i915/display/dp: Compute AS SDP when vrr is also enabled
In-Reply-To: <20240725133110.112401-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240725133110.112401-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Thu, 25 Jul 2024 17:12:44 +0300
Message-ID: <87jzh9zhk3.fsf@intel.com>
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

On Thu, 25 Jul 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> AS SDP should be computed when VRR timing generator is also enabled.
> Correct the compute condition to compute params of Adaptive sync SDP
> when VRR timing genrator is enabled along with sink support indication.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5d6568c8e186..dc75d1c14a94 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2617,7 +2617,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  
> -	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
> +	if (!(crtc_state->vrr.enable && intel_dp->as_sdp_supported))
>  		return;

That's the same as

	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)

BR,
Jani.


>  
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);

-- 
Jani Nikula, Intel
