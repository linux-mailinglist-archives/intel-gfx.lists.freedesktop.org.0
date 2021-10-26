Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AAB43B728
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 18:27:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3293F89956;
	Tue, 26 Oct 2021 16:27:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3948A89956
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 16:27:32 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id j2so31866lfg.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 09:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:from:date:message-id:subject:to;
 bh=YAz91/Fy3JrKeAtOqpWRNxfGmVJ3Gksrtc4lCCGZTFM=;
 b=EXEc58zwYL77kDLw2DWeFu1uWMA+0tpLTJFk082jRR36nOueaS8rIF0+vI3sDBaOA8
 FpeSEIJRLKnKBRSrs0LTP4Lfc0QmhpCZJKt6ifM8NtV94U20XHQ89dFTw9jj3TCP1TXh
 6ebxZM2mxAtx1pwHA5RNdrNGtDAh3Wdcicmqu2tiF40qsNQYmWTQsiT66gU1PXHpGlLV
 Z0rugIrOHEY4i1Bv4VfjzsmWy3Sh/hEY87V2jwzqvq2xXmGvnhfX9iVGkviyEOOrIiP5
 dx7+0pTkD3Z3eX56Bm3HRWRrKxyp9dHxAmymxXpxZacUljYNbGrn3siiiuz+oHhDPyLq
 R2uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=YAz91/Fy3JrKeAtOqpWRNxfGmVJ3Gksrtc4lCCGZTFM=;
 b=6jPAHpc+hMpIVt4yBmQGZlImHlFakW4NP+Rcvp1BxU/O2rpEeXuqMCVE8iyA3wCdT6
 arJGkZaKHwomRCg34pozrwJiW2Kqi87oKiVF/DchvtFLPGM16JOeZdCYIVhcatz9/8tg
 F+91YaCkflbh77dSbC1Mn7PAYK89hyDWlmbjSn8OT9uR/h8lLSRteppyvkFLFVRdvnjr
 6K2UYNHUyPyiJuqBhbLVbjTOdG/oD6B96IEYAvqio38XVwx4EwFq+g3fPn+ojmRiWXGp
 9GTQcI/D/ys7hqOArTj/7NfbuTRM0SUMccVq1nMQY3/CSrWVX1tGth67GbSiRgmF51bt
 8jKQ==
X-Gm-Message-State: AOAM531O6hlNSc3lbAz6VhSUgBrzwNhAm30J/nxweCL8somQMIyB7vKl
 Wuul0fW/HULEtFwkmigbp0/LGWy80UPxZjBwYUf6YXMNXbYjfw==
X-Google-Smtp-Source: ABdhPJzYSBVlTXkFlS1/uQZBQ7RmgzYPN3q0TFfvB59UIjLKtxz+ZYVT9F0Zc1qcXgFdS6jcshZlMxQvmormQq3pZt8=
X-Received: by 2002:a05:6512:15a6:: with SMTP id
 bp38mr3533665lfb.65.1635265649950; 
 Tue, 26 Oct 2021 09:27:29 -0700 (PDT)
MIME-Version: 1.0
From: Satadru Pramanik <satadru@gmail.com>
Date: Tue, 26 Oct 2021 12:27:18 -0400
Message-ID: <CAFrh3J8jue=s56T-55DCVYYwxJd=4y9LdT2m26rabFvPtRW=8A@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000002dc53b05cf43f4e5"
Subject: [Intel-gfx] intel_dp_sync_state+oxeo/oxfo boot failures after
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

--0000000000002dc53b05cf43f4e5
Content-Type: text/plain; charset="UTF-8"

