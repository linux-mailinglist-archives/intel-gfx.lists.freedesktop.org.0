Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 726AAE76E7
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 17:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD04D6E863;
	Mon, 28 Oct 2019 16:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com
 [IPv6:2607:f8b0:4864:20::944])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 271F86E863
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 16:44:03 +0000 (UTC)
Received: by mail-ua1-x944.google.com with SMTP id o25so2893562uap.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 09:44:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+H4dU2s5+eLtZQcvnOoAw1D5jI9OP+ahxWeGS41i6bc=;
 b=eHPujruo6SUnclzFVJeYOQkwYCDETPNjpCphT9RFe5uIkwhO0UTWvjy3AxiFefDG9I
 5BsPZxvDGmC8i4kdj6xFyyG1pHsc8TAtQ3JWZswc8fMv/pVUGFLfLGeDEKCloHXzXGY8
 Er9cM5PyPdtf54SU62tALJx08r9gAgI9sY6obnwdp61OyQa1cAXFzyvfNtW/mQBafFCu
 fqTcegSbWDu5pzdmGxN7t/kmZqM4+QHvXRu/ZVu+/b5WW5po2HvZCgP+Shdil4unyDjk
 qlZ/y5ZABub8KEft1BWFXKkOo0r6/Q4j+jjO6z7M4zEeeSph+0sIjVcOTNstQUNSeFz2
 g4ag==
X-Gm-Message-State: APjAAAXOC/nGhHYQ8ifEjk2QN59UiNX6VTHIUPmIxYuZKoTJ9hM1ou3o
 e7RNd3hWUrk2RFZ82Fg24vv420uUtBxkRxWocg1bOg==
X-Google-Smtp-Source: APXvYqwIGJ2odKvjG+Yrz6qfMpjvQgWBDMw7g97anj2x3KZwD31uy3KO1S/cLLiwQ9WV8VQGB+3dAODtwY89KFMQyME=
X-Received: by 2002:ab0:331a:: with SMTP id r26mr8887151uao.104.1572281041902; 
 Mon, 28 Oct 2019 09:44:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191025210546.27511-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191025210546.27511-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 28 Oct 2019 16:43:33 +0000
Message-ID: <CAM0jSHPmyUrx-_Ua4QGHFMePo4hQyq7ss=SGhfD15ZosK4m0Bg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=+H4dU2s5+eLtZQcvnOoAw1D5jI9OP+ahxWeGS41i6bc=;
 b=qjr92Yn3ErsOtfs8jzeVPOjW1Ba6UL7hDLg3Ji9JkoKO/y8I9ft8F0M083yijpMycH
 +XcbISRhhtK+iXlIHjyyiYApjetK+OI7sHvCQtSohmaKHA4F/i3HSbKfE4E0GeOVaPQK
 6k2L70tRwrOawB0WwC4/xFy3kCe609l3vWxqNi+2jG5yMywhb0oUBCgiShBWUuzIL5UJ
 0UXKrSYlLgfOK1A58tPVldimw9ztJlt+rh5nLXyhQ68JY549/JjWEBGK7JJnN+ebRtoc
 C9CF7uvDJk15YGD0NgZKktOirm4AwGgjGzhwPbxzpZJ4qcB0LNMTe+5cM39OhAVIGjTc
 9CCA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Limit the blitter sizes to
 ensure low preemption latency
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

T24gRnJpLCAyNSBPY3QgMjAxOSBhdCAyMjowNiwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+Cj4gQ3VycmVudGx5IHdlIGluc2VydCBhIGFyYml0cmF0aW9u
IHBvaW50IGV2ZXJ5IDEyOE1pQiBkdXJpbmcgYSBibGl0dGVyCj4gY29weS4gQXQgOEdpQi9zLCB0
aGlzIGlzIGFyb3VuZCAzMG1zLiBUaGlzIGlzIGEgbGl0dGxlIG9uIHRoZSBsYXJnZSBzaWRlCj4g
aWYgd2UgbmVlZCB0byBpbmplY3QgYSBoaWdoIHByaW9yaXR5IHdvcmssIHNvIHJlZHVjZWQgaXQg
ZG93biB0byA4TWlCIG9yCj4gcm91Z2hseSAxbXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0
aGV3LmF1bGRAaW50ZWwuY29tPgo+IC0tLQo+IE9rLCBJIG5lZWQgdG8gZG8gYSBzZWxmdGVzdCB0
byBlbnN1cmUgd2UgYXJlIGV4Y2VlZGluZyB0aGUgZXN0aW1hdGVkCj4gYmxpdHRlciB0aHJvdWdo
dHB1dCwgYW5kIEkgd291bGQgYWxzbyBsaWtlIGEgdGVzdCB0byBtZWFzdXJlIHRoZQo+IHByZWVt
cHRpb24gbGF0ZW5jeSBkaXJlY3RseS4gUmVtaW5kIG1lIQo+IC0tLQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYwo+IGluZGV4IDUxNmU2MWU5OTIxMi4uN2Uy
NWYwNTkzOWJjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3RfYmx0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0X2JsdC5jCj4gQEAgLTE3LDcgKzE3LDcgQEAgc3RydWN0IGk5MTVfdm1hICppbnRlbF9l
bWl0X3ZtYV9maWxsX2JsdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgdmFsdWUpCj4gIHsKPiAgICAgICAgIHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gY2UtPnZtLT5pOTE1Owo+IC0gICAgICAgY29u
c3QgdTMyIGJsb2NrX3NpemUgPSBTMTZfTUFYICogUEFHRV9TSVpFOwo+ICsgICAgICAgY29uc3Qg
dTMyIGJsb2NrX3NpemUgPSBTWl84TTsgLyogfjFtcyBhdCA4R2lCL3MgcHJlZW1wdGlvbiBkZWxh
eSAqLwoKQWxzbyB1cGRhdGUgdGhlIGNvcHk/CgpOb3Qgc3VyZSBpZiB0aGlzIHdpbGwgbmVlZCBt
b3JlIHR1bmluZy4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
