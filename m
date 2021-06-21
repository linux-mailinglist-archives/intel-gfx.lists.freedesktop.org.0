Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4A63AEBC6
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 16:52:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A236D6E199;
	Mon, 21 Jun 2021 14:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28D46E199
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 14:52:03 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id a11so20011903wrt.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 07:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=AbaPlvah+Ju6zhXNaN88VdyTBpFh1PUhyqod0OgSxNM=;
 b=XoFYxhg5/rH+chfe0jMPtTcuc8Gk/rxoMYfuM6cKQ2bUfHEfhyRLgpHV8xd0B+II1K
 hyInr45oYCzfMnOHSvXhgd8emzVYMtPY5I833WMgcu4JVMuPUv7s3azM78629vrvnc7E
 BHvNXEhC/Gc21zXnSeL/Tc+AkQWcCj4jQqdZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=AbaPlvah+Ju6zhXNaN88VdyTBpFh1PUhyqod0OgSxNM=;
 b=NAwvH4FEAL4bMS1z34jVZenT2KBJmqC7qJX2u8f15sF29zdmhkP0DMo7NdaNDIZC4d
 mGrRIUcymfAOvGZ1KoyUjLH9FLx1935Kvtdp5KkgX+mpmfPY1MVIkpP+36AZRkGIkW5B
 tOnCmcuCb8C2GGZsEIqjWtk2uFpbIwezmKKKkQ/ViT5olBB6+C4lbIVprE4vex9rmuYh
 u3OWI0ylTcn4HIkj4UOvRwFq1//kyjgPvM2BdzG7F35xncsWFxBuB8miE/Z/KFfx/cJ9
 c6eOpK58NHwOmmo2g8/bXRSFeJhL/yBlGYcQ+kkWBay2sj+Nc/PBaTafTfP7RGe6nMFJ
 3M1w==
X-Gm-Message-State: AOAM531cbDwPMPHh41vFSV4KUDRwYyxsU7h+y5XUUOlSEipDJDjZPzsF
 87KkkxM3ipugGfpdQ2Sj45TMCQ==
X-Google-Smtp-Source: ABdhPJwlGpK6YApvXUEKS6g2HQc7Mx6WZ0NbSe7bjb2AFdqPk24HO3HjHfYBGGSsN0swiJdNZPmaLg==
X-Received: by 2002:a05:6000:1842:: with SMTP id
 c2mr28340544wri.426.1624287122352; 
 Mon, 21 Jun 2021 07:52:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n4sm4421952wrw.21.2021.06.21.07.52.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 07:52:01 -0700 (PDT)
