Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B5385A28E
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 12:55:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB02D10E303;
	Mon, 19 Feb 2024 11:55:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ItgQHCCQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com
 [209.85.128.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC0710E06A
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Feb 2024 18:12:36 +0000 (UTC)
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-607bfa4c913so33573017b3.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Feb 2024 10:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1708279956; x=1708884756; darn=lists.freedesktop.org;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=b7pv4fVBRv/WCzNomVZws1J8gGnSIYaMsfGJePZwJi8=;
 b=ItgQHCCQ1YipbznJoovw4UduWf61aAfuwRd7XXRTQIYyF9oM1nWR+630nrryl7C5pd
 TQqO1OUoZydAVsh6egeRBPu9p1OUqQ2pL5bPXzAZC02VzFTW3ogrUYBICj+M5pqeXvf5
 7Q//ZKqAhxKxZyARQ5KVUb282ZWlaLSTzY2i2I6YsDntFcm3mT6uo4nP1K/Ygb2Y9b52
 qqg5M4z93iVvIkZOJIBEsjnBTrQiAydy7+xBMlUdYSzOoeOvmz/bG62/ymv4B51f//DW
 3KlkCUkA5aAgvyzip4moIOrps1VbaV9zJ9cBQZZcdrDgId0jitK1XNJ1eOEDMM5y8cvU
 BnUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708279956; x=1708884756;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=b7pv4fVBRv/WCzNomVZws1J8gGnSIYaMsfGJePZwJi8=;
 b=aK+YZeSnavzgOuLnemIRqinfC7zU84Rt5Pc54XDEXhZi7cdzM7sj0RC9JR8a0M7sSa
 aqNxMgJ97g59xtjL//dgz7mSfovMmj+u31OmmopFZxmStTTbk/CyjhnUZd/CVb8L5LPR
 uSh9VR94yc+Lk1ZW55gcz4lAhJ92IvRy6huZDMXsj9OxHGe3FhIP/0mbUDuMUwznwPiM
 sVHJSjvTyTicULrW+mbP9gnetM+tNSWkwO5Jy03xAZWRVgc65MtcsEkEEWYZ3fCfOSGd
 d4ZYIF6kOrcxAuxNqPO5CfbOCdHC71CswG4b2362gxIUdIbGEXBgJhr2gzFWqoqbyXxb
 FBHA==
X-Gm-Message-State: AOJu0YwemWNAWduZexUz5nGnygxOUj7kt/FcgeBNKnq8eS6MHa4fktjX
 DH0Cpzej7nIrWjgpqvTl4vRtnbp3AaZFkODXf8jA9BO9v6ESzkZNVAhi0RhTApDNJ6plnln7Kag
 zVWmkKQA0+Oc9fD61G6+k8kjtpCPfapJgusU=
X-Google-Smtp-Source: AGHT+IHYai6lTurYb0eoC3dtWLktb5EOEaz142yzPW8gY2ifsrKEWaDDOMjcOIHzLGJ538BJaEpSEdXimHPKG//K/Oc=
X-Received: by 2002:a81:92cb:0:b0:607:eed3:510d with SMTP id
 j194-20020a8192cb000000b00607eed3510dmr8000951ywg.29.1708279955495; Sun, 18
 Feb 2024 10:12:35 -0800 (PST)
MIME-Version: 1.0
From: Bas S <schalbroeck@gmail.com>
Date: Sun, 18 Feb 2024 19:12:24 +0100
Message-ID: <CAAuj=_fEjHCsGYzdA20LvP_292oaTHEC4PE4uNFdWHE4UkBMJw@mail.gmail.com>
Subject: [PATCH] drm/i915/display: Allow tighter hblank span
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000ec9d950611abebcf"
X-Mailman-Approved-At: Mon, 19 Feb 2024 11:55:12 +0000
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

--000000000000ec9d950611abebcf
Content-Type: text/plain; charset="UTF-8"

I ran into an issue with the i915 driver not being able to drive a display
with this specific modeline:

[drm]] Modeline "1920x720": 60 120980 1920 1932 1936 1948 720 723 733 1035
0x48 0x9
[drm:drm_mode_prune_invalid [drm]] Not using 1920x720 mode: H_ILLEGAL

After some investigation I found that intel_mode_valid (and in newer
kernels, intel_cpu_transcoder_mode_valid) returns MODE_H_ILLEGAL due to
(htotal - hdisplay) being lower than 32.
The modeline in question indeed does not satisfy this constraint, as
HTOTAL(1948) - HDISPLAY(1920) equals 28.
Changing the driver code to allow for a hblank span of 28 pixels or lower
resulted in the driver successfully rendering to the display.
As such I propose this patch to allow for a tighter hblank span.

