Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF71A7E759
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 18:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66EED10E524;
	Mon,  7 Apr 2025 16:54:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PkCsdVOP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 956B710E522;
 Mon,  7 Apr 2025 16:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744044896; x=1775580896;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zw+qKjv0pKjtpxgLHF9Nb5tV7nndcbNj1yI7Ynk+XAk=;
 b=PkCsdVOPldyw5XB6mHOkkdxub5I1k3R6tODPp4SzfrIHrNlhrLUoss5L
 Jwd5z0mj0U/mOhT/NtXRyzTpsrA0QiOGcofNYVUzKVElM8NRzgd2hnInK
 yvgV8BNd4o9cJ8+PY1qEipAli/nvSYqQFRk1lZB7JNlq46tIXgVhdg9kf
 Ym8U6ujHkPFJvdiiPfLaeWRs2CvMUA2DmdU9XAM86FPPa5lePQatmUzNl
 Vqih52E7yMP+cqv0i/ZRe0Rvo/G9k0l3W/cL2R2TV9zf/31pLJTR7a0EI
 6SScHA1zD7PsgHs6HrUliza50EgU6suHeNI+SAV9Yyx9myBcWw/Q93Nk7 g==;
X-CSE-ConnectionGUID: q27BPsGFQLCgtqQNrBPgLA==
X-CSE-MsgGUID: QQe6+C/CRbGhhqEzV9W5fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="62987988"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="62987988"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 09:54:55 -0700
X-CSE-ConnectionGUID: jjI5s7fSRVewnZRDrfbQdA==
X-CSE-MsgGUID: 88L5U+VcTseQN9dYXkCs1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="133215107"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Apr 2025 09:54:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Apr 2025 19:54:51 +0300
Date: Mon, 7 Apr 2025 19:54:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com, animesh.manna@intel.com
Subject: Re: [PATCH 09/11] drm/i915: Program DB LUT registers before vblank
Message-ID: <Z_QDW_v3PCCCStnP@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
 <20250407142359.1398410-10-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250407142359.1398410-10-chaitanya.kumar.borah@intel.com>
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

On Mon, Apr 07, 2025 at 07:53:57PM +0530, Chaitanya Kumar Borah wrote:
> Double Buffered LUT registers can be programmed in the active region.
> This patch implements the MMIO path for it. Program the registers after
> evading vblank. The HW latches on to the registers after delayed vblank.
> It takes around 1024 cdclk cycles(~one scanline) for this.
> 
> Following assumptions have been made while making this change
> 
>  - Current vblank evasion time is sufficient for programming
>    the LUT registers.
>  - Current guardband calculation would be sufficient for the HW
>    to latch on to the new values
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 85e28b4c9e66..df9c992d2939 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6725,10 +6725,12 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
>  static void intel_update_crtc(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc)
>  {
> +	struct intel_display *display = to_intel_display(crtc);
>  	const struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
>  
>  	if (new_crtc_state->use_dsb) {
>  		intel_crtc_prepare_vblank_event(new_crtc_state, &crtc->dsb_event);
> @@ -6738,6 +6740,12 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>  		/* Perform vblank evasion around commit operation */
>  		intel_pipe_update_start(state, crtc);
>  
> +		if (!modeset &&
> +		    intel_crtc_needs_color_update(new_crtc_state) &&
> +		    !new_crtc_state->dsb_color &&
> +		    HAS_DOUBLE_BUFFERED_LUT(display))
> +			intel_color_load_luts(new_crtc_state);
> +

I think we want to do this in commit_pipe_post_planes() since
a vblank evasion failure for this is probably less drastic than
for plane programming.

>  		if (new_crtc_state->dsb_commit)
>  			intel_dsb_commit(new_crtc_state->dsb_commit, false);
>  
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
