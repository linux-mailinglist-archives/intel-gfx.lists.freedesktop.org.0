Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3318211182
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 19:04:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6C16E95F;
	Wed,  1 Jul 2020 17:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E511E6E95F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 17:04:33 +0000 (UTC)
IronPort-SDR: BNq3KsiYrnaKuJSlOgIhSvbsewa7Rkl41oqt8QbWmJbG83Ubw+RMPJqaStvD9OTznUT/fm0B2p
 Z8cMGwJOz5TA==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="126735203"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="126735203"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 10:04:33 -0700
IronPort-SDR: Ard3oz3QNftcXRkARE9b5OMLXVCDCyjUhDfmUmKAcrrJ/knEBcGlGu2N7FQzqNywj8QSY3ttG7
 4oJFpTyTwSUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="313832786"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 01 Jul 2020 10:04:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Jul 2020 20:04:30 +0300
Date: Wed, 1 Jul 2020 20:04:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200701170430.GB6112@intel.com>
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
 <20200625001120.22810-5-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625001120.22810-5-lucas.demarchi@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 24, 2020 at 05:11:18PM -0700, Lucas De Marchi wrote:
> Identify 3 possible cases in which the index numbers can be different
> from the "port" and add them to the description-based ddi initialization
> table.  This can be used in place of additional functions mapping from
> one to the other.  Right now we already cover part of this by creating ki=
nd of
> virtual phy numbering, but that comes with downsides:
> =

> a) there's not really a "phy numbering" in the spec, this is purely a
> software thing; hardware uses whatever they want thinking mapping from
> one to the other arbitrarily is easy in software.
> =

> b) currently the mapping occurs on "leaf" functions, making the decision
> based on the platform for each of those functions
> =

> With this new table the approach will be: the port, as defined by the
> enum port, is merely a driver convention and won't be used anymore to
> define the register offset or register bits. For that we have the other
> 3 indexes, identified as being possibly different from the current usage
> of register bits: ddi, vbt and phy. The phy type is also added here,
> meant to replace the checks for combo vs tc.
> =

> v2: Rebase and add RKL
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 64 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.h  |  8 +++
>  .../drm/i915/display/intel_display_types.h    |  4 ++
>  3 files changed, 45 insertions(+), 31 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index c234b50212b0..d591063502c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16806,57 +16806,59 @@ static void intel_pps_init(struct drm_i915_priv=
ate *dev_priv)
>  }
>  =

>  static const struct intel_ddi_port_info rkl_ports[] =3D {
> -	{ .name =3D "DDI A",   .port =3D PORT_A },
> -	{ .name =3D "DDI B",   .port =3D PORT_B },
> -	{ .name =3D "DDI TC1", .port =3D PORT_D },
> -	{ .name =3D "DDI TC2", .port =3D PORT_E },
> +	{ .name =3D "DDI A", .port =3D PORT_A, .phy_type =3D PHY_TYPE_COMBO, .d=
di_idx =3D 0x0, .phy_idx =3D 0x0, .vbt_idx =3D 0x0, },

I'm thinking we won't need ddi_idx and instead 'port' should suffice.
We can add the aliases with the TC names for tgl+ to unconfuse the
current mess. In fact I already tried that in a local branch (while
doing the hpd_pin cleanup) and it looks mostly fine to me. There are
a few annoying parts, like power domains, where we still end up with
port G-I names that don't exist anywhere in bspec (excetp in VBT).

Not really sure about the other bare numbers you're using here either.
Migth just make things less confusing if we don't have names for many
things. So I think enums would be better.

And I think this stuff should probably go into intel_ddi.c instead
of intel_display.c.


> +	{ .name =3D "DDI B", .port =3D PORT_B, .phy_type =3D PHY_TYPE_COMBO, .d=
di_idx =3D 0x1, .phy_idx =3D 0x1, .vbt_idx =3D 0x1, },
> +	/* TODO: use continguous namespace for port once driver is converted */
> +	{ .name =3D "DDI C", .port =3D PORT_D, .phy_type =3D PHY_TYPE_COMBO, .d=
di_idx =3D 0x3, .phy_idx =3D 0x2, .vbt_idx =3D 0x2, },
> +	{ .name =3D "DDI D", .port =3D PORT_E, .phy_type =3D PHY_TYPE_COMBO, .d=
di_idx =3D 0x4, .phy_idx =3D 0x3, .vbt_idx =3D 0x3, },
>  	{ .port =3D PORT_NONE }
>  };
>  =

