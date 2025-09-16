Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81A1B59029
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:15:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35FFD89CCE;
	Tue, 16 Sep 2025 08:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E709989CCE
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 08:15:44 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uyQqa-00000000owa-46DW; Tue, 16 Sep 2025 11:15:41 +0300
Message-ID: <583d139ee01028f5fc90e37ab83090c5ec8dd403.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 11:15:32 +0300
In-Reply-To: <20250905145832.12097-2-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 01/13] drm/i915/dram: Also apply the 16Gb DIMM w/a for
 larger DRAM chips
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

On Fri, 2025-09-05 at 17:58 +0300, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> While the spec only asks us to do the WM0 latency bump for 16Gb
> DRAM devices I believe we should apply it for larger DRAM chips.
> At the time the w/a was added there were no larger chips on
> the market, but I think I've seen at least 32Gb DDR4 chips
> being available these days.
>=20
> Whether it's possible to actually find suitable DIMMs for the
> affected systems with largers chips I don't know. Also it's
> not known whether the 1 usec latency bump would be sufficient
> for larger chips. Someone would need to find such DIMMs and
> test this. Fortunately we do have a bit of extra latency already
> with the 1 usec bump, as the actual requirement was .4 usec for
> for 16Gb chips.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Sound reasonable.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.




>  drivers/gpu/drm/i915/display/skl_watermark.c |  4 ++--
>  drivers/gpu/drm/i915/soc/intel_dram.c        | 10 +++++-----
>  2 files changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 0b9c86042e78..b7482d428868 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3209,9 +3209,9 @@ adjust_wm_latency(struct intel_display *display,
>  	}
> =20
>  	/*
> -	 * WA Level-0 adjustment for 16Gb DIMMs: SKL+
> +	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
>  	 * If we could not get dimm info enable this WA to prevent from
> -	 * any underrun. If not able to get DIMM info assume 16Gb DIMM
> +	 * any underrun. If not able to get DIMM info assume 16Gb+ DIMM
>  	 * to avoid any underrun.
>  	 */
>  	if (!display->platform.dg2 && dram_info->has_16gb_dimms)
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915=
/soc/intel_dram.c
> index 149527827624..8e81573022ff 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -335,7 +335,7 @@ static bool
>  skl_is_16gb_dimm(const struct dram_dimm_info *dimm)
>  {
>  	/* Convert total Gb to Gb per DRAM device */
> -	return dimm->size / (intel_dimm_num_devices(dimm) ?: 1) =3D=3D 16;
> +	return dimm->size / (intel_dimm_num_devices(dimm) ?: 1) >=3D 16;
>  }
> =20
>  static void
> @@ -354,7 +354,7 @@ skl_dram_get_dimm_info(struct drm_i915_private *i915,
>  	}
> =20
>  	drm_dbg_kms(&i915->drm,
> -		    "CH%u DIMM %c size: %u Gb, width: X%u, ranks: %u, 16Gb DIMMs: %s\n=
",
> +		    "CH%u DIMM %c size: %u Gb, width: X%u, ranks: %u, 16Gb+ DIMMs: %s\=
n",
>  		    channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
>  		    str_yes_no(skl_is_16gb_dimm(dimm)));
>  }
> @@ -384,7 +384,7 @@ skl_dram_get_channel_info(struct drm_i915_private *i9=
15,
>  	ch->is_16gb_dimm =3D skl_is_16gb_dimm(&ch->dimm_l) ||
>  		skl_is_16gb_dimm(&ch->dimm_s);
> =20
> -	drm_dbg_kms(&i915->drm, "CH%u ranks: %u, 16Gb DIMMs: %s\n",
> +	drm_dbg_kms(&i915->drm, "CH%u ranks: %u, 16Gb+ DIMMs: %s\n",
>  		    channel, ch->ranks, str_yes_no(ch->is_16gb_dimm));
> =20
>  	return 0;
> @@ -406,7 +406,7 @@ skl_dram_get_channels_info(struct drm_i915_private *i=
915, struct dram_info *dram
>  	u32 val;
>  	int ret;
> =20
> -	/* Assume 16Gb DIMMs are present until proven otherwise */
> +	/* Assume 16Gb+ DIMMs are present until proven otherwise */
>  	dram_info->has_16gb_dimms =3D true;
> =20
>  	val =3D intel_uncore_read(&i915->uncore,
> @@ -438,7 +438,7 @@ skl_dram_get_channels_info(struct drm_i915_private *i=
915, struct dram_info *dram
>  	drm_dbg_kms(&i915->drm, "Memory configuration is symmetric? %s\n",
>  		    str_yes_no(dram_info->symmetric_memory));
> =20
> -	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
> +	drm_dbg_kms(&i915->drm, "16Gb+ DIMMs: %s\n",
>  		    str_yes_no(dram_info->has_16gb_dimms));
> =20
>  	return 0;
