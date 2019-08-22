Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A4499FFE
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 21:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740216EA48;
	Thu, 22 Aug 2019 19:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2966EA48
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 19:26:07 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id h13so9516152edq.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 12:26:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M53Ychwo9WWqRTrzlbvojYmDVRKvvJSu7+aeNNZFDKA=;
 b=AF7Q30z68wAcZdI3tfU28do1Y5Jo20jhEvU4vJS4/QB51zqJEBZAjyQdUIW5T+yN66
 ARX3/7rgJj8L0yJXqTAr3TAPoh7vUA56fqnTY1vapQVUobeIQ5U/5jyv8lqyzJxJ1Th+
 ZjPHsvvJdBA8XQ3+9A3M9lHMLhwgvdJeIk6YSMwfwEnfUq4nEeL0FRQ9q/WB7ShVYOBE
 oBIKtUS5Ir4MsK0jKs5gCONXm+naU93SvEejAc+FE36A0MMYuxNO1Fnu5eGEIMyaIoTb
 DyCjgUc8alw7wUSO0KbQ2QzHUG02FLXyDTFvkN4W8xdp09zjBCoQUXETIcIzeJxJ1aEg
 5lkg==
X-Gm-Message-State: APjAAAWufmR68/aKkApiVnK651XnMccNYDG8c3/UB5WQ3dyh2r+k3MSk
 V1FonDO14U4aTIUzmtxdWkAiKtBJlCwAa9MFTj/1gg==
X-Google-Smtp-Source: APXvYqxPpDEe7XeDXYKXTtnGe7qmJhJT63sWOx94vt6GTpMUGz1gfc2/uC6LBXlSfxcGq2S1DQ4Uwm5K9tfQyDCPDnU=
X-Received: by 2002:a17:907:207a:: with SMTP id
 qp26mr890992ejb.12.1566501965851; 
 Thu, 22 Aug 2019 12:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
In-Reply-To: <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 22 Aug 2019 14:25:53 -0500
Message-ID: <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=M53Ychwo9WWqRTrzlbvojYmDVRKvvJSu7+aeNNZFDKA=;
 b=COxHlsUoMXdjZcRIk9kLC93Efk8lFJPf3NIubnzp6ufc5qYPvwgjPXNMPfeaBmsOFY
 oIXWWhRNnTT1OvBgCRXHDPCE8PVaX0wXKHnaKsa0Vlc4OBMTxaUPYBNYOyp97DxilvG0
 bGe3onsOX4KBJwWdip9ZbELUtu80EZVJ+R94lp1hmXMRUz1Fc+XaiPfqCN2HNAc2L5Pa
 OJtFwa7hAcPoU0HmCjNYUaROTFAxCarAW/BCmxRdfZeuc2tuIt1j8Qwm7qgblIDj25fJ
 CJlw+oPorQOcQAO2gLyLEU+4yfBgJhQw/sI4K3Yn9kj8W/aoWLo1nkhwgAJyiH9oUKpT
 AC9Q==
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
 Kenneth Graunke <kenneth@whitecape.org>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: multipart/mixed; boundary="===============0762347299=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0762347299==
Content-Type: multipart/alternative; boundary="0000000000003706fc0590b9a9bf"

--0000000000003706fc0590b9a9bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Acked-by: Jason Ekstrand <jason@jlekstrand.net>

On Wed, Aug 21, 2019 at 10:20 AM Daniel Vetter <daniel.vetter@ffwll.ch>
wrote:

> On Wed, Aug 21, 2019 at 3:55 PM Ville Syrj=C3=A4l=C3=A4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Tue, Aug 20, 2019 at 01:57:44PM -0700, Daniele Ceraolo Spurio wrote:
> > >
> > >
> > > On 8/20/19 12:54 PM, Daniel Vetter wrote:
> > > > The cpu (de)tiler hw is gone, this stopped being useful. Plus it
> never
> > > > supported any of the fancy new tiling formats, which means userspac=
e
> > > > also stopped using the magic side-channel this provides.
> > > >
> > > > This would totally break a lot of the igts, but they're already
> broken
> > > > for the same reasons as userspace on gen12 would be.
> > > >
> > > > v2: Look at ggtt->num_fences instead, that also avoids the need for=
 a