Nb: I am uncertain if the hblank span of 32 pixels has been chosen
deliberately and what the side-effects could be of lowering this value.
Any insights into this or alternative solutions would be very much
appreciated! I also considered introducing a kernel module parameter to
optionally loosen these mode constraints.

The referenced modeline is present in a line of ultrawide signage displays
and has been known to work on other graphics drivers/OSes.

Signed-off-by: Sebastiaan Schalbroeck <schalbroeck@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c
b/drivers/gpu/drm/i915/display/intel_display.c
index b10aad1..f6aba1d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7745,13 +7745,13 @@ enum drm_mode_status
intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
         */
        if (DISPLAY_VER(dev_priv) >= 5) {
                if (mode->hdisplay < 64 ||
-                   mode->htotal - mode->hdisplay < 32)
+                   mode->htotal - mode->hdisplay < 28)
                        return MODE_H_ILLEGAL;

                if (mode->vtotal - mode->vdisplay < 5)
                        return MODE_V_ILLEGAL;
        } else {
-               if (mode->htotal - mode->hdisplay < 32)
+               if (mode->htotal - mode->hdisplay < 28)
                        return MODE_H_ILLEGAL;

                if (mode->vtotal - mode->vdisplay < 3)

--
2.39.2

--000000000000ec9d950611abebcf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I ran into an issue with the i915 driver not being able to=
 drive a display with this specific modeline:<br><br>[drm]] Modeline &quot;=
1920x720&quot;: 60 120980 1920 1932 1936 1948 720 723 733 1035 0x48 0x9<br>=
[drm:drm_mode_prune_invalid [drm]] Not using 1920x720 mode: H_ILLEGAL<br><b=
r>After some investigation I found that intel_mode_valid (and in newer kern=
els, intel_cpu_transcoder_mode_valid) return<span class=3D"gmail_default" s=
tyle=3D"font-family:tahoma,sans-serif;color:rgb(68,68,68)">s </span>MODE_H_=
ILLEGAL due to (htotal - hdisplay) being lower than 32.<br>The modeline in =
question indeed does not satisfy this constraint, as HTOTAL(1948) - HDISPLA=
Y(1920) equals 28.<br>Changing the driver code to allow for a hblank span o=
f 28 pixels or lower resulted in the driver successfully rendering to the d=
isplay.<br>As such I propose this patch to allow for a tighter hblank span.=
<br><br>Nb: I am uncertain if the hblank span of 32 pixels has been chosen =
deliberately and what the side-effects could be of lowering this value.<br>=
Any insights into this or alternative solutions would be very much apprecia=
ted! I also considered introducing a kernel module parameter to optionally =
loosen these mode constraints.<br><br>The referenced modeline is present in=
 a line of ultrawide signage displays and has been known to work on other g=
raphics drivers/OSes.<br><br>Signed-off-by: Sebastiaan Schalbroeck &lt;<a h=
ref=3D"mailto:schalbroeck@gmail.com">schalbroeck@gmail.com</a>&gt;<br>---<b=
r>=C2=A0drivers/gpu/drm/i915/display/intel_display.c | 4 ++--<br>=C2=A01 fi=
le changed, 2 insertions(+), 2 deletions(-)<br><br>diff --git a/drivers/gpu=
/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_disp=
lay.c<br>index b10aad1..f6aba1d 100644<br>--- a/drivers/gpu/drm/i915/displa=
y/intel_display.c<br>+++ b/drivers/gpu/drm/i915/display/intel_display.c<br>=
@@ -7745,13 +7745,13 @@ enum drm_mode_status intel_cpu_transcoder_mode_vali=
d(struct drm_i915_private *de<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (DISPLAY_VER(dev_priv) &gt;=3D 5) {<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (mode-&gt;hdisplay =
&lt; 64 ||<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 mode-&gt;htotal - mode-&gt;hdisplay &lt; 32)<br>+ =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mode-&gt;htotal - mode-&gt;hdispl=
ay &lt; 28)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 return MODE_H_ILLEGAL;<br><br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (mode-&gt;vtotal - mode-&gt;vdisplay=
 &lt; 5)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 return MODE_V_ILLEGAL;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
} else {<br>- =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (mode-&gt=
;htotal - mode-&gt;hdisplay &lt; 32)<br>+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if (mode-&gt;htotal - mode-&gt;hdisplay &lt; 28)<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 return MODE_H_ILLEGAL;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if (mode-&gt;vtotal - mode-&gt;vdisplay &lt; 3)<br><br>--=
<br>2.39.2</div>

--000000000000ec9d950611abebcf--
