Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 344FCA13C8F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 15:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F3210E99A;
	Thu, 16 Jan 2025 14:45:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="b61jF3pp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3721510E99A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 14:45:46 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-219f6ca9a81so110945ad.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 06:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1737038686; x=1737643486;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fFNytPPiitHlVHl+HkGjmB556sKdLARUIEHKJrTigjQ=;
 b=b61jF3ppsGvk3wPRSeyFtdSyR3P8HBXBtDn2N4Eqhkcp9eFpvli8W9ksezroYp0FpD
 ceXpImCYu3SGpS05tHoRatGwPBWDd6nhL6OVPK3wyhf8XNN71cQ8+Keq1Ijs1CukmxLN
 M6dmnueNCSf4/jlJOyLVtRJYvT9QmfNkMUSiMRXKFEE2+uWgvRw24G2VNFBfDBSMxuMp
 HTowI0Y96zgWlrLn+abUlGzBlyqh3KYEkpRaPtph/5GENSGYTDiF9fQ4JkzIQ2IWa9qJ
 PpjrZsmIqO0fcKkVWb2cOIGogNXWP27Qum46qQWjOVIwmCUmEpQdyS5sW38BJahY4LSl
 ys3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1737038686; x=1737643486;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fFNytPPiitHlVHl+HkGjmB556sKdLARUIEHKJrTigjQ=;
 b=ft5dS48E/Lsn4kaShdzLa+Wx0iwMFY++i1fJ7oqFbA31xakx2FvjeIq11EgzS2j0Ef
 jKvuMKr9EUyK5eOHYowETe0m8tnEygmC0g06peYcKuyiRAJSJLuheU0rLvChYoe0m44R
 xlrFMY0XYQSZbrwJzpn92ViM9SiCregEgoYOkR+TYDta7WULVITok6KJoZeGMQVEtFr5
 PLEXPsMEbLVOUKIrowi1pk+wPyKRI/knsqI/vecK4dAwMaoBmoFEb3nsaTX7peoKPxvs
 oED/SLmySEodE644Hdn2GjNSYda0XMOzqF6LVJCLXQxxkzXxxOuUyB8buzS+YGkR9fSZ
 79yQ==
X-Gm-Message-State: AOJu0Yy1Z0MmRix0kb5x3JeJF6M9UcPsrQ34zaD0Iq2btTFTHKtkuSDQ
 85TlZQDUYL4J3QkkNT947SHzPVoF+sa6KONsFtmCaPh6GkE0y0mguXa9+L+IAsuCcscoUSKkAY8
 7dGZIp+dIHA8XFRkULfkpMDElQMNYRRihL8fi
X-Gm-Gg: ASbGncuEzkbDnWEMXART5qjeJWP0iq7dYGFBB0tD8t6TP8ajy/ogqIBx0wOm9urRrBt
 0XtQUzrkzSGt13PKe3s6YR+JkjDbM13u68KNe
X-Google-Smtp-Source: AGHT+IG4g/UbPISOIEq8mVUKkoa89d5fmhz43L448oOuZ3x9c7dGca05HPH7fXpzv8rKMb4E+SADeWwsXVig5/rG7TA=
X-Received: by 2002:a17:903:443:b0:21b:b3c4:7e0a with SMTP id
 d9443c01a7336-21c165a4395mr2124635ad.13.1737038685631; Thu, 16 Jan 2025
 06:44:45 -0800 (PST)
MIME-Version: 1.0
References: <20250116135636.410164-1-bgeffon@google.com>
 <Z4kWms-eFWxddspp@intel.com>
In-Reply-To: <Z4kWms-eFWxddspp@intel.com>
From: Brian Geffon <bgeffon@google.com>
Date: Thu, 16 Jan 2025 09:44:09 -0500
X-Gm-Features: AbW1kvb1WiV2UgCCDsf7oxDwCL4-NIWcJ3NTDuLruSMvdn5bTul9yGx_wZym68w
Message-ID: <CADyq12xjHNdOk1udnmzpt5DK9j5EQmjoY8YcXTMetuinAT8+Cg@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: Fix page cleanup on DMA remap failure
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com, 
 jani.saarinen@intel.com, tomasz.mistat@intel.com, vidya.srinivas@intel.com, 
 jani.nikula@linux.intel.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tomasz Figa <tfiga@google.com>
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

