Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F375CC87
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 11:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10DA689ABE;
	Tue,  2 Jul 2019 09:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286C989AC0
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 09:21:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17096167-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Jul 2019 10:21:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 10:21:17 +0100
Message-Id: <20190702092117.1707-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Report if i915_active is still busy upon
 waiting
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

SWYgd2UgdHJ5IHRvIHdhaXQgb24gYW4gaTkxNV9hY3RpdmUgZnJvbSB3aXRoaW4gYSBjcml0aWNh
bCBzZWN0aW9uLCBpdAp3aWxsIHJlbWFpbiBidXN5IChzdWNoIGFzIGlmIHdlIGFyZSBzaHJpbmtp
bmcgZnJvbSB3aXRoaW4KaTkxNV9hY3RpdmVfcmVmKS4gUmVwb3J0IHRoZSBmYWlsdXJlIHNvIHRo
YXQgd2UgZG8gbm90IHByb2NlZWQgdGhpbmtpbmcKaXQgaXMgaWRsZS4KCkV4dHJhY3RlZCBmcm9t
IGEgZnV0dXJlIHBhdGNoICJkcm0vaTkxNTogQ29vcmRpbmF0ZSBpOTE1X2FjdGl2ZSB3aXRoIGl0
cwpvd24gbXV0ZXgiLgoKRml4ZXM6IDEyYzI1NWI1ZGFkMSAoImRybS9pOTE1OiBQcm92aWRlIGFu
IGk5MTVfYWN0aXZlLmFjcXVpcmUgY2FsbGJhY2siKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5h
dWxkQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgOCArKysr
KysrLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCmluZGV4IGNiNmExZWFkZjdkZi4uNTg0YjI0N2RmOWJj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKQEAgLTI4Nyw3ICsyODcsMTMgQEAgaW50
IGk5MTVfYWN0aXZlX3dhaXQoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCiAJfQogCiAJX19hY3Rp
dmVfcmV0aXJlKHJlZik7Ci0JcmV0dXJuIGVycjsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOwor
CisJaWYgKCFpOTE1X2FjdGl2ZV9pc19pZGxlKHJlZikpCisJCXJldHVybiAtRUJVU1k7CisKKwly
ZXR1cm4gMDsKIH0KIAogaW50IGk5MTVfcmVxdWVzdF9hd2FpdF9hY3RpdmVfcmVxdWVzdChzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
