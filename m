Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE37A5233
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 10:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60B1899BB;
	Mon,  2 Sep 2019 08:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC55899BB
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 08:52:56 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id n6so821197uaq.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Sep 2019 01:52:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1EHyCo20aP+UVPxeIVF+9cGBIfgeLwUlhzWPYTmZ92Y=;
 b=VSJaJzykwSNJsEa0yfHmNiLkHu9DSXkDXzPTtkiTpbn5qI35saXXZgcggHmZ0FnAl+
 ScxufJ5QB4E6dtH+IGjcNJkOk/O1ZcrOiiEeX9QmlQ+pWmF8AqZ9Gd2OTX90X7wJqwpz
 7XHoCCqYsof/loEie3/2nFBgXTJuLAyST0lO8xlkYK5LixVeR4Uuy6Qs9cbwZCg1wc9E
 7ZaMjn3s0HT+TWDVvhfc7zU2mPCta6hA3MPfYBDHuNRTLR0w1pgJy2MMgicdTHtMf3Ps
 XwU4Peldl1ApIB4Umwuld/S3yvBHrWJy+SDvL4nuT/VOpqmEI2alUj6GRAOOqP8eU4LT
 7kng==
X-Gm-Message-State: APjAAAWOFmHQkpBn6AdhIUjCGMz2IbxJB6WS/qt4I3WcXmHvRToHV8KN
 TzqK8pZ5oJeTyx2W706c/8D6ObZ81zA8d3Df4ew=
X-Google-Smtp-Source: APXvYqwhg9dxtTAG/59M81fzHygJnr9xLPcV9MTFHAAJQG6ZGj/CyZ0iV4WhcTcXQV5njk9VIWIVFLlF9BBO4bqFiYE=
X-Received: by 2002:ab0:2658:: with SMTP id q24mr6712312uao.141.1567414375632; 
 Mon, 02 Sep 2019 01:52:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190902040303.14195-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 2 Sep 2019 09:52:29 +0100
Message-ID: <CAM0jSHNpmBV+VcFyGtNEPzOEbn57BA6Ut12XvELEEi4hi=Y=5A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=1EHyCo20aP+UVPxeIVF+9cGBIfgeLwUlhzWPYTmZ92Y=;
 b=usKZeYFkCHqRjXoYAyR/leaKDJxN6SOvDYomzScSRfHgamk4XpKVVjSrLbHB2rieS/
 qP6NWWy17yJTWQcVudPHevM4jlNV48EQRW30PgPIKtKOHgjeav73BADfs8FBvr+hsTws
 UavqRP14VsMenruZhMCvB7G9NKJQugRt7WSQJfawhlnrCKngh8Byd4gno9o4TyBoUDw6
 G3Hy8igH28IoJM5/4Jg060kwNi0t/4vT/97oFBXAsuWgz2z1mjyjW+ds0UsIdVVqLjMx
 URSQvDnfd487XTaPmvT/0P1iQMDlu6kAtdT/ZhrFUoRayTpQvWtus4noaWHqnnBSe/N1
 F7JA==
Subject: Re: [Intel-gfx] [PATCH 01/21] drm/i915: Restrict the aliasing-ppgtt
 to the size of the ggtt
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

T24gTW9uLCAyIFNlcCAyMDE5IGF0IDA1OjAzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBUaGUgYWxpYXNpbmctcHBndHQgaXMgbm90IGFsbG93ZWQg
dG8gYmUgc21hbGxlciB0aGFuIHRoZSBnZ3R0LCBub3IKPiBzaG91bGQgd2UgYWR2ZXJ0aXNlIGl0
IGFzIGJlaW5nIGFueSBiaWdnZXIsIG9yIGVsc2Ugd2UgbWF5IGdldCBzdWVkIGZvcgo+IGZhbHNl
IGFkdmVydGlzZW1lbnQuCj4KPiBUZXN0Y2FzZTogaWd0L2dlbV9leGVjX2JpZwo+IEZpeGVzOiAw
YjcxOGJhMWU4ODQgKCJkcm0vaTkxNS9ndHQ6IERvd25ncmFkZSBDaGVycnl2aWV3IGJhY2sgdG8g
YWxpYXNpbmctcHBndHQiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
