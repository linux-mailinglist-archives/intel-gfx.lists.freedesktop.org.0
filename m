Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E492838BA3
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 15:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8642389D89;
	Fri,  7 Jun 2019 13:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 207EC89D89
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 13:29:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 06:28:59 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2019 06:28:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20190606215218.34486-3-daniele.ceraolospurio@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190606215218.34486-1-daniele.ceraolospurio@intel.com>
 <20190606215218.34486-3-daniele.ceraolospurio@intel.com>
Date: Fri, 07 Jun 2019 16:32:02 +0300
Message-ID: <87h891zfl9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 2/8] drm/i915: kill uncore_sanitize
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

T24gVGh1LCAwNiBKdW4gMjAxOSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4gd3JvdGU6Cj4gdW5jb3JlX3Nhbml0aXplIHBlcmZvcm1zIG5v
IGFjdGlvbiBvbiB0aGUgdW5jb3JlIHN0cnVjdHVyZSBhbmQganVzdAo+IGNhbGxzIGludGVsX3Nh
bml0aXplX2d0X3Bvd2Vyc2F2ZSwgc28gd2UgY2FuIGp1c3QgY2FsbCB0aGUgbGF0dGVyCj4gZGly
ZWN0bHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jICAgICB8IDEyICsrKysrKysrKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91
bmNvcmUuYyB8ICA5IC0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNv
cmUuaCB8ICAxIC0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxMiBkZWxl
dGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGluZGV4IDFhZjY3NTFlMWIzNi4u
MDVlZTMyOGUzZjY2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gQEAgLTE2MjIsNyAr
MTYyMiw4IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAlwbV9xb3NfYWRkX3JlcXVlc3QoJmRldl9wcml2LT5wbV9x
b3MsIFBNX1FPU19DUFVfRE1BX0xBVEVOQ1ksCj4gIAkJCSAgIFBNX1FPU19ERUZBVUxUX1ZBTFVF
KTsKPiAgCj4gLQlpbnRlbF91bmNvcmVfc2FuaXRpemUoZGV2X3ByaXYpOwo+ICsJLyogQklPUyBv
ZnRlbiBsZWF2ZXMgUkM2IGVuYWJsZWQsIGJ1dCBkaXNhYmxlIGl0IGZvciBodyBpbml0ICovCj4g
KwlpbnRlbF9zYW5pdGl6ZV9ndF9wb3dlcnNhdmUoZGV2X3ByaXYpOwo+ICAKPiAgCWludGVsX2d0
X2luaXRfd29ya2Fyb3VuZHMoZGV2X3ByaXYpOwo+ICAJaTkxNV9nZW1fbG9hZF9pbml0X2ZlbmNl
cyhkZXZfcHJpdik7Cj4gQEAgLTE5MTUsNiArMTkxNiw5IEBAIGludCBpOTE1X2RyaXZlcl9sb2Fk
KHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQo+
ICBvdXRfY2xlYW51cF9odzoKPiAgCWk5MTVfZHJpdmVyX2NsZWFudXBfaHcoZGV2X3ByaXYpOwo+
ICAJaTkxNV9nZ3R0X2NsZWFudXBfaHcoZGV2X3ByaXYpOwo+ICsKPiArCS8qIFBhcmFub2lhOiBt
YWtlIHN1cmUgd2UgaGF2ZSBkaXNhYmxlZCBldmVyeXRoaW5nIGJlZm9yZSB3ZSBleGl0LiAqLwo+
ICsJaW50ZWxfc2FuaXRpemVfZ3RfcG93ZXJzYXZlKGRldl9wcml2KTsKPiAgb3V0X2NsZWFudXBf
bW1pbzoKPiAgCWk5MTVfZHJpdmVyX2NsZWFudXBfbW1pbyhkZXZfcHJpdik7Cj4gIG91dF9ydW50
aW1lX3BtX3B1dDoKPiBAQCAtMTk4NCw2ICsxOTg4LDEwIEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJp
dmVyX3JlbGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAgCWk5MTVfZ2VtX2ZpbmkoZGV2
X3ByaXYpOwo+ICAKPiAgCWk5MTVfZ2d0dF9jbGVhbnVwX2h3KGRldl9wcml2KTsKPiArCj4gKwkv
KiBQYXJhbm9pYTogbWFrZSBzdXJlIHdlIGhhdmUgZGlzYWJsZWQgZXZlcnl0aGluZyBiZWZvcmUg
d2UgZXhpdC4gKi8KPiArCWludGVsX3Nhbml0aXplX2d0X3Bvd2Vyc2F2ZShkZXZfcHJpdik7Cj4g
Kwo+ICAJaTkxNV9kcml2ZXJfY2xlYW51cF9tbWlvKGRldl9wcml2KTsKPiAgCj4gIAllbmFibGVf
cnBtX3dha2VyZWZfYXNzZXJ0cyhkZXZfcHJpdik7Cj4gQEAgLTIzNDksNyArMjM1Nyw3IEBAIHN0
YXRpYyBpbnQgaTkxNV9kcm1fcmVzdW1lX2Vhcmx5KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4g
IAkJaHN3X2Rpc2FibGVfcGM4KGRldl9wcml2KTsKPiAgCX0KPiAgCj4gLQlpbnRlbF91bmNvcmVf
c2FuaXRpemUoZGV2X3ByaXYpOwo+ICsJaW50ZWxfc2FuaXRpemVfZ3RfcG93ZXJzYXZlKGRldl9w
cml2KTsKPiAgCj4gIAlpbnRlbF9wb3dlcl9kb21haW5zX3Jlc3VtZShkZXZfcHJpdik7Cj4gIAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCj4gaW5kZXggYzNiZTc5YzQ5NTdiLi5lZjdl
ZWQ5MjM3YTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3Jl
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwo+IEBAIC01Mzcs
MTIgKzUzNyw2IEBAIHZvaWQgaW50ZWxfdW5jb3JlX3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBpbnRl
bF91bmNvcmUgKnVuY29yZSkKPiAgCWlvc2ZfbWJpX3JlZ2lzdGVyX3BtaWNfYnVzX2FjY2Vzc19u
b3RpZmllcigmdW5jb3JlLT5wbWljX2J1c19hY2Nlc3NfbmIpOwo+ICB9Cj4gIAo+IC12b2lkIGlu
dGVsX3VuY29yZV9zYW5pdGl6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4g
LXsKPiAtCS8qIEJJT1Mgb2Z0ZW4gbGVhdmVzIFJDNiBlbmFibGVkLCBidXQgZGlzYWJsZSBpdCBm
b3IgaHcgaW5pdCAqLwo+IC0JaW50ZWxfc2FuaXRpemVfZ3RfcG93ZXJzYXZlKGRldl9wcml2KTsK
PiAtfQo+IC0KPiAgc3RhdGljIHZvaWQgX19pbnRlbF91bmNvcmVfZm9yY2V3YWtlX2dldChzdHJ1
Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCj4gIAkJCQkJIGVudW0gZm9yY2V3YWtlX2RvbWFpbnMg
ZndfZG9tYWlucykKPiAgewo+IEBAIC0xNjY0LDkgKzE2NTgsNiBAQCB2b2lkIGludGVsX3VuY29y
ZV9wcnVuZV9tbWlvX2RvbWFpbnMoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlKQo+ICAKPiAg
dm9pZCBpbnRlbF91bmNvcmVfZmluaV9tbWlvKHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSkK
PiAgewo+IC0JLyogUGFyYW5vaWE6IG1ha2Ugc3VyZSB3ZSBoYXZlIGRpc2FibGVkIGV2ZXJ5dGhp
bmcgYmVmb3JlIHdlIGV4aXQuICovCj4gLQlpbnRlbF91bmNvcmVfc2FuaXRpemUodW5jb3JlX3Rv
X2k5MTUodW5jb3JlKSk7Cj4gLQo+ICAJaW9zZl9tYmlfcHVuaXRfYWNxdWlyZSgpOwo+ICAJaW9z
Zl9tYmlfdW5yZWdpc3Rlcl9wbWljX2J1c19hY2Nlc3Nfbm90aWZpZXJfdW5sb2NrZWQoCj4gIAkJ
JnVuY29yZS0+cG1pY19idXNfYWNjZXNzX25iKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNv
cmUuaAo+IGluZGV4IDcyZWY4YjI2MjkzMC4uYmYwNmI2YjE2ODkyIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfdW5jb3JlLmgKPiBAQCAtMTgyLDcgKzE4Miw2IEBAIGludGVsX3VuY29yZV9o
YXNfZmlmbyhjb25zdCBzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpCj4gIAlyZXR1cm4gdW5j
b3JlLT5mbGFncyAmIFVOQ09SRV9IQVNfRklGTzsKPiAgfQo+ICAKPiAtdm9pZCBpbnRlbF91bmNv
cmVfc2FuaXRpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiAgdm9pZCBp
bnRlbF91bmNvcmVfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpOwo+ICBp
bnQgaW50ZWxfdW5jb3JlX2luaXRfbW1pbyhzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUpOwo+
ICB2b2lkIGludGVsX3VuY29yZV9wcnVuZV9tbWlvX2RvbWFpbnMoc3RydWN0IGludGVsX3VuY29y
ZSAqdW5jb3JlKTsKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3Mg
Q2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
