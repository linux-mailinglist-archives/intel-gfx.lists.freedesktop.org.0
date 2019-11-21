Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B3D105099
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 11:35:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 381B06E081;
	Thu, 21 Nov 2019 10:35:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D1C6E081
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 10:35:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19283548-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 10:35:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2019 10:35:46 +0000
Message-Id: <20191121103546.146487-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/execlists: Lock the request while
 validating it during promotion
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

U2luY2UgdGhlIHJlcXVlc3QgaXMgYWxyZWFkeSBvbiB0aGUgSFcgYXMgd2UgcGVyZm9ybSBpdHMg
dmFsaWRhdGlvbiwgaXQKYW5kIGV2ZW4gaXRzIHN1YnNlcXVlbnQgYmFycmllciBtYXkgYmUgY29u
Y3VycmVudGx5IHJldGlyZWQgYmVmb3JlIHdlCnByb2Nlc3MgdGhlIGFzc2VydGlvbnMuIElmIGl0
IGlzIHJldGlyZWQgYWxyZWFkeSBhbmQgc28gb2ZmIHRoZSBIVywgb3VyCmFzc2VydGlvbnMgYmVj
b21lIHZvaWQgYW5kIHdlIG5lZWQgdG8gaWdub3JlIHRoZW0uCgpCdWd6aWxsYTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMzYzClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogSm9v
bmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMjUgKysrKysrKysrKysrKysrKysrKyst
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCBiNjViYzA2ODU1YjAuLmRhNzI3OTRm
MzcwNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTEyOTEsMzggKzEyOTEs
NTMgQEAgYXNzZXJ0X3BlbmRpbmdfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVj
bGlzdHMgKmV4ZWNsaXN0cywKIAl9CiAKIAlmb3IgKHBvcnQgPSBleGVjbGlzdHMtPnBlbmRpbmc7
IChycSA9ICpwb3J0KTsgcG9ydCsrKSB7CisJCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CisJCWJvb2wg
b2sgPSB0cnVlOworCiAJCWlmIChjZSA9PSBycS0+aHdfY29udGV4dCkgewogCQkJR0VNX1RSQUNF
X0VSUigiRHVwIGNvbnRleHQ6JWxseCBpbiBwZW5kaW5nWyV6ZF1cbiIsCiAJCQkJICAgICAgY2Ut
PnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0LAogCQkJCSAgICAgIHBvcnQgLSBleGVjbGlzdHMtPnBl
bmRpbmcpOwogCQkJcmV0dXJuIGZhbHNlOwogCQl9Ci0KIAkJY2UgPSBycS0+aHdfY29udGV4dDsK
KworCQkvKiBIb2xkIHRpZ2h0bHkgb250byB0aGUgbG9jayB0byBwcmV2ZW50IGNvbmN1cnJlbnQg
cmV0aXJlcyEgKi8KKwkJc3Bpbl9sb2NrX2lycXNhdmVfbmVzdGVkKCZycS0+bG9jaywgZmxhZ3Ms
CisJCQkJCSBTSU5HTEVfREVQVEhfTkVTVElORyk7CisKIAkJaWYgKGk5MTVfcmVxdWVzdF9jb21w
bGV0ZWQocnEpKQotCQkJY29udGludWU7CisJCQlnb3RvIHVubG9jazsKIAogCQlpZiAoaTkxNV9h
Y3RpdmVfaXNfaWRsZSgmY2UtPmFjdGl2ZSkgJiYKIAkJICAgICFpOTE1X2dlbV9jb250ZXh0X2lz
X2tlcm5lbChjZS0+Z2VtX2NvbnRleHQpKSB7CiAJCQlHRU1fVFJBQ0VfRVJSKCJJbmFjdGl2ZSBj
b250ZXh0OiVsbHggaW4gcGVuZGluZ1slemRdXG4iLAogCQkJCSAgICAgIGNlLT50aW1lbGluZS0+
ZmVuY2VfY29udGV4dCwKIAkJCQkgICAgICBwb3J0IC0gZXhlY2xpc3RzLT5wZW5kaW5nKTsKLQkJ
CXJldHVybiBmYWxzZTsKKwkJCW9rID0gZmFsc2U7CisJCQlnb3RvIHVubG9jazsKIAkJfQogCiAJ
CWlmICghaTkxNV92bWFfaXNfcGlubmVkKGNlLT5zdGF0ZSkpIHsKIAkJCUdFTV9UUkFDRV9FUlIo
IlVucGlubmVkIGNvbnRleHQ6JWxseCBpbiBwZW5kaW5nWyV6ZF1cbiIsCiAJCQkJICAgICAgY2Ut
PnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0LAogCQkJCSAgICAgIHBvcnQgLSBleGVjbGlzdHMtPnBl
bmRpbmcpOwotCQkJcmV0dXJuIGZhbHNlOworCQkJb2sgPSBmYWxzZTsKKwkJCWdvdG8gdW5sb2Nr
OwogCQl9CiAKIAkJaWYgKCFpOTE1X3ZtYV9pc19waW5uZWQoY2UtPnJpbmctPnZtYSkpIHsKIAkJ
CUdFTV9UUkFDRV9FUlIoIlVucGlubmVkIHJpbmc6JWxseCBpbiBwZW5kaW5nWyV6ZF1cbiIsCiAJ
CQkJICAgICAgY2UtPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0LAogCQkJCSAgICAgIHBvcnQgLSBl
eGVjbGlzdHMtPnBlbmRpbmcpOwotCQkJcmV0dXJuIGZhbHNlOworCQkJb2sgPSBmYWxzZTsKKwkJ
CWdvdG8gdW5sb2NrOwogCQl9CisKK3VubG9jazoKKwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgm
cnEtPmxvY2ssIGZsYWdzKTsKKwkJaWYgKCFvaykKKwkJCXJldHVybiBmYWxzZTsKIAl9CiAKIAly
ZXR1cm4gY2U7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
