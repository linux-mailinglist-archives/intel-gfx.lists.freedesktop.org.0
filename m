Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEF3347F18
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 18:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7716ECB9;
	Wed, 24 Mar 2021 17:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9BD66ECB4
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 17:16:47 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id j7so25249566wrd.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 10:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=R+S6Evbk1NQq3jj3D1FRfJ9Usoohhpyi2nUtrGT8KOM=;
 b=lGMbpEbyGsYR4DRsf7nWig1f+QjSHb/AjXMxDFPPpUv86VzY/6DyjlhUbbb5h1sbFj
 erxz0AOogeQGsZHlH2gKUr9mTpyBMyL9+t58Q0QOUwCqQjDwOHq1REuxlgpvjUT0X9b9
 RduEERjQpieF6DtpzxPeWNyhd8dX6o1pUOQiw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=R+S6Evbk1NQq3jj3D1FRfJ9Usoohhpyi2nUtrGT8KOM=;
 b=ZiNGbXn4rkteB8p7edQZzF3kMq+VF/JFgxBwWlec4Nifi2L5zigOVH9QgY3BhkRteO
 6k/WM5i7tLy/QpHU2P33V3uOKbJ9QI9ML/Kae+iPLTaPadaze5N5is/Q8Wortxf7CXgl
 BqR3vMAOzNb9LhSrBy5o3D31Bhxr1Cgyplots8Sg+UyqjCywz2fctqzMtj8HT2G1Vya0
 yA7YiAAJV0eshieAQrskH5d7wy36Exd/QqlTRmQDxRrpalr39OjIuCKO4jvTXbVgRRQ6
 tgMrV7O/5Vi29Sz8fW/sdAjPPEE2fIYP8zUXfVA/YVMk40HgzRi9eFDfLzlRkDcwbA/H
 YTaw==
X-Gm-Message-State: AOAM531wBgyVaRHev9HMb7sdf3Lvxv+GsEain0iRhUMzzh9kdk6Gfvs4
 bWT9VFYummkcsei89TXfJMH2LQ==
X-Google-Smtp-Source: ABdhPJxmIWv9zK3kVXoxCJIff+aUHrAUko5+3MzW48G7HXxzwMT7BDK6nLK3ZXwffrYdtwdnczQQSg==
X-Received: by 2002:adf:e391:: with SMTP id e17mr4552647wrm.285.1616606206687; 
 Wed, 24 Mar 2021 10:16:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 18sm3265056wmj.21.2021.03.24.10.16.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Mar 2021 10:16:46 -0700 (PDT)
Date: Wed, 24 Mar 2021 18:16:44 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <YFtz/KiStRF3uQUc@phenom.ffwll.local>
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
 <20210323155059.628690-64-maarten.lankhorst@linux.intel.com>
 <YFtwHG3ZbjzhuzOZ@phenom.ffwll.local> <YFtzuLjmMAU030wn@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YFtzuLjmMAU030wn@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
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

On Wed, Mar 24, 2021 at 07:15:36PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Mar 24, 2021 at 06:00:12PM +0100, Daniel Vetter wrote:
> > On Tue, Mar 23, 2021 at 04:50:52PM +0100, Maarten Lankhorst wrote:
> > > We get a lockdep splat when the reset mutex is held, because it can be
> > > taken from fence_wait. This conflicts with the mmu notifier we have,
> > > because we recurse between reset mutex and mmap lock -> mmu notifier.
> > > =

> > > Remove this recursion by calling revoke_mmaps before taking the lock.
> > > =

> > > The reset code still needs fixing, as taking mmap locks during reset
> > > is not allowed.
> > > =

> > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Reviewed-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_reset.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/=
i915/gt/intel_reset.c
> > > index 990cb4adbb9a..447f589750c2 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > > @@ -970,8 +970,6 @@ static int do_reset(struct intel_gt *gt, intel_en=
gine_mask_t stalled_mask)
> > >  {
> > >  	int err, i;
> > >  =

> > > -	gt_revoke(gt);
> > > -
> > >  	err =3D __intel_gt_reset(gt, ALL_ENGINES);
> > >  	for (i =3D 0; err && i < RESET_MAX_RETRIES; i++) {
> > >  		msleep(10 * (i + 1));
> > > @@ -1026,6 +1024,9 @@ void intel_gt_reset(struct intel_gt *gt,
> > >  =

> > >  	might_sleep();
> > >  	GEM_BUG_ON(!test_bit(I915_RESET_BACKOFF, &gt->reset.flags));
> > > +
> > =

> > I've added a FIXME comment here just so we don't totally forget. This w=
ill
> > also blow up again when we wrap the entire reset path into a dma_fence
> > critical section annotation (at least going forward, we can't do that on
> > hw that needs display reset with the current code unfortunately).
> > =

> > But I did look at the code which originally added this in
> > =

> > commit 2caffbf1176256cc4f8d4e5c3c524fc689cb9876
> > Author: Chris Wilson <chris@chris-wilson.co.uk>
> > Date:   Fri Feb 8 15:37:03 2019 +0000
> > =

> >     drm/i915: Revoke mmaps and prevent access to fence registers across=
 reset
> > =

> > and noped right out.
> > =

> > I think this complexity needs to go entirely, and instead we just prote=
ct
> > the fence register state to make sure that after reset they are all good
> > again:
> > - add a new mutex for low level fence register state
> > - hold that mutex around fence register writes (really just the low lev=
el
> >   fence writes)
> > - hold it in the reset path when we restore fence registers
> > =

> > This means that a global reset also thrashes mmaps, but it's a global
> > reset we're talking about here, everything is thrash anyway. Plus/minus
> > fenced gtt mmaps really doesn't change the tally.
> =

> My recollection is that GPU reset doesn't actually clobber the fence =

> registers. Though not 100% sure I can trust my brain on this. Also
> dunno if it actually matter here or not, but figured I'd point it out.

I think on gen2/3 it does, because there everything goes over. But yeah
maybe on gen4+ it's all fine, would be worth to check that.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
