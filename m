Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A5C7EAC72
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 10:05:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C449310E1D4;
	Tue, 14 Nov 2023 09:04:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D69CD10E1D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 09:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699952697; x=1731488697;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2aiz0xgspMPXMtObfTWEzJ6VmgCdI9gZZYGrIVjLdAo=;
 b=JfAJWPgwNdKVrT4U9H2ot1jsmOLc7NPvUClHirEBmYibiHsmjzBKQpWc
 crslx0WGpQh29V9vO2U9Y9wMQQdMnH8PVKc6jJBhoAz3p7tlgoE79k9O+
 M9yhH8SxpRSWMaK94ur6ty/XcInXce0brhG3yezSizvO/Tn2/d6vurS8R
 a0ZH1zbldGs9e/q6F9CLslXl7/rJfKR+ZXJHNHolRhJBD4qZkis2r56ig
 v4ybXyJ8RITNJut+Pbfy/O6jTX8vcst15oIAxpwQiGzmBR0zGn79oqzSn
 fwpUWDcvigBr/sdYzdAXw+ZuIoWma3Cy8hkTLvY81CH7MNFZCiKjxzt0Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="393473122"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="393473122"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 01:04:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="758110474"
X-IronPort-AV: E=Sophos;i="6.03,301,1694761200"; d="scan'208";a="758110474"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 14 Nov 2023 01:04:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Nov 2023 11:04:54 +0200
Date: Tue, 14 Nov 2023 11:04:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZVM4Nsm3mdhi5L1J@intel.com>
References: <20231113164711.4100548-1-jani.nikula@intel.com>
 <20231113164711.4100548-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231113164711.4100548-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: add vlv_pipe_to_phy() helper
 to replace DPIO_PHY()
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

On Mon, Nov 13, 2023 at 06:47:09PM +0200, Jani Nikula wrote:
> Add a helper with better typing and handing for bogus input, and better
> in line with vlv_dig_port_to_channel(), vlv_dig_port_to_phy(), and
> vlv_pipe_to_channel().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dpio_phy.h |  5 +++++
>  drivers/gpu/drm/i915/display/intel_pps.c      |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  2 --
>  drivers/gpu/drm/i915/vlv_sideband.c           |  6 ++++--
>  5 files changed, 24 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> index 62b93d097e44..d6af46e33424 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -666,6 +666,20 @@ enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_port)
>  	}
>  }
>  
> +enum dpio_phy vlv_pipe_to_phy(enum pipe pipe)
> +{
> +	switch (pipe) {
> +	default:
> +		MISSING_CASE(pipe);
> +		fallthrough;
> +	case PIPE_A:
> +	case PIPE_B:
> +		return DPIO_PHY0;
> +	case PIPE_C:
> +		return DPIO_PHY1;
> +	}
> +}
> +
>  enum dpio_channel vlv_pipe_to_channel(enum pipe pipe)
>  {
>  	switch (pipe) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> index 4d43dbbdf81c..9adc4e8c1738 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
> @@ -44,6 +44,7 @@ u8 bxt_ddi_phy_get_lane_lat_optim_mask(struct intel_encoder *encoder);
>  
>  enum dpio_channel vlv_dig_port_to_channel(struct intel_digital_port *dig_port);
>  enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_port);
> +enum dpio_phy vlv_pipe_to_phy(enum pipe pipe);
>  enum dpio_channel vlv_pipe_to_channel(enum pipe pipe);
>  
>  void chv_set_phy_signal_level(struct intel_encoder *encoder,
> @@ -116,6 +117,10 @@ static inline enum dpio_phy vlv_dig_port_to_phy(struct intel_digital_port *dig_p
>  {
>  	return DPIO_PHY0;
>  }
> +static inline enum dpio_phy vlv_pipe_to_phy(enum pipe pipe)
> +{
> +	return DPIO_PHY0;
> +}
>  static inline enum dpio_channel vlv_pipe_to_channel(enum pipe pipe)
>  {
>  	return DPIO_CH0;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 73f0f1714b37..a8fa3a20990e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -90,7 +90,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	enum pipe pipe = intel_dp->pps.pps_pipe;
>  	bool pll_enabled, release_cl_override = false;
> -	enum dpio_phy phy = DPIO_PHY(pipe);
> +	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
>  	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
>  	u32 DP;
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 135e8d8dbdf0..27dc903f0553 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -195,8 +195,6 @@
>  #define  DPIO_SFR_BYPASS		(1 << 1)
>  #define  DPIO_CMNRST			(1 << 0)
>  
> -#define DPIO_PHY(pipe)			((pipe) >> 1)
> -
>  /*
>   * Per pipe/PLL DPIO regs
>   */
> diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
> index b98dec3ad817..f7df55217845 100644
> --- a/drivers/gpu/drm/i915/vlv_sideband.c
> +++ b/drivers/gpu/drm/i915/vlv_sideband.c
> @@ -229,7 +229,8 @@ static u32 vlv_dpio_phy_iosf_port(struct drm_i915_private *i915, enum dpio_phy p
>  
>  u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
>  {
> -	u32 port = vlv_dpio_phy_iosf_port(i915, DPIO_PHY(pipe));
> +	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
> +	u32 port = vlv_dpio_phy_iosf_port(i915, phy);
>  	u32 val = 0;
>  
>  	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MRD_NP, reg, &val);
> @@ -248,7 +249,8 @@ u32 vlv_dpio_read(struct drm_i915_private *i915, enum pipe pipe, int reg)
>  void vlv_dpio_write(struct drm_i915_private *i915,
>  		    enum pipe pipe, int reg, u32 val)
>  {
> -	u32 port = vlv_dpio_phy_iosf_port(i915, DPIO_PHY(pipe));
> +	enum dpio_phy phy = vlv_pipe_to_phy(pipe);
> +	u32 port = vlv_dpio_phy_iosf_port(i915, phy);
>  
>  	vlv_sideband_rw(i915, DPIO_DEVFN, port, SB_MWR_NP, reg, &val);
>  }
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
