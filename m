Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4982A3C7317
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 17:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10686E0DC;
	Tue, 13 Jul 2021 15:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E61026E0DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 15:23:09 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id l6so5622939wmq.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 08:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ZyDE72BEikMsZQkeBdPjmeIyI09HS8dPmrnIoIB+GTs=;
 b=AG0YFpSBbOG9aUkii1JGYNC6rosRNDjNgst6Qm/ZALrbh7ivnmzcOFWBapi4f6+mgc
 wnj6QPccdnxK/VfClpY64q0Z/z3ZM97eMjBH4w8qf+Kn0oeDGdPGTaLgbaU16s7Jf8YT
 LPp+jiOdkUqFjMjCThAhV7S6YXt8lA1q2AWUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZyDE72BEikMsZQkeBdPjmeIyI09HS8dPmrnIoIB+GTs=;
 b=cisl9jiuMuVH/Y7hZ95YX2wr2eqA7BprrAaSk6wkWkLmLr0VPknE1v7MeJlg17oU9B
 n1vSFmy9oknjpKbArhYLIUrD/d4jZQkY5BVoWv4NN39SpGAYeU48zA/NhM6pcQxdEL4E
 q/1acu1fQDntvshSAbz/rsBqaZm7lr8GJE4ZN/Tv3Nig2Sx8ONwpe09bDIKkeErURF51
 wfd2i4bt0kr0TqdrL+gVaW7ydUQY4pxMmVgId0Qeo1EvJLAn3XXckcjwbrDFP1KmrosT
 4cn2G5lsbgiejsQNYy2KZhAFqfI+pw8u2nhvs2oz37I64SBncl/H6zj1IwgcYIVpPtxl
 CSPw==
X-Gm-Message-State: AOAM532mGvgC3RLbM+z1AWieCOnLbIj4e8bCgSqie7Wl9e5Pjm4XhL/G
 4/iNUsVwCPZvBTtH001V2WbL5w==
X-Google-Smtp-Source: ABdhPJytQmAp+BAYuTeUlaWRnGyHBS7z1y3GLavtc6CdD83dDnaeHuwhJdmjoSUXYO39fKt9O9lUuQ==
X-Received: by 2002:a7b:cb91:: with SMTP id m17mr87795wmi.159.1626189787993;
 Tue, 13 Jul 2021 08:23:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o14sm2615675wmq.31.2021.07.13.08.23.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 08:23:07 -0700 (PDT)
