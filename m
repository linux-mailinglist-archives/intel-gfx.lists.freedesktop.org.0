Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B45E8C8F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 17:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C64D6E44E;
	Tue, 29 Oct 2019 16:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD0616E44E
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 16:19:22 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id e12so11106039edr.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 09:19:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JFqttrVtYcrlmubuDtPwy6nSk0WPqvaEaRVs+RWUUWc=;
 b=rHP0SY8UazfyYs4qt8MVwCIIdzGsBwJ20oJcvqm5FSV5EMjDDkBxKw9dVRPamaRajy
 iQPWyRWGJHqqKwQC7+OW+E/O7aJfmvkKq3/Vq6yWuDQBJJIQHCe2EWGDnger7JoG6zib
 wr3d3Mzax/I8tf91tyXqQLa62Dcz/0ivaEGozWuptt12IHGtgnU776OXpyVbPKQqU6xk
 af4C8dsDBpHqZMeUPMMfTMwpyLnKT6nl6dWZfzkmx5G0dt7ugSuJwrsmi/jqn32WBoq0
 bmyL9GGQQsWoBZgirHOwJCz+z5MRYCNJEvEUPLokXgY4ncOdHaFgYL72hFQNJJWc+q1a
 RbEQ==
X-Gm-Message-State: APjAAAVTg0xP2K38XNy3AircHpEfhvo12sAcZnBaJKkFqlGuqJJkNxrR
 jhDiYH0ZOHaWxL6hjbfTzjO+HTW+x0RVWid6SmWy2hAKiJc=
X-Google-Smtp-Source: APXvYqyOZWG27DxklBdP0dPU237CEjSqLxq8ZDnsLVOlSR+FZB+/o7uzzaZoaEUReSazclGb0yDffuSm/1V/Shu/IR0=
X-Received: by 2002:a50:9930:: with SMTP id k45mr26706251edb.134.1572365961196; 
 Tue, 29 Oct 2019 09:19:21 -0700 (PDT)
MIME-Version: 1.0
References: <20191024114028.6170-1-chris@chris-wilson.co.uk>
 <20191024114028.6170-2-chris@chris-wilson.co.uk>
 <CAOFGe978TZS=wMV3Rpuv+P30pt=2mRHtR8PB30b=qAMf7USBHw@mail.gmail.com>
 <157203896836.13056.13317046302348751445@skylake-alporthouse-com>
In-Reply-To: <157203896836.13056.13317046302348751445@skylake-alporthouse-com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Tue, 29 Oct 2019 11:19:09 -0500
Message-ID: <CAOFGe95nXgod=QeiwigPHn5_o2efWVL-nWTcA7Fmr99OQafu_Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=JFqttrVtYcrlmubuDtPwy6nSk0WPqvaEaRVs+RWUUWc=;
 b=TrpI7FPDfa+D7P6UM5C4sZDLUVxEsEEbgIwzeqGW0lZJwMBg219FYOJ8GrrpNiDJxb
 bnyEMUZXHkFlxuuuikgLEd2YaYHsejkUUuuFlea6BaTdddLbSaiIjmZ+QFA5x2UoOzvN
 sPlSiWyq+vZ8OLYykAQDeIqUtNQY9qIcfeQiu9Hpm3ozhdDres6HsiiDn8hqvDf0cHD6
 7M7xqf9+fBUO//dEdTQZdZIASa7fy7pMNzDA3aHom09DtsskMCtYZWhyBiPR0LQ/Rg+x
 bca3vXsTWIhPZ8nInhHHJQaSe/hTdh20E5zhjXeNM8xtvZsG7o1UYxLOcuvcDKyPsDsr
 OhoQ==
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/gem: Make context
 persistence optional
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
Content-Type: multipart/mixed; boundary="===============1301108917=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1301108917==
Content-Type: multipart/alternative; boundary="0000000000009309e005960efa37"

--0000000000009309e005960efa37
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 25, 2019 at 4:29 PM Chris Wilson <chris@chris-wilson.co.uk>
wrote:

