Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C3B6AE222
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 15:23:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ECA610E06D;
	Tue,  7 Mar 2023 14:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B78FC10E06D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 14:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678198986; x=1709734986;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=1+l4uh64vFjT3gNE8/X7pbKrJClauU6otgiDA63yD+A=;
 b=m7rmninazapWnxJg7znYT1qiZ8XWCJUnN8u8saYbOoWWTeLASXe9c2EV
 +afORWII00Eeu3h7+ghLiGC/dpoh9SNtPMRxZLczbwouZyQ5ZAYD7HfNF
 11hSqDFP7JH6CZDfizf9EaOukPy7INOl5S5U66VTjFqYkF8ryT22oarGw
 yk3ICMx+c2iLpKjwYfpKTKIv8o5NEcAmkSEqtWju02WsDuuG/9o30sr6T
 VAoVvumnx9AemkrRFUGN+4OniOpr0XNZhlTLgm6Zr9hlkcOJIhUf7bM3d
 XYN3YkIiDk2XlxymQw1nab2vSSTNLzDf9kNbnkDkoZBVcZ09G1ZZT5agm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="334574012"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="334574012"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 06:23:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="626555925"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="626555925"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 06:23:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZAdGnBD7WiO/ubdb@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
 <20230306152841.6563-2-ville.syrjala@linux.intel.com>
 <87a60osqaf.fsf@intel.com> <ZAdGnBD7WiO/ubdb@intel.com>
Date: Tue, 07 Mar 2023 16:23:01 +0200
Message-ID: <871qm0sksa.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Add belts and suspenders
 locking for seamless M/N changes
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

On Tue, 07 Mar 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Mar 07, 2023 at 02:24:08PM +0200, Jani Nikula wrote:
>> On Mon, 06 Mar 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Add some (probably overkill) locking to protect the vblank
>> > timestamping constants updates during seamless M/N fastsets.
>> >
>> > As everything should be naturally aligned I think the individual
>> > pieces should probably end up updating atomically enough. So this
>> > is only really meant to guarantee everyone sees a consistent whole.
>> >
>> > All the drm_vblank.c usage is covered by vblank_time_lock,
>> > and uncore.lock will take care of __intel_get_crtc_scanline()
>> > that can also be called from outside the core vblank functionality.
>>=20
>> The patch seems to do what it says on the box, but I increasingly
>> dislike the use of uncore.lock for anything other than the nuts and
>> bolts of uncore.
>
> Yeah, it's not really great. Hence the TODO I left behind there.

Okay,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
>>=20
>> BR,
>> Jani.
>>=20
>> >
>> > Currently only crtc_clock and framedur_ns can change, but in
>> > the future might fastset also across eg. vtotal/vblank_end
>> > changes, so let's just grab the locks across the whole thing.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++++++-
>> >  1 file changed, 23 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>> > index a1fbdf32bd21..020320468967 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -5908,6 +5908,8 @@ void intel_crtc_update_active_timings(const stru=
ct intel_crtc_state *crtc_state)
>> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>> >  	struct drm_display_mode adjusted_mode;
>> > +	int vmax_vblank_start =3D 0;
>> > +	unsigned long irqflags;
>> >=20=20
>> >  	drm_mode_init(&adjusted_mode, &crtc_state->hw.adjusted_mode);
>> >=20=20
>> > @@ -5915,11 +5917,28 @@ void intel_crtc_update_active_timings(const st=
ruct intel_crtc_state *crtc_state)
>> >  		adjusted_mode.crtc_vtotal =3D crtc_state->vrr.vmax;
>> >  		adjusted_mode.crtc_vblank_end =3D crtc_state->vrr.vmax;
>> >  		adjusted_mode.crtc_vblank_start =3D intel_vrr_vmin_vblank_start(crt=
c_state);
>> > -		crtc->vmax_vblank_start =3D intel_vrr_vmax_vblank_start(crtc_state);
>> > +		vmax_vblank_start =3D intel_vrr_vmax_vblank_start(crtc_state);
>> >  	}
>> >=20=20
>> > +	/*
>> > +	 * Belts and suspenders locking to guarantee everyone sees 100%
>> > +	 * consistent state during fastset seamless refresh rate changes.
>> > +	 *
>> > +	 * vblank_time_lock takes care of all drm_vblank.c stuff, and
>> > +	 * uncore.lock takes care of __intel_get_crtc_scanline() which
>> > +	 * may get called elsewhere as well.
>> > +	 *
>> > +	 * TODO maybe just protect everything (including
>> > +	 * __intel_get_crtc_scanline()) with vblank_time_lock?
>> > +	 * Need to audit everything to make sure it's safe.
>> > +	 */
>> > +	spin_lock_irqsave(&dev_priv->drm.vblank_time_lock, irqflags);
>> > +	spin_lock(&dev_priv->uncore.lock);
>> > +
>> >  	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>> >=20=20
>> > +	crtc->vmax_vblank_start =3D vmax_vblank_start;
>> > +
>> >  	crtc->mode_flags =3D crtc_state->mode_flags;
>> >=20=20
>> >  	/*
>> > @@ -5963,6 +5982,9 @@ void intel_crtc_update_active_timings(const stru=
ct intel_crtc_state *crtc_state)
>> >  	} else {
>> >  		crtc->scanline_offset =3D 1;
>> >  	}
>> > +
>> > +	spin_unlock(&dev_priv->uncore.lock);
>> > +	spin_unlock_irqrestore(&dev_priv->drm.vblank_time_lock, irqflags);
>> >  }
>> >=20=20
>> >  /*
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
