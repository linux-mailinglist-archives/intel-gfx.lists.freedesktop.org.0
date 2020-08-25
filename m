Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1B52523E5
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 00:56:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5C989DD3;
	Tue, 25 Aug 2020 22:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75AF489DD3
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 22:56:25 +0000 (UTC)
IronPort-SDR: urgEpqjcWwJX8rDeoOAKjF30sdbmiXlLa0K/KwsaNEqjcxhntB19zLdP3Dxa0FpzUmmiVRstHd
 SZf3I7MaQbVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9724"; a="136270826"
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="136270826"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 15:56:25 -0700
IronPort-SDR: COIbCDquWPr68lws4fWXLpwbc31AkuhfqundSxyBGzOPnEVi9edGASHfaEzo4hHtSPmXgk4o8M
 912hxfADw7bw==
X-IronPort-AV: E=Sophos;i="5.76,354,1592895600"; d="scan'208";a="299267084"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 15:56:16 -0700
Date: Tue, 25 Aug 2020 15:56:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200825225615.GL3934000@mdroper-desk1.amr.corp.intel.com>
References: <20200825184343.63253-1-jose.souza@intel.com>
 <20200825184343.63253-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825184343.63253-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/display/ehl: Use EHL DP
 tables for eDP ports without low power support
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

On Tue, Aug 25, 2020 at 11:43:42AM -0700, Jos=E9 Roberto de Souza wrote:
> Reusing icl_get_combo_buf_trans() for eDP was causing the wrong table
> being used when the eDP port don't support low power voltage swing table.
> =

> v2: Only use icl_combo_phy_ddi_translations_edp_hbr3 if low_vswing is
> set as EHL combo phy supports HBR3 (Matt R)
> =

> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 9a035bb7bd06..699511872290 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1074,12 +1074,28 @@ static const struct cnl_ddi_buf_trans *
>  ehl_get_combo_buf_trans(struct intel_encoder *encoder, int type, int rat=
e,
>  			int *n_entries)
>  {
> -	if (type !=3D INTEL_OUTPUT_HDMI && type !=3D INTEL_OUTPUT_EDP) {
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +
> +	switch (type) {
> +	case INTEL_OUTPUT_HDMI:
> +		*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> +		return icl_combo_phy_ddi_translations_hdmi;
> +	case INTEL_OUTPUT_EDP:
> +		if (dev_priv->vbt.edp.low_vswing) {
> +			if (rate > 540000) {
> +				*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr3);
> +				return icl_combo_phy_ddi_translations_edp_hbr3;
> +			} else {
> +				*n_entries =3D ARRAY_SIZE(icl_combo_phy_ddi_translations_edp_hbr2);
> +				return icl_combo_phy_ddi_translations_edp_hbr2;
> +			}
> +		}
> +		/* fall through */
> +	default:
> +		/* All combo DP and eDP ports that do not support low_vswing */
>  		*n_entries =3D ARRAY_SIZE(ehl_combo_phy_ddi_translations_dp);
>  		return ehl_combo_phy_ddi_translations_dp;
>  	}
> -
> -	return icl_get_combo_buf_trans(encoder, type, rate, n_entries);
>  }
>  =

>  static const struct cnl_ddi_buf_trans *
> -- =

> 2.28.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
