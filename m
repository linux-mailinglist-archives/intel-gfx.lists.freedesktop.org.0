Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD21B7EEA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BF446F521;
	Thu, 19 Sep 2019 16:18:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860CE6F527
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:18:19 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id c10so3582657otd.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 09:18:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2+Qc3er0PNIh9YDh6El0ujTAhlxPF7nV8Lguw93UyMQ=;
 b=nDZWHwiksn33LHcuWK0mFfFFbO4ObQ0bn4xpBD6+85lGBUDC4G3pY69LmG6E5PDf1m
 fmNbpQ0l69dQZqXlglsktCu1VBG2PpWe0I+um4rvJyDVx82MZUlZqWYWhMn6lMgmd5lh
 lQz8yBoO1Up5FBfjfpzYODnmMbrP0m2ehaIRohmQYSGGpzwE5+4hoVVXmkS4aS08apaV
 WKxTjXTmacPxmzyJk6Zp+XjAYSzCW2YhA6dEXuZ1/uYv+SCUTskQaccs+7gJzT1Ea6ZJ
 gubXkWgxG6YV1H2MQl3XZaLB7l/WWl6nIBYuY/GUALll9QM6ha3z+DWgORz6Y+WJGfrd
 pEyw==
X-Gm-Message-State: APjAAAWULc3ThBoYDdQKqN/04P6tYeU3komJotJVAJntYzlCAHpdBySp
 HB6LRWUPQAkYILv2Hj4pmo4mfxAofQLiErfMrqvvkjw1
X-Google-Smtp-Source: APXvYqwHqcMUV5TD+70OwHedJLvCDx7X7euivgxCBeIvJoOIiOiSDD8F6wDEz6rGp299F1u9KaKBB4H378/AwJjYNi0=
X-Received: by 2002:a05:6830:10d8:: with SMTP id
 z24mr7787846oto.281.1568909898774; 
 Thu, 19 Sep 2019 09:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190919150853.18181-1-chris@chris-wilson.co.uk>
 <CAKMK7uHFvCLyYos63-NrFUXoHicSLFKSc-iB+W25O3uMi57B+A@mail.gmail.com>
 <156890837522.1196.3651613875765766741@skylake-alporthouse-com>
In-Reply-To: <156890837522.1196.3651613875765766741@skylake-alporthouse-com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 19 Sep 2019 18:18:07 +0200
Message-ID: <CAKMK7uHOLEn87x_pb-ho1ZPqHaea0en7X5LNtae6efiYQp22eQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2+Qc3er0PNIh9YDh6El0ujTAhlxPF7nV8Lguw93UyMQ=;
 b=OUymjnamv7MgEk3Fl9x84b+j760q3b5trDLlbdWJXCghQj+beVqP7oE0Kjn/Ejtjc3
 G2wXmOatYNc+buo2uEvrbYIih33Z0u6+di4pzC9Ffn4JoAsFCrJFE4G1ros5ujgwkLEA
 eCZYHiVV+WmZH15LBjVhxFYLixrvxQp31l9Og=
Subject: Re: [Intel-gfx] [PATCH] dma-buf: Implement simple read/write vfs ops
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
 Laura Abbott <labbott@redhat.com>, Sean Paul <seanpaul@chromium.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTksIDIwMTkgYXQgNTo1MyBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIERhbmllbCBWZXR0ZXIgKDIwMTktMDkt
