Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7AD642FB4
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 19:16:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA0F10E111;
	Mon,  5 Dec 2022 18:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7618810E0DF
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 18:06:26 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id c17so8389452edj.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Dec 2022 10:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20210112.gappssmtp.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=mAbA9ugnrJYUyNEjGyImasIja1yiTTbIjTopJs3DmE4=;
 b=e4g5zayjdM5ol7cH0d4PzUNFj6nf8dntLPb2BZhj4D6NG5YGm3mn1N8ZVXpiS5isiv
 uvuQhiqW48Ou6O4kIJENZa+A3UxsL3CHZCpbZodqxOkDbGIkjGZE0da+jTxpC1YU4QuY
 2eXN6c4XZy5GbYVLUSEVapw9XYMd8bE35gp9xB+Ec2P01rcxwTAyiO5ZNFjgXvQlkLMu
 CvE2sttUoL6CC16YcPqGEQXyn451FX8qQ62ZJf4U7LnZ6U/D8d8nCotFY7LnKMw2Yq6i
 WrbL3e+dfjMwLfy2N3W9/EmcEK8SRIW+hx5lludUVy1nXA9AKsBHXO4X1PM+ZlA7l1lp
 hD8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=mAbA9ugnrJYUyNEjGyImasIja1yiTTbIjTopJs3DmE4=;
 b=k4rzSx0dj+OcB0c60cuoZvgY3iSj1e1TXxfVbMMGmoFQhE+QlZSuBjgtqi8561JThs
 o4k74pOMTZKSrEEsvQpLvL/JcLHWVD/cayamlwJLDxPK3JUK3laBd4oAF8YPz6RBu7Wr
 E+trUGswRThR3/VQcjQEzBuHHO1dcrKSKJXYRZrv3bgb70G5Ml7VEwdr3eKVn9/dO28s
 DyZ7p+Q/np5+j5MJmfOsKmaEg9JyJwaJuEvrlCr0Cz03af4Ag9gEV5vGE59QvqNqrm24
 8bb5o9q08lukxK24Zm14VvKbo8IJU83KVwa8iJWmlgH5A5eRsM6C4kNWEEEeVC8cV8Zx
 3X6w==
X-Gm-Message-State: ANoB5pkPykgvjNZxmbdRsSAcpQS4qDvpF5WE18l2l4YjHrvHshdKo7f7
 VOjmQCaBvQz/ZMYktd7oyO59mFI6O5sXqVUbwHcmnw==
X-Google-Smtp-Source: AA0mqf5NzLHjyxEDWGsnAo10OcUEcXByW2e3mxSL3ioC3M3noKeXVmxpEfx/dM0ZxrGZQAdfbhHC/IqrV8NmtGhdZdM=
X-Received: by 2002:aa7:ca4c:0:b0:46c:24fc:ba0f with SMTP id
 j12-20020aa7ca4c000000b0046c24fcba0fmr13658479edt.140.1670263584894; Mon, 05
 Dec 2022 10:06:24 -0800 (PST)
MIME-Version: 1.0
References: <f5909f6f-4b2f-72d6-08e2-a0e454a1cd1a@earthlink.net>
 <Y44xaLP+PhYx7lLm@intel.com>
In-Reply-To: <Y44xaLP+PhYx7lLm@intel.com>
From: Emma Anholt <emma@anholt.net>
Date: Mon, 5 Dec 2022 10:06:13 -0800
Message-ID: <CADaigPXHVT+JNQbLt2mCAxkPdTJxFYSj=1YCzXvMjDYQjSbBww@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Content-Type: multipart/alternative; boundary="000000000000a8c3a405ef188bb0"
X-Mailman-Approved-At: Mon, 05 Dec 2022 18:16:31 +0000
Subject: Re: [Intel-gfx] No Mesa DRI Intel 945G in Debian Bookworm since
 Feb. 2022 package change
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
Cc: mesa-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Felix Miata <mrmazda@earthlink.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--000000000000a8c3a405ef188bb0
Content-Type: text/plain; charset="UTF-8"

