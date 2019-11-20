Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EB310307F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 01:04:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3AF56E9F0;
	Wed, 20 Nov 2019 00:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC75F6E43C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 00:04:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 16:04:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,219,1571727600"; d="scan'208";a="209579343"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 19 Nov 2019 16:04:38 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 16:04:25 -0800
Message-Id: <20191120000425.31588-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: re-init the GT in live_gt_pm
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

V2hlbiBHdUMgaXMgaW4gdXNlIHdlIG5lZWQgdG8gbWFrZSBzdXJlIGl0IGlzIHJlLWxvYWRlZCBi
ZWZvcmUgdGhlIGNhbGwKdG8gZ3RfcmVzdW1lLCBvdGhlcndpc2UgY29tbXVuaWNhdGlvbiBmcm9t
IHRoZSBlbmdpbmVzIHRvIHRoZSBHdUMgd2lsbApub3QgYmUgcHJvY2Vzc2VkLCB3aGljaCBibG9j
a3MgdGhlIGVuZ2luZXMgZnJvbSBjdHggc3dpdGNoaW5nIGFuZCBmcm9tCmJlaW5nIHJlc2V0LgoK
QnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MjIwNQpDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jIHwgOSArKysrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9zZWxmdGVzdF9ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
Z3RfcG0uYwppbmRleCBkMTc1MmYxNTcwMmEuLjBiYjE3YzgwNmRmYyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZ3RfcG0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5jCkBAIC0xMSw4ICsxMSwxMSBAQCBzdGF0aWMgaW50
IGxpdmVfZ3RfcmVzdW1lKHZvaWQgKmFyZykKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJn
OwogCUlHVF9USU1FT1VUKGVuZF90aW1lKTsKKwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKIAlp
bnQgZXJyOwogCisJd2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KGd0LT51bmNvcmUtPnJw
bSk7CisKIAkvKiBEbyBzZXZlcmFsIHN1c3BlbmQvcmVzdW1lIGN5Y2xlcyB0byBjaGVjayB3ZSBk
b24ndCBleHBsb2RlISAqLwogCWRvIHsKIAkJaW50ZWxfZ3Rfc3VzcGVuZF9wcmVwYXJlKGd0KTsK
QEAgLTI1LDYgKzI4LDEwIEBAIHN0YXRpYyBpbnQgbGl2ZV9ndF9yZXN1bWUodm9pZCAqYXJnKQog
CQkJYnJlYWs7CiAJCX0KIAorCQllcnIgPSBpbnRlbF9ndF9pbml0X2h3KGd0KTsKKwkJaWYgKGVy
cikKKwkJCWJyZWFrOworCiAJCWVyciA9IGludGVsX2d0X3Jlc3VtZShndCk7CiAJCWlmIChlcnIp
CiAJCQlicmVhazsKQEAgLTQ0LDYgKzUxLDggQEAgc3RhdGljIGludCBsaXZlX2d0X3Jlc3VtZSh2
b2lkICphcmcpCiAJCX0KIAl9IHdoaWxlICghX19pZ3RfdGltZW91dChlbmRfdGltZSwgTlVMTCkp
OwogCisJaW50ZWxfcnVudGltZV9wbV9wdXQoZ3QtPnVuY29yZS0+cnBtLCB3YWtlcmVmKTsKKwog
CXJldHVybiBlcnI7CiB9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
