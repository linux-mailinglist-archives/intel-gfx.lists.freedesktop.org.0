Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7514615AB72
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 15:56:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C1D6F513;
	Wed, 12 Feb 2020 14:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C1126F513
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 14:56:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 06:56:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="222308043"
Received: from amanna.iind.intel.com ([10.223.74.53])
 by orsmga007.jf.intel.com with ESMTP; 12 Feb 2020 06:56:22 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 20:15:22 +0530
Message-Id: <20200212144522.23121-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915/dsb: Pre allocate and late cleanup
 of cmd buffer
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlLWFsbG9jYXRlIGNvbW1hbmQgYnVmZmVyIGluIGF0b21pY19jb21taXQgdXNpbmcgaW50ZWxf
ZHNiX3ByZXBhcmUKZnVuY3Rpb24gd2hpY2ggYWxzbyBpbmNsdWRlcyBwaW5uaW5nIGFuZCBtYXAg
aW4gY3B1IGRvbWFpbi4KCk5vIGNoYW5nZSBpcyBkc2Igd3JpdGUvY29tbWl0IGZ1bmN0aW9ucy4K
Ck5vdyBkc2IgZ2V0L3B1dCBmdW5jdGlvbiBpcyByZWZhY3RvcmVkIGFuZCBjdXJyZW50bHkgdXNl
ZCBvbmx5IGZvcgpyZWZlcmVuY2UgY291bnRpbmcuIEJlbG93IGRzYiBhcGkgYWRkZWQgdG8gZG8g
cmVzcGVjdGl2ZSBqb2IKbWVudGlvbmVkIGJlbG93LgoKaW50ZWxfZHNiX3ByZXBhcmUgLSBBbGxv
Y2F0ZSwgcGluIGFuZCBtYXAgdGhlIGJ1ZmZlci4KaW50ZWxfZHNiX2NsZWFudXAgLSBVbnBpbiBh
bmQgcmVsZWFzZSB0aGUgZ2VtIG9iamVjdC4KClJGQzogSW5pdGlhbCBwYXRjaCBmb3IgZGVzaWdu
IHJldmlldy4KdjI6IGluY2x1ZGVkIF9pbml0KCkgcGFydCBpbiBfcHJlcGFyZSgpLiBbRGFuaWVs
LCBWaWxsZV0KdjM6IGRzYl9jbGVhbnVwIGNhbGxlZCBhZnRlciBjbGVhbnVwX3BsYW5lcy4gW0Rh
bmllbF0KCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+ClNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEg
PGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgIDM2ICsrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jICAgICB8IDEzMiArKysrKysrKysrKystLS0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oICAgICB8ICAgMiArCiAzIGZpbGVzIGNoYW5n
ZWQsIDExNiBpbnNlcnRpb25zKCspLCA1NCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDYxYmExZjIyNTZhMC4uYWU5MDY4
N2UzYTZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwpAQCAtMTUwNzYsNiArMTUwNzYsMTkgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2so
c3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAogc3RhdGljIGludCBpbnRlbF9hdG9taWNfcHJlcGFy
ZV9jb21taXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiB7CisJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisJc3RydWN0IGludGVsX2NydGMgKmNydGM7CisJ
aW50IGk7CisKKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywg
Y3J0Y19zdGF0ZSwgaSkgeworCQlib29sIG1vZGVfY2hhbmdlZCA9IG5lZWRzX21vZGVzZXQoY3J0
Y19zdGF0ZSk7CisKKwkJaWYgKG1vZGVfY2hhbmdlZCB8fCBjcnRjX3N0YXRlLT51cGRhdGVfcGlw
ZSB8fAorCQkgICAgY3J0Y19zdGF0ZS0+dWFwaS5jb2xvcl9tZ210X2NoYW5nZWQpIHsKKwkJCWlu
dGVsX2RzYl9wcmVwYXJlKGNydGMpOworCQl9CisJfQorCiAJcmV0dXJuIGRybV9hdG9taWNfaGVs
cGVyX3ByZXBhcmVfcGxhbmVzKHN0YXRlLT5iYXNlLmRldiwKIAkJCQkJCSZzdGF0ZS0+YmFzZSk7
CiB9CkBAIC0xNTY0MywxNSArMTU2NTYsMjYgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2Nv
bW1pdF9mZW5jZV93YWl0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKmludGVsX3N0YXQKIAkJ
ICAgICZ3YWl0X3Jlc2V0KTsKIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfY2xlYW51cF9kc2JzKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQoreworCXN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlOworCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCWludCBpOworCisJ
Zm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIGNydGNfc3RhdGUs
IGkpCisJCWludGVsX2RzYl9jbGVhbnVwKGNydGMpOworfQorCiBzdGF0aWMgdm9pZCBpbnRlbF9h
dG9taWNfY2xlYW51cF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIHsKLQlzdHJ1Y3Qg
ZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPQotCQljb250YWluZXJfb2Yod29yaywgc3RydWN0IGRy
bV9hdG9taWNfc3RhdGUsIGNvbW1pdF93b3JrKTsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRvX2k5MTUoc3RhdGUtPmRldik7CisJc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUgPQorCQljb250YWluZXJfb2Yod29yaywgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSwg
YmFzZS5jb21taXRfd29yayk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19p
OTE1KHN0YXRlLT5iYXNlLmRldik7CiAKLQlkcm1fYXRvbWljX2hlbHBlcl9jbGVhbnVwX3BsYW5l
cygmaTkxNS0+ZHJtLCBzdGF0ZSk7Ci0JZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X2NsZWFudXBf
ZG9uZShzdGF0ZSk7Ci0JZHJtX2F0b21pY19zdGF0ZV9wdXQoc3RhdGUpOworCWRybV9hdG9taWNf
aGVscGVyX2NsZWFudXBfcGxhbmVzKCZpOTE1LT5kcm0sICZzdGF0ZS0+YmFzZSk7CisJaW50ZWxf
Y2xlYW51cF9kc2JzKHN0YXRlKTsKKwlkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfY2xlYW51cF9k
b25lKCZzdGF0ZS0+YmFzZSk7CisJZHJtX2F0b21pY19zdGF0ZV9wdXQoJnN0YXRlLT5iYXNlKTsK
IAogCWludGVsX2F0b21pY19oZWxwZXJfZnJlZV9zdGF0ZShpOTE1KTsKIH0KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCmluZGV4IDc2YWUwMTI3N2ZkNi4uYzMxMTMyYzQx
ZTBmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKQEAgLTM0LDYg
KzM0LDg2IEBACiAjZGVmaW5lIERTQl9CWVRFX0VOX1NISUZUCQkyMAogI2RlZmluZSBEU0JfUkVH
X1ZBTFVFX01BU0sJCTB4ZmZmZmYKIAorLyoqCisgKiBpbnRlbF9kc2JfcHJlcGFyZSgpIC0gQWxs
b2NhdGUsIHBpbiBhbmQgbWFwIHRoZSBEU0IgY29tbWFuZCBidWZmZXIuCisgKiBAY3J0YzogaW50
ZWxfY3J0YyBzdHJ1Y3R1cmUgdG8gZ2V0IHBpcGUgaW5mby4KKyAqCisgKiBUaGlzIGZ1bmN0aW9u
IHByZXBhcmUgdGhlIGNvbW1hbmQgYnVmZmVyIHdoaWNoIGlzIHVzZWQgdG8gc3RvcmUgZHNiCisg
KiBpbnN0cnVjdGlvbnMgd2l0aCBkYXRhLgorICovCisKK3ZvaWQgaW50ZWxfZHNiX3ByZXBhcmUo
c3RydWN0IGludGVsX2NydGMgKmNydGMpCit7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNy
dGMtPmJhc2UuZGV2OworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShk
ZXYpOworCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9ICZjcnRjLT5kc2I7CisJc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iajsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKKwl1MzIgKmJ1ZjsK
KwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKKworCWlmICghSEFTX0RTQihpOTE1KSB8fCBkc2It
PmNtZF9idWYpCisJCXJldHVybjsKKworCXdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgm
aTkxNS0+cnVudGltZV9wbSk7CisKKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVy
bmFsKGk5MTUsIERTQl9CVUZfU0laRSk7CisJaWYgKElTX0VSUihvYmopKSB7CisJCURSTV9FUlJP
UigiR2VtIG9iamVjdCBjcmVhdGlvbiBmYWlsZWRcbiIpOworCQlnb3RvIG91dDsKKwl9CisKKwl2
bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBOVUxMLCAwLCAwLCAwKTsKKwlpZiAo
SVNfRVJSKHZtYSkpIHsKKwkJRFJNX0VSUk9SKCJWbWEgY3JlYXRpb24gZmFpbGVkXG4iKTsKKwkJ
aTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOworCQlnb3RvIG91dDsKKwl9CisKKwlidWYgPSBpOTE1
X2dlbV9vYmplY3RfcGluX21hcCh2bWEtPm9iaiwgSTkxNV9NQVBfV0MpOworCWlmIChJU19FUlIo
YnVmKSkgeworCQlEUk1fRVJST1IoIkNvbW1hbmQgYnVmZmVyIGNyZWF0aW9uIGZhaWxlZFxuIik7
CisJCWdvdG8gb3V0OworCX0KKworCWRzYi0+aWQgPSBEU0IxOworCWRzYi0+dm1hID0gdm1hOwor
CWRzYi0+Y21kX2J1ZiA9IGJ1ZjsKKworb3V0OgorCS8qCisJICogT24gZXJyb3IgZHNiLT5jbWRf
YnVmIHdpbGwgY29udGludWUgdG8gYmUgTlVMTCwgbWFraW5nIHRoZSB3cml0ZXMKKwkgKiBwYXNz
LXRocm91Z2guIExlYXZlIHRoZSBkYW5nbGluZyByZWYgdG8gYmUgcmVtb3ZlZCBsYXRlciBieSB0
aGUKKwkgKiBjb3JyZXNwb25kaW5nIGludGVsX2RzYl9wdXQoKTogdGhlIGltcG9ydGFudCBlcnJv
ciBtZXNzYWdlIHdpbGwKKwkgKiBhbHJlYWR5IGJlIGxvZ2dlZCBhYm92ZS4KKwkgKi8KKworCWlu
dGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1lX3BtLCB3YWtlcmVmKTsKK30KKworLyoq
CisgKiBpbnRlbF9kc2JfY2xlYW51cCgpIC0gVG8gY2xlYW51cCBEU0IgY29udGV4dC4KKyAqIEBk
c2I6IGludGVsX2RzYiBzdHJ1Y3R1cmUuCisgKgorICogVGhpcyBmdW5jdGlvbiBjbGVhbnVwIHRo
ZSBEU0IgY29udGV4dCBieSB1bnBpbm5pbmcgYW5kIHJlbGVhc2luZworICogdGhlIFZNQSBvYmpl
Y3QgYXNzb2NpYXRlZCB3aXRoIGl0LgorICovCisKK3ZvaWQgaW50ZWxfZHNiX2NsZWFudXAoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfZHNiICpkc2IgPSAmY3J0
Yy0+ZHNiOworCisJaWYgKCFIQVNfRFNCKGk5MTUpKQorCQlyZXR1cm47CisKKwlpZiAoZHNiLT52
bWEpIHsKKwkJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmRzYi0+dm1hLCBJOTE1X1ZNQV9S
RUxFQVNFX01BUCk7CisJCWRzYi0+dm1hID0gTlVMTDsKKwkJZHNiLT5jbWRfYnVmID0gTlVMTDsK
Kwl9Cit9CisKIHN0YXRpYyBpbmxpbmUgYm9vbCBpc19kc2JfYnVzeShzdHJ1Y3QgaW50ZWxfZHNi
ICpkc2IpCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBjb250YWluZXJfb2YoZHNiLCB0
eXBlb2YoKmNydGMpLCBkc2IpOwpAQCAtODQsMTQgKzE2NCwxMyBAQCBzdGF0aWMgaW5saW5lIGJv
b2wgaW50ZWxfZHNiX2Rpc2FibGVfZW5naW5lKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKIH0KIAog
LyoqCi0gKiBpbnRlbF9kc2JfZ2V0KCkgLSBBbGxvY2F0ZSBEU0IgY29udGV4dCBhbmQgcmV0dXJu
IGEgRFNCIGluc3RhbmNlLgorICogaW50ZWxfZHNiX2dldCgpIC0gUmV0dXJuIGEgRFNCIGluc3Rh
bmNlIGFuZCBpbmNyZWFzZSByZWZlcmVuY2UgY291bnQuCiAgKiBAY3J0YzogaW50ZWxfY3J0YyBz
dHJ1Y3R1cmUgdG8gZ2V0IHBpcGUgaW5mby4KICAqCiAgKiBUaGlzIGZ1bmN0aW9uIHByb3ZpZGVz
IGhhbmRsZSBvZiBhIERTQiBpbnN0YW5jZSwgZm9yIHRoZSBmdXJ0aGVyIERTQgogICogb3BlcmF0
aW9ucy4KICAqCiAgKiBSZXR1cm5zOiBhZGRyZXNzIG9mIEludGVsX2RzYiBpbnN0YW5jZSByZXF1
ZXN0ZWQgZm9yLgotICogRmFpbHVyZTogUmV0dXJucyB0aGUgc2FtZSBEU0IgaW5zdGFuY2UsIGJ1
dCB3aXRob3V0IGEgY29tbWFuZCBidWZmZXIuCiAgKi8KIAogc3RydWN0IGludGVsX2RzYiAqCkBA
IC0xMDAsNTIgKzE3OSwxMSBAQCBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQogCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBjcnRjLT5iYXNlLmRldjsKIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IgPSAmY3J0Yy0+ZHNiOwotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0Jc3Ry
dWN0IGk5MTVfdm1hICp2bWE7Ci0JdTMyICpidWY7Ci0JaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7
CiAKIAlpZiAoIUhBU19EU0IoaTkxNSkpCiAJCXJldHVybiBkc2I7CiAKLQlpZiAoZHNiLT5yZWZj
b3VudCsrICE9IDApCi0JCXJldHVybiBkc2I7Ci0KLQl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9w
bV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwotCi0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0
ZV9pbnRlcm5hbChpOTE1LCBEU0JfQlVGX1NJWkUpOwotCWlmIChJU19FUlIob2JqKSkgewotCQlE
Uk1fRVJST1IoIkdlbSBvYmplY3QgY3JlYXRpb24gZmFpbGVkXG4iKTsKLQkJZ290byBvdXQ7Ci0J
fQotCi0Jdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGluKG9iaiwgTlVMTCwgMCwgMCwgMCk7
Ci0JaWYgKElTX0VSUih2bWEpKSB7Ci0JCURSTV9FUlJPUigiVm1hIGNyZWF0aW9uIGZhaWxlZFxu
Iik7Ci0JCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKLQkJZ290byBvdXQ7Ci0JfQotCi0JYnVm
ID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAodm1hLT5vYmosIEk5MTVfTUFQX1dDKTsKLQlpZiAo
SVNfRVJSKGJ1ZikpIHsKLQkJRFJNX0VSUk9SKCJDb21tYW5kIGJ1ZmZlciBjcmVhdGlvbiBmYWls
ZWRcbiIpOwotCQlnb3RvIG91dDsKLQl9Ci0KLQlkc2ItPmlkID0gRFNCMTsKLQlkc2ItPnZtYSA9
IHZtYTsKLQlkc2ItPmNtZF9idWYgPSBidWY7Ci0KLW91dDoKLQkvKgotCSAqIE9uIGVycm9yIGRz
Yi0+Y21kX2J1ZiB3aWxsIGNvbnRpbnVlIHRvIGJlIE5VTEwsIG1ha2luZyB0aGUgd3JpdGVzCi0J
ICogcGFzcy10aHJvdWdoLiBMZWF2ZSB0aGUgZGFuZ2xpbmcgcmVmIHRvIGJlIHJlbW92ZWQgbGF0
ZXIgYnkgdGhlCi0JICogY29ycmVzcG9uZGluZyBpbnRlbF9kc2JfcHV0KCk6IHRoZSBpbXBvcnRh
bnQgZXJyb3IgbWVzc2FnZSB3aWxsCi0JICogYWxyZWFkeSBiZSBsb2dnZWQgYWJvdmUuCi0JICov
Ci0KLQlpbnRlbF9ydW50aW1lX3BtX3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7Ci0K
Kwlkc2ItPnJlZmNvdW50Kys7CiAJcmV0dXJuIGRzYjsKIH0KIApAQCAtMTUzLDggKzE5MSw4IEBA
IGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCiAgKiBpbnRlbF9kc2JfcHV0
KCkgLSBUbyBkZXN0cm95IERTQiBjb250ZXh0LgogICogQGRzYjogaW50ZWxfZHNiIHN0cnVjdHVy
ZS4KICAqCi0gKiBUaGlzIGZ1bmN0aW9uIGRlc3Ryb3lzIHRoZSBEU0IgY29udGV4dCBhbGxvY2F0
ZWQgYnkgYSBkc2JfZ2V0KCksIGJ5Ci0gKiB1bnBpbm5pbmcgYW5kIHJlbGVhc2luZyB0aGUgVk1B
IG9iamVjdCBhc3NvY2lhdGVkIHdpdGggaXQuCisgKiBUaGlzIGZ1bmN0aW9uIGRlY3JlYXNlIHRo
ZSByZWZlcmVuY2UgY291bnQgYW5kIHJlc2V0IHRoZSBjb21tYW5kCisgKiBidWZmZXIgcG9zaXRp
b24uCiAgKi8KIAogdm9pZCBpbnRlbF9kc2JfcHV0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKQEAg
LTE2OSw4ICsyMDcsNiBAQCB2b2lkIGludGVsX2RzYl9wdXQoc3RydWN0IGludGVsX2RzYiAqZHNi
KQogCQlyZXR1cm47CiAKIAlpZiAoLS1kc2ItPnJlZmNvdW50ID09IDApIHsKLQkJaTkxNV92bWFf
dW5waW5fYW5kX3JlbGVhc2UoJmRzYi0+dm1hLCBJOTE1X1ZNQV9SRUxFQVNFX01BUCk7Ci0JCWRz
Yi0+Y21kX2J1ZiA9IE5VTEw7CiAJCWRzYi0+ZnJlZV9wb3MgPSAwOwogCQlkc2ItPmluc19zdGFy
dF9vZmZzZXQgPSAwOwogCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5o
CmluZGV4IDM5NWVmOWNlNTU4ZS4uMWRjY2UxOTg4OTlhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmgKQEAgLTQxLDYgKzQxLDggQEAgc3RydWN0IGludGVsX2RzYiB7
CiAJdTMyIGluc19zdGFydF9vZmZzZXQ7CiB9OwogCit2b2lkIGludGVsX2RzYl9wcmVwYXJlKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKK3ZvaWQgaW50ZWxfZHNiX2NsZWFudXAoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpOwogc3RydWN0IGludGVsX2RzYiAqCiBpbnRlbF9kc2JfZ2V0KHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjKTsKIHZvaWQgaW50ZWxfZHNiX3B1dChzdHJ1Y3QgaW50ZWxfZHNi
ICpkc2IpOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
