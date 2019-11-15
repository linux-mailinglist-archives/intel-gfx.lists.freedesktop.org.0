Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF22BFDC83
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 12:48:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF1376E4DD;
	Fri, 15 Nov 2019 11:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B0B6E4DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 11:48:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19211313-1500050 
 for multiple; Fri, 15 Nov 2019 11:48:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 11:48:00 +0000
Message-Id: <20191115114800.725061-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Use gt locals for accessing rc6
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

UkM2IGlzIHRyYWNrZWQgdW5kZXJuZWF0aCB0aGUgaW50ZWxfZ3QsIHNvIHVzZSBvdXIgbG9jYWwg
cG9pbnRlcnMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5j
b20+CkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X3BtLmMKaW5kZXggNjE4N2NkZDA2NjQ2Li5lNjFmNzUyYTNjZDUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYwpAQCAtNjIsNyArNjIsNyBAQCBzdGF0aWMgaW50IF9fZ3Rf
dW5wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZikKIAlHRU1fQlVHX09OKCFndC0+YXdha2Up
OwogCiAJaWYgKE5FRURTX1JDNl9DVFhfQ09SUlVQVElPTl9XQShpOTE1KSkKLQkJaW50ZWxfdW5j
b3JlX2ZvcmNld2FrZV9nZXQoJmk5MTUtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CisJCWludGVs
X3VuY29yZV9mb3JjZXdha2VfZ2V0KGd0LT51bmNvcmUsIEZPUkNFV0FLRV9BTEwpOwogCiAJaW50
ZWxfcnBzX3VucGFyaygmZ3QtPnJwcyk7CiAJaTkxNV9wbXVfZ3RfdW5wYXJrZWQoaTkxNSk7CkBA
IC05MCw4ICs5MCw4IEBAIHN0YXRpYyBpbnQgX19ndF9wYXJrKHN0cnVjdCBpbnRlbF93YWtlcmVm
ICp3ZikKIAlpbnRlbF9zeW5jaHJvbml6ZV9pcnEoaTkxNSk7CiAKIAlpZiAoTkVFRFNfUkM2X0NU
WF9DT1JSVVBUSU9OX1dBKGk5MTUpKSB7Ci0JCWludGVsX3JjNl9jdHhfd2FfY2hlY2soJmk5MTUt
Pmd0LnJjNik7Ci0JCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KCZpOTE1LT51bmNvcmUsIEZP
UkNFV0FLRV9BTEwpOworCQlpbnRlbF9yYzZfY3R4X3dhX2NoZWNrKCZndC0+cmM2KTsKKwkJaW50
ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXQoZ3QtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CiAJfQog
CiAJR0VNX0JVR19PTighd2FrZXJlZik7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