On Thu, Jan 16, 2025 at 9:24=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Thu, Jan 16, 2025 at 08:56:36AM -0500, Brian Geffon wrote:
> > When converting to folios the cleanup path of shmem_get_pages() was
> > missed. When a DMA remap fails and the max segment size is greater than
> > PAGE_SIZE it will attempt to retry the remap with a PAGE_SIZEd segment
> > size. The cleanup code isn't properly using the folio apis and as a
> > result isn't handling compound pages correctly.
> >
> > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13487
> > Fixes: 0b62af28f249 ("i915: convert shmem_sg_free_table() to use a foli=
o_batch")
> > Signed-off-by: Brian Geffon <bgeffon@google.com>
> > Suggested-by: Tomasz Figa <tfiga@google.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 13 +++++--------
> >  1 file changed, 5 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_shmem.c
> > index fe69f2c8527d..02ddab5bf5c0 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > @@ -37,8 +37,6 @@ void shmem_sg_free_table(struct sg_table *st, struct =
address_space *mapping,
> >       struct folio *last =3D NULL;
> >       struct page *page;
> >
> > -     mapping_clear_unevictable(mapping);
> > -
>
> The assymmetry here between the alloc vs. free is a bit annoying.
> Maybe we can just keep this here?

My thought on this was that freeing the sg table is orthogonal to
making the mapping evictable, and shmem_sg_free_table() can be
simplified to not even take the mapping as a parameter.

>
> Or if avoiding the ping-pong actually mattes in the gtt prepare
> error case, then maybe we should rename this guy into
> __shmem_sg_free_table() without the mapping_clear_unevictable()
> and wrap it in a higher level shmem_sg_free_table() that does
> everything?
>
> >       folio_batch_init(&fbatch);
> >       for_each_sgt_page(page, sgt_iter, st) {
> >               struct folio *folio =3D page_folio(page);
> > @@ -180,10 +178,10 @@ int shmem_sg_alloc_table(struct drm_i915_private =
*i915, struct sg_table *st,
> >       return 0;
> >  err_sg:
> >       sg_mark_end(sg);
> > +     mapping_clear_unevictable(mapping);
> >       if (sg !=3D st->sgl) {
> >               shmem_sg_free_table(st, mapping, false, false);
> >       } else {
> > -             mapping_clear_unevictable(mapping);
> >               sg_free_table(st);
> >       }
> >
> > @@ -209,8 +207,6 @@ static int shmem_get_pages(struct drm_i915_gem_obje=
ct *obj)
> >       struct address_space *mapping =3D obj->base.filp->f_mapping;
> >       unsigned int max_segment =3D i915_sg_segment_size(i915->drm.dev);
> >       struct sg_table *st;
> > -     struct sgt_iter sgt_iter;
> > -     struct page *page;
> >       int ret;
> >
> >       /*
> > @@ -239,9 +235,8 @@ static int shmem_get_pages(struct drm_i915_gem_obje=
ct *obj)
> >                * for PAGE_SIZE chunks instead may be helpful.
> >                */
> >               if (max_segment > PAGE_SIZE) {
> > -                     for_each_sgt_page(page, sgt_iter, st)
> > -                             put_page(page);
> > -                     sg_free_table(st);
> > +                     /* Leave the mapping unevictable while we retry *=
/
> > +                     shmem_sg_free_table(st, mapping, false, false);
> >                       kfree(st);
> >
> >                       max_segment =3D PAGE_SIZE;
> > @@ -265,6 +260,7 @@ static int shmem_get_pages(struct drm_i915_gem_obje=
ct *obj)
> >       return 0;
> >
> >  err_pages:
> > +     mapping_clear_unevictable(mapping);
> >       shmem_sg_free_table(st, mapping, false, false);
> >       /*
> >        * shmemfs first checks if there is enough memory to allocate the=
 page
> > @@ -402,6 +398,7 @@ void i915_gem_object_put_pages_shmem(struct drm_i91=
5_gem_object *obj, struct sg_
> >       if (i915_gem_object_needs_bit17_swizzle(obj))
> >               i915_gem_object_save_bit_17_swizzle(obj, pages);
> >
> > +     mapping_clear_unevictable(file_inode(obj->base.filp)->i_mapping);
> >       shmem_sg_free_table(pages, file_inode(obj->base.filp)->i_mapping,
> >                           obj->mm.dirty, obj->mm.madv =3D=3D I915_MADV_=
WILLNEED);
> >       kfree(pages);
> > --
> > 2.48.0.rc2.279.g1de40edade-goog
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
