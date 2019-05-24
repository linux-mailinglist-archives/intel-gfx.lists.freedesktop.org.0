Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAE729AD6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 17:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC3336E110;
	Fri, 24 May 2019 15:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com
 [IPv6:2a00:1450:4864:20::142])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AC1E6E110
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 15:18:55 +0000 (UTC)
Received: by mail-lf1-x142.google.com with SMTP id m15so6830947lfh.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:18:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QzcM5WKlqjtTdXvmPOW95KVE54MK4zK3MayIFic6yMw=;
 b=cksnV8T4v2M250hbnv0dYcOqT1A4RGbVc49Yp2WwFW3qYpQx6BaIDZVlK/XwK2R3I0
 XyytN+vpz5ybfsgT4UD5ozJPLidQdPfwNgpfzNV0znjgqsABxa4IFq15Loguv/GLMEPb
 +qYR0Oj3QFq+p87UORD1+p68tDdN8kM9xKsCGfDlRpCHXfb4TbuC2QgOmJwlOL+TyCmq
 sGymgcmmg6VLxIfn8Y2VyR0qxM1k3aDL3Hy3i2BYLyCsG7IixniKC6t+F2QYu1+Se2UN
 9rmC5Z+EMZZ+seXHcmHPbmRC+n6dxbPfes6RdiLSy1exIZra3o8IHu33PCE918wu+mdc
 VX+A==
X-Gm-Message-State: APjAAAUUj7MTSmy1BCzuKQIjReMTATqCPT9mFEVSXJ6yPaMh795ksd2g
 Q9bBj8pbOLbFqQqqzRb7YeflhpBEjwB+wjNw6SYIbA==
X-Google-Smtp-Source: APXvYqzsgeeE7oVylupuDBnFXAvj0zNcJPX/tK2hORH9uLCiVa+rckBLz/gWebaW/dyxxER9AEdRbNM9J9KVFn90dcg=
X-Received: by 2002:ac2:48ad:: with SMTP id u13mr22186667lfg.60.1558711133026; 
 Fri, 24 May 2019 08:18:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190523134413.4210-1-noralf@tronnes.org>
 <20190523165320.GA7770@ravnborg.org>
In-Reply-To: <20190523165320.GA7770@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 May 2019 17:18:40 +0200
Message-ID: <CACRpkda+RJxkHbwsMdF+NQ159WKp3_w8TDEDnNRrcPxwkr=QbA@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=QzcM5WKlqjtTdXvmPOW95KVE54MK4zK3MayIFic6yMw=;
 b=Gzaxc8Ul+rnu2jU/F3pxfL9MhVwoNKQhu03qWYYrv3LDVXC0lV08cf47W8LPPO/K6z
 fV4vAzXNzXMFLkyefDhM430KsFcAPp6yb0R+SIu4IyGywtO6RUxOzDhI16mBQwhphYyL
 MuQ6Sh08JGoIcr8HbNiglgRWRWuXvejbSxZFOgefqKLJPdcOq5zLbTf21VjJy78AhK/H
 JoSz5OINpkJuEgLBHKvtVmlqclzEsR7qdHcjh6OvmO+wkDvft9KtrVkzOT6+8Qm13gVM
 fQDpNu01FBenoDH4cVJ+Whi10X8DBZjDaznCyP1BCze/4e/pnuW3McUpS19hBX8yZNMW
 4p4Q==
Subject: Re: [Intel-gfx] [PATCH v6 0/8] drm/fb-helper: Move modesetting code
 to drm_client
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Gerd Hoffmann <kraxel@redhat.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgNjo1MyBQTSBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9y
Zy5vcmc+IHdyb3RlOgoKPiBDb3VsZCBvbmUgb2YgeW91IHRha2UgYSBsb29rIGF0IHRoaXMgc2Vy
aWVzLgo+IERhbmllbCBhbHJlYWR5IGFjaydlZCB0aGUgc2VyaWVzIG9uIGlyYywgYnV0IGFuIGV4
dHJhIHBhaXIgb2YgZXllcwo+IGlzIG5ldmVyIGJhZC4KCkkgd291bGQgaWYgSSBoYWQgYSBjaGFu
Y2Ugb2YgdW5kZXJzdGFuZGluZyB0aGVtLiBJIGFtIHN0aWxsIHByZXR0eQpub3ZpY2Ugd2l0aCBE
Uk0gc28gd2hhdCBJIGRvIGlzIHRyYWNlIGRvd24gdG8gdGhlIGNhbGxzIEkKbmVlZCBhbmQgdW5k
ZXJzdGFuZCB0aGUgc21hbGwgcGllY2VzIEkgdXNlLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
