Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F57426791
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 12:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803AA6E0D8;
	Fri,  8 Oct 2021 10:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 581F66E0D8
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 10:19:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="249838255"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="249838255"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:19:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="657755724"
Received: from ssedpiaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:19:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211006204937.30774-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-4-ville.syrjala@linux.intel.com>
Date: Fri, 08 Oct 2021 13:19:32 +0300
Message-ID: <871r4vyg23.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/16] drm/i915: Use standard form
 terminating condition for lane for loops
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

On Wed, 06 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use <4 instead of <=3D3 as the terminating condition for the
> loops over the 4 lanes.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index d85d731e37fb..b0bd50383d57 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1067,7 +1067,7 @@ static void icl_ddi_combo_vswing_program(struct int=
el_encoder *encoder,
>=20=20
>  	/* Program PORT_TX_DW4 */
>  	/* We cannot write to GRP. It would overwrite individual loadgen. */
> -	for (ln =3D 0; ln <=3D 3; ln++) {
> +	for (ln =3D 0; ln < 4; ln++) {
>  		val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
>  		val &=3D ~(POST_CURSOR_1_MASK | POST_CURSOR_2_MASK |
>  			 CURSOR_COEFF_MASK);
> @@ -1114,7 +1114,7 @@ static void icl_combo_phy_set_signal_levels(struct =
intel_encoder *encoder,
>  	 * <=3D 6 GHz and 1,2 lanes (LN0=3D0, LN1=3D1, LN2=3D1, LN3=3D0)
>  	 * > 6 GHz (LN0=3D0, LN1=3D0, LN2=3D0, LN3=3D0)
>  	 */
> -	for (ln =3D 0; ln <=3D 3; ln++) {
> +	for (ln =3D 0; ln < 4; ln++) {
>  		val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
>  		val &=3D ~LOADGEN_SELECT;

--=20
Jani Nikula, Intel Open Source Graphics Center
