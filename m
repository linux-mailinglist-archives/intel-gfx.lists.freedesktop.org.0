Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A5916553
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 16:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 110FE6E7DD;
	Tue,  7 May 2019 14:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA2C66E7D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 14:04:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16477910-1500050 for multiple; Tue, 07 May 2019 15:04:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190502232648.4450-1-imre.deak@intel.com>
 <20190502232648.4450-2-imre.deak@intel.com>
In-Reply-To: <20190502232648.4450-2-imre.deak@intel.com>
Message-ID: <155723783921.2489.17790977763344080240@skylake-alporthouse-com>
Date: Tue, 07 May 2019 15:03:59 +0100
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915: Add support for tracking
 wakerefs w/o power-on guarantee
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

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMDUtMDMgMDA6MjY6MzkpCj4gQEAgLTQ1MjEsMTIgKzQ2
MDIsMTIgQEAgdm9pZCBpbnRlbF9ydW50aW1lX3BtX2NsZWFudXAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCj4gICAgICAgICBzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0gPSAmaTkx
NS0+cnVudGltZV9wbTsKPiAgICAgICAgIGludCBjb3VudDsKPiAgCj4gLSAgICAgICBjb3VudCA9
IGF0b21pY19mZXRjaF9pbmMoJnJwbS0+d2FrZXJlZl9jb3VudCk7IC8qIGJhbGFuY2UgdW50cmFj
ayAqLwo+ICsgICAgICAgY291bnQgPSBhdG9taWNfZmV0Y2hfaW5jKCZycG0tPndha2VyZWZfdHJh
Y2tfY291bnQpOyAvKiBiYWxhbmNlIHVudHJhY2sgKi8KPiAgICAgICAgIFdBUk4oY291bnQsCj4g
LSAgICAgICAgICAgICJpOTE1LT5ydW50aW1lX3BtLndha2VyZWZfY291bnQ9JWQgb24gY2xlYW51
cFxuIiwKPiArICAgICAgICAgICAgImk5MTUtPnJ1bnRpbWVfcG0ud2FrZXJlZl90cmFja19jb3Vu
dD0lZCBvbiBjbGVhbnVwXG4iLAo+ICAgICAgICAgICAgICBjb3VudCk7Cj4gIAo+IC0gICAgICAg
dW50cmFja19pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYoaTkxNSk7Cj4gKyAgICAgICB1bnRyYWNr
X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZl9yYXcoaTkxNSk7CgpTbyB0aGlzIGJhc2ljYWxseSBz
dW1zIHVwIHRoZSBkaWxlbW1hLiBUaGUgd2FybmluZyBoZXJlIHNob3VsZCBiZSBpZiB0aGUKd2Fr
ZXJlZl9jb3VudCAhPSAwIChtZWFuaW5nIHdlIGhhdmUgc29tZW9uZSBzdGlsbCB1c2luZyB0aGUg
ZGV2aWNlKSBhdApjbGVhbnVwLiBUaGF0IHRyYWNrX2NvdW50IG1heSBiZSB6ZXJvIGp1c3QgaW1w
bGllcyBsb3NzIG9mIGF2YWlsYWJsZQppbmZvcm1hdGlvbi4KCkxvb2tpbmcgdGhyb3VnaCB0aGlz
LCBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciBpZiB0aGUgdHJhY2tfY291bnQgd2FzCnB1c2hl
ZCBpbnRvIHRoZSBydW50aW1lX3BtLmRlYnVnIHN1YnN0cnVjdCwgYW5kIHJlYWxseSBkb2VzIG9u
bHkgbWVhbgp0aGUgbnVtYmVyIG9mIHdha2VyZWZzIGJlaW5nIHRyYWNrZWQgYnkgdGhlIGRlYnVn
IGJhY2tlbmQuIEkgYmVsaWV2ZSB0aGF0CmhlbHBzIHdpdGggdGhlIHNlcGFyYXRpb24gb2YgaW50
ZW50IC0tIG15IG9ubHkgY29uZGl0aW9uIGZvciB0aGUgZGVzaWduCmlzIHRoYXQgaWYgeW91IGhh
dmUgYSB3YWtlcmVmIGNvb2tpZSwgaXQgaXMgY2xlYXIgdGhhdCB5b3UgaG9sZCBhCnJlZmVyZW5j
ZSB0byB0aGUgcnVudGltZS1wbS4gKFdoZXJlIHlvdSB3YW50IHRvIGFkZCBuZXcgYXBpIGZvcgp1
bnRyYWNrZWQgd2FrZXJlZnMuLi4gSSBuZWVkIHRvIGdvIGJhY2sgdG8gdGhlIGVuZCBhZ2FpbiBh
bmQgc2VlIGlmIHlvdQpyZWFsbHkgZG8gbmVlZCB1bnRyYWNrZWQgd2FrZXJlZnMgYW5kIGlmIG5v
dCB0aGUgYXN5bmMgcG93ZXIgZG9tYWluCm1lcmVseSBuZWVkcyB0byB0cmFjayBpdCBvd24gd2Fr
ZXJlZiBpbmRlcGVuZGVudGx5IG9mIGl0cyBjbGllbnRzLikKCkJhaC4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
