Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F794439F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 18:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAF7B8931D;
	Thu, 13 Jun 2019 16:33:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 904A88931D
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 16:33:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16892410-1500050 for multiple; Thu, 13 Jun 2019 17:33:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-4-tvrtko.ursulin@linux.intel.com>
 <156044076342.17012.8061368513293260014@skylake-alporthouse-com>
 <fe6e9e90-6502-5d0e-94fb-8dd2e55aeb7f@linux.intel.com>
In-Reply-To: <fe6e9e90-6502-5d0e-94fb-8dd2e55aeb7f@linux.intel.com>
Message-ID: <156044362246.17012.7388188807966541017@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 17:33:42 +0100
Subject: Re: [Intel-gfx] [RFC 27/28] drm/i915: Compartmentalize ring buffer
 creation
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNjo1NjozNykKPiAKPiBPbiAxMy8w
Ni8yMDE5IDE2OjQ2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTEzIDE2OjE5OjAzKQo+ID4+IEBAIC0xMjYyLDEzICsxMjYyLDE0IEBAIGlu
dGVsX2VuZ2luZV9jcmVhdGVfcmluZyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4g
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxp
bmUsCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgc2l6ZSkKPiA+PiAgIHsKPiA+
PiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1Owo+
ID4+ICAgICAgICAgIHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nOwo+ID4+ICAgICAgICAgIHN0cnVj
dCBpOTE1X3ZtYSAqdm1hOwo+ID4+ICAgCj4gPj4gICAgICAgICAgR0VNX0JVR19PTighaXNfcG93
ZXJfb2ZfMihzaXplKSk7Cj4gPj4gICAgICAgICAgR0VNX0JVR19PTihSSU5HX0NUTF9TSVpFKHNp
emUpICYgflJJTkdfTlJfUEFHRVMpOwo+ID4+ICAgICAgICAgIEdFTV9CVUdfT04odGltZWxpbmUg
PT0gJmVuZ2luZS0+dGltZWxpbmUpOwo+ID4+IC0gICAgICAgbG9ja2RlcF9hc3NlcnRfaGVsZCgm
ZW5naW5lLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiA+PiArICAgICAgIGxvY2tkZXBfYXNz
ZXJ0X2hlbGQoJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ID4gCj4gPiBIZXJlc3kuCj4gCj4g
V2hhdCB3aHk/CgpJIGRvbid0IGhhdmUgdGhpcyBsaW5lIGluIG15IGtlcm5lbCBcby8KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
