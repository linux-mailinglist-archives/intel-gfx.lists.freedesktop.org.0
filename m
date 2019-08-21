Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6025C97262
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C62D06E910;
	Wed, 21 Aug 2019 06:40:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCF0F6E90D
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935688"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:12 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:26 +0530
Message-Id: <20190821063236.19705-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/15] drm/i915/dsb: Update i915_write to
 call dsb-write.
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

RXhpc3RpbmcgbW1pby1yZWctd3JpdGUgbmVlZCBpbnRlbF91bmNvcmUgaGFuZGxlIHdoaWNoIGlz
IHBhcnQKb2YgZGV2X3ByaXYgc3RydWN0dXJlIGFuZCB0aGUgc2FtZSBkZXNpZ24gaXMgZm9sbG93
ZWQgYnkKYWRkaW5nIGRzYiBoYW5kbGUgaW4gZGV2X3ByaXYgZm9yIHByb2dyYW1taW5nIHJlZ2lz
dGVycyB0aHJvdWdoIERTQi4KCkk5MTVfV1JJVEUgaXMgbW9kaWZpZWQgdG8gY2hlY2sgZm9yIHJl
Z2lzdGVyIGNhcGFiaWxpdHkgYW5kIGNhbGwKZHNiLXJlZy13cml0ZSBiYXNlZCBvbiBpdHMgY2Fw
YWJpbGl0eS4KCk5vIGNoYW5nZXMgaW4gSTkxNV9SRUFEIGRlZmluaXRpb24gYXMgRFNCIGRvIG5v
dCBoYXZlIHN1cHBvcnQgdG8KcmVhZCBhbnkgcmVnaXN0ZXIuCgpDYzogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDIgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCA2ICsrKysrLQogMiBm
aWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKaW5kZXggNGZlOGNhYzYyNDZhLi42ZjE5OTkx
NDAwODUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwpAQCAtMTIz
LDcgKzEyMyw3IEBAIHZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IsIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKQogCXUzMiAqYnVmID0gZHNiLT5jbWRfYnVmOwog
CiAJaWYgKCFidWYpIHsKLQkJSTkxNV9XUklURShyZWcsIHZhbCk7CisJCWludGVsX3VuY29yZV93
cml0ZSgmKGRldl9wcml2KS0+dW5jb3JlLCByZWcsIHZhbCk7CiAJCXJldHVybjsKIAl9CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4IDY0M2ZkNmQ2ZmQ3My4uN2FlZDk1NzM2MmM5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKQEAgLTE3NTMsNiArMTc1Myw4IEBAIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlIHsKIAkvKiBNdXRleCB0byBwcm90ZWN0IHRoZSBhYm92ZSBoZGNwIGNvbXBvbmVu
dCByZWxhdGVkIHZhbHVlcy4gKi8KIAlzdHJ1Y3QgbXV0ZXggaGRjcF9jb21wX211dGV4OwogCisJ
c3RydWN0IGludGVsX2RzYiAqZHNiOworCiAJLyoKIAkgKiBOT1RFOiBUaGlzIGlzIHRoZSBkcmkx
L3VtcyBkdW5nZW9uLCBkb24ndCBhZGQgc3R1ZmYgaGVyZS4gWW91ciBwYXRjaAogCSAqIHdpbGwg
YmUgcmVqZWN0ZWQuIEluc3RlYWQgbG9vayBmb3IgYSBiZXR0ZXIgcGxhY2UuCkBAIC0yNDE0LDcg
KzI0MTYsOSBAQCBpbnQgaTkxNV9yZWdfcmVhZF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAogCWludGVsX3VuY29yZV8jI29wX18oJihkZXZfcHJpdl9fKS0+dW5jb3Jl
LCBfX1ZBX0FSR1NfXykKIAogI2RlZmluZSBJOTE1X1JFQUQocmVnX18pCSBfX0k5MTVfUkVHX09Q
KHJlYWQsIGRldl9wcml2LCAocmVnX18pKQotI2RlZmluZSBJOTE1X1dSSVRFKHJlZ19fLCB2YWxf
XykgX19JOTE1X1JFR19PUCh3cml0ZSwgZGV2X3ByaXYsIChyZWdfXyksICh2YWxfXykpCisjZGVm
aW5lIEk5MTVfV1JJVEUocmVnX18sIHZhbF9fKSBcCisJKHJlZ19fLmNhcCkgPyBpbnRlbF9kc2Jf
cmVnX3dyaXRlKGRldl9wcml2LT5kc2IsIChyZWdfXyksICh2YWxfXykpIDogXAorCV9fSTkxNV9S
RUdfT1Aod3JpdGUsIGRldl9wcml2LCAocmVnX18pLCAodmFsX18pKQogCiAjZGVmaW5lIFBPU1RJ
TkdfUkVBRChyZWdfXykJX19JOTE1X1JFR19PUChwb3N0aW5nX3JlYWQsIGRldl9wcml2LCAocmVn
X18pKQogCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
