Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDADB854CC
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 22:55:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49BE6E3F5;
	Wed,  7 Aug 2019 20:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586BB6E5BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 20:55:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 13:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="168755409"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga008.jf.intel.com with ESMTP; 07 Aug 2019 13:55:04 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 13:55:55 -0700
Message-Id: <20190807205556.40435-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Add MOCS state dump to debugfs
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

VXNlciBhcHBsaWNhdGlvbnMgbWlnaHQgbmVlZCB0byB2ZXJpZnkgaGFyZHdhcmUgY29uZmlndXJh
dGlvbgpvZiB0aGUgTU9DUyBlbnRyaWVzLiBUbyBmYWNpbGl0YXRlIHRoaXMgZGVidWcsIGFkZCBh
IG5ldyBkZWJ1Z2ZzCmVudHJ5IHRvIGFsbG93IGEgZHVtcCBvZiB0aGUgTU9DUyBzdGF0ZSB0byB2
ZXJpZnkgZXhwZWN0ZWQgdmFsdWVzCmFyZSBzZXQgYnkgaTkxNS4KClNpZ25lZC1vZmYtYnk6IFN0
dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIHwgNTAgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5oIHwgIDMgKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICB8IDEyICsrKysrKysKIDMgZmlsZXMgY2hhbmdl
ZCwgNjUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwppbmRl
eCA3Mjg3MDRiYmJlMTguLmZlYThlZjJmZDJhYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbW9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X21vY3MuYwpAQCAtNjI1LDYgKzYyNSw1NiBAQCBpbnQgaW50ZWxfbW9jc19lbWl0KHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJxKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZAoraW50ZWxfbW9j
c19kdW1wX2wzY2NfdGFibGUoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGRybV9wcmludGVy
ICpwKQoreworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CisJc3Ry
dWN0IGRybV9pOTE1X21vY3NfdGFibGUgdGFibGU7CisJdW5zaWduZWQgaW50IGk7CisKKwlpZiAo
IWdldF9tb2NzX3NldHRpbmdzKGd0LCAmdGFibGUpKQorCQlyZXR1cm47CisKKwlkcm1fcHJpbnRm
KHAsICJsM2NjOlxuIik7CisKKwlmb3IgKGkgPSAwOyBpIDwgdGFibGUubl9lbnRyaWVzIC8gMjsg
aSsrKSB7CisJCXUzMiByZWcgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjlfTE5DRkNN
T0NTKGkpKTsKKworCQlkcm1fcHJpbnRmKHAsICIgIE1PQ1NbJWRdOiAweCV4XG4iLCBpICogMiwg
cmVnICYgMHhmZmZmKTsKKwkJZHJtX3ByaW50ZihwLCAiICBNT0NTWyVkXTogMHgleFxuIiwgaSAq
IDIgKyAxLCByZWcgPj4gMTYpOworCX0KK30KKworc3RhdGljIHZvaWQKK2ludGVsX21vY3NfZHVt
cF9nbG9iYWwoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGRybV9wcmludGVyICpwKQorewor
CXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CisJc3RydWN0IGRybV9p
OTE1X21vY3NfdGFibGUgdGFibGU7CisJdW5zaWduZWQgaW50IGk7CisKKwlHRU1fQlVHX09OKCFI
QVNfR0xPQkFMX01PQ1NfUkVHSVNURVJTKGd0LT5pOTE1KSk7CisKKwlpZiAoIWdldF9tb2NzX3Nl
dHRpbmdzKGd0LCAmdGFibGUpKQorCQlyZXR1cm47CisKKwlpZiAoR0VNX0RFQlVHX1dBUk5fT04o
dGFibGUuc2l6ZSA+IHRhYmxlLm5fZW50cmllcykpCisJCXJldHVybjsKKworCWRybV9wcmludGYo
cCwgImdsb2JhbDpcbiIpOworCisJZm9yIChpID0gMDsgaSA8IHRhYmxlLm5fZW50cmllczsgaSsr
KQorCQlkcm1fcHJpbnRmKHAsICIgIE1PQ1NbJWRdOiAweCV4XG4iLAorCQkJICAgaSwgaW50ZWxf
dW5jb3JlX3JlYWQodW5jb3JlLCBHRU4xMl9HTE9CQUxfTU9DUyhpKSkpOworfQorCit2b2lkIGlu
dGVsX21vY3Nfc2hvd19pbmZvKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHN0cnVjdCBkcm1fcHJpbnRl
ciAqcCkKK3sKKwlpbnRlbF9tb2NzX2R1bXBfbDNjY190YWJsZShndCwgcCk7CisKKwlpZiAoSEFT
X0dMT0JBTF9NT0NTX1JFR0lTVEVSUyhndC0+aTkxNSkpCisJCWludGVsX21vY3NfZHVtcF9nbG9i
YWwoZ3QsIHApOworfQorCiB2b2lkIGludGVsX21vY3NfaW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQogewogCWludGVsX21vY3NfaW5pdF9sM2NjX3RhYmxlKGd0KTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX21vY3MuaAppbmRleCAyYWU4MTZiN2NhMTkuLjBlZjk1Y2U4MThkMyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuaApAQCAtMjQsNiArMjQsOCBAQAogI2lmbmRlZiBJTlRF
TF9NT0NTX0gKICNkZWZpbmUgSU5URUxfTU9DU19ICiAKKyNpbmNsdWRlIDxkcm0vZHJtX3ByaW50
Lmg+CisKIC8qKgogICogRE9DOiBNZW1vcnkgT2JqZWN0cyBDb250cm9sIFN0YXRlIChNT0NTKQog
ICoKQEAgLTU1LDYgKzU3LDcgQEAgc3RydWN0IGludGVsX2d0OwogCiB2b2lkIGludGVsX21vY3Nf
aW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KTsKIHZvaWQgaW50ZWxfbW9jc19pbml0X2VuZ2luZShz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwordm9pZCBpbnRlbF9tb2NzX3Nob3dfaW5m
byhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBzdHJ1Y3QgZHJtX3ByaW50ZXIgKnApOwogCiBpbnQgaW50
ZWxfbW9jc19lbWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKTsKIApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwppbmRleCAzYjE1MjY2YzU0ZmQuLjFhYTAyMmViMmMzZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTQxLDYgKzQxLDcgQEAKIAogI2luY2x1ZGUgImdl
bS9pOTE1X2dlbV9jb250ZXh0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfcmVzZXQuaCIKKyNpbmNs
dWRlICJndC9pbnRlbF9tb2NzLmgiCiAjaW5jbHVkZSAiZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Np
b24uaCIKIAogI2luY2x1ZGUgImk5MTVfZGVidWdmcy5oIgpAQCAtNzYsNiArNzcsMTYgQEAgc3Rh
dGljIGludCBpOTE1X2NhcGFiaWxpdGllcyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEp
CiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQgc2hvd19tb2NzX2luZm8oc3RydWN0IHNlcV9m
aWxlICptLCB2b2lkICpkYXRhKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
bm9kZV90b19pOTE1KG0tPnByaXZhdGUpOworCXN0cnVjdCBkcm1fcHJpbnRlciBwID0gZHJtX3Nl
cV9maWxlX3ByaW50ZXIobSk7CisKKwlpbnRlbF9tb2NzX3Nob3dfaW5mbygmaTkxNS0+Z3QsICZw
KTsKKworCXJldHVybiAwOworfQorCiBzdGF0aWMgY2hhciBnZXRfcGluX2ZsYWcoc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKIAlyZXR1cm4gb2JqLT5waW5fZ2xvYmFsID8gJ3An
IDogJyAnOwpAQCAtNDM1Miw2ICs0MzYzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faW5m
b19saXN0IGk5MTVfZGVidWdmc19saXN0W10gPSB7CiAJeyJpOTE1X3NzZXVfc3RhdHVzIiwgaTkx
NV9zc2V1X3N0YXR1cywgMH0sCiAJeyJpOTE1X2RycnNfc3RhdHVzIiwgaTkxNV9kcnJzX3N0YXR1
cywgMH0sCiAJeyJpOTE1X3Jwc19ib29zdF9pbmZvIiwgaTkxNV9ycHNfYm9vc3RfaW5mbywgMH0s
CisJeyJpOTE1X21vY3NfaW5mbyIsIHNob3dfbW9jc19pbmZvLCAwfSwKIH07CiAjZGVmaW5lIEk5
MTVfREVCVUdGU19FTlRSSUVTIEFSUkFZX1NJWkUoaTkxNV9kZWJ1Z2ZzX2xpc3QpCiAKLS0gCjIu
MjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
