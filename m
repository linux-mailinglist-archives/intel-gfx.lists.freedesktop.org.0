Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FFCE8D4D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 17:51:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE4966EC4C;
	Tue, 29 Oct 2019 16:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28576EC4C
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 16:51:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 09:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="401208379"
Received: from sslose-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.3.112])
 by fmsmga006.fm.intel.com with ESMTP; 29 Oct 2019 09:51:36 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 16:51:34 +0000
Message-Id: <20191029165134.28567-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/lmem: add the fake lmem region
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

SW50ZW5kZWQgZm9yIHVwc3RyZWFtIHRlc3Rpbmcgc28gdGhhdCB3ZSBjYW4gc3RpbGwgZXhlcmNp
c2UgdGhlIExNRU0KcGx1bWJpbmcgYW5kICFpOTE1X2dndHRfaGFzX2FwZXJ0dXJlIHBhdGhzLiBT
bW9rZSB0ZXN0ZWQgb24gU2t1bGwgQ2FueW9uCmRldmljZS4gVGhpcyB3b3JrcyBieSBhbGxvY2F0
aW5nIGFuIGludGVsX21lbW9yeV9yZWdpb24gZm9yIGEgcmVzZXJ2ZWQKcG9ydGlvbiBvZiBzeXN0
ZW0gbWVtb3J5LCB3aGljaCB3ZSB0cmVhdCBsaWtlIExNRU0uIEZvciB0aGUgTE1FTUJBUiB3ZQpz
dGVhbCB0aGUgYXBlcnR1cmUgYW5kIDE6MSBpdCBtYXAgdG8gdGhlIHN0b2xlbiByZWdpb24uCgpU
byBlbmFibGUgc2ltcGx5IHNldCB0aGUgaTkxNSBtb2RwYXJhbSBmYWtlX2xtZW1fc3RhcnQ9IG9u
IHRoZSBrZXJuZWwKY21kbGluZSB3aXRoIHRoZSBzdGFydCBvZiByZXNlcnZlZCByZWdpb24oc2Vl
IG1lbW1hcD0pLiBUaGUgc2l6ZSBvZiB0aGUKcmVnaW9uIHdlIGNhbiB1c2UgaXMgZGV0ZXJtaW5l
ZCBieSB0aGUgc2l6ZSBvZiB0aGUgbWFwcGFibGUgYXBlcnR1cmUsIHNvCnRoZSBzaXplIG9mIHJl
c2VydmVkIHJlZ2lvbiBzaG91bGQgYmUgPj0gbWFwcGFibGVfZW5kLiBGb3Igbm93IHdlIG9ubHkK
ZW5hYmxlIGZvciB0aGUgc2VsZnRlc3RzLiBEZXBlbmRzIG9uIENPTkZJR19EUk1fSTkxNV9VTlNU
QUJMRSBiZWluZwplbmFibGVkLgoKZWcuIG1lbW1hcD0yRyQxNkcgaTkxNS5mYWtlX2xtZW1fc3Rh
cnQ9MHg0MDAwMDAwMDAKCnYyOiBtYWtlIGZha2VfbG1lbV9zdGFydCBhbiBpOTE1IG1vZHBhcmFt
CgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNj
OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBB
YmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+CkNjOiBBcmth
ZGl1c3ogSGlsZXIgPGFya2FkaXVzei5oaWxlckBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fbG1lbS5jICAgfCAgMyArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
ICAgICAgICAgICAgfCAxNSArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5j
ICAgICAgICAgfCAgNSArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCAgICAg
ICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jIHwg
IDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oIHwgIDYgKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMgICB8IDkyICsrKysrKysr
KysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmgg
ICB8ICA1ICsrCiA4IGZpbGVzIGNoYW5nZWQsIDEzMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMKaW5kZXggOTI2ZjZjOTQwZTBkLi4wZTJiZjZi
N2UxNDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYwpAQCAtMjQs
NiArMjQsNyBAQCBpOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXBfcGFnZShzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLAogCXJlc291cmNlX3NpemVfdCBvZmZzZXQ7CiAKIAlvZmZzZXQg
PSBpOTE1X2dlbV9vYmplY3RfZ2V0X2RtYV9hZGRyZXNzKG9iaiwgbik7CisJb2Zmc2V0IC09IG9i
ai0+bW0ucmVnaW9uLT5yZWdpb24uc3RhcnQ7CiAKIAlyZXR1cm4gaW9fbWFwcGluZ19tYXBfd2Mo
Jm9iai0+bW0ucmVnaW9uLT5pb21hcCwgb2Zmc2V0LCBQQUdFX1NJWkUpOwogfQpAQCAtMzUsNiAr
MzYsNyBAQCBpOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXBfcGFnZV9hdG9taWMoc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlyZXNvdXJjZV9zaXplX3Qgb2Zmc2V0OwogCiAJb2Zm
c2V0ID0gaTkxNV9nZW1fb2JqZWN0X2dldF9kbWFfYWRkcmVzcyhvYmosIG4pOworCW9mZnNldCAt
PSBvYmotPm1tLnJlZ2lvbi0+cmVnaW9uLnN0YXJ0OwogCiAJcmV0dXJuIGlvX21hcHBpbmdfbWFw
X2F0b21pY193Yygmb2JqLT5tbS5yZWdpb24tPmlvbWFwLCBvZmZzZXQpOwogfQpAQCAtNDksNiAr
NTEsNyBAQCBpOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXAoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiwKIAlHRU1fQlVHX09OKCFpOTE1X2dlbV9vYmplY3RfaXNfY29udGlndW91cyhv
YmopKTsKIAogCW9mZnNldCA9IGk5MTVfZ2VtX29iamVjdF9nZXRfZG1hX2FkZHJlc3Mob2JqLCBu
KTsKKwlvZmZzZXQgLT0gb2JqLT5tbS5yZWdpb24tPnJlZ2lvbi5zdGFydDsKIAogCXJldHVybiBp
b19tYXBwaW5nX21hcF93Yygmb2JqLT5tbS5yZWdpb24tPmlvbWFwLCBvZmZzZXQsIHNpemUpOwog
fQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggMjEyNzNiNTE2ZGJlLi5kYjE3MzZkOTU2NTEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMTQ4Myw2ICsxNDgzLDIxIEBAIGludCBpOTE1
X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZp
Y2VfaWQgKmVudCkKIAlpZiAoIWk5MTVfbW9kcGFyYW1zLm51Y2xlYXJfcGFnZWZsaXAgJiYgbWF0
Y2hfaW5mby0+Z2VuIDwgNSkKIAkJZGV2X3ByaXYtPmRybS5kcml2ZXJfZmVhdHVyZXMgJj0gfkRS
SVZFUl9BVE9NSUM7CiAKKwkvKgorCSAqIENoZWNrIGlmIHdlIHN1cHBvcnQgZmFrZSBMTUVNIC0t
IGZvciBub3cgd2Ugb25seSB1bmxlYXNoIHRoaXMgZm9yCisJICogdGhlIGxpdmUgc2VsZnRlc3Rz
LgorCSAqLworCWlmIChJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9VTlNUQUJMRSkpIHsKKwkJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSAmJiBpOTE1X3NlbGZ0ZXN0LmxpdmUgJiYKKwkJ
ICAgIGk5MTVfbW9kcGFyYW1zLmZha2VfbG1lbV9zdGFydCkgeworCQkJbWt3cml0ZV9kZXZpY2Vf
aW5mbyhkZXZfcHJpdiktPm1lbW9yeV9yZWdpb25zID0KKwkJCQlSRUdJT05fU01FTSB8IFJFR0lP
Tl9MTUVNIHwgUkVHSU9OX1NUT0xFTjsKKwkJCW1rd3JpdGVfZGV2aWNlX2luZm8oZGV2X3ByaXYp
LT5pc19kZ2Z4ID0gdHJ1ZTsKKwkJCUdFTV9CVUdfT04oIUhBU19MTUVNKGRldl9wcml2KSk7CisJ
CQlHRU1fQlVHX09OKCFJU19ER0ZYKGRldl9wcml2KSk7CisJCX0KKwl9CisKIAlyZXQgPSBwY2lf
ZW5hYmxlX2RldmljZShwZGV2KTsKIAlpZiAocmV0KQogCQlnb3RvIG91dF9maW5pOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGFyYW1zLmMKaW5kZXggM2ZhNzlhZGIyYzFjLi45ZGIzNDM3ZmJkMTQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYwpAQCAtMTc5LDYgKzE3OSwxMSBAQCBpOTE1X3Bh
cmFtX25hbWVkKGVuYWJsZV9ndnQsIGJvb2wsIDA0MDAsCiAJIkVuYWJsZSBzdXBwb3J0IGZvciBJ
bnRlbCBHVlQtZyBncmFwaGljcyB2aXJ0dWFsaXphdGlvbiBob3N0IHN1cHBvcnQoZGVmYXVsdDpm
YWxzZSkiKTsKICNlbmRpZgogCisjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfVU5TVEFC
TEUpCitpOTE1X3BhcmFtX25hbWVkX3Vuc2FmZShmYWtlX2xtZW1fc3RhcnQsIHVsb25nLCAwNjAw
LAorCSJGYWtlIExNRU0gc3RhcnQgb2Zmc2V0IChkZWZhdWx0OiAwKSIpOworI2VuZGlmCisKIHN0
YXRpYyBfX2Fsd2F5c19pbmxpbmUgdm9pZCBfcHJpbnRfcGFyYW0oc3RydWN0IGRybV9wcmludGVy
ICpwLAogCQkJCQkgY29uc3QgY2hhciAqbmFtZSwKIAkJCQkJIGNvbnN0IGNoYXIgKnR5cGUsCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAppbmRleCBhMjc2MzE3YWQ3NGIuLjMxYjg4ZjI5N2Zi
YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCkBAIC02Niw2ICs2Niw3IEBAIHN0cnVj
dCBkcm1fcHJpbnRlcjsKIAlwYXJhbShpbnQsIGZhc3Rib290LCAtMSkgXAogCXBhcmFtKGludCwg
ZW5hYmxlX2RwY2RfYmFja2xpZ2h0LCAwKSBcCiAJcGFyYW0oY2hhciAqLCBmb3JjZV9wcm9iZSwg
Q09ORklHX0RSTV9JOTE1X0ZPUkNFX1BST0JFKSBcCisJcGFyYW0odW5zaWduZWQgbG9uZywgZmFr
ZV9sbWVtX3N0YXJ0LCAwKSBcCiAJLyogbGVhdmUgYm9vbHMgYXQgdGhlIGVuZCB0byBub3QgY3Jl
YXRlIGhvbGVzICovIFwKIAlwYXJhbShib29sLCBhbHBoYV9zdXBwb3J0LCBJU19FTkFCTEVEKENP
TkZJR19EUk1fSTkxNV9BTFBIQV9TVVBQT1JUKSkgXAogCXBhcmFtKGJvb2wsIGVuYWJsZV9oYW5n
Y2hlY2ssIHRydWUpIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21l
bW9yeV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24u
YwppbmRleCBhNjBmNzdmZjU4ZDQuLmJhYWVhZWNjNjRhZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX21lbW9yeV9yZWdpb24uYwpAQCAtMjI4LDYgKzIyOCw5IEBAIGludCBpbnRlbF9t
ZW1vcnlfcmVnaW9uc19od19wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJ
Y2FzZSBJTlRFTF9NRU1PUllfU1RPTEVOOgogCQkJbWVtID0gaTkxNV9nZW1fc3RvbGVuX3NldHVw
KGk5MTUpOwogCQkJYnJlYWs7CisJCWNhc2UgSU5URUxfTUVNT1JZX0xPQ0FMOgorCQkJbWVtID0g
aW50ZWxfc2V0dXBfZmFrZV9sbWVtKGk5MTUpOworCQkJYnJlYWs7CiAJCX0KIAogCQlpZiAoSVNf
RVJSKG1lbSkpIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9y
eV9yZWdpb24uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaApp
bmRleCAxOTkyMGMyNTZlZGUuLjIzODcyMjAwOTY3NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX21lbW9yeV9yZWdpb24uaApAQCAtMTAsNiArMTAsNyBAQAogI2luY2x1ZGUgPGxpbnV4
L2lvcG9ydC5oPgogI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8bGludXgvaW8t
bWFwcGluZy5oPgorI2luY2x1ZGUgPGRybS9kcm1fbW0uaD4KIAogI2luY2x1ZGUgImk5MTVfYnVk
ZHkuaCIKIApAQCAtNzEsNiArNzIsOSBAQCBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiB7CiAJ
c3RydWN0IGlvX21hcHBpbmcgaW9tYXA7CiAJc3RydWN0IHJlc291cmNlIHJlZ2lvbjsKIAorCS8q
IEZvciBmYWtlIExNRU0gKi8KKwlzdHJ1Y3QgZHJtX21tX25vZGUgZmFrZV9tYXBwYWJsZTsKKwog
CXN0cnVjdCBpOTE1X2J1ZGR5X21tIG1tOwogCXN0cnVjdCBtdXRleCBtbV9sb2NrOwogCkBAIC04
Myw2ICs4Nyw4IEBAIHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uIHsKIAl1bnNpZ25lZCBpbnQg
aW5zdGFuY2U7CiAJdW5zaWduZWQgaW50IGlkOwogCisJZG1hX2FkZHJfdCByZW1hcF9hZGRyOwor
CiAJc3RydWN0IHsKIAkJc3RydWN0IG11dGV4IGxvY2s7IC8qIFByb3RlY3RzIGFjY2VzcyB0byBv
YmplY3RzICovCiAJCXN0cnVjdCBsaXN0X2hlYWQgbGlzdDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9yZWdpb25fbG1lbS5jCmluZGV4IDlhMzUxYWY0NWNlNi4uNTgzMTE4MDk1NjM1IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMKQEAgLTksOSArOSw2MiBAQAog
I2luY2x1ZGUgImdlbS9pOTE1X2dlbV9yZWdpb24uaCIKICNpbmNsdWRlICJpbnRlbF9yZWdpb25f
bG1lbS5oIgogCitzdGF0aWMgaW50IGluaXRfZmFrZV9sbWVtX2JhcihzdHJ1Y3QgaW50ZWxfbWVt
b3J5X3JlZ2lvbiAqbWVtKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gbWVt
LT5pOTE1OworCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmaTkxNS0+Z2d0dDsKKwl1bnNpZ25l
ZCBsb25nIG47CisJaW50IHJldDsKKworCS8qIFdlIHdhbnQgdG8gMToxIG1hcCB0aGUgbWFwcGFi
bGUgYXBlcnR1cmUgdG8gb3VyIHJlc2VydmVkIHJlZ2lvbiAqLworCisJbWVtLT5mYWtlX21hcHBh
YmxlLnN0YXJ0ID0gMDsKKwltZW0tPmZha2VfbWFwcGFibGUuc2l6ZSA9IHJlc291cmNlX3NpemUo
Jm1lbS0+cmVnaW9uKTsKKwltZW0tPmZha2VfbWFwcGFibGUuY29sb3IgPSBJOTE1X0NPTE9SX1VO
RVZJQ1RBQkxFOworCisJcmV0ID0gZHJtX21tX3Jlc2VydmVfbm9kZSgmZ2d0dC0+dm0ubW0sICZt
ZW0tPmZha2VfbWFwcGFibGUpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKKwltZW0tPnJl
bWFwX2FkZHIgPSBkbWFfbWFwX3Jlc291cmNlKCZpOTE1LT5kcm0ucGRldi0+ZGV2LAorCQkJCQkg
ICBtZW0tPnJlZ2lvbi5zdGFydCwKKwkJCQkJICAgbWVtLT5mYWtlX21hcHBhYmxlLnNpemUsCisJ
CQkJCSAgIFBDSV9ETUFfQklESVJFQ1RJT05BTCwKKwkJCQkJICAgRE1BX0FUVFJfRk9SQ0VfQ09O
VElHVU9VUyk7CisJaWYgKGRtYV9tYXBwaW5nX2Vycm9yKCZpOTE1LT5kcm0ucGRldi0+ZGV2LCBt
ZW0tPnJlbWFwX2FkZHIpKSB7CisJCWRybV9tbV9yZW1vdmVfbm9kZSgmbWVtLT5mYWtlX21hcHBh
YmxlKTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJZm9yIChuID0gMDsgbiA8IG1lbS0+ZmFr
ZV9tYXBwYWJsZS5zaXplID4+IFBBR0VfU0hJRlQ7ICsrbikgeworCQlnZ3R0LT52bS5pbnNlcnRf
cGFnZSgmZ2d0dC0+dm0sCisJCQkJICAgICBtZW0tPnJlbWFwX2FkZHIgKyAobiA8PCBQQUdFX1NI
SUZUKSwKKwkJCQkgICAgIG4gPDwgUEFHRV9TSElGVCwKKwkJCQkgICAgIEk5MTVfQ0FDSEVfTk9O
RSwgMCk7CisJfQorCisJbWVtLT5yZWdpb24gPSAoc3RydWN0IHJlc291cmNlKURFRklORV9SRVNf
TUVNKG1lbS0+cmVtYXBfYWRkciwKKwkJCQkJCSAgICAgIG1lbS0+ZmFrZV9tYXBwYWJsZS5zaXpl
KTsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgdm9pZCByZWxlYXNlX2Zha2VfbG1lbV9iYXIo
c3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSkKK3sKKwlpZiAoZHJtX21tX25vZGVfYWxs
b2NhdGVkKCZtZW0tPmZha2VfbWFwcGFibGUpKQorCQlkcm1fbW1fcmVtb3ZlX25vZGUoJm1lbS0+
ZmFrZV9tYXBwYWJsZSk7CisKKwlkbWFfdW5tYXBfcmVzb3VyY2UoJm1lbS0+aTkxNS0+ZHJtLnBk
ZXYtPmRldiwKKwkJCSAgIG1lbS0+cmVtYXBfYWRkciwKKwkJCSAgIG1lbS0+ZmFrZV9tYXBwYWJs
ZS5zaXplLAorCQkJICAgUENJX0RNQV9CSURJUkVDVElPTkFMLAorCQkJICAgRE1BX0FUVFJfRk9S
Q0VfQ09OVElHVU9VUyk7Cit9CisKIHN0YXRpYyB2b2lkCiByZWdpb25fbG1lbV9yZWxlYXNlKHN0
cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCiB7CisJcmVsZWFzZV9mYWtlX2xtZW1fYmFy
KG1lbSk7CiAJaW9fbWFwcGluZ19maW5pKCZtZW0tPmlvbWFwKTsKIAlpbnRlbF9tZW1vcnlfcmVn
aW9uX3JlbGVhc2VfYnVkZHkobWVtKTsKIH0KQEAgLTIxLDYgKzc0LDExIEBAIHJlZ2lvbl9sbWVt
X2luaXQoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSkKIHsKIAlpbnQgcmV0OwogCisJ
aWYgKGk5MTVfbW9kcGFyYW1zLmZha2VfbG1lbV9zdGFydCkgeworCQlyZXQgPSBpbml0X2Zha2Vf
bG1lbV9iYXIobWVtKTsKKwkJR0VNX0JVR19PTihyZXQpOworCX0KKwogCWlmICghaW9fbWFwcGlu
Z19pbml0X3djKCZtZW0tPmlvbWFwLAogCQkJCW1lbS0+aW9fc3RhcnQsCiAJCQkJcmVzb3VyY2Vf
c2l6ZSgmbWVtLT5yZWdpb24pKSkKQEAgLTM4LDMgKzk2LDM3IEBAIGNvbnN0IHN0cnVjdCBpbnRl
bF9tZW1vcnlfcmVnaW9uX29wcyBpbnRlbF9yZWdpb25fbG1lbV9vcHMgPSB7CiAJLnJlbGVhc2Ug
PSByZWdpb25fbG1lbV9yZWxlYXNlLAogCS5jcmVhdGVfb2JqZWN0ID0gX19pOTE1X2dlbV9sbWVt
X29iamVjdF9jcmVhdGUsCiB9OworCitzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqCitpbnRl
bF9zZXR1cF9mYWtlX2xtZW0oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJc3Ry
dWN0IHBjaV9kZXYgKnBkZXYgPSBpOTE1LT5kcm0ucGRldjsKKwlzdHJ1Y3QgaW50ZWxfbWVtb3J5
X3JlZ2lvbiAqbWVtOworCXJlc291cmNlX3NpemVfdCBtYXBwYWJsZV9lbmQ7CisJcmVzb3VyY2Vf
c2l6ZV90IGlvX3N0YXJ0OworCXJlc291cmNlX3NpemVfdCBzdGFydDsKKworCUdFTV9CVUdfT04o
aTkxNV9nZ3R0X2hhc19hcGVydHVyZSgmaTkxNS0+Z2d0dCkpOworCUdFTV9CVUdfT04oIWk5MTVf
bW9kcGFyYW1zLmZha2VfbG1lbV9zdGFydCk7CisKKwkvKiBZb3VyIG1hcHBhYmxlIGFwZXJ0dXJl
IGJlbG9uZ3MgdG8gbWUgbm93ISAqLworCW1hcHBhYmxlX2VuZCA9IHBjaV9yZXNvdXJjZV9sZW4o
cGRldiwgMik7CisJaW9fc3RhcnQgPSBwY2lfcmVzb3VyY2Vfc3RhcnQocGRldiwgMiksCisJc3Rh
cnQgPSBpOTE1X21vZHBhcmFtcy5mYWtlX2xtZW1fc3RhcnQ7CisKKwltZW0gPSBpbnRlbF9tZW1v
cnlfcmVnaW9uX2NyZWF0ZShpOTE1LAorCQkJCQkgc3RhcnQsCisJCQkJCSBtYXBwYWJsZV9lbmQs
CisJCQkJCSBQQUdFX1NJWkUsCisJCQkJCSBpb19zdGFydCwKKwkJCQkJICZpbnRlbF9yZWdpb25f
bG1lbV9vcHMpOworCWlmICghSVNfRVJSKG1lbSkpIHsKKwkJRFJNX0lORk8oIkludGVsIGdyYXBo
aWNzIGZha2UgTE1FTTogJXBSXG4iLCAmbWVtLT5yZWdpb24pOworCQlEUk1fSU5GTygiSW50ZWwg
Z3JhcGhpY3MgZmFrZSBMTUVNIElPIHN0YXJ0OiAlbGx4XG4iLAorCQkJICh1NjQpbWVtLT5pb19z
dGFydCk7CisJCURSTV9JTkZPKCJJbnRlbCBncmFwaGljcyBmYWtlIExNRU0gc2l6ZTogJWxseFxu
IiwKKwkJCSAodTY0KXJlc291cmNlX3NpemUoJm1lbS0+cmVnaW9uKSk7CisJfQorCisJcmV0dXJu
IG1lbTsKK30KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9s
bWVtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5oCmluZGV4IGVk
MmEzYmFiNjQ0My4uMjEzZGVmN2M3YjhhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9yZWdpb25fbG1lbS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Jl
Z2lvbl9sbWVtLmgKQEAgLTYsNiArNiwxMSBAQAogI2lmbmRlZiBfX0lOVEVMX1JFR0lPTl9MTUVN
X0gKICNkZWZpbmUgX19JTlRFTF9SRUdJT05fTE1FTV9ICiAKK3N0cnVjdCBkcm1faTkxNV9wcml2
YXRlOworCiBleHRlcm4gY29uc3Qgc3RydWN0IGludGVsX21lbW9yeV9yZWdpb25fb3BzIGludGVs
X3JlZ2lvbl9sbWVtX29wczsKIAorc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKgoraW50ZWxf
c2V0dXBfZmFrZV9sbWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKKwogI2VuZGlm
IC8qICFfX0lOVEVMX1JFR0lPTl9MTUVNX0ggKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
