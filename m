Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81CA2940E1
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 18:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0D36EC46;
	Tue, 20 Oct 2020 16:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E9F76EC46
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 16:55:00 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id n11so2359081ota.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 09:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZTT5biCh2wr2DZHg9w2zWIgVXWCnoM2jKQPKwcktW40=;
 b=ItNKIyORBfhDG0JQdFzVmbmdIbdSdsClgP3hsHWyIb+I5F8b7cVBq3oEvrFP4IlYvO
 MISfoQ5F4E+MMnkzYEEy8VOODceuTLNee+buV892Z5S+KA0XVhzbRiInrGf9G2F7SAbb
 d3Ih9Gk6uQYcDPc/320RJbMJWu4oIujGDDgug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZTT5biCh2wr2DZHg9w2zWIgVXWCnoM2jKQPKwcktW40=;
 b=B1HcE7MCh2V3waqOzksSyDuQD4YHP8ayzcLjmq/fMg1CRWK6mUelDa9bQMt35eC50B
 VJFlwdrVPzY2ZA+PFg1gpunYDmop+sR3dmsLbJjjnywsFTfmcfw2EM2KFTQbsu/typFO
 Rv15SWchwuNQ/ti50MqjOAty52C6E9JA2DhgvsUEiBv6iM7YojNhzQAUINR7rN+1TYto
 Lkm1f3YZ071ua79iImswNug1rshzkqb/cIjPBsMWjwzHPhH6dSFI0mh3FEuzNcjNVDvm
 Uh5IUTPTTHf+AuZvWSnJ/sJLOPVS97miTFUTf5v0WLUUtQnWguDdCzEp0pNagEsajbO5
 PARA==
X-Gm-Message-State: AOAM531QiAaTMoX1mJuVWLc3fJ4wu/IEDr3rDc2EvOGUqbbrkDlB9ZR+
 oJSYqBg3LgGwDqrdU/zgKsyEjzNRqpAySuoEJhC7/g==
X-Google-Smtp-Source: ABdhPJwJq1/pTeR6GqhB3c7f/C7LqjXsi/E50IR2q0mPGrxMAuofMUKcPfl8ldXuQBq7mevRmlDAfGRxq9gngqoRKJ4=
X-Received: by 2002:a05:6830:1647:: with SMTP id
 h7mr2488638otr.281.1603212899484; 
 Tue, 20 Oct 2020 09:54:59 -0700 (PDT)
MIME-Version: 1.0
References: <20201020143936.1089259-1-daniel.vetter@ffwll.ch>
 <aaa69018-95eb-29d6-02f7-f3a53d6fadda@suse.de>
In-Reply-To: <aaa69018-95eb-29d6-02f7-f3a53d6fadda@suse.de>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 20 Oct 2020 18:54:48 +0200
Message-ID: <CAKMK7uE-Ro83qsBtVZ0kFc532uXy3Lv0eqNoWjaOPTyCtXFkZA@mail.gmail.com>
To: Thomas Zimmermann <tzimmermann@suse.de>
Subject: Re: [Intel-gfx] [PATCH] drm/doc: Document legacy_cursor_update
 better
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
Cc: David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 20, 2020 at 4:55 PM Thomas Zimmermann <tzimmermann@suse.de> wrote:
>
> Hi
>
> On 20.10.20 16:39, Daniel Vetter wrote:
> > It's the horror and shouldn't be used. Realized we're not clear on
> > this in a discussion with Rob about what msm is doing to better
> > support async commits.
> >
> > Cc: Rob Clark <robdclark@gmail.com>
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > ---
> >  include/drm/drm_atomic.h | 12 +++++++++++-
> >  1 file changed, 11 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
> > index d07c851d255b..413fd0ca56a8 100644
> > --- a/include/drm/drm_atomic.h
> > +++ b/include/drm/drm_atomic.h
> > @@ -308,7 +308,6 @@ struct __drm_private_objs_state {
> >   * struct drm_atomic_state - the global state object for atomic updates
> >   * @ref: count of all references to this state (will not be freed until zero)
> >   * @dev: parent DRM device
> > - * @legacy_cursor_update: hint to enforce legacy cursor IOCTL semantics
> >   * @async_update: hint for asynchronous plane update
> >   * @planes: pointer to array of structures with per-plane data
> >   * @crtcs: pointer to array of CRTC pointers
> > @@ -336,6 +335,17 @@ struct drm_atomic_state {
> >        * drm_atomic_crtc_needs_modeset().
> >        */
> >       bool allow_modeset : 1;
> > +     /**
> > +      * @legacy_cursor_update:
> > +      *
> > +      * Hint to enforce legacy cursor IOCTL semantics.
> > +      *
> > +      * WARNING: This is thoroughly broken and pretty much impossible to
> > +      * implement correctly. Drivers must ignore this and should instead
> > +      * implement &drm_plane_helper_funcs.atomic_async_check and
> > +      * &drm_plane_helper_funcs.atomic_async_commit hooks. New users of this
> > +      * flag are not allowed.
> > +      */
> >       bool legacy_cursor_update : 1;
>
> The text could also say why the field exists in the first place. If it's
> supposed to go away, you could add an item to the TODO list.

"Hint to enforce legacy cursor IOCTL semantics." is the purpose of
this thing. It was used way back as pretty shoddy approach to handling
cursor updates, but is slowly dying.

Good point on adding a todo item for this, I'll respin with that added.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
