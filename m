Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBF32DBD6D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 10:20:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA6396E0B9;
	Wed, 16 Dec 2020 09:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250186E0B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 09:20:23 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id y15so16713374qtv.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 01:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qAiXLq0Rv2iziEcam+8ortu3kvvfONHe9LpZGNcwpDs=;
 b=bNgY0zrnVbl16HeIu3oMkgjt37C2+LBQdPBgFghyuVw3CrTAD7jvHQ440I284IZT04
 n1fXbQtpUIb1evDOpO+ltkigndAPsH/fRA9qdFJ72GzV+CwwySAv9SPq/LAnRblSq7Ag
 cDbZOpB5PzmXZf5WiUzFqcZvcAgiAtQiSiId5EwZm0iJ2OJMISbiCMt2Et5q+e9NOk14
 K7uIWmEpb/bY6wG57iHUd81GcV4Tt+5SLG25WV5xqcyZu5WUIO7j1ZjFSDh2E76Z/lH1
 hluFDgsPIWrjWaTyK+7Pjth3zuWZRnbga4tnz/6tElEq8KSYD1tScoON2gV8/lAtGs8p
 LwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qAiXLq0Rv2iziEcam+8ortu3kvvfONHe9LpZGNcwpDs=;
 b=Q8LR1QLKLT83nd/VXCKvhbj1FPFhffy1wvm6+GqzbD7A6abHMs5Jk72PqjavsAY4LV
 WkkmLdu1huB4w9SzViM47wPKb4Wx0T4V4UWC5yTvGEV8fYpDFFpm4ljWQSWJoa4jqXZv
 6f1T5gl/mLLx50cAuceCOwmbDCc53a5SOVCMPiNyDqF/bzs8HylcHE1DOBs4+lLpioa5
 hTF7R5Y1wYelsIDoeSuQMbWxJwgbzhuYlBfZsFNZWnwVrGqbMJwF8fmlVCV8lrr+ZZpS
 KT7tbY5wAD4aCBy2MgLYvNWus7b646NoorO2vWtRKsTMI9IbFgBsAUepFopUfseg79WG
 sPeQ==
X-Gm-Message-State: AOAM531qvbnk0+6hnURwWlroVfs9vcWc251T83ZSFcU/Md7Wyul793We
 bA1Zu8OQZZP2JXrP61wrQokp2WaekWzjY0dCTZQZD8Yy4U4=
X-Google-Smtp-Source: ABdhPJyPUZDHP0DpBXHcl5qvoqfkOGGFUddTfzQScBnWUUAMxYfpZ/GNDHzy1UV7/FHfGr5obc4jqY4gNCjSic4jvG0=
X-Received: by 2002:ac8:1c6a:: with SMTP id j39mr42161397qtk.341.1608110422280; 
 Wed, 16 Dec 2020 01:20:22 -0800 (PST)
MIME-Version: 1.0
References: <20201215203111.650-1-chris@chris-wilson.co.uk>
 <3e4fe0b2533e48d19d78f3a4752b6508@intel.com>
 <160806973208.14591.6953006911801735484@build.alporthouse.com>
 <498fa7d973bb49acba439b0060d9e7d3@intel.com>
 <160810819627.1420.3427754786741837992@build.alporthouse.com>
In-Reply-To: <160810819627.1420.3427754786741837992@build.alporthouse.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 16 Dec 2020 09:19:56 +0000
Message-ID: <CAM0jSHOTWq77TvNzVE-EoQxKNKV0mCqivYyjEd2ewY9KEPp-zQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mismatch between misplaced
 vma check and vma insert
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
Cc: vger.kernel.orgstable@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 16 Dec 2020 at 08:43, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Tang, CQ (2020-12-16 00:51:21)
> >
> >
> > > -----Original Message-----
> > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > Sent: Tuesday, December 15, 2020 2:02 PM
> > > To: Tang, CQ <cq.tang@intel.com>; intel-gfx@lists.freedesktop.org
> > > Cc: stable@ <vger.kernel.org stable@vger.kernel.org>
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mismatch between misplaced
> > > vma check and vma insert
> > >
> > > Quoting Tang, CQ (2020-12-15 21:50:53)
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > Sent: Tuesday, December 15, 2020 12:31 PM
> > > > > To: intel-gfx@lists.freedesktop.org
> > > > > Cc: Chris Wilson <chris@chris-wilson.co.uk>; Tang, CQ
> > > > > <cq.tang@intel.com>; stable@vger.kernel.org
> > > > > Subject: [PATCH] drm/i915: Fix mismatch between misplaced vma check
> > > > > and vma insert
> > > > >
> > > > > When inserting a VMA, we restrict the placement to the low 4G unless
> > > > > the caller opts into using the full range. This was done to allow
> > > > > usersapce the opportunity to transition slowly from a 32b address
> > > > > space, and to avoid breaking inherent 32b assumptions of some
> > > commands.
> > > > >
> > > > > However, for insert we limited ourselves to 4G-4K, but on
> > > > > verification we allowed the full 4G. This causes some attempts to
> > > > > bind a new buffer to sporadically fail with -ENOSPC, but at other times be
> > > bound successfully.
> > > > >
> > > > > commit 48ea1e32c39d ("drm/i915/gen9: Set PIN_ZONE_4G end to 4GB - 1
> > > > > page") suggests that there is a genuine problem with stateless
> > > > > addressing that cannot utilize the last page in 4G and so we purposefully
> > > excluded it.
> > > > >
> > > > > Reported-by: CQ Tang <cq.tang@intel.com>
> > > > > Fixes: 48ea1e32c39d ("drm/i915/gen9: Set PIN_ZONE_4G end to 4GB - 1
> > > > > page")
> > > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > Cc: CQ Tang <cq.tang@intel.com>
> > > > > Cc: stable@vger.kernel.org
> > > > > ---
> > > > >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > index 193996144c84..2ff32daa50bd 100644
> > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > > > > @@ -382,7 +382,7 @@ eb_vma_misplaced(const struct
> > > > > drm_i915_gem_exec_object2 *entry,
> > > > >               return true;
> > > > >
> > > > >       if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
> > > > > -         (vma->node.start + vma->node.size - 1) >> 32)
> > > > > +         (vma->node.start + vma->node.size + 4095) >> 32)
> > > >
> > > > Why 4095 not 4096?
> > >
> > > It's the nature of the test that we need an inclusive bound.
> > >
> > > Consider an object of size 4G - 4K, that is allowed to fit within our 32b GTT.
> > >
> > >       4G - 4k + 4K = 4G == 1 << 32: => vma misplaced
> > >
> > >       4G - 4k + 4k - 1 = 4G -1 = 0xffffffff => vma ok
> >
> > How do we trigger this code?  I run gem_exec_params@larger-than-life-batch but did not see this code is executed.
> > Basically how do we triggre first attempt to pin the object in place.
>
> It's the first pin tried, but the incoming execobj.offset must be
> available and the object itself must be ready to be pinned. That's true
> for the current tree on all current gen.

Missing the original mail so just replying here,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
