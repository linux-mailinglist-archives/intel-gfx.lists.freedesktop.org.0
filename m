Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A751B391A6A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 16:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133976EDA4;
	Wed, 26 May 2021 14:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FC716EDBF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 14:37:36 +0000 (UTC)
IronPort-SDR: NSgIyMeXg/feJaSl3O+IwpA+cx0z3pO+U5iukjRxCigR7HbxDjTEMO7l2UXfmcYywKr0xziS17
 WV3tMkdqiOWA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202237834"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="202237834"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 07:37:36 -0700
IronPort-SDR: FnWYcPJFsCj01i91X5Gn+WOX+EB2lzSwrtDthAoM1Emtfb9EdluH1VW/ml2w8zvRLCgYEDWe89
 P/eOCEk1rTcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="443067521"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 26 May 2021 07:37:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 May 2021 17:37:32 +0300
Date: Wed, 26 May 2021 17:37:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YK5dLK+RhPFwcgE+@intel.com>
References: <20210526181728.14817-1-bhanuprakash.modem@intel.com>
 <20210526181728.14817-3-bhanuprakash.modem@intel.com>
 <87im35bmfj.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87im35bmfj.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/debug: Expose Dither
 status via debugfs
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
Cc: intel-gfx@lists.freedesktop.org, nischal.varide@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 26, 2021 at 05:26:56PM +0300, Jani Nikula wrote:
> On Wed, 26 May 2021, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wr=
ote:
> > It's useful to know the dithering state & pipe bpc for IGT testing.
> > This patch will expose the dithering state for the crtc via a debugfs
> > file "dither".
> >
> > Example usage: cat /sys/kernel/debug/dri/0/crtc-0/dither
> >
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Nischal Varide <nischal.varide@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 32 +++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/dri=
vers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 94e5cbd86e77..a6fefc7d5ab9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -2158,11 +2158,43 @@ static const struct {
> >  	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
> >  };
> >  =

> > +static int dither_state_show(struct seq_file *m, void *data)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(m->private);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > +	struct intel_crtc_state *crtc_state;
> > +	int ret;
> > +
> > +	if (!HAS_DISPLAY(dev_priv))
> > +		return -ENODEV;
> =

> Unneeded.
> =

> > +
> > +	ret =3D drm_modeset_lock_single_interruptible(&crtc->base.mutex);
> > +	if (ret)
> > +		return ret;
> > +
> > +	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > +	seq_printf(m, "bpc: %u\n", crtc_state->pipe_bpp / 3);
> > +	seq_printf(m, "Dither: %u\n", (crtc_state->dither) ? 1 : 0);
> > +	seq_printf(m, "Dither_CC1: %u\n",
> > +		(crtc_state->gamma_mode & GAMMA_MODE_DITHER_AFTER_CC1) ? 1 : 0);
> =

> Are you looking to duplicate the conditions for enabling this CC1 mode
> in IGT, and then checking if the driver set the bit as well?
> =

> I thought the direction has been that we don't do this type of
> validation in IGT. There is no end to it.
> =

> Ville?

Yeah, I hate all the ad-hoc debugfs files. They just get in the
way of refactoring all the time.

For state dumps we should just fix the midlayer crap in the atomic
state dump framework and start using it.

> =

> > +
> > +	drm_modeset_unlock(&crtc->base.mutex);
> > +
> > +	return 0;
> > +}
> > +DEFINE_SHOW_ATTRIBUTE(dither_state);
> > +
> >  void intel_display_debugfs_register(struct drm_i915_private *i915)
> >  {
> >  	struct drm_minor *minor =3D i915->drm.primary;
> > +	struct drm_device *dev =3D &i915->drm;
> > +	struct drm_crtc *crtc;
> >  	int i;
> >  =

> > +	drm_for_each_crtc(crtc, dev)
> > +		debugfs_create_file("dither", 0444, crtc->debugfs_entry, crtc,
> > +				    &dither_state_fops);
> > +
> =

> See intel_crtc_debugfs_add(), called from intel_crtc_late_register().
> =

> >  	for (i =3D 0; i < ARRAY_SIZE(intel_display_debugfs_files); i++) {
> >  		debugfs_create_file(intel_display_debugfs_files[i].name,
> >  				    S_IRUGO | S_IWUSR,
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
