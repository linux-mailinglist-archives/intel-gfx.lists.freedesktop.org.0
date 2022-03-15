Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DCB4DA3EC
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 21:23:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6F610E357;
	Tue, 15 Mar 2022 20:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E027510E357
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 20:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647375809; x=1678911809;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xnfRqWnE3NXldF8xt1agkHW4F9C3IBYorINxuI4m+JA=;
 b=A61FP2taHt0ifQxGrbVsDuMCNkyXt6Xim0XNqYIKPLwhcu2hqaofZTCP
 uVcJI+pMm3iz0SS36sgMgiZhs8G/pI/3z4WEYf4ZB4LR7RVyOjW2urtMM
 Z8UjCVKAAcz3ONqyMAeb2pfKjezNpYIFsILE8pLTnwqvgSMW7lN0SdJ9n
 J4RgfQotAUcaQLp8Mcjye1I9QYOv8C2kYNyobAwD92kkGewjjzSKJCSNt
 LwpCfXrgy3q07rVPnVIJdLjUmMiUK49clgsBY+rEd8pP2NXC9xaakYJTM
 H+iNAAXhpGAal1EteXgWjqpntFjtwja2NuCtRT9q0jQEO1+J/YuWmYke/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="236363077"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="236363077"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 13:23:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="580650240"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 15 Mar 2022 13:23:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 22:23:26 +0200
Date: Tue, 15 Mar 2022 22:23:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YjD1vpq7u4yXSopV@intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-10-ville.syrjala@linux.intel.com>
 <f83e90ee190e523c6b796b916c91b07b54649b20.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f83e90ee190e523c6b796b916c91b07b54649b20.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: s/enable/active/ for DRRS
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 15, 2022 at 06:54:21PM +0000, Souza, Jose wrote:
> On Tue, 2022-03-15 at 15:27 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Rename the DRRS functiosn to say "(de)activate" rather than
> > "enable/disable". This let's us differentiate between the
> > logically enabled vs. actually currently active cases.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++--
> >  .../drm/i915/display/intel_display_debugfs.c  | 15 ++++++++-----
> >  drivers/gpu/drm/i915/display/intel_drrs.c     | 22 ++++++++++---------
> >  drivers/gpu/drm/i915/display/intel_drrs.h     |  6 ++---
> >  4 files changed, 27 insertions(+), 20 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 86fc8ddd0b8f..90d54281535d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1246,7 +1246,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
> >  	    !needs_cursorclk_wa(new_crtc_state))
> >  		icl_wa_cursorclkgating(dev_priv, pipe, false);
> >  
> > -	intel_drrs_enable(new_crtc_state);
> > +	intel_drrs_activate(new_crtc_state);
> >  }
> >  
> >  static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
> > @@ -1324,7 +1324,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	enum pipe pipe = crtc->pipe;
> >  
> > -	intel_drrs_disable(old_crtc_state);
> > +	intel_drrs_deactivate(old_crtc_state);
> >  
> >  	intel_psr_pre_plane_update(state, crtc);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index e0a126e7ebb8..18b98788b23e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -1159,6 +1159,9 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
> >  	seq_puts(m, "\n");
> >  
> >  	for_each_intel_crtc(&dev_priv->drm, crtc) {
> > +		const struct intel_crtc_state *crtc_state =
> > +			to_intel_crtc_state(crtc->base.state);
> > +
> >  		seq_printf(m, "[CRTC:%d:%s]:\n",
> >  			   crtc->base.base.id, crtc->base.name);
> >  
> > @@ -1166,7 +1169,10 @@ static int i915_drrs_status(struct seq_file *m, void *unused)
> >  
> >  		/* DRRS Supported */
> >  		seq_printf(m, "\tDRRS Enabled: %s\n",
> > -			   str_yes_no(intel_drrs_is_enabled(crtc)));
> > +			   str_yes_no(crtc_state->has_drrs));
> > +
> > +		seq_printf(m, "\tDRRS Active: %s\n",
> > +			   str_yes_no(intel_drrs_is_active(crtc)));
> 
> So there is no way to know if the worker thread have activated the downclock mode?
> I prefer to have the "activated" as meaning that the downlock is in use.

The "DRRS refresh rate" print shows if we're actually running at
high or low refresh rate right now.

-- 
Ville Syrjälä
Intel
