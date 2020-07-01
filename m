Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 727D7210E30
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 16:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4946E915;
	Wed,  1 Jul 2020 14:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7C446E91E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 14:58:39 +0000 (UTC)
IronPort-SDR: KQmWlIjojfOkBKFDVtLG8usRgvkHdDwDroo9Xx+F0MZ7us2taF7g7JchmpkPts+2HBft1rxlax
 bjeKODnXPz1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="144766723"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="144766723"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 07:58:39 -0700
IronPort-SDR: Wu/iT8A/w4Sr/+xyl9ifO8DhLnpazQF5/e7TfenQpD0BTDhJvBNlB/BXhBfS/MGSdafInvr8N/
 WK53r9R7rJEA==
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="455131687"
Received: from gaulion-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.61])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 07:58:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200625001120.22810-5-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
 <20200625001120.22810-5-lucas.demarchi@intel.com>
Date: Wed, 01 Jul 2020 17:58:34 +0300
Message-ID: <87d05fl1t1.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915/display: add phy,
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 24 Jun 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Identify 3 possible cases in which the index numbers can be different
> from the "port" and add them to the description-based ddi initialization
> table.  This can be used in place of additional functions mapping from
> one to the other.  Right now we already cover part of this by creating kind of
> virtual phy numbering, but that comes with downsides:
>
> a) there's not really a "phy numbering" in the spec, this is purely a
> software thing; hardware uses whatever they want thinking mapping from
> one to the other arbitrarily is easy in software.
>
> b) currently the mapping occurs on "leaf" functions, making the decision
> based on the platform for each of those functions
>
> With this new table the approach will be: the port, as defined by the
> enum port, is merely a driver convention and won't be used anymore to
> define the register offset or register bits. For that we have the other
> 3 indexes, identified as being possibly different from the current usage
> of register bits: ddi, vbt and phy. The phy type is also added here,
> meant to replace the checks for combo vs tc.
>
> v2: Rebase and add RKL
>

I guess I'd like to see where the *_idx fields will lead before
advocating for this.

With them removed,

Acked-by: Jani Nikula <jani.nikula@intel.com>

But I'm also not saying you can't have them - until I see where this
leads. ;)

