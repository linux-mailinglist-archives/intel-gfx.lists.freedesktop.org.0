Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF3BAAF93A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 13:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59D310E8ED;
	Thu,  8 May 2025 11:57:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hta3iAms";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EAA10E8E7;
 Thu,  8 May 2025 11:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746705436; x=1778241436;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Nv/F7Lwb8UKRkeKfASic+pPB9gwsmstcAC6QzCA/XMY=;
 b=Hta3iAms3+NodsLyT6QAhm14BiUaj8wE8E9lp2uS2dzqZatC/993QJ4M
 0zyJm4dCUfyqs6QajuGjQL942J7EqPZyOSkp1OHx7tZPDd6IaRnjeEdfd
 gtZKmcxFiAOlQQG7vvjAnY3RyCK1Zt29YzMSPDfxpZDblBB2BPrAvmQmU
 BXH1lKngFVFLcTEt5yB9ghY7Ctqf8Cq/IlUZ2Dwr8XPcPez1aO9syqG//
 nA5bFV5SUoSG93c+HRvLyKv514tCd4AMlOW/ueqKtZQGALYClXajRGKb2
 lljO+oqd12T2AuwHvjuWakyPVc/jURVigfobgqwNssiRBT1KOqkdIJeGH g==;
X-CSE-ConnectionGUID: ipA+lnoLQ02BmFGmqNftXQ==
X-CSE-MsgGUID: cRtcHJgwT3u/2tDyLyWL2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="51143397"
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="51143397"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 04:57:15 -0700
X-CSE-ConnectionGUID: HWfgUUTkSf+lVtvVZ2PNxA==
X-CSE-MsgGUID: Tfb8ZlfWSEmg7HCjEOKDCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,272,1739865600"; d="scan'208";a="141485156"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 04:57:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jeevan.b@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v8 6/9] drm/i915/lobf: Update lobf if any change in
 dependent parameters
In-Reply-To: <20250409140258.785834-7-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250409140258.785834-1-animesh.manna@intel.com>
 <20250409140258.785834-7-animesh.manna@intel.com>
Date: Thu, 08 May 2025 14:57:10 +0300
Message-ID: <87frhftiw9.fsf@intel.com>
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

On Wed, 09 Apr 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> For every commit the dependent condition for LOBF is checked
> and accordingly update has_lobf flag which will be used
> to update the ALPM_CTL register during commit.
>
> v1: Initial version.
> v2: Avoid reading h/w register without has_lobf check. [Jani]
> v3: Update LOBF in post plane update instead of separate function. [Jouni]
> v4:
> - Add lobf disable print. [Jouni]
> - Simplify condition check for enabling/disabling lobf. [Jouni]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 01949b90c0c3..4fe1914ff759 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -362,6 +362,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  	if (crtc_state->has_lobf) {
>  		alpm_ctl |= ALPM_CTL_LOBF_ENABLE;
>  		drm_dbg_kms(display->drm, "Link off between frames (LOBF) enabled\n");
> +	} else {
> +		drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
>  	}

Maybe just one line?

	drm_dbg_kms(display->drm, "Link off between frames (LOBF) %s\n",
		    str_enabled_disabled(crtc_state->has_lobf));

>  
>  	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
> @@ -382,9 +384,12 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>  	struct intel_display *display = to_intel_display(state);
>  	const struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_crtc_state *old_crtc_state =
> +		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_encoder *encoder;
>  
> -	if (!crtc_state->has_lobf && !crtc_state->has_psr)
> +	if (crtc_state->has_lobf == old_crtc_state->has_lobf &&
> +	    !crtc_state->has_psr)
>  		return;
>  
>  	for_each_intel_encoder_mask(display->drm, encoder,

-- 
Jani Nikula, Intel