Date: Tue, 13 Jul 2021 17:23:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YO2v2WbyseJ2PfkJ@phenom.ffwll.local>
References: <20210712231234.1031975-1-jason@jlekstrand.net>
 <20210712231234.1031975-2-jason@jlekstrand.net>
 <YO2m36je6vf6Wgwu@phenom.ffwll.local>
 <CAM0jSHP3WyNwwr3VJ6zxKd5NqqXGJ+m_gSXACrptWO6zHnTAWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHP3WyNwwr3VJ6zxKd5NqqXGJ+m_gSXACrptWO6zHnTAWw@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Migrate to system at
 dma-buf attach time (v5)
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 04:06:13PM +0100, Matthew Auld wrote:
> On Tue, 13 Jul 2021 at 15:44, Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Mon, Jul 12, 2021 at 06:12:34PM -0500, Jason Ekstrand wrote:
> > > From: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > >
> > > Until we support p2p dma or as a complement to that, migrate data
> > > to system memory at dma-buf attach time if possible.
> > >
> > > v2:
> > > - Rebase on dynamic exporter. Update the igt_dmabuf_import_same_driver
> > >   selftest to migrate if we are LMEM capable.
> > > v3:
> > > - Migrate also in the pin() callback.
> > > v4:
> > > - Migrate in attach
> > > v5: (jason)
> > > - Lock around the migration
> > >
> > > Signed-off-by: Thomas Hellstr=F6m <thomas.hellstrom@linux.intel.com>
> > > Signed-off-by: Michael J. Ruhl <michael.j.ruhl@intel.com>
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    | 25 +++++++++++++++++=
+-
> > >  .../drm/i915/gem/selftests/i915_gem_dmabuf.c  |  4 ++-
> > >  2 files changed, 27 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu=
/drm/i915/gem/i915_gem_dmabuf.c
> > > index 9a655f69a0671..3163f00554476 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> > > @@ -170,8 +170,31 @@ static int i915_gem_dmabuf_attach(struct dma_buf=
 *dmabuf,
> > >                                 struct dma_buf_attachment *attach)
> > >  {
> > >       struct drm_i915_gem_object *obj =3D dma_buf_to_obj(dmabuf);
> > > +     struct i915_gem_ww_ctx ww;
> > > +     int err;
> > > +
> > > +     for_i915_gem_ww(&ww, err, true) {
> > > +             err =3D i915_gem_object_lock(obj, &ww);
> > > +             if (err)
> > > +                     continue;
> > > +
> > > +             if (!i915_gem_object_can_migrate(obj, INTEL_REGION_SMEM=
)) {
> > > +                     err =3D -EOPNOTSUPP;
> > > +                     continue;
> > > +             }
> > > +
> > > +             err =3D i915_gem_object_migrate(obj, &ww, INTEL_REGION_=
SMEM);
> > > +             if (err)
> > > +                     continue;
> > >
> > > -     return i915_gem_object_pin_pages_unlocked(obj);
> > > +             err =3D i915_gem_object_wait_migration(obj, 0);
> > > +             if (err)
> > > +                     continue;
> > > +
> > > +             err =3D i915_gem_object_pin_pages(obj);
> > > +     }
> > > +
> > > +     return err;
> > >  }
> > >
> > >  static void i915_gem_dmabuf_detach(struct dma_buf *dmabuf,
> > > diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/d=
rivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> > > index 3dc0f8b3cdab0..4f7e77b1c0152 100644
> > > --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> > > +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
> > > @@ -106,7 +106,9 @@ static int igt_dmabuf_import_same_driver(void *ar=
g)
> > >       int err;
> > >
> > >       force_different_devices =3D true;
> > > -     obj =3D i915_gem_object_create_shmem(i915, PAGE_SIZE);
> > > +     obj =3D i915_gem_object_create_lmem(i915, PAGE_SIZE, 0);
> >
> > I'm wondering (and couldn't answer) whether this creates an lmem+smem
> > buffer, since if we create an lmem-only buffer then the migration above
> > should fail.
> =

> It's lmem-only, but it's also a kernel internal object, so the
> migration path will still happily migrate it if asked. On the other
> hand if it's a userspace object then we always have to respect the
> placements.
> =

> I think for now the only usecase for that is in the selftests.

Yeah I've read the kerneldoc, it's all nicely documented but feels a bit
dangerous. What I proposed on irc:
- i915_gem_object_migrate does the placement check, i.e. as strict as
  can_migrate.
- A new __i915_gem_object_migrate is for selftest that do special stuff.
- In the import selftest we check that lmem-only fails (because we can't
  pin it into smem) for a non-dynamic importer, but lmem+smem works and
  gets migrated.
- Once we have dynamic dma-buf for p2p pci, then we'll have another
  selftest which checks that things work for lmem only if and only if the
  importer is dynamic and has set the allow_p2p flag.

We could also add the can_migrate check everywhere (including
dma_buf->attach), but that feels like the less save api.
-Daniel


> =

> >
> > Which I'm also not sure we have a testcase for that testcase either ...
> >
> > I tried to read some code here, but got a bit lost. Ideas?
> > -Daniel
> >
> > > +     if (IS_ERR(obj))
> > > +             obj =3D i915_gem_object_create_shmem(i915, PAGE_SIZE);
> > >       if (IS_ERR(obj))
> > >               goto out_ret;
> > >
> > > --
> > > 2.31.1
> > >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
