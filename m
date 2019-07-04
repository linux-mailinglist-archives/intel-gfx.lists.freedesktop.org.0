Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89175FDF5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 22:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02DA96E2D0;
	Thu,  4 Jul 2019 20:54:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A836E6E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 20:54:10 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id v6so2574405vsq.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jul 2019 13:54:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/UW6le3tuRdm9M7Tv4O+YEYnhsSUhjH+nkliz+eorQw=;
 b=cAnewHMHiaSBropXgkvmuqcCpl+z2W1uCCfAMZbhcja++al16F9T/6GTZndeRlgAAK
 Vwe6ApaFbdQm09DAq42gQHckewYRdxSC3pHnQ7ygFJ9vEX3VyMOcaG6XEacnejDdkxfJ
 SrD5yVcuouRj8jJsLzGAkcD5/f8atCIEdeRKIQoWJlfx8nDGjMl8l/MI7bcMQYc1Ev71
 0S9SVxKl5l9CzFAyX4UQMiB62nXfvUqvbxhPI5Z6IrywUcvDV2OeJWereun5gLfMIfzX
 QyoLYmMXDH4RAJaS9hGOOnIlqCqQ3Sd5wtY45m56g8GgpdtAy2wrcpu/tL4ceNNRSzGG
 A7sw==
X-Gm-Message-State: APjAAAWW7/omjRviUCewuSqH3PtxqRtTL2hqJ9DtVMIfaT+8qwzvapRA
 L72jMRQH8ZCZKCpi0wMLrlLngPRLaaw9//vZFAQ9ii7Y
X-Google-Smtp-Source: APXvYqwzdrIi17ZCewbqzi6lpk9Uj13AHHPj/PRHlw+9gwhey2oakiSAxCHA+p+CvmJRv7gc6BOtU1A8j5YS8+uppbs=
X-Received: by 2002:a67:eb12:: with SMTP id a18mr97697vso.119.1562273649883;
 Thu, 04 Jul 2019 13:54:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190704165317.21060-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190704165317.21060-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jul 2019 21:53:43 +0100
Message-ID: <CAM0jSHNauW3afNPf+pZVaEY1jfLbrOSoy9K2FDHs8sERjouWdg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=/UW6le3tuRdm9M7Tv4O+YEYnhsSUhjH+nkliz+eorQw=;
 b=G2WBlEiz3KqmWTUhlWJfkYvP0NIPHlI85IElUKKKK7JPWvF3Gy2dAU6zhKA0LvCC95
 y+ViH/druXoJhwkRT/PECkl5DF+JKv/o0q1A3AsnWWTZb/Kj86P6UUk/eCIHFpCCLF4F
 6YhB3u/kkLeWxdPZvFa6vBGog+I+GNJSfDSb6D/EsQQq9ztt0AEbwWXgfWp+/vI9fTqz
 2Ywz1Mj3S9RJmdGr8g6HApGy6QeSdcIMYXPGyBq4nFnvwr/pUgnjKT7/pK98w2v4ffH3
 aUmbFQ6EGOUiFpXVmBTiwN7GWMOuaA7j2fZsttN+96zU88+lR48UACmq6pEF8kxysZrC
 8Vkg==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Drain the freedlists
 between exec passes
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCA0IEp1bCAyMDE5IGF0IDE3OjUzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBEdXJpbmcgdGhlIGNvbnRleHQgZXhlY3V0aW9uIHRlc3Rz
LCB3ZSBpc3N1ZSBhIGxvdCBvZiB3b3JrIGFuZCBkaXNjYXJkIGEKPiBsb3Qgb2Ygb2JqZWN0cyB3
aXRob3V0IHJlbGVhc2luZyB0aGUgbG9jayBhbmQgYWxsb3dpbmcgdGhlIGJhY2tncm91bmQKPiBy
ZWFwZXIgdG8gZnJlZSB0aG9zZSBvYmplY3RzLiBJbnNlcnQgYSBzbWFsbCBicmVhayBiZXR3ZWVu
IGVhY2ggcGFzcyB0bwo+IGZsdXNoIHRoZSB3b3JrZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
