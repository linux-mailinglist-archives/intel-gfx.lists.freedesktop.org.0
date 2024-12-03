Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9FA9E2175
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 16:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7227E10EA55;
	Tue,  3 Dec 2024 15:13:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="1cP0qfyv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B268410EA55
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 15:13:49 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-2154dc36907so122155ad.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2024 07:13:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1733238829; x=1733843629;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=v3i1FdpGOPmjk2p5Hu2OkcpoZbDVTID/Izdo29/K4rw=;
 b=1cP0qfyvstSymetMiyvDnLN7Aj5sve/yD8mtteun/A+quZOrE+sHrWWXL0tGw5g7Vw
 vZjPRe21qsbAgDTr/dg8oRvNlzn8qH8XS1VEB83rHjTU6cOtLg6Z7jrhgh6Xsbxj4cQo
 chLbgasJtauIysooWPl33HzmIaMGj4kPPTw1uE3L/caFZK3W5UuvzFzGLgWnNDDOPT8n
 Ne75xDdfJmDSEHc/xzld761ci+IA2wZNIBtTSTe3+Uj3ecwBNJeapaKmB4MepqdhbnLG
 Sxy72t4OGU7+UWJVTcqIqjnoPlRvn4PSsD0d/XtvLSTa0GOaIxuk1eX8XCl4OhchtyE+
 LPwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733238829; x=1733843629;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=v3i1FdpGOPmjk2p5Hu2OkcpoZbDVTID/Izdo29/K4rw=;
 b=m2Yh/8nyTonmUU1G8YDZ0Zq9XOHfHIuN7O8TYrMdYyxRSyRe5RFZTPKPjZ0FJC494/
 Plp0wQefOXtTjzrdMG0OzBlDg4+v1Po8iE9v4OXwc5ZMkHcsIFu5bX2iSkcv4Ith1R4D
 4Zzx8CAB1nPt5G1TxlAPYA6pXN/nvGmv2axJC23tG8E7PZtr3iTkXALLAKYup2XtQNTG
 LsplW/v/yaeNHBE8q1aiRsKBSSBrhLt8f3LOovLg9uJdwDb0qgb5FODReYeNY5/D2uzF
 oAiSWg5r8rP6tG6ag32d9pFNFkYGUC9QS3RvOG7RVwBYDfPGYuwaQZCnqLyzLu3VUJn6
 lkCg==
X-Gm-Message-State: AOJu0Yx/pQ7zmVo0gT3/Ze7q2aK1OeLfIbWlpeEjF5DdF8vIQNqs3HHp
 ZUd2s1ZKWXjlJ6QXEVLVdIE4F5SdRWtVpwddFSRu2UJB2ZGvQfRiQvqgAoh7sx6Q5nraJIx9iiP
 Ezq+m7FrvMV/5waKoKNsE52xJRkuq71R6B1ro
X-Gm-Gg: ASbGncsSZKZmXkExBwTk19xPZyoWymfYsshQ/akYxC59vYw48CYlHTgDLoh0ajb5LZs
 tnUMxtzEpHmoxZ+m//ckQJwu27wrdEw==
X-Google-Smtp-Source: AGHT+IGBXS+pdi71MRqksqjy4W296HSa/PvCP0yuNEsKFpFTB8tmBM/rl90aim0s6Z++Kh0zPsiFrbJdGVkMDGOsQ54=
X-Received: by 2002:a17:902:d54b:b0:215:42a3:e844 with SMTP id
 d9443c01a7336-215bf8e53ddmr1917145ad.17.1733238829038; Tue, 03 Dec 2024
 07:13:49 -0800 (PST)
MIME-Version: 1.0
References: <20241127061117.25622-1-ville.syrjala@linux.intel.com>
 <20241127061117.25622-4-ville.syrjala@linux.intel.com>
 <CADyq12zaBCxJ_dZVadew+JMp1=uNVAJWYX-k45m76-G925UuTg@mail.gmail.com>
 <Z06_R3Rj78B81ULM@intel.com> <Z07AgMjJUpIZtKPj@intel.com>
