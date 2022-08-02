Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDC9587F02
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 17:34:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F3C8FAC5;
	Tue,  2 Aug 2022 15:33:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18EB711A03F
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 15:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659454415; x=1690990415;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uMmjw1cR2viz8SklmqQDZH7uYehzRpkJ01sXeLrYN5s=;
 b=MNGSbfsbRovJXGwBHZUNiVvVWaCFW5gh4ccLklbTQyEzdFvtciAP+zgy
 xzy5C5w2tFsKtALoCAuJJ545tafHpjTeT9UuBr9JdKTc9ZNKrUU+v9PfZ
 gHTlYWoqDfR4pgY5FBQRO36fEMjgK0CeCm5L40Qzt6b7yMPit/YI8ZLv9
 uUkTxgOfCucar9YuPm+f49mEF5ikRoR9MR1d9irqAHlPfurrcyxTNRmKZ
 WWexDwuRrkTUcXUA4PV0CGOGQg1Y2EHUiopg4MRBUiob3KZs+OpLRQrVr
 CDZn/uzAEthFbSzfaFGCxa4aIsBZ7EiOt1GpiNZpS6LN4HVUgcWyz6iKM w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="269817522"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="269817522"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:31:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="630750676"
Received: from llaviniu-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:31:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20220723001859.3883378-1-clinton.a.taylor@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220723001859.3883378-1-clinton.a.taylor@intel.com>
Date: Tue, 02 Aug 2022 18:31:25 +0300
Message-ID: <87o7x2ek6q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Audio keep alive
 timestamp cdclk divisors
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

On Fri, 22 Jul 2022, "Taylor, Clinton A" <clinton.a.taylor@intel.com> wrote:
> Use BSPEC values for the Audio Keep alive M and N values as included in
> the cdclk BSPEC pages for display > 13
>
> BSPEC: 54034, 55409
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 23 +------
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 79 ++++++++++++++--------
>  drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
>  3 files changed, 51 insertions(+), 52 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 6c9ee905f132..cb45be5edfec 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -945,37 +945,16 @@ void intel_audio_hooks_init(struct drm_i915_private=
 *dev_priv)
>  	}
>  }
>=20=20
> -struct aud_ts_cdclk_m_n {
> -	u8 m;
> -	u16 n;
> -};
> -
>  void intel_audio_cdclk_change_pre(struct drm_i915_private *i915)
>  {
>  	if (DISPLAY_VER(i915) >=3D 13)
>  		intel_de_rmw(i915, AUD_TS_CDCLK_M, AUD_TS_CDCLK_M_EN, 0);
>  }
>=20=20
> -static void get_aud_ts_cdclk_m_n(int refclk, int cdclk, struct aud_ts_cd=
clk_m_n *aud_ts)
> -{
> -	if (refclk =3D=3D 24000)
> -		aud_ts->m =3D 12;
> -	else
> -		aud_ts->m =3D 15;
> -
> -	aud_ts->n =3D cdclk * aud_ts->m / 24000;
> -}
> -
>  void intel_audio_cdclk_change_post(struct drm_i915_private *i915)
>  {
> -	struct aud_ts_cdclk_m_n aud_ts;
> -
>  	if (DISPLAY_VER(i915) >=3D 13) {
> -		get_aud_ts_cdclk_m_n(i915->cdclk.hw.ref, i915->cdclk.hw.cdclk, &aud_ts=
);
> -
> -		intel_de_write(i915, AUD_TS_CDCLK_N, aud_ts.n);
> -		intel_de_write(i915, AUD_TS_CDCLK_M, aud_ts.m | AUD_TS_CDCLK_M_EN);
> -		drm_dbg_kms(&i915->drm, "aud_ts_cdclk set to M=3D%u, N=3D%u\n", aud_ts=
.m, aud_ts.n);
> +		intel_update_audio_keep_alive(i915);
>  	}
>  }

The organization of the functions is now a bit silly to be honest.

intel_set_cdclk() in intel_cdclk.c -> intel_audio_cdclk_change_post() in
intel_audio.c -> intel_update_audio_keep_alive() in intel_cdclk.c.

