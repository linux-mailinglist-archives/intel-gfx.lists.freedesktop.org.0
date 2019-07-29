Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E5479187
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 18:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D3A89D44;
	Mon, 29 Jul 2019 16:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4016389C07;
 Mon, 29 Jul 2019 16:54:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 09:54:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,323,1559545200"; d="scan'208";a="176478858"
Received: from nperf12.hd.intel.com ([10.127.88.161])
 by orsmga006.jf.intel.com with ESMTP; 29 Jul 2019 09:54:38 -0700
From: Brian Welty <brian.welty@intel.com>
To: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 12:54:57 -0400
Message-Id: <20190729165457.18500-4-brian.welty@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190729165457.18500-1-brian.welty@intel.com>
References: <20190729165457.18500-1-brian.welty@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 3/3] drm/i915: Update intel_memory_region to
 use nested drm_mem_region
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

U29tZSBmaWVsZHMgYXJlIGRlbGV0ZWQgZnJvbSBpbnRlbF9tZW1vcnlfcmVnaW9uIGluIGZhdm9y
IG9mIGluc3RlYWQKdXNpbmcgdGhlIG5ldyBuZXN0ZWQgZHJtX21lbV9yZWdpb24gc3RydWN0dXJl
LgoKTm90ZSwgdGhpcyBpcyBiYXNlZCB1cG9uIHVubWVyZ2VkIGk5MTUgc2VyaWVzIFsxXSBpbiBv
cmRlciB0byBzaG93IGhvdwppOTE1IG1pZ2h0IGJlZ2luIHRvIGludGVncmF0ZSB0aGUgcHJvcG9z
ZWQgZHJtX21lbV9yZWdpb24uCgpbMV0gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJj
aGl2ZXMvaW50ZWwtZ2Z4LzIwMTktSnVuZS8yMDM2NDkuaHRtbAoKU2lnbmVkLW9mZi1ieTogQnJp
YW4gV2VsdHkgPGJyaWFuLndlbHR5QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3NobWVtLmMgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jICAgICAgICAgICB8IDEwICsrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ3B1X2Vycm9yLmMgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3F1ZXJ5LmMgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfbWVtb3J5X3JlZ2lvbi5jICAgIHwgMTAgKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfbWVtb3J5X3JlZ2lvbi5oICAgIHwgMTkgKysrKy0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMgICAgICB8IDI2ICsrKysrKysrKy0tLS0tLS0t
LS0KIC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jICB8ICA4ICsr
Ky0tLQogOSBmaWxlcyBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspLCA0NCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKaW5kZXggNzNkMmQ3
MmFkYzE5Li43ZTU2ZmQ4OWE5NzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmMKQEAgLTYwNiw3ICs2MDYsNyBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX29iamVj
dF9yZWdpb25fc2VsZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJcmV0
ID0gaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUob2JqLCBjZSwgaWQpOwogCQlpZiAoIXJldCkgewog
CQkJaWYgKE1FTU9SWV9UWVBFX0ZST01fUkVHSU9OKHJlZ2lvbikgPT0KLQkJCSAgICBJTlRFTF9M
TUVNKSB7CisJCQkgICAgRFJNX01FTV9WUkFNKSB7CiAJCQkJLyoKIAkJCQkgKiBUT0RPOiB0aGlz
IHNob3VsZCBiZSBwYXJ0IG9mIGdldF9wYWdlcygpLAogCQkJCSAqIHdoZW4gYXN5bmMgZ2V0X3Bh
Z2VzIGFycml2ZXMKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9zaG1lbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMKaW5k
ZXggZDI0ZjM0NDQzYzRjLi5hYzE4ZTczNjY1ZDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9zaG1lbS5jCkBAIC01Myw3ICs1Myw3IEBAIHN0YXRpYyBpbnQgc2htZW1fZ2V0
X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJICogSWYgdGhlcmUncyBu
byBjaGFuY2Ugb2YgYWxsb2NhdGluZyBlbm91Z2ggcGFnZXMgZm9yIHRoZSB3aG9sZQogCSAqIG9i
amVjdCwgYmFpbCBlYXJseS4KIAkgKi8KLQlpZiAob2JqLT5iYXNlLnNpemUgPiByZXNvdXJjZV9z
aXplKCZtZW0tPnJlZ2lvbikpCisJaWYgKG9iai0+YmFzZS5zaXplID4gbWVtLT5yZWdpb24uc2l6
ZSkKIAkJcmV0dXJuIC1FTk9NRU07CiAKIAlzdCA9IGttYWxsb2Moc2l6ZW9mKCpzdCksIEdGUF9L
RVJORUwpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCAyMjg4YTU1ZjI3ZjEu
LmY0YWRjN2UzOTdmZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI3Mzcs
MjAgKzI3MzcsMjAgQEAgaW50IGk5MTVfZ2VtX2luaXRfbWVtb3J5X3JlZ2lvbnMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShpbnRl
bF9yZWdpb25fbWFwKTsgaSsrKSB7CiAJCXN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0g
PSBOVUxMOwotCQl1MzIgdHlwZTsKKwkJdTggdHlwZTsKIAogCQlpZiAoIUhBU19SRUdJT04oaTkx
NSwgQklUKGkpKSkKIAkJCWNvbnRpbnVlOwogCiAJCXR5cGUgPSBNRU1PUllfVFlQRV9GUk9NX1JF
R0lPTihpbnRlbF9yZWdpb25fbWFwW2ldKTsKIAkJc3dpdGNoICh0eXBlKSB7Ci0JCWNhc2UgSU5U
RUxfU01FTToKKwkJY2FzZSBEUk1fTUVNX1NZU1RFTToKIAkJCW1lbSA9IGk5MTVfZ2VtX3NobWVt
X3NldHVwKGk5MTUpOwogCQkJYnJlYWs7Ci0JCWNhc2UgSU5URUxfU1RPTEVOOgorCQljYXNlIERS
TV9NRU1fU1RPTEVOOgogCQkJbWVtID0gaTkxNV9nZW1fc3RvbGVuX3NldHVwKGk5MTUpOwogCQkJ
YnJlYWs7Ci0JCWNhc2UgSU5URUxfTE1FTToKKwkJY2FzZSBEUk1fTUVNX1ZSQU06CiAJCQltZW0g
PSBpOTE1X2dlbV9zZXR1cF9mYWtlX2xtZW0oaTkxNSk7CiAJCQlicmVhazsKIAkJfQpAQCAtMjc2
Miw3ICsyNzYyLDcgQEAgaW50IGk5MTVfZ2VtX2luaXRfbWVtb3J5X3JlZ2lvbnMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCX0KIAogCQltZW0tPmlkID0gaW50ZWxfcmVnaW9uX21h
cFtpXTsKLQkJbWVtLT50eXBlID0gdHlwZTsKKwkJbWVtLT5yZWdpb24udHlwZSA9IHR5cGU7CiAJ
CW1lbS0+aW5zdGFuY2UgPSBNRU1PUllfSU5TVEFOQ0VfRlJPTV9SRUdJT04oaW50ZWxfcmVnaW9u
X21hcFtpXSk7CiAKIAkJaTkxNS0+cmVnaW9uc1tpXSA9IG1lbTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dwdV9lcnJvci5jCmluZGV4IDlmZWI1OTdmMmIwMS4uOTA4NjkxYzNhYWRiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKQEAgLTEwNDgsNyArMTA0OCw3IEBAIGk5MTVf
ZXJyb3Jfb2JqZWN0X2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJc3Ry
dWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSA9IHZtYS0+b2JqLT5tZW1vcnlfcmVnaW9uOwog
CiAJCWZvcl9lYWNoX3NndF9kbWEoZG1hLCBpdGVyLCB2bWEtPnBhZ2VzKSB7Ci0JCQlzID0gaW9f
bWFwcGluZ19tYXBfYXRvbWljX3djKCZtZW0tPmlvbWFwLCBkbWEpOworCQkJcyA9IGlvX21hcHBp
bmdfbWFwX2F0b21pY193YygmbWVtLT5yZWdpb24uaW9tYXAsIGRtYSk7CiAJCQlyZXQgPSBjb21w
cmVzc19wYWdlKGNvbXByZXNzLCBzLCBkc3QpOwogCQkJaW9fbWFwcGluZ191bm1hcF9hdG9taWMo
cyk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYwppbmRleCAyMWM0YzI1OTJkNmMuLmQxNmI0
YTY2ODhlOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYwpAQCAtMTg0LDcgKzE4NCw3IEBA
IHN0YXRpYyBpbnQgcXVlcnlfbWVtcmVnaW9uX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAogCQkJY29udGludWU7CiAKIAkJaW5mby5pZCA9IHJlZ2lvbi0+aWQ7Ci0JCWlu
Zm8uc2l6ZSA9IHJlc291cmNlX3NpemUoJnJlZ2lvbi0+cmVnaW9uKTsKKwkJaW5mby5zaXplID0g
cmVnaW9uLT5yZWdpb24uc2l6ZTsKIAogCQlpZiAoX19jb3B5X3RvX3VzZXIoaW5mb19wdHIsICZp
bmZvLCBzaXplb2YoaW5mbykpKQogCQkJcmV0dXJuIC1FRkFVTFQ7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKaW5kZXggYWI1N2I5NGIyN2E5Li5kY2YwNzdjMjNh
NzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKQEAgLTIw
MCw3ICsyMDAsNyBAQCBpOTE1X21lbW9yeV9yZWdpb25fZ2V0X3BhZ2VzX2J1ZGR5KHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAKIGludCBpOTE1X21lbW9yeV9yZWdpb25faW5pdF9i
dWRkeShzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtKQogewotCXJldHVybiBpOTE1X2J1
ZGR5X2luaXQoJm1lbS0+bW0sIHJlc291cmNlX3NpemUoJm1lbS0+cmVnaW9uKSwKKwlyZXR1cm4g
aTkxNV9idWRkeV9pbml0KCZtZW0tPm1tLCBtZW0tPnJlZ2lvbi5zaXplLAogCQkJICAgICAgIG1l
bS0+bWluX3BhZ2Vfc2l6ZSk7CiB9CiAKQEAgLTI4NSwxMCArMjg1LDEyIEBAIGludGVsX21lbW9y
eV9yZWdpb25fY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQlyZXR1cm4g
RVJSX1BUUigtRU5PTUVNKTsKIAogCW1lbS0+aTkxNSA9IGk5MTU7Ci0JbWVtLT5yZWdpb24gPSAo
c3RydWN0IHJlc291cmNlKURFRklORV9SRVNfTUVNKHN0YXJ0LCBzaXplKTsKLQltZW0tPmlvX3N0
YXJ0ID0gaW9fc3RhcnQ7Ci0JbWVtLT5taW5fcGFnZV9zaXplID0gbWluX3BhZ2Vfc2l6ZTsKIAlt
ZW0tPm9wcyA9IG9wczsKKwkvKiBGSVhNRSBkcm1fbWVtX3JlZ2lvbl9pbml0PyAqLworCW1lbS0+
cmVnaW9uLnN0YXJ0ID0gc3RhcnQ7CisJbWVtLT5yZWdpb24uc2l6ZSA9IHNpemU7CisJbWVtLT5y
ZWdpb24uaW9fc3RhcnQgPSBpb19zdGFydDsKKwltZW0tPm1pbl9wYWdlX3NpemUgPSBtaW5fcGFn
ZV9zaXplOwogCiAJbXV0ZXhfaW5pdCgmbWVtLT5vYmpfbG9jayk7CiAJSU5JVF9MSVNUX0hFQUQo
Jm1lbS0+b2JqZWN0cyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9t
ZW1vcnlfcmVnaW9uLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9u
LmgKaW5kZXggNDk2MDA5NmVjMzBmLi5mYzAwZDQzZjA3YTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKQEAgLTE5LDE0ICsxOSw4IEBAIHN0cnVjdCBpbnRl
bF9tZW1vcnlfcmVnaW9uOwogc3RydWN0IHNnX3RhYmxlOwogCiAvKioKLSAqICBCYXNlIG1lbW9y
eSB0eXBlCisgKiAgRGVmaW5lIHN1cHBvcnRlZCBtZW1vcnkgcmVnaW9ucwogICovCi1lbnVtIGlu
dGVsX21lbW9yeV90eXBlIHsKLQlJTlRFTF9TTUVNID0gMCwKLQlJTlRFTF9MTUVNLAotCUlOVEVM
X1NUT0xFTiwKLX07Ci0KIGVudW0gaW50ZWxfcmVnaW9uX2lkIHsKIAlJTlRFTF9NRU1PUllfU01F
TSA9IDAsCiAJSU5URUxfTUVNT1JZX0xNRU0sCkBAIC00Nyw5ICs0MSw5IEBAIGVudW0gaW50ZWxf
cmVnaW9uX2lkIHsKICAqIE1lbW9yeSByZWdpb25zIGVuY29kZWQgYXMgdHlwZSB8IGluc3RhbmNl
CiAgKi8KIHN0YXRpYyBjb25zdCB1MzIgaW50ZWxfcmVnaW9uX21hcFtdID0gewotCVtJTlRFTF9N
RU1PUllfU01FTV0gPSBCSVQoSU5URUxfU01FTSArIElOVEVMX01FTU9SWV9UWVBFX1NISUZUKSB8
IEJJVCgwKSwKLQlbSU5URUxfTUVNT1JZX0xNRU1dID0gQklUKElOVEVMX0xNRU0gKyBJTlRFTF9N
RU1PUllfVFlQRV9TSElGVCkgfCBCSVQoMCksCi0JW0lOVEVMX01FTU9SWV9TVE9MRU5dID0gQklU
KElOVEVMX1NUT0xFTiArIElOVEVMX01FTU9SWV9UWVBFX1NISUZUKSB8IEJJVCgwKSwKKwlbSU5U
RUxfTUVNT1JZX1NNRU1dID0gQklUKERSTV9NRU1fU1lTVEVNICsgSU5URUxfTUVNT1JZX1RZUEVf
U0hJRlQpIHwgQklUKDApLAorCVtJTlRFTF9NRU1PUllfTE1FTV0gPSBCSVQoRFJNX01FTV9WUkFN
ICsgSU5URUxfTUVNT1JZX1RZUEVfU0hJRlQpIHwgQklUKDApLAorCVtJTlRFTF9NRU1PUllfU1RP
TEVOXSA9IEJJVChEUk1fTUVNX1NUT0xFTiArIElOVEVMX01FTU9SWV9UWVBFX1NISUZUKSB8IEJJ
VCgwKSwKIH07CiAKIHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uX29wcyB7CkBAIC02OSw4ICs2
Myw3IEBAIHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uIHsKIAogCWNvbnN0IHN0cnVjdCBpbnRl
bF9tZW1vcnlfcmVnaW9uX29wcyAqb3BzOwogCi0Jc3RydWN0IGlvX21hcHBpbmcgaW9tYXA7Ci0J
c3RydWN0IHJlc291cmNlIHJlZ2lvbjsKKwlzdHJ1Y3QgZHJtX21lbV9yZWdpb24gcmVnaW9uOwog
CiAJLyogRm9yIGZha2luZyBmb3IgbG1lbSAqLwogCXN0cnVjdCBkcm1fbW1fbm9kZSBmYWtlX21h
cHBhYmxlOwpAQCAtNzgsMTAgKzcxLDggQEAgc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gewog
CXN0cnVjdCBpOTE1X2J1ZGR5X21tIG1tOwogCXN0cnVjdCBtdXRleCBtbV9sb2NrOwogCi0JcmVz
b3VyY2Vfc2l6ZV90IGlvX3N0YXJ0OwogCXJlc291cmNlX3NpemVfdCBtaW5fcGFnZV9zaXplOwog
Ci0JdW5zaWduZWQgaW50IHR5cGU7CiAJdW5zaWduZWQgaW50IGluc3RhbmNlOwogCXVuc2lnbmVk
IGludCBpZDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9u
X2xtZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMKaW5kZXgg
YWZkZTliZTcyYTEyLi42ZjBjZTAzMTRiOTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cmVnaW9uX2xtZW0uYwpAQCAtMjUwLDcgKzI1MCw3IEBAIHN0YXRpYyBpbnQgaTkxNV9nZW1faW5p
dF9mYWtlX2xtZW1fYmFyKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCiAJaW50IHJl
dDsKIAogCW1lbS0+ZmFrZV9tYXBwYWJsZS5zdGFydCA9IDA7Ci0JbWVtLT5mYWtlX21hcHBhYmxl
LnNpemUgPSByZXNvdXJjZV9zaXplKCZtZW0tPnJlZ2lvbik7CisJbWVtLT5mYWtlX21hcHBhYmxl
LnNpemUgPSBtZW0tPnJlZ2lvbi5zaXplOwogCW1lbS0+ZmFrZV9tYXBwYWJsZS5jb2xvciA9IEk5
MTVfQ09MT1JfVU5FVklDVEFCTEU7CiAKIAlyZXQgPSBkcm1fbW1fcmVzZXJ2ZV9ub2RlKCZnZ3R0
LT52bS5tbSwgJm1lbS0+ZmFrZV9tYXBwYWJsZSk7CkBAIC0yNzcsNyArMjc3LDcgQEAgc3RhdGlj
IHZvaWQKIHJlZ2lvbl9sbWVtX3JlbGVhc2Uoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1l
bSkKIHsKIAlpOTE1X2dlbV9yZWxhc2VfZmFrZV9sbWVtX2JhcihtZW0pOwotCWlvX21hcHBpbmdf
ZmluaSgmbWVtLT5pb21hcCk7CisJaW9fbWFwcGluZ19maW5pKCZtZW0tPnJlZ2lvbi5pb21hcCk7
CiAJaTkxNV9tZW1vcnlfcmVnaW9uX3JlbGVhc2VfYnVkZHkobWVtKTsKIH0KIApAQCAtMjk0LDE0
ICsyOTQsMTQgQEAgcmVnaW9uX2xtZW1faW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAq
bWVtKQogCQl9CiAJfQogCi0JaWYgKCFpb19tYXBwaW5nX2luaXRfd2MoJm1lbS0+aW9tYXAsCi0J
CQkJbWVtLT5pb19zdGFydCwKLQkJCQlyZXNvdXJjZV9zaXplKCZtZW0tPnJlZ2lvbikpKQorCWlm
ICghaW9fbWFwcGluZ19pbml0X3djKCZtZW0tPnJlZ2lvbi5pb21hcCwKKwkJCQltZW0tPnJlZ2lv
bi5pb19zdGFydCwKKwkJCQltZW0tPnJlZ2lvbi5zaXplKSkKIAkJcmV0dXJuIC1FSU87CiAKIAly
ZXQgPSBpOTE1X21lbW9yeV9yZWdpb25faW5pdF9idWRkeShtZW0pOwogCWlmIChyZXQpCi0JCWlv
X21hcHBpbmdfZmluaSgmbWVtLT5pb21hcCk7CisJCWlvX21hcHBpbmdfZmluaSgmbWVtLT5yZWdp
b24uaW9tYXApOwogCiAJcmV0dXJuIHJldDsKIH0KQEAgLTMyMSw3ICszMjEsNyBAQCB2b2lkIF9f
aW9tZW0gKmk5MTVfZ2VtX29iamVjdF9sbWVtX2lvX21hcF9wYWdlKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosCiAJb2Zmc2V0ID0gaTkxNV9nZW1fb2JqZWN0X2dldF9kbWFfYWRkcmVz
cyhvYmosIG4pOwogCW9mZnNldCAtPSBpbnRlbF9ncmFwaGljc19mYWtlX2xtZW1fcmVzLnN0YXJ0
OwogCi0JcmV0dXJuIGlvX21hcHBpbmdfbWFwX2F0b21pY193Yygmb2JqLT5tZW1vcnlfcmVnaW9u
LT5pb21hcCwgb2Zmc2V0KTsKKwlyZXR1cm4gaW9fbWFwcGluZ19tYXBfYXRvbWljX3djKCZvYmot
Pm1lbW9yeV9yZWdpb24tPnJlZ2lvbi5pb21hcCwgb2Zmc2V0KTsKIH0KIAogdm9pZCBfX2lvbWVt
ICppOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXAoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKQEAgLTMzNSw3ICszMzUsNyBAQCB2b2lkIF9faW9tZW0gKmk5MTVfZ2VtX29iamVjdF9s
bWVtX2lvX21hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCW9mZnNldCA9IGk5
MTVfZ2VtX29iamVjdF9nZXRfZG1hX2FkZHJlc3Mob2JqLCBuKTsKIAlvZmZzZXQgLT0gaW50ZWxf
Z3JhcGhpY3NfZmFrZV9sbWVtX3Jlcy5zdGFydDsKIAotCXJldHVybiBpb19tYXBwaW5nX21hcF93
Yygmb2JqLT5tZW1vcnlfcmVnaW9uLT5pb21hcCwgb2Zmc2V0LCBzaXplKTsKKwlyZXR1cm4gaW9f
bWFwcGluZ19tYXBfd2MoJm9iai0+bWVtb3J5X3JlZ2lvbi0+cmVnaW9uLmlvbWFwLCBvZmZzZXQs
IHNpemUpOwogfQogCiByZXNvdXJjZV9zaXplX3QgaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fb2Zm
c2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCkBAIC0zNTIsMTQgKzM1MiwxNCBA
QCByZXNvdXJjZV9zaXplX3QgaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fb2Zmc2V0KHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJZGFkZHIgPSBpOTE1X2dlbV9vYmplY3RfZ2V0X2Rt
YV9hZGRyZXNzKG9iaiwgbik7CiAJZGFkZHIgLT0gaW50ZWxfZ3JhcGhpY3NfZmFrZV9sbWVtX3Jl
cy5zdGFydDsKIAotCXJldHVybiBtZW0tPmlvX3N0YXJ0ICsgZGFkZHI7CisJcmV0dXJuIG1lbS0+
cmVnaW9uLmlvX3N0YXJ0ICsgZGFkZHI7CiB9CiAKIGJvb2wgaTkxNV9nZW1fb2JqZWN0X2lzX2xt
ZW0oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKLQlzdHJ1Y3QgaW50ZWxfbWVt
b3J5X3JlZ2lvbiAqcmVnaW9uID0gb2JqLT5tZW1vcnlfcmVnaW9uOworCXN0cnVjdCBpbnRlbF9t
ZW1vcnlfcmVnaW9uICptZW0gPSBvYmotPm1lbW9yeV9yZWdpb247CiAKLQlyZXR1cm4gcmVnaW9u
ICYmIHJlZ2lvbi0+dHlwZSA9PSBJTlRFTF9MTUVNOworCXJldHVybiBtZW0gJiYgbWVtLT5yZWdp
b24udHlwZSA9PSBEUk1fTUVNX1ZSQU07CiB9CiAKIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICoKQEAgLTM5NSw5ICszOTUsOSBAQCBpOTE1X2dlbV9zZXR1cF9mYWtlX2xtZW0oc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCQkJCSBpb19zdGFydCwKIAkJCQkJICZyZWdpb25fbG1l
bV9vcHMpOwogCWlmICghSVNfRVJSKG1lbSkpIHsKLQkJRFJNX0lORk8oIkludGVsIGdyYXBoaWNz
IGZha2UgTE1FTTogJXBSXG4iLCAmbWVtLT5yZWdpb24pOworCQlEUk1fSU5GTygiSW50ZWwgZ3Jh
cGhpY3MgZmFrZSBMTUVNOiAlcFJcbiIsIG1lbSk7CiAJCURSTV9JTkZPKCJJbnRlbCBncmFwaGlj
cyBmYWtlIExNRU0gSU8gc3RhcnQ6ICVsbHhcbiIsCi0JCQkgKHU2NCltZW0tPmlvX3N0YXJ0KTsK
KwkJCSAodTY0KW1lbS0+cmVnaW9uLmlvX3N0YXJ0KTsKIAl9CiAKIAlyZXR1cm4gbWVtOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdp
b24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9u
LmMKaW5kZXggOTc5M2Y1NDhhNzFhLi4xNDk2ZjQ3YTc5NGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYwpAQCAtMzIsNyAr
MzIsNyBAQCBzdGF0aWMgdm9pZCBjbG9zZV9vYmplY3RzKHN0cnVjdCBsaXN0X2hlYWQgKm9iamVj
dHMpCiBzdGF0aWMgaW50IGlndF9tb2NrX2ZpbGwodm9pZCAqYXJnKQogewogCXN0cnVjdCBpbnRl
bF9tZW1vcnlfcmVnaW9uICptZW0gPSBhcmc7Ci0JcmVzb3VyY2Vfc2l6ZV90IHRvdGFsID0gcmVz
b3VyY2Vfc2l6ZSgmbWVtLT5yZWdpb24pOworCXJlc291cmNlX3NpemVfdCB0b3RhbCA9IG1lbS0+
cmVnaW9uLnNpemU7CiAJcmVzb3VyY2Vfc2l6ZV90IHBhZ2Vfc2l6ZTsKIAlyZXNvdXJjZV9zaXpl
X3QgcmVtOwogCXVuc2lnbmVkIGxvbmcgbWF4X3BhZ2VzOwpAQCAtOTgsNyArOTgsNyBAQCBzdGF0
aWMgaW50IGlndF9mcmFnX3JlZ2lvbihzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAog
CWludCBlcnIgPSAwOwogCiAJdGFyZ2V0ID0gbWVtLT5tbS5taW5fc2l6ZTsKLQl0b3RhbCA9IHJl
c291cmNlX3NpemUoJm1lbS0+cmVnaW9uKTsKKwl0b3RhbCA9IG1lbS0+cmVnaW9uLnNpemU7CiAJ
bl9vYmplY3RzID0gdG90YWwgLyB0YXJnZXQ7CiAKIAl3aGlsZSAobl9vYmplY3RzLS0pIHsKQEAg
LTE1Miw3ICsxNTIsNyBAQCBzdGF0aWMgaW50IGlndF9tb2NrX2V2aWN0KHZvaWQgKmFyZykKIAlp
ZiAoZXJyKQogCQlyZXR1cm4gZXJyOwogCi0JdG90YWwgPSByZXNvdXJjZV9zaXplKCZtZW0tPnJl
Z2lvbik7CisJdG90YWwgPSBtZW0tPnJlZ2lvbi5zaXplOwogCXRhcmdldCA9IG1lbS0+bW0ubWlu
X3NpemU7CiAKIAl3aGlsZSAodGFyZ2V0IDw9IHRvdGFsIC8gMikgewpAQCAtMTk4LDcgKzE5OCw3
IEBAIHN0YXRpYyBpbnQgaWd0X21vY2tfY29udGludW91cyh2b2lkICphcmcpCiAJaWYgKGVycikK
IAkJcmV0dXJuIGVycjsKIAotCXRvdGFsID0gcmVzb3VyY2Vfc2l6ZSgmbWVtLT5yZWdpb24pOwor
CXRvdGFsID0gbWVtLT5yZWdpb24uc2l6ZTsKIAl0YXJnZXQgPSB0b3RhbCAvIDI7CiAKIAkvKgot
LSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
