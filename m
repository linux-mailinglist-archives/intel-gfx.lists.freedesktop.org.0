Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 746E5E70EA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 13:05:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1C06E611;
	Mon, 28 Oct 2019 12:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 731F76E611
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 12:05:04 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id s130so2256563vsc.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 05:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=paDXiaTRK6oS3lYYlaHJN9SR5NVRqs2wmANTNN3kj44=;
 b=IrDy3ibYnsK55kbdyd4bIDJDF8j5QX/Awp12ZNvc6n063GwyCpw97/1IfvgUnIZ46z
 e3PgOqj/CUbAypXmcIAcCwjAbAthh+EDjVIwUnN6/YqSPMpBExxSSJkeRCiheF0nDHO+
 X6qyhU0isrnyvHd18wDmH4sCeKTuznPtJbzGB8IJQX4CHS6+NpqGd3TIQJUdeWTfok5U
 nTvnnizPo7d00EhOgwfoo6W4bKYhh8pe76pinY1l40HabAiwjVDRoovIfNpXiiElj8MH
 Ff78SS4371xs/jXPRYukiyAsqb9osU0vkp0MtTB7vHdsX4wrea5sQY17JxKB3Ndja5JD
 vDKQ==
X-Gm-Message-State: APjAAAX4q54+kEcBo0QWoYc57JbbqnYcsiY7D4k7bG1u0ks2IrtZ9ew8
 9lMw8xwaTaYzkgLJJ2IHzT+49kARjgOKTIHEyX0=
X-Google-Smtp-Source: APXvYqwNyHbkepRvwNrbtpef41WZY7twIsB0gY92p1JX8jdS4U+rVqbiuDVJbgzdoffTYlMIx0Wz5gB36L/JNhXJvVg=
X-Received: by 2002:a67:b648:: with SMTP id e8mr8868243vsm.164.1572264303297; 
 Mon, 28 Oct 2019 05:05:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191027225808.19437-1-chris@chris-wilson.co.uk>
 <20191027225808.19437-2-chris@chris-wilson.co.uk>
In-Reply-To: <20191027225808.19437-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 28 Oct 2019 12:04:35 +0000
Message-ID: <CAM0jSHOLbJYpjKC5R+4+YA6-=W99-pTU=UxrO+iP+jaiGEWa5Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=paDXiaTRK6oS3lYYlaHJN9SR5NVRqs2wmANTNN3kj44=;
 b=Ktz3/0gJ9fJP2I0rDXkyCumWnhUa3BINF+AoPXk0vhTlbavVFKPv9PMAGEiO8Qq7W9
 1oI1Uag0uJLCMb4qKGL8Il1aYWOv3cvID8o/MI60NYhGLAgNKKaBbB8fMOneQCRWdmtT
 NUORRVEYmIP3Y1ns6DxJDJgItyW+qPaQItlrOj0FB/ej7A/FXLl4K2ia5kJq3d/ijSxW
 ixsRX/N5OBFcGj1KQBlA8t7pmKu6Epx9GYkv+5XZLCBi2/1Kgguzf/4K4DvZiGTWS3we
 xLQTDx13wHMRvzIuyLKwsvYw0GIsI/dgvvs+e8nJNc1sFZ4hXqbH2qCztd3Q3qHSkxZH
 A7iw==
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/selftests: Exercise adjusting
 rpcs over all render-class engines
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAyNyBPY3QgMjAxOSBhdCAyMjo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gSXRlcmF0ZSBvdmVyIGFsbCB1c2VyLWFjY2Vzc2libGUg
cmVuZGVyIGVuZ2luZXMgd2hlbiBjaGVja2luZyB3aGV0aGVyCj4gdGhleSBjYW4gYmUgYWRqdXN0
ZWQgZm9yIHNzZXUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