Date: Mon, 21 Jun 2021 16:51:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <YNCnj2l2fSUb+hZR@phenom.ffwll.local>
References: <20210618214503.1773805-1-daniel.vetter@ffwll.ch>
 <8678b7b8-ad42-3e14-158e-77994b299c6e@intel.com>
 <9c2b9130-4361-7a30-52a2-fc1d96e0f124@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c2b9130-4361-7a30-52a2-fc1d96e0f124@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/eb: Fix pagefault disabling in the
 first slowpath
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
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 21, 2021 at 04:30:50PM +0200, Maarten Lankhorst wrote:
> Op 21-06-2021 om 11:33 schreef Matthew Auld:
> > On 18/06/2021 22:45, Daniel Vetter wrote:
> >> In
> >>
> >> commit ebc0808fa2da0548a78e715858024cb81cd732bc
> >> Author: Chris Wilson <chris@chris-wilson.co.uk>
> >> Date:=A0=A0 Tue Oct 18 13:02:51 2016 +0100
> >>
> >> =A0=A0=A0=A0 drm/i915: Restrict pagefault disabling to just around cop=
y_from_user()
> >>
> >> we entirely missed that there's a slow path call to eb_relocate_entry
> >> (or i915_gem_execbuffer_relocate_entry as it was called back then)
> >> which was left fully wrapped by pagefault_disable/enable() calls.
> >> Previously any issues with blocking calls where handled by the
> >> following code:
> >>
> >> =A0=A0=A0=A0/* we can't wait for rendering with pagefaults disabled */
> >> =A0=A0=A0=A0if (pagefault_disabled() && !object_is_idle(obj))
> >> =A0=A0=A0=A0=A0=A0=A0 return -EFAULT;
> >>
> >> Now at this point the prefaulting was still around, which means in
> >> normal applications it was very hard to hit this bug. No idea why the
> >> regressions in igts weren't caught.
> >>
> >> Now this all changed big time with 2 patches merged closely together.
> >>
> >> First
> >>
> >> commit 2889caa9232109afc8881f29a2205abeb5709d0c
> >> Author: Chris Wilson <chris@chris-wilson.co.uk>
> >> Date:=A0=A0 Fri Jun 16 15:05:19 2017 +0100
> >>
> >> =A0=A0=A0=A0 drm/i915: Eliminate lots of iterations over the execobjec=
ts array
> >>
> >> removes the prefaulting from the first relocation path, pushing it into
> >> the first slowpath (of which this patch added a total of 3 escalation
> >> levels). This would have really quickly uncovered the above bug, were
> >> it not for immediate adding a duct-tape on top with
> >>
> >> commit 7dd4f6729f9243bd7046c6f04c107a456bda38eb
> >> Author: Chris Wilson <chris@chris-wilson.co.uk>
> >> Date:=A0=A0 Fri Jun 16 15:05:24 2017 +0100
> >>
> >> =A0=A0=A0=A0 drm/i915: Async GPU relocation processing
> >>
> >> by pushing all all the relocation patching to the gpu if the buffer
> >> was busy, which avoided all the possible blocking calls.
> >>
> >> The entire slowpath was then furthermore ditched in
> >>
> >> commit 7dc8f1143778a35b190f9413f228b3cf28f67f8d
> >> Author: Chris Wilson <chris@chris-wilson.co.uk>
> >> Date:=A0=A0 Wed Mar 11 16:03:10 2020 +0000
> >>
> >> =A0=A0=A0=A0=A0=A0=A0=A0 drm/i915/gem: Drop relocation slowpath
> >>
> >> and resurrected in
> >>
> >> commit fd1500fcd4420eee06e2c7f3aa6067b78ac05871
> >> Author: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> Date:=A0=A0 Wed Aug 19 16:08:43 2020 +0200
> >>
> >> =A0=A0=A0=A0=A0=A0=A0=A0 Revert "drm/i915/gem: Drop relocation slowpat=
h".
> >>
> >> but this did not further impact what's going on.
> >>
> >> Since pagefault_disable/enable is an atomic section, any sleeping in
> >> there is prohibited, and we definitely do that without gpu relocations
> >> since we have to wait for the gpu usage to finish before we can patch
> >> up the relocations.
> >
> > Why do we also need the __copy_from_user_inatomic in eb_relocate_vma()?
> >
> > Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> >
> >>
> >> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> >> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> >> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> >> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> >> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> >> Cc: "Thomas Hellstr=F6m" <thomas.hellstrom@linux.intel.com>
> >> Cc: Matthew Auld <matthew.auld@intel.com>
> >> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> >> Cc: Dave Airlie <airlied@redhat.com>
> >> Cc: Jason Ekstrand <jason@jlekstrand.net>
> >> ---
> >> =A0 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 --
> >> =A0 1 file changed, 2 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/=
gpu/drm/i915/gem/i915_gem_execbuffer.c
> >> index 6539b82dda54..7ff2fc3c0b2c 100644
> >> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> >> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> >> @@ -2082,9 +2082,7 @@ static noinline int eb_relocate_parse_slow(struc=
t i915_execbuffer *eb,
> >> =A0 =A0=A0=A0=A0=A0 list_for_each_entry(ev, &eb->relocs, reloc_link) {
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 if (!have_copy) {
> >> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pagefault_disable();
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 err =3D eb_relocate_vma(eb, ev=
);
> >> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pagefault_enable();
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (err)
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 } else {
> >>
> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Pushed to drm-intel-gt-next, thanks to both of you for taking a look.
-Daniel

> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