> > > > comment (Chris). This also means that gen12 support really needs to
> > > > make sure num_fences is set to 0. There is a patch for that, but it
> > > > checks for HAS_MAPPABLE_APERTURE, which I'm not sure is the right
> > > > thing really. Adding relevant people.
> > > >
> > >
> > > We'd obviously need to make that setting for all gen12+, because TGL
> > > does have mappable aperture.
> > >
> > > Apart from the tiling ioctl, the only place I see where we set tiling
> is
> > > intel_alloc_initial_plane_obj(), can the users of that object handle
> the
> > > lack of fences gracefully?
> >
> > Gen4+ display engine has its own tiling controls and doesn't care about
> > fences. So we should be able to leave the obj tiling set to NONE.
> >
> > Hmm. Actually I think we should reject tiled framebuffers in the BIOS
> > fb takeover because fbdev needs a linear view for the memory. No can
> > do without the fence.
>
> Yeah I think this is just more fallout from "no more fences in the hw".
> -Daniel
>
> >
> > > When I wrote the num_fences=3D0 patch I was
> > > expecting display to be unavailable, so I didn't really look at that
> > > part of the code.
> > >
> > > It'd also be nice to be more explicit with fencing since we seem to
> > > often call i915_vma_pin_iomap, which implicitly applies a fence if
> > > needed, on objects that can't be tiled or have had a fence assigned a
> > > few lines before. This is more a nice to have tough, possibly togethe=
r
> > > with a split of the "mappable" and "fenceable" attributes of the vma.
> > >
> > > Daniele
> > >
> > > > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > > Cc: Stuart Summers <stuart.summers@intel.com>
> > > > Cc: Matthew Auld <matthew.auld@intel.com>
> > > > Cc: Kenneth Graunke <kenneth@whitecape.org>
> > > > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > > > ---
> > > >   drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 7 +++++++
> > > >   1 file changed, 7 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> > > > index ca0c2f451742..e5d1ae8d4dba 100644
> > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> > > > @@ -313,10 +313,14 @@ int
> > > >   i915_gem_set_tiling_ioctl(struct drm_device *dev, void *data,
> > > >                       struct drm_file *file)
> > > >   {
> > > > +   struct drm_i915_private *dev_priv =3D to_i915(dev);
> > > >     struct drm_i915_gem_set_tiling *args =3D data;
> > > >     struct drm_i915_gem_object *obj;
> > > >     int err;
> > > >
> > > > +   if (!dev_priv->ggtt.num_fences)
> > > > +           return -EOPNOTSUPP;
> > > > +
> > > >     obj =3D i915_gem_object_lookup(file, args->handle);
> > > >     if (!obj)
> > > >             return -ENOENT;
> > > > @@ -402,6 +406,9 @@ i915_gem_get_tiling_ioctl(struct drm_device
> *dev, void *data,
> > > >     struct drm_i915_gem_object *obj;
> > > >     int err =3D -ENOENT;
> > > >
> > > > +   if (!dev_priv->ggtt.num_fences)
> > > > +           return -EOPNOTSUPP;
> > > > +
> > > >     rcu_read_lock();
> > > >     obj =3D i915_gem_object_lookup_rcu(file, args->handle);
> > > >     if (obj) {
> > > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >
> > --
> > Ville Syrj=C3=A4l=C3=A4
> > Intel
>
>
>
> --
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--0000000000003706fc0590b9a9bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Acked-by: Jason Ekstrand &lt;<a href=3D"mailto:jason@jleks=
trand.net">jason@jlekstrand.net</a>&gt;<br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 21, 2019 at 10:20 AM=
 Daniel Vetter &lt;<a href=3D"mailto:daniel.vetter@ffwll.ch">daniel.vetter@=
ffwll.ch</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">On Wed, Aug 21, 2019 at 3:55 PM Ville Syrj=C3=A4l=C3=A4<br>
&lt;<a href=3D"mailto:ville.syrjala@linux.intel.com" target=3D"_blank">vill=
e.syrjala@linux.intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Tue, Aug 20, 2019 at 01:57:44PM -0700, Daniele Ceraolo Spurio wrote=
:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; On 8/20/19 12:54 PM, Daniel Vetter wrote:<br>
&gt; &gt; &gt; The cpu (de)tiler hw is gone, this stopped being useful. Plu=
s it never<br>
&gt; &gt; &gt; supported any of the fancy new tiling formats, which means u=
serspace<br>
&gt; &gt; &gt; also stopped using the magic side-channel this provides.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; This would totally break a lot of the igts, but they&#39;re =
already broken<br>
&gt; &gt; &gt; for the same reasons as userspace on gen12 would be.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; v2: Look at ggtt-&gt;num_fences instead, that also avoids th=
e need for a<br>
&gt; &gt; &gt; comment (Chris). This also means that gen12 support really n=
eeds to<br>
&gt; &gt; &gt; make sure num_fences is set to 0. There is a patch for that,=
 but it<br>
&gt; &gt; &gt; checks for HAS_MAPPABLE_APERTURE, which I&#39;m not sure is =
the right<br>
&gt; &gt; &gt; thing really. Adding relevant people.<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; We&#39;d obviously need to make that setting for all gen12+, beca=
use TGL<br>
&gt; &gt; does have mappable aperture.<br>
&gt; &gt;<br>
&gt; &gt; Apart from the tiling ioctl, the only place I see where we set ti=
ling is<br>
&gt; &gt; intel_alloc_initial_plane_obj(), can the users of that object han=
dle the<br>
&gt; &gt; lack of fences gracefully?<br>
&gt;<br>
&gt; Gen4+ display engine has its own tiling controls and doesn&#39;t care =
about<br>
&gt; fences. So we should be able to leave the obj tiling set to NONE.<br>
&gt;<br>
&gt; Hmm. Actually I think we should reject tiled framebuffers in the BIOS<=
br>
&gt; fb takeover because fbdev needs a linear view for the memory. No can<b=
r>
&gt; do without the fence.<br>
<br>
Yeah I think this is just more fallout from &quot;no more fences in the hw&=
quot;.<br>
-Daniel<br>
<br>
&gt;<br>
&gt; &gt; When I wrote the num_fences=3D0 patch I was<br>
&gt; &gt; expecting display to be unavailable, so I didn&#39;t really look =
at that<br>
&gt; &gt; part of the code.<br>
&gt; &gt;<br>
&gt; &gt; It&#39;d also be nice to be more explicit with fencing since we s=
eem to<br>
&gt; &gt; often call i915_vma_pin_iomap, which implicitly applies a fence i=
f<br>
&gt; &gt; needed, on objects that can&#39;t be tiled or have had a fence as=
signed a<br>
&gt; &gt; few lines before. This is more a nice to have tough, possibly tog=
ether<br>
&gt; &gt; with a split of the &quot;mappable&quot; and &quot;fenceable&quot=
; attributes of the vma.<br>
&gt; &gt;<br>
&gt; &gt; Daniele<br>
&gt; &gt;<br>
&gt; &gt; &gt; Cc: Daniele Ceraolo Spurio &lt;<a href=3D"mailto:daniele.cer=
aolospurio@intel.com" target=3D"_blank">daniele.ceraolospurio@intel.com</a>=
&gt;<br>
&gt; &gt; &gt; Cc: Stuart Summers &lt;<a href=3D"mailto:stuart.summers@inte=
l.com" target=3D"_blank">stuart.summers@intel.com</a>&gt;<br>
&gt; &gt; &gt; Cc: Matthew Auld &lt;<a href=3D"mailto:matthew.auld@intel.co=
m" target=3D"_blank">matthew.auld@intel.com</a>&gt;<br>
&gt; &gt; &gt; Cc: Kenneth Graunke &lt;<a href=3D"mailto:kenneth@whitecape.=
org" target=3D"_blank">kenneth@whitecape.org</a>&gt;<br>
&gt; &gt; &gt; Cc: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.ne=
t" target=3D"_blank">jason@jlekstrand.net</a>&gt;<br>
&gt; &gt; &gt; Cc: Chris Wilson &lt;<a href=3D"mailto:chris@chris-wilson.co=
.uk" target=3D"_blank">chris@chris-wilson.co.uk</a>&gt;<br>
&gt; &gt; &gt; Cc: Lucas De Marchi &lt;<a href=3D"mailto:lucas.demarchi@int=
el.com" target=3D"_blank">lucas.demarchi@intel.com</a>&gt;<br>
&gt; &gt; &gt; Signed-off-by: Daniel Vetter &lt;<a href=3D"mailto:daniel.ve=
tter@intel.com" target=3D"_blank">daniel.vetter@intel.com</a>&gt;<br>
&gt; &gt; &gt; ---<br>
&gt; &gt; &gt;=C2=A0 =C2=A0drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 7 +=
++++++<br>
&gt; &gt; &gt;=C2=A0 =C2=A01 file changed, 7 insertions(+)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/dr=
ivers/gpu/drm/i915/gem/i915_gem_tiling.c<br>
&gt; &gt; &gt; index ca0c2f451742..e5d1ae8d4dba 100644<br>
&gt; &gt; &gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c<br>
&gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c<br>
&gt; &gt; &gt; @@ -313,10 +313,14 @@ int<br>
&gt; &gt; &gt;=C2=A0 =C2=A0i915_gem_set_tiling_ioctl(struct drm_device *dev=
, void *data,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0struct drm_file *file)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0{<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0struct drm_i915_private *dev_priv =3D to_i915(=
dev);<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0struct drm_i915_gem_set_tiling *args =3D =
data;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0struct drm_i915_gem_object *obj;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0int err;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0if (!dev_priv-&gt;ggtt.num_fences)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EOPNOTSUPP=
;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0obj =3D i915_gem_object_lookup(file, args=
-&gt;handle);<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0if (!obj)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -ENOEN=
T;<br>
&gt; &gt; &gt; @@ -402,6 +406,9 @@ i915_gem_get_tiling_ioctl(struct drm_dev=
ice *dev, void *data,<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0struct drm_i915_gem_object *obj;<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0int err =3D -ENOENT;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0if (!dev_priv-&gt;ggtt.num_fences)<br>
&gt; &gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EOPNOTSUPP=
;<br>
&gt; &gt; &gt; +<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0rcu_read_lock();<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0obj =3D i915_gem_object_lookup_rcu(file, =
args-&gt;handle);<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0if (obj) {<br>
&gt; &gt; &gt;<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; Intel-gfx mailing list<br>
&gt; &gt; <a href=3D"mailto:Intel-gfx@lists.freedesktop.org" target=3D"_bla=
nk">Intel-gfx@lists.freedesktop.org</a><br>
&gt; &gt; <a href=3D"https://lists.freedesktop.org/mailman/listinfo/intel-g=
fx" rel=3D"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mail=
man/listinfo/intel-gfx</a><br>
&gt;<br>
&gt; --<br>
&gt; Ville Syrj=C3=A4l=C3=A4<br>
&gt; Intel<br>
<br>
<br>
<br>
-- <br>
Daniel Vetter<br>
Software Engineer, Intel Corporation<br>
+41 (0) 79 365 57 48 - <a href=3D"http://blog.ffwll.ch" rel=3D"noreferrer" =
target=3D"_blank">http://blog.ffwll.ch</a><br>
_______________________________________________<br>
Intel-gfx mailing list<br>
<a href=3D"mailto:Intel-gfx@lists.freedesktop.org" target=3D"_blank">Intel-=
gfx@lists.freedesktop.org</a><br>
<a href=3D"https://lists.freedesktop.org/mailman/listinfo/intel-gfx" rel=3D=
"noreferrer" target=3D"_blank">https://lists.freedesktop.org/mailman/listin=
fo/intel-gfx</a></blockquote></div>

--0000000000003706fc0590b9a9bf--

--===============0762347299==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0762347299==--
