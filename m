Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AC733A4DF
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Mar 2021 13:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 120606E32F;
	Sun, 14 Mar 2021 12:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBBD46E32F
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Mar 2021 12:49:02 +0000 (UTC)
Received: by mail-qv1-xf36.google.com with SMTP id by2so6523875qvb.11
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 Mar 2021 05:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=mm2pDUcPQI3vYgNih/nfQzmVaJ6+8vjYRD2dtPrRyLE=;
 b=Ix0MG2KEifJrMuEyfrmbUjlAB3ZlCZ2ozvLjzVEiK7sGVF6bNM8EssbiNJ/rDPfEda
 E9eew7Mcuye6nKzzb41z9dLEpX2pFlol6ddOPzAXteRmNVs+rG9hixA5qXyhY1LQRaEM
 nS/EzhiEL93oQxQoQ68BOP/AlZ7+eMnzziNDrw31adbWLxE5q4GkNPsOYHbXN3Pb0Bcl
 W/QIPvtBFwJpROwhYj3iBMEGdV4bjNqQOGzmtsvpzQSmSsVKkb9Twr0R4oTkry9heBuc
 vBUHxhj0o5BERoso/BjpECaO0qyqeQpSCA80g0BH8qzPs9xWUcj+zko8dxGXUxVH7oym
 tQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mm2pDUcPQI3vYgNih/nfQzmVaJ6+8vjYRD2dtPrRyLE=;
 b=GE796golcGox2Jz6TBRrB2kMEfF2ur9w9wwTxLIMqHSRqqhkxlYAJbwrwGP8FMbVad
 zWntssl7I0IXEtVSzJOpTWdpksLHqVGFtZKie/1765iTXvAbF8ml+pft10lCg/6llvyx
 Lwwjycmny+3PrcaJjclD2XdOZ3CBOsYXAmJwMZPlIhsWGzJxC1rG9DItnAbVFbOknuKC
 dfYG/6WDDZY1RBCtJmVTDq4REO4jDpssUEGoRRPTAlqdf9ZEjhSGk1uob8+HUB6k24Bq
 GdJ65zu28OuXc5ZfsA2KChirGhfmRYAhqqJOV762gcSxoFI7vm6zWk2B2wE8FdHXZQ3Z
 +Hyw==
X-Gm-Message-State: AOAM532Le/3HRyw4X4fSgOLBm0pNSJcwTE/JpKIYQlTRn6tvW/rJ5kGE
 AYW4c0/XjAisXaBVuDWLV4JcJk1EZ9lOpzzT+27p1fdrv2nHRg==
X-Google-Smtp-Source: ABdhPJxxWtU7GjqT9R7ouwwnTaGM7lJlv7kD/nA3Z/H6Cwm9vnIhAckZ7HaAx2gjTvbEJJ6R3YKzGsxb/N/DiiIzs/0=
X-Received: by 2002:a0c:8ec7:: with SMTP id y7mr6352056qvb.9.1615726141725;
 Sun, 14 Mar 2021 05:49:01 -0700 (PDT)
MIME-Version: 1.0
From: Ed Ceaser <ceasere@gmail.com>
Date: Sun, 14 Mar 2021 08:48:50 -0400
Message-ID: <CAP_6--tUX=-xC1cNu2U89LqpzowkwE_gc4mwfyTNVHUk9373nA@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] Debugging an i915 DP link training timing issue
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
Content-Type: multipart/mixed; boundary="===============1019316118=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1019316118==
Content-Type: multipart/alternative; boundary="000000000000bb5eb405bd7e8eb5"

--000000000000bb5eb405bd7e8eb5
Content-Type: text/plain; charset="UTF-8"

Hi all,

tl;dr: I've discovered what appears to be some kind of timing issue with DP
link training on new hardware. I applied a hacky fix locally, but I need
help with coming up with a real fix that we can actually use.

