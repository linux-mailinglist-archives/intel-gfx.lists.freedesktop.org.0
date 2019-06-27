Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AA858C2D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:56:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64A26E848;
	Thu, 27 Jun 2019 20:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F776E841
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:56:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:56:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455633"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:56:48 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:07 +0100
Message-Id: <20190627205633.1143-12-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 11/37] drm/i915/selftests: move gpu-write-dw
 into utils
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

VXNpbmcgdGhlIGdwdSB0byB3cml0ZSB0byBzb21lIGR3b3JkIG92ZXIgYSBudW1iZXIgb2YgcGFn
ZXMgaXMgcmF0aGVyCnVzZWZ1bCwgYW5kIHdlIGFscmVhZHkgaGF2ZSB0d28gY29waWVzIG9mIHN1
Y2ggYSB0aGluZywgYW5kIHdlIGRvbid0CndhbnQgYSB0aGlyZCBzbyBtb3ZlIGl0IHRvIHV0aWxz
LiBUaGVyZSBpcyBwcm9iYWJseSBzb21lIG90aGVyIHN0dWZmCmFsc28uLi4KClNpZ25lZC1vZmYt
Ynk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiAuLi4vZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jICAgfCAxMjAgKystLS0tLS0tLS0tLS0t
LQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIHwgMTM0ICsr
LS0tLS0tLS0tLS0tLS0tCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxz
LmMgICAgfCAxMzUgKysrKysrKysrKysrKysrKysrCiAuLi4vZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pZ3RfZ2VtX3V0aWxzLmggICAgfCAgMTYgKysrCiA0IGZpbGVzIGNoYW5nZWQsIDE2OSBpbnNl
cnRpb25zKCspLCAyMzYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwppbmRleCBmZDU0N2I5OGVjNjkuLjFjZGY5OGI3NTM1
ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3Bh
Z2VzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2Vz
LmMKQEAgLTk2MCwxMjYgKzk2MCwyMiBAQCBzdGF0aWMgaW50IGlndF9tb2NrX3BwZ3R0XzY0Syh2
b2lkICphcmcpCiAJcmV0dXJuIGVycjsKIH0KIAotc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqCi1n
cHVfd3JpdGVfZHcoc3RydWN0IGk5MTVfdm1hICp2bWEsIHU2NCBvZmZzZXQsIHUzMiB2YWwpCi17
Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB2bWEtPnZtLT5pOTE1OwotCWNvbnN0
IGludCBnZW4gPSBJTlRFTF9HRU4oaTkxNSk7Ci0JdW5zaWduZWQgaW50IGNvdW50ID0gdm1hLT5z
aXplID4+IFBBR0VfU0hJRlQ7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQlz
dHJ1Y3QgaTkxNV92bWEgKmJhdGNoOwotCXVuc2lnbmVkIGludCBzaXplOwotCXUzMiAqY21kOwot
CWludCBuOwotCWludCBlcnI7Ci0KLQlzaXplID0gKDEgKyA0ICogY291bnQpICogc2l6ZW9mKHUz
Mik7Ci0Jc2l6ZSA9IHJvdW5kX3VwKHNpemUsIFBBR0VfU0laRSk7Ci0Jb2JqID0gaTkxNV9nZW1f
b2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzaXplKTsKLQlpZiAoSVNfRVJSKG9iaikpCi0J
CXJldHVybiBFUlJfQ0FTVChvYmopOwotCi0JY21kID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAo
b2JqLCBJOTE1X01BUF9XQyk7Ci0JaWYgKElTX0VSUihjbWQpKSB7Ci0JCWVyciA9IFBUUl9FUlIo
Y21kKTsKLQkJZ290byBlcnI7Ci0JfQotCi0Jb2Zmc2V0ICs9IHZtYS0+bm9kZS5zdGFydDsKLQot
CWZvciAobiA9IDA7IG4gPCBjb3VudDsgbisrKSB7Ci0JCWlmIChnZW4gPj0gOCkgewotCQkJKmNt
ZCsrID0gTUlfU1RPUkVfRFdPUkRfSU1NX0dFTjQ7Ci0JCQkqY21kKysgPSBsb3dlcl8zMl9iaXRz
KG9mZnNldCk7Ci0JCQkqY21kKysgPSB1cHBlcl8zMl9iaXRzKG9mZnNldCk7Ci0JCQkqY21kKysg
PSB2YWw7Ci0JCX0gZWxzZSBpZiAoZ2VuID49IDQpIHsKLQkJCSpjbWQrKyA9IE1JX1NUT1JFX0RX
T1JEX0lNTV9HRU40IHwKLQkJCQkoZ2VuIDwgNiA/IE1JX1VTRV9HR1RUIDogMCk7Ci0JCQkqY21k
KysgPSAwOwotCQkJKmNtZCsrID0gb2Zmc2V0OwotCQkJKmNtZCsrID0gdmFsOwotCQl9IGVsc2Ug
ewotCQkJKmNtZCsrID0gTUlfU1RPUkVfRFdPUkRfSU1NIHwgTUlfTUVNX1ZJUlRVQUw7Ci0JCQkq
Y21kKysgPSBvZmZzZXQ7Ci0JCQkqY21kKysgPSB2YWw7Ci0JCX0KLQotCQlvZmZzZXQgKz0gUEFH
RV9TSVpFOwotCX0KLQotCSpjbWQgPSBNSV9CQVRDSF9CVUZGRVJfRU5EOwotCWludGVsX2d0X2No
aXBzZXRfZmx1c2godm1hLT52bS0+Z3QpOwotCi0JaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChv
YmopOwotCi0JYmF0Y2ggPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIHZtYS0+dm0sIE5VTEwpOwot
CWlmIChJU19FUlIoYmF0Y2gpKSB7Ci0JCWVyciA9IFBUUl9FUlIoYmF0Y2gpOwotCQlnb3RvIGVy
cjsKLQl9Ci0KLQllcnIgPSBpOTE1X3ZtYV9waW4oYmF0Y2gsIDAsIDAsIFBJTl9VU0VSKTsKLQlp
ZiAoZXJyKQotCQlnb3RvIGVycjsKLQotCXJldHVybiBiYXRjaDsKLQotZXJyOgotCWk5MTVfZ2Vt
X29iamVjdF9wdXQob2JqKTsKLQotCXJldHVybiBFUlJfUFRSKGVycik7Ci19Ci0KIHN0YXRpYyBp
bnQgZ3B1X3dyaXRlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAogCQkgICAgIHN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0ICpjdHgsCiAJCSAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAot
CQkgICAgIHUzMiBkd29yZCwKLQkJICAgICB1MzIgdmFsdWUpCisJCSAgICAgdTMyIGR3LAorCQkg
ICAgIHUzMiB2YWwpCiB7Ci0Jc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Ci0Jc3RydWN0IGk5MTVf
dm1hICpiYXRjaDsKIAlpbnQgZXJyOwogCi0JR0VNX0JVR19PTighaW50ZWxfZW5naW5lX2Nhbl9z
dG9yZV9kd29yZChlbmdpbmUpKTsKLQotCWJhdGNoID0gZ3B1X3dyaXRlX2R3KHZtYSwgZHdvcmQg
KiBzaXplb2YodTMyKSwgdmFsdWUpOwotCWlmIChJU19FUlIoYmF0Y2gpKQotCQlyZXR1cm4gUFRS
X0VSUihiYXRjaCk7Ci0KLQlycSA9IGlndF9yZXF1ZXN0X2FsbG9jKGN0eCwgZW5naW5lKTsKLQlp
ZiAoSVNfRVJSKHJxKSkgewotCQllcnIgPSBQVFJfRVJSKHJxKTsKLQkJZ290byBlcnJfYmF0Y2g7
Ci0JfQotCi0JaTkxNV92bWFfbG9jayhiYXRjaCk7Ci0JZXJyID0gaTkxNV92bWFfbW92ZV90b19h
Y3RpdmUoYmF0Y2gsIHJxLCAwKTsKLQlpOTE1X3ZtYV91bmxvY2soYmF0Y2gpOwotCWlmIChlcnIp
Ci0JCWdvdG8gZXJyX3JlcXVlc3Q7Ci0KLQlpOTE1X3ZtYV9sb2NrKHZtYSk7Ci0JZXJyID0gaTkx
NV9nZW1fb2JqZWN0X3NldF90b19ndHRfZG9tYWluKHZtYS0+b2JqLCBmYWxzZSk7Ci0JaWYgKGVy
ciA9PSAwKQotCQllcnIgPSBpOTE1X3ZtYV9tb3ZlX3RvX2FjdGl2ZSh2bWEsIHJxLCBFWEVDX09C
SkVDVF9XUklURSk7Ci0JaTkxNV92bWFfdW5sb2NrKHZtYSk7CisJaTkxNV9nZW1fb2JqZWN0X2xv
Y2sodm1hLT5vYmopOworCWVyciA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fZ3R0X2RvbWFpbih2
bWEtPm9iaiwgdHJ1ZSk7CisJaTkxNV9nZW1fb2JqZWN0X3VubG9jayh2bWEtPm9iaik7CiAJaWYg
KGVycikKLQkJZ290byBlcnJfcmVxdWVzdDsKLQotCWVyciA9IGVuZ2luZS0+ZW1pdF9iYl9zdGFy
dChycSwKLQkJCQkgICAgYmF0Y2gtPm5vZGUuc3RhcnQsIGJhdGNoLT5ub2RlLnNpemUsCi0JCQkJ
ICAgIDApOwotZXJyX3JlcXVlc3Q6Ci0JaWYgKGVycikKLQkJaTkxNV9yZXF1ZXN0X3NraXAocnEs
IGVycik7Ci0JaTkxNV9yZXF1ZXN0X2FkZChycSk7Ci1lcnJfYmF0Y2g6Ci0JaTkxNV92bWFfdW5w
aW4oYmF0Y2gpOwotCWk5MTVfdm1hX2Nsb3NlKGJhdGNoKTsKLQlpOTE1X3ZtYV9wdXQoYmF0Y2gp
OworCQlyZXR1cm4gZXJyOwogCi0JcmV0dXJuIGVycjsKKwlyZXR1cm4gaWd0X2dwdV9maWxsX2R3
KHZtYSwgY3R4LCBlbmdpbmUsIGR3ICogc2l6ZW9mKHUzMiksCisJCQkgICAgICAgdm1hLT5zaXpl
ID4+IFBBR0VfU0hJRlQsIHZhbCk7CiB9CiAKIHN0YXRpYyBpbnQgY3B1X2NoZWNrKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosIHUzMiBkd29yZCwgdTMyIHZhbCkKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKaW5k
ZXggNTNjODFiNWRmZDY5Li5kYjY2NjEwNmMyNDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCkBAIC0xNTUsNzAgKzE1
NSw2IEBAIHN0YXRpYyBpbnQgbGl2ZV9ub3Bfc3dpdGNoKHZvaWQgKmFyZykKIAlyZXR1cm4gZXJy
OwogfQogCi1zdGF0aWMgc3RydWN0IGk5MTVfdm1hICoKLWdwdV9maWxsX2R3KHN0cnVjdCBpOTE1
X3ZtYSAqdm1hLCB1NjQgb2Zmc2V0LCB1bnNpZ25lZCBsb25nIGNvdW50LCB1MzIgdmFsdWUpCi17
Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQljb25zdCBpbnQgZ2VuID0gSU5U
RUxfR0VOKHZtYS0+dm0tPmk5MTUpOwotCXVuc2lnbmVkIGxvbmcgbiwgc2l6ZTsKLQl1MzIgKmNt
ZDsKLQlpbnQgZXJyOwotCi0Jc2l6ZSA9ICg0ICogY291bnQgKyAxKSAqIHNpemVvZih1MzIpOwot
CXNpemUgPSByb3VuZF91cChzaXplLCBQQUdFX1NJWkUpOwotCW9iaiA9IGk5MTVfZ2VtX29iamVj
dF9jcmVhdGVfaW50ZXJuYWwodm1hLT52bS0+aTkxNSwgc2l6ZSk7Ci0JaWYgKElTX0VSUihvYmop
KQotCQlyZXR1cm4gRVJSX0NBU1Qob2JqKTsKLQotCWNtZCA9IGk5MTVfZ2VtX29iamVjdF9waW5f
bWFwKG9iaiwgSTkxNV9NQVBfV0IpOwotCWlmIChJU19FUlIoY21kKSkgewotCQllcnIgPSBQVFJf
RVJSKGNtZCk7Ci0JCWdvdG8gZXJyOwotCX0KLQotCUdFTV9CVUdfT04ob2Zmc2V0ICsgKGNvdW50
IC0gMSkgKiBQQUdFX1NJWkUgPiB2bWEtPm5vZGUuc2l6ZSk7Ci0Jb2Zmc2V0ICs9IHZtYS0+bm9k
ZS5zdGFydDsKLQotCWZvciAobiA9IDA7IG4gPCBjb3VudDsgbisrKSB7Ci0JCWlmIChnZW4gPj0g
OCkgewotCQkJKmNtZCsrID0gTUlfU1RPUkVfRFdPUkRfSU1NX0dFTjQ7Ci0JCQkqY21kKysgPSBs
b3dlcl8zMl9iaXRzKG9mZnNldCk7Ci0JCQkqY21kKysgPSB1cHBlcl8zMl9iaXRzKG9mZnNldCk7
Ci0JCQkqY21kKysgPSB2YWx1ZTsKLQkJfSBlbHNlIGlmIChnZW4gPj0gNCkgewotCQkJKmNtZCsr
ID0gTUlfU1RPUkVfRFdPUkRfSU1NX0dFTjQgfAotCQkJCShnZW4gPCA2ID8gTUlfVVNFX0dHVFQg
OiAwKTsKLQkJCSpjbWQrKyA9IDA7Ci0JCQkqY21kKysgPSBvZmZzZXQ7Ci0JCQkqY21kKysgPSB2
YWx1ZTsKLQkJfSBlbHNlIHsKLQkJCSpjbWQrKyA9IE1JX1NUT1JFX0RXT1JEX0lNTSB8IE1JX01F
TV9WSVJUVUFMOwotCQkJKmNtZCsrID0gb2Zmc2V0OwotCQkJKmNtZCsrID0gdmFsdWU7Ci0JCX0K
LQkJb2Zmc2V0ICs9IFBBR0VfU0laRTsKLQl9Ci0JKmNtZCA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7
Ci0JaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21hcChvYmopOwotCWk5MTVfZ2VtX29iamVjdF91bnBp
bl9tYXAob2JqKTsKLQotCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgdm1hLT52bSwgTlVM
TCk7Ci0JaWYgKElTX0VSUih2bWEpKSB7Ci0JCWVyciA9IFBUUl9FUlIodm1hKTsKLQkJZ290byBl
cnI7Ci0JfQotCi0JZXJyID0gaTkxNV92bWFfcGluKHZtYSwgMCwgMCwgUElOX1VTRVIpOwotCWlm
IChlcnIpCi0JCWdvdG8gZXJyOwotCi0JcmV0dXJuIHZtYTsKLQotZXJyOgotCWk5MTVfZ2VtX29i
amVjdF9wdXQob2JqKTsKLQlyZXR1cm4gRVJSX1BUUihlcnIpOwotfQotCiBzdGF0aWMgdW5zaWdu
ZWQgbG9uZyByZWFsX3BhZ2VfY291bnQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikK
IHsKIAlyZXR1cm4gaHVnZV9nZW1fb2JqZWN0X3BoeXNfc2l6ZShvYmopID4+IFBBR0VfU0hJRlQ7
CkBAIC0yMzUsMTAgKzE3MSw3IEBAIHN0YXRpYyBpbnQgZ3B1X2ZpbGwoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAkJICAgIHVuc2lnbmVkIGludCBkdykKIHsKIAlzdHJ1Y3QgaTkx
NV9hZGRyZXNzX3NwYWNlICp2bSA9IGN0eC0+dm0gPzogJmVuZ2luZS0+Z3QtPmdndHQtPnZtOwot
CXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwotCXN0cnVj
dCBpOTE1X3ZtYSAqYmF0Y2g7Ci0JdW5zaWduZWQgaW50IGZsYWdzOwogCWludCBlcnI7CiAKIAlH
RU1fQlVHX09OKG9iai0+YmFzZS5zaXplID4gdm0tPnRvdGFsKTsKQEAgLTI0OSw3ICsxODIsNyBA
QCBzdGF0aWMgaW50IGdwdV9maWxsKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJ
CXJldHVybiBQVFJfRVJSKHZtYSk7CiAKIAlpOTE1X2dlbV9vYmplY3RfbG9jayhvYmopOwotCWVy
ciA9IGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fZ3R0X2RvbWFpbihvYmosIGZhbHNlKTsKKwllcnIg
PSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX2d0dF9kb21haW4ob2JqLCB0cnVlKTsKIAlpOTE1X2dl
bV9vYmplY3RfdW5sb2NrKG9iaik7CiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsKQEAgLTI1OCw3
MCArMTkxLDIzIEBAIHN0YXRpYyBpbnQgZ3B1X2ZpbGwoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKIAlpZiAoZXJyKQogCQlyZXR1cm4gZXJyOwogCi0JLyogV2l0aGluIHRoZSBHVFQg
dGhlIGh1Z2Ugb2JqZWN0cyBtYXBzIGV2ZXJ5IHBhZ2Ugb250bworCS8qCisJICogV2l0aGluIHRo
ZSBHVFQgdGhlIGh1Z2Ugb2JqZWN0cyBtYXBzIGV2ZXJ5IHBhZ2Ugb250bwogCSAqIGl0cyAxMDI0
IHJlYWwgcGFnZXMgKHVzaW5nIHBoeXNfcGZuID0gZG1hX3BmbiAlIDEwMjQpLgogCSAqIFdlIHNl
dCB0aGUgbnRoIGR3b3JkIHdpdGhpbiB0aGUgcGFnZSB1c2luZyB0aGUgbnRoCiAJICogbWFwcGlu
ZyB2aWEgdGhlIEdUVCAtIHRoaXMgc2hvdWxkIGV4ZXJjaXNlIHRoZSBHVFQgbWFwcGluZwogCSAq
IHdoaWxzdCBjaGVja2luZyB0aGF0IGVhY2ggY29udGV4dCBwcm92aWRlcyBhIHVuaXF1ZSB2aWV3
CiAJICogaW50byB0aGUgb2JqZWN0LgogCSAqLwotCWJhdGNoID0gZ3B1X2ZpbGxfZHcodm1hLAot
CQkJICAgIChkdyAqIHJlYWxfcGFnZV9jb3VudChvYmopKSA8PCBQQUdFX1NISUZUIHwKLQkJCSAg
ICAoZHcgKiBzaXplb2YodTMyKSksCi0JCQkgICAgcmVhbF9wYWdlX2NvdW50KG9iaiksCi0JCQkg
ICAgZHcpOwotCWlmIChJU19FUlIoYmF0Y2gpKSB7Ci0JCWVyciA9IFBUUl9FUlIoYmF0Y2gpOwot
CQlnb3RvIGVycl92bWE7Ci0JfQotCi0JcnEgPSBpZ3RfcmVxdWVzdF9hbGxvYyhjdHgsIGVuZ2lu
ZSk7Ci0JaWYgKElTX0VSUihycSkpIHsKLQkJZXJyID0gUFRSX0VSUihycSk7Ci0JCWdvdG8gZXJy
X2JhdGNoOwotCX0KLQotCWZsYWdzID0gMDsKLQlpZiAoSU5URUxfR0VOKHZtLT5pOTE1KSA8PSA1
KQotCQlmbGFncyB8PSBJOTE1X0RJU1BBVENIX1NFQ1VSRTsKLQotCWVyciA9IGVuZ2luZS0+ZW1p
dF9iYl9zdGFydChycSwKLQkJCQkgICAgYmF0Y2gtPm5vZGUuc3RhcnQsIGJhdGNoLT5ub2RlLnNp
emUsCi0JCQkJICAgIGZsYWdzKTsKLQlpZiAoZXJyKQotCQlnb3RvIGVycl9yZXF1ZXN0OwotCi0J
aTkxNV92bWFfbG9jayhiYXRjaCk7Ci0JZXJyID0gaTkxNV92bWFfbW92ZV90b19hY3RpdmUoYmF0
Y2gsIHJxLCAwKTsKLQlpOTE1X3ZtYV91bmxvY2soYmF0Y2gpOwotCWlmIChlcnIpCi0JCWdvdG8g
c2tpcF9yZXF1ZXN0OwotCi0JaTkxNV92bWFfbG9jayh2bWEpOwotCWVyciA9IGk5MTVfdm1hX21v
dmVfdG9fYWN0aXZlKHZtYSwgcnEsIEVYRUNfT0JKRUNUX1dSSVRFKTsKLQlpOTE1X3ZtYV91bmxv
Y2sodm1hKTsKLQlpZiAoZXJyKQotCQlnb3RvIHNraXBfcmVxdWVzdDsKLQotCWk5MTVfcmVxdWVz
dF9hZGQocnEpOwotCi0JaTkxNV92bWFfdW5waW4oYmF0Y2gpOwotCWk5MTVfdm1hX2Nsb3NlKGJh
dGNoKTsKLQlpOTE1X3ZtYV9wdXQoYmF0Y2gpOwotCisJZXJyID0gaWd0X2dwdV9maWxsX2R3KHZt
YSwKKwkJCSAgICAgIGN0eCwKKwkJCSAgICAgIGVuZ2luZSwKKwkJCSAgICAgIChkdyAqIHJlYWxf
cGFnZV9jb3VudChvYmopKSA8PCBQQUdFX1NISUZUIHwKKwkJCSAgICAgIChkdyAqIHNpemVvZih1
MzIpKSwKKwkJCSAgICAgIHJlYWxfcGFnZV9jb3VudChvYmopLAorCQkJICAgICAgZHcpOwogCWk5
MTVfdm1hX3VucGluKHZtYSk7CiAKLQlyZXR1cm4gMDsKLQotc2tpcF9yZXF1ZXN0OgotCWk5MTVf
cmVxdWVzdF9za2lwKHJxLCBlcnIpOwotZXJyX3JlcXVlc3Q6Ci0JaTkxNV9yZXF1ZXN0X2FkZChy
cSk7Ci1lcnJfYmF0Y2g6Ci0JaTkxNV92bWFfdW5waW4oYmF0Y2gpOwotCWk5MTVfdm1hX3B1dChi
YXRjaCk7Ci1lcnJfdm1hOgotCWk5MTVfdm1hX3VucGluKHZtYSk7CiAJcmV0dXJuIGVycjsKIH0K
IApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2Vt
X3V0aWxzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRp
bHMuYwppbmRleCBiMjMyZTZkMmNkOTIuLmRjNDdhNmUyNTg2YyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMKQEAgLTksNiArOSw4
IEBACiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKICNpbmNsdWRlICJnZW0vaTkx
NV9nZW1fcG0uaCIKICNpbmNsdWRlICJndC9pbnRlbF9jb250ZXh0LmgiCisjaW5jbHVkZSAiaTkx
NV92bWEuaCIKKyNpbmNsdWRlICJpOTE1X2Rydi5oIgogCiAjaW5jbHVkZSAiaTkxNV9yZXF1ZXN0
LmgiCiAKQEAgLTMyLDMgKzM0LDEzNiBAQCBpZ3RfcmVxdWVzdF9hbGxvYyhzdHJ1Y3QgaTkxNV9n
ZW1fY29udGV4dCAqY3R4LCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAKIAlyZXR1
cm4gcnE7CiB9CisKK3N0cnVjdCBpOTE1X3ZtYSAqCitpZ3RfZW1pdF9zdG9yZV9kdyhzdHJ1Y3Qg
aTkxNV92bWEgKnZtYSwKKwkJICB1NjQgb2Zmc2V0LAorCQkgIHVuc2lnbmVkIGxvbmcgY291bnQs
CisJCSAgdTMyIHZhbCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCWNv
bnN0IGludCBnZW4gPSBJTlRFTF9HRU4odm1hLT52bS0+aTkxNSk7CisJdW5zaWduZWQgbG9uZyBu
LCBzaXplOworCXUzMiAqY21kOworCWludCBlcnI7CisKKwlzaXplID0gKDQgKiBjb3VudCArIDEp
ICogc2l6ZW9mKHUzMik7CisJc2l6ZSA9IHJvdW5kX3VwKHNpemUsIFBBR0VfU0laRSk7CisJb2Jq
ID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbCh2bWEtPnZtLT5pOTE1LCBzaXplKTsK
KwlpZiAoSVNfRVJSKG9iaikpCisJCXJldHVybiBFUlJfQ0FTVChvYmopOworCisJY21kID0gaTkx
NV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQyk7CisJaWYgKElTX0VSUihjbWQp
KSB7CisJCWVyciA9IFBUUl9FUlIoY21kKTsKKwkJZ290byBlcnI7CisJfQorCisJR0VNX0JVR19P
TihvZmZzZXQgKyAoY291bnQgLSAxKSAqIFBBR0VfU0laRSA+IHZtYS0+bm9kZS5zaXplKTsKKwlv
ZmZzZXQgKz0gdm1hLT5ub2RlLnN0YXJ0OworCisJZm9yIChuID0gMDsgbiA8IGNvdW50OyBuKysp
IHsKKwkJaWYgKGdlbiA+PSA4KSB7CisJCQkqY21kKysgPSBNSV9TVE9SRV9EV09SRF9JTU1fR0VO
NDsKKwkJCSpjbWQrKyA9IGxvd2VyXzMyX2JpdHMob2Zmc2V0KTsKKwkJCSpjbWQrKyA9IHVwcGVy
XzMyX2JpdHMob2Zmc2V0KTsKKwkJCSpjbWQrKyA9IHZhbDsKKwkJfSBlbHNlIGlmIChnZW4gPj0g
NCkgeworCQkJKmNtZCsrID0gTUlfU1RPUkVfRFdPUkRfSU1NX0dFTjQgfAorCQkJCShnZW4gPCA2
ID8gTUlfVVNFX0dHVFQgOiAwKTsKKwkJCSpjbWQrKyA9IDA7CisJCQkqY21kKysgPSBvZmZzZXQ7
CisJCQkqY21kKysgPSB2YWw7CisJCX0gZWxzZSB7CisJCQkqY21kKysgPSBNSV9TVE9SRV9EV09S
RF9JTU0gfCBNSV9NRU1fVklSVFVBTDsKKwkJCSpjbWQrKyA9IG9mZnNldDsKKwkJCSpjbWQrKyA9
IHZhbDsKKwkJfQorCQlvZmZzZXQgKz0gUEFHRV9TSVpFOworCX0KKwkqY21kID0gTUlfQkFUQ0hf
QlVGRkVSX0VORDsKKwlpOTE1X2dlbV9vYmplY3RfdW5waW5fbWFwKG9iaik7CisKKwl2bWEgPSBp
OTE1X3ZtYV9pbnN0YW5jZShvYmosIHZtYS0+dm0sIE5VTEwpOworCWlmIChJU19FUlIodm1hKSkg
eworCQllcnIgPSBQVFJfRVJSKHZtYSk7CisJCWdvdG8gZXJyOworCX0KKworCWVyciA9IGk5MTVf
dm1hX3Bpbih2bWEsIDAsIDAsIFBJTl9VU0VSKTsKKwlpZiAoZXJyKQorCQlnb3RvIGVycjsKKwor
CXJldHVybiB2bWE7CisKK2VycjoKKwlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CisJcmV0dXJu
IEVSUl9QVFIoZXJyKTsKK30KKworaW50IGlndF9ncHVfZmlsbF9kdyhzdHJ1Y3QgaTkxNV92bWEg
KnZtYSwKKwkJICAgIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCisJCSAgICBzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUsCisJCSAgICB1NjQgb2Zmc2V0LAorCQkgICAgdW5zaWdu
ZWQgbG9uZyBjb3VudCwKKwkJICAgIHUzMiB2YWwpCit7CisJc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm0gPSBjdHgtPnZtID86ICZlbmdpbmUtPmd0LT5nZ3R0LT52bTsKKwlzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycTsKKwlzdHJ1Y3QgaTkxNV92bWEgKmJhdGNoOworCXVuc2lnbmVkIGludCBm
bGFnczsKKwlpbnQgZXJyOworCisJR0VNX0JVR19PTih2bWEtPnNpemUgPiB2bS0+dG90YWwpOwor
CUdFTV9CVUdfT04oIWludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdvcmQoZW5naW5lKSk7CisJR0VN
X0JVR19PTighaTkxNV92bWFfaXNfcGlubmVkKHZtYSkpOworCisJYmF0Y2ggPSBpZ3RfZW1pdF9z
dG9yZV9kdyh2bWEsIG9mZnNldCwgY291bnQsIHZhbCk7CisJaWYgKElTX0VSUihiYXRjaCkpCisJ
CXJldHVybiBQVFJfRVJSKGJhdGNoKTsKKworCXJxID0gaWd0X3JlcXVlc3RfYWxsb2MoY3R4LCBl
bmdpbmUpOworCWlmIChJU19FUlIocnEpKSB7CisJCWVyciA9IFBUUl9FUlIocnEpOworCQlnb3Rv
IGVycl9iYXRjaDsKKwl9CisKKwlmbGFncyA9IDA7CisJaWYgKElOVEVMX0dFTih2bS0+aTkxNSkg
PD0gNSkKKwkJZmxhZ3MgfD0gSTkxNV9ESVNQQVRDSF9TRUNVUkU7CisKKwllcnIgPSBlbmdpbmUt
PmVtaXRfYmJfc3RhcnQocnEsCisJCQkJICAgIGJhdGNoLT5ub2RlLnN0YXJ0LCBiYXRjaC0+bm9k
ZS5zaXplLAorCQkJCSAgICBmbGFncyk7CisJaWYgKGVycikKKwkJZ290byBlcnJfcmVxdWVzdDsK
KworCWk5MTVfdm1hX2xvY2soYmF0Y2gpOworCWVyciA9IGk5MTVfdm1hX21vdmVfdG9fYWN0aXZl
KGJhdGNoLCBycSwgMCk7CisJaTkxNV92bWFfdW5sb2NrKGJhdGNoKTsKKwlpZiAoZXJyKQorCQln
b3RvIHNraXBfcmVxdWVzdDsKKworCWk5MTVfdm1hX2xvY2sodm1hKTsKKwllcnIgPSBpOTE1X3Zt
YV9tb3ZlX3RvX2FjdGl2ZSh2bWEsIHJxLCBFWEVDX09CSkVDVF9XUklURSk7CisJaTkxNV92bWFf
dW5sb2NrKHZtYSk7CisJaWYgKGVycikKKwkJZ290byBza2lwX3JlcXVlc3Q7CisKKwlpOTE1X3Jl
cXVlc3RfYWRkKHJxKTsKKworCWk5MTVfdm1hX3VucGluKGJhdGNoKTsKKwlpOTE1X3ZtYV9jbG9z
ZShiYXRjaCk7CisJaTkxNV92bWFfcHV0KGJhdGNoKTsKKworCXJldHVybiAwOworCitza2lwX3Jl
cXVlc3Q6CisJaTkxNV9yZXF1ZXN0X3NraXAocnEsIGVycik7CitlcnJfcmVxdWVzdDoKKwlpOTE1
X3JlcXVlc3RfYWRkKHJxKTsKK2Vycl9iYXRjaDoKKwlpOTE1X3ZtYV91bnBpbihiYXRjaCk7CisJ
aTkxNV92bWFfcHV0KGJhdGNoKTsKKwlyZXR1cm4gZXJyOworfQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2lndF9nZW1fdXRpbHMuaAppbmRleCAwZjE3MjUxY2Y3
NWQuLjM2MWE3ZWY4NjZiMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmgKQEAgLTcsMTEgKzcsMjcgQEAKICNpZm5kZWYgX19JR1Rf
R0VNX1VUSUxTX0hfXwogI2RlZmluZSBfX0lHVF9HRU1fVVRJTFNfSF9fCiAKKyNpbmNsdWRlIDxs
aW51eC90eXBlcy5oPgorCiBzdHJ1Y3QgaTkxNV9yZXF1ZXN0Owogc3RydWN0IGk5MTVfZ2VtX2Nv
bnRleHQ7CiBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzOworc3RydWN0IGk5MTVfdm1hOwogCiBzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICoKIGlndF9yZXF1ZXN0X2FsbG9jKHN0cnVjdCBpOTE1X2dlbV9jb250
ZXh0ICpjdHgsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CiAKK3N0cnVjdCBpOTE1
X3ZtYSAqCitpZ3RfZW1pdF9zdG9yZV9kdyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSwKKwkJICB1NjQg
b2Zmc2V0LAorCQkgIHVuc2lnbmVkIGxvbmcgY291bnQsCisJCSAgdTMyIHZhbCk7CisKK2ludCBp
Z3RfZ3B1X2ZpbGxfZHcoc3RydWN0IGk5MTVfdm1hICp2bWEsCisJCSAgICBzdHJ1Y3QgaTkxNV9n
ZW1fY29udGV4dCAqY3R4LAorCQkgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAor
CQkgICAgdTY0IG9mZnNldCwKKwkJICAgIHVuc2lnbmVkIGxvbmcgY291bnQsCisJCSAgICB1MzIg
dmFsKTsKKwogI2VuZGlmIC8qIF9fSUdUX0dFTV9VVElMU19IX18gKi8KLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
