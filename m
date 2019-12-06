Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA48114E52
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 10:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC63E6F995;
	Fri,  6 Dec 2019 09:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1FB6F993
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 09:45:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19481374-1500050 
 for multiple; Fri, 06 Dec 2019 09:45:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Dec 2019 09:45:10 +0000
Message-Id: <20191206094512.1101710-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206094512.1101710-1-chris@chris-wilson.co.uk>
References: <20191206094512.1101710-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/selftests: Impose a timeout for
 request submission
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

QXZvaWQgc3Bpbm5pbmcgaW5kZWZpbml0ZWx5IHdhaXRpbmcgZm9yIHRoZSByZXF1ZXN0IHRvIGJl
IHN1Ym1pdHRlZCwgYW5kCmluc3RlYWQgYXBwbHkgYSB0aW1lb3V0LiBBIHNlY29uZGFyeSBiZW5l
Zml0IGlzIHRoYXQgdGhlIGVycm9yIG1lc3NhZ2UKd2lsbCBzaG93IHdoaWNoIHN1c3BlY3QgaXMg
YmxvY2tlZC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jIHwgMjYg
KysrKysrKysrKysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMK
aW5kZXggNTRiY2UyODI3MTdhLi4zNzE1NzYzYWY2ZTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X2xyYy5jCkBAIC01MzIsMTMgKzUzMiwxOSBAQCBzdGF0aWMgc3RydWN0IGk5MTVf
cmVxdWVzdCAqbm9wX3JlcXVlc3Qoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCXJl
dHVybiBycTsKIH0KIAotc3RhdGljIHZvaWQgd2FpdF9mb3Jfc3VibWl0KHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwKLQkJCSAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKK3N0YXRp
YyBpbnQgd2FpdF9mb3Jfc3VibWl0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKKwkJ
CSAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKKwkJCSAgICB1bnNpZ25lZCBsb25nIHRpbWVv
dXQpCiB7CisJdGltZW91dCArPSBqaWZmaWVzOwogCWRvIHsKIAkJY29uZF9yZXNjaGVkKCk7CiAJ
CWludGVsX2VuZ2luZV9mbHVzaF9zdWJtaXNzaW9uKGVuZ2luZSk7Ci0JfSB3aGlsZSAoIWk5MTVf
cmVxdWVzdF9pc19hY3RpdmUocnEpKTsKKwkJaWYgKGk5MTVfcmVxdWVzdF9pc19hY3RpdmUocnEp
KQorCQkJcmV0dXJuIDA7CisJfSB3aGlsZSAodGltZV9iZWZvcmUoamlmZmllcywgdGltZW91dCkp
OworCisJcmV0dXJuIC1FVElNRTsKIH0KIAogc3RhdGljIGxvbmcgdGltZXNsaWNlX3RocmVzaG9s
ZChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCkBAIC02MDYsNyArNjEyLDEy
IEBAIHN0YXRpYyBpbnQgbGl2ZV90aW1lc2xpY2VfcXVldWUodm9pZCAqYXJnKQogCQkJZ290byBl
cnJfaGVhcnRiZWF0OwogCQl9CiAJCWVuZ2luZS0+c2NoZWR1bGUocnEsICZhdHRyKTsKLQkJd2Fp
dF9mb3Jfc3VibWl0KGVuZ2luZSwgcnEpOworCQllcnIgPSB3YWl0X2Zvcl9zdWJtaXQoZW5naW5l
LCBycSwgSFogLyAyKTsKKwkJaWYgKGVycikgeworCQkJcHJfZXJyKCIlczogVGltZWQgb3V0IHRy
eWluZyB0byBzdWJtaXQgc2VtYXBob3Jlc1xuIiwKKwkJCSAgICAgICBlbmdpbmUtPm5hbWUpOwor
CQkJZ290byBlcnJfcnE7CisJCX0KIAogCQkvKiBFTFNQWzFdOiBub3AgcmVxdWVzdCAqLwogCQlu
b3AgPSBub3BfcmVxdWVzdChlbmdpbmUpOwpAQCAtNjE0LDggKzYyNSwxMyBAQCBzdGF0aWMgaW50
IGxpdmVfdGltZXNsaWNlX3F1ZXVlKHZvaWQgKmFyZykKIAkJCWVyciA9IFBUUl9FUlIobm9wKTsK
IAkJCWdvdG8gZXJyX3JxOwogCQl9Ci0JCXdhaXRfZm9yX3N1Ym1pdChlbmdpbmUsIG5vcCk7CisJ
CWVyciA9IHdhaXRfZm9yX3N1Ym1pdChlbmdpbmUsIG5vcCwgSFogLyAyKTsKIAkJaTkxNV9yZXF1
ZXN0X3B1dChub3ApOworCQlpZiAoZXJyKSB7CisJCQlwcl9lcnIoIiVzOiBUaW1lZCBvdXQgdHJ5
aW5nIHRvIHN1Ym1pdCBub3BcbiIsCisJCQkgICAgICAgZW5naW5lLT5uYW1lKTsKKwkJCWdvdG8g
ZXJyX3JxOworCQl9CiAKIAkJR0VNX0JVR19PTihpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSk7
CiAJCUdFTV9CVUdfT04oZXhlY2xpc3RzX2FjdGl2ZSgmZW5naW5lLT5leGVjbGlzdHMpICE9IHJx
KTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
