Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A31092B3015
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Nov 2020 20:20:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C626E945;
	Sat, 14 Nov 2020 19:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6140F6E7D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 20:27:46 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id v4so12256202edi.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 12:27:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RqLLYM6YWcVqYgsA5XMOTuWotsxh6NVlgRQbVjb3XYw=;
 b=rmZH6bi+ZawotoDSf/Wwmv5k9HZMxjBBeHG5oqLFUY0odT6k2Y2qo6E0IWw0LwRRAB
 QH76iEMCptdj/vGVfmd/UL2EuSfaOZYkzARyh3IhvZ2/KB1+rIkThfCgj3w2HOZejte6
 bpoLSVMHUuZ+rPcOyrczZhUikwxydPNLr+gnBsPP7XGNShSpnVsHrKmZzzvhLZdZpR7X
 loa1OSKE5Y4mGZVWfWxf91S3poPAJD1ldYm2I5Cf69mqwaby0U9SZdT/vZPyyJ06wVgl
 kMdMZYJzGwj+7nNXE5ATSmnU/UtzhELYSkHCeWFMi7N1Y+AzNo1ltPNLzJDVIvacmoIR
 /u0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RqLLYM6YWcVqYgsA5XMOTuWotsxh6NVlgRQbVjb3XYw=;
 b=Ip1pTllK33BoMzAB8Qf9VccbaeAkjBq4vbM0vCdleMnMqWOS6gCyvWiyRpex5O4KYo
 M0wfDITxwgkjzOOLaJPi8AGwU0LifjnBVdTtG7m06CGObCPfNb+92sqJGhdDfA3PNm1J
 O4HGKHRrjkAYKn5DZaSpyLczu5emVrhuWbQpo3MFCA7sW1gRpKcRttXOHyVd65BZvEgb
 cUaDFJ0CQvMNPxh6+Q/4AFF+NphukWOgzf2uK+SLjhZ2kcl632VXPrCZtQNTsenh5+OA
 5w/NKTvGU7YhaFIPzlZ1JRjrW+leOPbj5zMpQjDRIAYGcBKT3H6R90Zy5IT5wcGaAPUK
 Y5Fw==
X-Gm-Message-State: AOAM530BhxDiRW0gLAPN66UG6/445DS84alwdCTdsjwb4MuZ9PK6EdKJ
 6hl+BM9EKab0qzMrmONtd0zz+hG0P1S+GqgcGNI=
X-Google-Smtp-Source: ABdhPJynBbsEUduVMR0Y881ZBGpokZKjeIpiOyaA6PXWy93iFZFvAeTydnpuBhvGspIUr32deBZ97Vfi8uyYncpcc+0=
X-Received: by 2002:a50:ed96:: with SMTP id h22mr4471513edr.336.1605299264936; 
 Fri, 13 Nov 2020 12:27:44 -0800 (PST)
MIME-Version: 1.0
References: <CA+Gspvj6MpJsjFWQnhrVf971EpBoSvUk1DCyPr62N9nJUMOFcw@mail.gmail.com>
 <20201019142459.GM1667571@kuha.fi.intel.com>
 <20201020142516.GC3370607@ideak-desk.fi.intel.com>
In-Reply-To: <20201020142516.GC3370607@ideak-desk.fi.intel.com>
From: Andrzej Kre <andrzej.kre@gmail.com>
Date: Fri, 13 Nov 2020 21:27:33 +0100
Message-ID: <CA+Gspvh-k7TJE5NObQp0eJa1oM=+kJVv-b5=UAitCr-q=y3eWA@mail.gmail.com>
To: imre.deak@intel.com
X-Mailman-Approved-At: Sat, 14 Nov 2020 19:19:58 +0000
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
Cc: intel-gfx@lists.freedesktop.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Content-Type: multipart/mixed; boundary="===============0248044684=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0248044684==
Content-Type: multipart/alternative; boundary="00000000000071dd9705b402dce7"

--00000000000071dd9705b402dce7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Got it.
Thank You for quick replying. Due to coronavirus I was not able to issue a
ticket quickly . But I created it.

Best Regards,

wt., 20 pa=C5=BA 2020 o 16:25 Imre Deak <imre.deak@intel.com> napisa=C5=82(=
a):