In-Reply-To: <Z07AgMjJUpIZtKPj@intel.com>
From: Brian Geffon <bgeffon@google.com>
Date: Tue, 3 Dec 2024 10:13:12 -0500
Message-ID: <CADyq12wjqmfqsdveqCSmOUbKNwOXr46T8rJrbENk=r=uERgh+Q@mail.gmail.com>
Subject: Re: [PATCH 3/4] drm/i915/dpt: Evict all DPT VMAs on suspend
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Vidya Srinivas <vidya.srinivas@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Tue, Dec 3, 2024 at 3:25=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Tue, Dec 03, 2024 at 10:20:23AM +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> > On Mon, Dec 02, 2024 at 10:40:36AM -0500, Brian Geffon wrote:
> > > On Wed, Nov 27, 2024 at 1:11=E2=80=AFAM Ville Syrjala
> > > <ville.syrjala@linux.intel.com> wrote:
> > > >
> > > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > >
> > > > Currently intel_dpt_resume() tries to blindly rewrite all the
> > > > PTEs for currently bound DPT VMAs. That is problematic because
> > > > the CPU mapping for the DPT is only really guaranteed to exist
> > > > while the DPT object has been pinned. In the past we worked
> > > > around this issue by making DPT objects unshrinkable, but that
> > > > is undesirable as it'll waste physical RAM.
> > > >
> > > > Let's instead forcefully evict all the DPT VMAs on suspend,
> > > > thus guaranteeing that intel_dpt_resume() has nothing to do.
> > > > To guarantee that all the DPT VMAs are evictable by
> > > > intel_dpt_suspend() we need to flush the cleanup workqueue
> > > > after the display output has been shut down.
> > > >
> > > > And for good measure throw in a few extra WARNs to catch
> > > > any mistakes.
> > > >
> > > > Cc: Brian Geffon <bgeffon@google.com>
> > > > Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> > > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om>
> > > > ---
> > > >  .../drm/i915/display/intel_display_driver.c   |  3 +++
> > > >  drivers/gpu/drm/i915/display/intel_dpt.c      |  4 ++--
> > > >  drivers/gpu/drm/i915/gt/intel_ggtt.c          | 19 ++++++++++++++-=
----
> > > >  drivers/gpu/drm/i915/gt/intel_gtt.h           |  4 ++--
> > > >  4 files changed, 21 insertions(+), 9 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/=
drivers/gpu/drm/i915/display/intel_display_driver.c
> > > > index 286d6f893afa..973bee43b554 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > > > @@ -680,6 +680,9 @@ int intel_display_driver_suspend(struct drm_i91=
5_private *i915)
> > > >         else
> > > >                 i915->display.restore.modeset_state =3D state;
> > > >
> > > > +       /* ensure all DPT VMAs have been unpinned for intel_dpt_sus=
pend() */
> > > > +       flush_workqueue(i915->display.wq.cleanup);
> > > > +
> > > >         intel_dp_mst_suspend(i915);
> > > >
> > > >         return ret;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu=
/drm/i915/display/intel_dpt.c
> > > > index ce8c76e44e6a..8b1f0e92a11c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> > > > @@ -205,7 +205,7 @@ void intel_dpt_resume(struct drm_i915_private *=
i915)
> > > >                 struct intel_framebuffer *fb =3D to_intel_framebuff=
er(drm_fb);
> > > >
> > > >                 if (fb->dpt_vm)
> > > > -                       i915_ggtt_resume_vm(fb->dpt_vm);
> > > > +                       i915_ggtt_resume_vm(fb->dpt_vm, true);
> > > >         }
> > > >         mutex_unlock(&i915->drm.mode_config.fb_lock);
> > > >  }
> > > > @@ -233,7 +233,7 @@ void intel_dpt_suspend(struct drm_i915_private =
*i915)
> > > >                 struct intel_framebuffer *fb =3D to_intel_framebuff=
er(drm_fb);
> > > >
> > > >                 if (fb->dpt_vm)
> > > > -                       i915_ggtt_suspend_vm(fb->dpt_vm);
> > > > +                       i915_ggtt_suspend_vm(fb->dpt_vm, true);
> > > >         }
> > > >
> > > >         mutex_unlock(&i915->drm.mode_config.fb_lock);
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm=
/i915/gt/intel_ggtt.c
> > > > index d60a6ca0cae5..f6c59f20832f 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > > @@ -107,11 +107,12 @@ int i915_ggtt_init_hw(struct drm_i915_private=
 *i915)
> > > >  /**
> > > >   * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT o=
r DPT VM
> > > >   * @vm: The VM to suspend the mappings for
> > > > + * @evict_all: Evict all VMAs
> > > >   *
> > > >   * Suspend the memory mappings for all objects mapped to HW via th=
e GGTT or a
> > > >   * DPT page table.
> > > >   */
> > > > -void i915_ggtt_suspend_vm(struct i915_address_space *vm)
> > > > +void i915_ggtt_suspend_vm(struct i915_address_space *vm, bool evic=
t_all)
> > > >  {
> > > >         struct i915_vma *vma, *vn;
> > > >         int save_skip_rewrite;
> > > > @@ -157,7 +158,7 @@ void i915_ggtt_suspend_vm(struct i915_address_s=
pace *vm)
> > > >                         goto retry;
> > > >                 }
> > > >
> > > > -               if (!i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND)) =
{
> > > > +               if (evict_all || !i915_vma_is_bound(vma, I915_VMA_G=
LOBAL_BIND)) {
> > >
> > > I don't fully understand this part. Why can we safely assume we can d=
o
> > > __i915_vma_evict(), shouldn't we want to __i915_vma_unbind() in the
> > > case where it was bound? Because of the unconditional evict_all we
> > > might be unbinding a bound vma, no? Is that safe? Please forgive my
> > > ignorance if this question doesn't make sense.
> >
> > It looked to me like __i915_vma_unbind() pretty much just calls
> > __i915_vma_evict() anyway, and the sync stuff shouldn't matter
> > here.
> >
> > Hmm, I suppose there is that vma->node handling that might screw
> > us over somehow. I'll need to check what that actually does.
>
> Ah, we do drm_mm_remove_node(&vma->node) manually anyway here.
> That explains why it doesn't blow up later in vma_insert().
> So yeah, this kinda just looks like a hand rolled vma_unbind()
> more or less. Why it doesn't just call the whole thing I
> don't know.

Okay, thanks for looking. One final thing, it seems the prior fix:
43e2b37e2ab6 "drm/i915/dpt: Make DPT object unshrinkable", which we
agree was not correct, was CCed stable. Should we also do:

Fixes: 43e2b37e2ab6 "drm/i915/dpt: Make DPT object unshrinkable"
Cc: stable@vger.kernel.org

On this series?

>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
