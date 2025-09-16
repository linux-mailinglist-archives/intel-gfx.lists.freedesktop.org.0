Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B7FB590F4
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BAAA10E72B;
	Tue, 16 Sep 2025 08:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD20F10E712;
 Tue, 16 Sep 2025 08:41:13 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uyRFO-00000000ozs-25Vk; Tue, 16 Sep 2025 11:41:11 +0300
Message-ID: <992a0e16853e0ce1a2a502d1a18797c30aeefa8a.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 11:41:09 +0300
In-Reply-To: <20250905145832.12097-7-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 06/13] drm/i915: Extract multiply_wm_latency() from
 skl_read_wm_latency()
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
> I want skl_read_wm_latency() to just do what it says on
> the tin, ie. read the latency values from the pcode mailbox.
> Move the DG2 "multiply by two" trick elsewhere.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/i915/display/skl_watermark.c | 29 ++++++++++++++------
>  1 file changed, 20 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 02b64e97ecfe..8a98c3e52dc5 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3174,6 +3174,15 @@ void skl_watermark_ipc_init(struct intel_display *=
display)
>  	skl_watermark_ipc_update(display);
>  }
> =20
> +static void multiply_wm_latency(struct intel_display *display, int mult)
> +{
> +	u16 *wm =3D display->wm.skl_latency;
> +	int level, num_levels =3D display->wm.num_levels;
> +
> +	for (level =3D 0; level < num_levels; level++)
> +		wm[level] *=3D mult;
> +}
> +
>  static bool need_16gb_dimm_wa(struct intel_display *display)
>  {
>  	const struct dram_info *dram_info =3D intel_dram_info(display->drm);
> @@ -3200,6 +3209,9 @@ adjust_wm_latency(struct intel_display *display)
>  	int i, level, num_levels =3D display->wm.num_levels;
>  	int read_latency =3D wm_read_latency(display);
> =20
> +	if (display->platform.dg2)
> +		multiply_wm_latency(display, 2);
> +
>  	/*
>  	 * If a level n (n > 1) has a 0us latency, all levels m (m >=3D n)
>  	 * need to be disabled. We make sure to sanitize the values out
> @@ -3262,7 +3274,6 @@ static void mtl_read_wm_latency(struct intel_displa=
y *display)
>  static void skl_read_wm_latency(struct intel_display *display)
>  {
>  	u16 *wm =3D display->wm.skl_latency;
> -	int mult =3D display->platform.dg2 ? 2 : 1;
>  	u32 val;
>  	int ret;
> =20
> @@ -3274,10 +3285,10 @@ static void skl_read_wm_latency(struct intel_disp=
lay *display)
>  		return;
>  	}
> =20
> -	wm[0] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val) * mult;
> -	wm[1] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
> -	wm[2] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
> -	wm[3] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
> +	wm[0] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val);
> +	wm[1] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val);
> +	wm[2] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val);
> +	wm[3] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val);
> =20
>  	/* read the second set of memory latencies[4:7] */
>  	val =3D 1; /* data0 to be programmed to 1 for second set */
> @@ -3287,10 +3298,10 @@ static void skl_read_wm_latency(struct intel_disp=
lay *display)
>  		return;
>  	}
> =20
> -	wm[4] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val) * mult;
> -	wm[5] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
> -	wm[6] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
> -	wm[7] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
> +	wm[4] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val);
> +	wm[5] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val);
> +	wm[6] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val);
> +	wm[7] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val);
>  }
> =20
>  static void skl_setup_wm_latency(struct intel_display *display)
