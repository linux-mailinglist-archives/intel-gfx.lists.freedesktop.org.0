Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FBC5B59DD
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 14:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8356A10E42D;
	Mon, 12 Sep 2022 12:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D59B10E3E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 12:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662984162; x=1694520162;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7lXWD5EwVmvoDHe3p3rwaFBmzx6syZeIuXK/bZs0DvM=;
 b=Jv84rocxbHfh0S+iw1EXcIte9J1W62PHVNI3Rln1GbVkekJBA/QbMVxm
 0YX2dbohW8x2ZNZbXdn960TyAXp4eQJ9XLzCQ+X4/jz+VzjzqoG7cNz4F
 oPudr5XPc1u/5Gn18G+JUH4/2MFCaZvkrFAVKn8w7Q9/taIBZCMWHCPCd
 7+2DUYQJias0bFtBLc/AqPBQaqPxr/xjpjvXJ6vK2iKm8AQ1OoYQYVcfG
 T1zJBtIGDzPPO94YILTJiPcnAQ1MEhxmBW8qmN6Hj65nSNDpC0tchNusX
 8rx+u+SH8j1ov1MQkZXIkZNfN74B8ZzeX6ifvvX4AYr7Di6J0OnEC4hVz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="384143280"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="384143280"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:02:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678058705"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 05:02:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220912111814.17466-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
 <20220912111814.17466-14-ville.syrjala@linux.intel.com>
Date: Mon, 12 Sep 2022 15:02:36 +0300
Message-ID: <87fsgw6bs3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 13/15] drm/i915: Don't init eDP if we can't
 find a fixed mode
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

On Mon, 12 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> In the unlikely case of not finding a fixed mode don't register
> the eDP connector. I think there are some places where we'd oops
> if we didn't have a fixed mode for eDP so presumable this doesn't
> typically happen. But better safe than sorry.

I think this is fine as the first step. ISTR there are provisions in the
DP spec for adding some default mode if all else fails, maybe we should
look into adding something like that?

Guaranteeing we always have a fixed mode for eDP opens up possibilities
for some further cleanup if we want. We have some "is edp and fixed
mode" style conditions.

Up to and including this patch in the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Also pimp the debugs with the encoder id+name. I think dumping
> the encoder rather than the connector provides more information
> here (eg. to match again the port information in the VBT).
>
> We can also drop the extra check from intel_edp_add_properties().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 7b4ffb74c94c..8fe48634eb9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5197,9 +5197,6 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
>=20=20
>  	intel_attach_scaling_mode_property(&connector->base);
>=20=20
> -	if (!fixed_mode)
> -		return;
> -
>  	drm_connector_set_panel_orientation_with_quirk(&connector->base,
>  						       i915->display.vbt.orientation,
>  						       fixed_mode->hdisplay,
> @@ -5272,7 +5269,8 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	if (!has_dpcd) {
>  		/* if this fails, presume the device is a ghost */
>  		drm_info(&dev_priv->drm,
> -			 "failed to retrieve link info, disabling eDP\n");
> +			 "[ENCODER:%d:%s] failed to retrieve link info, disabling eDP\n",
> +			 encoder->base.base.id, encoder->base.name);
>  		goto out_vdd_off;
>  	}
>=20=20
> @@ -5318,6 +5316,13 @@ static bool intel_edp_init_connector(struct intel_=
dp *intel_dp,
>=20=20
>  	mutex_unlock(&dev->mode_config.mutex);
>=20=20
> +	if (!intel_panel_preferred_fixed_mode(intel_connector)) {
> +		drm_info(&dev_priv->drm,
> +			 "[ENCODER:%d:%s] failed to find fixed mode for the panel, disabling =
eDP\n",
> +			 encoder->base.base.id, encoder->base.name);
> +		goto out_vdd_off;
> +	}
> +
>  	intel_panel_init(intel_connector);
>=20=20
>  	intel_edp_backlight_setup(intel_dp, intel_connector);

--=20
Jani Nikula, Intel Open Source Graphics Center
