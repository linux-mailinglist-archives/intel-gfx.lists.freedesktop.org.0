Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C5327544D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Sep 2020 11:22:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030D76E905;
	Wed, 23 Sep 2020 09:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 516D36E904
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 09:22:10 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id a3so24350629oib.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Sep 2020 02:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WvfOU4gPA1uYQbk6pajDEAfB6b+5Kfzu0HWpjtCCDs8=;
 b=ZvE/Bxju4dUncDnf1k5N7RV9MO0CGjyNjx9/8P/yYD5Pmnpx9WAfsNRebDGSnYZGVF
 08AEQpJoYRNLm1ubK9Dfmzo7tdGPZqQwAVU5v/G4cIXn76VqbHhCNIyxZoFFzbl5CDQ8
 F+8z8k5mQbSeaY2/Cqvsq3lcbCZ38Zswkd0/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WvfOU4gPA1uYQbk6pajDEAfB6b+5Kfzu0HWpjtCCDs8=;
 b=cav957ji5hiGmESjrw8CNDgyEff/2pMYZU/Vv4W1GgOLrNfn4tB0mNu+yyT+NMY5ef
 4vPxNDmh1iC+EoxZ80F9p3q75BM/I9X3m06s7iBTn29IMFnR1sjv8nuSLrD9SHL1NOuv
 SdYDtm3F7odznGi6b5oRHXO1kf/2azqHGR4XQfXx0VQQNRl9rtUjn6WXvCXll10PkkTs
 rvKv36U6leM7/8umTZdG/zXRLLTqXeyub3MWm7IuRrPFwMSqHenjL57FcDurWx/KnIXG
 tacU8e5Flhhz4+w9foUbqPpZl0NaSRicEHT1OtcNGlc1HpnmdCWi4qrCUgS8v9FfJULf
 06Og==
X-Gm-Message-State: AOAM533woeh/iSzYK6M+TFs0GS42F/nNcT7c6r/eef4KZRcmrto+dRjI
 3HM1hotp1mclBYOHeJXl474ZOPNrB8OPqgdlputHjQ==
X-Google-Smtp-Source: ABdhPJy9bdPhDkNDT+Sumt2fBr1Ms9xyaD57hubInUrhb+Ggk1Pe5uySBsAllDtIPhVuhO9OC/f1LbklkiY0KtCLugE=
X-Received: by 2002:a05:6808:206:: with SMTP id
 l6mr5202677oie.128.1600852929563; 
 Wed, 23 Sep 2020 02:22:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200922181834.2913552-1-daniel.vetter@ffwll.ch>
 <20200923111717.68d9eb51@eldfell>
 <CAKMK7uF02DVRm9cEOnVbSQVXiOqk0_pFdDbX2igae1gfREK1GQ@mail.gmail.com>
