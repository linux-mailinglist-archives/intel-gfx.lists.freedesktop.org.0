Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D707A874D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 16:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3BD88A3E;
	Wed, 20 Sep 2023 14:39:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com
 [IPv6:2607:f8b0:4864:20::12f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 361A388A3E
 for <Intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 14:39:41 +0000 (UTC)
Received: by mail-il1-x12f.google.com with SMTP id
 e9e14a558f8ab-34e25ad38cbso21174625ab.1
 for <Intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 07:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1695220780; x=1695825580;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OScehdxYuBaDwfv0La59cCpoJc+gwLUHhYmawOtLQcY=;
 b=cPnzNFwbfx0jvwo4lWe9/ByNQjlg6qHLU5D9XdIOf8Z0r+vyEcF/fFUw029aHPxRnt
 D5TvxtW0roOhqbBWmzhywLj4ntRttTEShr1+3RPuEtXm1VPrqcVW9I42yyKnCvMEWPVO
 lfIdmNEbYXNbTzjwD9WrOPB2yAy+w7PPE9S9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695220780; x=1695825580;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OScehdxYuBaDwfv0La59cCpoJc+gwLUHhYmawOtLQcY=;
 b=kiaXlzDf3f0AloSZ/fUDlGFk1TV3GIJwoP+VukrJU2QCH0cYHypJbC8itM5HzChaoq
 OXltlFZR9Lh3n9qrR9E99Q3VJ8D+Y3M7wYA/SC30HKyTeUD6kH0KbU6nef5X7HfOdAhw
 NwWRr5989UaGVKAE2/4+OVE2S/RnLcrHG6j5WBxqwRJbBXB8EYo5hYbgiYpq4n8rhxKq
 MqLlwq/AwXrGNbRQH0AkC6hh9MpLozjlH6nyoMTyHdT1X64dx01ystgX7uxyBiyqAUi0
 B2OQk4LlavhmhKMu31Crz9U+lFfmT47Q5ElDFsAnBo7MoQzFHFZr5mgHvFUwqsgcCSDg
 bS2Q==
X-Gm-Message-State: AOJu0Yzm1XZyfe67+jI55NM42nfK0zMDYFo5epXUJtNmDLt54mqYMfdc
 2efXAKWma0hNfQpaKV21xh+FAhPoknXVpq2d20lvug==
X-Google-Smtp-Source: AGHT+IHHppqJECtMcUFnv/VREl7AS8OThu/r1Q3jxYlMuLImsJ4eaVqWC3EuRRa/6kEj5kBXEHUv9ddD6eiuXb5RRwU=
X-Received: by 2002:a05:6e02:b24:b0:348:6736:6605 with SMTP id
 e4-20020a056e020b2400b0034867366605mr3541115ilu.9.1695220780424; Wed, 20 Sep
 2023 07:39:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230707130220.3966836-1-tvrtko.ursulin@linux.intel.com>
 <20230707130220.3966836-6-tvrtko.ursulin@linux.intel.com>
 <SJ1PR11MB620442619CCB434B2A5A87EF811DA@SJ1PR11MB6204.namprd11.prod.outlook.com>
 <83cc1270-1924-cd39-8eab-c89b5b5a8ee7@linux.intel.com>
In-Reply-To: <83cc1270-1924-cd39-8eab-c89b5b5a8ee7@linux.intel.com>
From: Rob Clark <robdclark@chromium.org>
Date: Wed, 20 Sep 2023 07:39:29 -0700
Message-ID: <CAJs_Fx5CM8HPgfyJoNN21ThK8WEPx1=Msthh_72-DBTamF-Cyw@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Implement fdinfo memory stats
 printing
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 20, 2023 at 7:35=E2=80=AFAM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 24/08/2023 12:35, Upadhyay, Tejas wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of=
 Tvrtko
> >> Ursulin
> >> Sent: Friday, July 7, 2023 6:32 PM
> >> To: Intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org
> >> Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Implement fdinfo memory sta=
ts
> >> printing
> >>
> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>
> >> Use the newly added drm_print_memory_stats helper to show memory
> >> utilisation of our objects in drm/driver specific fdinfo output.
> >>
> >> To collect the stats we walk the per memory regions object lists and
> >> accumulate object size into the respective drm_memory_stats categories=
.
> >>
> >> Objects with multiple possible placements are reported in multiple reg=
ions for
> >> total and shared sizes, while other categories are counted only for th=
e
> >> currently active region.
> >>
> >> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> >> Cc: Rob Clark <robdclark@gmail.com>
> >> ---
> >>   drivers/gpu/drm/i915/i915_drm_client.c | 85 ++++++++++++++++++++++++=
++
> >>   1 file changed, 85 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c
> >> b/drivers/gpu/drm/i915/i915_drm_client.c
> >> index ffccb6239789..5c77d6987d90 100644
> >> --- a/drivers/gpu/drm/i915/i915_drm_client.c
> >> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
> >> @@ -45,6 +45,89 @@ void __i915_drm_client_free(struct kref *kref)  }
> >>
> >>   #ifdef CONFIG_PROC_FS
> >> +static void
> >> +obj_meminfo(struct drm_i915_gem_object *obj,
> >> +        struct drm_memory_stats stats[INTEL_REGION_UNKNOWN]) {
> >> +    struct intel_memory_region *mr;
> >> +    u64 sz =3D obj->base.size;
> >> +    enum intel_region_id id;
> >> +    unsigned int i;
> >> +
> >> +    /* Attribute size and shared to all possible memory regions. */
> >> +    for (i =3D 0; i < obj->mm.n_placements; i++) {
> >> +            mr =3D obj->mm.placements[i];
> >> +            id =3D mr->id;
> >> +
> >> +            if (obj->base.handle_count > 1)
> >> +                    stats[id].shared +=3D sz;
> >> +            else
> >> +                    stats[id].private +=3D sz;
> >> +    }
> >> +
> >> +    /* Attribute other categories to only the current region. */
> >> +    mr =3D obj->mm.region;
> >> +    if (mr)
> >> +            id =3D mr->id;
> >> +    else
> >> +            id =3D INTEL_REGION_SMEM;
> >> +
> >> +    if (!obj->mm.n_placements) {
> >> +            if (obj->base.handle_count > 1)
> >> +                    stats[id].shared +=3D sz;
> >> +            else
> >> +                    stats[id].private +=3D sz;
> >> +    }
> >> +
> >> +    if (i915_gem_object_has_pages(obj)) {
> >> +            stats[id].resident +=3D sz;
> >> +
> >> +            if (!dma_resv_test_signaled(obj->base.resv,
> >> +                                        dma_resv_usage_rw(true)))
> >
> > Should not DMA_RESV_USAGE_BOOKKEEP also considered active (why only "rw=
")? Some app is syncing with syncjobs and has added dma_fence with DMA_RESV=
_USAGE_BOOKKEEP during execbuf while that BO is busy on waiting on work!
>
> Hmm do we have a path which adds DMA_RESV_USAGE_BOOKKEEP usage in execbuf=
?
>
> Rob, any comments here? Given how I basically lifted the logic from
> 686b21b5f6ca ("drm: Add fdinfo memory stats"), does it sound plausible
> to upgrade the test against all fences?

Yes, I think so.. I don't have any use for BOOKKEEP so I hadn't considered =
it

BR,
-R


>
> Regards,
>
> Tvrtko
>
> >> +                    stats[id].active +=3D sz;
> >> +            else if (i915_gem_object_is_shrinkable(obj) &&
> >> +                     obj->mm.madv =3D=3D I915_MADV_DONTNEED)
> >> +                    stats[id].purgeable +=3D sz;
> >> +    }
> >> +}
> >> +
> >> +static void show_meminfo(struct drm_printer *p, struct drm_file *file=
)
> >> +{
> >> +    struct drm_memory_stats stats[INTEL_REGION_UNKNOWN] =3D {};
> >> +    struct drm_i915_file_private *fpriv =3D file->driver_priv;
> >> +    struct i915_drm_client *client =3D fpriv->client;
> >> +    struct drm_i915_private *i915 =3D fpriv->i915;
> >> +    struct drm_i915_gem_object *obj;
> >> +    struct intel_memory_region *mr;
> >> +    struct list_head *pos;
> >> +    unsigned int id;
> >> +
> >> +    /* Public objects. */
> >> +    spin_lock(&file->table_lock);
> >> +    idr_for_each_entry (&file->object_idr, obj, id)
> >> +            obj_meminfo(obj, stats);
> >> +    spin_unlock(&file->table_lock);
> >> +
> >> +    /* Internal objects. */
> >> +    rcu_read_lock();
> >> +    list_for_each_rcu(pos, &client->objects_list) {
> >> +            obj =3D i915_gem_object_get_rcu(list_entry(pos, typeof(*o=
bj),
> >> +                                                     client_link));
> >> +            if (!obj)
> >> +                    continue;
> >> +            obj_meminfo(obj, stats);
> >> +            i915_gem_object_put(obj);
> >> +    }
> >> +    rcu_read_unlock();
> >> +
> >> +    for_each_memory_region(mr, i915, id)
> >> +            drm_print_memory_stats(p,
> >> +                                   &stats[id],
> >> +                                   DRM_GEM_OBJECT_RESIDENT |
> >> +                                   DRM_GEM_OBJECT_PURGEABLE,
> >> +                                   mr->name);
> >> +}
> >> +
> >>   static const char * const uabi_class_names[] =3D {
> >>      [I915_ENGINE_CLASS_RENDER] =3D "render",
> >>      [I915_ENGINE_CLASS_COPY] =3D "copy",
> >> @@ -106,6 +189,8 @@ void i915_drm_client_fdinfo(struct drm_printer *p,
> >> struct drm_file *file)
> >>       *
> >> ****************************************************************
> >> **
> >>       */
> >>
> >> +    show_meminfo(p, file);
> >> +
> >>      if (GRAPHICS_VER(i915) < 8)
> >>              return;
> >>
> >> --
> >> 2.39.2
> >
