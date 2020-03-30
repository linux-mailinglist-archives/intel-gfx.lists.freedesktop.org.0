Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F12E197F07
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A0866E415;
	Mon, 30 Mar 2020 14:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A71D6E418
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 14:50:36 +0000 (UTC)
IronPort-SDR: oVTEOYDIzgJGs3RP+7iHXkmde7d1E1jLesEWaemn+Gs9C+bfuJFl7awMbrZ9uWAIuA5K+6SqdR
 Brp2v/l/oO2g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 07:50:35 -0700
IronPort-SDR: 2llc8Z9p5D7bW3+b4vzZFFwqiVifWNIj3qZ+8pn7Jgeq8GQalBpdqX2nrAYchtK5nIXJYbkM3U
 1DaM9W02D45A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="294602459"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 30 Mar 2020 07:50:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Mar 2020 17:50:32 +0300
Date: Mon, 30 Mar 2020 17:50:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200330145032.GJ13686@intel.com>
References: <20200327213413.166623-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327213413.166623-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dp: Return the right vswing
 tables
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

On Fri, Mar 27, 2020 at 02:34:11PM -0700, Jos=E9 Roberto de Souza wrote:
> DDI ports have its encoders initialized with INTEL_OUTPUT_DDI type and
> later eDP ports that have the type changed to INTEL_OUTPUT_EDP.
> But for all other DDI ports it can drive HDMI or DP depending on what
> user connects to the ports.
> =

> ehl_get_combo_buf_trans() and tgl_get_combo_buf_trans() was checking
> for INTEL_OUTPUT_DP that was never true, causing eDP vswing tables
> being used.
> =

> So here changing the check to INTEL_OUTPUT_DDI, HDMI cases will be
> correctly handled as it do not use encoder->type, instead it calls the
> functions with INTEL_OUTPUT_HDMI as type parameter and HDMI don't have
> retraining.
> =

> Fixes: bd3cf6f7ce20 ("drm/i915/dp/tgl+: Update combo phy vswing tables")
> Cc: Clinton A Taylor <clinton.a.taylor@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 916a802af788..7af1572d4f1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -947,7 +947,7 @@ static const struct cnl_ddi_buf_trans *
>  ehl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int=
 rate,
>  			int *n_entries)
>  {
> -	if (type =3D=3D INTEL_OUTPUT_DP && rate > 270000) {
> +	if (type =3D=3D INTEL_OUTPUT_DDI && rate > 270000) {

Please no. I'd rather not see "DDI" here. We want to check which mode
we're driving the output in, and "DDI" isn't one of the valid choices.

The fact that we sometimes pass in encoder->type is a bit of shortcut
to make the DP vs. EDP distinction. And so far every function knew to
only compare the value against EDP/HDMI and neve against DP. Looks like
someone broke that (admittedly crappy) convention.

We should probably fix this a bit higher up and make sure we only ever
pass in EDP/DP/HDMI, never DDI.

>  		*n_entries =3D ARRAY_SIZE(ehl_combo_phy_ddi_translations_hbr2_hbr3);
>  		return ehl_combo_phy_ddi_translations_hbr2_hbr3;
>  	}
> @@ -959,7 +959,7 @@ static const struct cnl_ddi_buf_trans *
>  tgl_get_combo_buf_trans(struct drm_i915_private *dev_priv, int type, int=
 rate,
>  			int *n_entries)
>  {
> -	if (type !=3D INTEL_OUTPUT_DP) {
> +	if (type !=3D INTEL_OUTPUT_DDI) {
>  		return icl_get_combo_buf_trans(dev_priv, type, rate, n_entries);
>  	} else if (rate > 270000) {
>  		*n_entries =3D ARRAY_SIZE(tgl_combo_phy_ddi_translations_dp_hbr2);
> -- =

> 2.26.0
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
