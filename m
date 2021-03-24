Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 056EA347FE8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 18:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8276EA5C;
	Wed, 24 Mar 2021 17:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F266EA59;
 Wed, 24 Mar 2021 17:58:30 +0000 (UTC)
IronPort-SDR: tPe0iGCG0ihtoJp6oW2v/5O3H6fGr5HVm9t0UCqXEkL1RBTYydD5HJ4Wj/KnniMw+h4e/WC6Lc
 qjfaYuk7kdWg==
X-IronPort-AV: E=McAfee;i="6000,8403,9933"; a="190785530"
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; d="scan'208";a="190785530"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 10:58:29 -0700
IronPort-SDR: D4tmMFVMx42KFE0m4I/LwlOEZ/rXtUKlRdlYIIFT1rFvad0Tf8A/mCFQCOBhfQnBH0ZMuOcseY
 U134xeRvyu6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,275,1610438400"; d="scan'208";a="376521959"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 24 Mar 2021 10:58:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Mar 2021 19:58:26 +0200
Date: Wed, 24 Mar 2021 19:58:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <YFt9wvC+3pTjyidz@intel.com>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
 <20210323155059.628690-64-maarten.lankhorst@linux.intel.com>
 <YFtwHG3ZbjzhuzOZ@phenom.ffwll.local> <YFtzuLjmMAU030wn@intel.com>
 <YFtz/KiStRF3uQUc@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YFtz/KiStRF3uQUc@phenom.ffwll.local>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v9 63/70] drm/i915: Move gt_revoke() slightly
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 24, 2021 at 06:16:44PM +0100, Daniel Vetter wrote:
> On Wed, Mar 24, 2021 at 07:15:36PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Wed, Mar 24, 2021 at 06:00:12PM +0100, Daniel Vetter wrote:
> > > On Tue, Mar 23, 2021 at 04:50:52PM +0100, Maarten Lankhorst wrote:
> > > > We get a lockdep splat when the reset mutex is held, because it can=
 be
> > > > taken from fence_wait. This conflicts with the mmu notifier we have,
> > > > because we recurse between reset mutex and mmap lock -> mmu notifie=
r.
> > > > =

> > > > Remove this recursion by calling revoke_mmaps before taking the loc=
k.
> > > > =

> > > > The reset code still needs fixing, as taking mmap locks during reset
> > > > is not allowed.
> > > > =

> > > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Reviewed-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_reset.c | 5 +++--
> > > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/dr=
m/i915/gt/intel_reset.c
> > > > index 990cb4adbb9a..447f589750c2 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > > > @@ -970,8 +970,6 @@ static int do_reset(struct intel_gt *gt, intel_=
engine_mask_t stalled_mask)
> > > >  {
> > > >  	int err, i;
> > > >  =

> > > > -	gt_revoke(gt);
> > > > -
> > > >  	err =3D __intel_gt_reset(gt, ALL_ENGINES);
> > > >  	for (i =3D 0; err && i < RESET_MAX_RETRIES; i++) {
> > > >  		msleep(10 * (i + 1));
> > > > @@ -1026,6 +1024,9 @@ void intel_gt_reset(struct intel_gt *gt,
> > > >  =

> > > >  	might_sleep();
> > > >  	GEM_BUG_ON(!test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
> > > > +
> > > =

> > > I've added a FIXME comment here just so we don't totally forget. This=
 will
> > > also blow up again when we wrap the entire reset path into a dma_fence
> > > critical section annotation (at least going forward, we can't do that=
 on
> > > hw that needs display reset with the current code unfortunately).
> > > =

> > > But I did look at the code which originally added this in
> > > =

> > > commit 2caffbf1176256cc4f8d4e5c3c524fc689cb9876
> > > Author: Chris Wilson <chris@chris-wilson.co.uk>
> > > Date:   Fri Feb 8 15:37:03 2019 +0000
> > > =

> > >     drm/i915: Revoke mmaps and prevent access to fence registers acro=
ss reset
> > > =

> > > and noped right out.
> > > =

> > > I think this complexity needs to go entirely, and instead we just pro=
tect
> > > the fence register state to make sure that after reset they are all g=
ood
> > > again:
> > > - add a new mutex for low level fence register state
> > > - hold that mutex around fence register writes (really just the low l=
evel
> > >   fence writes)
> > > - hold it in the reset path when we restore fence registers
> > > =

> > > This means that a global reset also thrashes mmaps, but it's a global
> > > reset we're talking about here, everything is thrash anyway. Plus/min=
us
> > > fenced gtt mmaps really doesn't change the tally.
> > =

> > My recollection is that GPU reset doesn't actually clobber the fence =

> > registers. Though not 100% sure I can trust my brain on this. Also
> > dunno if it actually matter here or not, but figured I'd point it out.
> =

> I think on gen2/3 it does, because there everything goes over. But yeah
> maybe on gen4+ it's all fine, would be worth to check that.

Right you are. Gave it a quick test on my 945gm and the fence
registers did get zeroed out. I guess it was snb+ where it didn't
happen. Well, could be some of the earlier platforms too I guess.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
