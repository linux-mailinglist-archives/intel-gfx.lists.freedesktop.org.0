Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1F328DD4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 643AC6E047;
	Thu, 23 May 2019 23:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384146E08E
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:37 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 23 May 2019 16:31:36 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0h023503; Fri, 24 May 2019 00:31:35 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:37 +0000
Message-Id: <20190523233049.28020-11-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 10/22] drm/i915/guc: Always ask GuC to update
 power domain states
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

V2l0aCBuZXdlciBHdUMgZmlybXdhcmUgaXQgaXMgYWx3YXlzIG9rIHRvIGFzayBHdUMgdG8gdXBk
YXRlIHBvd2VyCmRvbWFpbiBzdGF0ZXMuIE1ha2UgaXQgYW4gdW5jb25kaXRpb25hbCBpbml0aWFs
aXphdGlvbiBzdGVwLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndh
amRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNl
cmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogSm9obiBTcG90c3dvb2QgPGpvaG4uYS5zcG90c3dv
b2RAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvaG4gU3BvdHN3b29kIDxq
b2huLmEuc3BvdHN3b29kQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ndWNfc3VibWlzc2lvbi5jIHwgNCAtLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91
Yy5jICAgICAgICAgICAgIHwgOCArKysrLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19z
dWJtaXNzaW9uLmMKaW5kZXggOTg3ZmY1ODZkN2Y5Li5mZmRhYjIyZGIyYjAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYwpAQCAtMTQyNiwxMCArMTQyNiw2
IEBAIGludCBpbnRlbF9ndWNfc3VibWlzc2lvbl9lbmFibGUoc3RydWN0IGludGVsX2d1YyAqZ3Vj
KQogCiAJR0VNX0JVR19PTighZ3VjLT5leGVjYnVmX2NsaWVudCk7CiAKLQllcnIgPSBpbnRlbF9n
dWNfc2FtcGxlX2ZvcmNld2FrZShndWMpOwotCWlmIChlcnIpCi0JCXJldHVybiBlcnI7Ci0KIAll
cnIgPSBndWNfY2xpZW50c19lbmFibGUoZ3VjKTsKIAlpZiAoZXJyKQogCQlyZXR1cm4gZXJyOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3VjLmMKaW5kZXggMmRlOWQ1MzYwZjAyLi4yZGY1MzBkZTA3YWYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdWMuYwpAQCAtNDQwLDE0ICs0NDAsMTQgQEAgaW50IGludGVsX3Vj
X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCQlnb3RvIGVycl9jb21t
dW5pY2F0aW9uOwogCX0KIAorCXJldCA9IGludGVsX2d1Y19zYW1wbGVfZm9yY2V3YWtlKGd1Yyk7
CisJaWYgKHJldCkKKwkJZ290byBlcnJfY29tbXVuaWNhdGlvbjsKKwogCWlmIChVU0VTX0dVQ19T
VUJNSVNTSU9OKGk5MTUpKSB7CiAJCXJldCA9IGludGVsX2d1Y19zdWJtaXNzaW9uX2VuYWJsZShn
dWMpOwogCQlpZiAocmV0KQogCQkJZ290byBlcnJfY29tbXVuaWNhdGlvbjsKLQl9IGVsc2UgaWYg
KElOVEVMX0dFTihpOTE1KSA8IDExKSB7Ci0JCXJldCA9IGludGVsX2d1Y19zYW1wbGVfZm9yY2V3
YWtlKGd1Yyk7Ci0JCWlmIChyZXQpCi0JCQlnb3RvIGVycl9jb21tdW5pY2F0aW9uOwogCX0KIAog
CWRldl9pbmZvKGk5MTUtPmRybS5kZXYsICJHdUMgZmlybXdhcmUgdmVyc2lvbiAldS4ldVxuIiwK
LS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