Just drop the round trip to intel_audio.c? Or maybe add a function to
set the M/N and limit the audio register access to intel_audio.c like it
should be.

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 86a22c3766e5..57021ecad509 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -37,6 +37,7 @@
>  #include "intel_pcode.h"
>  #include "intel_psr.h"
>  #include "vlv_sideband.h"
> +#include "intel_audio_regs.h"

Alphabetical order please.

BR,
Jani.

>=20=20
>  /**
>   * DOC: CDCLK / RAWCLK
> @@ -1231,6 +1232,8 @@ struct intel_cdclk_vals {
>  	u16 waveform;
>  	u8 divider;	/* CD2X divider * 2 */
>  	u8 ratio;
> +	u16 aud_m;
> +	u16 aud_n;
>  };
>=20=20
>  static const struct intel_cdclk_vals bxt_cdclk_table[] =3D {
> @@ -1313,40 +1316,40 @@ static const struct intel_cdclk_vals adlp_a_step_=
cdclk_table[] =3D {
>  };
>=20=20
>  static const struct intel_cdclk_vals adlp_cdclk_table[] =3D {
> -	{ .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 3, .ratio =3D 27 },
> -	{ .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 20 },
> -	{ .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, .ratio =3D 32 },
> -	{ .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 58 },
> -	{ .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 68 },
> -
> -	{ .refclk =3D 24000, .cdclk =3D 176000, .divider =3D 3, .ratio =3D 22 },
> -	{ .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 16 },
> -	{ .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, .ratio =3D 26 },
> -	{ .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .ratio =3D 46 },
> -	{ .refclk =3D 24400, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 54 },
> -
> -	{ .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, .ratio =3D 14 },
> -	{ .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 10 },
> -	{ .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .ratio =3D 16 },
> -	{ .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 29 },
> -	{ .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 34 },
> +	{ .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 3, .ratio =3D 27, =
.aud_m =3D 0x3C, .aud_n =3D 0x140 },
> +	{ .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 20, =
.aud_m =3D 0x3C, .aud_n =3D 0x1E0 },
> +	{ .refclk =3D 19200, .cdclk =3D 307200, .divider =3D 2, .ratio =3D 32, =
.aud_m =3D 0x3C, .aud_n =3D 0x300 },
> +	{ .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 58, =
.aud_m =3D 0x3C, .aud_n =3D 0x570 },
> +	{ .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 68, =
.aud_m =3D 0x3C, .aud_n =3D 0x660 },
> +
> +	{ .refclk =3D 24000, .cdclk =3D 176000, .divider =3D 3, .ratio =3D 22, =
.aud_m =3D 0x3C, .aud_n =3D 0x1B8 },
> +	{ .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 16, =
.aud_m =3D 0x3C, .aud_n =3D 0x1E0  },
> +	{ .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, .ratio =3D 26, =
.aud_m =3D 0x3C, .aud_n =3D 0x30C },
> +	{ .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .ratio =3D 46, =
.aud_m =3D 0x3C, .aud_n =3D 0x564 },
> +	{ .refclk =3D 24400, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 54, =
.aud_m =3D 0x3C, .aud_n =3D 0x654 },
> +
> +	{ .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, .ratio =3D 14, =
.aud_m =3D 0x3C, .aud_n =3D 0x1C0 },
> +	{ .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 10, =
.aud_m =3D 0x3C, .aud_n =3D 0x1E0 },
> +	{ .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .ratio =3D 16, =
.aud_m =3D 0x3C, .aud_n =3D 0x300 },
> +	{ .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 29, =
.aud_m =3D 0x3C, .aud_n =3D 0x570 },
> +	{ .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 34, =
.aud_m =3D 0x3C, .aud_n =3D 0x660 },
>  	{}
>  };
>=20=20
>  static const struct intel_cdclk_vals dg2_cdclk_table[] =3D {
> -	{ .refclk =3D 38400, .cdclk =3D 163200, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0x8888 },
> -	{ .refclk =3D 38400, .cdclk =3D 204000, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0x9248 },
> -	{ .refclk =3D 38400, .cdclk =3D 244800, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xa4a4 },
> -	{ .refclk =3D 38400, .cdclk =3D 285600, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xa54a },
> -	{ .refclk =3D 38400, .cdclk =3D 326400, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xaaaa },
> -	{ .refclk =3D 38400, .cdclk =3D 367200, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xad5a },
> -	{ .refclk =3D 38400, .cdclk =3D 408000, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xb6b6 },
> -	{ .refclk =3D 38400, .cdclk =3D 448800, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xdbb6 },
> -	{ .refclk =3D 38400, .cdclk =3D 489600, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xeeee },
> -	{ .refclk =3D 38400, .cdclk =3D 530400, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xf7de },
> -	{ .refclk =3D 38400, .cdclk =3D 571200, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xfefe },
> -	{ .refclk =3D 38400, .cdclk =3D 612000, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xfffe },
> -	{ .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xffff },
> +	{ .refclk =3D 38400, .cdclk =3D 163200, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0x8888, .aud_m =3D 0x3C, .aud_n =3D 0x198 },
> +	{ .refclk =3D 38400, .cdclk =3D 204000, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0x9248, .aud_m =3D 0x3C, .aud_n =3D 0x1FE },
> +	{ .refclk =3D 38400, .cdclk =3D 244800, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xa4a4, .aud_m =3D 0x3C, .aud_n =3D 0x264 },
> +	{ .refclk =3D 38400, .cdclk =3D 285600, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xa54a, .aud_m =3D 0x3C, .aud_n =3D 0x2CA },
> +	{ .refclk =3D 38400, .cdclk =3D 326400, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xaaaa, .aud_m =3D 0x3C, .aud_n =3D 0x330 },
> +	{ .refclk =3D 38400, .cdclk =3D 367200, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xad5a, .aud_m =3D 0x3C, .aud_n =3D 0x396 },
> +	{ .refclk =3D 38400, .cdclk =3D 408000, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xb6b6, .aud_m =3D 0x3C, .aud_n =3D 0x3FC },
> +	{ .refclk =3D 38400, .cdclk =3D 448800, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xdbb6, .aud_m =3D 0x3C, .aud_n =3D 0x462 },
> +	{ .refclk =3D 38400, .cdclk =3D 489600, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xeeee, .aud_m =3D 0x3C, .aud_n =3D 0x4C8 },
> +	{ .refclk =3D 38400, .cdclk =3D 530400, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xf7de, .aud_m =3D 0x3C, .aud_n =3D 0x52E },
> +	{ .refclk =3D 38400, .cdclk =3D 571200, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xfefe, .aud_m =3D 0x3C, .aud_n =3D 0x594 },
> +	{ .refclk =3D 38400, .cdclk =3D 612000, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xfffe, .aud_m =3D 0x3C, .aud_n =3D 0x5FA },
> +	{ .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 34, =
.waveform =3D 0xffff, .aud_m =3D 0x3C, .aud_n =3D 0x660 },
>  	{}
>  };
>=20=20
> @@ -2189,6 +2192,22 @@ intel_set_cdclk_post_plane_update(struct intel_ato=
mic_state *state)
>  	}
>  }
>=20=20
> +void intel_update_audio_keep_alive(struct drm_i915_private *i915)
> +{
> +	const struct intel_cdclk_vals *table =3D i915->cdclk.table;
> +	int i;
> +
> +	for (i =3D 0; table[i].cdclk; i++)
> +		if (table[i].cdclk =3D=3D i915->cdclk.hw.cdclk) {
> +			intel_de_write(i915, AUD_TS_CDCLK_N, table[i].aud_n);
> +			intel_de_write(i915, AUD_TS_CDCLK_M, table[i].aud_m | AUD_TS_CDCLK_M_=
EN);
> +			drm_dbg_kms(&i915->drm, "aud_ts_cdclk set to M=3D%u, N=3D%u\n", table=
[i].aud_m, table[i].aud_n);
> +			return;
> +		}
> +
> +	drm_WARN(&i915->drm, 1, "aud_ts_cdclk %d not valid\n", i915->cdclk.hw.c=
dclk);
> +}
> +
>  static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc=
_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm=
/i915/display/intel_cdclk.h
> index b535cf6a7d9e..c9e0d5a21f19 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -82,5 +82,6 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state =
*state);
>  	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i=
915(state->base.dev)->cdclk.obj))
>=20=20
>  int intel_cdclk_init(struct drm_i915_private *dev_priv);
> +void intel_update_audio_keep_alive(struct drm_i915_private *dev_priv);
>=20=20
>  #endif /* __INTEL_CDCLK_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
