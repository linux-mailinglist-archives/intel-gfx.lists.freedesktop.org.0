Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKNJAGpkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2D92F76CD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30CC010E522;
	Mon, 23 Mar 2026 16:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=rthansen-dk.20230601.gappssmtp.com header.i=@rthansen-dk.20230601.gappssmtp.com header.b="R7v7A78w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2ED110EA08
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2026 12:54:06 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id
 4fb4d7f45d1cf-661cfb9f3aaso764369a12.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2026 05:54:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773924845; cv=none;
 d=google.com; s=arc-20240605;
 b=ggGR+sGnmKavN3NHexvJzBnaG2m2mTl5Brt99vEV1OVGMvqUlzm1VOAA7qdRByVK0+
 LPYJr2+iZVcR+/dgGySPnj0zof8JjwJ0eWG9A2jSvLogI4Am4ThtaPAuX22MK6/29l/2
 UOYLxOBoEdlgUaYS88jW5YA1k1PWx8RUIShdlwZRKpRc/oSabIltW22wuxyT65kXyna9
 hupjxqDMR2xT8+/A4hF4Qt0+x4SXO1FA+TgbXXdiRB111IqwhswlsaXrJAKnfpfLXJw+
 LLp3g0HLcMG2EyLZqHywcDdcdzi6HaktjvZd/XKo4T/73LXSSn4NA/tyjttWVDb0mvct
 17pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=to:subject:message-id:date:from:mime-version:dkim-signature;
 bh=DLiCkrz7AHfNi0GfKLlB1iit8LOHyJ6r6tfRz4m72Wc=;
 fh=0mq9d1JUrcYsoTTkGHiTtQVhfUtVmM5T3dWmSoFUk5Y=;
 b=N2FSItCqEiJI0fJr+19cSp5tly/gK6wGOWXz+47eX8f/8xB7vmqVlSWGmVYG0u6rPl
 7WA6W5A40v9+ySMCta7+OGW4VF30wOJtJ+JFc+YImBl0y9VsghvDs4dmQKqJpbp/Sj7P
 QnQuSM0oGyUo9DxqFA6nRdVsp8jZFf7iaRM4iK3EE4fwGfWkgIgqbVb99CDCokFJZkDP
 LWRy8/B/5o2guYwlOjLvRWXHZatzT1pCYMSbofIwex6D2YERtPD75uC99kqemSEkmFp6
 0SX8C0nYV+3IWUSGyc3g1h+jiwgQV7yUvkyexgRVNFZxGx8u9Lz+VeA7+w0GlB9meura
 DWCw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rthansen-dk.20230601.gappssmtp.com; s=20230601; t=1773924845; x=1774529645;
 darn=lists.freedesktop.org; 
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=DLiCkrz7AHfNi0GfKLlB1iit8LOHyJ6r6tfRz4m72Wc=;
 b=R7v7A78wyBHQE91qvX8l2EEyFigBdbLHCB09HwrUKm58ox7PZrNn3NybXMl+1CM6JE
 6NrW2NqHBPpXcAVPzDJU+nHIe72UUFRO3cL9sjdahGMR5C8/kKz23yG+JMLv+T1OSlpJ
 ZmYF9dnhCRUZesHqSfvjcwizQTrKf7jD5TIGnDx8VnNujqy/6ZwizXpbaYclw+EFZYKk
 J4JcD2vY7L7w/JsIBQBbPKbTrymMd+hOM18jCJa6d8/ectUui3UQUxzt0Rvj4DNahhLU
 1FoCmMTVrpKyE8ZyilvaRzSXefmjNAKj34cT+Plueoi7xg+6TlXN+rGRClikQwSjLCvk
 MUJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773924845; x=1774529645;
 h=to:subject:message-id:date:from:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=DLiCkrz7AHfNi0GfKLlB1iit8LOHyJ6r6tfRz4m72Wc=;
 b=fDB6f6Vf9TRk88MN7v7qsezn3+Ghwlje4SBJeQUjDUyhTxYTVYQqN8UolMqAiEbgmI
 yXHgqoA6kMmVHYd0lfV6zWir5g1wzTR5/tCI6TqTJ/fVqZQaANhD6ChfJ8rqZ0niQ7qg
 CznH1KfqKt/L0tvg5OQK4wizpDnaGCE7++ZVyjSpIKWP/pHCs2dNpG3c/27GdyHG5ESj
 goAh8t1B1jduQtCGvimKPsGpFHiicCtug6F6+5eQhpDI0awhQJ4JBbPXCa8bG9qJ5Q5i
 iJafic/cLZqW0JDuWfZETLhD8mg6cvDFihCg3IUTrVWMEUJkFfncsjiS110HQcZuPRTa
 MD9A==
X-Gm-Message-State: AOJu0YwVJ5jTq/5vrAIphQGZjk5+FAAupHXzKA7o08fD29ihfin+BXfy
 JQ05CIdwLJKWPpi+yOx4V+aJIazdpt7Q2duU0H1Xfl3cfuaTQw4i8W21yd1OlvkIcYe/k8+nuNP
 dhwHDia2sXWRTF9g6T5OjwECaLjAgyXWEorCTFrL3M4TwLSXokxVxzYs=
