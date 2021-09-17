Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E271D40F863
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 14:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B778D6EC6C;
	Fri, 17 Sep 2021 12:53:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA1F86EC6C;
 Fri, 17 Sep 2021 12:53:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="219603882"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="219603882"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 05:53:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="517126322"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 17 Sep 2021 05:53:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Sep 2021 15:53:54 +0300
Date: Fri, 17 Sep 2021 15:53:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 manasi.d.navare@intel.com
Message-ID: <YUSP4kNmeNejBQZS@intel.com>
References: <cover.1631191763.git.jani.nikula@intel.com>
 <a2902cc188973f022f282f2a77e693afdecefb5a.1631191763.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a2902cc188973f022f282f2a77e693afdecefb5a.1631191763.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 12/13] drm/i915/dg2: configure
 TRANS_DP2_VFREQ{HIGH, LOW} for 128b/132b
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

On Thu, Sep 09, 2021 at 03:52:04PM +0300, Jani Nikula wrote:
> There's a new register pair for 128b/132b mode where you need to set the
> pixel clock in Hz.
> 
> v2: Fix UHBR rate check, use intel_dp_is_uhbr() helper
> 
> Bspec: 54128
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d104441344c0..97af19fd9780 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -550,6 +550,17 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	clear_act_sent(encoder, pipe_config);
>  
> +	if (intel_dp_is_uhbr(pipe_config)) {
> +		const struct drm_display_mode *adjusted_mode =
> +			&pipe_config->hw.adjusted_mode;
> +		u64 crtc_clock_hz = KHz(adjusted_mode->crtc_clock);
> +
> +		intel_de_write(dev_priv, TRANS_DP2_VFREQHIGH(pipe_config->cpu_transcoder),
> +			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz >> 24));
> +		intel_de_write(dev_priv, TRANS_DP2_VFREQLOW(pipe_config->cpu_transcoder),
> +			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
> +	}
> +
>  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>  
>  	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(trans), 0,
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
