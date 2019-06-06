Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A69EB3700C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 11:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9518E895E1;
	Thu,  6 Jun 2019 09:37:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BC2E895E7
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:36:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 02:36:58 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by orsmga006.jf.intel.com with ESMTP; 06 Jun 2019 02:36:57 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 10:36:26 +0100
Message-Id: <20190606093639.9372-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/21] drm/i915: Tidy
 intel_execlists_submission_init
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkdldCB0byB1
bmNvcmUgZnJvbSB0aGUgZW5naW5lIGZvciBiZXR0ZXIgbG9naWMgb3JnYW5pemF0aW9uIGFuZCB1
c2UKYWxyZWFkeSBhdmFpbGFibGUgaTkxNSBldmVyeXdoZXJlLgoKU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KU3VnZ2VzdGVkLWJ5OiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgfCAxMSArKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
CmluZGV4IGYyN2I2YzAwMjYyNy4uNDk3YWMwMzZjNGE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwpAQCAtMjczOCw4ICsyNzM4LDkgQEAgaW50IGludGVsX2V4ZWNsaXN0c19zdWJt
aXNzaW9uX3NldHVwKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogaW50IGludGVs
X2V4ZWNsaXN0c19zdWJtaXNzaW9uX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQogewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1OwogCXN0
cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICogY29uc3QgZXhlY2xpc3RzID0gJmVuZ2luZS0+
ZXhlY2xpc3RzOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1
OworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGVuZ2luZS0+dW5jb3JlOwogCXUzMiBi
YXNlID0gZW5naW5lLT5tbWlvX2Jhc2U7CiAJaW50IHJldDsKIApAQCAtMjc1OSwxMiArMjc2MCwx
MiBAQCBpbnQgaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb25faW5pdChzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAJCURSTV9FUlJPUigiV0EgYmF0Y2ggYnVmZmVyIGluaXRpYWxpemF0
aW9uIGZhaWxlZFxuIik7CiAKIAlpZiAoSEFTX0xPR0lDQUxfUklOR19FTFNRKGk5MTUpKSB7Ci0J
CWV4ZWNsaXN0cy0+c3VibWl0X3JlZyA9IGk5MTUtPnVuY29yZS5yZWdzICsKKwkJZXhlY2xpc3Rz
LT5zdWJtaXRfcmVnID0gdW5jb3JlLT5yZWdzICsKIAkJCWk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJ
TkdfRVhFQ0xJU1RfU1FfQ09OVEVOVFMoYmFzZSkpOwotCQlleGVjbGlzdHMtPmN0cmxfcmVnID0g
aTkxNS0+dW5jb3JlLnJlZ3MgKworCQlleGVjbGlzdHMtPmN0cmxfcmVnID0gdW5jb3JlLT5yZWdz
ICsKIAkJCWk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfRVhFQ0xJU1RfQ09OVFJPTChiYXNlKSk7
CiAJfSBlbHNlIHsKLQkJZXhlY2xpc3RzLT5zdWJtaXRfcmVnID0gaTkxNS0+dW5jb3JlLnJlZ3Mg
KworCQlleGVjbGlzdHMtPnN1Ym1pdF9yZWcgPSB1bmNvcmUtPnJlZ3MgKwogCQkJaTkxNV9tbWlv
X3JlZ19vZmZzZXQoUklOR19FTFNQKGJhc2UpKTsKIAl9CiAKQEAgLTI3NzksNyArMjc4MCw3IEBA
IGludCBpbnRlbF9leGVjbGlzdHNfc3VibWlzc2lvbl9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKIAlleGVjbGlzdHMtPmNzYl93cml0ZSA9CiAJCSZlbmdpbmUtPnN0YXR1c19w
YWdlLmFkZHJbaW50ZWxfaHdzX2NzYl93cml0ZV9pbmRleChpOTE1KV07CiAKLQlpZiAoSU5URUxf
R0VOKGVuZ2luZS0+aTkxNSkgPCAxMSkKKwlpZiAoSU5URUxfR0VOKGk5MTUpIDwgMTEpCiAJCWV4
ZWNsaXN0cy0+Y3NiX3NpemUgPSBHRU44X0NTQl9FTlRSSUVTOwogCWVsc2UKIAkJZXhlY2xpc3Rz
LT5jc2Jfc2l6ZSA9IEdFTjExX0NTQl9FTlRSSUVTOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
