Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5D99725E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE67B6E908;
	Wed, 21 Aug 2019 06:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE0346E908
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935626"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:04 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:23 +0530
Message-Id: <20190821063236.19705-4-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/15] drm/i915/dsb: single register write
 function for DSB.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNCIHN1cHBvcnQgc2luZ2xlIHJlZ2lzdGVyIHdyaXRlIHRocm91Z2ggb3Bjb2RlIDB4MS4gR2Vu
ZXJpYwphcGkgY3JlYXRlZCB3aGljaCBhY2N1bXVsYXRlIGFsbCBzaW5nbGUgcmVnaXN0ZXIgd3Jp
dGUgaW4gYSBiYXRjaApidWZmZXIgYW5kIG9uY2UgRFNCIGlzIHRyaWdnZXJlZCwgaXQgd2lsbCBw
cm9ncmFtIGFsbCB0aGUgcmVnaXN0ZXJzCmF0IHRoZSBzYW1lIHRpbWUuCgpDYzogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8
IDM2ICsrKysrKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2IuaCB8ICA5ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA0NSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKaW5kZXggNmNkZTNh
ZjMwNjQzLi44YTlkMDgyYjE2MDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuYwpAQCAtOSw2ICs5LDIwIEBACiAKICNkZWZpbmUgRFNCX0JVRl9TSVpFICAgICgyICog
UEFHRV9TSVpFKQogCisvKiBEU0Igb3Bjb2Rlcy4gKi8KKyNkZWZpbmUgRFNCX09QQ09ERV9TSElG
VAkJMjQKKyNkZWZpbmUgRFNCX09QQ09ERV9OT09QCQkJMHgwCisjZGVmaW5lIERTQl9PUENPREVf
TU1JT19XUklURQkJMHgxCisjZGVmaW5lIERTQl9PUENPREVfV0FJVF9GT1JfVVMJCTB4MgorI2Rl
ZmluZSBEU0JfT1BDT0RFX1dBSVRfRk9SX0xJTkVTCTB4MworI2RlZmluZSBEU0JfT1BDT0RFX1dB
SVRfRk9SX1ZCTEFOSwkweDQKKyNkZWZpbmUgRFNCX09QQ09ERV9XQUlUX0ZPUl9TTF9JTgkweDUK
KyNkZWZpbmUgRFNCX09QQ09ERV9XQUlUX0ZPUl9TTF9PVVQJMHg2CisjZGVmaW5lIERTQl9PUENP
REVfR0VORVJBVEVfSU5UCQkweDcKKyNkZWZpbmUgRFNCX09QQ09ERV9JTkRFWEVEX1dSSVRFCTB4
OQorI2RlZmluZSBEU0JfT1BDT0RFX1BPTEwJCQkweEEKKyNkZWZpbmUgRFNCX0JZVEVfRU4JCQko
MHhmIDw8IDIwKQorCiBzdHJ1Y3QgaW50ZWxfZHNiICoKIGludGVsX2RzYl9nZXQoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpCiB7CkBAIC02NCwzICs3OCwyNSBAQCBpbnRlbF9kc2JfZ2V0KHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjKQogCWludGVsX3J1bnRpbWVfcG1fcHV0KCZpOTE1LT5ydW50aW1l
X3BtLCB3YWtlcmVmKTsKIAlyZXR1cm4gZHNiOwogfQorCit2b2lkIGludGVsX2RzYl9yZWdfd3Jp
dGUoc3RydWN0IGludGVsX2RzYiAqZHNiLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKK3sKKwlz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKKwl1MzIgKmJ1ZiA9IGRz
Yi0+Y21kX2J1ZjsKKworCWlmICghYnVmKSB7CisJCUk5MTVfV1JJVEUocmVnLCB2YWwpOworCQly
ZXR1cm47CisJfQorCisJaWYgKFdBUk5fT04oZHNiLT5mcmVlX3BvcyA+PSBEU0JfQlVGX1NJWkUp
KSB7CisJCURSTV9ERUJVR19LTVMoIkRTQiBidWZmZXIgb3ZlcmZsb3cuXG4iKTsKKwkJcmV0dXJu
OworCX0KKworCWJ1Zltkc2ItPmZyZWVfcG9zKytdID0gdmFsOworCWJ1Zltkc2ItPmZyZWVfcG9z
KytdID0gKERTQl9PUENPREVfTU1JT19XUklURSAgPDwKKwkJCQlEU0JfT1BDT0RFX1NISUZUKSB8
IERTQl9CWVRFX0VOIHwKKwkJCQlpOTE1X21taW9fcmVnX29mZnNldChyZWcpOworfQpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKaW5kZXggNTBhMmE2NTkwYTcxLi4yMDE1
YzM3MmIwZDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaApAQCAt
Niw2ICs2LDggQEAKICNpZm5kZWYgX0lOVEVMX0RTQl9ICiAjZGVmaW5lIF9JTlRFTF9EU0JfSAog
CisjaW5jbHVkZSAiaTkxNV9yZWcuaCIKKwogc3RydWN0IGludGVsX2NydGM7CiBzdHJ1Y3QgaTkx
NV92bWE7CiAKQEAgLTIzLDkgKzI1LDE2IEBAIHN0cnVjdCBpbnRlbF9kc2IgewogCXUzMiAqY21k
X2J1ZjsKIAl1MzIgY21kX2J1Zl9oZWFkOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOworCisJLyoK
KwkgKiBmcmVlX3BvcyB3aWxsIHBvaW50IHRoZSBmaXJzdCBmcmVlIGVudHJ5IHBvc2l0aW9uCisJ
ICogYW5kIGhlbHAgaW4gY2FsY3VsYXRpbmcgY21kX2J1Zl90YWlsLgorCSAqLworCWludCBmcmVl
X3BvczsKIH07CiAKIHN0cnVjdCBpbnRlbF9kc2IgKgogaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0Yyk7Cit2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2Rz
YiAqZHNiLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCk7CiAKICNlbmRpZgotLSAKMi4yMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