>  static const struct intel_ddi_port_info tgl_ports[] =3D {
> -	{ .name =3D "DDI A",   .port =3D PORT_A },
> -	{ .name =3D "DDI B",   .port =3D PORT_B },
> -	{ .name =3D "DDI TC1", .port =3D PORT_D },
> -	{ .name =3D "DDI TC2", .port =3D PORT_E },
> -	{ .name =3D "DDI TC3", .port =3D PORT_F },
> -	{ .name =3D "DDI TC4", .port =3D PORT_G },
> -	{ .name =3D "DDI TC5", .port =3D PORT_H },
> -	{ .name =3D "DDI TC6", .port =3D PORT_I },
> +	{ .name =3D "DDI A",   .port =3D PORT_A, .phy_type =3D PHY_TYPE_COMBO, =
.ddi_idx =3D 0x0, .phy_idx =3D 0x0, .vbt_idx =3D 0x0, },
> +	{ .name =3D "DDI B",   .port =3D PORT_B, .phy_type =3D PHY_TYPE_COMBO, =
.ddi_idx =3D 0x1, .phy_idx =3D 0x1, .vbt_idx =3D 0x1, },
> +	/* TODO: use continguous namespace for port once driver is converted */
> +	{ .name =3D "DDI TC1", .port =3D PORT_D, .phy_type =3D PHY_TYPE_DKL,   =
.ddi_idx =3D 0x3, .phy_idx =3D 0x0, .vbt_idx =3D 0x2, },
> +	{ .name =3D "DDI TC2", .port =3D PORT_E, .phy_type =3D PHY_TYPE_DKL,   =
.ddi_idx =3D 0x4, .phy_idx =3D 0x1, .vbt_idx =3D 0x3, },
> +	{ .name =3D "DDI TC3", .port =3D PORT_F, .phy_type =3D PHY_TYPE_DKL,   =
.ddi_idx =3D 0x5, .phy_idx =3D 0x2, .vbt_idx =3D 0x4, },
> +	{ .name =3D "DDI TC4", .port =3D PORT_G, .phy_type =3D PHY_TYPE_DKL,   =
.ddi_idx =3D 0x6, .phy_idx =3D 0x3, .vbt_idx =3D 0x5, },
> +	{ .name =3D "DDI TC5", .port =3D PORT_H, .phy_type =3D PHY_TYPE_DKL,   =
.ddi_idx =3D 0x7, .phy_idx =3D 0x4, .vbt_idx =3D 0x6, },
> +	{ .name =3D "DDI TC6", .port =3D PORT_I, .phy_type =3D PHY_TYPE_DKL,   =
.ddi_idx =3D 0x8, .phy_idx =3D 0x5, .vbt_idx =3D 0x7, },
>  	{ .port =3D PORT_NONE }
>  };
>  =

>  static const struct intel_ddi_port_info ehl_ports[] =3D {
> -	{ .name =3D "DDI A", .port =3D PORT_A },
> -	{ .name =3D "DDI B", .port =3D PORT_B },
> -	{ .name =3D "DDI C", .port =3D PORT_C },
> -	{ .name =3D "DDI D", .port =3D PORT_D },
> +	{ .name =3D "DDI A", .port =3D PORT_A, .phy_type =3D PHY_TYPE_COMBO, .d=
di_idx =3D 0x0, .phy_idx =3D 0x0, .vbt_idx =3D 0x0, },
> +	{ .name =3D "DDI B", .port =3D PORT_B, .phy_type =3D PHY_TYPE_COMBO, .d=
di_idx =3D 0x1, .phy_idx =3D 0x1, .vbt_idx =3D 0x1, },
> +	{ .name =3D "DDI C", .port =3D PORT_C, .phy_type =3D PHY_TYPE_COMBO, .d=
di_idx =3D 0x2, .phy_idx =3D 0x2, .vbt_idx =3D 0x2, },
> +	{ .name =3D "DDI D", .port =3D PORT_D, .phy_type =3D PHY_TYPE_COMBO, .d=
di_idx =3D 0x3, .phy_idx =3D 0x0, .vbt_idx =3D 0x3, },
>  	{ .port =3D PORT_NONE }
>  };
>  =

