Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3BC44FBF2
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Nov 2021 23:02:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74B156E030;
	Sun, 14 Nov 2021 22:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3D646E030
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Nov 2021 22:02:42 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id 1so31257574ljv.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Nov 2021 14:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=serpentine-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eZbtV9EJ0zwttufK11xbOLMnuyMciyrbJMVMJKwWi2s=;
 b=RzxoKmHRJwE+30nJhPWXIG+z9b+cMvGHVIYBAaBN2s9J82fLgSiSBDD2FGoUJor0rF
 RpOZhvj5WPO4l87cbNXTyJp/Xtd89N6cK0HYk3CSPYs3VsSrtvqk6m9X3ytCC3OVrPC3
 0lHZnSIPO3N2wVnY13C+KUph79O+DSlStRBAvkXYATReBaexGAa7QvuIC5G1qyYu528I
 kAkWnqGyidaI+O9gbVj1KQUr2Ss8yry29ZBF6kKYxx/NhKFBWtbVKjSflUIKwUJTCGYi
 NEs9dthr4jhtZ71bKE8yEKyW7E7y+p1jyr6Pvx/CcAvFIIsiSMJniXjV0ESC8jRv/PZH
 KQqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eZbtV9EJ0zwttufK11xbOLMnuyMciyrbJMVMJKwWi2s=;
 b=nM1HwHdlWIHqCXX1/ZR1HLQvCrp4WSSwD/BKiZcPgHR1Swyct/xJW6hNXZGXEu/XPb
 3Ck+EPSRppwGbAL6jBdwgDAzmjsGG2dIRdlpQGAW5hr6b7PjiynhkVzceBDa05pBp8dY
 9rwCp6Y2i96CPPK3/K01aW21Vp0Nd/chmX2JjQvcm+10V5HcOUCQUhIvDLP223jPdZWZ
 YsRvoaSi3MpCLXGF1KsICRrDIzoZYEdGcKNwn6OeRFZgRTOuYSMlFTy9cnwi4eRboaIZ
 VWN5XtKMOfiqf2/cgbtbE6+uS89JgaE+XtxRtAs87CJFOB9VCOdkVgltKVLVRYPa8Kf/
 bqtg==
X-Gm-Message-State: AOAM532mcwM7wj6ZMNg8OfLzd5v/oJmwKPwXUNO8z9AI8LptJ1ZFfBQs
 MSPgWdQay84wuLuN8LTVj4qIsQzaQ3Xu3iML/fbKP2B2dY9F00cy
X-Google-Smtp-Source: ABdhPJzhpu1sYRInJQwRgDSGBkTyaseNM/5lxrBUCCiK14BwJjB+yDVXC8AjNlskL7FQpPrlMyut79BR1o9TWKTFZY8=
X-Received: by 2002:a2e:824a:: with SMTP id j10mr32700599ljh.256.1636927360960; 
 Sun, 14 Nov 2021 14:02:40 -0800 (PST)
MIME-Version: 1.0
References: <CACw0niK_XL8P99LZQjmgaMQ12X8=LRaN4YQ1Dbu_Bta8trK3tQ@mail.gmail.com>
 <DM8PR11MB565568E41B3AE32866A59364E0979@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB565568E41B3AE32866A59364E0979@DM8PR11MB5655.namprd11.prod.outlook.com>
From: "Bryan O'Sullivan" <bos@serpentine.com>
Date: Sun, 14 Nov 2021 14:02:30 -0800
Message-ID: <CACw0niJzSetW2yP0Ncj8nx=muCSQMNtGw39SrUsZ0MTM-U0K3w@mail.gmail.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>
Content-Type: multipart/alternative; boundary="000000000000df9bbe05d0c6d974"
Subject: Re: [Intel-gfx] Can't drive 4K monitor at full resolution over DP
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--000000000000df9bbe05d0c6d974
Content-Type: text/plain; charset="UTF-8"

Thanks, Jani, here's the bug report:
https://gitlab.freedesktop.org/drm/intel/-/issues/4531

On Sun, Nov 14, 2021 at 2:50 AM Saarinen, Jani <jani.saarinen@intel.com>
wrote:

> Hi Bryan.
> Can you file new bug:
> https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
>
> Br,
>
> Jani Saarinen
> Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
>
>
>
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Bryan
> > O'Sullivan
> > Sent: sunnuntai 14. marraskuuta 2021 6.36
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] Can't drive 4K monitor at full resolution over DP
> >
> > I have a new Framework laptop running Fedora 35, stock kernel package
> 5.14.16-
> > 301, BDB version 240.
> >
> > My CPU/GPU is an 11th gen i7-1165G7, connected via a USB-C-to-DP cable
> to a
> > 2014-era Dell P2715Q monitor that supports 3840x2160@60Hz over DP (my
> Mac
> > drives it this way just fine).
> >
> > With i915 debugging enabled, I can see the 4K modeline being detected and
> > discarded because CLOCK_HIGH. Here's some debug output in a paste as
> it's longish
> > and verbose: https://pastebin.com/reGcmxYF
> >
> > Line 17 of that paste seems weird, where the value of everything is zero
> for some
> > reason?
> >
> > Here's some output from the monitor-edid tool. If there's any more
> information I
> > can supply to track this down, I'm happy to do what I can.
> >
> > Name: DELL P2715Q
> > EISA ID: DEL40bd
> > EDID version: 1.4
> > EDID extension blocks: 1
> > Screen size: 59.7 cm x 33.6 cm (26.97 inches, aspect ratio 16/9 = 1.78)
> > Gamma: 2.2
> > Digital signal
> > Max video bandwidth: 540 MHz
> >
> >         HorizSync 31-140
> >         VertRefresh 29-75
> >
> >         # Monitor preferred modeline (60.0 Hz vsync, 133.3 kHz hsync,
> ratio 16/9, 163
> > dpi)
> >         ModeLine "3840x2160" 533.25 3840 3888 3920 4000 2160 2163 2168
> 2222 -
> > hsync +vsync
> >
> >         # Monitor supported CEA modeline (60.0 Hz vsync, 67.5 kHz hsync,
> ratio 16/9,
> > 81 dpi)
> >         ModeLine "1920x1080" 148.5 1920 2008 2052 2200 1080 1084 1089
> 1125
> > +hsync +vsync
>
>

--000000000000df9bbe05d0c6d974
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, Jani, here&#39;s the bug report:=C2=A0<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/-/issues/4531">https://gitlab.freed=
esktop.org/drm/intel/-/issues/4531</a></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 14, 2021 at 2:50 AM Saari=
nen, Jani &lt;<a href=3D"mailto:jani.saarinen@intel.com">jani.saarinen@inte=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hi Bryan. <br>
Can you file new bug: <a href=3D"https://gitlab.freedesktop.org/drm/intel/-=
/wikis/How-to-file-i915-bugs" rel=3D"noreferrer" target=3D"_blank">https://=
gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs</a> <br>
<br>
Br,<br>
<br>
Jani Saarinen<br>
Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo<br>
<br>
<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Intel-gfx &lt;<a href=3D"mailto:intel-gfx-bounces@lists.freedesk=
top.org" target=3D"_blank">intel-gfx-bounces@lists.freedesktop.org</a>&gt; =
On Behalf Of Bryan<br>
&gt; O&#39;Sullivan<br>
&gt; Sent: sunnuntai 14. marraskuuta 2021 6.36<br>
&gt; To: <a href=3D"mailto:intel-gfx@lists.freedesktop.org" target=3D"_blan=
k">intel-gfx@lists.freedesktop.org</a><br>
&gt; Subject: [Intel-gfx] Can&#39;t drive 4K monitor at full resolution ove=
r DP<br>
&gt; <br>
&gt; I have a new Framework laptop running Fedora 35, stock kernel package =
5.14.16-<br>
&gt; 301, BDB version 240.<br>
&gt; <br>
&gt; My CPU/GPU is an 11th gen i7-1165G7, connected via a USB-C-to-DP cable=
 to a<br>
&gt; 2014-era Dell P2715Q monitor that supports 3840x2160@60Hz over DP (my =
Mac<br>
&gt; drives it this way just fine).<br>
&gt; <br>
&gt; With i915 debugging enabled, I can see the 4K modeline being detected =
and<br>
&gt; discarded because CLOCK_HIGH. Here&#39;s some debug output in a paste =
as it&#39;s longish<br>
&gt; and verbose: <a href=3D"https://pastebin.com/reGcmxYF" rel=3D"noreferr=
er" target=3D"_blank">https://pastebin.com/reGcmxYF</a><br>
&gt; <br>
&gt; Line 17 of that paste seems weird, where the value of everything is ze=
ro for some<br>
&gt; reason?<br>
&gt; <br>
&gt; Here&#39;s some output from the monitor-edid tool. If there&#39;s any =
more information I<br>
&gt; can supply to track this down, I&#39;m happy to do what I can.<br>
&gt; <br>
&gt; Name: DELL P2715Q<br>
&gt; EISA ID: DEL40bd<br>
&gt; EDID version: 1.4<br>
&gt; EDID extension blocks: 1<br>
&gt; Screen size: 59.7 cm x 33.6 cm (26.97 inches, aspect ratio 16/9 =3D 1.=
78)<br>
&gt; Gamma: 2.2<br>
&gt; Digital signal<br>
&gt; Max video bandwidth: 540 MHz<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0HorizSync 31-140<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0VertRefresh 29-75<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Monitor preferred modeline (60.0 Hz=
 vsync, 133.3 kHz hsync, ratio 16/9, 163<br>
&gt; dpi)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ModeLine &quot;3840x2160&quot; 533.25=
 3840 3888 3920 4000 2160 2163 2168 2222 -<br>
&gt; hsync +vsync<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Monitor supported CEA modeline (60.=
0 Hz vsync, 67.5 kHz hsync, ratio 16/9,<br>
&gt; 81 dpi)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ModeLine &quot;1920x1080&quot; 148.5 =
1920 2008 2052 2200 1080 1084 1089 1125<br>
&gt; +hsync +vsync<br>
<br>
</blockquote></div>

--000000000000df9bbe05d0c6d974--
