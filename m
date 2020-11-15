Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 550CA2B48DE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 16:14:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 755ED89E52;
	Mon, 16 Nov 2020 15:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332976E9BE
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 15:45:47 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id ay21so16190075edb.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 07:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hPKEfqEszzoNP02ovX87uX7+qITNn9wz+r7PEwXc1qU=;
 b=FAwd65MpCRCrk4q7eWbctp78oQTKgegNWE9KPYFE3fYG3WNDdpZMuW+0xl1aB0asnz
 ePGKsvjB88JbOXICwkZrEZRk9l2YwFsU3TDqsGgfxWBW8+yEoielB2y4x5x3XFeolMbs
 3qrlWHrAq5XqnfvbQNdplSQ4f8TlhsCIF37v0B8qKRPbjEW7ZQ/pwVzdmAr+mGci1ero
 lYp2Pb9XKg95PwifDcaGPJGtpJ5qyoReXJtcDFWeN5b7nvTkalkJ8dt+tok0P9HcYH1D
 ZhVmQdk6qxqiaKnql/Z3pZjRo5WZR5uv6bMhXXeaaTrj91ZvllCbFgJ06jLeUJ34XRuL
 5YOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hPKEfqEszzoNP02ovX87uX7+qITNn9wz+r7PEwXc1qU=;
 b=bXnQwhZ3a/fr9a42zBegYb7YJUB4QqC+m/PTzlDq+Qsco85ZcVuLT9mAb0UqmJ5Pti
 1reO3827EfLrjOJ85aw2zanpEcsfmXosy44Kx1mxjxk9/t+jGF1UIRJ+CHf+vB1YNiQW
 q1McjDMp70o3jnAlhap6/7UDE2zsZP2UAses0yguoDqBIdz2KiibSM1SWUeur5l6UiiM
 qZmJurfs3+oem2bp46v5RRTQDtDNMNgvAi2pkYQwN7A7l6wwjI5yUcmm5Ah/cBhW3LyW
 FGQcfouix7QqItAdSOxWtJIfT02AyHjlRuUYEfBLZCVxz6ysbMyfkrPmuVVWXmfckrPc
 BjAw==
X-Gm-Message-State: AOAM530BtcFO7jMaubgEO+PF6/NdN2sVcfzICjr8Xol3xHOwOJSYSvvJ
 pTkdXZ13BVnyjQ0uSwqaSHtpdlbFXdQbPT2MWsk=
X-Google-Smtp-Source: ABdhPJz62atFb0ZFo0jA/8PBw/u2l8Mq+32iN6BFODb4PsyXRwyUM3BPnWRNmvhy3CEd3zeaz6sNp37ORVOeUqZFiqY=
X-Received: by 2002:a50:9f2b:: with SMTP id b40mr11771673edf.20.1605455145725; 
 Sun, 15 Nov 2020 07:45:45 -0800 (PST)
MIME-Version: 1.0
References: <CA+Gspvj6MpJsjFWQnhrVf971EpBoSvUk1DCyPr62N9nJUMOFcw@mail.gmail.com>
 <20201019142459.GM1667571@kuha.fi.intel.com>
 <20201020142516.GC3370607@ideak-desk.fi.intel.com>
 <CA+Gspvh-k7TJE5NObQp0eJa1oM=+kJVv-b5=UAitCr-q=y3eWA@mail.gmail.com>
 <285671ba0a7e43d086327c120a632bd8@intel.com>
In-Reply-To: <285671ba0a7e43d086327c120a632bd8@intel.com>
From: Andrzej Kre <andrzej.kre@gmail.com>
Date: Sun, 15 Nov 2020 16:45:33 +0100
Message-ID: <CA+GspvjQ_FX_aLAN2eK6dSX=Szz1HPvJgmrVO7C4aPEDTrgPCw@mail.gmail.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>
X-Mailman-Approved-At: Mon, 16 Nov 2020 15:14:01 +0000
Subject: Re: [Intel-gfx] USB-C DP mode problem on linux
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1859088110=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1859088110==
Content-Type: multipart/alternative; boundary="000000000000a9f2af05b42727aa"

