Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFBC61E4D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 14:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB4489C86;
	Mon,  8 Jul 2019 12:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A00689C86
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 12:22:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17169302-1500050 for multiple; Mon, 08 Jul 2019 13:22:03 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190708111944.20095-2-chris@chris-wilson.co.uk>
 <20190708113909.18117-1-chris@chris-wilson.co.uk>
 <9ee10ea0-6f1f-de68-3ff5-7a607a986ac3@linux.intel.com>
In-Reply-To: <9ee10ea0-6f1f-de68-3ff5-7a607a986ac3@linux.intel.com>
Message-ID: <156258852175.9375.12523322915332431559@skylake-alporthouse-com>
Date: Mon, 08 Jul 2019 13:22:01 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add to timeline requires the
 timeline mutex
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wOCAxMzoxODowMikKPiAKPiBPbiAwOC8w
Ny8yMDE5IDEyOjM5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiB2MjogVGhvdWdoIGl0IGRvZXNu
J3QgYWZmZWN0IHRoZSBjdXJyZW50IHVzZXJzLCBjb250ZXh0cyBtYXkgc2hhcmUKPiA+IHRpbWVs
aW5lcyBzbyBjaGVjayBpZiB3ZSBhbHJlYWR5IGhvbGQgdGhlIHJpZ2h0IG11dGV4LgoKPiA+ICtp
bnQgaW50ZWxfY29udGV4dF9wcmVwYXJlX3JlbW90ZV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBpbnRlbF90aW1lbGlu
ZSAqdGwgPSBjZS0+cmluZy0+dGltZWxpbmU7Cj4gPiArICAgICBpbnQgZXJyOwo+ID4gKwo+ID4g
KyAgICAgLyogT25seSBzdWl0YWJsZSBmb3IgdXNlIGluIHJlbW90ZWx5IG1vZGlmeWluZyB0aGlz
IGNvbnRleHQgKi8KPiA+ICsgICAgIEdFTV9CVUdfT04ocnEtPmh3X2NvbnRleHQgPT0gY2UpOwo+
ID4gKwo+ID4gKyAgICAgaWYgKHJxLT50aW1lbGluZSAhPSB0bCkgeyAvKiBiZXdhcmUgdGltZWxp
bmUgc2hhcmluZyAqLwo+ID4gKyAgICAgICAgICAgICBlcnIgPSBtdXRleF9sb2NrX2ludGVycnVw
dGlibGVfbmVzdGVkKCZ0bC0+bXV0ZXgsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgU0lOR0xFX0RFUFRIX05FU1RJTkcpOwo+IAo+IFdoaWNo
IGNhbGxlciBpcyBob2xkaW5nIHRsLT5tdXRleD8KCk5vbmUgdG9kYXksIGJ1dCBpdCBpcyBjb25j
ZWl2YWJsZS4gU28gcmF0aGVyIHRoYW4gaGF2ZSBhIG15c3RlcmlvdXMKZGVhZGxvY2sgbm90IHJl
cG9ydGVkIGJ5IGxvY2tkZXAgaW4gdGhlIGZ1dHVyZSwgbmlwIHRoZSBwcm9ibGVtIGluIHRoZQpi
dWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