> Quoting Jason Ekstrand (2019-10-25 19:22:04)
> > On Thu, Oct 24, 2019 at 6:40 AM Chris Wilson <chris@chris-wilson.co.uk>
> wrote:
> >
> >     Our existing behaviour is to allow contexts and their GPU requests to
> >     persist past the point of closure until the requests are complete.
> This
> >     allows clients to operate in a 'fire-and-forget' manner where they
> can
> >     setup a rendering pipeline and hand it over to the display server and
> >     immediately exiting. As the rendering pipeline is kept alive until
> >     completion, the display server (or other consumer) can use the
> results
> >     in the future and present them to the user.
> >
> >     However, not all clients want this persistent behaviour and would
> prefer
> >     that the contexts are cleaned up immediately upon closure. This
> ensures
> >     that when clients are run without hangchecking, any GPU hang is
> >     terminated with the process and does not continue to hog resources.
> >
> >     By defining a context property to allow clients to control
> persistence
> >     explicitly, we can remove the blanket advice to disable hangchecking
> >     that seems to be far too prevalent.
> >
> >
> > Just to be clear, when you say "disable hangchecking" do you mean
> disabling it
> > for all processes via a kernel parameter at boot time or a sysfs entry or
> > similar?  Or is there some mechanism whereby a context can request no
> hang
> > checking?
>
> They are being told to use the module parameter i915.enable_hangcheck=0
> to globally disable hangchecking. This is what we are trying to wean
> them off, and yet still allow indefinitely long kernels. The softer
> hangcheck is focused on if you block scheduling or preemption of higher
> priority work, then you are forcibly removed from the GPU. However, even
> that is too much for some workloads, where they really do expect to
> permanently hog the GPU. (All I can say is that they better be dedicated
> systems because if you demand interactivity on top of disabling
> preemption...)
>