--000000000000a9f2af05b42727aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Sure.
Ticket #2683
https://gitlab.freedesktop.org/drm/intel/-/issues/2683

Best regards,

sob., 14 lis 2020 o 21:11 Saarinen, Jani <jani.saarinen@intel.com>
napisa=C5=82(a):

> Hi,
> What is exact gitlab issue for this, can you send link?
>
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Andrzej Kre
> > Sent: perjantai 13. marraskuuta 2020 22.28
> > To: Deak, Imre <imre.deak@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Heikki Krogerus
> > <heikki.krogerus@linux.intel.com>
> > Subject: Re: [Intel-gfx] USB-C DP mode problem on linux
> >
> > Got it.
> >
> > Thank You for quick replying. Due to coronavirus I was not able to issu=
e
> a ticket
> > quickly . But I created it.
> >
> >
> > Best Regards,
> >
> >
> > wt., 20 pa=C5=BA 2020 o 16:25 Imre Deak <imre.deak@intel.com
> > <mailto:imre.deak@intel.com> > napisa=C5=82(a):
> >
> >
> >       Hi,
> >
> >       On Mon, Oct 19, 2020 at 05:24:59PM +0300, Heikki Krogerus wrote:
> >       > Hi Andrzej,
> >       >
> >       > On Sat, Oct 17, 2020 at 01:34:54PM +0200, Andrzej Kre wrote:
> >       > > Hi,
> >       > >
> >       > > I know that You were involved in working on USB-C DP drivers.
> >       > > You are my last chance to resolve my issue.
> >       > >
> >       > > On my HP laptop I have Intel UHD Graphics 620.
> >       > > When I'm connecting my 4K monitor to Display Port. It is
> assigning to
> >       > > DP-2-2 socket and  I have full 3840x2160 with 60.00Hz
> >       > > But, when I'm connecting the same monitor to the USB-C port,
> then it is
> >       > > connecting to the DP-1 socket and the maximum that it can
> achieve is
> >       > > 3840x2160 with only 30.00Hz.
> >       > > But I'm making some trick: I'm connecting the same monitor
> through
> > HDMI, so
> >       > > it is connecting to DP-1 socket, and simultaneously I'm
> connecting USB-
> > C,
> >       > > and now USB-C is connecting to DP-2-2 socket (because DP-1 is
> occupied
> > by
> >       > > HDMI) and I can have full 4K with 60Hz.
> >       > > Please, help me, how to force USB-C to connect always to DP-2=
-2
> > socket?
> >       > > Or do You know maybe where is the problem?
> >       >
> >       > Unfortunately we have no control over the mux in the operating
> system
> >       > on Skylakes, at least in USB subsystem. It all happens in
> firmware.
> >       > Maybe graphics side can do something.
> >       >
> >       > Adding Jani, Imre, Ville and the Intel GFX list.
> >
> >       On SKL/KBL the USB-C -> native DP/HDMI conversion is done by an
> off-CPU
> >       chip and the display driver doesn't have a way either to affect t=
he
> >       muxing.
> >
> >       Not sure why things work on DP-2 and not on DP-1, there is no por=
t
> >       specific limits on the CPU side that would explain this. There is
> a link
> >       training failure in the log, so would be good to see more details
> on
> >       that. Could you file a ticket at
> >       https://gitlab.freedesktop.org/drm/intel/-/issues
> >       providing a full log booting with drm.debug=3D0x1e for the workin=
g
> and
> >       non-working cases?
> >
> >       Thanks,
> >       Imre
> >
>
>

