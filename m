Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00965CAFB7
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 22:02:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B2A6E248;
	Thu,  3 Oct 2019 20:02:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCBD06E248
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 20:02:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18714788-1500050 for multiple; Thu, 03 Oct 2019 21:02:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191003192444.10113-1-matthew.auld@intel.com>
 <20191003192444.10113-21-matthew.auld@intel.com>
In-Reply-To: <20191003192444.10113-21-matthew.auld@intel.com>
Message-ID: <157013293989.12925.16831379410560098227@skylake-alporthouse-com>
Date: Thu, 03 Oct 2019 21:02:19 +0100
Subject: Re: [Intel-gfx] [PATCH v2 20/22] drm/i915/selftests: fallback to
 using the gpu to trash stolen
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDMgMjA6MjQ6NDIpCj4gQEAgLTE0OCw2ICsx
OTAsMjEgQEAgc3RhdGljIGludCBpZ3RfZ2VtX3N1c3BlbmQodm9pZCAqYXJnKQo+ICAgICAgICAg
aWYgKGVycikKPiAgICAgICAgICAgICAgICAgZ290byBvdXQ7Cj4gIAo+ICsgICAgICAgLyoKPiAr
ICAgICAgICAqIElmIHdlIGxhY2sgdGhlIG1hcHBhYmxlIGFwZXJ0dXJlIHdlIGNhbid0IHJlYWxs
eSBhY2Nlc3Mgc3RvbGVuIGZyb20KPiArICAgICAgICAqIHRoZSBjcHUsIGJ1dCB3ZSBjYW4gYWx3
YXlzIHRyYXNoIGl0IGZyb20gdGhlIGdwdSwgd2UganVzdCBuZWVkIHRvIGRvCj4gKyAgICAgICAg
KiBzbyBlYXJseSwgYmVmb3JlIHdlIHN0YXJ0IHN1c3BlbmRpbmcgc3R1ZmYuIFdlIHNob3VsZG4n
dCBzZWUgYW55Cj4gKyAgICAgICAgKiBoYW5ncyBkb2luZyB0aGlzIHNvIGVhcmx5LCBzaW5jZSB0
aGluZ3MgbGlrZSByaW5nIHN0YXRlIHdvbid0IGJlCj4gKyAgICAgICAgKiBhbGxvY2F0ZWQgaW4g
c3RvbGVuIGlmIHdlIGNhbid0IGFjY2VzcyBpdCBmcm9tIHRoZSBjcHUuIEFsdGhvdWdoIGlmCj4g
KyAgICAgICAgKiB0aGF0J3MgdGhlIGNhc2UgbWF5YmUgdGhlcmUgaXMgbm90IG11Y2ggcG9pbnQg
aW4gYm90aGVyaW5nIHdpdGggdGhpcwo+ICsgICAgICAgICogYW55d2F5Li4uCj4gKyAgICAgICAg
Ki8KPiArICAgICAgIGlmICghSEFTX01BUFBBQkxFX0FQRVJUVVJFKGk5MTUpKSB7Cj4gKyAgICAg
ICAgICAgICAgIGVyciA9IHRyYXNoX3N0b2xlbl9ncHUoY3R4KTsKPiArICAgICAgICAgICAgICAg
aWYgKGVycikKPiArICAgICAgICAgICAgICAgICAgICAgICBnb3RvIG91dDsKPiArICAgICAgIH0K
ClRoZSBnb2FsIGhlcmUgaXMgdGhhdCBsYXRlciBvbiB3ZSB3aWxsIG5lZWQgdG8gbWlncmF0ZSBh
bnl0aGluZyBpbiBsbWVtCnRvIHN3YXAgb3ZlciBzdXNwZW5kL2hpYmVybmF0aW9uIGFuZCByZXN0
b3JlIGl0IG9uIHJlc3VtZS4gVGhlIGNoYWxsZW5nZQppcyB0aGVuIHRvIGNvcnJ1cHQgc3RhdGUg
c3VjaCB0aGF0IHdlIGNhbiBkZXRlY3QgZm9yZ290dGVuIG9iamVjdHMuIChTbwp0aGVyZSB3aWxs
IGJlIHVzdWFsbHkgYSBidWcgb3IgdHdvIHdoZXJlIHdlIHJlZGVzaWduIHRoZSB0ZXN0IHRvIGNv
dmVyCm1vcmUgY29ybmVyIGNhc2VzLikgSSdtIG5vdCB5ZXQgY29udmluY2VkIHRyYXNoaW5nIGJl
Zm9yZSBzdXNwZW5kIGRvZXMKd2hhdCBJIHdhbnQgaXQgdG8gZG8uIEkgdGhpbmsgd2UgbWF5IG5l
ZWQgdG8gZG8gYSBtaW5pbWFsIHJlc3VtZSBjeWNsZQppbiB0aGUgbWlkZGxlIG9mIHRoZSBmdWxs
IHN1c3BlbmQvcmVzdW1lIHRlc3QgdGhhdCBieXBhc3NlcyB0aGUgR0VNCmxheWVyIHRvIGRvIHRo
ZSB0cmFzaGluZy4gOnwKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