X-Gm-Gg: ATEYQzxlyeOpvsdiDNz2fTyS/qM3aVVahPvyPD+p2E7em7R6C2HPyCWWHHmuAEqs4hm
 JUQ33I8su7AROsTknsKv+kw54oPH2yBd/FnI8n+fiJsDP8/ja9sh5Fv9LenWEUFuNScLtyNbLbO
 xGZjCJlqLW/DLc0HPqSktJgllNW/MzJpVTUn4yO3CMR7VawpQlOWmjVKMy4ybAdRPJccK3a6h+Q
 TDKez32Il4Jwk1ixxea6u4eIrsoGxgIKraViTViCtfvCifesUhHR46tt5csVRJBhwjHEPUj3sBu
 2d6t7JzoKMjKJVWJ7Eiq0iei0dhYHxXrjc2DrEaE/49IUzQCLP+QPgwbOfnmmPi3mOBg2Q==
X-Received: by 2002:a05:6402:2746:b0:660:475:9403 with SMTP id
 4fb4d7f45d1cf-667b2c197d8mr4745999a12.29.1773924844564; Thu, 19 Mar 2026
 05:54:04 -0700 (PDT)
MIME-Version: 1.0
From: Kim Hansen <kim@rthansen.dk>
Date: Thu, 19 Mar 2026 13:53:38 +0100
X-Gm-Features: AaiRm51YVIJ0992DrSPLmbo49io34ai-IdKTOWLfakSly1u11keAqe2ma9ZaaEk
Message-ID: <CAEGYRW4jQd=D99NZVYsH8yg1g5zGq=Y2959Jwsw_wtSen2ydjA@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm: Schedule the HPD poll work on the
 system unbound workqueue
To: intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000380162064d60100e"
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
X-Spamd-Result: default: False [0.19 / 15.00];
	DATE_IN_PAST(1.00)[99];
	FAKE_REPLY(1.00)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[rthansen-dk.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[rthansen.dk];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kim@rthansen.dk,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[rthansen-dk.20230601.gappssmtp.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2B2D92F76CD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--000000000000380162064d60100e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It seems I am still having this issue, I had ghostty and Slack freezing on
me the other day, and Claude pointed to this issue as the root cause.

The reason it pointed to i915 was lines like this in dmesg:

Mar 19 01:32:41 aleph kernel: workqueue: i915_hpd_poll_init_work [i915]
hogged CPU for >10000us 2051 times, consider switching to WQ_UNBOUND

Hardware: Intel CometLake-U GT2 UHD Graphics (i915), kernel
6.17.0-109014-tuxedo, Wayland/GNOME/Mutter session, triggered by docking
station hot-swap.

I have recompiled the module with the following patch and now the warnings
don't show up in my logs when I attach/detach my docking station.

--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -262,7 +262,7 @@
              goto cleanup_wq_flip;
      }

-     display->wq.unordered =3D alloc_workqueue("display_unordered", 0, 0);
+     display->wq.unordered =3D alloc_workqueue("display_unordered",
WQ_UNBOUND, 0);
      if (!display->wq.unordered) {
              ret =3D -ENOMEM;
              goto cleanup_wq_cleanup;

Can this fix be merged as is, or should I do other testing?

Kind regards,
Kim Hansen

--=20
Kim Rydhof Thor Hansen
Rylev=C3=A6nget 22
2880 Bagsv=C3=A6rd
Phone: +45 3091 2437

--000000000000380162064d60100e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It seems I am still having this issue, I had ghostty =
and Slack freezing on me the other day, and Claude pointed to this issue as=
 the root cause.<br><br>The reason it pointed to i915 was lines like this i=
n dmesg:<br><br>Mar 19 01:32:41 aleph kernel: workqueue: i915_hpd_poll_init=
_work [i915] hogged CPU for &gt;10000us 2051 times, consider switching to W=
Q_UNBOUND<br><br>Hardware: Intel CometLake-U GT2 UHD Graphics (i915), kerne=
l 6.17.0-109014-tuxedo, Wayland/GNOME/Mutter session, triggered by docking =
station hot-swap.<br><br>I have recompiled the module with the following pa=
tch and now the warnings don&#39;t show up in my logs when I attach/detach =
my docking station.<br><br>--- a/drivers/gpu/drm/i915/display/intel_display=
_driver.c<br>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c<br>@=
@ -262,7 +262,7 @@<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto=
 cleanup_wq_flip;<br>=C2=A0 =C2=A0 =C2=A0 }<br><br>- =C2=A0 =C2=A0 display-=
&gt;wq.unordered =3D alloc_workqueue(&quot;display_unordered&quot;, 0, 0);<=
br>+ =C2=A0 =C2=A0 display-&gt;wq.unordered =3D alloc_workqueue(&quot;displ=
ay_unordered&quot;, WQ_UNBOUND, 0);<br>=C2=A0 =C2=A0 =C2=A0 if (!display-&g=
t;wq.unordered) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =
=3D -ENOMEM;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto clean=
up_wq_cleanup;<br><br>Can this fix be merged as is, or should I do other te=
sting?<br><br>Kind regards,<br>Kim Hansen</div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Kim Rydh=
of Thor Hansen<br>Rylev=C3=A6nget 22<br>2880 Bagsv=C3=A6rd<br>Phone: +45 30=
91 2437</div></div></div></div>

--000000000000380162064d60100e--
