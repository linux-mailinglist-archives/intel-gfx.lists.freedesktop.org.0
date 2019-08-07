Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E92851D2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:14:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B253A6E6DE;
	Wed,  7 Aug 2019 17:14:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EB4489D63
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:14:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17921849-1500050 
 for multiple; Wed, 07 Aug 2019 18:14:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 18:14:48 +0100
Message-Id: <20190807171448.29989-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Always request completion
 before marking an error
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

RHVlIHRvIGZ1biBhbmQgZ2FtZXMgaW4gb3VyIHByZWVtcHQtdG8tYnVzeSwgaXQgaXMgcG9zc2li
bGUgZm9yIGEKcmVxdWVzdCB0byBiZSBjb21wbGV0ZWQgaW4gdGhlIGJhY2tncm91bmQuIEJlIHZp
Z2lsYW50IGFuZCBhdm9pZCBzZXR0aW5nCmFuIGVycm9yIG9uIGFscmVhZHkgc2lnbmFsZWQgcmVx
dWVzdCwgYXMgZG1hX2ZlbmNlX3NldF9lcnJvcigpIHRocm93cyBhCndhcm5pbmcuCgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIxICsrKysrKysrKysrLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMmI5NzY0MWZlYWMzLi5hYmRiM2U4ZmQx
OWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yMjQsNiArMjI0LDEzIEBA
IHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19pbml0X3JlZ19zdGF0ZSh1MzIgKnJlZ19zdGF0ZSwKIAkJ
CQkgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAkJCQkgICAgIHN0cnVjdCBp
bnRlbF9yaW5nICpyaW5nKTsKIAorc3RhdGljIHZvaWQgbWFya19laW8oc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEpCit7CisJaWYgKCFpOTE1X3JlcXVlc3Rfc2lnbmFsZWQocnEpKQorCQlkbWFfZmVu
Y2Vfc2V0X2Vycm9yKCZycS0+ZmVuY2UsIC1FSU8pOworCWk5MTVfcmVxdWVzdF9tYXJrX2NvbXBs
ZXRlKHJxKTsKK30KKwogc3RhdGljIGlubGluZSB1MzIgaW50ZWxfaHdzX3ByZWVtcHRfYWRkcmVz
cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJcmV0dXJuIChpOTE1X2dndHRf
b2Zmc2V0KGVuZ2luZS0+c3RhdHVzX3BhZ2Uudm1hKSArCkBAIC0yMzk2LDEyICsyNDAzLDggQEAg
c3RhdGljIHZvaWQgZXhlY2xpc3RzX2NhbmNlbF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCiAJX19leGVjbGlzdHNfcmVzZXQoZW5naW5lLCB0cnVlKTsKIAogCS8qIE1h
cmsgYWxsIGV4ZWN1dGluZyByZXF1ZXN0cyBhcyBza2lwcGVkLiAqLwotCWxpc3RfZm9yX2VhY2hf
ZW50cnkocnEsICZlbmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cywgc2NoZWQubGluaykgewotCQlpZiAo
IWk5MTVfcmVxdWVzdF9zaWduYWxlZChycSkpCi0JCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZycS0+
ZmVuY2UsIC1FSU8pOwotCi0JCWk5MTVfcmVxdWVzdF9tYXJrX2NvbXBsZXRlKHJxKTsKLQl9CisJ
bGlzdF9mb3JfZWFjaF9lbnRyeShycSwgJmVuZ2luZS0+YWN0aXZlLnJlcXVlc3RzLCBzY2hlZC5s
aW5rKQorCQltYXJrX2VpbyhycSk7CiAKIAkvKiBGbHVzaCB0aGUgcXVldWVkIHJlcXVlc3RzIHRv
IHRoZSB0aW1lbGluZSBsaXN0IChmb3IgcmV0aXJpbmcpLiAqLwogCXdoaWxlICgocmIgPSByYl9m
aXJzdF9jYWNoZWQoJmV4ZWNsaXN0cy0+cXVldWUpKSkgewpAQCAtMjQxMSw4ICsyNDE0LDcgQEAg
c3RhdGljIHZvaWQgZXhlY2xpc3RzX2NhbmNlbF9yZXF1ZXN0cyhzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCiAJCXByaW9saXN0X2Zvcl9lYWNoX3JlcXVlc3RfY29uc3VtZShycSwgcm4s
IHAsIGkpIHsKIAkJCWxpc3RfZGVsX2luaXQoJnJxLT5zY2hlZC5saW5rKTsKIAkJCV9faTkxNV9y
ZXF1ZXN0X3N1Ym1pdChycSk7Ci0JCQlkbWFfZmVuY2Vfc2V0X2Vycm9yKCZycS0+ZmVuY2UsIC1F
SU8pOwotCQkJaTkxNV9yZXF1ZXN0X21hcmtfY29tcGxldGUocnEpOworCQkJbWFya19laW8ocnEp
OwogCQl9CiAKIAkJcmJfZXJhc2VfY2FjaGVkKCZwLT5ub2RlLCAmZXhlY2xpc3RzLT5xdWV1ZSk7
CkBAIC0yNDMxLDggKzI0MzMsNyBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfY2FuY2VsX3JlcXVl
c3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJaWYgKHZlLT5yZXF1ZXN0KSB7
CiAJCQl2ZS0+cmVxdWVzdC0+ZW5naW5lID0gZW5naW5lOwogCQkJX19pOTE1X3JlcXVlc3Rfc3Vi
bWl0KHZlLT5yZXF1ZXN0KTsKLQkJCWRtYV9mZW5jZV9zZXRfZXJyb3IoJnZlLT5yZXF1ZXN0LT5m
ZW5jZSwgLUVJTyk7Ci0JCQlpOTE1X3JlcXVlc3RfbWFya19jb21wbGV0ZSh2ZS0+cmVxdWVzdCk7
CisJCQltYXJrX2Vpbyh2ZS0+cmVxdWVzdCk7CiAJCQl2ZS0+YmFzZS5leGVjbGlzdHMucXVldWVf
cHJpb3JpdHlfaGludCA9IElOVF9NSU47CiAJCQl2ZS0+cmVxdWVzdCA9IE5VTEw7CiAJCX0KLS0g
CjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
