Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 271865F962
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 15:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3766E34C;
	Thu,  4 Jul 2019 13:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6EF6E34C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 13:53:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 06:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="363357967"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jul 2019 06:53:16 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 89BEF5C1EB4; Thu,  4 Jul 2019 16:53:09 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190703171913.16585-2-chris@chris-wilson.co.uk>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-2-chris@chris-wilson.co.uk>
Date: Thu, 04 Jul 2019 16:53:09 +0300
Message-ID: <877e8x3nzu.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Defer obj->base.resv fini
 until RCU callback
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU2luY2Ug
cmVzZXJ2YXRpb25fb2JqZWN0X2ZpbmkoKSBkb2VzIGFuIGltbWVkaWF0ZSBmcmVlLCByYXRoZXIg
dGhhbgo+IGtmcmVlX3JjdSBhcyBub3JtYWwsIHdlIGhhdmUgdG8gZGVsYXkgdGhlIHJlbGVhc2Ug
dW50aWwgYWZ0ZXIgdGhlIFJDVQo+IGdyYWNlIHBlcmlvZCBoYXMgZWxhcHNlZCAoaS5lLiBmcm9t
IHRoZSByY3UgY2xlYW51cCBjYWxsYmFjaykgc28gdGhhdCB3ZQo+IGNhbiByZWx5IG9uIHRoZSBS
Q1UgcHJvdGVjdGVkIGFjY2VzcyB0byB0aGUgZmVuY2VzIHdoaWxlIHRoZSBvYmplY3QgaXMgYQo+
IHpvbWJpZS4KPgo+IGk5MTVfZ2VtX2J1c3lfaW9jdGwgcmVsaWVzIG9uIGhhdmluZyBhbiBSQ1Ug
YmFycmllciB0byBwcm90ZWN0IHRoZQo+IHJlc2VydmF0aW9uIGluIG9yZGVyIHRvIGF2b2lkIGhh
dmluZyB0byB0YWtlIGEgcmVmZXJlbmNlIGFuZCBzdHJvbmcKPiBtZW1vcnkgYmFycmllcnMuCgpP
ayBzbyBmb3IgZ2VtIGJ1c3kgdG8gYmUgYWJsZSB0byBvcGVyYXRlIG9uIGEgJ3RvIGJlIGZyZWVk
JyBvYmplY3QKd2UgbmVlZCB0byBrZWVwIHRoZSByZXNlcnZhdGlvbiBvYmplY3QgYWxpdmU/Cgo+
Cj4gRml4ZXM6IGMwMzQ2N2JhNDBmNyAoImRybS9pOTE1L2dlbTogRnJlZSBwYWdlcyBiZWZvcmUg
cmN1LWZyZWVpbmcgdGhlIG9iamVjdCIpCj4gVGVzdGNhc2U6IGlndC9nZW1fYnVzeS9jbG9zZS1y
YWNlCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIHwgMyArKy0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMgIHwgNyArKysrKysrCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCj4gaW5kZXggZDNlOTZmMDljNmI3
Li4wZGNlZDRhMjBlMjAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5jCj4gQEAgLTE1Miw2ICsxNTIsNyBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX2Zy
ZWVfb2JqZWN0X3JjdShzdHJ1Y3QgcmN1X2hlYWQgKmhlYWQpCj4gIAkJY29udGFpbmVyX29mKGhl
YWQsIHR5cGVvZigqb2JqKSwgcmN1KTsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKPiAgCj4gKwlyZXNlcnZhdGlvbl9vYmplY3RfZmlu
aSgmb2JqLT5iYXNlLl9yZXN2KTsKPiAgCWk5MTVfZ2VtX29iamVjdF9mcmVlKG9iaik7Cj4gIAo+
ICAJR0VNX0JVR19PTighYXRvbWljX3JlYWQoJmk5MTUtPm1tLmZyZWVfY291bnQpKTsKPiBAQCAt
MTk4LDcgKzE5OSw3IEBAIHN0YXRpYyB2b2lkIF9faTkxNV9nZW1fZnJlZV9vYmplY3RzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAJCWlmIChvYmotPmJhc2UuaW1wb3J0X2F0dGFj
aCkKPiAgCQkJZHJtX3ByaW1lX2dlbV9kZXN0cm95KCZvYmotPmJhc2UsIE5VTEwpOwo+ICAKPiAt
CQlkcm1fZ2VtX29iamVjdF9yZWxlYXNlKCZvYmotPmJhc2UpOwo+ICsJCWRybV9nZW1fZnJlZV9t
bWFwX29mZnNldCgmb2JqLT5iYXNlKTsKPiAgCj4gIAkJLyogQnV0IGtlZXAgdGhlIHBvaW50ZXIg
YWxpdmUgZm9yIFJDVS1wcm90ZWN0ZWQgbG9va3VwcyAqLwo+ICAJCWNhbGxfcmN1KCZvYmotPnJj
dSwgX19pOTE1X2dlbV9mcmVlX29iamVjdF9yY3UpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9zaG1lbS5jCj4gaW5kZXggMTlkOWVjZGIyODk0Li5kMmExMTU4ODY4ZTcgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2htZW0uYwo+IEBAIC00MTQs
NiArNDE0LDExIEBAIHNobWVtX3B3cml0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LAo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHNobWVtX3JlbGVhc2Uoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPiArewo+ICsJZnB1dChvYmotPmJhc2UuZmls
cCk7CgpXZSBsb3NlIHRoZSBjaGVjayBmb3IgZmlscCBleGlzdGVuY2UuIEJ1dCBhcyBpbnRlcm5h
bApvcHMgaGF2ZSB0aGVpciBvd24gbWVjaGFuaWNzLCB3ZSBzaG91bGQgYWx3YXlzIGhhdmUgdGhl
IGZpbHAuCgpXZSBsb3NlIGEgd2FybiBmb3IgZG1hX2J1ZiBleGlzdGVuY2UgdGhvLgotTWlrYQoK
PiArfQo+ICsKPiAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2Vt
X3NobWVtX29wcyA9IHsKPiAgCS5mbGFncyA9IEk5MTVfR0VNX09CSkVDVF9IQVNfU1RSVUNUX1BB
R0UgfAo+ICAJCSBJOTE1X0dFTV9PQkpFQ1RfSVNfU0hSSU5LQUJMRSwKPiBAQCAtNDI0LDYgKzQy
OSw4IEBAIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV9zaG1l
bV9vcHMgPSB7Cj4gIAkud3JpdGViYWNrID0gc2htZW1fd3JpdGViYWNrLAo+ICAKPiAgCS5wd3Jp
dGUgPSBzaG1lbV9wd3JpdGUsCj4gKwo+ICsJLnJlbGVhc2UgPSBzaG1lbV9yZWxlYXNlLAo+ICB9
Owo+ICAKPiAgc3RhdGljIGludCBjcmVhdGVfc2htZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsCj4gLS0gCj4gMi4yMC4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
