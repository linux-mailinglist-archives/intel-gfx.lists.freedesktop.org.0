Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB08FDB28
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 11:20:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB816E3EC;
	Fri, 15 Nov 2019 10:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9001E6E3EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 10:20:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 02:20:16 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199157345"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 02:20:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20191115101840.23921-2-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191115101840.23921-1-jani.nikula@intel.com>
 <20191115101840.23921-2-jani.nikula@intel.com>
Date: Fri, 15 Nov 2019 12:20:11 +0200
Message-ID: <87eey91lwk.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: make debug printer
 shown_bug_once variable to drm_i915_private
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

T24gRnJpLCAxNSBOb3YgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gR2V0IHJpZCBvZiB0aGUgbW9kdWxlIHNwZWNpZmljIHN0YXRpYyB2YXJpYWJsZS4K
ClN1YmplY3Qgc2hvdWxkIHNheSBzL21ha2UvbW92ZS8uCgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgIHwgMiArKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0
aWxzLmMgfCA5ICsrKystLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IDE3NzlmNjAw
ZmNmYi4uZTExZWUzMjY4YWUzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTEy
ODMsNiArMTI4Myw4IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKPiAgCS8qIE11dGV4IHRv
IHByb3RlY3QgdGhlIGFib3ZlIGhkY3AgY29tcG9uZW50IHJlbGF0ZWQgdmFsdWVzLiAqLwo+ICAJ
c3RydWN0IG11dGV4IGhkY3BfY29tcF9tdXRleDsKPiAgCj4gKwlib29sIHNob3duX2J1Z19vbmNl
Owo+ICsKPiAgCUk5MTVfU0VMRlRFU1RfREVDTEFSRShzdHJ1Y3QgaTkxNV9zZWxmdGVzdF9zdGFz
aCBzZWxmdGVzdDspCj4gIAo+ICAJLyoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV91dGlscy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5jCj4gaW5k
ZXggYzQ3MjYxYWU4NmVhLi5mNDM0Mjc0YjBiMjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV91dGlscy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5jCj4gQEAgLTEzLDExICsxMywxMCBAQAo+ICAJCSAgICAicHJvdmlkaW5nIHRoZSBkbWVz
ZyBsb2cgYnkgYm9vdGluZyB3aXRoIGRybS5kZWJ1Zz0weGYiCj4gIAo+ICB2b2lkCj4gLV9faTkx
NV9wcmludGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBjb25zdCBjaGFyICps
ZXZlbCwKPiArX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgY29u
c3QgY2hhciAqbGV2ZWwsCj4gIAkgICAgICBjb25zdCBjaGFyICpmbXQsIC4uLikKPiAgewo+IC0J
c3RhdGljIGJvb2wgc2hvd25fYnVnX29uY2U7Cj4gLQlzdHJ1Y3QgZGV2aWNlICprZGV2ID0gZGV2
X3ByaXYtPmRybS5kZXY7Cj4gKwlzdHJ1Y3QgZGV2aWNlICprZGV2ID0gaTkxNS0+ZHJtLmRldjsK
PiAgCWJvb2wgaXNfZXJyb3IgPSBsZXZlbFsxXSA8PSBLRVJOX0VSUlsxXTsKPiAgCWJvb2wgaXNf
ZGVidWcgPSBsZXZlbFsxXSA9PSBLRVJOX0RFQlVHWzFdOwo+ICAJc3RydWN0IHZhX2Zvcm1hdCB2
YWY7Cj4gQEAgLTM5LDcgKzM4LDcgQEAgX19pOTE1X3ByaW50ayhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGNvbnN0IGNoYXIgKmxldmVsLAo+ICAKPiAgCXZhX2VuZChhcmdzKTsK
PiAgCj4gLQlpZiAoaXNfZXJyb3IgJiYgIXNob3duX2J1Z19vbmNlKSB7Cj4gKwlpZiAoaXNfZXJy
b3IgJiYgIWk5MTUtPnNob3duX2J1Z19vbmNlKSB7Cj4gIAkJLyoKPiAgCQkgKiBBc2sgdGhlIHVz
ZXIgdG8gZmlsZSBhIGJ1ZyByZXBvcnQgZm9yIHRoZSBlcnJvciwgZXhjZXB0Cj4gIAkJICogaWYg
dGhleSBtYXkgaGF2ZSBjYXVzZWQgdGhlIGJ1ZyBieSBmaWRkbGluZyB3aXRoIHVuc2FmZQo+IEBA
IC00Nyw3ICs0Niw3IEBAIF9faTkxNV9wcmludGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LCBjb25zdCBjaGFyICpsZXZlbCwKPiAgCQkgKi8KPiAgCQlpZiAoIXRlc3RfdGFpbnQo
VEFJTlRfVVNFUikpCj4gIAkJCWRldl9ub3RpY2Uoa2RldiwgIiVzIiwgRkRPX0JVR19NU0cpOwo+
IC0JCXNob3duX2J1Z19vbmNlID0gdHJ1ZTsKPiArCQlpOTE1LT5zaG93bl9idWdfb25jZSA9IHRy
dWU7Cj4gIAl9Cj4gIH0KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
