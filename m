Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF02F3A7E86
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 14:57:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61686E2D8;
	Tue, 15 Jun 2021 12:57:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0724A89C85
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 12:57:24 +0000 (UTC)
IronPort-SDR: HWwdwZg52q+fQj1QeqcMk85b0z/ILDMQHQCwfq3/BbsKPoobdw2+RqEFo9kQ0KIJJ0Th3ESaRG
 VAG7OU3J5FJw==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="202958055"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="202958055"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 05:57:24 -0700
IronPort-SDR: QdNzWessukLwDJZVPpS66rl3eeHRVPnuxhOfxcSux0fZ6yqpI38Nxy96QBQbSF7y329vSTc/gj
 nP+txuGoQWVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="471643237"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga004.fm.intel.com with ESMTP; 15 Jun 2021 05:57:24 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 15 Jun 2021 13:57:22 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Tue, 15 Jun 2021 18:27:21 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Force a TypeC PHY disconnect
 during suspend/shutdown
Thread-Index: AQHXXh//AQF0ysQe1kGAWjgL4Npi6asVD3PA
Date: Tue, 15 Jun 2021 12:57:20 +0000
Message-ID: <41580e47375f4fe192d2258529d50c69@intel.com>
References: <20210610174223.605904-1-imre.deak@intel.com>
In-Reply-To: <20210610174223.605904-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Force a TypeC PHY disconnect
 during suspend/shutdown
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
Cc: Chris Chiu <chris.chiu@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre Deak
> Sent: Thursday, June 10, 2021 11:12 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chris Chiu <chris.chiu@canonical.com>
> Subject: [Intel-gfx] [PATCH] drm/i915: Force a TypeC PHY disconnect during
> suspend/shutdown
> 
> Disconnect TypeC PHYs during system suspend and shutdown, even with the
> corresponding TypeC sink still plugged to its connector, since leaving the PHY
> connected causes havoc at least during system resume in the presence of an Nvidia
> card.
> 
> Note that this will only make a difference in the TypeC DP alternate mode, since in
> Thunderbolt alternate mode the PHY is never owned by the display engine and there
> is no notion of PHY ownership in legacy mode (the display engine being the only
> possible owner in that mode and the TypeC subsystem not having anything to do
> with the port in that case).

