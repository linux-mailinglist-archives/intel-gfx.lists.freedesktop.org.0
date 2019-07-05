Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E37960D5B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 23:52:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915576E563;
	Fri,  5 Jul 2019 21:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7649A6E55F
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 21:52:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17148573-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Jul 2019 22:52:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 22:52:02 +0100
Message-Id: <20190705215204.4559-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190705215204.4559-1-chris@chris-wilson.co.uk>
References: <20190705215204.4559-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915/gtt: Tear down setup and cleanup
 macros for page dma
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpXZSBk
b24ndCB1c2UgY29tbW9uIGNvZGVwYXRocyB0byBzZXR1cCBhbmQgY2xlYW51cCBwYWdlCmRpcmVj
dG9yaWVzIHZzIHBhZ2UgdGFibGVzLiBTbyB0aGVpciBzZXR1cCBhbmQgY2xlYW51cCBtYWNyb3MK
YXJlIG9mIG5vIHVzZSBhbmQgY2FuIGJlIHJlbW92ZWQuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jIHwgMTIgKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKaW5kZXggYWRmNmVhZGQ1MDA5Li5mMDExY2UxYWUwM2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCkBAIC01OTQsOCArNTk0LDYgQEAgc3RhdGljIHZvaWQgY2xlYW51cF9wYWdl
X2RtYShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAogI2RlZmluZSBrbWFwX2F0b21p
Y19weChweCkga21hcF9hdG9taWMocHhfYmFzZShweCktPnBhZ2UpCiAKLSNkZWZpbmUgc2V0dXBf
cHgodm0sIHB4KSBzZXR1cF9wYWdlX2RtYSgodm0pLCBweF9iYXNlKHB4KSkKLSNkZWZpbmUgY2xl
YW51cF9weCh2bSwgcHgpIGNsZWFudXBfcGFnZV9kbWEoKHZtKSwgcHhfYmFzZShweCkpCiAjZGVm
aW5lIGZpbGxfcHgodm0sIHB4LCB2KSBmaWxsX3BhZ2VfZG1hKCh2bSksIHB4X2Jhc2UocHgpLCAo
dikpCiAjZGVmaW5lIGZpbGwzMl9weCh2bSwgcHgsIHYpIGZpbGxfcGFnZV9kbWFfMzIoKHZtKSwg
cHhfYmFzZShweCksICh2KSkKIApAQCAtNjk3LDcgKzY5NSw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkx
NV9wYWdlX3RhYmxlICphbGxvY19wdChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAlp
ZiAodW5saWtlbHkoIXB0KSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAKLQlpZiAodW5s
aWtlbHkoc2V0dXBfcHgodm0sIHB0KSkpIHsKKwlpZiAodW5saWtlbHkoc2V0dXBfcGFnZV9kbWEo
dm0sICZwdC0+YmFzZSkpKSB7CiAJCWtmcmVlKHB0KTsKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01F
TSk7CiAJfQpAQCAtNzA5LDcgKzcwNyw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxl
ICphbGxvY19wdChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAogc3RhdGljIHZvaWQg
ZnJlZV9wdChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgc3RydWN0IGk5MTVfcGFnZV90
YWJsZSAqcHQpCiB7Ci0JY2xlYW51cF9weCh2bSwgcHQpOworCWNsZWFudXBfcGFnZV9kbWEodm0s
ICZwdC0+YmFzZSk7CiAJa2ZyZWUocHQpOwogfQogCkBAIC03NTIsNyArNzUwLDcgQEAgc3RhdGlj
IHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICphbGxvY19wZChzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSkKIAlpZiAodW5saWtlbHkoIXBkKSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01F
TSk7CiAKLQlpZiAodW5saWtlbHkoc2V0dXBfcHgodm0sIHBkKSkpIHsKKwlpZiAodW5saWtlbHko
c2V0dXBfcGFnZV9kbWEodm0sICZwZC0+YmFzZSkpKSB7CiAJCWtmcmVlKHBkKTsKIAkJcmV0dXJu
IEVSUl9QVFIoLUVOT01FTSk7CiAJfQpAQCAtNzY5LDcgKzc2Nyw3IEBAIHN0YXRpYyB2b2lkIGZy
ZWVfcGQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAJCSAgICBzdHJ1Y3QgaTkxNV9w
YWdlX2RpcmVjdG9yeSAqcGQpCiB7CiAJaWYgKGxpa2VseShwZF9oYXNfcGh5c19wYWdlKHBkKSkp
Ci0JCWNsZWFudXBfcHgodm0sIHBkKTsKKwkJY2xlYW51cF9wYWdlX2RtYSh2bSwgJnBkLT5iYXNl
KTsKIAogCWtmcmVlKHBkKTsKIH0KQEAgLTE2NDksNyArMTY0Nyw3IEBAIHN0YXRpYyBzdHJ1Y3Qg
aTkxNV9wcGd0dCAqZ2VuOF9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCiAJfQogCiAJaWYgKGk5MTVfdm1faXNfNGx2bCgmcHBndHQtPnZtKSkgewotCQllcnIgPSBz
ZXR1cF9weCgmcHBndHQtPnZtLCBwcGd0dC0+cGQpOworCQllcnIgPSBzZXR1cF9wYWdlX2RtYSgm
cHBndHQtPnZtLCAmcHBndHQtPnBkLT5iYXNlKTsKIAkJaWYgKGVycikKIAkJCWdvdG8gZXJyX2Zy
ZWVfcGRwOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