MTkgMTY6Mjg6NDEpCj4gPiBPbiBUaHUsIFNlcCAxOSwgMjAxOSBhdCA1OjA5IFBNIENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4KPiA+ID4gSXQgaXMg
ZXhwZWN0ZWQgdGhhdCBwcm9jZXNzZXMgd2lsbCBwYXNzIGRtYS1idWYgZmQgYmV0d2VlbiBkcml2
ZXJzLCBhbmQKPiA+ID4gb25seSB1c2luZyB0aGUgZmQgdGhlbXNlbHZlcyBmb3IgbW1hcGluZyBh
bmQgc3luY2hyb25pc2F0aW9uIGlvY3Rscy4KPiA+ID4gSG93ZXZlciwgaXQgbWF5IGJlIGNvbnZl
bmllbnQgZm9yIGFuIGFwcGxpY2F0aW9uIHRvIHJlYWQvd3JpdGUgaW50byB0aGUKPiA+ID4gZG1h
LWJ1ZiwgZm9yIGluc3RhbmNlIGEgdGVzdCBjYXNlIHRvIGNoZWNrIHRoZSBpbnRlcm5hbAo+ID4g
PiBkbWFfYnVmLT5vcHMtPmttYXAgaW50ZXJmYWNlLiBUaGVyZSBtYXkgYWxzbyBiZSBhIHNtYWxs
IGFkdmFudGFnZSB0bwo+ID4gPiBhdm9pZGluZyB0aGUgbW1hcCgpIGZvciB2ZXJ5IHNpbXBsZS9z
bWFsbCBvcGVyYXRpb25zLgo+ID4gPgo+ID4gPiBOb3RlIGluIHBhcnRpY3VsYXIsIHN5bmNocm9u
aXNhdGlvbiB3aXRoIHRoZSBkZXZpY2UgaXMgbGVmdCB0byB0aGUKPiA+ID4gY2FsbGVyIHdpdGgg
YW4gZXhwbGljaXQgRE1BX0JVRl9JT0NUTF9TWU5DLCByYXRoZXIgdGhhbiBkb25lIGltcGxpY2l0
bHkKPiA+ID4gaW5zaWRlIHRoZSByZWFkL3dyaXRlLCBzbyB0aGF0IHRoZSB1c2VyIGNhbiBhdm9p
ZCBzeW5jaHJvbmlzYXRpb24gaWYKPiA+ID4gdGhleSBzbyBjaG9vc2UuCj4gPiA+Cj4gPiA+ICJJ
dCBpcyBlYXNpZXIgdG8gYWRkIHN5bmNocm9uaXNhdGlvbiBsYXRlciwgdGhhbiBpdCBpcyB0byB0
YWtlIGl0IGF3YXkuIgo+ID4KPiA+IEhtIGZvciBtbWFwIEkgdGhpbmsgdGhlIGV4cGxpY2l0IHN5
bmMgbWFrZXMgc2Vuc2UgKHdlIG1pZ2h0IGV2ZW4gd2FudAo+ID4gdG8gZG8gaXQgaW4gdXNlcnNw
YWNlKS4gTm90IHNvIHN1cmUgaXQncyBhIGdyZWF0IGlkZWEgZm9yIHJlYWQvd3JpdGUKPiA+IC4u
LiBJIGd1ZXNzIHdlJ2QgbmVlZCB0byBzZWUgd2hhdCBwZW9wbGUgaGF2ZS9oYWQgaW4gbWluZCBm
b3IgdGhlCj4gPiB1c2Vyc3BhY2UgZm9yIHRoaXMgdG8gZGVjaWRlLgo+Cj4gVGhlcmUncyBhbiBP
X1NZTkMgZmxhZyBmb3Igb3BlbigyKToKPgo+ICAgICAgICBPX1NZTkMgV3JpdGUgb3BlcmF0aW9u
cyBvbiB0aGUgZmlsZSB3aWxsIGNvbXBsZXRlIGFjY29yZGluZyB0byB0aGUKPiAgICAgICAgICAg
ICAgIHJlcXVpcmVtZW50cyBvZiBzeW5jaHJvbml6ZWQgSS9PIGZpbGUgaW50ZWdyaXR5IGNvbXBs
ZXRpb24gKGJ5Cj4gICAgICAgICAgICAgICBjb250cmFzdCB3aXRoIHRoZSBzeW5jaHJvbml6ZWQg
SS9PIGRhdGEgaW50ZWdyaXR5IGNvbXBsZXRpb24KPiAgICAgICAgICAgICAgIHByb3ZpZGVkIGJ5
IE9fRFNZTkMuKQo+Cj4gICAgICAgICAgICAgICBCeSB0aGUgdGltZSB3cml0ZSgyKSAob3Igc2lt
aWxhcikgcmV0dXJucywgdGhlIG91dHB1dCBkYXRhIGFuZAo+ICAgICAgICAgICAgICAgYXNzb2Np
YXRlZCBmaWxlIG1ldGFkYXRhIGhhdmUgYmVlbiB0cmFuc2ZlcnJlZCB0byB0aGUgdW5kZXJseeKA
kAo+ICAgICAgICAgICAgICAgaW5nIGhhcmR3YXJlIChpLmUuLCBhcyB0aG91Z2ggZWFjaCB3cml0
ZSgyKSB3YXMgZm9sbG93ZWQgYnkgYQo+ICAgICAgICAgICAgICAgY2FsbCB0byBmc3luYygyKSku
Cj4KPiBUaGF0IHNlZW1zIGFwcGxpY2FibGUgaGVyZT8KCkhtIHllYWgsIHNvdW5kcyBsaWtlIGEg
bmVhdCBpZGVhIHRvIHVzZSBPX1NZTkMgdG8gZGVjaWRlIHdoZXRoZXIKd3JpdGVzL3JlYWRzIGZs
dXNoZXMgb3Igbm90LiBJdCdzIGEgYml0IGEgc3RyZXRjaCBzaW5jZSAhT19TWU5DIHdvdWxkCmFs
c28gZ2l2ZSB5b3UgdW4tY29oZXJlbnQgcmVhZHMgKG9yIGNvdWxkIGF0IGxlYXN0KS4KLURhbmll
bAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24K
KzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