One comment inline below.

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 64 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.h  |  8 +++
>  .../drm/i915/display/intel_display_types.h    |  4 ++
>  3 files changed, 45 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c234b50212b0..d591063502c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16806,57 +16806,59 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
>  }
>  
>  static const struct intel_ddi_port_info rkl_ports[] = {
> -	{ .name = "DDI A",   .port = PORT_A },
> -	{ .name = "DDI B",   .port = PORT_B },
> -	{ .name = "DDI TC1", .port = PORT_D },
> -	{ .name = "DDI TC2", .port = PORT_E },
> +	{ .name = "DDI A", .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
> +	{ .name = "DDI B", .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
> +	/* TODO: use continguous namespace for port once driver is converted */
> +	{ .name = "DDI C", .port = PORT_D, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x3, .phy_idx = 0x2, .vbt_idx = 0x2, },
> +	{ .name = "DDI D", .port = PORT_E, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x4, .phy_idx = 0x3, .vbt_idx = 0x3, },
>  	{ .port = PORT_NONE }
>  };
>  
>  static const struct intel_ddi_port_info tgl_ports[] = {
> -	{ .name = "DDI A",   .port = PORT_A },
> -	{ .name = "DDI B",   .port = PORT_B },
> -	{ .name = "DDI TC1", .port = PORT_D },
> -	{ .name = "DDI TC2", .port = PORT_E },
> -	{ .name = "DDI TC3", .port = PORT_F },
> -	{ .name = "DDI TC4", .port = PORT_G },
> -	{ .name = "DDI TC5", .port = PORT_H },
> -	{ .name = "DDI TC6", .port = PORT_I },
> +	{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
> +	{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
> +	/* TODO: use continguous namespace for port once driver is converted */
> +	{ .name = "DDI TC1", .port = PORT_D, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x2, },
> +	{ .name = "DDI TC2", .port = PORT_E, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x4, .phy_idx = 0x1, .vbt_idx = 0x3, },
> +	{ .name = "DDI TC3", .port = PORT_F, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x5, .phy_idx = 0x2, .vbt_idx = 0x4, },
> +	{ .name = "DDI TC4", .port = PORT_G, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x6, .phy_idx = 0x3, .vbt_idx = 0x5, },
> +	{ .name = "DDI TC5", .port = PORT_H, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x7, .phy_idx = 0x4, .vbt_idx = 0x6, },
> +	{ .name = "DDI TC6", .port = PORT_I, .phy_type = PHY_TYPE_DKL,   .ddi_idx = 0x8, .phy_idx = 0x5, .vbt_idx = 0x7, },
>  	{ .port = PORT_NONE }
>  };
>  
>  static const struct intel_ddi_port_info ehl_ports[] = {
> -	{ .name = "DDI A", .port = PORT_A },
> -	{ .name = "DDI B", .port = PORT_B },
> -	{ .name = "DDI C", .port = PORT_C },
> -	{ .name = "DDI D", .port = PORT_D },
> +	{ .name = "DDI A", .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
> +	{ .name = "DDI B", .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
> +	{ .name = "DDI C", .port = PORT_C, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2, },
> +	{ .name = "DDI D", .port = PORT_D, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x3, },
>  	{ .port = PORT_NONE }
>  };
>  
>  static const struct intel_ddi_port_info icl_ports[] = {
> -	{ .name = "DDI A",   .port = PORT_A },
> -	{ .name = "DDI B",   .port = PORT_B },
> -	{ .name = "DDI TC1", .port = PORT_C },
> -	{ .name = "DDI TC2", .port = PORT_D },
> -	{ .name = "DDI TC3", .port = PORT_E },
> -	{ .name = "DDI TC4", .port = PORT_F },
> +	{ .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0,},
> +	{ .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1,},
> +	{ .name = "DDI TC1", .port = PORT_C, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x2, .phy_idx = 0x0, .vbt_idx = 0x2,},
> +	{ .name = "DDI TC2", .port = PORT_D, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x3, .phy_idx = 0x1, .vbt_idx = 0x3,},
> +	{ .name = "DDI TC3", .port = PORT_E, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x4, .phy_idx = 0x2, .vbt_idx = 0x4,},
> +	{ .name = "DDI TC4", .port = PORT_F, .phy_type = PHY_TYPE_MG,    .ddi_idx = 0x5, .phy_idx = 0x3, .vbt_idx = 0x5,},
>  	{ .port = PORT_NONE }
>  };
>  
>  static const struct intel_ddi_port_info gen9lp_ports[] = {
> -	{ .name = "DDI A", .port = PORT_A },
> -	{ .name = "DDI B", .port = PORT_B },
> -	{ .name = "DDI C", .port = PORT_C },
> +	{ .name = "DDI A", .port = PORT_A, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0 },
> +	{ .name = "DDI B", .port = PORT_B, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1 },
> +	{ .name = "DDI C", .port = PORT_C, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2 },
>  	{ .port = PORT_NONE }
>  };
>  
>  static const struct intel_ddi_port_info ddi_ports[] = {
> -	{ .name = "DDI A", .port = PORT_A },
> -	{ .name = "DDI B", .port = PORT_B },
> -	{ .name = "DDI C", .port = PORT_C },
> -	{ .name = "DDI D", .port = PORT_D },
> -	{ .name = "DDI E", .port = PORT_E },
> -	{ .name = "DDI F", .port = PORT_F },
> +	{ .name = "DDI A", .port = PORT_A, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0 },
> +	{ .name = "DDI B", .port = PORT_B, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1 },
> +	{ .name = "DDI C", .port = PORT_C, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2 },
> +	{ .name = "DDI D", .port = PORT_D, .ddi_idx = 0x3, .phy_idx = 0x3, .vbt_idx = 0x3 },
> +	{ .name = "DDI E", .port = PORT_E, .ddi_idx = 0x4, .phy_idx = 0x4, .vbt_idx = 0x4 },
> +	{ .name = "DDI F", .port = PORT_F, .ddi_idx = 0x5, .phy_idx = 0x5, .vbt_idx = 0x5 },
>  	{ .port = PORT_NONE }
>  };
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index b7a6d56bac5f..22c999a54ff1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -311,6 +311,14 @@ enum phy {
>  	I915_MAX_PHYS
>  };
>  
> +enum phy_type {
> +	PHY_TYPE_NONE = 0,
> +
> +	PHY_TYPE_COMBO,
> +	PHY_TYPE_MG,
> +	PHY_TYPE_DKL,
> +};
> +
>  #define phy_name(a) ((a) + 'A')
>  
>  enum phy_fia {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 92cc7fc66bce..df587219c744 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1436,6 +1436,10 @@ struct intel_dp_mst_encoder {
>  struct intel_ddi_port_info {
>  	const char *name;
>  	enum port port;
> +	s8 phy_type;

Please make the type enum phy_type.

> +	u8 ddi_idx;
> +	u8 phy_idx;
> +	u8 vbt_idx;
>  };
>  
>  static inline enum dpio_channel

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
