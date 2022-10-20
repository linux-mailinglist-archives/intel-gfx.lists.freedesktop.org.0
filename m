Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0296059E3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 10:33:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B94710E171;
	Thu, 20 Oct 2022 08:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3726410E171
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 08:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666254831; x=1697790831;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Usx946MbnhevrcWzApvlz9hBnAWVlob/udPDczavoQo=;
 b=WraISoQvp8b5y6NkMnk542JZ8QoeGA+isXdDXulsXQmHqvcwb/vay+T2
 J15QH3n5RxsLqVHBXXUjXJ1HbRDLbSSQ1r4ps0zJVxHb93cgkxxWTNDii
 Rt6YdLZsuwAX5hyx9mATiDbk7ImmI+cwwqP3MnY5Bgf3TdttohswGOk+R
 tCTGCWxevCGXd3vpFZUN7BVDtC5VSnj7kDorBpc4eRu+1b8j23Y9d4Gge
 1tQAyHzZBAt+1NqNIbd3RiM/siNaUIrCMdNYPQ2P72PzChJlwO6JAXn7J
 q0ZELEwwgPPF3jdkFYm6wMn0l2MvaIKrzfVYglMaokncJ4kAN5AYv7mEx Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="306642148"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="306642148"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 01:33:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="624557269"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="624557269"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 20 Oct 2022 01:33:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 11:33:44 +0300
Date: Thu, 20 Oct 2022 11:33:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y1EH6L5bPnE/Xtxi@intel.com>
References: <20221006225413.27731-1-ville.syrjala@linux.intel.com>
 <8735bste4c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8735bste4c.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel fixed modes to have
 differing sync polarities
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

On Thu, Oct 13, 2022 at 09:46:27AM +0300, Jani Nikula wrote:
> On Fri, 07 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Apparently some panels declare multiple modes with random
> > sync polarities. Seems a bit weird, but looks like Windows/GOP
> > doesn't care, so let follow suit and accept alternate fixed
> > modes regardless of their sync polarities.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6968
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_panel.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> > index 2b4b359b8342..fdeb1cd608c3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -82,12 +82,16 @@ static bool is_alt_drrs_mode(const struct drm_display_mode *mode,
> >  		mode->clock != preferred_mode->clock;
> >  }
> >  
> > +#define DRM_MODE_FLAG_SYNC_MASK (DRM_MODE_FLAG_PHSYNC | \
> > +				 DRM_MODE_FLAG_NHSYNC | \
> > +				 DRM_MODE_FLAG_PVSYNC | \
> > +				 DRM_MODE_FLAG_NVSYNC)
> 
> Maybe not the best to name the macro in the DRM_MODE_* "namespace"?

Yeah. My "cunning" plan was that maybe one day someone will
add the same define to drm_mode.h and then we can get rid of
it. But that is probably a bad idea, especially since there
are those csync polarity flags as well...

I'll respin with a local variable or something.

> 
> Other than that,
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > +
> >  static bool is_alt_fixed_mode(const struct drm_display_mode *mode,
> >  			      const struct drm_display_mode *preferred_mode)
> >  {
> > -	return drm_mode_match(mode, preferred_mode,
> > -			      DRM_MODE_MATCH_FLAGS |
> > -			      DRM_MODE_MATCH_3D_FLAGS) &&
> > +	return (mode->flags & ~DRM_MODE_FLAG_SYNC_MASK) ==
> > +		(preferred_mode->flags & ~DRM_MODE_FLAG_SYNC_MASK) &&
> >  		mode->hdisplay == preferred_mode->hdisplay &&
> >  		mode->vdisplay == preferred_mode->vdisplay;
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
