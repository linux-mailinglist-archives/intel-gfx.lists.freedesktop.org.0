Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A10922FF83B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 23:56:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EAB16E972;
	Thu, 21 Jan 2021 22:56:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82C6089349
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 22:56:32 +0000 (UTC)
IronPort-SDR: ZF9AJM9i7XsiXflOLsCh0AWozvdBLm/va+UxsEslIXyWA2wchz5m6WUhywmYAx/2OwVQHwMg0R
 u8UEBSQCHS+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="178581180"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="178581180"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:56:32 -0800
IronPort-SDR: /PO2vlseAz2UUrqB9M8wZ8cl9PUTA/ZxpLMeZdUTnvYBXPQq8Wy/PxbVZevDl73wCYiWvUZxR2
 /Vl32ICktR2A==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="403378716"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:56:32 -0800
Date: Thu, 21 Jan 2021 15:00:59 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210121230059.GC26641@labuser-Z97X-UD5H>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
 <20210113220935.4151-16-manasi.d.navare@intel.com>
 <YAcuDDu56wMvNGjy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YAcuDDu56wMvNGjy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 15/18] drm/i915/display: Helpers for VRR
 vblank min and max start
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

Yes will drop that TODO

Also,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi


On Tue, Jan 19, 2021 at 09:07:56PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Jan 13, 2021 at 02:09:32PM -0800, Manasi Navare wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > With VRR the earliest the registers can get latched are at
> > flipline decision boundary, calculate that as vrr_vmin_vblank_start()
> > and the latest the regsiters can get latched are vmax decision boundary
> > calculate that as vrr_vmax_vblank_start()
> > =

> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vrr.c | 36 ++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
> >  2 files changed, 38 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm=
/i915/display/intel_vrr.c
> > index 5dc6d578760a..9a18c36e4a9a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -45,6 +45,42 @@ intel_vrr_check_modeset(struct intel_atomic_state *s=
tate)
> >  	}
> >  }
> >  =

> > +/*
> > + * Without VRR registers get latched at:
> > + *  vblank_start
> > + *
> > + * With VRR the earliest registers can get latched is:
> > + *  intel_vrr_vmin_vblank_start(), which if we want to maintain
> > + *  the correct min vtotal is >=3Dvblank_start+1
> > + *
> > + * The latest point registers can get latched is the vmax decision bou=
ndary:
> > + *  intel_vrr_vmax_vblank_start()
> > + *
> > + * Between those two points the vblank exit starts (and hence register=
s get
> > + * latched) ASAP after a push is sent.
> > + *
> > + * framestart_delay is programmable 0-3.
> > + */
> > +static int intel_vrr_vblank_exit_length(const struct intel_crtc_state =
*crtc_state)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +
> > +	/* TODO: Not sure why the hw imposes the extra scanline?, also check =
on TGL */
> =

> We can now drop the TGL TODO(s) since I tested it and confirmed it
> follows the same rules.
> =

> > +	return crtc_state->vrr.pipeline_full + i915->framestart_delay + 2;
> > +}
> > +
> > +int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_st=
ate)
> > +{
> > +	/* Min vblank actually determined by flipline that is always >=3Dvmin=
+1 */
> > +	return crtc_state->vrr.vmin + 1 - intel_vrr_vblank_exit_length(crtc_s=
tate);
> > +}
> > +
> > +int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_st=
ate)
> > +{
> > +	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state=
);
> > +}
> > +
> >  void
> >  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >  			 struct drm_connector_state *conn_state)
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm=
/i915/display/intel_vrr.h
> > index 7610051edad2..d8b6b45557ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> > @@ -27,5 +27,7 @@ void intel_vrr_send_push(const struct intel_crtc_stat=
e *crtc_state);
> >  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
> >  void intel_vrr_get_config(struct intel_crtc *crtc,
> >  			  struct intel_crtc_state *crtc_state);
> > +int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_st=
ate);
> > +int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_st=
ate);
> >  =

> >  #endif /* __INTEL_VRR_H__ */
> > -- =

> > 2.19.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
