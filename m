Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D27F108A1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 16:00:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A9E892A1;
	Wed,  1 May 2019 14:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7439B892A1
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 14:00:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16417238-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 May 2019 15:00:00 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190501135753.8711-1-chris@chris-wilson.co.uk>
 <20190501135753.8711-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190501135753.8711-2-chris@chris-wilson.co.uk>
Message-ID: <155671919907.1850.11965214619853047808@skylake-alporthouse-com>
Date: Wed, 01 May 2019 14:59:59 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Prefer checking the wakeref
 itself rather than the counter
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMDEgMTQ6NTc6NTIpCj4gVGhlIGNvdW50ZXIg
Z29lcyB0byB6ZXJvIGF0IHRoZSBzdGFydCBvZiB0aGUgcGFya2luZyBjeWNsZSwgYnV0IHRoZQo+
IHdha2VyZWYgaXRzZWxmIGlzIGhlbGQgdW50aWwgdGhlIGVuZC4gTGlrZXdpc2UsIHRoZSBjb3Vu
dGVyIGJlY29tZXMgb25lCj4gYXQgdGhlIGVuZCBvZiB0aGUgdW5wYXJraW5nLCBidXQgdGhlIHdh
a2VyZWYgaXMgdGFrZW4gZmlyc3QuIElmIHdlIGNoZWNrCj4gdGhlIHdha2VyZWYgaW5zdGVhZCBv
ZiB0aGUgY291bnRlciwgd2UgaW5jbHVkZSB0aGUgdW5wYXJrL3VucGFya2luZyB0aW1lCj4gYXMg
aW50ZWxfd2FrZXJlZl9pc19hY3RpdmUoKSwgYW5kIGRvIG5vdCBzcHVyaW91c2x5IGRlY2xhcmUg
aW5hY3RpdmUgaWYKPiB3ZSBmYWlsIHRvIHBhcmsgKGkuZS4gdGhlIHBhcmtpbmcgYW5kIHdha2Vy
ZWYgZHJvcCBpcyBwb3N0cG9uZWQpLgo+IAo+IFRoZSBwcmVtYXR1cmUgaW5hY3RpdmUgZGVhY3Rp
dmF0aW9uIG1heSByZXN1bHQgdXMgaW4gcmFuZG9tbHkgc3RvcHBpbmcKPiB0aGUgcmV0aXJlIHdv
cmtlciB0b28gZWFybHkgd2l0aCBhIHBvdGVudGlhbCBmb3IgYSBsaXZlbG9jayBpZiB0aGF0IHdh
cwo+IHRoZSBvbmx5IG1lYW5zIGJ5IHdoaWNoIHdlIHdlcmUgcmV0aXJpbmcgYXQgdGhlIHRpbWUg
KGUuZy4gaW4gaGFuZGxpbmcKPiBpOTE1X2Ryb3BfY2FjaGVzKS4KCkZvcmdldCB0aGlzIHBhcmFn
cmFwaCwgdGhpcyB3YXMgbm90IHRoZSBzb2x1dGlvbi4gSSBuZWVkIHRoZSBsb25nZXIgYWN0aXZl
CmJvdW5kYXJ5IGZvciB0aGUgbmV4dCBwYXRjaC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
