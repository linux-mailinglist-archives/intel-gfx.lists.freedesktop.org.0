Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3796228BA
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 11:42:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2F410E541;
	Wed,  9 Nov 2022 10:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9480010E541
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 10:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667990523; x=1699526523;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=LGPxaXeaZHfoL4g3yiDh0ijANG1f66KBKKsZogtBT4I=;
 b=ZQpc/D8B+p8YMY0kZRGC1A88WiL8d6Pkstf7q5z07wO61MG1F/J+hk3d
 rRA7JW4q1oIUSGFZvml2g/RbP5PAEVXZGfMO8RwjC8/icec7pjMuaQRVo
 LqfGxZmUQWi7iMwxTWLI8l8B7gW9jS+vjZPOOkVSY/3fwuvnbG4eS4jv1
 LXLVVNFSo2ts6oW3EQiivm31rWgtsmArACXRzABV6uXBtQxVmBe8fbXbl
 A9Ln3Y1e3XRKoPvsO/4ElRJYvK6sNMwXyrO6RChCDfp1B7ZOUk89kKcRT
 PsFrdA9BjDsgfh5wuJnxOthp8M/m4r1bEY/pAvT6IVt3PVVXU20IGmYLW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312106877"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312106877"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:42:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636695597"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636695597"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:42:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y2uBF56Fe+VZ9K9X@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221108211822.28048-1-animesh.manna@intel.com>
 <20221108211822.28048-2-animesh.manna@intel.com>
 <Y2t80/UUH/EwhrLa@intel.com> <87wn8477bc.fsf@intel.com>
 <Y2uBF56Fe+VZ9K9X@intel.com>
Date: Wed, 09 Nov 2022 12:41:58 +0200
Message-ID: <87o7tg76kp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pps: Enable 2nd pps for dual
 EDP scenario
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 09 Nov 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Nov 09, 2022 at 12:25:59PM +0200, Jani Nikula wrote:
>> On Wed, 09 Nov 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Wed, Nov 09, 2022 at 02:48:21AM +0530, Animesh Manna wrote:
>> >> >From display gen12 onwards to support dual EDP two instances of pps =
added.
>> >> Currently backlight controller and pps instance can be mapped together
>> >> for a specific panel. Extended support for gen12 for dual EDP usage.
>> >>=20
>> >> v1: Iniital revision
>> >> v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Ja=
ni]
>> >>=20
>> >> Cc: Jani Nikula <jani.nikula@intel.com>
>> >> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> Cc: Uma Shankar <uma.shankar@intel.com>
>> >> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_bios.c | 7 -------
>> >>  drivers/gpu/drm/i915/display/intel_bios.h | 7 +++++++
>> >>  drivers/gpu/drm/i915/display/intel_dp.c   | 9 ++++++---
>> >>  drivers/gpu/drm/i915/display/intel_pps.c  | 2 +-
>> >>  4 files changed, 14 insertions(+), 11 deletions(-)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/=
drm/i915/display/intel_bios.c
>> >> index c2987f2c2b2e..fca44be9bab8 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> @@ -706,13 +706,6 @@ static int fallback_get_panel_type(struct drm_i9=
15_private *i915,
>> >>  	return 0;
>> >>  }
>> >>=20=20
>> >> -enum panel_type {
>> >> -	PANEL_TYPE_OPREGION,
>> >> -	PANEL_TYPE_VBT,
>> >> -	PANEL_TYPE_PNPID,
>> >> -	PANEL_TYPE_FALLBACK,
>> >> -};
>> >> -
>> >>  static int get_panel_type(struct drm_i915_private *i915,
>> >>  			  const struct intel_bios_encoder_data *devdata,
>> >>  			  const struct edid *edid)
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/=
drm/i915/display/intel_bios.h
>> >> index e375405a7828..da01b13260ae 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_bios.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
>> >> @@ -231,6 +231,13 @@ struct mipi_pps_data {
>> >>  	u16 panel_power_cycle_delay;
>> >>  } __packed;
>> >>=20=20
>> >> +enum panel_type {
>> >> +	PANEL_TYPE_OPREGION,
>> >> +	PANEL_TYPE_VBT,
>> >> +	PANEL_TYPE_PNPID,
>> >> +	PANEL_TYPE_FALLBACK,
>> >> +};
>> >> +
>> >>  void intel_bios_init(struct drm_i915_private *dev_priv);
>> >>  void intel_bios_init_panel(struct drm_i915_private *dev_priv,
>> >>  			   struct intel_panel *panel,
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
>> >> index 7400d6b4c587..08ece347f7cb 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> >> @@ -5254,6 +5254,9 @@ static bool intel_edp_init_connector(struct int=
el_dp *intel_dp,
>> >>  		return false;
>> >>  	}
>> >>=20=20
>> >> +	intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> >> +			      encoder->devdata, NULL);
>> >> +
>> >>  	intel_pps_init(intel_dp);
>> >>=20=20
>> >>  	/* Cache DPCD and EDID for edp. */
>> >> @@ -5288,9 +5291,9 @@ static bool intel_edp_init_connector(struct int=
el_dp *intel_dp,
>> >>  		edid =3D ERR_PTR(-ENOENT);
>> >>  	}
>> >>  	intel_connector->edid =3D edid;
>> >> -
>> >> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> >> -			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
>> >> +	if (intel_connector->panel.vbt.panel_type =3D=3D PANEL_TYPE_FALLBAC=
K)
>> >
>> > vbt.panel_type does _not_ contain enum panel_type (a bit of an=20
>> > unfortunate name selection by me there I guess).
>> >
>> >> +		intel_bios_init_panel(dev_priv, &intel_connector->panel,
>> >> +				      encoder->devdata, IS_ERR(edid) ? NULL : edid);
>> >
>> > I suspect just calling this twice might leak all kinds of stuff.
>>=20
>> Yeah, what's up with this, this is some old version that was fixed way
>> back too. I thought this was good to go:
>>=20
>> https://lore.kernel.org/r/20221018083921.23239-2-animesh.manna@intel.com
>
> That look broken in exactly the same way wrt. enum panel_type.

You're right, of course.

BR,
Jani.


>
>>=20
>> >
>> >>=20=20
>> >>  	intel_panel_add_edid_fixed_modes(intel_connector, true);
>> >>=20=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/d=
rm/i915/display/intel_pps.c
>> >> index 3949fb449353..0975e49f8d03 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_pps.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
>> >> @@ -1430,7 +1430,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
>> >>  	intel_dp->pps.initializing =3D true;
>> >>  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work=
);
>> >>=20=20
>> >> -	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
>> >> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >=
=3D 12)
>> >>  		intel_dp->get_pps_idx =3D bxt_power_sequencer_idx;
>> >>  	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>> >>  		intel_dp->get_pps_idx =3D vlv_power_sequencer_pipe;
>> >> --=20
>> >> 2.29.0
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
