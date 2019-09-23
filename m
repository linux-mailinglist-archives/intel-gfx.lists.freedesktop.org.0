Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C06FBBB5B3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 15:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1171D6E913;
	Mon, 23 Sep 2019 13:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50F8B6E913
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 13:46:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18587720-1500050 for multiple; Mon, 23 Sep 2019 14:46:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190921095542.23205-1-chris@chris-wilson.co.uk>
 <20190921095542.23205-3-chris@chris-wilson.co.uk>
 <7386c6e5-96df-5f57-0b9a-214787cdad57@linux.intel.com>
 <156924595998.29097.6410793778914589365@skylake-alporthouse-com>
In-Reply-To: <156924595998.29097.6410793778914589365@skylake-alporthouse-com>
Message-ID: <156924638127.29097.16396604039929906429@skylake-alporthouse-com>
Date: Mon, 23 Sep 2019 14:46:21 +0100
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Fixup preempt-to-busy vs
 resubmission of a virtual request
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjMgMTQ6Mzk6MjApCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wOS0yMyAxNDozMjoyMykKPiA+IAo+ID4gT24gMjEvMDkvMjAxOSAx
MDo1NSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiArICAgICBpZiAoaTkxNV9yZXF1ZXN0X2Nv
bXBsZXRlZChycSkpIHsKPiA+ID4gKyAgICAgICAgICAgICBfX2k5MTVfcmVxdWVzdF9zdWJtaXQo
cnEpOwo+ID4gPiArICAgICAgICAgICAgIHZlLT5yZXF1ZXN0ID0gTlVMTDsKPiA+ID4gKyAgICAg
fSBlbHNlIHsKPiA+ID4gKyAgICAgICAgICAgICB2ZS0+YmFzZS5leGVjbGlzdHMucXVldWVfcHJp
b3JpdHlfaGludCA9IHJxX3ByaW8ocnEpOwo+ID4gPiArICAgICAgICAgICAgIHZlLT5yZXF1ZXN0
ID0gaTkxNV9yZXF1ZXN0X2dldChycSk7Cj4gPiA+ICsgICAgICAgICAgICAgcnEtPmVuZ2luZSA9
ICZ2ZS0+YmFzZTsgLyogZml4dXAgZnJvbSB1bndpbmQgKi8KPiA+IAo+ID4gVGhlIGxhc3QgbGlu
ZSBoYXMgbWUgY29uZnVzZWQuIElzbid0IHRoaXMgdGhlIG5vcm1hbCB2ZW5nIHJxIHN1Ym1pc3Np
b24gCj4gPiBwYXRoPwo+IAo+IEl0IGlzIGFsc28gb24gdGhlIG5vcm1hbCBzdWJtaXNzaW9uIHBh
dGguCj4gCj4gPiBJbiB3aGljaCBjYXNlIHJxLT5lbmdpbmUgd2lsbCBhbHJlYWR5IGJlIHNldCB0
byB2ZW5nLgo+IAo+IFllcwo+IAo+ID4gQnV0IG9uIHRoZSAKPiA+IHVud2luZCBwYXRoIHlvdSBo
YXZlIHJlbW92ZWQgcmVzZXQtYmFjayBvZiBycS0+ZW5naW5lIHRvIG93bmVyLiBBaC4uIHRoZSAK
PiA+IHVud2luZCBjYWxscyB2ZW5nLT5zdWJtaXRfcmVxdWVzdCBvbiBpdCwgYW5kIHRoZW4gd2Ug
ZW5kIHVwIGluIGhlcmUuLiAKPiA+IE9rYXksIHRoaXMgaXMgb3V0c2lkZSB0aGUgbm9ybWFsIHBh
dGgsIEkgbWVhbiB0aGUgZWxzZSBibG9jayBoYXMgdHdvIAo+ID4gZnVuY3Rpb25zL3BhdGhzLCBh
bmQgdGhpcyBzaG91bGQgYmUgZXhwbGFpbmVkIGluIGEgY29tbWVudC4KPiAKPiBUaGF0IHdhcyB0
aGUgaW50ZW50IG9mICJmaXh1cCBmcm9tIHVud2luZD8iCj4gCj4gSSBjYW4gc3F1ZWV6ZSBpbiAv
KiBmaXh1cCBfX3Vud2luZF9pbmNvbXBsZXRlX3JlcXVlc3RzICovIGlzIHRoYXQgbW9yZQo+IGNs
dWVmdWw/IE9yIGRvIHlvdSB0aGluayBpdCBuZWVkcyBtb3JlPwoKQWxzbyBpdCBkb2Vzbid0IHN0
cmljdGx5IGhhdmUgdG8gYmUgbW92ZWQuIEFuZCBjZXJ0YWlubHkgdGhlcmUncyBub3QKZ29vZCBy
ZWFzb24gd2h5IGl0IG5lZWRzIHRvIGJlIGRvbmUgaW4gdGhpcyBwYXRjaCAtLSBpbml0aWFsbHkg
SSB3YXMKbW92aW5nIGl0IHRvIGF2b2lkIGRlcmVmZXJlbmNpbmcgaW5jb21wbGV0ZSB2aXJ0dWFs
IGVuZ2luZSBzdGF0ZSBpbnNpZGUKX19pOTE1X3JlcXVlc3Rfc3VibWl0KCksIGJ1dCB0aGF0J3Mg
YmV0dGVyIGhhbmRsZWQgYnkgdGhlIGVhcmxpZXIKcGF0Y2hlcy4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
