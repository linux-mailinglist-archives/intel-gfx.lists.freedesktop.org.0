Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ABD3D0C69
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 12:29:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 467F56E89C;
	Wed, 21 Jul 2021 10:29:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com
 [IPv6:2607:f8b0:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EC26E89C
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 10:29:16 +0000 (UTC)
Received: by mail-ot1-x32e.google.com with SMTP id
 t4-20020a05683014c4b02904cd671b911bso1635119otq.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 03:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=h417+5Nn2Pgd6WA/rkzrOB7f5qZl0K/oFZRySnon6fM=;
 b=dP5y0SRwrB1hjw/MVYi14vnTeaxW3RWgNT4XKLVwLQTSLYGNhUM8B/5tUKn/AjmG/e
 87Dgni6usuZj0Gwd26LtGaiVnfb+Nb3LcfIks58zLNCluPjUgZ07/vDQPpH5UsVcLJnm
 DUBHIuwtqCITyO6+jd9Nl3a1Uz9J2CkocvlKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=h417+5Nn2Pgd6WA/rkzrOB7f5qZl0K/oFZRySnon6fM=;
 b=eOOeTPAS8QMaC2Me0pGAt4Nr4sZJ+JxH7gTRqiiUroZAmTx3zQF5MTbRi4e4w2SaAd
 d/JtollsKdEvcJk0j6FxyuMLX4kdjBlJlUJ70E2iK1BYiFLfFitywQbYRJxEt8pA8Hzx
 Qi8VanxlOU06AVbfwfV8UZAkUsdV4DQeaiuYf3Hads8a5iuMDJXvVpLjo8xBZ/HHmJsA
 fWxJBY8GHgG19iADAifDJX1Xi5jMmH3OB0+pMg3TxJt72GGQQUNd2xwNUglFjB3aiHw2
 ifbd0ZvyI0MwlaNtKmoc9Luz21TSNUJpVhlJf6P4LmpbWXtU0Jyn04IuD1JyEkGAhY4n
 ERWw==
X-Gm-Message-State: AOAM531fpGmnA6m0sPhn6U82yzKNrcI4YOdAYQLGG4ywQNQsM8Flvcwr
 b2PsR8T9lpVlqptldW64bkh2TPRT8Hd4wxUefkivCA==
X-Google-Smtp-Source: ABdhPJxnsfA3n87/jWpR0qUhPsWBSfRhmjyGwC0ANDR9tMSbPA64GLPwtsPMaBOTIwvd+I7FHsCQ2NOVZZiPWLN/Uko=
X-Received: by 2002:a05:6830:2802:: with SMTP id
 w2mr24416395otu.303.1626863355405; 
 Wed, 21 Jul 2021 03:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210712043508.11584-1-desmondcheongzx@gmail.com>
 <YPcU3wJK7kC5b7kv@phenom.ffwll.local>
 <50c5582b-c674-4ef8-585f-7a3d78a49f85@gmail.com>
In-Reply-To: <50c5582b-c674-4ef8-585f-7a3d78a49f85@gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 21 Jul 2021 12:29:04 +0200
Message-ID: <CAKMK7uGvb3O9Ypd73xZf6bdMcXJyGJw4C7GXGprkZLpN9Gx7qQ@mail.gmail.com>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Subject: Re: [Intel-gfx] [PATCH v8 0/5] drm: address potential UAF bugs with
 drm_master ptrs
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
Cc: Dave Airlie <airlied@linux.ie>, Greg KH <gregkh@linuxfoundation.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Shuah Khan <skhan@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 21, 2021 at 6:12 AM Desmond Cheong Zhi Xi
<desmondcheongzx@gmail.com> wrote:
> On 21/7/21 2:24 am, Daniel Vetter wrote:
> > On Mon, Jul 12, 2021 at 12:35:03PM +0800, Desmond Cheong Zhi Xi wrote:
> >> Hi,
> >>
> >> In the previous thread on this series we decided to remove a patch that was violating a lockdep requirement in drm_lease. In addition to this change, I took a closer look at the CI logs for the Basic Acceptance Tests and noticed that another regression was introduced. The new patch 2 is a response to this.
> >>
> >> Overall, this series addresses potential use-after-free errors when dereferencing pointers to struct drm_master. These were identified after one such bug was caught by Syzbot in drm_getunique():
> >> https://syzkaller.appspot.com/bug?id=148d2f1dfac64af52ffd27b661981a540724f803
> >>
> >> The series is broken up into five patches:
> >>
> >> 1. Move a call to drm_is_current_master() out from a section locked by &dev->mode_config.mutex in drm_mode_getconnector(). This patch does not apply to stable.
> >>
> >> 2. Move a call to drm_is_current_master() out from the RCU read-side critical section in drm_clients_info().
> >>
> >> 3. Implement a locked version of drm_is_current_master() function that's used within drm_auth.c.
> >>
> >> 4. Serialize drm_file.master by introducing a new spinlock that's held whenever the value of drm_file.master changes.
> >>
> >> 5. Identify areas in drm_lease.c where pointers to struct drm_master are dereferenced, and ensure that the master pointers are not freed during use.
> >>
> >> v7 -> v8:
> >> - Remove the patch that moves the call to _drm_lease_held out from the section locked by &dev->mode_config.idr_mutex in __drm_mode_object_find. This patch violated an existing lockdep requirement as reported by the intel-gfx CI.
> >> - Added a new patch that moves a call to drm_is_current_master out from the RCU critical section in drm_clients_info. This was reported by the intel-gfx CI.
> >>
> >> v6 -> v7:
> >> - Modify code alignment as suggested by the intel-gfx CI.
> >> - Add a new patch to the series that adds a new lock to serialize drm_file.master, in response to the lockdep splat by the intel-gfx CI.
> >> - Update drm_file_get_master to use the new drm_file.master_lock instead of drm_device.master_mutex, in response to the lockdep splat by the intel-gfx CI.
> >>
> >> v5 -> v6:
> >> - Add a new patch to the series that moves the call to _drm_lease_held out from the section locked by &dev->mode_config.idr_mutex in __drm_mode_object_find.
> >> - Clarify the kerneldoc for dereferencing drm_file.master, as suggested by Daniel Vetter.
> >> - Refactor error paths with goto labels so that each function only has a single drm_master_put(), as suggested by Emil Velikov.
> >> - Modify comparisons to NULL into "!master", as suggested by the intel-gfx CI.
> >>
> >> v4 -> v5:
> >> - Add a new patch to the series that moves the call to drm_is_current_master in drm_mode_getconnector out from the section locked by &dev->mode_config.mutex.
> >> - Additionally, added a missing semicolon to the patch, caught by the intel-gfx CI.
> >>
> >> v3 -> v4:
> >> - Move the call to drm_is_current_master in drm_mode_getconnector out from the section locked by &dev->mode_config.mutex. As suggested by Daniel Vetter. This avoids a circular lock lock dependency as reported here https://patchwork.freedesktop.org/patch/440406/
> >> - Inside drm_is_current_master, instead of grabbing &fpriv->master->dev->master_mutex, we grab &fpriv->minor->dev->master_mutex to avoid dereferencing a null ptr if fpriv->master is not set.
> >> - Modify kerneldoc formatting for drm_file.master, as suggested by Daniel Vetter.
> >> - Additionally, add a file_priv->master NULL check inside drm_file_get_master, and handle the NULL result accordingly in drm_lease.c. As suggested by Daniel Vetter.
> >>
> >> v2 -> v3:
> >> - Move the definition of drm_is_current_master and the _locked version higher up in drm_auth.c to avoid needing a forward declaration of drm_is_current_master_locked. As suggested by Daniel Vetter.
> >> - Instead of leaking drm_device.master_mutex into drm_lease.c to protect drm_master pointers, add a new drm_file_get_master() function that returns drm_file->master while increasing its reference count, to prevent drm_file->master from being freed. As suggested by Daniel Vetter.
> >>
> >> v1 -> v2:
> >> - Move the lock and assignment before the DRM_DEBUG_LEASE in drm_mode_get_lease_ioctl, as suggested by Emil Velikov.
> >
> > Apologies for the delay, I missed your series. Maybe just ping next time
> > around there's silence.
> >
> > Looks all great, merged to drm-misc-next. Given how complex this was I'm
> > vary of just pushing this to -fixes without some solid testing.
> >
>
> Hi Daniel,
>
> Thanks for merging, more testing definitely sounds good to me.
>
> > One thing I noticed is that drm_is_current_master could just use the
> > spinlock, since it's only doing a read access. Care to type up that patch?
> >
>
> I thought about this too, but I'm not sure if that's the best solution.
>
> drm_is_current_master calls drm_lease_owner which then walks up the tree
> of master lessors. The spinlock protects the master of the current drm
> file, but subsequent lessors aren't protected without holding the
> device's master mutex.

But this isn't a fpriv->master pointer, but a master->lessor pointer.
Which should never ever be able to change (we'd have tons of uaf bugs
around drm_lease_owner otherwise). So I don't think there's anything
that dev->master_lock protects here that fpriv->master_lookup_lock
doesn't protect already?

Or am I missing something?

The comment in the struct drm_master says it's protected by
mode_config.idr_mutex, but that only applies to the idrs and lists I
think.

> > Also, do you plan to look into that idea we've discussed to flush pending
> > access when we revoke a master or a lease? I think that would be really
> > nice improvement here.
> > -Daniel
> >
>
> Yup, now that the potential UAFs are addressed (hopefully), I'll take a
> closer look and propose a patch for this.

Thanks a lot.
-Daniel

>
> Best wishes,
> Desmond
>
> >>
> >> Desmond Cheong Zhi Xi (5):
> >>    drm: avoid circular locks in drm_mode_getconnector
> >>    drm: avoid blocking in drm_clients_info's rcu section
> >>    drm: add a locked version of drm_is_current_master
> >>    drm: serialize drm_file.master with a new spinlock
> >>    drm: protect drm_master pointers in drm_lease.c
> >>
> >>   drivers/gpu/drm/drm_auth.c      | 93 ++++++++++++++++++++++++---------
> >>   drivers/gpu/drm/drm_connector.c |  5 +-
> >>   drivers/gpu/drm/drm_debugfs.c   |  3 +-
> >>   drivers/gpu/drm/drm_file.c      |  1 +
> >>   drivers/gpu/drm/drm_lease.c     | 81 +++++++++++++++++++++-------
> >>   include/drm/drm_auth.h          |  1 +
> >>   include/drm/drm_file.h          | 18 +++++--
> >>   7 files changed, 152 insertions(+), 50 deletions(-)
> >>
> >> --
> >> 2.25.1
> >>
> >
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
