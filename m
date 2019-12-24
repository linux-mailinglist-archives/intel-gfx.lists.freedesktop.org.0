Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8609F129C01
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 01:10:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E416E043;
	Tue, 24 Dec 2019 00:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FCC6E043
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 00:10:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 16:10:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="223110600"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 23 Dec 2019 16:10:44 -0800
Date: Mon, 23 Dec 2019 16:10:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191224001044.GW2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-8-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223195850.25997-8-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/display: add phy,
 vbt and ddi indexes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 11:58:48AM -0800, Lucas De Marchi wrote:
> Identify 3 possible cases in which the index numbers can be different
> from the "port" and add them to the description-based ddi initialization
> table.  This can be used in place of additional functions mapping from
> on to the other.  Right now we already cover part of this by creating kind of
> virtual phy numbering, but that comes with downsides:
> 
> a) there's not really a "phy numbering" in the spec, this is purely a
> software thing; hardware uses whatever they want thinking mapping from
> one to the other arbitrarily is easy in software.
> 
> b) currently the mapping occurs on "leaf" functions, making the decision
> based on the platform.
> 
> With this new table the approach will be: the port as defined by the
> enum port is purely a driver convention and won't be used anymore to
> define the register offset or register bits. For that we have the other
> 3 indexes, identified as being possibly different from the current usage
> of register bits: ddi, vbt and phy. The phy type is also added here,
> meant to replace the checks for combo vs tc (although the helper
> functions can remain so we may differentiate between, e.g. Dekel and MG
> phys).
> 
> While at it, also give names to the ports so they can be easily
> identified.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 54 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.h  |  7 +++
>  .../drm/i915/display/intel_display_types.h    |  5 ++
>  3 files changed, 39 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ad85cf75c815..219f180fa395 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16277,14 +16277,14 @@ static bool ddi_is_port_present(struct drm_i915_private *i915,
>  static const struct intel_output tgl_output = {
>  	.dsi_init = icl_dsi_init,
>  	.ddi_ports = {
> -		{ .port = PORT_A },
> -		{ .port = PORT_B },
> -		{ .port = PORT_D },
> -		{ .port = PORT_E },
> -		{ .port = PORT_F },
> -		{ .port = PORT_G },
> -		{ .port = PORT_H },
> -		{ .port = PORT_I },
> +		{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
> +		{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
> +		{ .name = "DDI TC1", .port = PORT_D, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x2, },
> +		{ .name = "DDI TC2", .port = PORT_E, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x4, .phy_idx = 0x1, .vbt_idx = 0x3, },
> +		{ .name = "DDI TC3", .port = PORT_F, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x5, .phy_idx = 0x2, .vbt_idx = 0x4, },
> +		{ .name = "DDI TC4", .port = PORT_G, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x6, .phy_idx = 0x3, .vbt_idx = 0x5, },
> +		{ .name = "DDI TC5", .port = PORT_H, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x7, .phy_idx = 0x4, .vbt_idx = 0x6, },
> +		{ .name = "DDI TC6", .port = PORT_I, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x8, .phy_idx = 0x5, .vbt_idx = 0x7, },
>  		{ .port = PORT_NONE }
>  	}
>  };
> @@ -16293,12 +16293,12 @@ static const struct intel_output icl_output = {
>  	.dsi_init = icl_dsi_init,
>  	.is_port_present = icl_is_port_present,
>  	.ddi_ports = {
> -		{ .port = PORT_A },
> -		{ .port = PORT_B },
> -		{ .port = PORT_C },
> -		{ .port = PORT_D },
> -		{ .port = PORT_E },
> -		{ .port = PORT_F },
> +		{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
> +		{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
> +		{ .name = "DDI TC1", .port = PORT_C, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x2, .phy_idx = 0x0, .vbt_idx = 0x2, },
> +		{ .name = "DDI TC2", .port = PORT_D, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x3, .phy_idx = 0x1, .vbt_idx = 0x3, },
> +		{ .name = "DDI TC3", .port = PORT_E, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x4, .phy_idx = 0x2, .vbt_idx = 0x4, },
> +		{ .name = "DDI TC4", .port = PORT_F, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x5, .phy_idx = 0x3, .vbt_idx = 0x5, },
>  		{ .port = PORT_NONE }
>  	}
>  };
> @@ -16306,10 +16306,10 @@ static const struct intel_output icl_output = {
>  static const struct intel_output ehl_output = {
>  	.dsi_init = icl_dsi_init,
>  	.ddi_ports = {
> -		{ .port = PORT_A },
> -		{ .port = PORT_B },
> -		{ .port = PORT_C },
> -		{ .port = PORT_D },
> +		{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
> +		{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
> +		{ .name = "DDI C",   .port = PORT_C, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2, },
> +		{ .name = "DDI D",   .port = PORT_D, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x3, },
>  		{ .port = PORT_NONE }
>  	}
>  };
> @@ -16317,9 +16317,9 @@ static const struct intel_output ehl_output = {
>  static const struct intel_output gen9lp_output = {
>  	.dsi_init = vlv_dsi_init,
>  	.ddi_ports = {
> -		{ .port = PORT_A },
> -		{ .port = PORT_B },
> -		{ .port = PORT_C },
> +		{ .name = "DDI A", .port = PORT_A, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0 },
> +		{ .name = "DDI B", .port = PORT_B, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1 },
> +		{ .name = "DDI C", .port = PORT_C, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2 },
>  		{ .port = PORT_NONE }
>  	},
>  };
> @@ -16327,12 +16327,12 @@ static const struct intel_output gen9lp_output = {
>  static const struct intel_output ddi_output = {
>  	.is_port_present = ddi_is_port_present,
>  	.ddi_ports = {
> -		{ .port = PORT_A },
> -		{ .port = PORT_B },
> -		{ .port = PORT_C },
> -		{ .port = PORT_D },
> -		{ .port = PORT_E },
> -		{ .port = PORT_F },
> +		{ .name = "DDI A", .port = PORT_A, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0 },
> +		{ .name = "DDI B", .port = PORT_B, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1 },
> +		{ .name = "DDI C", .port = PORT_C, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2 },
> +		{ .name = "DDI D", .port = PORT_D, .ddi_idx = 0x3, .phy_idx = 0x3, .vbt_idx = 0x3 },
> +		{ .name = "DDI E", .port = PORT_E, .ddi_idx = 0x4, .phy_idx = 0x4, .vbt_idx = 0x4 },
> +		{ .name = "DDI F", .port = PORT_F, .ddi_idx = 0x5, .phy_idx = 0x5, .vbt_idx = 0x5 },
>  		{ .port = PORT_NONE }
>  	}
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 05d68bd393dc..db19e5eee248 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -303,6 +303,13 @@ enum phy {
>  	I915_MAX_PHYS
>  };
>  
> +enum phy_type {
> +	PHY_TYPE_NONE = 0,
> +
> +	PHY_TYPE_COMBO,
> +	PHY_TYPE_TC,
> +};

Why not go ahead and actually specify the true phy type in the enum?

        enum phy_type {
                PHY_TYPE_NONE = 0,

                PHY_TYPE_COMBO,
                PHY_TYPE_MG,
                PHY_TYPE_DKL,
                PHY_TYPE_FOO,
                PHY_TYPE_BAR,
        };

and then once your series is complete the helpers can figure out whether
something is "type c" with something like
   type == MG || type == DKL || type == BAR


Matt

> +
>  #define phy_name(a) ((a) + 'A')
>  
>  enum phy_fia {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 4d2f4ee35812..23a885895803 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1377,7 +1377,12 @@ struct intel_dp_mst_encoder {
>  };
>  
>  struct intel_ddi_port_info {
> +	const char *name;
>  	enum port port;
> +	s8 phy_type;
> +	u8 ddi_idx;
> +	u8 phy_idx;
> +	u8 vbt_idx;
>  };
>  
>  static inline enum dpio_channel
> -- 
> 2.24.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
