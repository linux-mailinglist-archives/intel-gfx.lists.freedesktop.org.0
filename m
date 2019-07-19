Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 537596EC9E
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jul 2019 00:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60786E876;
	Fri, 19 Jul 2019 22:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B4AC6E876
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 22:55:17 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id k21so35768682edq.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:55:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GzY6ZxUvW6/YznS4mAGAMzwWoQUIxR2akL0tGF1iGYU=;
 b=gRUS83AO5oJ9EylVhHExOd2Mzbb2XpFK29QHieAmWCSYhdvCTOcJxmB2xXH1/U41PU
 +SPy5beViMfzJ5RZ0nAmx/pzLXsT1IaGxhCSgPXMv9ZwdlqmkznT2J8oo+9SyviDpyUz
 UXPWjjYKIq1fYqWx+SZpoSmxulU7Cw7VW7wiJbAgfpcl2sBldEJGR8BMqA9PRRFNNVSV
 E6HBBNOWhrIos7nCaGzE0IEs5RoqZRTVfI6GBuPKMU3TowP7cDFDrfhLWCZZvVrXt36Z
 lVC6Ow2+qgRM3HJnpYu9J+M2ypyNqNB8uFopJ1Tj48Kv5yx7sPHy52yGuufPMmMCaoyg
 DULg==
X-Gm-Message-State: APjAAAVHY4rRhTW4Zwu8lsFj0zrjHfLCWbJlfvLpivrEzY7q+k2XGVOr
 Z3ASdyLLzXztTvawbF9xls8nHwLAQMhUm80eHFbwmw==
X-Google-Smtp-Source: APXvYqzD7rC1hGZ+TFSg3KM2q8qfgFweyMDNRJNxPqGiVsgjlPmQvSCBvxlp7T6Ff373WkulqBemb9DChvWhDrYvxQI=
X-Received: by 2002:a50:ba1b:: with SMTP id g27mr48129606edc.18.1563576915670; 
 Fri, 19 Jul 2019 15:55:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-3-chris@chris-wilson.co.uk>
 <29f36349-0c1a-3af6-d707-632685f80929@intel.com>
 <156353167467.24728.15340645557688634881@skylake-alporthouse-com>
In-Reply-To: <156353167467.24728.15340645557688634881@skylake-alporthouse-com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 19 Jul 2019 17:55:03 -0500
Message-ID: <CAOFGe94HiMuuauogvemDhfaoOD_jkracT4bJX6q28L32jUYYCA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=GzY6ZxUvW6/YznS4mAGAMzwWoQUIxR2akL0tGF1iGYU=;
 b=DJhIn/My9CaPCS2N6dGMLEkY65ot0q2lrI7ZmWshFPNXERQhv2xCd4Fa56bTtTRiLe
 HNRKrUDlZMchtOprprdtODhMSa46uqXFc7ljO+TOTi3ao3CLarM0MLUs3xW4MdJGVGZX
 aYTmG7Ys7IJk6qG+dYyLP+9Bpjr6MF27RxKYi/70bRyopf5B4MIMlcQbQ7ER+suNLtTK
 K99kVISkRCxdOvvL0SGNF+FLLSzpcQRzLfgg15nl+asv49tPJRTCLQef6zBsM8dSQ1uG
 6afgCnDBv/moyk4xWy9oKzNpUMaImNqU63WmcNq6JVhe4dk2uSoimNRvxA55AXLNTZsE
 8LKw==
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Flush all user surfaces prior
 to first use
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0530147578=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0530147578==
Content-Type: multipart/alternative; boundary="000000000000a34b16058e109e9a"

--000000000000a34b16058e109e9a
Content-Type: text/plain; charset="UTF-8"

Just to be clear, is this just adding a CLFLUSH or is it actually changing
the default caching state of buffers from CACHED to NONE?  If it's actually
changing the default state, that's going to break userspace badly.

--Jason

On Fri, Jul 19, 2019 at 5:21 AM Chris Wilson <chris@chris-wilson.co.uk>
wrote:

> Quoting Lionel Landwerlin (2019-07-19 11:18:42)
> > On 18/07/2019 17:54, Chris Wilson wrote:
> > > Since userspace has the ability to bypass the CPU cache from within its
> > > unprivileged command stream, we have to flush the CPU cache to memory
> > > in order to overwrite the previous contents on creation.
> > >
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: stablevger.kernel.org
> > > ---
> > >   drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 26
> ++++++-----------------
> > >   1 file changed, 7 insertions(+), 19 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > > index d2a1158868e7..f752b326d399 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > > @@ -459,7 +459,6 @@ i915_gem_object_create_shmem(struct
> drm_i915_private *i915, u64 size)
> > >   {
> > >       struct drm_i915_gem_object *obj;
> > >       struct address_space *mapping;
> > > -     unsigned int cache_level;
> > >       gfp_t mask;
> > >       int ret;
> > >
> > > @@ -498,24 +497,13 @@ i915_gem_object_create_shmem(struct
> drm_i915_private *i915, u64 size)
> > >       obj->write_domain = I915_GEM_DOMAIN_CPU;
> > >       obj->read_domains = I915_GEM_DOMAIN_CPU;
> > >
> > > -     if (HAS_LLC(i915))
> > > -             /* On some devices, we can have the GPU use the LLC (the
> CPU
> > > -              * cache) for about a 10% performance improvement
> > > -              * compared to uncached.  Graphics requests other than
> > > -              * display scanout are coherent with the CPU in
> > > -              * accessing this cache.  This means in this mode we
> > > -              * don't need to clflush on the CPU side, and on the
> > > -              * GPU side we only need to flush internal caches to
> > > -              * get data visible to the CPU.
> > > -              *
> > > -              * However, we maintain the display planes as UC, and so
> > > -              * need to rebind when first used as such.
> > > -              */
> > > -             cache_level = I915_CACHE_LLC;
> > > -     else
> > > -             cache_level = I915_CACHE_NONE;
> > > -
> > > -     i915_gem_object_set_cache_coherency(obj, cache_level);
> > > +     /*
> > > +      * Note that userspace has control over cache-bypass
> > > +      * via its command stream, so even on LLC architectures
> > > +      * we have to flush out the CPU cache to memory to
> > > +      * clear previous contents.
> > > +      */
> > > +     i915_gem_object_set_cache_coherency(obj, I915_CACHE_NONE);
> > >
> > >       trace_i915_gem_object_create(obj);
> > >
> >
> > Does i915_drm.h needs updating? :
> >
> >
> > /**
> >   * I915_CACHING_CACHED
> >   *
> >   * GPU access is coherent with cpu caches and furthermore the data is
> > cached in
> >   * last-level caches shared between cpu cores and the gpu GT. Default on
> >   * machines with HAS_LLC.
> >   */
> > #define I915_CACHING_CACHED             1
>
> Sneaky. Thanks,
> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--000000000000a34b16058e109e9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just to be clear, is this just adding a CLFLUSH or is=
 it actually changing the default caching state of buffers from CACHED to N=
ONE?=C2=A0 If it&#39;s actually changing the default state, that&#39;s goin=
g to break userspace badly.</div><div><br></div><div>--Jason<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, Jul 19, 2019 at 5:21 AM Chris Wilson &lt;<a href=3D"mailto:chris@chris-w=
ilson.co.uk">chris@chris-wilson.co.uk</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Quoting Lionel Landwerlin (2019-07-19 =
11:18:42)<br>
&gt; On 18/07/2019 17:54, Chris Wilson wrote:<br>
&gt; &gt; Since userspace has the ability to bypass the CPU cache from with=
in its<br>
&gt; &gt; unprivileged command stream, we have to flush the CPU cache to me=
mory<br>
&gt; &gt; in order to overwrite the previous contents on creation.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Chris Wilson &lt;<a href=3D"mailto:chris@chris-wil=
son.co.uk" target=3D"_blank">chris@chris-wilson.co.uk</a>&gt;<br>
&gt; &gt; Cc: Joonas Lahtinen &lt;<a href=3D"mailto:joonas.lahtinen@linux.i=
ntel.com" target=3D"_blank">joonas.lahtinen@linux.intel.com</a>&gt;<br>
&gt; &gt; Cc: <a href=3D"http://stablevger.kernel.org" rel=3D"noreferrer" t=
arget=3D"_blank">stablevger.kernel.org</a><br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 =C2=A0drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 26 ++++++=
-----------------<br>
&gt; &gt;=C2=A0 =C2=A01 file changed, 7 insertions(+), 19 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/=
gpu/drm/i915/gem/i915_gem_shmem.c<br>
&gt; &gt; index d2a1158868e7..f752b326d399 100644<br>
&gt; &gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c<br>
&gt; &gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c<br>
&gt; &gt; @@ -459,7 +459,6 @@ i915_gem_object_create_shmem(struct drm_i915_=
private *i915, u64 size)<br>
&gt; &gt;=C2=A0 =C2=A0{<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct drm_i915_gem_object *obj;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0struct address_space *mapping;<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0unsigned int cache_level;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0gfp_t mask;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; &gt;=C2=A0 =C2=A0<br>
&gt; &gt; @@ -498,24 +497,13 @@ i915_gem_object_create_shmem(struct drm_i91=
5_private *i915, u64 size)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0obj-&gt;write_domain =3D I915_GEM_DOMAI=
N_CPU;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0obj-&gt;read_domains =3D I915_GEM_DOMAI=
N_CPU;<br>
&gt; &gt;=C2=A0 =C2=A0<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0if (HAS_LLC(i915))<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* On some devic=
es, we can have the GPU use the LLC (the CPU<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * cache) for ab=
out a 10% performance improvement<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * compared to u=
ncached.=C2=A0 Graphics requests other than<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * display scano=
ut are coherent with the CPU in<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * accessing thi=
s cache.=C2=A0 This means in this mode we<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * don&#39;t nee=
d to clflush on the CPU side, and on the<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * GPU side we o=
nly need to flush internal caches to<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * get data visi=
ble to the CPU.<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 *<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * However, we m=
aintain the display planes as UC, and so<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * need to rebin=
d when first used as such.<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cache_level =3D =
I915_CACHE_LLC;<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0else<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cache_level =3D =
I915_CACHE_NONE;<br>
&gt; &gt; -<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0i915_gem_object_set_cache_coherency(obj, cac=
he_level);<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0/*<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 * Note that userspace has control over cach=
e-bypass<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 * via its command stream, so even on LLC ar=
chitectures<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 * we have to flush out the CPU cache to mem=
ory to<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 * clear previous contents.<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0i915_gem_object_set_cache_coherency(obj, I91=
5_CACHE_NONE);<br>
&gt; &gt;=C2=A0 =C2=A0<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0trace_i915_gem_object_create(obj);<br>
&gt; &gt;=C2=A0 =C2=A0<br>
&gt; <br>
&gt; Does i915_drm.h needs updating? :<br>
&gt; <br>
&gt; <br>
&gt; /**<br>
&gt;=C2=A0 =C2=A0* I915_CACHING_CACHED<br>
&gt;=C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0* GPU access is coherent with cpu caches and furthermore t=
he data is <br>
&gt; cached in<br>
&gt;=C2=A0 =C2=A0* last-level caches shared between cpu cores and the gpu G=
T. Default on<br>
&gt;=C2=A0 =C2=A0* machines with HAS_LLC.<br>
&gt;=C2=A0 =C2=A0*/<br>
&gt; #define I915_CACHING_CACHED=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1<br>
<br>
Sneaky. Thanks,<br>
-Chris<br>
_______________________________________________<br>
Intel-gfx mailing list<br>
<a href=3D"mailto:Intel-gfx@lists.freedesktop.org" target=3D"_blank">Intel-=
gfx@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/intel-gfx" rel=3D=
"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/listin=
fo/intel-gfx</a></blockquote></div>

--000000000000a34b16058e109e9a--

--===============0530147578==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0530147578==--
