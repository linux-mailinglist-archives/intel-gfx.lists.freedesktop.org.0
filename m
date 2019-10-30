Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3C1EA441
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 20:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2328C6EB36;
	Wed, 30 Oct 2019 19:30:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A526EB36
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 19:30:36 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id b18so2730320edr.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 12:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fzjLSAA/w9C1LcjWpAadc6yPLIRSlcgkbULH+OKlMJw=;
 b=rmTUSKQp+nL/A70c3m+pLtQu92Vbfea70pqFTYubFMoXYR6YKGREa4KGXHREc32chz
 B9Dmn2ZuJhLUWMu0U6k+xmm3TAx/UgIjxSso9+YM2aZAYqAnrbfXELFyIoDTXxTMLeT4
 ROwlfIvt3DvjQbhDkTF3hWvZP/pga7gXypPTPDgfQBKPNKUtr6Jl9mlXlFDWouJPgkOR
 8GdDNPgVz5K4cMvemiihilEqQmElsTtQFtBbPq5RIyTiSbQb+fQiGZAhh2TgCH/SzxqQ
 V4HKYXgRRETGZU6y4XTYGzeuMfAVI4aMaIZFlH7rLJSdkHJ2lXD93L+rjekQEYkr9l0Q
 IykQ==
X-Gm-Message-State: APjAAAWm1gqBYmEvycHmHZZK1tx5JQtYt30j7QPa/Snnc/E6jfDCZ+pB
 HaqVOv/610FzpbIKxcKmPwuyYVzQxCHKIVraOvpcPg==
X-Google-Smtp-Source: APXvYqycddY/liOLvOyTfxZzlQKNM6BhjDbwjDCCw7G1PJu9W7oUX4H62GVwpJ7VnvWgDq8nwBRw2Q89ODp/2aQoO/M=
X-Received: by 2002:a05:6402:643:: with SMTP id
 u3mr1615625edx.60.1572463835458; 
 Wed, 30 Oct 2019 12:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 30 Oct 2019 14:30:24 -0500
Message-ID: <CAOFGe94en6EHTJV4Okii+Ua81VCoKqAXEVJ52JA63cYzV0L5qA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=fzjLSAA/w9C1LcjWpAadc6yPLIRSlcgkbULH+OKlMJw=;
 b=x5/A8X46WmWNLe842Sjg9AcsG02CgL/39EDaDeHl1fA/UG5NEVUCRliLChusynVQA+
 rYGqrptjrA9t9pWf59CIFPyGlhUiM0xK4/SzoeJ1n0xtqJTSoVPIgwP+3z57VrcfemVk
 o1o3f4evfs19H0wNvZa9WYkERlQ3GE9M/dI+ki+N1ZaJJWH5kWwvMw4nl+NREWO15KkJ
 cy8oBXy5ZchWY01Uqu+U8bZ5aYqkKvfwi4A27Yc4Zbg5k5TUd7hkC3WhdTC51KRnSjL9
 qZo6yuaZqd4+DR2dYfV1N6ynLUAhOxgvWrcKY4/M6A3NxdcNDqhQ+ONHA7UVW06r7u4r
 lKZA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>, Adam Jackson <ajax@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: multipart/mixed; boundary="===============1441839781=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1441839781==
Content-Type: multipart/alternative; boundary="00000000000055bf2c059625c493"

--00000000000055bf2c059625c493
Content-Type: text/plain; charset="UTF-8"

While I'm generally a fan of this change, we've been talking on IRC a bit
today and, apparently, the X server hasn't actually had a release where
modifiers have been enabled by default so this is causing problems.  Adam &
Daniel, is there something that's preventing us from enabling it by
default?  This is kind-of important these days.

--Jason


On Tue, Aug 20, 2019 at 12:06 PM Daniel Vetter <daniel.vetter@ffwll.ch>
wrote:

> The cpu (de)tiler hw is gone, this stopped being useful. Plus it never
> supported any of the fancy new tiling formats, which means userspace
> also stopped using the magic side-channel this provides.
>
> This would totally break a lot of the igts, but they're already broken
> for the same reasons as userspace on gen12 would be.
>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> index ca0c2f451742..2ee96f27a294 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> @@ -313,10 +313,15 @@ int
>  i915_gem_set_tiling_ioctl(struct drm_device *dev, void *data,
>                           struct drm_file *file)
>  {
> +       struct drm_i915_private *dev_priv = to_i915(dev);
>         struct drm_i915_gem_set_tiling *args = data;
>         struct drm_i915_gem_object *obj;
>         int err;
>
> +       /* there is no cpu (de)tiling in the hw anymore on gen12+ */
> +       if (INTEL_GEN(dev_priv) >= 12)
> +               return -EOPNOTSUPP;
> +
>         obj = i915_gem_object_lookup(file, args->handle);
>         if (!obj)
>                 return -ENOENT;
> @@ -402,6 +407,9 @@ i915_gem_get_tiling_ioctl(struct drm_device *dev, void
> *data,
>         struct drm_i915_gem_object *obj;
>         int err = -ENOENT;
>
> +       if (INTEL_GEN(dev_priv) >= 12)
> +               return -EOPNOTSUPP;
> +
>         rcu_read_lock();
>         obj = i915_gem_object_lookup_rcu(file, args->handle);
>         if (obj) {
> --
> 2.23.0.rc1
>
>

--00000000000055bf2c059625c493
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>While I&#39;m generally a fan of this change, we&#39;=
ve been talking on IRC a bit today and, apparently, the X server hasn&#39;t=
 actually had a release where modifiers have been enabled by default so thi=
s is causing problems.=C2=A0 Adam &amp; Daniel, is there something that&#39=
;s preventing us from enabling it by default?=C2=A0 This is kind-of importa=
nt these days.</div><div><br></div><div>--Jason</div><div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Aug 20, 2019 at 12:06 PM Daniel Vetter &lt;<a href=3D"mailto:daniel.vetter=
@ffwll.ch">daniel.vetter@ffwll.ch</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">The cpu (de)tiler hw is gone, this stopped=
 being useful. Plus it never<br>
supported any of the fancy new tiling formats, which means userspace<br>
also stopped using the magic side-channel this provides.<br>
<br>
This would totally break a lot of the igts, but they&#39;re already broken<=
br>
for the same reasons as userspace on gen12 would be.<br>
<br>
Cc: Kenneth Graunke &lt;<a href=3D"mailto:kenneth@whitecape.org" target=3D"=
_blank">kenneth@whitecape.org</a>&gt;<br>
Cc: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net" target=3D"_b=
lank">jason@jlekstrand.net</a>&gt;<br>
Cc: Chris Wilson &lt;<a href=3D"mailto:chris@chris-wilson.co.uk" target=3D"=
_blank">chris@chris-wilson.co.uk</a>&gt;<br>
Cc: Lucas De Marchi &lt;<a href=3D"mailto:lucas.demarchi@intel.com" target=
=3D"_blank">lucas.demarchi@intel.com</a>&gt;<br>
Signed-off-by: Daniel Vetter &lt;<a href=3D"mailto:daniel.vetter@intel.com"=
 target=3D"_blank">daniel.vetter@intel.com</a>&gt;<br>
---<br>
=C2=A0drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 8 ++++++++<br>
=C2=A01 file changed, 8 insertions(+)<br>
<br>
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i=
915/gem/i915_gem_tiling.c<br>
index ca0c2f451742..2ee96f27a294 100644<br>
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c<br>
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c<br>
@@ -313,10 +313,15 @@ int<br>
=C2=A0i915_gem_set_tiling_ioctl(struct drm_device *dev, void *data,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 struct drm_file *file)<br>
=C2=A0{<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct drm_i915_private *dev_priv =3D to_i915(d=
ev);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct drm_i915_gem_set_tiling *args =3D data;<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct drm_i915_gem_object *obj;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int err;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* there is no cpu (de)tiling in the hw anymore=
 on gen12+ */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (INTEL_GEN(dev_priv) &gt;=3D 12)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EOPNOTSUPP;=
<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 obj =3D i915_gem_object_lookup(file, args-&gt;h=
andle);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!obj)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return -ENOENT;<br>
@@ -402,6 +407,9 @@ i915_gem_get_tiling_ioctl(struct drm_device *dev, void =
*data,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct drm_i915_gem_object *obj;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int err =3D -ENOENT;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (INTEL_GEN(dev_priv) &gt;=3D 12)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EOPNOTSUPP;=
<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rcu_read_lock();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 obj =3D i915_gem_object_lookup_rcu(file, args-&=
gt;handle);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (obj) {<br>
-- <br>
2.23.0.rc1<br>
<br>
</blockquote></div>

--00000000000055bf2c059625c493--

--===============1441839781==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1441839781==--