In-Reply-To: <CAKMK7uF02DVRm9cEOnVbSQVXiOqk0_pFdDbX2igae1gfREK1GQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 23 Sep 2020 11:21:58 +0200
Message-ID: <CAKMK7uE88Yqo=F9kCsXKKqY2pKeSzZH=QXrJcCimwzgH_U1PdQ@mail.gmail.com>
To: Pekka Paalanen <ppaalanen@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm: document and enforce rules around
 "spurious" EBUSY from atomic_commit
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
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 Simon Ser <contact@emersion.fr>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 23, 2020 at 11:16 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> On Wed, Sep 23, 2020 at 10:17 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> >
> > On Tue, 22 Sep 2020 20:18:34 +0200
> > Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > > When doing an atomic modeset with ALLOW_MODESET drivers are allowed to
> > > pull in arbitrary other resources, including CRTCs (e.g. when
> > > reconfiguring global resources).
> > >
> > > But in nonblocking mode userspace has then no idea this happened,
> > > which can lead to spurious EBUSY calls, both:
> > > - when that other CRTC is currently busy doing a page_flip the
> > >   ALLOW_MODESET commit can fail with an EBUSY
> > > - on the other CRTC a normal atomic flip can fail with EBUSY because
> > >   of the additional commit inserted by the kernel without userspace's
> > >   knowledge
> > >
> > > For blocking commits this isn't a problem, because everyone else will
> > > just block until all the CRTC are reconfigured. Only thing userspace
> > > can notice is the dropped frames without any reason for why frames got
> > > dropped.
> > >
> > > Consensus is that we need new uapi to handle this properly, but no one
> > > has any idea what exactly the new uapi should look like. Since this
> > > has been shipping for years already compositors need to deal no matter
> > > what, so as a first step just try to enforce this across drivers
> > > better with some checks.
> > >
> > > v2: Add comments and a WARN_ON to enforce this only when allowed - we
> > > don't want to silently convert page flips into blocking plane updates
> > > just because the driver is buggy.
> > >
> > > v3: Fix inverted WARN_ON (Pekka).
> > >
> > > v4: Drop the uapi changes, only add a WARN_ON for now to enforce some
> > > rules for drivers.
> >
> > Dropped all addresses, because gmail refused to send this email
> > otherwise.
> >
> > > ---
> > >  drivers/gpu/drm/drm_atomic.c | 27 +++++++++++++++++++++++++++
> > >  1 file changed, 27 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> > > index 58527f151984..ef106e7153a6 100644
> > > --- a/drivers/gpu/drm/drm_atomic.c
> > > +++ b/drivers/gpu/drm/drm_atomic.c
> > > @@ -281,6 +281,10 @@ EXPORT_SYMBOL(__drm_atomic_state_free);
> > >   * needed. It will also grab the relevant CRTC lock to make sure that the state
> > >   * is consistent.
> > >   *
> > > + * WARNING: Drivers may only add new CRTC states to a @state if
> > > + * drm_atomic_state.allow_modeset is set, or if it's a driver-internal commit
> > > + * not created by userspace through an IOCTL call.
> > > + *
> > >   * Returns:
> > >   *
> > >   * Either the allocated state or the error code encoded into the pointer. When
> > > @@ -1262,10 +1266,15 @@ int drm_atomic_check_only(struct drm_atomic_state *state)
> > >       struct drm_crtc_state *new_crtc_state;
> > >       struct drm_connector *conn;
> > >       struct drm_connector_state *conn_state;
> > > +     unsigned requested_crtc = 0;
> > > +     unsigned affected_crtc = 0;
> > >       int i, ret = 0;
> > >
> > >       DRM_DEBUG_ATOMIC("checking %p\n", state);
> > >
> > > +     for_each_new_crtc_in_state(state, crtc, old_crtc_state, i)
> > > +             requested_crtc |= drm_crtc_mask(crtc);
> > > +
> > >       for_each_oldnew_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
> > >               ret = drm_atomic_plane_check(old_plane_state, new_plane_state);
> > >               if (ret) {
> > > @@ -1313,6 +1322,24 @@ int drm_atomic_check_only(struct drm_atomic_state *state)
> > >               }
> > >       }
> > >
> > > +     for_each_new_crtc_in_state(state, crtc, old_crtc_state, i)
> > > +             affected_crtc |= drm_crtc_mask(crtc);
> > > +
> > > +     /*
> > > +      * For commits that allow modesets drivers can add other CRTCs to the
> > > +      * atomic commit, e.g. when they need to reallocate global resources.
> > > +      * This can cause spurious EBUSY, which robs compositors of a very
> > > +      * effective sanity check for their drawing loop. Therefor only allow
> > > +      * this for modeset commits.
> > > +      *
> > > +      * FIXME: Should add affected_crtc mask to the ATOMIC IOCTL as an output
> > > +      * so compositors know what's going on.
> >
> > Hi,
> >
> > I think telling userspace the affected_crtc mask would only solve half
> > of the problem: it would allow userspace to avoid attempting flips on
> > the other affected CRTCs until this modeset is done, but it doesn't
> > stop this non-blocking modeset from EBUSY'ing because other affected
> > CRTCs are busy flipping.
> >
> > If the aim is to indicate userspace bugs with EBUSY, then EBUSY because
> > of other CRTCs needs to be differentiable from EBUSY due to a mistake
> > on this CRTC. Maybe the CRTC mask should instead be "conflicting/busy
> > CRTCs", not simply "affected CRTCS"?
> >
> > Userspace might also be designed to always avoid modesets while any
> > CRTC is busy flipping. In that case any EBUSY would be an indication of
> > a (userspace) bug and a "busy CRTCs" mask could help pinpoint the issue.
> >
> > If userspace does a TEST_ONLY commit with a modeset on one CRTC and the
> > driver pulls in another CRTC that is currently busy, will the test
> > commit return with EBUSY?
> >
> > If yes, and *if* userspace is single-threaded wrt. to KMS updates,
> > that might offer a way to work around it in userspace. But if userspace
> > is flipping other CRTCs from other threads, TEST_ONLY commit does not
> > help because another thread may cut in and make a CRTC busy.

Forgot to explain this TEST_ONLY never returns EBUSY. That only
happens when you commit and failed to wait for the previous frame to
complete. Otherwise compositors would be somewhat screwed with being
blocked instead being able to prep the next frame.

Also note that you'd get this information for any atomic ioctl, so
also for direct commits. The _test_only suffix of this function here
is just internals, the code flow in the ioctl is to always call this
function first, and then optionally call the right commit function.
-Daniel

> You'd also get this from TEST_ONLY commit, so userspace can:
> - wait for any affected crtc to complete out their pending updates,
> which avoids the EBUSY
> - do a blocking modeset (which avoids the EBUSY since it stalls either way)
> - insert a note into it's per-crtc draw loop/tracking that there will
> be another event inserted by the kernel that needs to be waited on
>
> As long as this doesn't race with any other atomic commit or
> processing the event queue, this should be race free. And allow you to
> handle spurious EBUSY both here because of other pending flips, and in
> the next atomic flips because of this commit here.
>
> Also I don't think the kernel needs to tell you which of these crtc
> are busy, since userspace knows that (by tracking outstanding events).
> Plus that information is racy anyway, you'll just have to synchronize
> with your drm event processing.
> -Daniel
>
> >
> >
> > Thanks,
> > pq
> >
> > > +      */
> > > +     if (affected_crtc != requested_crtc) {
> > > +             /* adding other CRTC is only allowed for modeset commits */
> > > +             WARN_ON(!state->allow_modeset);
> > > +     }
> > > +
> > >       return 0;
> > >  }
> > >  EXPORT_SYMBOL(drm_atomic_check_only);
> >
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
