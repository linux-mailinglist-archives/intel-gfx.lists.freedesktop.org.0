Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECDEF54F90
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C72CA6E106;
	Tue, 25 Jun 2019 13:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD456E100
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:02:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17018178-1500050 
 for multiple; Tue, 25 Jun 2019 14:01:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 14:01:22 +0100
Message-Id: <20190625130128.11009-14-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625130128.11009-1-chris@chris-wilson.co.uk>
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/20] drm/i915/selftests: Hold ref on request
 across waits
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

QXMgd2Ugd2FpdCB1cG9uIHRoZSByZXF1ZXN0LCB3ZSBzaG91bGQgYmUgc3VyZSB0byBob2xkIG91
ciBvd24gcmVmZXJlbmNlCmZvciBvdXIgY2hlY2tzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jIHwgMjEgKysrKysrKysrKystLS0tLS0tLQogMSBmaWxl
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jCmluZGV4IDBmZGY5NDhhOTNhMC4u
MWJiZmM0M2Q0YTllIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
aTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVf
cmVxdWVzdC5jCkBAIC03NSw1NSArNzUsNTggQEAgc3RhdGljIGludCBpZ3Rfd2FpdF9yZXF1ZXN0
KHZvaWQgKmFyZykKIAkJZXJyID0gLUVOT01FTTsKIAkJZ290byBvdXRfdW5sb2NrOwogCX0KKwlp
OTE1X3JlcXVlc3RfZ2V0KHJlcXVlc3QpOwogCiAJaWYgKGk5MTVfcmVxdWVzdF93YWl0KHJlcXVl
c3QsIDAsIDApICE9IC1FVElNRSkgewogCQlwcl9lcnIoInJlcXVlc3Qgd2FpdCAoYnVzeSBxdWVy
eSkgc3VjY2VlZGVkIChleHBlY3RlZCB0aW1lb3V0IGJlZm9yZSBzdWJtaXQhKVxuIik7Ci0JCWdv
dG8gb3V0X3VubG9jazsKKwkJZ290byBvdXRfcmVxdWVzdDsKIAl9CiAKIAlpZiAoaTkxNV9yZXF1
ZXN0X3dhaXQocmVxdWVzdCwgMCwgVCkgIT0gLUVUSU1FKSB7CiAJCXByX2VycigicmVxdWVzdCB3
YWl0IHN1Y2NlZWRlZCAoZXhwZWN0ZWQgdGltZW91dCBiZWZvcmUgc3VibWl0ISlcbiIpOwotCQln
b3RvIG91dF91bmxvY2s7CisJCWdvdG8gb3V0X3JlcXVlc3Q7CiAJfQogCiAJaWYgKGk5MTVfcmVx
dWVzdF9jb21wbGV0ZWQocmVxdWVzdCkpIHsKIAkJcHJfZXJyKCJyZXF1ZXN0IGNvbXBsZXRlZCBi
ZWZvcmUgc3VibWl0ISFcbiIpOwotCQlnb3RvIG91dF91bmxvY2s7CisJCWdvdG8gb3V0X3JlcXVl
c3Q7CiAJfQogCiAJaTkxNV9yZXF1ZXN0X2FkZChyZXF1ZXN0KTsKIAogCWlmIChpOTE1X3JlcXVl
c3Rfd2FpdChyZXF1ZXN0LCAwLCAwKSAhPSAtRVRJTUUpIHsKIAkJcHJfZXJyKCJyZXF1ZXN0IHdh
aXQgKGJ1c3kgcXVlcnkpIHN1Y2NlZWRlZCAoZXhwZWN0ZWQgdGltZW91dCBhZnRlciBzdWJtaXQh
KVxuIik7Ci0JCWdvdG8gb3V0X3VubG9jazsKKwkJZ290byBvdXRfcmVxdWVzdDsKIAl9CiAKIAlp
ZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChyZXF1ZXN0KSkgewogCQlwcl9lcnIoInJlcXVlc3Qg
Y29tcGxldGVkIGltbWVkaWF0ZWx5IVxuIik7Ci0JCWdvdG8gb3V0X3VubG9jazsKKwkJZ290byBv
dXRfcmVxdWVzdDsKIAl9CiAKIAlpZiAoaTkxNV9yZXF1ZXN0X3dhaXQocmVxdWVzdCwgMCwgVCAv
IDIpICE9IC1FVElNRSkgewogCQlwcl9lcnIoInJlcXVlc3Qgd2FpdCBzdWNjZWVkZWQgKGV4cGVj
dGVkIHRpbWVvdXQhKVxuIik7Ci0JCWdvdG8gb3V0X3VubG9jazsKKwkJZ290byBvdXRfcmVxdWVz
dDsKIAl9CiAKIAlpZiAoaTkxNV9yZXF1ZXN0X3dhaXQocmVxdWVzdCwgMCwgVCkgPT0gLUVUSU1F
KSB7CiAJCXByX2VycigicmVxdWVzdCB3YWl0IHRpbWVkIG91dCFcbiIpOwotCQlnb3RvIG91dF91
bmxvY2s7CisJCWdvdG8gb3V0X3JlcXVlc3Q7CiAJfQogCiAJaWYgKCFpOTE1X3JlcXVlc3RfY29t
cGxldGVkKHJlcXVlc3QpKSB7CiAJCXByX2VycigicmVxdWVzdCBub3QgY29tcGxldGUgYWZ0ZXIg
d2FpdGluZyFcbiIpOwotCQlnb3RvIG91dF91bmxvY2s7CisJCWdvdG8gb3V0X3JlcXVlc3Q7CiAJ
fQogCiAJaWYgKGk5MTVfcmVxdWVzdF93YWl0KHJlcXVlc3QsIDAsIFQpID09IC1FVElNRSkgewog
CQlwcl9lcnIoInJlcXVlc3Qgd2FpdCB0aW1lZCBvdXQgd2hlbiBhbHJlYWR5IGNvbXBsZXRlIVxu
Iik7Ci0JCWdvdG8gb3V0X3VubG9jazsKKwkJZ290byBvdXRfcmVxdWVzdDsKIAl9CiAKIAllcnIg
PSAwOworb3V0X3JlcXVlc3Q6CisJaTkxNV9yZXF1ZXN0X3B1dChyZXF1ZXN0KTsKIG91dF91bmxv
Y2s6CiAJbW9ja19kZXZpY2VfZmx1c2goaTkxNSk7CiAJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