>  static const struct intel_ddi_port_info icl_ports[] =3D {
> -	{ .name =3D "DDI A",   .port =3D PORT_A },
> -	{ .name =3D "DDI B",   .port =3D PORT_B },
> -	{ .name =3D "DDI TC1", .port =3D PORT_C },
> -	{ .name =3D "DDI TC2", .port =3D PORT_D },
> -	{ .name =3D "DDI TC3", .port =3D PORT_E },
> -	{ .name =3D "DDI TC4", .port =3D PORT_F },
> +	{ .name =3D "DDI A",   .port =3D PORT_A, .phy_type =3D PHY_TYPE_COMBO, =
.ddi_idx =3D 0x0, .phy_idx =3D 0x0, .vbt_idx =3D 0x0,},
> +	{ .name =3D "DDI B",   .port =3D PORT_B, .phy_type =3D PHY_TYPE_COMBO, =
.ddi_idx =3D 0x1, .phy_idx =3D 0x1, .vbt_idx =3D 0x1,},
> +	{ .name =3D "DDI TC1", .port =3D PORT_C, .phy_type =3D PHY_TYPE_MG,    =
.ddi_idx =3D 0x2, .phy_idx =3D 0x0, .vbt_idx =3D 0x2,},
> +	{ .name =3D "DDI TC2", .port =3D PORT_D, .phy_type =3D PHY_TYPE_MG,    =
.ddi_idx =3D 0x3, .phy_idx =3D 0x1, .vbt_idx =3D 0x3,},
> +	{ .name =3D "DDI TC3", .port =3D PORT_E, .phy_type =3D PHY_TYPE_MG,    =
.ddi_idx =3D 0x4, .phy_idx =3D 0x2, .vbt_idx =3D 0x4,},
> +	{ .name =3D "DDI TC4", .port =3D PORT_F, .phy_type =3D PHY_TYPE_MG,    =
.ddi_idx =3D 0x5, .phy_idx =3D 0x3, .vbt_idx =3D 0x5,},
>  	{ .port =3D PORT_NONE }
>  };
>  =

>  static const struct intel_ddi_port_info gen9lp_ports[] =3D {
> -	{ .name =3D "DDI A", .port =3D PORT_A },
> -	{ .name =3D "DDI B", .port =3D PORT_B },
> -	{ .name =3D "DDI C", .port =3D PORT_C },
> +	{ .name =3D "DDI A", .port =3D PORT_A, .ddi_idx =3D 0x0, .phy_idx =3D 0=
x0, .vbt_idx =3D 0x0 },
> +	{ .name =3D "DDI B", .port =3D PORT_B, .ddi_idx =3D 0x1, .phy_idx =3D 0=
x1, .vbt_idx =3D 0x1 },
> +	{ .name =3D "DDI C", .port =3D PORT_C, .ddi_idx =3D 0x2, .phy_idx =3D 0=
x2, .vbt_idx =3D 0x2 },
>  	{ .port =3D PORT_NONE }
>  };
>  =

>  static const struct intel_ddi_port_info ddi_ports[] =3D {
> -	{ .name =3D "DDI A", .port =3D PORT_A },
> -	{ .name =3D "DDI B", .port =3D PORT_B },
> -	{ .name =3D "DDI C", .port =3D PORT_C },
> -	{ .name =3D "DDI D", .port =3D PORT_D },
> -	{ .name =3D "DDI E", .port =3D PORT_E },
> -	{ .name =3D "DDI F", .port =3D PORT_F },
> +	{ .name =3D "DDI A", .port =3D PORT_A, .ddi_idx =3D 0x0, .phy_idx =3D 0=
x0, .vbt_idx =3D 0x0 },
> +	{ .name =3D "DDI B", .port =3D PORT_B, .ddi_idx =3D 0x1, .phy_idx =3D 0=
x1, .vbt_idx =3D 0x1 },
> +	{ .name =3D "DDI C", .port =3D PORT_C, .ddi_idx =3D 0x2, .phy_idx =3D 0=
x2, .vbt_idx =3D 0x2 },
> +	{ .name =3D "DDI D", .port =3D PORT_D, .ddi_idx =3D 0x3, .phy_idx =3D 0=
x3, .vbt_idx =3D 0x3 },
> +	{ .name =3D "DDI E", .port =3D PORT_E, .ddi_idx =3D 0x4, .phy_idx =3D 0=
x4, .vbt_idx =3D 0x4 },
> +	{ .name =3D "DDI F", .port =3D PORT_F, .ddi_idx =3D 0x5, .phy_idx =3D 0=
x5, .vbt_idx =3D 0x5 },
>  	{ .port =3D PORT_NONE }
>  };
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index b7a6d56bac5f..22c999a54ff1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -311,6 +311,14 @@ enum phy {
>  	I915_MAX_PHYS
>  };
>  =

> +enum phy_type {
> +	PHY_TYPE_NONE =3D 0,
> +
> +	PHY_TYPE_COMBO,
> +	PHY_TYPE_MG,
> +	PHY_TYPE_DKL,
> +};
> +
>  #define phy_name(a) ((a) + 'A')
>  =

>  enum phy_fia {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 92cc7fc66bce..df587219c744 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1436,6 +1436,10 @@ struct intel_dp_mst_encoder {
>  struct intel_ddi_port_info {
>  	const char *name;
>  	enum port port;
> +	s8 phy_type;
> +	u8 ddi_idx;
> +	u8 phy_idx;
> +	u8 vbt_idx;
>  };
>  =

>  static inline enum dpio_channel
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
