Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 666F7100F23
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 00:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C89A06E52D;
	Mon, 18 Nov 2019 23:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012056E072
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 23:03:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19248372-1500050 
 for multiple; Mon, 18 Nov 2019 23:02:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 23:02:51 +0000
Message-Id: <20191118230254.2615942-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/19] drm/i915/selftests: Flush the active
 callbacks
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

QmVmb3JlIGNoZWNraW5nIHRoZSBjdXJyZW50IGk5MTVfYWN0aXZlIHN0YXRlIGZvciB0aGUgYXN5
bmNocm9ub3VzIHdvcmsKd2Ugc3VibWl0dGVkLCBmbHVzaCBhbnkgb25nb2luZyBjYWxsYmFjay4g
VGhpcyBlbnN1cmVzIHRoYXQgb3VyIHNhbXBsaW5nCmlzIHJvYnVzdCBhbmQgZG9lcyBub3Qgc3Bv
cmFkaWNhbGx5IGZhaWwgZHVlIHRvIGJhZCB0aW1pbmcgYXMgdGhlIHdvcmsKaXMgcnVubmluZyBv
biBhbm90aGVyIGNwdS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRl
eHQuYyB8IDE5ICsrKysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2NvbnRleHQuYwppbmRleCAzNTg2YWY2MzYzMDQuLmQxMjAzYjRjMTQwOSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwpAQCAtNDgsMjAgKzQ4LDI1IEBAIHN0
YXRpYyBpbnQgY29udGV4dF9zeW5jKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAogCW11dGV4
X2xvY2soJnRsLT5tdXRleCk7CiAJZG8gewotCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKKwkJ
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAJCWxvbmcgdGltZW91dDsKIAotCQlmZW5jZSA9IGk5
MTVfYWN0aXZlX2ZlbmNlX2dldCgmdGwtPmxhc3RfcmVxdWVzdCk7Ci0JCWlmICghZmVuY2UpCisJ
CWlmIChsaXN0X2VtcHR5KCZ0bC0+cmVxdWVzdHMpKQogCQkJYnJlYWs7CiAKLQkJdGltZW91dCA9
IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQoZmVuY2UsIGZhbHNlLCBIWiAvIDEwKTsKKwkJcnEgPSBs
aXN0X2xhc3RfZW50cnkoJnRsLT5yZXF1ZXN0cywgdHlwZW9mKCpycSksIGxpbmspOworCQlpOTE1
X3JlcXVlc3RfZ2V0KHJxKTsKKworCQl0aW1lb3V0ID0gaTkxNV9yZXF1ZXN0X3dhaXQocnEsIDAs
IEhaIC8gMTApOwogCQlpZiAodGltZW91dCA8IDApCiAJCQllcnIgPSB0aW1lb3V0OwogCQllbHNl
Ci0JCQlpOTE1X3JlcXVlc3RfcmV0aXJlX3VwdG8odG9fcmVxdWVzdChmZW5jZSkpOworCQkJaTkx
NV9yZXF1ZXN0X3JldGlyZV91cHRvKHJxKTsKIAotCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwkJ
c3Bpbl9sb2NrX2lycSgmcnEtPmxvY2spOworCQlzcGluX3VubG9ja19pcnEoJnJxLT5sb2NrKTsK
KworCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsKIAl9IHdoaWxlICghZXJyKTsKIAltdXRleF91bmxv
Y2soJnRsLT5tdXRleCk7CiAKQEAgLTI4Miw2ICsyODcsOCBAQCBzdGF0aWMgaW50IF9fbGl2ZV9h
Y3RpdmVfY29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCWVyciA9IC1F
SU5WQUw7CiAJfQogCisJaW50ZWxfZW5naW5lX3BtX3VubG9ja193YWl0KGVuZ2luZSk7CisKIAlp
ZiAoaW50ZWxfZW5naW5lX3BtX2lzX2F3YWtlKGVuZ2luZSkpIHsKIAkJc3RydWN0IGRybV9wcmlu
dGVyIHAgPSBkcm1fZGVidWdfcHJpbnRlcihfX2Z1bmNfXyk7CiAKLS0gCjIuMjQuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