> Hi,
>
> On Mon, Oct 19, 2020 at 05:24:59PM +0300, Heikki Krogerus wrote:
> > Hi Andrzej,
> >
> > On Sat, Oct 17, 2020 at 01:34:54PM +0200, Andrzej Kre wrote:
> > > Hi,
> > >
> > > I know that You were involved in working on USB-C DP drivers.
> > > You are my last chance to resolve my issue.
> > >
> > > On my HP laptop I have Intel UHD Graphics 620.
> > > When I'm connecting my 4K monitor to Display Port. It is assigning to
> > > DP-2-2 socket and  I have full 3840x2160 with 60.00Hz
> > > But, when I'm connecting the same monitor to the USB-C port, then it =
is
> > > connecting to the DP-1 socket and the maximum that it can achieve is
> > > 3840x2160 with only 30.00Hz.
> > > But I'm making some trick: I'm connecting the same monitor through
> HDMI, so
> > > it is connecting to DP-1 socket, and simultaneously I'm connecting
> USB-C,
> > > and now USB-C is connecting to DP-2-2 socket (because DP-1 is occupie=
d
> by
> > > HDMI) and I can have full 4K with 60Hz.
> > > Please, help me, how to force USB-C to connect always to DP-2-2 socke=
t?
> > > Or do You know maybe where is the problem?
> >
> > Unfortunately we have no control over the mux in the operating system
> > on Skylakes, at least in USB subsystem. It all happens in firmware.
> > Maybe graphics side can do something.
> >
> > Adding Jani, Imre, Ville and the Intel GFX list.
>
> On SKL/KBL the USB-C -> native DP/HDMI conversion is done by an off-CPU
> chip and the display driver doesn't have a way either to affect the
> muxing.
>
> Not sure why things work on DP-2 and not on DP-1, there is no port
> specific limits on the CPU side that would explain this. There is a link
> training failure in the log, so would be good to see more details on
> that. Could you file a ticket at
> https://gitlab.freedesktop.org/drm/intel/-/issues
> providing a full log booting with drm.debug=3D0x1e for the working and
> non-working cases?
>
> Thanks,
> Imre
>

--00000000000071dd9705b402dce7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Got it. <br></div><div>Thank You for quick replying. =
Due to coronavirus I was not able to issue a ticket quickly . But I created=
 it.<br></div><div><br></div><div>Best Regards,<br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">wt., 20 pa=C5=BA 2=
020 o 16:25=C2=A0Imre Deak &lt;<a href=3D"mailto:imre.deak@intel.com">imre.=
deak@intel.com</a>&gt; napisa=C5=82(a):<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">Hi,<br>
<br>
On Mon, Oct 19, 2020 at 05:24:59PM +0300, Heikki Krogerus wrote:<br>
&gt; Hi Andrzej,<br>
&gt; <br>
&gt; On Sat, Oct 17, 2020 at 01:34:54PM +0200, Andrzej Kre wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt; <br>
&gt; &gt; I know that You were involved in working on USB-C DP drivers.<br>
&gt; &gt; You are my last chance to resolve my issue.<br>
&gt; &gt; <br>
&gt; &gt; On my HP laptop I have Intel UHD Graphics 620.<br>
&gt; &gt; When I&#39;m connecting my 4K monitor to Display Port. It is assi=
gning to<br>
&gt; &gt; DP-2-2 socket and=C2=A0 I have full 3840x2160 with 60.00Hz<br>
&gt; &gt; But, when I&#39;m connecting the same monitor to the USB-C port, =
then it is<br>
&gt; &gt; connecting to the DP-1 socket and the maximum that it can achieve=
 is<br>
&gt; &gt; 3840x2160 with only 30.00Hz.<br>
&gt; &gt; But I&#39;m making some trick: I&#39;m connecting the same monito=
r through HDMI, so<br>
&gt; &gt; it is connecting to DP-1 socket, and simultaneously I&#39;m conne=
cting USB-C,<br>
&gt; &gt; and now USB-C is connecting to DP-2-2 socket (because DP-1 is occ=
upied by<br>
&gt; &gt; HDMI) and I can have full 4K with 60Hz.<br>
&gt; &gt; Please, help me, how to force USB-C to connect always to DP-2-2 s=
ocket?<br>
&gt; &gt; Or do You know maybe where is the problem?<br>
&gt; <br>
&gt; Unfortunately we have no control over the mux in the operating system<=
br>
&gt; on Skylakes, at least in USB subsystem. It all happens in firmware.<br=
>
&gt; Maybe graphics side can do something.<br>
&gt; <br>
&gt; Adding Jani, Imre, Ville and the Intel GFX list.<br>
<br>
On SKL/KBL the USB-C -&gt; native DP/HDMI conversion is done by an off-CPU<=
br>
chip and the display driver doesn&#39;t have a way either to affect the<br>
muxing.<br>
<br>
Not sure why things work on DP-2 and not on DP-1, there is no port<br>
specific limits on the CPU side that would explain this. There is a link<br=
>
training failure in the log, so would be good to see more details on<br>
that. Could you file a ticket at <br>
<a href=3D"https://gitlab.freedesktop.org/drm/intel/-/issues" rel=3D"norefe=
rrer" target=3D"_blank">https://gitlab.freedesktop.org/drm/intel/-/issues</=
a><br>
providing a full log booting with drm.debug=3D0x1e for the working and<br>
non-working cases?<br>
<br>
Thanks,<br>
Imre<br>
</blockquote></div>

--00000000000071dd9705b402dce7--

--===============0248044684==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0248044684==--