--000000000000a9f2af05b42727aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>Sure. <br>Ticket #2=
683</div><div><a href=3D"https://gitlab.freedesktop.org/drm/intel/-/issues/=
2683">https://gitlab.freedesktop.org/drm/intel/-/issues/2683</a></div><div>=
<br></div><div>Best regards,<br></div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">sob., 14 lis 2020 o 21:11=C2=A0Saarin=
en, Jani &lt;<a href=3D"mailto:jani.saarinen@intel.com">jani.saarinen@intel=
.com</a>&gt; napisa=C5=82(a):<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Hi,<br>
What is exact gitlab issue for this, can you send link? <br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Intel-gfx &lt;<a href=3D"mailto:intel-gfx-bounces@lists.freedesk=
top.org" target=3D"_blank">intel-gfx-bounces@lists.freedesktop.org</a>&gt; =
On Behalf Of Andrzej Kre<br>
&gt; Sent: perjantai 13. marraskuuta 2020 22.28<br>
&gt; To: Deak, Imre &lt;<a href=3D"mailto:imre.deak@intel.com" target=3D"_b=
lank">imre.deak@intel.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:intel-gfx@lists.freedesktop.org" target=3D"_blan=
k">intel-gfx@lists.freedesktop.org</a>; Heikki Krogerus<br>
&gt; &lt;<a href=3D"mailto:heikki.krogerus@linux.intel.com" target=3D"_blan=
k">heikki.krogerus@linux.intel.com</a>&gt;<br>
&gt; Subject: Re: [Intel-gfx] USB-C DP mode problem on linux<br>
&gt; <br>
&gt; Got it.<br>
&gt; <br>
&gt; Thank You for quick replying. Due to coronavirus I was not able to iss=
ue a ticket<br>
&gt; quickly . But I created it.<br>
&gt; <br>
&gt; <br>
&gt; Best Regards,<br>
&gt; <br>
&gt; <br>
&gt; wt., 20 pa=C5=BA 2020 o 16:25 Imre Deak &lt;<a href=3D"mailto:imre.dea=
k@intel.com" target=3D"_blank">imre.deak@intel.com</a><br>
&gt; &lt;mailto:<a href=3D"mailto:imre.deak@intel.com" target=3D"_blank">im=
re.deak@intel.com</a>&gt; &gt; napisa=C5=82(a):<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On Mon, Oct 19, 2020 at 05:24:59PM +0300, He=
ikki Krogerus wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Hi Andrzej,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; On Sat, Oct 17, 2020 at 01:34:54PM +020=
0, Andrzej Kre wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; I know that You were involved in w=
orking on USB-C DP drivers.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; You are my last chance to resolve =
my issue.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; On my HP laptop I have Intel UHD G=
raphics 620.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; When I&#39;m connecting my 4K moni=
tor to Display Port. It is assigning to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; DP-2-2 socket and=C2=A0 I have ful=
l 3840x2160 with 60.00Hz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; But, when I&#39;m connecting the s=
ame monitor to the USB-C port, then it is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; connecting to the DP-1 socket and =
the maximum that it can achieve is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; 3840x2160 with only 30.00Hz.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; But I&#39;m making some trick: I&#=
39;m connecting the same monitor through<br>
&gt; HDMI, so<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; it is connecting to DP-1 socket, a=
nd simultaneously I&#39;m connecting USB-<br>
&gt; C,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; and now USB-C is connecting to DP-=
2-2 socket (because DP-1 is occupied<br>
&gt; by<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; HDMI) and I can have full 4K with =
60Hz.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; Please, help me, how to force USB-=
C to connect always to DP-2-2<br>
&gt; socket?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; &gt; Or do You know maybe where is the =
problem?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Unfortunately we have no control over t=
he mux in the operating system<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; on Skylakes, at least in USB subsystem.=
 It all happens in firmware.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Maybe graphics side can do something.<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Adding Jani, Imre, Ville and the Intel =
GFX list.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0On SKL/KBL the USB-C -&gt; native DP/HDMI co=
nversion is done by an off-CPU<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0chip and the display driver doesn&#39;t have=
 a way either to affect the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0muxing.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Not sure why things work on DP-2 and not on =
DP-1, there is no port<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0specific limits on the CPU side that would e=
xplain this. There is a link<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0training failure in the log, so would be goo=
d to see more details on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0that. Could you file a ticket at<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/-/issues" rel=3D"noreferrer" target=3D"_blank">https://gitlab.freed=
esktop.org/drm/intel/-/issues</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0providing a full log booting with drm.debug=
=3D0x1e for the working and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0non-working cases?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0Imre<br>
&gt; <br>
<br>
</blockquote></div>

--000000000000a9f2af05b42727aa--

--===============1859088110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1859088110==--
