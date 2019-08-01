Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2CC7D9AC
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 12:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597BD6E4A5;
	Thu,  1 Aug 2019 10:53:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED5A6E4A5
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 10:53:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17785073-1500050 for multiple; Thu, 01 Aug 2019 11:53:34 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z5uau4hpxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190801101825.2784-1-tvrtko.ursulin@linux.intel.com>
 <20190801101825.2784-2-tvrtko.ursulin@linux.intel.com>
 <op.z5uau4hpxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156465681159.2512.6982919959751853833@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 01 Aug 2019 11:53:31 +0100
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/pmu: Make more struct i915_pmu
 centric
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTAxIDExOjQ2OjA2KQo+IE9uIFRodSwg
MDEgQXVnIDIwMTkgMTI6MTg6MjIgKzAyMDAsIFR2cnRrbyBVcnN1bGluICAKPiA8dHZydGtvLnVy
c3VsaW5AbGludXguaW50ZWwuY29tPiB3cm90ZToKPiAKPiA+IEZyb206IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPgo+ID4gSnVzdCB0aWR5IHRoZSBjb2RlIGEg
Yml0IGJ5IHJlbW92aW5nIGEgc2VhIG9mIG92ZXJseSB2ZXJib3NlIGk5MTUtPnBtdS4qLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgMTk0ICsr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwNCBp
bnNlcnRpb25zKCspLCA5MCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyAgCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcG11LmMKPiA+IGluZGV4IGVmZjg2NDgzYmVjMC4uMTIwMDg5NjZiMDBlIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wbXUuYwo+ID4gQEAgLTc0LDggKzc0LDkgQEAgc3RhdGljIHVuc2ln
bmVkIGludCBldmVudF9lbmFibGVkX2JpdChzdHJ1Y3QgIAo+ID4gcGVyZl9ldmVudCAqZXZlbnQp
Cj4gPiAgICAgICByZXR1cm4gY29uZmlnX2VuYWJsZWRfYml0KGV2ZW50LT5hdHRyLmNvbmZpZyk7
Cj4gPiAgfQo+ID4gLXN0YXRpYyBib29sIHBtdV9uZWVkc190aW1lcihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwgYm9vbCAgCj4gPiBncHVfYWN0aXZlKQo+ID4gK3N0YXRpYyBib29sIHBt
dV9uZWVkc190aW1lcihzdHJ1Y3QgaTkxNV9wbXUgKnBtdSwgYm9vbCBncHVfYWN0aXZlKQo+ID4g
IHsKPiA+ICsgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gY29udGFpbmVyX29m
KHBtdSwgdHlwZW9mKCppOTE1KSwgcG11KTsKPiAKPiBtYXliZSB0aGlzIGNhbiBiZSBwcm9tb3Rl
ZCB0byBwbXVfdG9faTkxNSgpID8KPiAKPiA+ICAgICAgIHU2NCBlbmFibGU7Cj4gPiAgICAgICAv
Kgo+ID4gQEAgLTgzLDcgKzg0LDcgQEAgc3RhdGljIGJvb2wgcG11X25lZWRzX3RpbWVyKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICAKPiA+ICppOTE1LCBib29sIGdwdV9hY3RpdmUpCj4gPiAgICAg
ICAgKgo+ID4gICAgICAgICogV2Ugc3RhcnQgd2l0aCBhIGJpdG1hc2sgb2YgYWxsIGN1cnJlbnRs
eSBlbmFibGVkIGV2ZW50cy4KPiA+ICAgICAgICAqLwo+ID4gLSAgICAgZW5hYmxlID0gaTkxNS0+
cG11LmVuYWJsZTsKPiA+ICsgICAgIGVuYWJsZSA9IHBtdS0+ZW5hYmxlOwo+ID4gICAgICAgLyoK
PiA+ICAgICAgICAqIE1hc2sgb3V0IGFsbCB0aGUgb25lcyB3aGljaCBkbyBub3QgbmVlZCB0aGUg
dGltZXIsIG9yIGluCj4gPiBAQCAtMTE0LDI0ICsxMTUsMjYgQEAgc3RhdGljIGJvb2wgcG11X25l
ZWRzX3RpbWVyKHN0cnVjdCAgCj4gPiBkcm1faTkxNV9wcml2YXRlICppOTE1LCBib29sIGdwdV9h
Y3RpdmUpCj4gPiB2b2lkIGk5MTVfcG11X2d0X3BhcmtlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKPiAKPiB5b3Ugc2hvdWxkIGJlIG1vcmUgY29uc2lzdGVudCBhbmQgY2hhbmdlIHRo
aXMgb25lIHRvbwoKVGhpcyBpcyBkZWZpbml0ZWx5IG5vdCB0aGUgZmluYWwgZm9ybSwgc28gSSdt
IG5vdCBib3RoZXJlZC4gSSBmb3Jlc2VlCnRoZXJlIGJlaW5nIGEgbWl4IG9mIGRldmljZS1sZXZl
bCBwbXUgYW5kIGd0LWxldmVsIHBtdSwgd2l0aCB0aGlzIGJlaW5nCnBhcnQgb2YgdGhlIGxhdHRl
ci4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
