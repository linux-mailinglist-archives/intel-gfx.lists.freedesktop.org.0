Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BC7FB390
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 16:20:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 080136ED4C;
	Wed, 13 Nov 2019 15:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FE46ED4C
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 15:20:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19189062-1500050 
 for multiple; Wed, 13 Nov 2019 15:19:57 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 15:19:56 +0000
Message-Id: <20191113151956.32242-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Invalidate as we write the gen7
 breadcrumb
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

U3RpbGwgdGhlIHNhZ2Egb2YgdGhlIGhzdyBsaXZlX2JsdCBpbmNvaGVyZW5jeSBjb250aW51ZXMu
IFdoaWxlIGl0IGRpZApzZWVtIHRoYXQgdGhlIGludmFsaWRhdGUgYmVmb3JlIHRoZSBicmVhZGNy
dW1iIGhhZCBpbXByb3ZlZCB0aGUgbXRiZiwKbmV2ZXJ0aGVsZXNzIGxpdmVfYmx0IHN0aWxsIGZh
aWxlZC4gTWlrYSdzIG5leHQgaWRlYSB3YXMgdG8gcHVsbCB0aGUKaW52YWxpZGF0ZS1zdGFsbCBp
bnRvIHRoZSBicmVhZGNydW1iIHdyaXRlIGl0c2VsZi4KClJlZmVyZW5jZXM6IDg2MGFmYTA4Njg0
MSAoImRybS9pOTE1L2d0OiBGbHVzaCBnZW43IGV2ZW4gaGFyZGVyIikKUmVmZXJlbmNlczogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMTQ3ClRlc3RjYXNl
OiBpZ3QvaTkxNV9zZWxmdGVzdC9saXZlX2JsdApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBh
bGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jp
bmdfc3VibWlzc2lvbi5jIHwgOSArKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yaW5nX3N1Ym1pc3Npb24uYwppbmRleCBlOGJlZTQ0YWRkMzQuLmYyNWNlY2NiMzM1ZSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKQEAg
LTQ1NCwxMiArNDU0LDggQEAgc3RhdGljIHUzMiAqZ2VuN194Y3NfZW1pdF9icmVhZGNydW1iKHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCB1MzIgKmNzKQogCUdFTV9CVUdfT04oaTkxNV9yZXF1ZXN0
X2FjdGl2ZV90aW1lbGluZShycSktPmh3c3BfZ2d0dCAhPSBycS0+ZW5naW5lLT5zdGF0dXNfcGFn
ZS52bWEpOwogCUdFTV9CVUdfT04ob2Zmc2V0X2luX3BhZ2UoaTkxNV9yZXF1ZXN0X2FjdGl2ZV90
aW1lbGluZShycSktPmh3c3Bfb2Zmc2V0KSAhPSBJOTE1X0dFTV9IV1NfU0VRTk9fQUREUik7CiAK
LQkqY3MrKyA9IChNSV9GTFVTSF9EVyB8IE1JX0lOVkFMSURBVEVfVExCIHwKLQkJIE1JX0ZMVVNI
X0RXX1NUT1JFX0lOREVYIHwgTUlfRkxVU0hfRFdfT1BfU1RPUkVEVyk7Ci0JKmNzKysgPSBJOTE1
X0dFTV9IV1NfU0NSQVRDSF9BRERSIHwgTUlfRkxVU0hfRFdfVVNFX0dUVDsKLQkqY3MrKyA9IDA7
Ci0KLQkqY3MrKyA9IE1JX0ZMVVNIX0RXIHwgTUlfRkxVU0hfRFdfT1BfU1RPUkVEVyB8IE1JX0ZM
VVNIX0RXX1NUT1JFX0lOREVYOworCSpjcysrID0gTUlfRkxVU0hfRFcgfCBNSV9JTlZBTElEQVRF
X1RMQiB8CisJCU1JX0ZMVVNIX0RXX09QX1NUT1JFRFcgfCBNSV9GTFVTSF9EV19TVE9SRV9JTkRF
WDsKIAkqY3MrKyA9IEk5MTVfR0VNX0hXU19TRVFOT19BRERSIHwgTUlfRkxVU0hfRFdfVVNFX0dU
VDsKIAkqY3MrKyA9IHJxLT5mZW5jZS5zZXFubzsKIApAQCAtNDc0LDYgKzQ3MCw3IEBAIHN0YXRp
YyB1MzIgKmdlbjdfeGNzX2VtaXRfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwg
dTMyICpjcykKIAkqY3MrKyA9IDA7CiAKIAkqY3MrKyA9IE1JX1VTRVJfSU5URVJSVVBUOworCSpj
cysrID0gTUlfTk9PUDsKIAogCXJxLT50YWlsID0gaW50ZWxfcmluZ19vZmZzZXQocnEsIGNzKTsK
IAlhc3NlcnRfcmluZ190YWlsX3ZhbGlkKHJxLT5yaW5nLCBycS0+dGFpbCk7Ci0tIAoyLjI0LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
