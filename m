Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0A6E0466
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 15:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907276E79A;
	Tue, 22 Oct 2019 13:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 782A76E79A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 13:02:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18925314-1500050 
 for multiple; Tue, 22 Oct 2019 14:02:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 14:02:21 +0100
Message-Id: <20191022130221.20644-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191022130221.20644-1-chris@chris-wilson.co.uk>
References: <20191022130221.20644-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Teach
 switch_to_context() to use the context
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

VGhlIGNvbnRleHQgZGV0YWlscyB3aGljaCBlbmdpbmVzIHRvIHVzZSwgc28gdXNlIHRoZSBjdHgt
PmVuZ2luZXNbXSB0bwpnZW5lcmF0ZSB0aGUgcmVxdWVzdHMgdG8gY2F1c2UgdGhlIGNvbnRleHQg
c3dpdGNoLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jIHwgMTkgKysrKysrKysr
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2Vt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW0uYwppbmRleCA5N2Y4
OWY3NDRlZTIuLjg0ZTdjYTc3OGI3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfZ2VtLmMKQEAgLTE1LDE2ICsxNSwxNSBAQAogI2luY2x1ZGUgImlndF9mbHVzaF90ZXN0
LmgiCiAjaW5jbHVkZSAibW9ja19kcm0uaCIKIAotc3RhdGljIGludCBzd2l0Y2hfdG9fY29udGV4
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKLQkJCSAgICAgc3RydWN0IGk5MTVfZ2Vt
X2NvbnRleHQgKmN0eCkKK3N0YXRpYyBpbnQgc3dpdGNoX3RvX2NvbnRleHQoc3RydWN0IGk5MTVf
Z2VtX2NvbnRleHQgKmN0eCkKIHsKLQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Ci0J
ZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7CisJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBp
dDsKKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CiAKLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5l
LCBpOTE1LCBpZCkgeworCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVfZ2VtX2NvbnRleHRf
bG9ja19lbmdpbmVzKGN0eCksIGl0KSB7CiAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCi0J
CXJxID0gaWd0X3JlcXVlc3RfYWxsb2MoY3R4LCBlbmdpbmUpOworCQlycSA9IGludGVsX2NvbnRl
eHRfY3JlYXRlX3JlcXVlc3QoY2UpOwogCQlpZiAoSVNfRVJSKHJxKSkKIAkJCXJldHVybiBQVFJf
RVJSKHJxKTsKIApAQCAtMTQwLDcgKzEzOSw3IEBAIHN0YXRpYyBpbnQgaWd0X2dlbV9zdXNwZW5k
KHZvaWQgKmFyZykKIAllcnIgPSAtRU5PTUVNOwogCWN0eCA9IGxpdmVfY29udGV4dChpOTE1LCBm
aWxlKTsKIAlpZiAoIUlTX0VSUihjdHgpKQotCQllcnIgPSBzd2l0Y2hfdG9fY29udGV4dChpOTE1
LCBjdHgpOworCQllcnIgPSBzd2l0Y2hfdG9fY29udGV4dChjdHgpOwogCWlmIChlcnIpCiAJCWdv
dG8gb3V0OwogCkBAIC0xNTUsNyArMTU0LDcgQEAgc3RhdGljIGludCBpZ3RfZ2VtX3N1c3BlbmQo
dm9pZCAqYXJnKQogCiAJcG1fcmVzdW1lKGk5MTUpOwogCi0JZXJyID0gc3dpdGNoX3RvX2NvbnRl
eHQoaTkxNSwgY3R4KTsKKwllcnIgPSBzd2l0Y2hfdG9fY29udGV4dChjdHgpOwogb3V0OgogCW1v
Y2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOwogCXJldHVybiBlcnI7CkBAIC0xNzUsNyArMTc0LDcg
QEAgc3RhdGljIGludCBpZ3RfZ2VtX2hpYmVybmF0ZSh2b2lkICphcmcpCiAJZXJyID0gLUVOT01F
TTsKIAljdHggPSBsaXZlX2NvbnRleHQoaTkxNSwgZmlsZSk7CiAJaWYgKCFJU19FUlIoY3R4KSkK
LQkJZXJyID0gc3dpdGNoX3RvX2NvbnRleHQoaTkxNSwgY3R4KTsKKwkJZXJyID0gc3dpdGNoX3Rv
X2NvbnRleHQoY3R4KTsKIAlpZiAoZXJyKQogCQlnb3RvIG91dDsKIApAQCAtMTkwLDcgKzE4OSw3
IEBAIHN0YXRpYyBpbnQgaWd0X2dlbV9oaWJlcm5hdGUodm9pZCAqYXJnKQogCiAJcG1fcmVzdW1l
KGk5MTUpOwogCi0JZXJyID0gc3dpdGNoX3RvX2NvbnRleHQoaTkxNSwgY3R4KTsKKwllcnIgPSBz
d2l0Y2hfdG9fY29udGV4dChjdHgpOwogb3V0OgogCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUp
OwogCXJldHVybiBlcnI7Ci0tIAoyLjI0LjAucmMwCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
