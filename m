Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E89E64B87F5
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 13:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB85910E5F5;
	Wed, 16 Feb 2022 12:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5DD610E5F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 12:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645015450; x=1676551450;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=njz6XBC/Eitoxy+nlfWlCgMPC61PJf+CTSuHWyRwKPQ=;
 b=RGQGbTHj1cOXvkcWz9N7olRnX2SSryEyxdXvcm8LIYR2BXNjgg89cAmP
 daRpI7NLQbfVhzB8FOCphhtM5sqY+5Rp9eMSKwtbX2dAUED7i5EcIBdS9
 +ulW6Q0dKBTZU78Tts8bh15eZpuM4rPd/QMNVzgE+5+YYuFEhlswe7WSR
 D0EAq4w4bVRYvolUgGI8LG+sO+mbiVueCoika9tj/DWVm63xzduwXamOy
 kWFxDWxh6T4MyTv9rJT/QfLTr++kBEbbLISNwSdoxhO0wCgj01rYRsJ0d
 6zfrcuxApYcV6itguFKRWfq5ZjcCLmtwfrDGnkEgU8iKMvgObNwrqXPVr w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="337028786"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="337028786"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 04:44:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="503008509"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 16 Feb 2022 04:44:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 14:44:06 +0200
Date: Wed, 16 Feb 2022 14:44:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YgzxlgIimedOAirv@intel.com>
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-3-ville.syrjala@linux.intel.com>
 <877d9v5exn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <877d9v5exn.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915: Introduce
 intel_arm_planes_on_crtc()
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

On Wed, Feb 16, 2022 at 11:38:44AM +0200, Jani Nikula wrote:
> On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > No reason the high level intel_update_crtc() needs to know
> > that there is something magical about the commit order of
> > planes between different platforms. So let's hide that
> > detail even better.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_atomic_plane.c | 19 +++++++++++++++----
> >  .../gpu/drm/i915/display/intel_atomic_plane.h |  6 ++----
> >  drivers/gpu/drm/i915/display/intel_display.c  |  6 +-----
> >  3 files changed, 18 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 3355eb637eac..bba2f105b7dd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -716,8 +716,8 @@ void intel_update_planes_on_crtc(struct intel_atomic_state *state,
> >  	}
> >  }
> >  
> > -void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
> > -			    struct intel_crtc *crtc)
> > +static void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
> > +				   struct intel_crtc *crtc)
> >  {
> >  	struct intel_crtc_state *old_crtc_state =
> >  		intel_atomic_get_old_crtc_state(state, crtc);
> > @@ -751,8 +751,8 @@ void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
> >  	}
> >  }
> >  
> > -void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
> > -			     struct intel_crtc *crtc)
> > +static void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
> > +				    struct intel_crtc *crtc)
> >  {
> >  	struct intel_crtc_state *new_crtc_state =
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > @@ -777,6 +777,17 @@ void i9xx_arm_planes_on_crtc(struct intel_atomic_state *state,
> >  	}
> >  }
> >  
> > +void intel_arm_planes_on_crtc(struct intel_atomic_state *state,
> > +			      struct intel_crtc *crtc)
> > +{
> 
> I don't much like the intel_arm_ prefix here. I'd go for intel_plane_
> something or other.

intel_plane_ is rather bad since this operates on multiple planes.
Though I'm not super happy with the _arm_ vs. _update_ thing we have
going on now. The plane hooks I made .update_noarm() and .update_arm()
(which certainly has a few bad puns in it) so should perhaps just
try to follow a similar naming convention for the high level stuff.

I guess I'd prefer intel_crtc_ as the prefix actually since thats
what we pass in anyway.

-- 
Ville Syrjälä
Intel
