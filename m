Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488455E9D7
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 19:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 328BB8985A;
	Wed,  3 Jul 2019 17:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDAF08982A;
 Wed,  3 Jul 2019 17:00:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17118694-1500050 
 for multiple; Wed, 03 Jul 2019 17:59:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 17:59:56 +0100
Message-Id: <20190703165956.16232-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_workarounds: Adapt to change in
 file format for per-engine wa
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG8gcmVkdWNlIHRoZSBhc3N1bXB0aW9ucyBvZiBSQ1MwIGluIHRoZSBrZXJuZWwsIHdlIHdhbnQg
dG8gbWFrZSB0aGUKZGVidWdmcyBlbmdpbmUgYWdub3N0aWMgYW5kIHNvIHdlIG5lZWQgdG8gYWRh
cHQgdGhlIGlndCBwYXJzZXIgZm9yCmZsZXhpYmlsaXR5LgoKSWYgd2UgY291bGQganVzdCBhZGVx
dWF0ZWx5IHNpbXVsYXRlIFMzL1M0IGluIHRoZSBrZXJuZWwgd2UgY291bGQgZm9yZ28KdGhpcyB0
ZXN0IGVudGlyZWx5Li4uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Ci0tLQogdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYyB8IDEyICsrKysrKysrKystLQog
MSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYyBiL3Rlc3RzL2k5MTUvZ2VtX3dvcmth
cm91bmRzLmMKaW5kZXggNDAzODYzYzBiLi44MWMzNTZmMDYgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5
MTUvZ2VtX3dvcmthcm91bmRzLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fd29ya2Fyb3VuZHMuYwpA
QCAtMjQ5LDYgKzI0OSw3IEBAIGlndF9tYWluCiAJaWd0X2ZpeHR1cmUgewogCQlGSUxFICpmaWxl
OwogCQljaGFyICpsaW5lID0gTlVMTDsKKwkJY2hhciAqc3RyOwogCQlzaXplX3QgbGluZV9zaXpl
OwogCQlpbnQgaSwgZmQ7CiAKQEAgLTI2MSw5ICsyNjIsMTMgQEAgaWd0X21haW4KIAogCQlmZCA9
IGlndF9kZWJ1Z2ZzX29wZW4oZGV2aWNlLCAiaTkxNV93YV9yZWdpc3RlcnMiLCBPX1JET05MWSk7
CiAJCWZpbGUgPSBmZG9wZW4oZmQsICJyIik7Ci0JCWlndF9hc3NlcnQoZ2V0bGluZSgmbGluZSwg
JmxpbmVfc2l6ZSwgZmlsZSkgPiAwKTsKKwkJaWd0X3JlcXVpcmUoZ2V0bGluZSgmbGluZSwgJmxp
bmVfc2l6ZSwgZmlsZSkgPiAwKTsKIAkJaWd0X2RlYnVnKCJpOTE1X3dhX3JlZ2lzdGVyczogJXMi
LCBsaW5lKTsKLQkJc3NjYW5mKGxpbmUsICJXb3JrYXJvdW5kcyBhcHBsaWVkOiAlZCIsICZudW1f
d2FfcmVncyk7CisKKwkJLyogV2UgYXNzdW1lIHRoYXQgdGhlIGZpcnN0IGJhdGNoIGlzIGZvciBy
Y3MgKi8KKwkJc3RyID0gc3Ryc3RyKGxpbmUsICJXb3JrYXJvdW5kcyBhcHBsaWVkOiIpOworCQlp
Z3RfYXNzZXJ0KHN0cik7CisJCXNzY2FuZihzdHIsICJXb3JrYXJvdW5kcyBhcHBsaWVkOiAlZCIs
ICZudW1fd2FfcmVncyk7CiAJCWlndF9yZXF1aXJlKG51bV93YV9yZWdzID4gMCk7CiAKIAkJd2Ff
cmVncyA9IG1hbGxvYyhudW1fd2FfcmVncyAqIHNpemVvZigqd2FfcmVncykpOwpAQCAtMjcxLDYg
KzI3Niw5IEBAIGlndF9tYWluCiAKIAkJaSA9IDA7CiAJCXdoaWxlIChnZXRsaW5lKCZsaW5lLCAm
bGluZV9zaXplLCBmaWxlKSA+IDApIHsKKwkJCWlmIChzdHJzdHIobGluZSwgIldvcmthcm91bmRz
IGFwcGxpZWQ6IikpCisJCQkJYnJlYWs7CisKIAkJCWlndF9kZWJ1ZygiJXMiLCBsaW5lKTsKIAkJ
CWlmIChzc2NhbmYobGluZSwgIjB4JVg6IDB4JTA4WCwgbWFzazogMHglMDhYIiwKIAkJCQkgICAm
d2FfcmVnc1tpXS5hZGRyLAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
