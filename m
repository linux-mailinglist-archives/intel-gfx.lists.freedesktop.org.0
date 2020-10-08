Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 263AB286D26
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 05:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C71346EA09;
	Thu,  8 Oct 2020 03:28:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDED6EA09
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 03:28:16 +0000 (UTC)
IronPort-SDR: XO2X24sCIJhBFHvbvaydoqK7K5RIPa3Lv3OuTnC2110C00Rrx95YZ1RpQbIcKOLEEY3hssj0nL
 o0PdOV2fW/GQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="229436503"
X-IronPort-AV: E=Sophos;i="5.77,349,1596524400"; d="scan'208";a="229436503"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 20:28:13 -0700
IronPort-SDR: Dq5i/e15MZ63bkZNhvN2qD0ntgC1tFB10hIRUsYeumJYD1OvxDR/vMk/skcFanvUmKfFwbCDbo
 2sO5t/2+wXMw==
X-IronPort-AV: E=Sophos;i="5.77,349,1596524400"; d="scan'208";a="343214873"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 20:28:13 -0700
Date: Wed, 7 Oct 2020 20:28:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20201008032810.GT2863995@mdroper-desk1.amr.corp.intel.com>
References: <20200929223419.146925-1-jose.souza@intel.com>
 <20201007224539.GL2863995@mdroper-desk1.amr.corp.intel.com>
 <ec4d0b5cd6eb09acc53c374b4dac70fb9c41b4c9.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec4d0b5cd6eb09acc53c374b4dac70fb9c41b4c9.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/vbt: Fix backlight parsing
 for VBT 234+
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 07, 2020 at 05:33:48PM -0700, Souza, Jose wrote:
> On Wed, 2020-10-07 at 15:45 -0700, Matt Roper wrote:
> > On Tue, Sep 29, 2020 at 03:34:17PM -0700, Jos=E9 Roberto de Souza wrote:
> > > Child min_brightness is obsolete from VBT 234+, instead the new
> > > min_brightness field in the main structure should be used.
> > > =

> > > This new field is 16 bits wide, so backlight_precision_bits is needed
> > > to check if value needs to be scaled down but it is only available in
> > > VBT 236+ so working around it by using the also new backlight_level
> > > in the main struct.
> > > =

> > > v2:
> > > - missed that backlight_data->level is also obsolete
> > > =

