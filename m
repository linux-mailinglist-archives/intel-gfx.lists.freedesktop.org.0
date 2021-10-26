Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 249EA43B7AD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 18:57:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44EB6897BB;
	Tue, 26 Oct 2021 16:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8621897BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 16:57:24 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id o26so21208702ljj.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 09:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AlxMaUiQkVzIDFXiSRxAd3Mbg1Vw+Vr2H/SWTGRGIFU=;
 b=ffSUqAkjwCf9Ja1AE9KlfcnfKDGY9sy63A1xkOjwWP528eQZq0UW+rnAi1Hf3Jiua2
 JKRKZnLQiRkWFgzD0gW95ncqAxQUF/MQpzZ43+4urU+Vg/uF14WZj6s7l2zqZIZdd/hh
 +0lCF1eUwvdvnH1Iqj07b2bdg/X9orMgfKm4hltnaAOdxsCY7ulROpJ8CvGWt3LE4nHj
 zDfCavm4edrnZQv33JgbbXDcCTgYsqaueM8s+SiErewVrxps3lcVoIKfULJrxo+m7yL9
 mhwNp6Yx56X61hhFT//Wi+S8di6HZdR2HvkmnApfdOR4yd6SghSE+gPUeocKtSjBRpT4
 sEfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AlxMaUiQkVzIDFXiSRxAd3Mbg1Vw+Vr2H/SWTGRGIFU=;
 b=XXb3D9U6W10h1Owo8TupVMHqjbQP3XaFM/GJttxxqO+kmCBFzbgLw4xoknsjsbiIzU
 wYqeR7ZuDqB9cvEBYWPEEV6OIVDhxb7uIC3uOvektgnK90PYTp5ShPsqgj1izQREDeWZ
 2lBj1UM6pBO+M1Q8sveEisdXt/DIq1ETeuJRqw48C0+2snlHWfvWJMJX0bH8cy0A0erL
 OLR06cYbe60kB8USWd4iBbU9ewd7FvId+rJwWyn51h9TGcoqWQz0+jlhwJSwMe+YlRwE
 rw9M9qjxb/+TCR94KCUfto1rqTRflO4ZZAeDw8YhkOu8mHa310Aw251LNb/HLTQ5qjme
 1JDA==
X-Gm-Message-State: AOAM5316tvNBlFDJ3Byeeab0N/vJsLS3vD+rH63O9+5v3+e5PYpBjqM3
 KSwPOzptiOWLgljjtI8bBt65tFQEjAaioPUMFLHUaovbKXJ+Jw==
X-Google-Smtp-Source: ABdhPJzuNwpRuPWtzr05+YjC0mHVJYdPL6FLA2Codk8r0MhTOxsilyKJoytJALbF2zJfqWR3QEyJjLWid+4XdobkNCQ=
X-Received: by 2002:a05:651c:511:: with SMTP id
 o17mr28247805ljp.96.1635267442916; 
 Tue, 26 Oct 2021 09:57:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAFrh3J8jue=s56T-55DCVYYwxJd=4y9LdT2m26rabFvPtRW=8A@mail.gmail.com>
 <874k93kack.fsf@intel.com>
In-Reply-To: <874k93kack.fsf@intel.com>
From: Satadru Pramanik <satadru@gmail.com>
Date: Tue, 26 Oct 2021 12:57:11 -0400
Message-ID: <CAFrh3J_JQEcniOUunvm1hv4R12qhw=s8vWFJ4CWMoB8zPkGRpw@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, "Deak, Imre" <imre.deak@intel.com>
Content-Type: multipart/alternative; boundary="0000000000000c43fd05cf445f86"
Subject: Re: [Intel-gfx] intel_dp_sync_state+oxeo/oxfo boot failures after
 5.15-rc3
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

--0000000000000c43fd05cf445f86
Content-Type: text/plain; charset="UTF-8"

That appears to do the trick.

Ubuntu's 5.15.0-051500rc6drmtip20211026-generic kernel boots successfully.

Thanks,
Satadru

On Tue, Oct 26, 2021 at 12:41 PM Jani Nikula <jani.nikula@linux.intel.com>
wrote:

> On Tue, 26 Oct 2021, Satadru Pramanik <satadru@gmail.com> wrote:
> > I have a MacBookPro6,2 that I'm running the mainline 5.15-rc3 ubuntu
> kernel
> > on successfully. I installed the 5.15-rc5 kernel
> > <https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.15-rc5/amd64/> (the
> > 5.15-rc4 didn't build) and the system wouldn't boot, erroring out with
> the
> > error below. I also see the same issues using the ubuntu mainline build
> of
> > 5.15-rc6 and 5.15-rc7.
>
> Thanks for the report, should be fixed by commit
>
> 4ec5ffc341ce ("drm/i915/dp: Skip the HW readout of DPCD on disabled
> encoders")
>
> in drm-intel-next and should hopefully make it to v5.15 final.
>
> BR,
> Jani.
>
>
> >
> > This is copied from a picture I took of the error screen where the boot
> > halts:
> >
> > [ 2.554921] RDX: 0000000000000000 RSI: 0000560e0c741670 RDI:
> > 0000000000000015
> > [ 2.554925] RBP: 0000000000020000 ROB: 0000000000000000 R09:
> > 0000000000000000
> > [ 2.554928] R10: 0000000000000015 R11: 0000000000000246 R12:
> > 0000560e0c741670
> > [ 2.554931] R13: 0000560e0c74b980 R14: 0000000000000000 R15:
> > 0000560e0c7362c0
> > [ 2.554936] Modules linked in: hid_appleir (+) hid_apple i915(+)
> > 12c_algo_bitm hid_generic.drm_kms_helper syscopyarea sysfillrect wl (POE)
> > sysimgblt uas crc e_pclmul fb_sys_fops firewire_ohci usb_storage cec
> usbhid
> > firewire_core hid crc tu_t rc_core cfg80211 ahci 12c_1801 libahci
> i2c_smbus
> > tg3 1pc_ich drm apple_gm video apple_bl
> > [ 2.554967] [ end trace a9fec12cca81a98e ]---
> > [ 2.554970] RIP: 0010: intel_dp_sync_state+oxeo/oxfo, [1915]
> > [ 2.555098] Code: 85 69 ff ff ff 48 8b 9f 70 01:00 00 80 bb 83 01 00 00
> 00
> > of
> > 85 64 ff ff ff 48 8d bb 70 01 00 00 e8 f5 cb ff ff e9 53 ff ff ff <0f> ob
> > 66 66
> > 2e of if 84 00 00 00 00 00 0f 1f 00 of 1f 44 00 00 55
> > [ 2.555104] RSP: 0018:ffffae12c06ef898 EFLAGS: 00010282
> > [ 2.555108] RAX: ffffffffffffffff RBX: ffff99b099034000
> > ROX: ffff99b097bc03e0
> > [ 2.555112] RDX: 0000000000000000 RSI: 0000000000000000 RDI:
> > ffff99b0990341b6
> > [ 2.555115] RBP: ffffae12c06ef8b8 R08: 00000000ffffff92 R09:
> > ffffffffc0c9cb2c
> > [ 2.555119] R10: 0000000000000008 R11: ffff99b099034e08 R12:
> > 0000000000000000
> > [ 2.555122] R13: 0000000000000000 R14: 0000000000000004 R15:
> > ffff99b099034000
> > [ 2.555125] FS: 00007fd7808a08c0 (0000) GS:ffff99b1c7c80000 (0000)
> > knlGS:00000
> > 00000000000
> > [ 2.555130] CS: 0010 DS: 0000 ES: 0000 CRO: 0000000080050033
> > [ 2.555133] CR2: 0000560e0c7395b8 CR3: 0000000100d02000 CR4:
> > 00000000000006e0
> > [ 2.555244] Console: switching to colour frame buffer device 210x65
>
> --
> Jani Nikula, Intel Open Source Graphics Center
>

--0000000000000c43fd05cf445f86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That appears to do the trick.<div><br></div><div>Ubuntu&#3=
9;s=C2=A05.15.0-051500rc6drmtip20211026-generic kernel boots successfully.<=
/div><div><br></div><div>Thanks,</div><div>Satadru</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 26, 202=
1 at 12:41 PM Jani Nikula &lt;<a href=3D"mailto:jani.nikula@linux.intel.com=
">jani.nikula@linux.intel.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On Tue, 26 Oct 2021, Satadru Pramanik &lt;<a h=
ref=3D"mailto:satadru@gmail.com" target=3D"_blank">satadru@gmail.com</a>&gt=
; wrote:<br>
&gt; I have a MacBookPro6,2 that I&#39;m running the mainline 5.15-rc3 ubun=
tu kernel<br>
&gt; on successfully. I installed the 5.15-rc5 kernel<br>
&gt; &lt;<a href=3D"https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.15-rc=
5/amd64/" rel=3D"noreferrer" target=3D"_blank">https://kernel.ubuntu.com/~k=
ernel-ppa/mainline/v5.15-rc5/amd64/</a>&gt; (the<br>
&gt; 5.15-rc4 didn&#39;t build) and the system wouldn&#39;t boot, erroring =
out with the<br>
&gt; error below. I also see the same issues using the ubuntu mainline buil=
d of<br>
&gt; 5.15-rc6 and 5.15-rc7.<br>
<br>
Thanks for the report, should be fixed by commit<br>
<br>
4ec5ffc341ce (&quot;drm/i915/dp: Skip the HW readout of DPCD on disabled en=
coders&quot;)<br>
<br>
in drm-intel-next and should hopefully make it to v5.15 final.<br>
<br>
BR,<br>
Jani.<br>
<br>
<br>
&gt;<br>
&gt; This is copied from a picture I took of the error screen where the boo=
t<br>
&gt; halts:<br>
&gt;<br>
&gt; [ 2.554921] RDX: 0000000000000000 RSI: 0000560e0c741670 RDI:<br>
&gt; 0000000000000015<br>
&gt; [ 2.554925] RBP: 0000000000020000 ROB: 0000000000000000 R09:<br>
&gt; 0000000000000000<br>
&gt; [ 2.554928] R10: 0000000000000015 R11: 0000000000000246 R12:<br>
&gt; 0000560e0c741670<br>
&gt; [ 2.554931] R13: 0000560e0c74b980 R14: 0000000000000000 R15:<br>
&gt; 0000560e0c7362c0<br>
&gt; [ 2.554936] Modules linked in: hid_appleir (+) hid_apple i915(+)<br>
&gt; 12c_algo_bitm hid_generic.drm_kms_helper syscopyarea sysfillrect wl (P=
OE)<br>
&gt; sysimgblt uas crc e_pclmul fb_sys_fops firewire_ohci usb_storage cec u=
sbhid<br>
&gt; firewire_core hid crc tu_t rc_core cfg80211 ahci 12c_1801 libahci i2c_=
smbus<br>
&gt; tg3 1pc_ich drm apple_gm video apple_bl<br>
&gt; [ 2.554967] [ end trace a9fec12cca81a98e ]---<br>
&gt; [ 2.554970] RIP: 0010: intel_dp_sync_state+oxeo/oxfo, [1915]<br>
&gt; [ 2.555098] Code: 85 69 ff ff ff 48 8b 9f 70 01:00 00 80 bb 83 01 00 0=
0 00<br>
&gt; of<br>
&gt; 85 64 ff ff ff 48 8d bb 70 01 00 00 e8 f5 cb ff ff e9 53 ff ff ff &lt;=
0f&gt; ob<br>
&gt; 66 66<br>
&gt; 2e of if 84 00 00 00 00 00 0f 1f 00 of 1f 44 00 00 55<br>
&gt; [ 2.555104] RSP: 0018:ffffae12c06ef898 EFLAGS: 00010282<br>
&gt; [ 2.555108] RAX: ffffffffffffffff RBX: ffff99b099034000<br>
&gt; ROX: ffff99b097bc03e0<br>
&gt; [ 2.555112] RDX: 0000000000000000 RSI: 0000000000000000 RDI:<br>
&gt; ffff99b0990341b6<br>
&gt; [ 2.555115] RBP: ffffae12c06ef8b8 R08: 00000000ffffff92 R09:<br>
&gt; ffffffffc0c9cb2c<br>
&gt; [ 2.555119] R10: 0000000000000008 R11: ffff99b099034e08 R12:<br>
&gt; 0000000000000000<br>
&gt; [ 2.555122] R13: 0000000000000000 R14: 0000000000000004 R15:<br>
&gt; ffff99b099034000<br>
&gt; [ 2.555125] FS: 00007fd7808a08c0 (0000) GS:ffff99b1c7c80000 (0000)<br>
&gt; knlGS:00000<br>
&gt; 00000000000<br>
&gt; [ 2.555130] CS: 0010 DS: 0000 ES: 0000 CRO: 0000000080050033<br>
&gt; [ 2.555133] CR2: 0000560e0c7395b8 CR3: 0000000100d02000 CR4:<br>
&gt; 00000000000006e0<br>
&gt; [ 2.555244] Console: switching to colour frame buffer device 210x65<br=
>
<br>
-- <br>
Jani Nikula, Intel Open Source Graphics Center<br>
</blockquote></div>

--0000000000000c43fd05cf445f86--
