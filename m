Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7635C0D1A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 23:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82CAC6E279;
	Fri, 27 Sep 2019 21:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B116E271
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 21:18:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18644757-1500050 
 for multiple; Fri, 27 Sep 2019 22:17:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 22:17:48 +0100
Message-Id: <20190927211749.2181-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190927211749.2181-1-chris@chris-wilson.co.uk>
References: <20190927211749.2181-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Distinguish mock device
 from no wakeref
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

T24gc3lzdGVtcyB0aGF0IGhhdmUgbm8gcnVudGltZS1wbSwgd2UgbWFyayB0aGUgd2FrZXJlZiBh
cyBiZWluZyAtMS4gV2UKdGhlcmVmb3JlIGNhbm5vdCB1c2UgdGhhdCB2YWx1ZSBmb3IgdGhlIG1v
Y2stZ3QgaW5kaWNhdG9yLCBzbyBvcHQgZm9yCi1FTk9ERVYgaW5zdGVhZC4gVGhlIHdha2VyZWYg
c2hvdWxkIG5ldmVyIGJlIGFuIGVycm9yIHZhbHVlIC0tIG9uZQpob3BlcyEKClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogQW5kaSBTaHl0
aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uaCAgICAgICAgICAgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL21vY2tfZ2VtX2RldmljZS5jIHwgMyArLS0KIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3BtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5o
CmluZGV4IGFiNzk0ZTg1MzM1Ni4uOTk3NzcwZDNhOTY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0X3BtLmgKQEAgLTU3LDcgKzU3LDcgQEAgaW50IGludGVsX2d0X3J1bnRpbWVfcmVz
dW1lKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwogCiBzdGF0aWMgaW5saW5lIGJvb2wgaXNfbW9ja19n
dChjb25zdCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQogewotCXJldHVybiBJOTE1X1NFTEZURVNUX09O
TFkoZ3QtPmF3YWtlID09IC0xKTsKKwlyZXR1cm4gSTkxNV9TRUxGVEVTVF9PTkxZKGd0LT5hd2Fr
ZSA9PSAtRU5PREVWKTsKIH0KIAogI2VuZGlmIC8qIElOVEVMX0dUX1BNX0ggKi8KZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwppbmRleCA5MWYx
NWZhNzI4Y2QuLjI0NDgwNjc4MjJhZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYwpAQCAtMTgyLDYgKzE4Miw3IEBAIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICptb2NrX2dlbV9kZXZpY2Uodm9pZCkKIAlpOTE1X2dlbV9pbml0X19tbShp
OTE1KTsKIAlpbnRlbF9ndF9pbml0X2Vhcmx5KCZpOTE1LT5ndCwgaTkxNSk7CiAJYXRvbWljX2lu
YygmaTkxNS0+Z3Qud2FrZXJlZi5jb3VudCk7IC8qIGRpc2FibGU7IG5vIGh3IHN1cHBvcnQgKi8K
KwlpOTE1LT5ndC5hd2FrZSA9IC1FTk9ERVY7CiAKIAlpOTE1LT53cSA9IGFsbG9jX29yZGVyZWRf
d29ya3F1ZXVlKCJtb2NrIiwgMCk7CiAJaWYgKCFpOTE1LT53cSkKQEAgLTE5Miw4ICsxOTMsNiBA
QCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqbW9ja19nZW1fZGV2aWNlKHZvaWQpCiAJSU5JVF9E
RUxBWUVEX1dPUksoJmk5MTUtPmdlbS5yZXRpcmVfd29yaywgbW9ja19yZXRpcmVfd29ya19oYW5k
bGVyKTsKIAlJTklUX1dPUksoJmk5MTUtPmdlbS5pZGxlX3dvcmssIG1vY2tfaWRsZV93b3JrX2hh
bmRsZXIpOwogCi0JaTkxNS0+Z3QuYXdha2UgPSAtMTsKLQogCWludGVsX3RpbWVsaW5lc19pbml0
KGk5MTUpOwogCiAJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Ci0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