I have a MacBookPro6,2 that I'm running the mainline 5.15-rc3 ubuntu kernel
on successfully. I installed the 5.15-rc5 kernel
<https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.15-rc5/amd64/> (the
5.15-rc4 didn't build) and the system wouldn't boot, erroring out with the
error below. I also see the same issues using the ubuntu mainline build of
5.15-rc6 and 5.15-rc7.

This is copied from a picture I took of the error screen where the boot
halts:

[ 2.554921] RDX: 0000000000000000 RSI: 0000560e0c741670 RDI:
0000000000000015
[ 2.554925] RBP: 0000000000020000 ROB: 0000000000000000 R09:
0000000000000000
[ 2.554928] R10: 0000000000000015 R11: 0000000000000246 R12:
0000560e0c741670
[ 2.554931] R13: 0000560e0c74b980 R14: 0000000000000000 R15:
0000560e0c7362c0
[ 2.554936] Modules linked in: hid_appleir (+) hid_apple i915(+)
12c_algo_bitm hid_generic.drm_kms_helper syscopyarea sysfillrect wl (POE)
sysimgblt uas crc e_pclmul fb_sys_fops firewire_ohci usb_storage cec usbhid
firewire_core hid crc tu_t rc_core cfg80211 ahci 12c_1801 libahci i2c_smbus
tg3 1pc_ich drm apple_gm video apple_bl
[ 2.554967] [ end trace a9fec12cca81a98e ]---
[ 2.554970] RIP: 0010: intel_dp_sync_state+oxeo/oxfo, [1915]
[ 2.555098] Code: 85 69 ff ff ff 48 8b 9f 70 01:00 00 80 bb 83 01 00 00 00
of
85 64 ff ff ff 48 8d bb 70 01 00 00 e8 f5 cb ff ff e9 53 ff ff ff <0f> ob
66 66
2e of if 84 00 00 00 00 00 0f 1f 00 of 1f 44 00 00 55
[ 2.555104] RSP: 0018:ffffae12c06ef898 EFLAGS: 00010282
[ 2.555108] RAX: ffffffffffffffff RBX: ffff99b099034000
ROX: ffff99b097bc03e0
[ 2.555112] RDX: 0000000000000000 RSI: 0000000000000000 RDI:
ffff99b0990341b6
[ 2.555115] RBP: ffffae12c06ef8b8 R08: 00000000ffffff92 R09:
ffffffffc0c9cb2c
[ 2.555119] R10: 0000000000000008 R11: ffff99b099034e08 R12:
0000000000000000
[ 2.555122] R13: 0000000000000000 R14: 0000000000000004 R15:
ffff99b099034000
[ 2.555125] FS: 00007fd7808a08c0 (0000) GS:ffff99b1c7c80000 (0000)
knlGS:00000
00000000000
[ 2.555130] CS: 0010 DS: 0000 ES: 0000 CRO: 0000000080050033
[ 2.555133] CR2: 0000560e0c7395b8 CR3: 0000000100d02000 CR4:
00000000000006e0
[ 2.555244] Console: switching to colour frame buffer device 210x65

--0000000000002dc53b05cf43f4e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have a=C2=A0<span class=3D"gmail-il">MacBookPro6</s=
pan>,<span class=3D"gmail-il">2</span>=C2=A0that I&#39;m running the mainli=
ne 5.15-rc3 ubuntu kernel on successfully. I installed the=C2=A0<a href=3D"=
https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.15-rc5/amd64/" rel=3D"nor=
eferrer" target=3D"_blank">5.15-rc5 kernel</a>=C2=A0(the 5.15-rc4 didn&#39;=
t build) and the system wouldn&#39;t boot, erroring out with the error belo=
w. I also see the same issues using the ubuntu mainline build of 5.15-rc6 a=
nd 5.15-rc7.</div><div><br></div><div>This is copied from a picture I took =
of the error screen where the boot halts:</div><div><br></div><div dir=3D"a=
uto"><div dir=3D"auto">[=C2=A0<span class=3D"gmail-il">2</span>.554921] RDX=
: 0000000000000000 RSI: 0000560e0c741670 RDI: 0000000000000015</div><div di=
r=3D"auto">[=C2=A0<span class=3D"gmail-il">2</span>.554925] RBP: 0000000000=
020000 ROB: 0000000000000000 R09: 0000000000000000</div><div dir=3D"auto">[=
=C2=A0<span class=3D"gmail-il">2</span>.554928] R10: 0000000000000015 R11: =
0000000000000246 R12: 0000560e0c741670</div><div dir=3D"auto">[=C2=A0<span =
class=3D"gmail-il">2</span>.554931] R13: 0000560e0c74b980 R14: 000000000000=
0000 R15: 0000560e0c7362c0</div><div dir=3D"auto">[=C2=A0<span class=3D"gma=
il-il">2</span>.554936] Modules linked in: hid_appleir (+) hid_apple i915(+=
) 12c_algo_bitm hid_generic.drm_kms_helper syscopyarea sysfillrect wl (POE)=
 sysimgblt uas crc e_pclmul fb_sys_fops firewire_ohci usb_storage cec usbhi=