> > > BSpec: 20149
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > > =A0drivers/gpu/drm/i915/display/intel_bios.c     | 30 +++++++++++++++=
++--
> > > =A0drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++--
> > > =A02 files changed, 38 insertions(+), 4 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/=
drm/i915/display/intel_bios.c
> > > index 4716484af62d..58e5657a77bb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > > @@ -425,6 +425,7 @@ parse_lfp_backlight(struct drm_i915_private *dev_=
priv,
> > > =A0	const struct bdb_lfp_backlight_data *backlight_data;
> > > =A0	const struct lfp_backlight_data_entry *entry;
> > > =A0	int panel_type =3D dev_priv->vbt.panel_type;
> > > +	u16 level;
> > > =A0
> > > =

> > > =

> > > =

> > > =A0	backlight_data =3D find_section(bdb, BDB_LVDS_BACKLIGHT);
> > > =A0	if (!backlight_data)
> > > @@ -459,14 +460,39 @@ parse_lfp_backlight(struct drm_i915_private *de=
v_priv,
> > > =A0
> > > =

> > > =

> > > =

> > > =A0	dev_priv->vbt.backlight.pwm_freq_hz =3D entry->pwm_freq_hz;
> > > =A0	dev_priv->vbt.backlight.active_low_pwm =3D entry->active_low_pwm;
> > > -	dev_priv->vbt.backlight.min_brightness =3D entry->min_brightness;
> > > +
> > > +	if (bdb->version >=3D 234) {
> > > +		bool scale =3D false;
> > > +		u16 min_level;
> > > +
> > > +		level =3D backlight_data->backlight_level[panel_type].level;
> > > +		min_level =3D backlight_data->backlight_min_level[panel_type].leve=
l;
> > > +
> > > +		if (bdb->version >=3D 236)
> > > +			scale =3D backlight_data->backlight_precision_bits[panel_type] =
=3D=3D 16;
> > > +		else
> > > +			scale =3D level > 255;
> > =

> > I'm not sure I follow the 'else' arm here.  On version 234/235 we'd have
> > 16-bit level values.  In the absence of any other precision information
> > wouldn't we assume that all the bits are used and that we have a full
> > 16-bit precision?  If the level is < 256 (or for that matter if we have
> > any value where level & 0xFF is non-zero) wouldn't that definitely mean
> > that there are 16-bits of precision since otherwise those low bits would
> > have to be 0's?
> =

> My understand is that in version 234 or 235 all brightness levels could b=
e set as 16bits or 8bits wide by vendors and it did not had a clear way for
> driver to know what it is, then version 236 came fixing it.
> =

> So working around it by using the regular brightness level(supposed the o=
ne that vendor wants the panel to have by default) and we can suppose that =
it
> will be higher than the minimum so for 16bits of precision it will be hig=
her than 255.
> Anyways I doubt that any production product will have VBT version 234 or =
235.

Okay.  I guess since it was described with the term "precision" in the
spec that made me think of it as "only the highest 8 bits in use" rather
than an actual 8-bit range (i.e., just lower bits), but I guess there
wouldn't really be a need to specify it if that were the case.  So I
think your logic here is probably correct.

With the s/backlight/brightness/ rename and the u32 -> u16
simplification suggested by Jani,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> =

> > =

> > > +
> > > +		if (scale)
> > > +			min_level =3D min_level / 255;
> > > +
> > > +		if (min_level > 255) {
> > > +			drm_warn(&dev_priv->drm, "Backlight min level > 255\n");
> > > +			level =3D 255;
> > > +		}
> > > +		dev_priv->vbt.backlight.min_brightness =3D min_level;
> > > +	} else {
> > > +		level =3D backlight_data->level[panel_type];
> > > +		dev_priv->vbt.backlight.min_brightness =3D entry->min_brightness;
> > > +	}
> > > +
> > > =A0	drm_dbg_kms(&dev_priv->drm,
> > > =A0		    "VBT backlight PWM modulation frequency %u Hz, "
> > > =A0		    "active %s, min brightness %u, level %u, controller %u\n",
> > > =A0		    dev_priv->vbt.backlight.pwm_freq_hz,
> > > =A0		    dev_priv->vbt.backlight.active_low_pwm ? "low" : "high",
> > > =A0		    dev_priv->vbt.backlight.min_brightness,
> > > -		    backlight_data->level[panel_type],
> > > +		    level,
> > > =A0		    dev_priv->vbt.backlight.controller);
> > > =A0}
> > > =A0
> > > =

> > > =

> > > =

> > > =

> > > =

> > > =

> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/=
gpu/drm/i915/display/intel_vbt_defs.h
> > > index 54bcc6a6947c..b4742c4fde97 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > > @@ -782,7 +782,7 @@ struct lfp_backlight_data_entry {
> > > =A0	u8 active_low_pwm:1;
> > > =A0	u8 obsolete1:5;
> > > =A0	u16 pwm_freq_hz;
> > > -	u8 min_brightness;
> > > +	u8 min_brightness; /* Obsolete from 234+ */
> > > =A0	u8 obsolete2;
> > > =A0	u8 obsolete3;
> > > =A0} __packed;
> > > @@ -792,11 +792,19 @@ struct lfp_backlight_control_method {
> > > =A0	u8 controller:4;
> > > =A0} __packed;
> > > =A0
> > > =

> > > =

> > > =

> > > =

> > > =

> > > =

> > > =

> > > +struct lfp_backlight_level {
> > > +	u32 level : 16;
> > > +	u32 reserved : 16;
> > > +} __packed;
> > > +
> > > =A0struct bdb_lfp_backlight_data {
> > > =A0	u8 entry_size;
> > > =A0	struct lfp_backlight_data_entry data[16];
> > > -	u8 level[16];
> > > +	u8 level[16]; /* Obsolete from 234+ */
> > > =A0	struct lfp_backlight_control_method backlight_control[16];
> > > +	struct lfp_backlight_level backlight_level[16];		/* 234+ */
> > > +	struct lfp_backlight_level backlight_min_level[16];	/* 234+ */
> > =

> > Technically these two are described as "brightness level" rather than
> > "backlight level" in the spec.  Matching the spec's terminology might
> > make this slightly easier to follow when people look at it in the
> > future, but up to you.
> =

> Okay will rename those, take a look in the comment above so we have an ag=
reement for the the next version.
> =

> thanks
> =

> > =

> > =

> > Matt
> > =

> > > +	u8 backlight_precision_bits[16];					/* 236+ */
> > > =A0} __packed;
> > > =A0
> > > =

> > > =

> > > =

> > > =

> > > =

> > > =

> > > =

> > > =A0/*
> > > -- =

> > > 2.28.0
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =

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
