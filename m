Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB327EACBE
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 10:14:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8821710E1E4;
	Tue, 14 Nov 2023 09:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8741710E1E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 09:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699953238; x=1731489238;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rVlzoNHyyaKn99VZGPCh88b6jhDWsPxCWcAjaRLP1SY=;
 b=Jx1GupLjRO0a6lSkJAEjbG5q44Ftbn2pM+MzrSUlEi6t1JBxaSKpDDwr
 R/S2/jnGoyMOHlqn32j+Wu0UZCtV/cGG9hbhhuOMg6ZI6SqjTvm2KzZ5F
 /Pcp7Eciw39OnwN7YlYDiRfHi26sXuiujsWyWDWXAeSaFK/Wmkg+W2Vqj
 ZuoqcBJDau/8LiRij7EINKXJRGZIZlesyAiorEmGcFqprxD6tcqtSu34+
 N3PAlpJnlFB40zpaOiWPrs7Tmnknz4k6JIEMtvIpVyWg4TKqONQYRhu0N
 6O2SeY/AVFf/wkfMk4EsS50Pjf0VaVml89ICJwWLRyOZFVUFzqxTXSP9R g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="393474975"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="393474975"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 01:13:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="758114123"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="758114123"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 14 Nov 2023 01:13:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Nov 2023 11:13:55 +0200
Date: Tue, 14 Nov 2023 11:13:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZVM6UwJOeOU_9Pdl@intel.com>
References: <20231113164711.4100548-1-jani.nikula@intel.com>
 <20231113164711.4100548-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231113164711.4100548-3-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: convert
 vlv_dpio_read()/write() from pipe to phy
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 13, 2023 at 06:47:10PM +0200, Jani Nikula wrote:
> vlv_dpio_read() and vlv_dpio_write() really operate on the phy, not
> pipe. Passing the pipe instead of the phy as parameter is supposed to be
> a convenience, but when the caller has the phy, it becomes an
> inconvenience. See e.g. chv_dpio_cmn_power_well_enable() and
> assert_chv_phy_powergate().
> 
> Figure out the phy in the callers, and pass phy to the dpio functions.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   |  23 +--
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 160 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 106 ++++++------
>  drivers/gpu/drm/i915/vlv_sideband.c           |  10 +-
>  drivers/gpu/drm/i915/vlv_sideband.h           |   6 +-
>  5 files changed, 152 insertions(+), 153 deletions(-)
<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> index d6af46e33424..32886c0ec2cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -1107,24 +1109,24 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	enum dpio_channel port = vlv_dig_port_to_channel(dig_port);
> -	enum pipe pipe = crtc->pipe;
> +	enum dpio_phy phy = vlv_pipe_to_phy(crtc->pipe);
>  	u32 val;
>  
>  	vlv_dpio_get(dev_priv);
>  
>  	/* Enable clock channels for this port */
> -	val = vlv_dpio_read(dev_priv, pipe, VLV_PCS01_DW8(port));
> +	val = vlv_dpio_read(dev_priv, phy, VLV_PCS01_DW8(port));
>  	val = 0;
> -	if (pipe)
> +	if (phy)

That is wrong. Apart from that looks identical to what I have in
one of my branches :)

With that bogus change dropped:
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
