Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD4392C684F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 15:58:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB9896EE11;
	Fri, 27 Nov 2020 14:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5986EE11
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 14:58:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23134691-1500050 
 for multiple; Fri, 27 Nov 2020 14:57:49 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 14:57:48 +0000
Message-Id: <20201127145748.29491-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915: re-order if/else ladder for
 hpd_irq_setup"
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugbm93IHVzZSBpbGtfaHBkX2lycV9zZXR1cCBmb3IgYWxsIEdNQ0ggcGxhdGZvcm1zIHRoYXQg
ZG8gbm90IGhhdmUKaG90cGx1Zy4gVGhlc2UgYXJlIGVhcmx5IGdlbjMgYW5kIGdlbjIgZGV2aWNl
cyB0aGF0IG5vdyBleHBsb2RlIG9uIGJvb3QKYXMgdGhleSB0cnkgdG8gYWNjZXNzIG5vbi1leGlz
dGVudCByZWdpc3RlcnMuCgpGaXhlczogNzk0ZDYxYTE5MDkwICgiZHJtL2k5MTU6IHJlLW9yZGVy
IGlmL2Vsc2UgbGFkZGVyIGZvciBocGRfaXJxX3NldHVwIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMjcgKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggZGM2ZmViYzYzZjFjLi5j
ODBlZWFjNTM5NTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtNDI0MiwxOCArNDI0Miwy
MSBAQCB2b2lkIGludGVsX2lycV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAkgKi8KIAlkZXZfcHJpdi0+aG90cGx1Zy5ocGRfc2hvcnRfc3Rvcm1fZW5hYmxlZCA9ICFI
QVNfRFBfTVNUKGRldl9wcml2KTsKIAotCWlmIChIQVNfUENIX0RHMShkZXZfcHJpdikpCi0JCWRl
dl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBkZzFfaHBkX2lycV9zZXR1cDsKLQllbHNl
IGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQotCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRf
aXJxX3NldHVwID0gZ2VuMTFfaHBkX2lycV9zZXR1cDsKLQllbHNlIGlmIChJU19HRU45X0xQKGRl
dl9wcml2KSkKLQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGJ4dF9ocGRfaXJx
X3NldHVwOwotCWVsc2UgaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfU1BUKQot
CQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gc3B0X2hwZF9pcnFfc2V0dXA7Ci0J
ZWxzZSBpZiAoSEFTX0dNQ0goZGV2X3ByaXYpICYmIEk5MTVfSEFTX0hPVFBMVUcoZGV2X3ByaXYp
KQotCQlkZXZfcHJpdi0+ZGlzcGxheS5ocGRfaXJxX3NldHVwID0gaTkxNV9ocGRfaXJxX3NldHVw
OwotCWVsc2UKLQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGlsa19ocGRfaXJx
X3NldHVwOworCWlmIChIQVNfR01DSChkZXZfcHJpdikpIHsKKwkJaWYgKEk5MTVfSEFTX0hPVFBM
VUcoZGV2X3ByaXYpKQorCQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGk5MTVf
aHBkX2lycV9zZXR1cDsKKwl9IGVsc2UgeworCQlpZiAoSEFTX1BDSF9ERzEoZGV2X3ByaXYpKQor
CQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGRnMV9ocGRfaXJxX3NldHVwOwor
CQllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQorCQkJZGV2X3ByaXYtPmRpc3Bs
YXkuaHBkX2lycV9zZXR1cCA9IGdlbjExX2hwZF9pcnFfc2V0dXA7CisJCWVsc2UgaWYgKElTX0dF
TjlfTFAoZGV2X3ByaXYpKQorCQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGJ4
dF9ocGRfaXJxX3NldHVwOworCQllbHNlIGlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPj0g
UENIX1NQVCkKKwkJCWRldl9wcml2LT5kaXNwbGF5LmhwZF9pcnFfc2V0dXAgPSBzcHRfaHBkX2ly
cV9zZXR1cDsKKwkJZWxzZQorCQkJZGV2X3ByaXYtPmRpc3BsYXkuaHBkX2lycV9zZXR1cCA9IGls
a19ocGRfaXJxX3NldHVwOworCX0KIH0KIAogLyoqCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
