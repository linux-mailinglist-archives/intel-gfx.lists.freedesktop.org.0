Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE4147300D
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 16:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D37410E701;
	Mon, 13 Dec 2021 15:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B32710E701
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 15:04:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="299532841"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="299532841"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 07:04:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="464658590"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 13 Dec 2021 07:04:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Dec 2021 17:04:15 +0200
Date: Mon, 13 Dec 2021 17:04:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ybdg7xgPpClI8kNQ@intel.com>
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
 <20211213134450.3082-5-ville.syrjala@linux.intel.com>
 <87ilvs7ges.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ilvs7ges.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/fbc: Register per-crtc
 debugfs files
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

On Mon, Dec 13, 2021 at 04:01:15PM +0200, Jani Nikula wrote:
> On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Expose FBC debugfs files for each crtc. These may or may not point
> > to the same FBC instance depending on the platform.
> >
> > We leave the old global debugfs files in place until
> > igt catches up to the new per-crtc approach.
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 31 +++++++++++++++---------
> >  1 file changed, 19 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 53c93387710c..eafd84e7f058 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1798,25 +1798,32 @@ DEFINE_SIMPLE_ATTRIBUTE(intel_fbc_debugfs_false_color_fops,
> >  			intel_fbc_debugfs_false_color_set,
> >  			"%llu\n");
> >  
> > -static void intel_fbc_debugfs_add(struct intel_fbc *fbc)
> > +static void intel_fbc_debugfs_add(struct intel_fbc *fbc,
> > +				  struct dentry *parent)
> >  {
> > -	struct drm_i915_private *i915 = fbc->i915;
> > -	struct drm_minor *minor = i915->drm.primary;
> > -
> > -	debugfs_create_file("i915_fbc_status", 0444,
> > -			    minor->debugfs_root, fbc,
> > -			    &intel_fbc_debugfs_status_fops);
> > +	debugfs_create_file("i915_fbc_status", 0444, parent,
> > +			    fbc, &intel_fbc_debugfs_status_fops);
> >  
> >  	if (fbc->funcs->set_false_color)
> > -		debugfs_create_file("i915_fbc_false_color", 0644,
> > -				    minor->debugfs_root, fbc,
> > -				    &intel_fbc_debugfs_false_color_fops);
> > +		debugfs_create_file("i915_fbc_false_color", 0644, parent,
> > +				    fbc, &intel_fbc_debugfs_false_color_fops);
> >  }
> >  
> >  void intel_fbc_debugfs_register(struct drm_i915_private *i915)
> >  {
> > -	struct intel_fbc *fbc = i915->fbc[INTEL_FBC_A];
> > +	struct drm_minor *minor = i915->drm.primary;
> > +	struct intel_crtc *crtc;
> > +	struct intel_fbc *fbc;
> >  
> > +	for_each_intel_crtc(&i915->drm, crtc) {
> > +		struct intel_plane *plane = to_intel_plane(crtc->base.primary);
> > +
> > +		if (plane->fbc)
> > +			intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
> > +	}
> 
> I think the per-crtc debugfs files should be registered via
> intel_crtc_debugfs_add().

I supposs. Seems a bit more leaky as far as abstractions goes
though. It would make a lot more sense if crtcs could be
registered dynamically, but they can't. I'll respin anyway.

-- 
Ville Syrjälä
Intel