d firewire_core hid crc tu_t rc_core cfg80211 ahci 12c_1801 libahci i2c_smb=
us tg3 1pc_ich drm apple_gm video apple_bl</div><div dir=3D"auto">[=C2=A0<s=
pan class=3D"gmail-il">2</span>.554967] [ end trace a9fec12cca81a98e ]---<b=
r></div><div dir=3D"auto">[=C2=A0<span class=3D"gmail-il">2</span>.554970] =
RIP: 0010: intel_dp_sync_state+oxeo/oxfo, [1915]<br></div><div dir=3D"auto"=
>[=C2=A0<span class=3D"gmail-il">2</span>.555098] Code: 85 69 ff ff ff 48 8=
b 9f 70 01:00 00 80 bb 83 01 00 00 00 of</div><div dir=3D"auto">85 64 ff ff=
 ff 48 8d bb 70 01 00 00 e8 f5 cb ff ff e9 53 ff ff ff &lt;0f&gt; ob 66 66<=
br></div><div dir=3D"auto">2e of if 84 00 00 00 00 00 0f 1f 00 of 1f 44 00 =
00 55<br></div><div dir=3D"auto">[=C2=A0<span class=3D"gmail-il">2</span>.5=
55104] RSP: 0018:ffffae12c06ef898 EFLAGS: 00010282</div><div dir=3D"auto">[=
=C2=A0<span class=3D"gmail-il">2</span>.555108] RAX: ffffffffffffffff RBX: =
ffff99b099034000</div><div dir=3D"auto">ROX: ffff99b097bc03e0<br></div><div=
 dir=3D"auto">[=C2=A0<span class=3D"gmail-il">2</span>.555112] RDX: 0000000=
000000000 RSI: 0000000000000000 RDI: ffff99b0990341b6<br></div><div dir=3D"=
auto">[=C2=A0<span class=3D"gmail-il">2</span>.555115] RBP: ffffae12c06ef8b=
8 R08: 00000000ffffff92 R09: ffffffffc0c9cb2c</div><div dir=3D"auto">[=C2=
=A0<span class=3D"gmail-il">2</span>.555119] R10: 0000000000000008 R11: fff=
f99b099034e08 R12: 0000000000000000</div><div dir=3D"auto">[=C2=A0<span cla=
ss=3D"gmail-il">2</span>.555122] R13: 0000000000000000 R14: 000000000000000=
4 R15: ffff99b099034000</div><div dir=3D"auto">[=C2=A0<span class=3D"gmail-=
il">2</span>.555125] FS: 00007fd7808a08c0 (0000) GS:ffff99b1c7c80000 (0000)=
 knlGS:00000</div><div dir=3D"auto">00000000000<br></div><div dir=3D"auto">=
[=C2=A0<span class=3D"gmail-il">2</span>.555130] CS: 0010 DS: 0000 ES: 0000=
 CRO: 0000000080050033<br></div><div dir=3D"auto">[=C2=A0<span class=3D"gma=
il-il">2</span>.555133] CR2: 0000560e0c7395b8 CR3: 0000000100d02000 CR4: 00=
000000000006e0<br></div><div dir=3D"auto">[=C2=A0<span class=3D"gmail-il">2=
</span>.555244] Console: switching to colour frame buffer device 210x65</di=
v></div></div>

--0000000000002dc53b05cf43f4e5--
