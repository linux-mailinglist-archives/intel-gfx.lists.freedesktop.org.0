Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DED2F76738
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 15:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 532536ED53;
	Fri, 26 Jul 2019 13:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9873B6ED53
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 13:21:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17629970-1500050 for multiple; Fri, 26 Jul 2019 14:20:56 +0100
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <54eaffac-0d15-109d-6d9b-98eb6b2a604f@linux.intel.com>
References: <20190726000226.26914-1-lucas.demarchi@intel.com>
 <20190726000226.26914-3-lucas.demarchi@intel.com>
 <156409982772.30723.16146937485087701539@skylake-alporthouse-com>
 <54eaffac-0d15-109d-6d9b-98eb6b2a604f@linux.intel.com>
Message-ID: <156414725474.30723.10098194461695043311@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 26 Jul 2019 14:20:54 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yNiAxNDoxNTo1MSkKPiAKPiBPbiAyNi8w
Ny8yMDE5IDAxOjEwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIEx1Y2FzIERlIE1h
cmNoaSAoMjAxOS0wNy0yNiAwMTowMjoyNSkKPiA+PiBGcm9tOiBNaWNoZWwgVGhpZXJyeSA8bWlj
aGVsLnRoaWVycnlAaW50ZWwuY29tPgo+ID4+Cj4gPj4gSW1wbGVtZW50IFdhXzE2MDQ1NTU2MDcg
KHNldCB0aGUgRFMgcGFpcmluZyB0aW1lciB0byAxMjggY3ljbGVzKS4KPiA+PiBGRl9NT0RFMiBp
cyBwYXJ0IG9mIHRoZSByZWdpc3RlciBzdGF0ZSBjb250ZXh0LCB0aGF0J3Mgd2h5IGl0IGlzCj4g
Pj4gaW1wbGVtZW50ZWQgaGVyZS4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGll
cnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogTHVjYXMg
RGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gPj4gLS0tCj4gPj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNyArKysrKysrCj4gPj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgIHwgNSArKysrKwo+
ID4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4gPj4KPiA+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+PiBpbmRleCBhNmViOWM2
ZTg3ZWMuLjMyMzVlZjM1NWRmZCAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4+IEBAIC01NzIsNiArNTcyLDEzIEBAIHN0YXRpYyB2
b2lkIGljbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUsCj4gPj4gICBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ID4+ICAgewo+ID4+ICsgICAgICAg
dTMyIHZhbDsKPiA+PiArCj4gPj4gKyAgICAgICAvKiBXYV8xNjA0NTU1NjA3OnRnbCAqLwo+ID4+
ICsgICAgICAgdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoZW5naW5lLT51bmNvcmUsIEZGX01PREUy
KTsKPiA+PiArICAgICAgIHZhbCAmPSB+RkZfTU9ERTJfVERTX1RJTUVSX01BU0s7Cj4gPj4gKyAg
ICAgICB2YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKPiA+PiArICAgICAgIHdhX3dyaXRl
X21hc2tlZF9vcih3YWwsIEZGX01PREUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsKTsK
PiA+IAo+ID4gSXQgd2lsbCBkbyBhIHJtdyBvbiBhcHBsaWNhdGlvbiwgc28geW91IGp1c3QgbmVl
ZAo+ID4gICAgICAgd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgRkZfTU9ERTIsCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIEZGX01PREUyX1REU19U
SU1FUl8xMjgpOwo+IAo+IE5vdCB3aXRoIGN0eCB3YXMgdW5mb3J0dW5hdGVseSwgbm8gcm13IHRo
ZXJlLCBqdXN0IGxyaS4KCk9kZCB0aGF0IHdlIHJlYWQgZnJvbSBvdXRzaWRlIHRoZSBjdHggdGhl
biwgbm8/CgpXZSBjYW4gZG8gcm13IGluc2lkZSBjdHhfd2EgaWYgd2UgaGF2ZSB0byB0aGFua3Mg
dG8gTUlfTUFUSC4gU2hvdWxkIHdlCnN0YXJ0IHByZXBhcmluZyBmb3IgdGhhdCBuaWdodG1hcmU/
IDopCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
