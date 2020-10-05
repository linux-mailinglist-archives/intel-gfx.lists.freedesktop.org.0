Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 883432841AD
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Oct 2020 22:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0F376E18E;
	Mon,  5 Oct 2020 20:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C146E18E
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Oct 2020 20:52:05 +0000 (UTC)
IronPort-SDR: YIEvcDA9ymRDVJFhmUWnCxwp7dBJKKH3Plnv9+mKEYR+y5G3j9tTrfw9pfnAWs35pccRUnatTd
 EC7/dUiSLABQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="163303312"
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="163303312"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP; 05 Oct 2020 13:25:47 -0700
IronPort-SDR: FQESx1oAwR9G9vX+amP6WI8EMa2DtdfelNQdo1nFDNee76D1TGO8uPf13O0uaUMppUkk2ZchWt
 aQPAjvfcHG/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,340,1596524400"; d="scan'208";a="417555070"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 05 Oct 2020 13:25:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 05 Oct 2020 23:25:44 +0300
Date: Mon, 5 Oct 2020 23:25:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20201005202544.GL6112@intel.com>
References: <20201003001846.1271151-1-imre.deak@intel.com>
 <20201003001846.1271151-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201003001846.1271151-4-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Check for unsupported DP link
 rates during initial commit
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

On Sat, Oct 03, 2020 at 03:18:44AM +0300, Imre Deak wrote:
> Some BIOSes set an unsupported/imprecise DP link rate (for instance on
> TGL A stepping). Make sure that we do an encoder recompute and a modeset
> in this case.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index d33a3d9fdc3a..df5277c2b9ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3707,6 +3707,18 @@ bool intel_dp_initial_fastset_check(struct intel_e=
ncoder *encoder,
>  				    struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	/*
> +	 * If BIOS has set an unsupported or non-standard link rate for some
> +	 * reason force an encoder recompute and full modeset.
> +	 */
> +	if (intel_dp_rate_index(intel_dp->source_rates, intel_dp->num_source_ra=
tes,
> +				crtc_state->port_clock) < 0) {
> +		drm_dbg_kms(&i915->drm, "Forcing full modeset due to unsupported link =
rate\n");
> +		crtc_state->uapi.connectors_changed =3D true;
> +		return false;
> +	}
>  =

>  	/*
>  	 * FIXME hack to force full modeset when DSC is being used.
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
