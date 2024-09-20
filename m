Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C0E97D4E6
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:40:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD39410E814;
	Fri, 20 Sep 2024 11:40:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OZ+6UWoZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F8510E814
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 11:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726832400; x=1758368400;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XwkbbV10Txp3sDcFg/c6SrkVCHHKXaYBwjqK4lXUlSk=;
 b=OZ+6UWoZ92TufEOoMDS0Y59g+QRMUYSU2tkrxRZ6rmZK9xzMNTDEJGNN
 9pt3y4BCE/ZElxg91KIyOgaz4jMYJ5t9cSCr8u+pMRkDC5tyD/64XhJLA
 F4zwIrsmgxuZkNFn12uO1SNQUC9J/5jgzjpuHadTXjUB8GWmHxNMjNP00
 0qS+S6qa+YXh5EHaemHGqMmUuF3eRkcuo4oVO7jxmsyVGNQ+Xx7OXTWzH
 1SfIAurjH/kEsKRjY30stfKtoPawOMBMwkHdMYKah8tVEqIVa4mEU0Q3t
 YkqrT3OvrbEh1VVL4LDW9bJ6SQcg7Cu4wWdJVUzqwzRNq6xOBw4LXXHTN A==;
X-CSE-ConnectionGUID: 8GJznfzETbeQTEmsrM+Clg==
X-CSE-MsgGUID: yNtCJROaSLCyKd1lrfwEtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25955016"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25955016"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:40:00 -0700
X-CSE-ConnectionGUID: npn8Y3xsTbSu+Vxsy0GNuw==
X-CSE-MsgGUID: OgmA9Xv1QvuNx6+b08QHyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70400135"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Sep 2024 04:39:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Sep 2024 14:39:56 +0300
Date: Fri, 20 Sep 2024 14:39:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay workaround
 with VRR
Message-ID: <Zu1fDJzxiF5GoGhA@intel.com>
References: <20240916075406.3521433-1-animesh.manna@intel.com>
 <20240916075406.3521433-3-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240916075406.3521433-3-animesh.manna@intel.com>
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

On Mon, Sep 16, 2024 at 01:24:06PM +0530, Animesh Manna wrote:
> Panel Replay VSC SDP not getting sent when VRR is enabled
> and W1 and W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
> The same is applicable for PSR1/PSR2 as well.
> 
> HSD: 14015406119
> 
> v1: Initial version.
> v2: Update timings stored in adjusted_mode struct. [Ville]
> v3: Add WA in compute_config(). [Ville]
> v4:
> - Add DISPLAY_VER() check and improve code comment. [Rodrigo]
> - Introduce centralized intel_crtc_vblank_delay(). [Ville]
> v5: Move to crtc_compute_config(). [Ville]
> v6: Restrict DISPLAY_VER till 14. [Mitul]
> v7:
> - Corrected code-comment. [Mitul]
> - dev_priv local variable removed. [Jani]
> v8: Introduce late_compute_config() which will take care late
> vblank-delay adjustment. [Ville]
> v9: Implementation simplified and split into multiple patches.
> v10:
> - Split vrr changes and use struct intel_display in DISPLAY_VER(). [Ankit]
> - Use for_each_new_intel_connector_in_state(). [Jani]
> 
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 33 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_display.h |  2 ++
>  2 files changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 111e61eceafc..a0bd29b0d29a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2529,7 +2529,18 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>  {
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	int ret;
> +	struct intel_connector *connector;
> +	struct intel_digital_connector_state *conn_state;
> +	int ret, i;
> +
> +	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
> +		struct intel_encoder *encoder = connector->encoder;
> +
> +		if (conn_state->base.crtc != &crtc->base)
> +			continue;
> +
> +		intel_crtc_adjust_vblank_delay(crtc_state, encoder);
> +	}

Why is this loop here?

>  
>  	ret = intel_dpll_crtc_compute_clock(state, crtc);
>  	if (ret)
> @@ -3940,6 +3951,26 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
> +				    struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	/*
> +	 * wa_14015401596 for display versions 13, 14.
> +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
> +	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with VRR.
> +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
> +	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
> +	 * by 1 if both are equal.
> +	 */
> +	if (crtc_state->vrr.enable &&

Another case of the do not use.

> crtc_state->has_psr &&

Does that cover panel replay as well?

Can this change dynamically during fastsets? If yes, then you
can't use it for this, again due to fastset VRR requirements.


Did you actually test this code? AFAIK the fastset checks should
catch this and refuse to toggle VRR with a fastset. If that's not
the case then we have even bigger problems somewhere...

> +	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
> +	    IS_DISPLAY_VER(display, 13, 14))
> +		adjusted_mode->crtc_vblank_start += 1;
> +}
> +
>  int intel_dotclock_calculate(int link_freq,
>  			     const struct intel_link_m_n *m_n)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 7ca26e5cb20e..db7bb5cac2f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -429,6 +429,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> +void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
> +				    struct intel_encoder *encoder);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
