Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E3468D2D8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 10:32:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7646410E074;
	Tue,  7 Feb 2023 09:32:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D083910E074
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675762373; x=1707298373;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=2r8TmoAyt7CWwgNvZc6FD4qgj46E39oIcmFirpYFhs4=;
 b=RwCm1Ufp/RLampNiB+RBKPrpRwk/GngrbTjEHCnSZcYgk+IOw9lhEcCn
 cVkWqVj5xvA89jGQEeCrRUC7agXIS4fbMG3jGBFQV1QBzegGKBgFnbzFj
 Hdwxvme91R7ZDlvNQSsYAo0ncJcLic4Lnp/YKZtDBj7uE44MxIdpHhAfp
 N5wAut8r5n9BRz8y518IdnslwoG/7I7labCP1uwNZ7kRjTPzNjOxh/n6p
 WhebGPQ5fMBJ+AKs2+eAdWF/GUWOahENd5merm0CUyN+O69eZ/UzYC3Cf
 RQqLNN3ehda1be9cCrSfiDR+shvcoV+s1fGR7CszvFfpNsy6KUkCpb3KC w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="328101540"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="328101540"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 01:32:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="809453413"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="809453413"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 01:32:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230207064337.18697-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
 <20230207064337.18697-4-ville.syrjala@linux.intel.com>
Date: Tue, 07 Feb 2023 11:32:45 +0200
Message-ID: <87zg9pyg5e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Pick the backlight controller
 based on VBT on ICP+
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

On Tue, 07 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the second backlight controller on ICP+ if the VBT asks
> us to do so.
>
> On pre-MTP we also check the chicken bit to make sure the
> pins have been correctly muxed by the firmware.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 34 +++++++++++++++++--
>  1 file changed, 31 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu=
/drm/i915/display/intel_backlight.c
> index 5b7da72c95b8..a4e4b7f79e4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -1431,6 +1431,30 @@ bxt_setup_backlight(struct intel_connector *connec=
tor, enum pipe unused)
>  	return 0;
>  }
>=20=20
> +static int cnp_num_backlight_controllers(struct drm_i915_private *i915)
> +{
> +	if (INTEL_PCH_TYPE(i915) >=3D PCH_DG1)
> +		return 1;
> +
> +	if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP)
> +		return 2;
> +
> +	return 1;
> +}

At some point I think we should clean this up between backlight and
pps. There's already intel_num_pps(). But let's get this merged as-is
now.

> +
> +static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i=
915, int controller)
> +{
> +	if (controller < 0 || controller >=3D cnp_num_backlight_controllers(i91=
5))
> +		return false;
> +
> +	if (controller =3D=3D 1 &&
> +	    INTEL_PCH_TYPE(i915) >=3D PCH_ICP &&
> +	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> +		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;

I got a bit confused that MTP has two controllers but it doesn't have
that bit. I first thought you were off by one with that < PCH_MTP. But
looks like it's correct.

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +
> +	return true;
> +}
> +
>  static int
>  cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
>  {
> @@ -1440,10 +1464,14 @@ cnp_setup_backlight(struct intel_connector *conne=
ctor, enum pipe unused)
>=20=20
>  	/*
>  	 * CNP has the BXT implementation of backlight, but with only one
> -	 * controller. TODO: ICP has multiple controllers but we only use
> -	 * controller 0 for now.
> +	 * controller. ICP+ can have two controllers, depending on pin muxing.
>  	 */
> -	panel->backlight.controller =3D 0;
> +	panel->backlight.controller =3D connector->panel.vbt.backlight.controll=
er;
> +	if (!cnp_backlight_controller_is_valid(i915, panel->backlight.controlle=
r)) {
> +		drm_dbg_kms(&i915->drm, "Invalid backlight controller %d, assuming 0\n=
",
> +			    panel->backlight.controller);
> +		panel->backlight.controller =3D 0;
> +	}
>=20=20
>  	pwm_ctl =3D intel_de_read(i915,
>  				BXT_BLC_PWM_CTL(panel->backlight.controller));

--=20
Jani Nikula, Intel Open Source Graphics Center