Debian packaging apparently just decided not to include i915g in the
transition?  Not our fault.

On Mon, Dec 5, 2022 at 9:59 AM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:

> Cc: mesa-dev ml
>
> On Sat, Dec 03, 2022 at 03:00:44AM -0500, Felix Miata wrote:
> > From libgl1-mesa-dri:amd64 changelog:
> > mesa (22.0.0~rc2-1) experimental; urgency=medium
> >
> >   * New upstream release candidate.
> >   * path_max.diff: Refreshed.
> >   * rules: Drop classic drivers (r100, r200, nouveau_vieux, i915, i965).
> >
> >  -- Timo Aaltonen <t jaalton a t debian o org>  Thu, 17 Feb 2022
> 22:04:03 +0200
> >
> > # xdriinfo
> > libGL error: MESA-LOADER: failed to open i915: /usr/lib/dri/i915_dri.so:
> cannot open shared object file: No such file or directory (search paths
> /usr/lib/x86_64-linux-gnu/dri:\$${ORIGIN}/dri:/usr/lib/dri, suffix _dri)
> > libGL error: failed to load driver: i915
> > Screen 0: swrast
> >
> > # pinxi -GSaz --vs --zl --hostname
> > pinxi 3.3.23-05 (2022-11-07)
> > System:
> >   Host: gx62b Kernel: 5.19.0-2-amd64 arch: x86_64 bits: 64 compiler: gcc
> >     v: 11.3.0 parameters: root=LABEL=<filter> ipv6.disable=1
> net.ifnames=0
> >     biosdevname=0 plymouth.enable=0 noresume mitigations=auto
> consoleblank=0
> >   Desktop: Trinity v: R14.0.13 tk: Qt v: 3.5.0 info: kicker wm: Twin v:
> 3.0
> >     vt: 7 dm: 1: TDM 2: XDM Distro: Debian GNU/Linux bookworm/sid
> > Graphics:
> >   Device-1: Intel 82945G/GZ Integrated Graphics vendor: Dell driver: i915
> >     v: kernel arch: Gen-3.5 process: Intel 90nm built: 2005-06 ports:
> >     active: DVI-D-1,VGA-1 empty: none bus-ID: 00:02.0 chip-ID: 8086:2772
> >     class-ID: 0300
> >   Display: x11 server: X.Org v: 1.21.1.4 driver: X: loaded: modesetting
> >     dri: swrast gpu: i915 display-ID: :0 screens: 1
> >   Screen-1: 0 s-res: 3600x1200 s-dpi: 120 s-size: 762x254mm
> (30.00x10.00")
> >     s-diag: 803mm (31.62")
> >   Monitor-1: DVI-D-1 pos: primary,left model: NEC EA243WM serial:
> <filter>
> >     built: 2011 res: 1920x1200 hz: 60 dpi: 94 gamma: 1.2
> >     size: 519x324mm (20.43x12.76") diag: 612mm (24.1") ratio: 16:10
> modes:
> >     max: 1920x1200 min: 640x480
> >   Monitor-2: VGA-1 pos: right model: Dell P2213 serial: <filter> built:
> 2012
> >     res: 1680x1050 hz: 60 dpi: 90 gamma: 1.2 size: 473x296mm
> (18.62x11.65")
> >     diag: 558mm (22") ratio: 16:10 modes: max: 1680x1050 min: 720x400
> >   API: OpenGL v: 4.5 Mesa 22.2.4 renderer: llvmpipe (LLVM 15.0.5 128
> bits)
> >     direct render: Yes
> >
> > In Bullseye:
> > ...
> >   API: OpenGL v: 1.4 Mesa 20.3.5 renderer: Mesa DRI Intel 945G
> >     direct render: Yes
> > # xdriinfo
> > Screen 0: i915
> >
> > What are Bookworm users supposed to do to make Mesa DRI work correctly
> > now that i915_dri.so is missing? Did it get moved to some other .deb
> > I can't ID? I don't think Crocus is supposed to work on Gen3. At least,
> > export MESA_LOADER_DRIVER_OVERRIDE=crocus in
> /etc/X11/Xsession.d/10-crocus.sh
> > doesn't help.
> >
> > In openSUSE Tumbleweed in 22.2.4 i915 is still included in its Mesa-dri
> > package, and Mesa DRI Intel 945G is working as expected.
> > --
> > Evolution as taught in public schools is, like religion,
> >       based on faith, not based on science.
> >
> >  Team OS/2 ** Reg. Linux User #211409 ** a11y rocks!
> >
> > Felix Miata
>

--000000000000a8c3a405ef188bb0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Debian packaging apparently just decided not to include i9=
15g in the transition?=C2=A0 Not our fault.<br><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 5, 2022 at 9:59 AM Rod=
rigo Vivi &lt;<a href=3D"mailto:rodrigo.vivi@intel.com">rodrigo.vivi@intel.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">Cc: mesa-dev ml<br>
<br>
On Sat, Dec 03, 2022 at 03:00:44AM -0500, Felix Miata wrote:<br>
&gt; From libgl1-mesa-dri:amd64 changelog:<br>
&gt; mesa (22.0.0~rc2-1) experimental; urgency=3Dmedium<br>
&gt; <br>
&gt;=C2=A0 =C2=A0* New upstream release candidate.<br>
&gt;=C2=A0 =C2=A0* path_max.diff: Refreshed.<br>
&gt;=C2=A0 =C2=A0* rules: Drop classic drivers (r100, r200, nouveau_vieux, =
i915, i965).<br>
&gt; <br>
&gt;=C2=A0 -- Timo Aaltonen &lt;t jaalton a t debian o org&gt;=C2=A0 Thu, 1=
7 Feb 2022 22:04:03 +0200<br>
&gt; <br>
&gt; # xdriinfo<br>
&gt; libGL error: MESA-LOADER: failed to open i915: /usr/lib/dri/i915_dri.s=
o: cannot open shared object file: No such file or directory (search paths =
/usr/lib/x86_64-linux-gnu/dri:\$${ORIGIN}/dri:/usr/lib/dri, suffix _dri)<br=
>
&gt; libGL error: failed to load driver: i915<br>
&gt; Screen 0: swrast<br>
&gt; <br>
&gt; # pinxi -GSaz --vs --zl --hostname<br>
&gt; pinxi 3.3.23-05 (2022-11-07)<br>
&gt; System:<br>
&gt;=C2=A0 =C2=A0Host: gx62b Kernel: 5.19.0-2-amd64 arch: x86_64 bits: 64 c=
ompiler: gcc<br>
&gt;=C2=A0 =C2=A0 =C2=A0v: 11.3.0 parameters: root=3DLABEL=3D&lt;filter&gt;=
 ipv6.disable=3D1 net.ifnames=3D0<br>
&gt;=C2=A0 =C2=A0 =C2=A0biosdevname=3D0 plymouth.enable=3D0 noresume mitiga=
tions=3Dauto consoleblank=3D0<br>
&gt;=C2=A0 =C2=A0Desktop: Trinity v: R14.0.13 tk: Qt v: 3.5.0 info: kicker =
wm: Twin v: 3.0<br>
&gt;=C2=A0 =C2=A0 =C2=A0vt: 7 dm: 1: TDM 2: XDM Distro: Debian GNU/Linux bo=
okworm/sid<br>
&gt; Graphics:<br>
&gt;=C2=A0 =C2=A0Device-1: Intel 82945G/GZ Integrated Graphics vendor: Dell=
 driver: i915<br>
&gt;=C2=A0 =C2=A0 =C2=A0v: kernel arch: Gen-3.5 process: Intel 90nm built: =
2005-06 ports:<br>
&gt;=C2=A0 =C2=A0 =C2=A0active: DVI-D-1,VGA-1 empty: none bus-ID: 00:02.0 c=
hip-ID: 8086:2772<br>
&gt;=C2=A0 =C2=A0 =C2=A0class-ID: 0300<br>
&gt;=C2=A0 =C2=A0Display: x11 server: X.Org v: 1.21.1.4 driver: X: loaded: =
modesetting<br>
&gt;=C2=A0 =C2=A0 =C2=A0dri: swrast gpu: i915 display-ID: :0 screens: 1<br>
&gt;=C2=A0 =C2=A0Screen-1: 0 s-res: 3600x1200 s-dpi: 120 s-size: 762x254mm =
(30.00x10.00&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0s-diag: 803mm (31.62&quot;)<br>
&gt;=C2=A0 =C2=A0Monitor-1: DVI-D-1 pos: primary,left model: NEC EA243WM se=
rial: &lt;filter&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0built: 2011 res: 1920x1200 hz: 60 dpi: 94 gamma: 1.=
2<br>
&gt;=C2=A0 =C2=A0 =C2=A0size: 519x324mm (20.43x12.76&quot;) diag: 612mm (24=
.1&quot;) ratio: 16:10 modes:<br>
&gt;=C2=A0 =C2=A0 =C2=A0max: 1920x1200 min: 640x480<br>
&gt;=C2=A0 =C2=A0Monitor-2: VGA-1 pos: right model: Dell P2213 serial: &lt;=
filter&gt; built: 2012<br>
&gt;=C2=A0 =C2=A0 =C2=A0res: 1680x1050 hz: 60 dpi: 90 gamma: 1.2 size: 473x=
296mm (18.62x11.65&quot;)<br>
&gt;=C2=A0 =C2=A0 =C2=A0diag: 558mm (22&quot;) ratio: 16:10 modes: max: 168=
0x1050 min: 720x400<br>
&gt;=C2=A0 =C2=A0API: OpenGL v: 4.5 Mesa 22.2.4 renderer: llvmpipe (LLVM 15=
.0.5 128 bits)<br>
&gt;=C2=A0 =C2=A0 =C2=A0direct render: Yes<br>
&gt; <br>
&gt; In Bullseye:<br>
&gt; ...<br>
&gt;=C2=A0 =C2=A0API: OpenGL v: 1.4 Mesa 20.3.5 renderer: Mesa DRI Intel 94=
5G<br>
&gt;=C2=A0 =C2=A0 =C2=A0direct render: Yes<br>
&gt; # xdriinfo<br>
&gt; Screen 0: i915<br>
&gt; <br>
&gt; What are Bookworm users supposed to do to make Mesa DRI work correctly=
<br>
&gt; now that i915_dri.so is missing? Did it get moved to some other .deb<b=
r>
&gt; I can&#39;t ID? I don&#39;t think Crocus is supposed to work on Gen3. =
At least,<br>
&gt; export MESA_LOADER_DRIVER_OVERRIDE=3Dcrocus in /etc/X11/Xsession.d/10-=
crocus.sh<br>
&gt; doesn&#39;t help.<br>
&gt; <br>
&gt; In openSUSE Tumbleweed in 22.2.4 i915 is still included in its Mesa-dr=
i<br>
&gt; package, and Mesa DRI Intel 945G is working as expected.<br>
&gt; -- <br>
&gt; Evolution as taught in public schools is, like religion,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0based on faith, not based on science.<br>
&gt; <br>
&gt;=C2=A0 Team OS/2 ** Reg. Linux User #211409 ** a11y rocks!<br>
&gt; <br>
&gt; Felix Miata<br>
</blockquote></div></div>

--000000000000a8c3a405ef188bb0--
