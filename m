Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDB830F2EF
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 13:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551A46ECA6;
	Thu,  4 Feb 2021 12:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60A3D6EC98;
 Thu,  4 Feb 2021 12:11:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23785959-1500050 
 for multiple; Thu, 04 Feb 2021 12:11:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Thu,  4 Feb 2021 12:11:21 +0000
Message-Id: <20210204121121.2660-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210204121121.2660-1-chris@chris-wilson.co.uk>
References: <20210204121121.2660-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 3/3] drm/i915/gt: Export device and per-process
 runtimes via procfs
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVnaXN0ZXIgd2l0aCAvcHJvYy9ncHUgdG8gcHJvdmlkZSB0aGUgY2xpZW50IHJ1bnRpbWVzIGZv
ciBnZW5lcmljCnRvcC1saWtlIG92ZXJ2aWV3LCBlLmcuIGdub21lLXN5c3RlbS1tb25pdG9yIGNh
biB1c2UgdGhpcyBpbmZvcm1hdGlvbiB0bwpzaG93IHRoZSBwZXItcHJvY2VzcyBtdWx0aS1HUFUg
dXNhZ2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAgICAgICAgICAgIHwgIDEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAgICB8ICA1ICsrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wcm9jLmMgIHwgNjYgKysrKysrKysrKysrKysr
KysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wcm9jLmggIHwgMTQg
KysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggfCAgMyArKwog
NSBmaWxlcyBjaGFuZ2VkLCA4OSBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcHJvYy5jCiBjcmVhdGUgbW9kZSAxMDA2NDQg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcHJvYy5oCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmls
ZQppbmRleCBjZTAxNjM0ZDRlYTcuLjE2MTcxZjY1ZjVkMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUK
QEAgLTEwNCw2ICsxMDQsNyBAQCBndC15ICs9IFwKIAlndC9pbnRlbF9ndF9pcnEubyBcCiAJZ3Qv
aW50ZWxfZ3RfcG0ubyBcCiAJZ3QvaW50ZWxfZ3RfcG1faXJxLm8gXAorCWd0L2ludGVsX2d0X3By
b2MubyBcCiAJZ3QvaW50ZWxfZ3RfcmVxdWVzdHMubyBcCiAJZ3QvaW50ZWxfZ3R0Lm8gXAogCWd0
L2ludGVsX2xsYy5vIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCmluZGV4IGNhNzZmOTNi
YzAzZC4uNzIxOTljMTMzMzBkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKQEAgLTEy
LDYgKzEyLDcgQEAKICNpbmNsdWRlICJpbnRlbF9ndF9idWZmZXJfcG9vbC5oIgogI2luY2x1ZGUg
ImludGVsX2d0X2Nsb2NrX3V0aWxzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfcG0uaCIKKyNpbmNs
dWRlICJpbnRlbF9ndF9wcm9jLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfcmVxdWVzdHMuaCIKICNp
bmNsdWRlICJpbnRlbF9tb2NzLmgiCiAjaW5jbHVkZSAiaW50ZWxfcmM2LmgiCkBAIC0zNzMsNiAr
Mzc0LDggQEAgdm9pZCBpbnRlbF9ndF9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGludGVsX2d0ICpn
dCkKIAlpbnRlbF9ycHNfZHJpdmVyX3JlZ2lzdGVyKCZndC0+cnBzKTsKIAogCWRlYnVnZnNfZ3Rf
cmVnaXN0ZXIoZ3QpOworCisJaW50ZWxfZ3RfZHJpdmVyX3JlZ2lzdGVyX19wcm9jKGd0KTsKIH0K
IAogc3RhdGljIGludCBpbnRlbF9ndF9pbml0X3NjcmF0Y2goc3RydWN0IGludGVsX2d0ICpndCwg
dW5zaWduZWQgaW50IHNpemUpCkBAIC02NTYsNiArNjU5LDggQEAgdm9pZCBpbnRlbF9ndF9kcml2
ZXJfdW5yZWdpc3RlcihzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewogCWludGVsX3dha2VyZWZfdCB3
YWtlcmVmOwogCisJaW50ZWxfZ3RfZHJpdmVyX3VucmVnaXN0ZXJfX3Byb2MoZ3QpOworCiAJaW50
ZWxfcnBzX2RyaXZlcl91bnJlZ2lzdGVyKCZndC0+cnBzKTsKIAogCS8qCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wcm9jLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF9wcm9jLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwMDAwLi40MmRiMjIzMjZjN2MKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF9wcm9jLmMKQEAgLTAsMCArMSw2NiBAQAorLy8gU1BEWC1MaWNlbnNl
LUlkZW50aWZpZXI6IE1JVAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0
aW9uCisgKi8KKworI2luY2x1ZGUgPGxpbnV4L3Byb2NfZ3B1Lmg+CisKKyNpbmNsdWRlICJpOTE1
X2RybV9jbGllbnQuaCIKKyNpbmNsdWRlICJpOTE1X2Rydi5oIgorI2luY2x1ZGUgImludGVsX2d0
LmgiCisjaW5jbHVkZSAiaW50ZWxfZ3RfcG0uaCIKKyNpbmNsdWRlICJpbnRlbF9ndF9wcm9jLmgi
CisKK3N0YXRpYyB2b2lkIHByb2NfcnVudGltZV9waWQoc3RydWN0IGludGVsX2d0ICpndCwKKwkJ
CSAgICAgc3RydWN0IHBpZCAqcGlkLAorCQkJICAgICBzdHJ1Y3QgcHJvY19ncHVfcnVudGltZSAq
cnQpCit7CisJc3RydWN0IGk5MTVfZHJtX2NsaWVudHMgKmNsaWVudHMgPSAmZ3QtPmk5MTUtPmNs
aWVudHM7CisKKwlCVUlMRF9CVUdfT04oTUFYX0VOR0lORV9DTEFTUyA+PSBBUlJBWV9TSVpFKHJ0
LT5jaGFubmVsKSk7CisKKwlydC0+ZGV2aWNlID0gaTkxNV9kcm1fY2xpZW50c19nZXRfcnVudGlt
ZShjbGllbnRzLCBwaWQsIHJ0LT5jaGFubmVsKTsKKwlydC0+bmNoYW5uZWwgPSBNQVhfRU5HSU5F
X0NMQVNTICsgMTsKK30KKworc3RhdGljIHZvaWQgcHJvY19ydW50aW1lX2RldmljZShzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0LAorCQkJCXN0cnVjdCBwaWQgKnBpZCwKKwkJCQlzdHJ1Y3QgcHJvY19ncHVf
cnVudGltZSAqcnQpCit7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOworCWVudW0g
aW50ZWxfZW5naW5lX2lkIGlkOworCWt0aW1lX3QgZHVtbXk7CisKKwlydC0+bmNoYW5uZWwgPSAw
OworCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGd0LCBpZCkgeworCQlydC0+Y2hhbm5lbFtydC0+
bmNoYW5uZWwrK10gPQorCQkJaW50ZWxfZW5naW5lX2dldF9idXN5X3RpbWUoZW5naW5lLCAmZHVt
bXkpOworCQlpZiAocnQtPm5jaGFubmVsID09IEFSUkFZX1NJWkUocnQtPmNoYW5uZWwpKQorCQkJ
YnJlYWs7CisJfQorCXJ0LT5kZXZpY2UgPSBpbnRlbF9ndF9nZXRfYXdha2VfdGltZShndCk7Cit9
CisKK3N0YXRpYyB2b2lkIHByb2NfcnVudGltZShzdHJ1Y3QgcHJvY19ncHUgKnBnLAorCQkJIHN0
cnVjdCBwaWQgKnBpZCwKKwkJCSBzdHJ1Y3QgcHJvY19ncHVfcnVudGltZSAqcnQpCit7CisJc3Ry
dWN0IGludGVsX2d0ICpndCA9IGNvbnRhaW5lcl9vZihwZywgdHlwZW9mKCpndCksIHByb2MpOwor
CisJc3Ryc2NweShydC0+bmFtZSwgZGV2X25hbWUoZ3QtPmk5MTUtPmRybS5kZXYpLCBzaXplb2Yo
cnQtPm5hbWUpKTsKKwlpZiAocGlkKQorCQlwcm9jX3J1bnRpbWVfcGlkKGd0LCBwaWQsIHJ0KTsK
KwllbHNlCisJCXByb2NfcnVudGltZV9kZXZpY2UoZ3QsIHBpZCwgcnQpOworfQorCit2b2lkIGlu
dGVsX2d0X2RyaXZlcl9yZWdpc3Rlcl9fcHJvYyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCWd0
LT5wcm9jLmZuID0gcHJvY19ydW50aW1lOworCXByb2NfZ3B1X3JlZ2lzdGVyKCZndC0+cHJvYyk7
Cit9CisKK3ZvaWQgaW50ZWxfZ3RfZHJpdmVyX3VucmVnaXN0ZXJfX3Byb2Moc3RydWN0IGludGVs
X2d0ICpndCkKK3sKKwlwcm9jX2dwdV91bnJlZ2lzdGVyKCZndC0+cHJvYyk7Cit9CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wcm9jLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wcm9jLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMDAwLi43YTliZmYwZmIwMjAKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wcm9jLmgKQEAgLTAsMCArMSwxNCBAQAorLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVs
IENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBJTlRFTF9HVF9QUk9DX0gKKyNkZWZpbmUgSU5U
RUxfR1RfUFJPQ19ICisKK3N0cnVjdCBpbnRlbF9ndDsKKwordm9pZCBpbnRlbF9ndF9kcml2ZXJf
cmVnaXN0ZXJfX3Byb2Moc3RydWN0IGludGVsX2d0ICpndCk7Cit2b2lkIGludGVsX2d0X2RyaXZl
cl91bnJlZ2lzdGVyX19wcm9jKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOworCisjZW5kaWYgLyogSU5U
RUxfR1RfUFJPQ19IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaApp
bmRleCA2MjZhZjM3Yzc3OTAuLjNmYzZkOTc0MTc2NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ndF90eXBlcy5oCkBAIC0xMCw2ICsxMCw3IEBACiAjaW5jbHVkZSA8bGludXgvbGlz
dC5oPgogI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CiAjaW5jbHVkZSA8bGludXgvbm90aWZpZXIu
aD4KKyNpbmNsdWRlIDxsaW51eC9wcm9jX2dwdS5oPgogI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2Nr
Lmg+CiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KIApAQCAtMTM1LDYgKzEzNiw4IEBAIHN0cnVj
dCBpbnRlbF9ndCB7CiAKIAlzdHJ1Y3QgaTkxNV92bWEgKnNjcmF0Y2g7CiAKKwlzdHJ1Y3QgcHJv
Y19ncHUgcHJvYzsKKwogCXN0cnVjdCBpbnRlbF9ndF9pbmZvIHsKIAkJaW50ZWxfZW5naW5lX21h
c2tfdCBlbmdpbmVfbWFzazsKIAkJdTggbnVtX2VuZ2luZXM7Ci0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
