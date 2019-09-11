Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A51AFA39
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 12:20:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135CB6E220;
	Wed, 11 Sep 2019 10:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 080466E220
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 10:20:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18449238-1500050 
 for multiple; Wed, 11 Sep 2019 11:20:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 11:19:59 +0100
Message-Id: <20190911101959.13793-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190910073931.GY7482@intel.com>
References: <20190910073931.GY7482@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Allow clobbering gpu resets if
 the display is off
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

SWYgdGhlIGRpc3BsYXkgaXMgaW5hY3RpdmUsIHdlIG5lZWQgbm90IHdvcnJ5IGFib3V0IHRoZSBn
cHUgcmVzZXQKY2xvYmJlcmluZyB0aGUgZGlzcGxheSEgVG8gcHJldmVudCB0aGUgZGlzcGxheSBj
aGFuZ2luZyBzdGF0ZSBiZXR3ZWVuIHVzCmNoZWNraW5nIHRoZSBhY3RpdmUgc3RhdGUgYW5kIGRv
aW5nIHRoZSBoYXJkIHJlc2V0LCB3ZSBpbnRyb2R1Y2UgdGhlCmxpZ2h0d2VpZ2h0IHJlc2V0IGxv
Y2sgdG8gdGhlIGF0b21pYyBjb21taXQgZm9yIHRoZSBhZmZlY3RlZCAobGVnYWN5KQpwbGF0Zm9y
bXMuCgpUZXN0Y2FzZTogaWd0L2dlbV9laW8va21zClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8IDExICsrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yZXNldC5jICAgICAgICB8IDE4ICsrKysrKysrKysrKysrKysrLQogMiBmaWxlcyBj
aGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA0ZWU3NTBmYTNlZjAuLmE5MjQ4
N2Q4ZjRjZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTEzOTg2LDYgKzEzOTg2LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1p
dF90YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjOwogCXU2NCBwdXRfZG9tYWluc1tJOTE1X01BWF9QSVBFU10gPSB7fTsKIAlpbnRl
bF93YWtlcmVmX3Qgd2FrZXJlZiA9IDA7CisJaW50IHNyY3U7CiAJaW50IGk7CiAKIAlpbnRlbF9h
dG9taWNfY29tbWl0X2ZlbmNlX3dhaXQoc3RhdGUpOwpAQCAtMTQwMDUsNiArMTQwMDYsMTIgQEAg
c3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQogCQl9CiAJfQogCisJLyogUHJldmVudCBzdGFydGluZyBhIEdQVSByZXNl
dCB3aGlsZSB3ZSBjaGFuZ2UgZ2xvYmFsIGRpc3BsYXkgc3RhdGUgKi8KKwlzcmN1ID0gLUVOT0RF
VjsKKwlpZiAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmdwdV9yZXNldF9jbG9iYmVyc19kaXNwbGF5
KQorCQkvKiBvbmx5IGZhaWxzIGlmIGludGVycnVwdGVkICovCisJCXNyY3UgPSBpbnRlbF9ndF9y
ZXNldF90cnlsb2NrKCZkZXZfcHJpdi0+Z3QpOworCiAJaW50ZWxfY29tbWl0X21vZGVzZXRfZGlz
YWJsZXMoc3RhdGUpOwogCiAJLyogRklYTUU6IEV2ZW50dWFsbHkgZ2V0IHJpZCBvZiBvdXIgY3J0
Yy0+Y29uZmlnIHBvaW50ZXIgKi8KQEAgLTE0MDQ5LDYgKzE0MDU2LDEwIEBAIHN0YXRpYyB2b2lk
IGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkKIAkvKiBOb3cgZW5hYmxlIHRoZSBjbG9ja3MsIHBsYW5lLCBwaXBlLCBhbmQgY29ubmVjdG9y
cyB0aGF0IHdlIHNldCB1cC4gKi8KIAlkZXZfcHJpdi0+ZGlzcGxheS5jb21taXRfbW9kZXNldF9l
bmFibGVzKHN0YXRlKTsKIAorCisJaWYgKHNyY3UgPiAwKQorCQlpbnRlbF9ndF9yZXNldF91bmxv
Y2soJmRldl9wcml2LT5ndCwgc3JjdSk7CisKIAlpZiAoc3RhdGUtPm1vZGVzZXQpIHsKIAkJaW50
ZWxfZW5jb2RlcnNfdXBkYXRlX2NvbXBsZXRlKHN0YXRlKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmMKaW5kZXggZDhiMTQ5OGQ3YWI3Li5kZjRhODZiZGI2ZjYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAtNyw2ICs3LDcgQEAKICNpbmNsdWRlIDxs
aW51eC9zY2hlZC9tbS5oPgogI2luY2x1ZGUgPGxpbnV4L3N0b3BfbWFjaGluZS5oPgogCisjaW5j
bHVkZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9vdmVybGF5LmgiCiAKQEAg
LTcyOSw2ICs3MzAsMjEgQEAgc3RhdGljIHZvaWQgbm9wX3N1Ym1pdF9yZXF1ZXN0KHN0cnVjdCBp
OTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJaW50ZWxfZW5naW5lX3F1ZXVlX2JyZWFkY3J1bWJzKGVu
Z2luZSk7CiB9CiAKK3N0YXRpYyBib29sIHJlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGM7CisKKwlp
ZiAoIUlOVEVMX0lORk8oaTkxNSktPmdwdV9yZXNldF9jbG9iYmVyc19kaXNwbGF5KQorCQlyZXR1
cm4gZmFsc2U7CisKKwlmb3JfZWFjaF9pbnRlbF9jcnRjKCZpOTE1LT5kcm0sIGNydGMpIHsKKwkJ
aWYgKGNydGMtPmFjdGl2ZSkKKwkJCXJldHVybiB0cnVlOworCX0KKworCXJldHVybiBmYWxzZTsK
K30KKwogc3RhdGljIHZvaWQgX19pbnRlbF9ndF9zZXRfd2VkZ2VkKHN0cnVjdCBpbnRlbF9ndCAq
Z3QpCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwpAQCAtNzU1LDcgKzc3MSw3
IEBAIHN0YXRpYyB2b2lkIF9faW50ZWxfZ3Rfc2V0X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQogCWF3YWtlID0gcmVzZXRfcHJlcGFyZShndCk7CiAKIAkvKiBFdmVuIGlmIHRoZSBHUFUgcmVz
ZXQgZmFpbHMsIGl0IHNob3VsZCBzdGlsbCBzdG9wIHRoZSBlbmdpbmVzICovCi0JaWYgKCFJTlRF
TF9JTkZPKGd0LT5pOTE1KS0+Z3B1X3Jlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkpCisJaWYgKCFyZXNl
dF9jbG9iYmVyc19kaXNwbGF5KGd0LT5pOTE1KSkKIAkJX19pbnRlbF9ndF9yZXNldChndCwgQUxM
X0VOR0lORVMpOwogCiAJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QtPmk5MTUsIGlkKQotLSAK
Mi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
