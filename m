Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DA41EF81D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 14:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEB496E8D7;
	Fri,  5 Jun 2020 12:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72F5D6E8D7
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 12:41:46 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id x202so8059926oix.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Jun 2020 05:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b8lHa3VSsS3EH4GstrmtufuSPQnby9wIaLbKSXX2gR4=;
 b=Y0FSL3jop1Ktvp+81IKa884hHcJEOFCxyltl1k0MHEops3eSwWVVNdvKPpCE7Zx9WU
 //QeTiDmbXPc/dqdkmu7fHeWYxTzH103/85ltphoFY/gEm8OQl2oqXW4w61a7KN1Jhgb
 CSloh85q5YYyHCGG2UV5knxi5s6dBfhtE6irk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b8lHa3VSsS3EH4GstrmtufuSPQnby9wIaLbKSXX2gR4=;
 b=n9H8UAOnYfpLrZm9zqv+M3QvFQomrZWTJFWfCWG0VRDUFTBNulmJfdC+PuhGEDW4Lk
 ZcxQA9JaW326y8K7VdP/Uu6jRUmkmEM83/OTteCsDdxjB6dq+2xYfuVwP6NlYFEnlpYm
 vvF1q3Mfjm7ZTzjNPzERP/yHazvzaHAt40/AoO3JOxV9n4Lehas+qNd+iZMYNo165D0b
 JUiThQLihHeFP4a1LjcmPxEYo6qHmdxOM+KOEkB92F4uUb6yKnaOdktk5RY8xzEONQX+
 LDuJ1IShNrJD/komybRj3tyT7CcterZIOcO+uO6Bh93FDkoLtjMzPOKl1uP76rTHNE1r
 Ndzw==
X-Gm-Message-State: AOAM532tW295TnOBHPL6fwG9zomQ8DX0vLrTYKuPowoCrHnBgQEA2yXd
 9Ox1xLXFQDWDquvXw9ZtKZBkVM14lxwjhV9yV70vAw==
X-Google-Smtp-Source: ABdhPJxDBFuxj/jT06KYKDwsSDsZtaJk7DJpn+CTYVJxr0/W+a1EfH/HPafid8DVkUdwYip+bwgoQY+h1NITtsGMh7k=
X-Received: by 2002:aca:ed42:: with SMTP id l63mr1645633oih.101.1591360905783; 
 Fri, 05 Jun 2020 05:41:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-14-daniel.vetter@ffwll.ch>
 <e0bfd872-5d38-6718-a23d-6b14b3c14f25@amd.com>
In-Reply-To: <e0bfd872-5d38-6718-a23d-6b14b3c14f25@amd.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 5 Jun 2020 14:41:34 +0200
Message-ID: <CAKMK7uG6VN93ZS3Rbi6edvDAMefXJ6CotMx5j916VcUy2nuvqQ@mail.gmail.com>
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>
Subject: Re: [Intel-gfx] [PATCH 13/18] drm/amdgpu/dc: Stop dma_resv_lock
 inversion in commit_tail
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
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 5, 2020 at 10:30 AM Pierre-Eric Pelloux-Prayer
<pierre-eric.pelloux-prayer@amd.com> wrote:
>
> Hi Daniel,
>
> On 04/06/2020 10:12, Daniel Vetter wrote:
> [...]
> > @@ -6910,7 +6910,11 @@ static void amdgpu_dm_commit_planes(struct drm_atomic_state *state,
> >                * explicitly on fences instead
> >                * and in general should be called for
> >                * blocking commit to as per framework helpers
> > +              *
> > +              * Yes, this deadlocks, since you're calling dma_resv_lock in a
> > +              * path that leads to a dma_fence_signal(). Don't do that.
> >                */
> > +#if 0
> >               r = amdgpu_bo_reserve(abo, true);
> >               if (unlikely(r != 0))
> >                       DRM_ERROR("failed to reserve buffer before flip\n");
> > @@ -6920,6 +6924,12 @@ static void amdgpu_dm_commit_planes(struct drm_atomic_state *state,
> >               tmz_surface = amdgpu_bo_encrypted(abo);
> >
> >               amdgpu_bo_unreserve(abo);
> > +#endif
> > +             /*
> > +              * this races anyway, so READ_ONCE isn't any better or worse
> > +              * than the stuff above. Except the stuff above can deadlock.
> > +              */
> > +             tiling_flags = READ_ONCE(abo->tiling_flags);
>
> With this change "tmz_surface" won't be initialized properly.
> Adding the following line should fix it:
>
>   tmz_surface = READ_ONCE(abo->flags) & AMDGPU_GEM_CREATE_ENCRYPTED;

So to make this clear, I'm not really proposing to fix up all the
drivers in detail. There's a lot more bugs in all the other drivers,
I'm pretty sure. The driver fixups really are just quick hacks to
illustrate the problem, and at least in some cases, maybe illustrate a
possible solution.

For the real fixes I think this needs driver teams working on this,
and make sure it's all solid. I can help a bit with review (especially
for placing the annotations, e.g. the one I put in cs_submit()
annotates a bit too much), but that's it.

Also I think the patch is from before tmz landed, and I just blindly
rebased over it :-)
-Daniel

>
>
> Pierre-Eric
>
>
> >
> >               fill_dc_plane_info_and_addr(
> >                       dm->adev, new_plane_state, tiling_flags,
> >



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
