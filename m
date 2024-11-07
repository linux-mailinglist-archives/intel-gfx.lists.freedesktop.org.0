Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D66C9C00F5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:18:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365B610E31A;
	Thu,  7 Nov 2024 09:18:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+XNBSQy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 869EC10E31A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 09:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971088; x=1762507088;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=DGR5oShtHQB/3gkphzuoUrAuyBNOXEnreBJCU6MC7VM=;
 b=C+XNBSQySx0cvYmGinpWiGkMkBeZ886a2VAb/bqsxvFUOou3gRTfwczK
 rQk0wUPTW66r4duWV3BKFeSxL+XCJbB4LxvkaiygGXFpAtLpG/6241u3v
 QiSMbEnrXWpTAyq2BT2tlFKZZnkEV7lwwGkwDs7mMIuSMov22xHdL7Sau
 smSj1zL+CYyb2WpP6yOWw4fbhlkiZn+9lbJjV3aCHIhnNshtlleqjycvX
 zLqVORfUXzjq0UGxZOPLKofM73Tk5QB50OVgJazqS2RHC/kB3qU6vlgT1
 KzuAjsjEEfMejNrfXwpOOCePu3xCAPB0W2O0tCSE7jKMwxxm0u5tZPsZn w==;
X-CSE-ConnectionGUID: oY23cpHxS3CXOX+UqaetMw==
X-CSE-MsgGUID: 2qzhDe6BSISupcqdockv2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="30684521"
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="30684521"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:18:07 -0800
X-CSE-ConnectionGUID: f6zwvsOmQWC5OS4dpgWBpw==
X-CSE-MsgGUID: 8aQEOBkPTqangnOorb3RKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="84620807"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:18:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/8] drm/i915/pps: Store the power cycle delay without
 the +1
In-Reply-To: <20241106215859.25446-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
 <20241106215859.25446-2-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 11:18:02 +0200
Message-ID: <87jzdfflmd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 06 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The code initializing the power sequencing delays is a bit
> hard to follow. One confusing thing is that we keep doing the
> +/-1 adjustment for the hardware register value in several places.
> Simplify this a bit by doing the adjustment only when reading or
> writing the actual register.
>
> This also matches how the LVDS code does things.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 28 ++++++++++--------------
>  1 file changed, 12 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 093fe37a3983..83d65105f32b 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1390,7 +1390,7 @@ static void
>  intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_s=
eq *seq)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	u32 pp_on, pp_off, pp_ctl;
> +	u32 pp_on, pp_off, pp_ctl, power_cycle_delay;
>  	struct pps_registers regs;
>=20=20
>  	intel_pps_get_registers(intel_dp, &regs);
> @@ -1415,10 +1415,13 @@ intel_pps_readout_hw_state(struct intel_dp *intel=
_dp, struct edp_power_seq *seq)
>=20=20
>  		pp_div =3D intel_de_read(display, regs.pp_div);
>=20=20
> -		seq->t11_t12 =3D REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, pp_div) *=
 1000;
> +		power_cycle_delay =3D REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, pp_d=
iv);
>  	} else {
> -		seq->t11_t12 =3D REG_FIELD_GET(BXT_POWER_CYCLE_DELAY_MASK, pp_ctl) * 1=
000;
> +		power_cycle_delay =3D REG_FIELD_GET(BXT_POWER_CYCLE_DELAY_MASK, pp_ctl=
);
>  	}
> +
> +	/* hardware wants <delay>+1 in 100ms units */
> +	seq->t11_t12 =3D power_cycle_delay ? (power_cycle_delay - 1) * 1000 : 0;
>  }
>=20=20
>  static void
> @@ -1494,12 +1497,6 @@ static void pps_init_delays_vbt(struct intel_dp *i=
ntel_dp,
>  			    vbt->t11_t12);
>  	}
>=20=20
> -	/* T11_T12 delay is special and actually in units of 100ms, but zero
> -	 * based in the hw (so we need to add 100 ms). But the sw vbt
> -	 * table multiplies it with 1000 to make it in units of 100usec,
> -	 * too. */
> -	vbt->t11_t12 +=3D 100 * 10;
> -
>  	intel_pps_dump_state(intel_dp, "vbt", vbt);
>  }
>=20=20
> @@ -1516,11 +1513,7 @@ static void pps_init_delays_spec(struct intel_dp *=
intel_dp,
>  	spec->t8 =3D 50 * 10; /* no limit for t8, use t7 instead */
>  	spec->t9 =3D 50 * 10; /* no limit for t9, make it symmetric with t8 */
>  	spec->t10 =3D 500 * 10;
> -	/* This one is special and actually in units of 100ms, but zero
> -	 * based in the hw (so we need to add 100 ms). But the sw vbt
> -	 * table multiplies it with 1000 to make it in units of 100usec,
> -	 * too. */
> -	spec->t11_t12 =3D (510 + 100) * 10;
> +	spec->t11_t12 =3D 510 * 10;
>=20=20
>  	intel_pps_dump_state(intel_dp, "spec", spec);
>  }
> @@ -1665,11 +1658,14 @@ static void pps_init_registers(struct intel_dp *i=
ntel_dp, bool force_disable_vdd
>  	 */
>  	if (i915_mmio_reg_valid(regs.pp_div))
>  		intel_de_write(display, regs.pp_div,
> -			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1)=
 | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, =
1000)));
> +			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK,
> +					      (100 * div) / 2 - 1) |
> +			       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK,
> +					      DIV_ROUND_UP(seq->t11_t12, 1000) + 1));
>  	else
>  		intel_de_rmw(display, regs.pp_ctrl, BXT_POWER_CYCLE_DELAY_MASK,
>  			     REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK,
> -					    DIV_ROUND_UP(seq->t11_t12, 1000)));
> +					    DIV_ROUND_UP(seq->t11_t12, 1000) + 1));
>=20=20
>  	drm_dbg_kms(display->drm,
>  		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, P=
P_DIV %#x\n",

--=20
Jani Nikula, Intel
