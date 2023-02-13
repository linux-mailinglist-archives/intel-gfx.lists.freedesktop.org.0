Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE57694C13
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 17:12:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9DC10E062;
	Mon, 13 Feb 2023 16:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C199210E062
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 16:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676304750; x=1707840750;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=JmBQEEg830MnXOge16n16X/HXWxi4uTqvMd8z5P5LaQ=;
 b=I3v+foc8Qu1IObuWfhwmKJooMKvKn2r1tcZFJcBF7rCeZlOsWEBNxKCe
 9BuZ7p8x30Y+EL2BrXqMNvKmGdr1hVyvLtNtb05ZMLk5r6z0Zt712u7yF
 8L8YPer97vRMHtg24bqCe5kq/XZ/9hpEQl98/HgaE3OAsvSXfzK3vDB7Y
 ydCZBSO47dnEayUEcezqBajXYid8ripDBN0BJ8BSrOZfub0ZdR3lcJVTR
 1kJXSXsp4RgsF5iJr4j3oP5cTyh2XRJ6qWf+X91r990SDevHtCLF796eA
 ypaEB5FfWBHdt9w0VxquI7wCDHURPoQuybYPZp0oaem2Bt7+sPBV5qybO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="333061610"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="333061610"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:12:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="662224685"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="662224685"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 08:12:26 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230208015508.24824-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
 <20230208015508.24824-7-ville.syrjala@linux.intel.com>
Date: Mon, 13 Feb 2023 18:12:19 +0200
Message-ID: <87h6vpv924.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915: Consult the registested
 encoders for the ICL combo PHY w/a
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

On Wed, 08 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Subject: *registered

>
> Display WA #1178 calls us to tweak some magic bits when doing AUX
> to an external combo PHY port. Instead of looking to see if the VBT
> has declared such a port (which could in theory even alias with a
> declared eDP port on the same PHY) just check the real situation
> based on the registered encoders.
>
> The only slight chicken vs. egg situation here is during output
> probing. But typically we'd register the eDP ports first and so
> once we get to probe anything external on the combo PHY we have
> already determined if it's eDP or not.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_power_well.c   | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.c
> index 8710dd41ffd4..56a20bf5825b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -391,6 +391,19 @@ static void hsw_power_well_disable(struct drm_i915_p=
rivate *dev_priv,
>  	hsw_wait_for_power_well_disable(dev_priv, power_well);
>  }
>=20=20
> +static bool intel_port_is_edp(struct drm_i915_private *i915, enum port p=
ort)
> +{
> +	struct intel_encoder *encoder;
> +
> +	for_each_intel_encoder(&i915->drm, encoder) {
> +		if (encoder->type =3D=3D INTEL_OUTPUT_EDP &&
> +		    encoder->port =3D=3D port)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  static void
>  icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  				    struct i915_power_well *power_well)
> @@ -416,7 +429,7 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_p=
rivate *dev_priv,
>=20=20
>  	/* Display WA #1178: icl */
>  	if (pw_idx >=3D ICL_PW_CTL_IDX_AUX_A && pw_idx <=3D ICL_PW_CTL_IDX_AUX_=
B &&
> -	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
> +	    !intel_port_is_edp(dev_priv, (enum port)phy)) {
>  		val =3D intel_de_read(dev_priv, ICL_AUX_ANAOVRD1(pw_idx));
>  		val |=3D ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
>  		intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx), val);

--=20
Jani Nikula, Intel Open Source Graphics Center
