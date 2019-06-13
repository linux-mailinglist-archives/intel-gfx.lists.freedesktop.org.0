Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6114371E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 16:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7203889A92;
	Thu, 13 Jun 2019 14:12:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B36989A92
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 14:12:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16889644-1500050 for multiple; Thu, 13 Jun 2019 15:12:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-22-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190613133539.12620-22-tvrtko.ursulin@linux.intel.com>
Message-ID: <156043514826.17012.14040878897383864996@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 15:12:28 +0100
Subject: Re: [Intel-gfx] [RFC 21/28] drm/i915/gtt: Reduce source verbosity
 by caching repeated dereferences
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNDozNTozMikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFRoZXJlIGlzIGEgbG90
IG9mIGNvZGUgaW4gaTkxNV9nZW1fZ3R0LmMgd2hpY2ggcmVwZWF0YWRseSBkZXJlZmVyZW5jZXMK
PiBlaXRoZXIgZ2d0dCBvciBwcGd0dCBpbiBvcmRlciB0byBnZXQgdG8gdGhlIHZtLiBDYWNoZSB0
aG9zZSBhY2Nlc3NlcyBpbgo+IGxvY2FsIHZhcmlhYmxlcyBmb3IgYmV0dGVyIHJlYWRhYmlsaXR5
LgoKVGhlcmUgaXNuJ3QgYSBkZXJlZmVyZW5jZSB0aG91Z2gsIGl0J3MganVzdCB1c2luZyB0aGUg
YmFzZSBzdHJ1Y3QuIE1laC4KCkkgZG9uJ3QgcmVhbGx5IG1pbmQsIGJ1dCBJIGNob3NlIHRvIHdy
aXRlIGl0IHRoZSBvdGhlciB3YXksIHNwZWNpZmljYWxseQp1c2luZyB2bSB0byBrZWVwIGl0IHNo
b3J0LgoKQXQgdGhlIGVuZCBvZiB0aGUgZGF5LCB0aGUgY29tcGlsZXIgKnNob3VsZCogZWxpbWlu
YXRlIHRoZSByZWR1bmRhbnQKbG9jYWwsIHNvIGl0IGlzIG1lcmVseSBhIG1hdHRlciBvZiB3aGlj
aCByZWFkZXJzIHByZWZlci4gSSB0aGluayBJIHN0aWxsCmhhdmUgYSBzbGlnaHQgcHJlZmVyZW5j
ZSB0byB1c2luZyBwcGd0dCB0aHJvdWdob3V0IHJhdGhlciB0aGFuIG1peGluZwpwcGd0dCBhbmQg
dm0gZm9yIHRoZSBzYW1lIG9iamVjdC4KCj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMgfCAyNTQgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTM0IGluc2VydGlvbnMoKyksIDEyMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+IGluZGV4IDUxNmZmYzRhNTIxYS4uZDA5YTRkOWI3
MWRhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBAQCAtMTAwNCwxMCAr
MTAwNCwxMSBAQCBnZW44X3BwZ3R0X2luc2VydF9wdGVfZW50cmllcyhzdHJ1Y3QgaTkxNV9wcGd0
dCAqcHBndHQsCj4gIHsKPiAgICAgICAgIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpwZDsK
PiAgICAgICAgIGNvbnN0IGdlbjhfcHRlX3QgcHRlX2VuY29kZSA9IGdlbjhfcHRlX2VuY29kZSgw
LCBjYWNoZV9sZXZlbCwgZmxhZ3MpOwo+ICsgICAgICAgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0gPSAmcHBndHQtPnZtOwo+ICAgICAgICAgZ2VuOF9wdGVfdCAqdmFkZHI7Cj4gICAgICAg
ICBib29sIHJldDsKPiAgCj4gLSAgICAgICBHRU1fQlVHX09OKGlkeC0+cGRwZSA+PSBpOTE1X3Bk
cGVzX3Blcl9wZHAoJnBwZ3R0LT52bSkpOwo+ICsgICAgICAgR0VNX0JVR19PTihpZHgtPnBkcGUg
Pj0gaTkxNV9wZHBlc19wZXJfcGRwKHZtKSk7Cj4gICAgICAgICBwZCA9IHBkcC0+cGFnZV9kaXJl
Y3RvcnlbaWR4LT5wZHBlXTsKPiAgICAgICAgIHZhZGRyID0ga21hcF9hdG9taWNfcHgocGQtPnBh
Z2VfdGFibGVbaWR4LT5wZGVdKTsKPiAgICAgICAgIGRvIHsKPiBAQCAtMTAzOCw3ICsxMDM5LDcg
QEAgZ2VuOF9wcGd0dF9pbnNlcnRfcHRlX2VudHJpZXMoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0
LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIH0KPiAgCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBHRU1fQlVHX09OKGlkeC0+cGRwZSA+PSBpOTE1X3BkcGVzX3Blcl9wZHAoJnBw
Z3R0LT52bSkpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgR0VNX0JVR19PTihp
ZHgtPnBkcGUgPj0gaTkxNV9wZHBlc19wZXJfcGRwKHZtKSk7CgpJIGRvbid0IHNlZSBhbnkgY29k
ZSBoZXJlLiA6LXAKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