I recently got a new laptop, a Thinkpad X1 Extreme Gen 3, with an OLED
display. I've been trying to debug inconsistent behavior during resume
where the display would not power on the majority of the time.

This is all the first time I've ever worked with this stuff, so I have no
idea what I'm really doing and so anything I say here might be wrong. When
comparing logs between a good and bad resume, I noticed the following:

* Failed resumes would result in "Max Voltage Swing reached", and "Link
Training failed".
* Successful and failed resumes would have the exact same behavior
regarding link training in the logs, right up until the end, where for a
bad resume. we'd read the following register state:
   [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A: 0x00202 AUX
-> (ret= 6) 00 00 00 00 22 22

  and a good resume:
  [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A: 0x00202 AUX ->
(ret=  6) 77 77 81 01 22 22

This led me to think that there's some kind of timing issue here where
we're reading the register before it's fully populated. To test that, I
added an additional 20ms sleep to intel_dp_link_training_clock_recovery
right after the call to intel_dp_link_training_clock_recovery_delay. I
attached the hack patch to the issue I filed tracking this:
https://gitlab.freedesktop.org/drm/intel/-/issues/3173

Since applying that patch, everything has been working perfectly. So now
I'd love to figure out how to get this into a real fix, but I don't really
know what to propose beyond my current hack of "wait longer".

Thanks in advance for any assistance!

--000000000000bb5eb405bd7e8eb5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>tl;dr: I&#39;ve disc=
overed what appears to be some kind of timing issue with DP link training o=
n new hardware. I applied a hacky fix locally, but I need help with coming =
up with a real fix that we can actually use. </div><div><br></div><div>I re=
cently got a new laptop, a Thinkpad X1 Extreme Gen 3, with an OLED display.=
 I&#39;ve been trying to debug inconsistent behavior during resume where th=
e display would not power on the majority of the time.</div><div><br></div>=
<div>This is all the first time I&#39;ve ever worked with this stuff, so I =
have no idea what I&#39;m really doing and so anything I say here might be =
wrong. When comparing logs between a good and bad resume, I noticed the fol=
lowing:</div><div><br></div><div>* Failed resumes would result in &quot;Max=
 Voltage Swing reached&quot;, and &quot;Link Training failed&quot;.</div><d=
iv>* Successful and failed resumes would have the exact same behavior regar=
ding link training in the logs, right up until the end, where for a bad res=
ume. we&#39;d read the following register state:</div><div>=C2=A0=C2=A0 [dr=
m:drm_dp_dpcd_read [drm_kms_helper]] AUX A/DDI A/PHY A: 0x00202 AUX -&gt; (=
ret=3D  6) 00 00 00 00 22 22</div><div>=C2=A0 <br></div><div>=C2=A0 and a g=
ood resume:</div><div>=C2=A0 [drm:drm_dp_dpcd_read [drm_kms_helper]] AUX A/=
DDI A/PHY A: 0x00202 AUX -&gt; (ret=3D =C2=A06) 77 77 81 01 22 22</div><div=
><br></div><div>This led me to think that there&#39;s some kind of timing i=
ssue here where we&#39;re reading the register before it&#39;s fully popula=
ted. To test that, I added an additional 20ms sleep to intel_dp_link_traini=
ng_clock_recovery right after the call to intel_dp_link_training_clock_reco=
very_delay. I attached the hack patch to the issue I filed tracking this: <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/-/issues/3173">https://g=
itlab.freedesktop.org/drm/intel/-/issues/3173</a></div><div><br></div><div>=
Since applying that patch, everything has been working perfectly. So now I&=
#39;d love to figure out how to get this into a real fix, but I don&#39;t r=
eally know what to propose beyond my current hack of &quot;wait longer&quot=
;.</div><div><br></div><div>Thanks in advance for any assistance!<br></div>=
<div>=C2=A0=C2=A0 <br></div></div>

--000000000000bb5eb405bd7e8eb5--

--===============1019316118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1019316118==--