Change looks good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3500
> Reported-and-tested-by: Chris Chiu <chris.chiu@canonical.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 34 ++++++++++++++++++++++--
> drivers/gpu/drm/i915/display/intel_tc.c  | 34 +++++++++++++++++++-----
> drivers/gpu/drm/i915/display/intel_tc.h  |  2 ++
>  3 files changed, 61 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 390869bd6b633..7e25d0f80b78f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4496,6 +4496,36 @@ static bool intel_ddi_is_tc(struct drm_i915_private
> *i915, enum port port)
>  		return false;
>  }
> 
> +static void intel_ddi_encoder_suspend(struct intel_encoder *encoder) {
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	intel_dp_encoder_suspend(encoder);
> +
> +	if (!intel_phy_is_tc(i915, phy))
> +		return;
> +
> +	intel_tc_port_disconnect_phy(dig_port);
> +}
> +
> +void intel_ddi_encoder_shutdown(struct intel_encoder *encoder) {
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	intel_dp_encoder_shutdown(encoder);
> +
> +	if (!intel_phy_is_tc(i915, phy))
> +		return;
> +
> +	intel_tc_port_disconnect_phy(dig_port);
> +}
> +
>  #define port_tc_name(port) ((port) - PORT_TC1 + '1')  #define
> tc_port_name(tc_port) ((tc_port) - TC_PORT_1 + '1')
> 
> @@ -4605,8 +4635,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
> enum port port)
>  	encoder->get_hw_state = intel_ddi_get_hw_state;
>  	encoder->sync_state = intel_ddi_sync_state;
>  	encoder->initial_fastset_check = intel_ddi_initial_fastset_check;
> -	encoder->suspend = intel_dp_encoder_suspend;
> -	encoder->shutdown = intel_dp_encoder_shutdown;
> +	encoder->suspend = intel_ddi_encoder_suspend;
> +	encoder->shutdown = intel_ddi_encoder_shutdown;
>  	encoder->get_power_domains = intel_ddi_get_power_domains;
> 
>  	encoder->type = INTEL_OUTPUT_DDI;
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> b/drivers/gpu/drm/i915/display/intel_tc.c
> index c23c210a55f5c..3ffece568ed98 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -556,7 +556,7 @@ intel_tc_port_get_target_mode(struct intel_digital_port
> *dig_port)  }
> 
>  static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
> -				     int required_lanes)
> +				     int required_lanes, bool force_disconnect)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	enum tc_port_mode old_tc_mode = dig_port->tc_mode; @@ -572,7 +572,8
> @@ static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
>  	}
> 
>  	icl_tc_phy_disconnect(dig_port);
> -	icl_tc_phy_connect(dig_port, required_lanes);
> +	if (!force_disconnect)
> +		icl_tc_phy_connect(dig_port, required_lanes);
> 
>  	drm_dbg_kms(&i915->drm, "Port %s: TC port mode reset (%s -> %s)\n",
>  		    dig_port->tc_port_name,
> @@ -662,7 +663,7 @@ bool intel_tc_port_connected(struct intel_encoder
> *encoder)  }
> 
>  static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
> -				 int required_lanes)
> +				 int required_lanes, bool force_disconnect)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	intel_wakeref_t wakeref;
> @@ -676,8 +677,9 @@ static void __intel_tc_port_lock(struct intel_digital_port
> *dig_port,
> 
>  		tc_cold_wref = tc_cold_block(dig_port);
> 
> -		if (intel_tc_port_needs_reset(dig_port))
> -			intel_tc_port_reset_mode(dig_port, required_lanes);
> +		if (force_disconnect || intel_tc_port_needs_reset(dig_port))
> +			intel_tc_port_reset_mode(dig_port, required_lanes,
> +						 force_disconnect);
> 
>  		tc_cold_unblock(dig_port, tc_cold_wref);
>  	}
> @@ -688,7 +690,7 @@ static void __intel_tc_port_lock(struct intel_digital_port
> *dig_port,
> 
>  void intel_tc_port_lock(struct intel_digital_port *dig_port)  {
> -	__intel_tc_port_lock(dig_port, 1);
> +	__intel_tc_port_lock(dig_port, 1, false);
>  }
> 
>  void intel_tc_port_unlock(struct intel_digital_port *dig_port) @@ -702,6 +704,24
> @@ void intel_tc_port_unlock(struct intel_digital_port *dig_port)
>  				      wakeref);
>  }
> 
> +/**
> + * intel_tc_port_disconnect_phy: disconnect TypeC PHY from display port
> + * @dig_port: digital port
> + *
> + * Disconnect the given digital port from its TypeC PHY (handing back
> +the
> + * control of the PHY to the TypeC subsystem). The only purpose of this
> + * function is to force the disconnect even with a TypeC display output
> +still
> + * plugged to the TypeC connector, which is required by the TypeC
> +firmwares
> + * during system suspend and shutdown. Otherwise - during the unplug
> +event
> + * handling - the PHY ownership is released automatically by
> + * intel_tc_port_reset_mode(), when calling this function is not required.
> + */
> +void intel_tc_port_disconnect_phy(struct intel_digital_port *dig_port)
> +{
> +	__intel_tc_port_lock(dig_port, 1, true);
> +	intel_tc_port_unlock(dig_port);
> +}
> +
>  bool intel_tc_port_ref_held(struct intel_digital_port *dig_port)  {
>  	return mutex_is_locked(&dig_port->tc_lock) || @@ -711,7 +731,7 @@ bool
> intel_tc_port_ref_held(struct intel_digital_port *dig_port)  void
> intel_tc_port_get_link(struct intel_digital_port *dig_port,
>  			    int required_lanes)
>  {
> -	__intel_tc_port_lock(dig_port, required_lanes);
> +	__intel_tc_port_lock(dig_port, required_lanes, false);
>  	dig_port->tc_link_refcount++;
>  	intel_tc_port_unlock(dig_port);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h
> b/drivers/gpu/drm/i915/display/intel_tc.h
> index 0eacbd76ec155..0c881f645e279 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -13,6 +13,8 @@ struct intel_digital_port;  struct intel_encoder;
> 
>  bool intel_tc_port_connected(struct intel_encoder *encoder);
> +void intel_tc_port_disconnect_phy(struct intel_digital_port *dig_port);
> +
>  u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port);
>  u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
> int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port);
> --
> 2.27.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