Ok, thinking out loud here (no need for you to respond):  Why should we
take this approach?  It seems like there are several other ways we could
solve this:

 1. Have a per-context flag (that's what we did here)
 2. Have a per-execbuf flag for "don't allow this execbuf to outlive the
process".
 3. Have a DRM_IOCTL_I915_KILL_CONTEXT which lets the client manually kill
the context

Option 2 seems like a lot more work in i915 and it doesn't seem that
advantageous.  Most drivers are going to either want their batches to
outlive them or not; they aren't going to be making that decision on a
per-batch basis.

Option 3 would work for some cases but it doesn't let the kernel terminate
work if the client is killed unexpectedly by, for instance a segfault.  The
client could try to insert a crash handler but calling a DRM ioctl from a
crash handler sounds like a bad plan.  On the other hand, the client can
just as easily implement 3 by setting the new context flag and then calling
GEM_CONTEXT_DESTROY.

With that, I think I'm convinced that a context param is the best way to do
this.  We may even consider using it in Vulkan when running headless to let
us kill stuff quicker.  We aren't seeing any long-running Vulkan compute
workloads yet but they may be coming.

Acked-by: Jason Ekstrand <jason@jlekstrand.net>


One more question: Does this bit fully support being turned on and off or
is it a set-once?  I ask because how I'd likely go about doing this in
Vulkan would be to set it on context create and then unset it the moment we
see a buffer shared with the outside world.

--Jason

--0000000000009309e005960efa37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 25, 2019 at 4:29 PM Chris=
 Wilson &lt;<a href=3D"mailto:chris@chris-wilson.co.uk">chris@chris-wilson.=
co.uk</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Quoting Jason Ekstrand (2019-10-25 19:22:04)<br>
&gt; On Thu, Oct 24, 2019 at 6:40 AM Chris Wilson &lt;<a href=3D"mailto:chr=
is@chris-wilson.co.uk" target=3D"_blank">chris@chris-wilson.co.uk</a>&gt; w=
rote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Our existing behaviour is to allow contexts and the=
ir GPU requests to<br>
&gt;=C2=A0 =C2=A0 =C2=A0persist past the point of closure until the request=
s are complete. This<br>
&gt;=C2=A0 =C2=A0 =C2=A0allows clients to operate in a &#39;fire-and-forget=
&#39; manner where they can<br>
&gt;=C2=A0 =C2=A0 =C2=A0setup a rendering pipeline and hand it over to the =
display server and<br>
&gt;=C2=A0 =C2=A0 =C2=A0immediately exiting. As the rendering pipeline is k=
ept alive until<br>
&gt;=C2=A0 =C2=A0 =C2=A0completion, the display server (or other consumer) =
can use the results<br>
&gt;=C2=A0 =C2=A0 =C2=A0in the future and present them to the user.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0However, not all clients want this persistent behav=
iour and would prefer<br>
&gt;=C2=A0 =C2=A0 =C2=A0that the contexts are cleaned up immediately upon c=
losure. This ensures<br>
&gt;=C2=A0 =C2=A0 =C2=A0that when clients are run without hangchecking, any=
 GPU hang is<br>
&gt;=C2=A0 =C2=A0 =C2=A0terminated with the process and does not continue t=
o hog resources.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0By defining a context property to allow clients to =
control persistence<br>
&gt;=C2=A0 =C2=A0 =C2=A0explicitly, we can remove the blanket advice to dis=
able hangchecking<br>
&gt;=C2=A0 =C2=A0 =C2=A0that seems to be far too prevalent.<br>
&gt; <br>
&gt; <br>
&gt; Just to be clear, when you say &quot;disable hangchecking&quot; do you=
 mean disabling it<br>
&gt; for all processes via a kernel parameter at boot time or a sysfs entry=
 or<br>
&gt; similar?=C2=A0 Or is there some mechanism whereby a context can reques=
t no hang<br>
&gt; checking?<br>
<br>
They are being told to use the module parameter i915.enable_hangcheck=3D0<b=
r>
to globally disable hangchecking. This is what we are trying to wean<br>
them off, and yet still allow indefinitely long kernels. The softer<br>
hangcheck is focused on if you block scheduling or preemption of higher<br>
priority work, then you are forcibly removed from the GPU. However, even<br=
>
that is too much for some workloads, where they really do expect to<br>
permanently hog the GPU. (All I can say is that they better be dedicated<br=
>
systems because if you demand interactivity on top of disabling<br>
preemption...)<br></blockquote><div><br></div><div>Ok, thinking out loud he=
re (no need for you to respond):=C2=A0 Why should we take this approach?=C2=
=A0 It seems like there are several other ways we could solve this:</div><d=
iv><br></div><div>=C2=A01. Have a per-context flag (that&#39;s what we did =
here)</div><div>=C2=A02. Have a per-execbuf flag for &quot;don&#39;t allow =
this execbuf to outlive the process&quot;.</div><div>=C2=A03. Have a DRM_IO=
CTL_I915_KILL_CONTEXT which lets the client manually kill the context</div>=
<div><br></div><div>Option 2 seems like a lot more work in i915 and it does=
n&#39;t seem that advantageous.=C2=A0 Most drivers are going to either want=
 their batches to outlive them or not; they aren&#39;t going to be making t=
hat decision on a per-batch basis.</div><div><br></div><div>Option 3 would =
work for some cases but it doesn&#39;t let the kernel terminate work if the=
 client is killed unexpectedly by, for instance a segfault.=C2=A0 The clien=
t could try to insert a crash handler but calling a DRM ioctl from a crash =
handler sounds like a bad plan.=C2=A0 On the other hand, the client can jus=
t as easily implement 3 by setting the new context flag and then calling GE=
M_CONTEXT_DESTROY.</div><div><br></div><div>With that, I think I&#39;m conv=
inced that a context param is the best way to do this.=C2=A0 We may even co=
nsider using it in Vulkan when running headless to let us kill stuff quicke=
r.=C2=A0 We aren&#39;t seeing any long-running Vulkan compute workloads yet=
 but they may be coming.</div><div><br></div><div>Acked-by: Jason Ekstrand =
&lt;<a href=3D"mailto:jason@jlekstrand.net">jason@jlekstrand.net</a>&gt;</d=
iv><div><br></div><div><br></div><div>One more question: Does this bit full=
y support being turned on and off or is it a set-once?=C2=A0 I ask because =
how I&#39;d likely go about doing this in Vulkan would be to set it on cont=
ext create and then unset it the moment we see a buffer shared with the out=
side world.</div><div><br></div><div>--Jason<br></div></div></div>

--0000000000009309e005960efa37--

--===============1301108917==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1301108917==--
