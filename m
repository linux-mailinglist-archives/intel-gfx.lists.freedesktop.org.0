Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AC3A5C49
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 20:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB01898F5;
	Mon,  2 Sep 2019 18:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1180C898F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 18:32:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 11:32:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,460,1559545200"; d="scan'208";a="176377150"
Received: from aquilante.fi.intel.com (HELO teofilatto.example.org)
 ([10.237.72.186])
 by orsmga008.jf.intel.com with ESMTP; 02 Sep 2019 11:32:48 -0700
From: Andi Shyti <andi.shyti@intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Mon,  2 Sep 2019 21:32:42 +0300
Message-Id: <20190902183242.5450-1-andi.shyti@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH] drm/i915: Hook up GT power management
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

UmVmYWN0b3IgdGhlIEdUIHBvd2VyIG1hbmFnZW1lbnQgaW50ZXJmYWNlIHRvIHdvcmsgdGhyb3Vn
aCB0aGUgR1Qgbm93CnRoYXQgaXQgaXMgdW5kZXIgdGhlIGNvbnRyb2wgb2YgZ3QvCgpCYXNlZCBv
biBhIHBhdGNoIGJ5IENocmlzIFdpbHNvbi4KClNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5dGkgPGFu
ZGkuc2h5dGlAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgfCAgMSAr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICB8IDQ2ICsrKysrKysrKysr
KysrKysrKysrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oICAgICB8
ICA5ICsrKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jICB8IDM2ICsr
KysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5o
ICB8ICAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICB8IDIyICsr
KystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgfCAyOSAr
KystLS0tLS0tLS0tLS0tCiA3IGZpbGVzIGNoYW5nZWQsIDk5IGluc2VydGlvbnMoKyksIDQ2IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggOTJl
NTNjMjU0MjRjLi5iMzk5M2QyNGI4M2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wbS5jCkBAIC0xMzcsNiArMTM3LDcgQEAgc3RhdGljIGJvb2wgc3dpdGNoX3RvX2tlcm5lbF9j
b250ZXh0X3N5bmMoc3RydWN0IGludGVsX2d0ICpndCkKIAogYm9vbCBpOTE1X2dlbV9sb2FkX3Bv
d2VyX2NvbnRleHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CisJaW50ZWxfZ3Rf
cG1fZW5hYmxlKCZpOTE1LT5ndCk7CiAJcmV0dXJuIHN3aXRjaF90b19rZXJuZWxfY29udGV4dF9z
eW5jKCZpOTE1LT5ndCk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCmluZGV4IGQ0
OGVjOWE3NmVkMS4uMDgwZTZkNzRmZjU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMK
QEAgLTcsNiArNyw3IEBACiAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKICNpbmNsdWRlICJpbnRlbF9n
dF9wbS5oIgogI2luY2x1ZGUgImludGVsX3VuY29yZS5oIgorI2luY2x1ZGUgImludGVsX3BtLmgi
CiAKIHZvaWQgaW50ZWxfZ3RfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKQEAgLTI3LDYgKzI4LDkgQEAgdm9pZCBpbnRlbF9n
dF9pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQogdm9pZCBpbnRlbF9ndF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQogewogCWk5MTUtPmd0LmdndHQgPSAmaTkxNS0+Z2d0dDsKKworCS8qIEJJT1Mgb2Z0ZW4g
bGVhdmVzIFJDNiBlbmFibGVkLCBidXQgZGlzYWJsZSBpdCBmb3IgaHcgaW5pdCAqLworCWludGVs
X2d0X3BtX2Rpc2FibGUoJmk5MTUtPmd0KTsKIH0KIAogc3RhdGljIHZvaWQgcm13X3NldChzdHJ1
Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsIGk5MTVfcmVnX3QgcmVnLCB1MzIgc2V0KQpAQCAtMjIy
LDcgKzIyNiwxNCBAQCB2b2lkIGludGVsX2d0X2NoaXBzZXRfZmx1c2goc3RydWN0IGludGVsX2d0
ICpndCkKIAkJaW50ZWxfZ3R0X2NoaXBzZXRfZmx1c2goKTsKIH0KIAotaW50IGludGVsX2d0X2lu
aXRfc2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBpbnQgc2l6ZSkKK3ZvaWQg
aW50ZWxfZ3RfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCit7CisJaWYgKElT
X0dFTihndC0+aTkxNSwgNSkpCisJCWludGVsX2dwdV9pcHNfaW5pdChndC0+aTkxNSk7CisKK30K
Kworc3RhdGljIGludCBpbnRlbF9ndF9pbml0X3NjcmF0Y2goc3RydWN0IGludGVsX2d0ICpndCwg
dW5zaWduZWQgaW50IHNpemUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBn
dC0+aTkxNTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwpAQCAtMjU2LDExICsy
NjcsNDIgQEAgaW50IGludGVsX2d0X2luaXRfc2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1
bnNpZ25lZCBpbnQgc2l6ZSkKIAlyZXR1cm4gcmV0OwogfQogCi12b2lkIGludGVsX2d0X2Zpbmlf
c2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQorc3RhdGljIHZvaWQgaW50ZWxfZ3RfZmluaV9z
Y3JhdGNoKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVh
c2UoJmd0LT5zY3JhdGNoLCAwKTsKIH0KIAoraW50IGludGVsX2d0X2luaXQoc3RydWN0IGludGVs
X2d0ICpndCkKK3sKKwlpbnQgZXJyOworCisJZXJyID0gaW50ZWxfZ3RfaW5pdF9zY3JhdGNoKGd0
LCBJU19HRU4oZ3QtPmk5MTUsIDIpID8gU1pfMjU2SyA6IFNaXzRLKTsKKwlpZiAoZXJyKQorCQly
ZXR1cm4gZXJyOworCisJcmV0dXJuIDA7Cit9CisKK3ZvaWQgaW50ZWxfZ3RfZHJpdmVyX3JlbW92
ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCUdFTV9CVUdfT04oZ3QtPmF3YWtlKTsKKwlpbnRl
bF9ndF9wbV9kaXNhYmxlKGd0KTsKK30KKwordm9pZCBpbnRlbF9ndF9kcml2ZXJfdW5yZWdpc3Rl
cihzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCWludGVsX2dwdV9pcHNfdGVhcmRvd24oKTsKK30K
Kwordm9pZCBpbnRlbF9ndF9kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQorewor
CS8qIFBhcmFub2lhOiBtYWtlIHN1cmUgd2UgaGF2ZSBkaXNhYmxlZCBldmVyeXRoaW5nIGJlZm9y
ZSB3ZSBleGl0LiAqLworCWludGVsX2d0X3BtX2Rpc2FibGUoZ3QpOworCisJaW50ZWxfY2xlYW51
cF9ndF9wb3dlcnNhdmUoZ3QtPmk5MTUpOworCWludGVsX2d0X2Zpbmlfc2NyYXRjaChndCk7Cit9
CisKIHZvaWQgaW50ZWxfZ3RfZHJpdmVyX2xhdGVfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQogewogCWludGVsX3VjX2RyaXZlcl9sYXRlX3JlbGVhc2UoJmd0LT51Yyk7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3QuaAppbmRleCA0OTIwY2IzNTFmMTAuLjE3YWYyMWNiN2VkMyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCkBAIC0yOSw2ICsyOSwxMiBAQCBzdGF0aWMgaW5saW5l
IHN0cnVjdCBpbnRlbF9ndCAqaHVjX3RvX2d0KHN0cnVjdCBpbnRlbF9odWMgKmh1YykKIAogdm9p
ZCBpbnRlbF9ndF9pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KTsKIHZvaWQgaW50ZWxfZ3RfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSk7CitpbnQgaW50ZWxfZ3RfaW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsK
K3ZvaWQgaW50ZWxfZ3RfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOworCit2
b2lkIGludGVsX2d0X2RyaXZlcl91bnJlZ2lzdGVyKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwordm9p
ZCBpbnRlbF9ndF9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwordm9pZCBpbnRl
bF9ndF9kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIAogdm9pZCBpbnRlbF9n
dF9kcml2ZXJfbGF0ZV9yZWxlYXNlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwogCkBAIC00MSw5ICs0
Nyw2IEBAIHZvaWQgaW50ZWxfZ3RfY2hpcHNldF9mbHVzaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsK
IAogdm9pZCBpbnRlbF9ndF9pbml0X2hhbmdjaGVjayhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIAot
aW50IGludGVsX2d0X2luaXRfc2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBp
bnQgc2l6ZSk7Ci12b2lkIGludGVsX2d0X2Zpbmlfc2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KTsKLQogc3RhdGljIGlubGluZSB1MzIgaW50ZWxfZ3Rfc2NyYXRjaF9vZmZzZXQoY29uc3Qgc3Ry
dWN0IGludGVsX2d0ICpndCwKIAkJCQkJICBlbnVtIGludGVsX2d0X3NjcmF0Y2hfZmllbGQgZmll
bGQpCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwppbmRleCBhYTZjZjAxNTJj
ZTcuLjZiYTBkMjA2OWY4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCkBA
IC0xMjQsNiArMTI0LDQyIEBAIHZvaWQgaW50ZWxfZ3Rfc2FuaXRpemUoc3RydWN0IGludGVsX2d0
ICpndCwgYm9vbCBmb3JjZSkKIAkJX19pbnRlbF9lbmdpbmVfcmVzZXQoZW5naW5lLCBmYWxzZSk7
CiB9CiAKK3N0YXRpYyBib29sIGlzX21vY2tfZGV2aWNlKGNvbnN0IHN0cnVjdCBpbnRlbF9ndCAq
Z3QpCit7CisJcmV0dXJuIEk5MTVfU0VMRlRFU1RfT05MWShndC0+YXdha2UgPT0gLTEpOworfQor
Cit2b2lkIGludGVsX2d0X3BtX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKKwllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKKwor
CS8qIFBvd2Vyc2F2aW5nIGlzIGNvbnRyb2xsZWQgYnkgdGhlIGhvc3Qgd2hlbiBpbnNpZGUgYSBW
TSAqLworCWlmIChpbnRlbF92Z3B1X2FjdGl2ZShndC0+aTkxNSkpCisJCXJldHVybjsKKworCWlm
IChpc19tb2NrX2RldmljZShndCkpCisJCXJldHVybjsKKworCWludGVsX2d0X3BtX2dldChndCk7
CisKKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndC0+aTkxNSwgaWQpIHsKKwkJaW50ZWxfZW5n
aW5lX3BtX2dldChlbmdpbmUpOworCQllbmdpbmUtPnNlcmlhbCsrOyAvKiBmb3JjZSBrZXJuZWwg
Y29udGV4dCByZWxvYWQgKi8KKwkJaW50ZWxfZW5naW5lX3BtX3B1dChlbmdpbmUpOworCX0KKwor
CWludGVsX2d0X3BtX3B1dChndCk7Cit9CisKK3ZvaWQgaW50ZWxfZ3RfcG1fZGlzYWJsZShzdHJ1
Y3QgaW50ZWxfZ3QgKmd0KQoreworCWlmIChpc19tb2NrX2RldmljZShndCkpCisJCXJldHVybjsK
KworCWludGVsX3Nhbml0aXplX2d0X3Bvd2Vyc2F2ZShndC0+aTkxNSk7Cit9CisKIGludCBpbnRl
bF9ndF9yZXN1bWUoc3RydWN0IGludGVsX2d0ICpndCkKIHsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dF9wbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uaAppbmRleCBmYjM5
ZDk5Y2Q2ZWUuLmQxZjNlMmUyMzkzNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfcG0uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9w
bS5oCkBAIC00Myw2ICs0Myw4IEBAIHN0YXRpYyBpbmxpbmUgaW50IGludGVsX2d0X3BtX3dhaXRf
Zm9yX2lkbGUoc3RydWN0IGludGVsX2d0ICpndCkKIH0KIAogdm9pZCBpbnRlbF9ndF9wbV9pbml0
X2Vhcmx5KHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwordm9pZCBpbnRlbF9ndF9wbV9lbmFibGUoc3Ry
dWN0IGludGVsX2d0ICpndCk7Cit2b2lkIGludGVsX2d0X3BtX2Rpc2FibGUoc3RydWN0IGludGVs
X2d0ICpndCk7CiAKIHZvaWQgaW50ZWxfZ3Rfc2FuaXRpemUoc3RydWN0IGludGVsX2d0ICpndCwg
Ym9vbCBmb3JjZSk7CiBpbnQgaW50ZWxfZ3RfcmVzdW1lKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggYmVjMjU5NDJkNzdkLi44NGMyZDcwOTY0ZGEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMTI3OSw5ICsxMjc5LDYgQEAgc3RhdGljIGludCBp
OTE1X2RyaXZlcl9od19wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
cG1fcW9zX2FkZF9yZXF1ZXN0KCZkZXZfcHJpdi0+cG1fcW9zLCBQTV9RT1NfQ1BVX0RNQV9MQVRF
TkNZLAogCQkJICAgUE1fUU9TX0RFRkFVTFRfVkFMVUUpOwogCi0JLyogQklPUyBvZnRlbiBsZWF2
ZXMgUkM2IGVuYWJsZWQsIGJ1dCBkaXNhYmxlIGl0IGZvciBodyBpbml0ICovCi0JaW50ZWxfc2Fu
aXRpemVfZ3RfcG93ZXJzYXZlKGRldl9wcml2KTsKLQogCWludGVsX2d0X2luaXRfd29ya2Fyb3Vu
ZHMoZGV2X3ByaXYpOwogCiAJLyogT24gdGhlIDk0NUcvR00sIHRoZSBjaGlwc2V0IHJlcG9ydHMg
dGhlIE1TSSBjYXBhYmlsaXR5IG9uIHRoZQpAQCAtMTM4Nyw4ICsxMzg0LDcgQEAgc3RhdGljIHZv
aWQgaTkxNV9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCQlhY3BpX3ZpZGVvX3JlZ2lzdGVyKCk7CiAJfQogCi0JaWYgKElTX0dFTihkZXZfcHJpdiwg
NSkpCi0JCWludGVsX2dwdV9pcHNfaW5pdChkZXZfcHJpdik7CisJaW50ZWxfZ3RfZHJpdmVyX3Jl
Z2lzdGVyKCZkZXZfcHJpdi0+Z3QpOwogCiAJaW50ZWxfYXVkaW9faW5pdChkZXZfcHJpdik7CiAK
QEAgLTE0MzEsNyArMTQyNyw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3VucmVnaXN0ZXIo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqLwogCWRybV9rbXNfaGVscGVy
X3BvbGxfZmluaSgmZGV2X3ByaXYtPmRybSk7CiAKLQlpbnRlbF9ncHVfaXBzX3RlYXJkb3duKCk7
CisJaW50ZWxfZ3RfZHJpdmVyX3VucmVnaXN0ZXIoJmRldl9wcml2LT5ndCk7CiAJYWNwaV92aWRl
b191bnJlZ2lzdGVyKCk7CiAJaW50ZWxfb3ByZWdpb25fdW5yZWdpc3RlcihkZXZfcHJpdik7CiAK
QEAgLTE1NzQsMTAgKzE1NzAsOCBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9k
ZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCiAKIG91dF9jbGVhbnVw
X2h3OgogCWk5MTVfZHJpdmVyX2h3X3JlbW92ZShkZXZfcHJpdik7CisJaW50ZWxfZ3RfZHJpdmVy
X3JlbGVhc2UoJmRldl9wcml2LT5ndCk7CiAJaTkxNV9nZ3R0X2RyaXZlcl9yZWxlYXNlKGRldl9w
cml2KTsKLQotCS8qIFBhcmFub2lhOiBtYWtlIHN1cmUgd2UgaGF2ZSBkaXNhYmxlZCBldmVyeXRo
aW5nIGJlZm9yZSB3ZSBleGl0LiAqLwotCWludGVsX3Nhbml0aXplX2d0X3Bvd2Vyc2F2ZShkZXZf
cHJpdik7CiBvdXRfY2xlYW51cF9tbWlvOgogCWk5MTVfZHJpdmVyX21taW9fcmVsZWFzZShkZXZf
cHJpdik7CiBvdXRfcnVudGltZV9wbV9wdXQ6CkBAIC0xNjQ4LDggKzE2NDIsNyBAQCBzdGF0aWMg
dm9pZCBpOTE1X2RyaXZlcl9yZWxlYXNlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAKIAlpOTE1
X2dndHRfZHJpdmVyX3JlbGVhc2UoZGV2X3ByaXYpOwogCi0JLyogUGFyYW5vaWE6IG1ha2Ugc3Vy
ZSB3ZSBoYXZlIGRpc2FibGVkIGV2ZXJ5dGhpbmcgYmVmb3JlIHdlIGV4aXQuICovCi0JaW50ZWxf
c2FuaXRpemVfZ3RfcG93ZXJzYXZlKGRldl9wcml2KTsKKwlpbnRlbF9ndF9kcml2ZXJfcmVsZWFz
ZSgmZGV2X3ByaXYtPmd0KTsKIAogCWk5MTVfZHJpdmVyX21taW9fcmVsZWFzZShkZXZfcHJpdik7
CiAKQEAgLTE4NzksNyArMTg3Miw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kcm1fcmVzdW1lKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYpCiAJaW50IHJldDsKIAogCWRpc2FibGVfcnBtX3dha2VyZWZfYXNz
ZXJ0cygmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOwotCWludGVsX3Nhbml0aXplX2d0X3Bvd2Vyc2F2
ZShkZXZfcHJpdik7CisJaW50ZWxfZ3RfcG1fZGlzYWJsZSgmZGV2X3ByaXYtPmd0KTsKIAogCWk5
MTVfZ2VtX3Nhbml0aXplKGRldl9wcml2KTsKIApAQCAtMjAwNyw3ICsyMDAwLDcgQEAgc3RhdGlj
IGludCBpOTE1X2RybV9yZXN1bWVfZWFybHkoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIAogCWlu
dGVsX2Rpc3BsYXlfcG93ZXJfcmVzdW1lX2Vhcmx5KGRldl9wcml2KTsKIAotCWludGVsX3Nhbml0
aXplX2d0X3Bvd2Vyc2F2ZShkZXZfcHJpdik7CisJaW50ZWxfZ3RfcG1fZGlzYWJsZSgmZGV2X3By
aXYtPmd0KTsKIAogCWludGVsX3Bvd2VyX2RvbWFpbnNfcmVzdW1lKGRldl9wcml2KTsKIApAQCAt
MjU1MSw5ICsyNTQ0LDYgQEAgc3RhdGljIGludCBpbnRlbF9ydW50aW1lX3N1c3BlbmQoc3RydWN0
IGRldmljZSAqa2RldikKIAlzdHJ1Y3QgaW50ZWxfcnVudGltZV9wbSAqcnBtID0gJmRldl9wcml2
LT5ydW50aW1lX3BtOwogCWludCByZXQgPSAwOwogCi0JaWYgKFdBUk5fT05fT05DRSghKGRldl9w
cml2LT5ndF9wbS5yYzYuZW5hYmxlZCAmJiBIQVNfUkM2KGRldl9wcml2KSkpKQotCQlyZXR1cm4g
LUVOT0RFVjsKLQogCWlmIChXQVJOX09OX09OQ0UoIUhBU19SVU5USU1FX1BNKGRldl9wcml2KSkp
CiAJCXJldHVybiAtRU5PREVWOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCA5NWU3YzUy
Y2Y4ZWQuLmFhNjg2MzQyMGQyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xMzc1LDE3
ICsxMzc1LDYgQEAgc3RhdGljIGludCBfX2ludGVsX2VuZ2luZXNfcmVjb3JkX2RlZmF1bHRzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCXJldHVybiBlcnI7CiB9CiAKLXN0YXRpYyBp
bnQKLWk5MTVfZ2VtX2luaXRfc2NyYXRjaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwg
dW5zaWduZWQgaW50IHNpemUpCi17Ci0JcmV0dXJuIGludGVsX2d0X2luaXRfc2NyYXRjaCgmaTkx
NS0+Z3QsIHNpemUpOwotfQotCi1zdGF0aWMgdm9pZCBpOTE1X2dlbV9maW5pX3NjcmF0Y2goc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCi17Ci0JaW50ZWxfZ3RfZmluaV9zY3JhdGNoKCZp
OTE1LT5ndCk7Ci19Ci0KIHN0YXRpYyBpbnQgaW50ZWxfZW5naW5lc192ZXJpZnlfd29ya2Fyb3Vu
ZHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lOwpAQCAtMTQzNiwxMiArMTQyNSw3IEBAIGludCBpOTE1X2dlbV9pbml0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJZ290byBlcnJfdW5sb2NrOwogCX0K
IAotCXJldCA9IGk5MTVfZ2VtX2luaXRfc2NyYXRjaChkZXZfcHJpdiwKLQkJCQkgICAgSVNfR0VO
KGRldl9wcml2LCAyKSA/IFNaXzI1NksgOiBQQUdFX1NJWkUpOwotCWlmIChyZXQpIHsKLQkJR0VN
X0JVR19PTihyZXQgPT0gLUVJTyk7Ci0JCWdvdG8gZXJyX2dndHQ7Ci0JfQorCWludGVsX2d0X2lu
aXQoJmRldl9wcml2LT5ndCk7CiAKIAlyZXQgPSBpbnRlbF9lbmdpbmVzX3NldHVwKGRldl9wcml2
KTsKIAlpZiAocmV0KSB7CkBAIC0xNTM0LDggKzE1MTgsNyBAQCBpbnQgaTkxNV9nZW1faW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKHJldCAhPSAtRUlPKQogCQlp
OTE1X2dlbV9jb250ZXh0c19maW5pKGRldl9wcml2KTsKIGVycl9zY3JhdGNoOgotCWk5MTVfZ2Vt
X2Zpbmlfc2NyYXRjaChkZXZfcHJpdik7Ci1lcnJfZ2d0dDoKKwlpbnRlbF9ndF9kcml2ZXJfcmVs
ZWFzZSgmZGV2X3ByaXYtPmd0KTsKIGVycl91bmxvY2s6CiAJaW50ZWxfdW5jb3JlX2ZvcmNld2Fr
ZV9wdXQoJmRldl9wcml2LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCW11dGV4X3VubG9jaygm
ZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwpAQCAtMTU4NywxMiArMTU3MCwxMCBAQCB2b2lk
IGk5MTVfZ2VtX2RyaXZlcl91bnJlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogCiB2b2lkIGk5MTVfZ2VtX2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogewotCUdFTV9CVUdfT04oZGV2X3ByaXYtPmd0LmF3YWtlKTsKLQogCWludGVs
X3dha2VyZWZfYXV0b19maW5pKCZkZXZfcHJpdi0+Z2d0dC51c2VyZmF1bHRfd2FrZXJlZik7CiAK
IAlpOTE1X2dlbV9zdXNwZW5kX2xhdGUoZGV2X3ByaXYpOwotCWludGVsX2Rpc2FibGVfZ3RfcG93
ZXJzYXZlKGRldl9wcml2KTsKKwlpbnRlbF9ndF9kcml2ZXJfcmVtb3ZlKCZkZXZfcHJpdi0+Z3Qp
OwogCiAJLyogRmx1c2ggYW55IG91dHN0YW5kaW5nIHVucGluX3dvcmsuICovCiAJaTkxNV9nZW1f
ZHJhaW5fd29ya3F1ZXVlKGRldl9wcml2KTsKQEAgLTE2MTAsMTMgKzE1OTEsMTEgQEAgdm9pZCBp
OTE1X2dlbV9kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
CiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCWludGVsX2VuZ2lu
ZXNfY2xlYW51cChkZXZfcHJpdik7CiAJaTkxNV9nZW1fY29udGV4dHNfZmluaShkZXZfcHJpdik7
Ci0JaTkxNV9nZW1fZmluaV9zY3JhdGNoKGRldl9wcml2KTsKKwlpbnRlbF9ndF9kcml2ZXJfcmVs
ZWFzZSgmZGV2X3ByaXYtPmd0KTsKIAltdXRleF91bmxvY2soJmRldl9wcml2LT5kcm0uc3RydWN0
X211dGV4KTsKIAogCWludGVsX3dhX2xpc3RfZnJlZSgmZGV2X3ByaXYtPmd0X3dhX2xpc3QpOwog
Ci0JaW50ZWxfY2xlYW51cF9ndF9wb3dlcnNhdmUoZGV2X3ByaXYpOwotCiAJaW50ZWxfdWNfY2xl
YW51cF9maXJtd2FyZXMoJmRldl9wcml2LT5ndC51Yyk7CiAJaTkxNV9nZW1fY2xlYW51cF91c2Vy
cHRyKGRldl9wcml2KTsKIAlpbnRlbF90aW1lbGluZXNfZmluaShkZXZfcHJpdik7Ci0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
