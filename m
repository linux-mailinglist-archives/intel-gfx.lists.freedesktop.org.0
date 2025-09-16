Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECCEB5906A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:25:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA10010E314;
	Tue, 16 Sep 2025 08:25:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 580 seconds by postgrey-1.36 at gabe;
 Tue, 16 Sep 2025 08:25:24 UTC
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F388C10E309;
 Tue, 16 Sep 2025 08:25:24 +0000 (UTC)
Received: from 88-113-67-44.elisa-laajakaista.fi ([88.113.67.44]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1uyR05-00000000oxF-2Dqm; Tue, 16 Sep 2025 11:25:22 +0300
Message-ID: <0efd8f90e14fe4e68c39bd7374829bf901c10762.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Date: Tue, 16 Sep 2025 11:25:20 +0300
In-Reply-To: <20250905145832.12097-3-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
 <20250905145832.12097-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+b1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-25) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.1
Subject: Re: [PATCH 02/13] drm/i915: Apply the 16Gb DIMM w/a only for the
 platforms that need it
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
> Currently the code assumes that every platform except dg2 need the
> 16Gb DIMM w/a, while in reality it's only needed by skl and icl (and
> derivatives). Switch to a more specific platform check.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.


>  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index b7482d428868..8c434bc96971 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3174,11 +3174,19 @@ void skl_watermark_ipc_init(struct intel_display =
*display)
>  	skl_watermark_ipc_update(display);
>  }
> =20
> +static bool need_16gb_dimm_wa(struct intel_display *display)
> +{
> +	const struct dram_info *dram_info =3D intel_dram_info(display->drm);
> +
> +	return (display->platform.skylake || display->platform.kabylake ||
> +		display->platform.coffeelake || display->platform.cometlake ||
> +		DISPLAY_VER(display) =3D=3D 11) && dram_info->has_16gb_dimms;
> +}
> +
>  static void
>  adjust_wm_latency(struct intel_display *display,
>  		  u16 wm[], int num_levels, int read_latency)
>  {
> -	const struct dram_info *dram_info =3D intel_dram_info(display->drm);
>  	int i, level;
> =20
>  	/*
> @@ -3214,7 +3222,7 @@ adjust_wm_latency(struct intel_display *display,
>  	 * any underrun. If not able to get DIMM info assume 16Gb+ DIMM
>  	 * to avoid any underrun.
>  	 */
> -	if (!display->platform.dg2 && dram_info->has_16gb_dimms)
> +	if (need_16gb_dimm_wa(display))
>  		wm[0] +=3D 1;
>  }
> =20
