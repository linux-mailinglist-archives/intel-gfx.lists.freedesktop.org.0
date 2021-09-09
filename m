Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A79584058F9
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 16:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6186E5CE;
	Thu,  9 Sep 2021 14:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3690F6E877
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 14:26:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="217640590"
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="217640590"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 07:26:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="449991315"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 09 Sep 2021 07:26:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Sep 2021 17:26:02 +0300
Date: Thu, 9 Sep 2021 17:26:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Message-ID: <YToZetaiK5+I+4m1@intel.com>
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-4-airlied@gmail.com>
 <87r1dz76os.fsf@intel.com>
 <CAPM=9txoo9D7oorULWtPXWCDivNALXEk4ptohWKrCbEFhwdu8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPM=9txoo9D7oorULWtPXWCDivNALXEk4ptohWKrCbEFhwdu8Q@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/21] drm/i915/wm: move the update
 watermark wrapper to display side.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 09, 2021 at 06:40:59AM +1000, Dave Airlie wrote:
> On Wed, 8 Sept 2021 at 19:33, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >
> > On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> > > From: Dave Airlie <airlied@redhat.com>
> > >
> > > A vague goal is to have the vfunc table be the api between
> > > wm and display, not having direction function calls cross
> > > the boundary.
> > >
> > > This aligns the legacy update_wm with the newer vfuncs.
> > >
> > > The comment probably needs to live somewhere else, it seems
> > > like it should live in the pm side though not the display side,
> > > but I brought it along for the ride.
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++++++++++++
> > >  drivers/gpu/drm/i915/intel_pm.c              | 39 -------------------
> > >  drivers/gpu/drm/i915/intel_pm.h              |  1 -
> > >  3 files changed, 40 insertions(+), 40 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index d95283bf2631..b495371c1889 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >
> > We haven't been axing stuff out of intel_display.c so we could add
> > somethign else back! ;)
> >
> > A new file for watermarks or display pm? Ville?

We need multiple files. But I've been hoping to land more watermark
refactoring first so I'd not have to rebase tons of stuff across
massive code motion patches. Unfortunatley review for that stuff
is hard to come by.

Regarding the .update_wm() hook in particular, it's just an ancient
thing that is not meant to exist once all the wm code gets atomized.
So no real point in polishing it any further in its current form IMO.

> 
> The main reason I landed it there, was because all the other calls to
> the wm funcs are in intel_display, and this wrapper is very small and
> ends up being a static, the comment on the other hand, I've no idea
> where it should have landed.
> 
> Dave.

-- 
Ville Syrjälä
Intel
