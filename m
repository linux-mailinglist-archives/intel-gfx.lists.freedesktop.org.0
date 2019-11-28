Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C4310C7E2
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 12:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1371C6E7B5;
	Thu, 28 Nov 2019 11:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A046E7B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 11:27:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 03:27:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="203409554"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 28 Nov 2019 03:27:54 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E95005C1E37; Thu, 28 Nov 2019 13:27:30 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191128102546.3857140-1-chris@chris-wilson.co.uk>
References: <20191128102546.3857140-1-chris@chris-wilson.co.uk>
Date: Thu, 28 Nov 2019 13:27:30 +0200
Message-ID: <877e3kkzq5.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Try to show where the
 pulse went
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gV2UgaGF2
ZSBhIGNhc2Ugb2YgYSBteXN0ZXJpb3VzbHkgYWJzZW50IHB1bHNlLCBzbyBkdW1wIHRoZSBlbmdp
bmUKPiBkZXRhaWxzIHRvIHNlZSBpZiB3ZSBjYW4gZmluZCBvdXQgd2hhdCBoYXBwZW5lZCB0byBp
dC4KPgo+IFJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMjQwNQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYyAgICAgICAgICAgfCAyICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2VuZ2luZV9oZWFydGJlYXQuYyB8IDUgKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5j
Cj4gaW5kZXggOGY2ZTM1M2NhYTY2Li5kZjMzNjljM2YzMzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+IEBAIC0xNDc5LDYgKzE0NzksOCBAQCB2b2lk
IGludGVsX2VuZ2luZV9kdW1wKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgCQlk
cm1fcHJpbnRmKG0sICIqKiogV0VER0VEICoqKlxuIik7Cj4gIAo+ICAJZHJtX3ByaW50ZihtLCAi
XHRBd2FrZT8gJWRcbiIsIGF0b21pY19yZWFkKCZlbmdpbmUtPndha2VyZWYuY291bnQpKTsKPiAr
CWRybV9wcmludGYobSwgIlx0QmFycmllcnM/OiAlc1xuIiwKPiArCQkgICB5ZXNubyghbGxpc3Rf
ZW1wdHkoJmVuZ2luZS0+YmFycmllcl90YXNrcykpKTsKCkEgcmFuZG9tIHRob3VnaHQgYXJpc2Ug
d2hlbiByZWFkaW5nIHRoaXMgYW5kIGl0IHdhcyB0aGF0CnNob3VsZCB3ZSBkbyBhIG1lbW9yeSBi
YXJyaWVyIGJlZm9yZSBkdW1wLiBCdXQgdGhlcmUKd291bGQgYmUgbm8gcGFpcmluZyBhbmQgaXQg
Y291bGQgYWN0dWFsbHkgaGlkZSBzb21ldGhpbmcKbW9yZSBzaW5pc3Rlci4KCkl0IGlzIGltcG9y
dGFudCB0byBrbm93IGlmIGFuZCB3aGVyZSBhbmQgd2h5IGRpZCB3ZSBkcm9wCm91ciBzdGV0aG9z
Y29wZS4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiAgCj4gIAlyY3VfcmVhZF9sb2NrKCk7Cj4gIAlycSA9IFJFQURfT05DRShlbmdp
bmUtPmhlYXJ0YmVhdC5zeXN0b2xlKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jCj4gaW5kZXggZjY2NWEwZTIzYzYxLi4wYjEx
NDhjZjNmNjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
ZW5naW5lX2hlYXJ0YmVhdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfZW5naW5lX2hlYXJ0YmVhdC5jCj4gQEAgLTkxLDYgKzkxLDExIEBAIHN0YXRpYyBpbnQgX19s
aXZlX2lkbGVfcHVsc2Uoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAJR0VNX0JV
R19PTighbGxpc3RfZW1wdHkoJmVuZ2luZS0+YmFycmllcl90YXNrcykpOwo+ICAKPiAgCWlmIChp
bnRlbF9ndF9yZXRpcmVfcmVxdWVzdHNfdGltZW91dChlbmdpbmUtPmd0LCBIWiAvIDUpKSB7Cj4g
KwkJc3RydWN0IGRybV9wcmludGVyIG0gPSBkcm1fZXJyX3ByaW50ZXIoInB1bHNlIik7Cj4gKwo+
ICsJCXByX2VycigiJXM6IG5vIGhlYXJ0YmVhdCBwdWxzZT9cbiIsIGVuZ2luZS0+bmFtZSk7Cj4g
KwkJaW50ZWxfZW5naW5lX2R1bXAoZW5naW5lLCAmbSwgIiVzIiwgZW5naW5lLT5uYW1lKTsKPiAr
Cj4gIAkJZXJyID0gLUVUSU1FOwo+ICAJCWdvdG8gb3V0Owo+ICAJfQo+IC0tIAo+IDIuMjQuMAo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
