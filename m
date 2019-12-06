Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EED1154CF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 17:04:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9303A6FA51;
	Fri,  6 Dec 2019 16:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E206FA54
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 16:04:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19486876-1500050 
 for multiple; Fri, 06 Dec 2019 16:04:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Dec 2019 16:04:28 +0000
Message-Id: <20191206160428.1503343-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206160428.1503343-1-chris@chris-wilson.co.uk>
References: <20191206160428.1503343-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Propagate errors on awaiting
 already signaled dma-fences
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

SWYgd2Ugc2VlIGFuIGFscmVhZHkgc2lnbmFsZWQgZG1hLWZlbmNlIHRoYXQgd2Ugd2FudCB0byBh
d2FpdCBvbiwgd2Ugc2tpcAphZGRpbmcgdG8gdGhlIGk5MTVfc3dfZmVuY2UuIEhvd2V2ZXIsIHdl
IHNob3VsZCBwYXkgYXR0ZW50aW9uIHRvIHdoZXRoZXIKdGhlcmUgd2FzIGFuIGVycm9yIG9uIHRo
YXQgZmVuY2UgYW5kIGlmIHNvIHByb3BhZ2F0ZSBpdCBmb3Igb3VyIGZ1dHVyZQpyZXF1ZXN0LgoK
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jIHwgMjIgKysrKysrKysrKysr
KysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jCmluZGV4IDE1ODRmMzRhNmJmOS4u
NTFiYTk3ZGFmMmEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N3X2Zl
bmNlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jCkBAIC00Mjgs
OCArNDI4LDEwIEBAIHN0YXRpYyB2b2lkIGRtYV9pOTE1X3N3X2ZlbmNlX3dha2VfdGltZXIoc3Ry
dWN0IGRtYV9mZW5jZSAqZG1hLAogCXN0cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5jZTsKIAogCWZl
bmNlID0geGNoZygmY2ItPmJhc2UuZmVuY2UsIE5VTEwpOwotCWlmIChmZW5jZSkKKwlpZiAoZmVu
Y2UpIHsKKwkJaTkxNV9zd19mZW5jZV9zZXRfZXJyb3Jfb25jZShmZW5jZSwgZG1hLT5lcnJvcik7
CiAJCWk5MTVfc3dfZmVuY2VfY29tcGxldGUoZmVuY2UpOworCX0KIAogCWlycV93b3JrX3F1ZXVl
KCZjYi0+d29yayk7CiB9CkBAIC00NTcsOCArNDU5LDEwIEBAIGludCBpOTE1X3N3X2ZlbmNlX2F3
YWl0X2RtYV9mZW5jZShzdHJ1Y3QgaTkxNV9zd19mZW5jZSAqZmVuY2UsCiAJZGVidWdfZmVuY2Vf
YXNzZXJ0KGZlbmNlKTsKIAltaWdodF9zbGVlcF9pZihnZnBmbGFnc19hbGxvd19ibG9ja2luZyhn
ZnApKTsKIAotCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZG1hKSkKKwlpZiAoZG1hX2ZlbmNl
X2lzX3NpZ25hbGVkKGRtYSkpIHsKKwkJaTkxNV9zd19mZW5jZV9zZXRfZXJyb3Jfb25jZShmZW5j
ZSwgZG1hLT5lcnJvcik7CiAJCXJldHVybiAwOworCX0KIAogCWNiID0ga21hbGxvYyh0aW1lb3V0
ID8KIAkJICAgICBzaXplb2Yoc3RydWN0IGk5MTVfc3dfZG1hX2ZlbmNlX2NiX3RpbWVyKSA6CkBA
IC00NjgsNyArNDcyLDEyIEBAIGludCBpOTE1X3N3X2ZlbmNlX2F3YWl0X2RtYV9mZW5jZShzdHJ1
Y3QgaTkxNV9zd19mZW5jZSAqZmVuY2UsCiAJCWlmICghZ2ZwZmxhZ3NfYWxsb3dfYmxvY2tpbmco
Z2ZwKSkKIAkJCXJldHVybiAtRU5PTUVNOwogCi0JCXJldHVybiBkbWFfZmVuY2Vfd2FpdChkbWEs
IGZhbHNlKTsKKwkJcmV0ID0gZG1hX2ZlbmNlX3dhaXQoZG1hLCBmYWxzZSk7CisJCWlmIChyZXQp
CisJCQlyZXR1cm4gcmV0OworCisJCWk5MTVfc3dfZmVuY2Vfc2V0X2Vycm9yX29uY2UoZmVuY2Us
IGRtYS0+ZXJyb3IpOworCQlyZXR1cm4gMDsKIAl9CiAKIAljYi0+ZmVuY2UgPSBmZW5jZTsKQEAg
LTUxOCw4ICs1MjcsMTAgQEAgaW50IF9faTkxNV9zd19mZW5jZV9hd2FpdF9kbWFfZmVuY2Uoc3Ry
dWN0IGk5MTVfc3dfZmVuY2UgKmZlbmNlLAogCiAJZGVidWdfZmVuY2VfYXNzZXJ0KGZlbmNlKTsK
IAotCWlmIChkbWFfZmVuY2VfaXNfc2lnbmFsZWQoZG1hKSkKKwlpZiAoZG1hX2ZlbmNlX2lzX3Np
Z25hbGVkKGRtYSkpIHsKKwkJaTkxNV9zd19mZW5jZV9zZXRfZXJyb3Jfb25jZShmZW5jZSwgZG1h
LT5lcnJvcik7CiAJCXJldHVybiAwOworCX0KIAogCWNiLT5mZW5jZSA9IGZlbmNlOwogCWk5MTVf
c3dfZmVuY2VfYXdhaXQoZmVuY2UpOwpAQCAtNTUzLDggKzU2NCw3IEBAIGludCBpOTE1X3N3X2Zl
bmNlX2F3YWl0X3Jlc2VydmF0aW9uKHN0cnVjdCBpOTE1X3N3X2ZlbmNlICpmZW5jZSwKIAkJc3Ry
dWN0IGRtYV9mZW5jZSAqKnNoYXJlZDsKIAkJdW5zaWduZWQgaW50IGNvdW50LCBpOwogCi0JCXJl
dCA9IGRtYV9yZXN2X2dldF9mZW5jZXNfcmN1KHJlc3YsCi0JCQkJCQkJJmV4Y2wsICZjb3VudCwg
JnNoYXJlZCk7CisJCXJldCA9IGRtYV9yZXN2X2dldF9mZW5jZXNfcmN1KHJlc3YsICZleGNsLCAm
Y291bnQsICZzaGFyZWQpOwogCQlpZiAocmV0KQogCQkJcmV0dXJuIHJldDsKIAotLSAKMi4yNC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
