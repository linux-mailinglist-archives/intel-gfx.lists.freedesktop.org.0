Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E22AB594E6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 13:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99BF110E1A3;
	Tue, 16 Sep 2025 11:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A650F10E1A3;
 Tue, 16 Sep 2025 11:15:55 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uyTf4-00000000pBx-3AJi; Tue, 16 Sep 2025 14:15:52 +0300
Message-ID: <f172484823b7995c126a06201a01ed839db2e0e3.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 14:15:49 +0300
In-Reply-To: <20250905145832.12097-14-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-14-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,URIBL_BLOCKED,URIBL_DBL_BLOCKED_OPENDNS autolearn=ham
 autolearn_force=no version=4.0.1
Subject: Re: [PATCH 13/13] drm/i915: Make sure wm block/lines are
 non-decreasing
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
> The watermark algorithm sometimes produces results where higher
> watermark levels have smaller blocks/lines watermarks than the lower
> levels. That doesn't really make sense as the corresponding latencies
> are supposed to be non-decreasing. It's unclear how the hardware
> responds to such watermark values, so it seems better to avoid that
> case and just make sure the values are always non-decreasing.
>=20
> Here's an example how things change for such a case on a GLK NUC:
>  [PLANE:70:cursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm=
, swm, stwm -> *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
>  [PLANE:70:cursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0=
,   0,    0 ->    4,   4,   4,   2,   2,   2,   2,   2,   0,   0,    0
>  [PLANE:70:cursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0=
,   0,    0 ->   11,  11,  12,   7,   7,   7,   7,   7,  25,   0,    0
>  [PLANE:70:cursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0=
,   0,    0 ->   12,  12,  13,   8,   8,   8,   8,   8,  26,   0,    0
> ->
>  [PLANE:70:cursor A]   level  wm0, wm1, wm2, wm3, wm4, wm5, wm6, wm7, twm=
, swm, stwm -> *wm0,*wm1,*wm2,*wm3,*wm4,*wm5,*wm6,*wm7,*twm, swm, stwm
>  [PLANE:70:cursor A]   lines    0,   0,   0,   0,   0,   0,   0,   0,   0=
,   0,    0 ->    4,   4,   4,   4,   4,   4,   4,   4,   0,   0,    0
>  [PLANE:70:cursor A]  blocks    0,   0,   0,   0,   0,   0,   0,   0,   0=
,   0,    0 ->   11,  11,  12,  12,  12,  12,  12,  12,  25,   0,    0
>  [PLANE:70:cursor A] min_ddb    0,   0,   0,   0,   0,   0,   0,   0,   0=
,   0,    0 ->   12,  12,  13,  13,  13,  13,  13,  13,  26,   0,    0
>=20
> Whether this actually helps on any display blinking issues is unclear.
>=20
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8683
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Okay, maybe this answers my question to the other monotonic patch.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.



>  drivers/gpu/drm/i915/display/skl_watermark.c | 21 +++++++++++---------
>  1 file changed, 12 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index a40113aa3f3e..6e268836f5c6 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1878,18 +1878,21 @@ static void skl_compute_plane_wm(const struct int=
el_crtc_state *crtc_state,
>  			} else {
>  				blocks++;
>  			}
> -
> -			/*
> -			 * Make sure result blocks for higher latency levels are
> -			 * at least as high as level below the current level.
> -			 * Assumption in DDB algorithm optimization for special
> -			 * cases. Also covers Display WA #1125 for RC.
> -			 */
> -			if (result_prev->blocks > blocks)
> -				blocks =3D result_prev->blocks;
>  		}
>  	}
> =20
> +	/*
> +	 * Make sure result blocks for higher latency levels are
> +	 * at least as high as level below the current level.
> +	 * Assumption in DDB algorithm optimization for special
> +	 * cases. Also covers Display WA #1125 for RC.
> +	 *
> +	 * Let's always do this as the algorithm can give non
> +	 * monotonic results on any platform.
> +	 */
> +	blocks =3D max_t(u32, blocks, result_prev->blocks);
> +	lines =3D max_t(u32, lines, result_prev->lines);
> +
>  	if (DISPLAY_VER(display) >=3D 11) {
>  		if (wp->y_tiled) {
>  			int extra_lines;
