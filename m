Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 399C052BB4A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:02:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AB1E10EDA2;
	Wed, 18 May 2022 13:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4348E10ED71
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652878947; x=1684414947;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VtBty/h36E4YUWJwWJmfEOESYJxC0bBSLnqemaG432E=;
 b=AEAMDYlXnhpPqTkJtjCPgsbChfFZ99VhcsZg3Tc4uPHtWyeHHpbcE4UB
 UGOfjMxkX5mdSlVRArCnIvRt/W6N74DgpM512fw3aarhKgEqBQSu7ezkJ
 hKrCijxmh33nxZ6gSJ/mXc9qHNJyeeWg3O9uUTDxdLJA5ebGH0EMYrJls
 ZygM4B+GSB3YB/ThzRhZnkbDjE23vY8tPUrS9tjsaN1rthf1G+75Rwdy+
 wY0am5TTNkyTCnFClb22FUp6JLn25mK8mS6qkymQH2N8VDd0I+tRB5GFW
 xr4TZGvh9Xva0K7OFTdWe5nH5aK0n/CURp/sUFtX48RGtYTkD4kqtsGIM A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="271354704"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="271354704"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:02:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="714406506"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga001.fm.intel.com with SMTP; 18 May 2022 06:02:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 May 2022 16:02:21 +0300
Date: Wed, 18 May 2022 16:02:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <YoTuXZZa0lfN0LL8@intel.com>
References: <20220518105946.28179-1-stanislav.lisovskiy@intel.com>
 <87ee0rdq01.fsf@intel.com> <20220518120544.GA28397@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220518120544.GA28397@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Write zero wms if we disable
 planes for icl+
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

On Wed, May 18, 2022 at 03:05:44PM +0300, Lisovskiy, Stanislav wrote:
> On Wed, May 18, 2022 at 02:44:30PM +0300, Jani Nikula wrote:
> > On Wed, 18 May 2022, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > > Otherwise we seem to get FIFO underruns. It is being disabled
> > > anyway, so kind of logical to write those as zeroes, even if
> > > disabling is temporary.
> > >
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  .../drm/i915/display/skl_universal_plane.c    |  2 +-
> > >  drivers/gpu/drm/i915/intel_pm.c               | 46 +++++++++++++++++++
> > >  drivers/gpu/drm/i915/intel_pm.h               |  2 +
> > >  3 files changed, 49 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index caa03324a733..c0251189c042 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -633,7 +633,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
> > >  	if (icl_is_hdr_plane(dev_priv, plane_id))
> > >  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
> > >  
> > > -	skl_write_plane_wm(plane, crtc_state);
> > > +	skl_write_zero_plane_wm(plane, crtc_state);
> > >  
> > >  	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
> > >  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index ee0047fdc95d..2470c037bfae 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -5885,6 +5885,52 @@ void skl_write_plane_wm(struct intel_plane *plane,
> > >  				    PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
> > >  }
> > >  
> > > +void skl_write_zero_plane_wm(struct intel_plane *plane,
> > > +			     const struct intel_crtc_state *crtc_state)
> > > +{
> > > +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> > > +	int level, max_level = ilk_wm_max_level(dev_priv);
> > > +	enum plane_id plane_id = plane->id;
> > > +	enum pipe pipe = plane->pipe;
> > > +	struct skl_pipe_wm pipe_wm;
> > > +	const struct skl_ddb_entry *ddb =
> > > +		&crtc_state->wm.skl.plane_ddb[plane_id];
> > > +	const struct skl_ddb_entry *ddb_y =
> > > +		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> > > +
> > > +	for (level = 0; level <= max_level; level++) {
> > 
> > Not your doing here, but why have we adopted this error prone inclusive
> > max that always makes you take a double look in the for loops?!
> > 
> > BR,
> > Jani.
> 
> No clue, really. It seems to be used same way all over the place in
> intel_pm.c. I was suggesting there is some smart reasoning behind this,
> so simply follow the common approach.
> 
> For me it is more confusing that apparently it is called "ilk_*" which
> is IronLake probably, however we use it everywhere.
> I would call it simple i915_wm_max_level and make it determine itself based on
> dev_priv which platform it is..

There are loads of (old by now) patches on the list for cleaning
up all kinds of stuff in the wm code:
https://patchwork.freedesktop.org/series/50802/
https://patchwork.freedesktop.org/series/83289/
https://patchwork.freedesktop.org/series/90164/

-- 
Ville Syrjälä
Intel
