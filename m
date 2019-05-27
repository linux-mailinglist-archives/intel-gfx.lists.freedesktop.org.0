Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 237612B114
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 11:11:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01788898E1;
	Mon, 27 May 2019 09:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64519898E1
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 09:11:31 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id y13so11491890lfh.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 02:11:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zj68fBdRHao5G5zcL9lG64lMIDMZR/Y47okWTMQrwxc=;
 b=meqbA+nsYeD6jNSG0iEZ4+os6UtFw1qtIaeKqoNPBVrlT0Eh8Bl1g+0sc8nDHgsvf+
 kc1x2rdUxKRsWpr6lJDI3qalBy48wBtsKbgnHJoXKi6K29hgbFrm3qjwzsZNfnXzm1B0
 8L0GD1cZNoQBFSxTOIodS/Y6qRsZM8dlbn5uiLydPXQJasYXFir93gJ2wNUXTF2u/rHo
 rX8bsmngUBU2KzW2lxwHVsUKOYDqMiy42TEMurVzaxf5i0JH+EmiZ+bJwWGvN3vqgN2O
 sme7mkHe6NqDZ5wBA96S+unCTkRN2d/kTlZPWVlfeqGsyShH1Yk6/7haKpYk1wOvlCtg
 o+MA==
X-Gm-Message-State: APjAAAVqkjQQN9ipEGgwFtXcB+ceRTF0AZvJ6CWFjjPS+KrAhILbZlq5
 WfMhOZYLqc2tdwS5JpQN4tp/MBOi2ZTtLllbW1D0aQ==
X-Google-Smtp-Source: APXvYqxQHZXz0go4fRaQolYeCU2tB1KIJuYdLxiFsoUoNYgEeKt1RidJIe5nrGMzmnSP3EpwyC3XkXWzGSRVswA9hLg=
X-Received: by 2002:a19:c312:: with SMTP id t18mr37345199lff.165.1558948289787; 
 Mon, 27 May 2019 02:11:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190526180532.1641-1-sam@ravnborg.org>
 <20190526180532.1641-3-sam@ravnborg.org>
In-Reply-To: <20190526180532.1641-3-sam@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 May 2019 11:11:18 +0200
Message-ID: <CACRpkdYtuR4zGFUfQ0rGbxUjgDtGRwvogtyBjMbf31-ZjRonLQ@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Zj68fBdRHao5G5zcL9lG64lMIDMZR/Y47okWTMQrwxc=;
 b=XzeO7O/RxNBA2jvj+tWaBqDkStugWtmtuHwbEzaCa+3RNABQa5js+lVupjLWa/4HHJ
 ZmXe5eNBcOVT6DtR7aYYKbPKphK2FbgnSfO/ut+hE2L7tyev48bD/CzFs2gJfwCpwVMG
 71iIg7t83w4dIi6eFaM+0NOdnn+YQNMLs91JaiXfYfNC3p8l/PZHXC7RePPpzXybJZpF
 osoMdfJZE1SPKY0k0RZQdALd206sIpnto5ZtVuNQmsxmqlvauDe3hrX2Q0eIkg7nyDYr
 ggT5Epi61WpqrgOSdsSWLhTR3rMQF/a6kIduO/Mge4I5bwoZLAzmHsQ5ufNTbdlsh9bR
 duZQ==
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/panel: drop drmP.h usage
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
Cc: Stefan Mavrodiev <stefan@olimex.com>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCBNYXkgMjYsIDIwMTkgYXQgODowNSBQTSBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+IHdyb3RlOgoKPiBEcm9wIHVzZSBvZiB0aGUgZGVwcmVjYXRlZCBkcm1QLmggaGVhZGVy
IGZpbGUuCj4KPiBXaGlsZSB0b3VjaGluZyB0aGUgbGlzdCBvZiBpbmNsdWRlIGZpbGVzOgo+IC0g
RGl2aWRlIGluY2x1ZGUgZmlsZXMgaW4gYmxvY2tzIG9mIGxpbnV4LyogdmlkZW8vKiBkcm0vKiBl
dGMuCj4gICBCZSBjb25zaXN0ZW50IGluIHRoZSBvcmRlciBvZiB0aGUgYmxvY2tzCj4gLSBTb3J0
IGluZGl2aWR1YWwgYmxvY2tzIG9mIGluY2x1ZGUgZmlsZXMKPgo+IFNpZ25lZC1vZmYtYnk6IFNh
bSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPiBDYzogVGhpZXJyeSBSZWRpbmcgPHRoaWVy
cnkucmVkaW5nQGdtYWlsLmNvbT4KPiBDYzogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVpakBs
aW5hcm8ub3JnPgo+IENjOiBTdGVmYW4gTWF2cm9kaWV2IDxzdGVmYW5Ab2xpbWV4LmNvbT4KPiBD
YzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+CgpSZXZpZXdlZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVp
akBsaW5hcm8ub3JnPgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
