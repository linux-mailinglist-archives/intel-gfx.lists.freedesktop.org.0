Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDF94B9D2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:25:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1824889254;
	Wed, 19 Jun 2019 13:25:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78A9E6E3EB
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:25:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 06:25:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="153806509"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga008.jf.intel.com with ESMTP; 19 Jun 2019 06:25:28 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 14:24:41 +0100
Message-Id: <20190619132459.25351-16-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/33] drm/i915: Convert i915_gem_init_hw to
 intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk1vcmUgcmVt
b3ZhbCBvZiBpbXBsaWNpdCBkZXZfcHJpdiBmcm9tIHVzaW5nIG9sZCBtbWlvIGFjY2Vzc29ycy4K
CkFjdHVhbGx5IHRoZSB0b3AgbGV2ZWwgZnVuY3Rpb24gcmVtYWlucyBidXQgaXMgc3BsaXQgaW50
byBhIHBhcnQgd2hpY2gKd3JpdGVzIHRvIGk5MTUgYW5kIHBhcnQgd2hpY2ggb3BlcmF0ZXMgb24g
aW50ZWxfZ3QgaW4gb3JkZXIgdG8gaW5pdGlhbGl6ZQp0aGUgaGFyZHdhcmUuCgpHdUMgYW5kIGVu
Z2luZXMgYXJlIHRoZSBvbmx5IG9kZCBvbmVzIG91dCByZW1haW5pbmcuCgpTaWduZWQtb2ZmLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMgfCA2NiArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAyNiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uYwppbmRleCA3NjljZmIxNWU2Y2EuLjk4OWQ5ODdjNDJkNCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xMjMxLDI4ICsxMjMxLDMyIEBAIHN0YXRpYyB2b2lkIGlu
aXRfdW51c2VkX3JpbmdzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJfQogfQogCi1pbnQgaTkxNV9n
ZW1faW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCitzdGF0aWMgaW50
IGluaXRfaHcoc3RydWN0IGludGVsX2d0ICpndCkKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IGd0LT5pOTE1OworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51
bmNvcmU7CiAJaW50IHJldDsKIAotCWRldl9wcml2LT5ndC5sYXN0X2luaXRfdGltZSA9IGt0aW1l
X2dldCgpOworCWd0LT5sYXN0X2luaXRfdGltZSA9IGt0aW1lX2dldCgpOwogCiAJLyogRG91Ymxl
IGxheWVyIHNlY3VyaXR5IGJsYW5rZXQsIHNlZSBpOTE1X2dlbV9pbml0KCkgKi8KLQlpbnRlbF91
bmNvcmVfZm9yY2V3YWtlX2dldCgmZGV2X3ByaXYtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CisJ
aW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKIAotCWlm
IChIQVNfRURSQU0oZGV2X3ByaXYpICYmIElOVEVMX0dFTihkZXZfcHJpdikgPCA5KQotCQlJOTE1
X1dSSVRFKEhTV19JRElDUiwgSTkxNV9SRUFEKEhTV19JRElDUikgfCBJRElIQVNITVNLKDB4Zikp
OworCWlmIChIQVNfRURSQU0oaTkxNSkgJiYgSU5URUxfR0VOKGk5MTUpIDwgOSkKKwkJaW50ZWxf
dW5jb3JlX3Jtdyh1bmNvcmUsIEhTV19JRElDUiwgMCwgSURJSEFTSE1TSygweGYpKTsKIAotCWlm
IChJU19IQVNXRUxMKGRldl9wcml2KSkKLQkJSTkxNV9XUklURShNSV9QUkVESUNBVEVfUkVTVUxU
XzIsIElTX0hTV19HVDMoZGV2X3ByaXYpID8KLQkJCSAgIExPV0VSX1NMSUNFX0VOQUJMRUQgOiBM
T1dFUl9TTElDRV9ESVNBQkxFRCk7CisJaWYgKElTX0hBU1dFTEwoaTkxNSkpCisJCWludGVsX3Vu
Y29yZV93cml0ZSh1bmNvcmUsCisJCQkJICAgTUlfUFJFRElDQVRFX1JFU1VMVF8yLAorCQkJCSAg
IElTX0hTV19HVDMoaTkxNSkgPworCQkJCSAgIExPV0VSX1NMSUNFX0VOQUJMRUQgOiBMT1dFUl9T
TElDRV9ESVNBQkxFRCk7CiAKIAkvKiBBcHBseSB0aGUgR1Qgd29ya2Fyb3VuZHMuLi4gKi8KLQlp
bnRlbF9ndF9hcHBseV93b3JrYXJvdW5kcygmZGV2X3ByaXYtPmd0KTsKKwlpbnRlbF9ndF9hcHBs
eV93b3JrYXJvdW5kcyhndCk7CiAJLyogLi4uYW5kIGRldGVybWluZSB3aGV0aGVyIHRoZXkgYXJl
IHN0aWNraW5nLiAqLwotCWludGVsX2d0X3ZlcmlmeV93b3JrYXJvdW5kcygmZGV2X3ByaXYtPmd0
LCAiaW5pdCIpOworCWludGVsX2d0X3ZlcmlmeV93b3JrYXJvdW5kcyhndCwgImluaXQiKTsKIAot
CWludGVsX2d0X2luaXRfc3dpenpsaW5nKCZkZXZfcHJpdi0+Z3QpOworCWludGVsX2d0X2luaXRf
c3dpenpsaW5nKGd0KTsKIAogCS8qCiAJICogQXQgbGVhc3QgODMwIGNhbiBsZWF2ZSBzb21lIG9m
IHRoZSB1bnVzZWQgcmluZ3MKQEAgLTEyNjAsNDggKzEyNjQsNTggQEAgaW50IGk5MTVfZ2VtX2lu
aXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCSAqIHdpbGwgcHJldmVu
dCBjMyBlbnRyeS4gTWFrZXMgc3VyZSBhbGwgdW51c2VkIHJpbmdzCiAJICogYXJlIHRvdGFsbHkg
aWRsZS4KIAkgKi8KLQlpbml0X3VudXNlZF9yaW5ncygmZGV2X3ByaXYtPmd0KTsKLQotCUJVR19P
TighZGV2X3ByaXYtPmtlcm5lbF9jb250ZXh0KTsKLQlyZXQgPSBpOTE1X3Rlcm1pbmFsbHlfd2Vk
Z2VkKGRldl9wcml2KTsKLQlpZiAocmV0KQotCQlnb3RvIG91dDsKKwlpbml0X3VudXNlZF9yaW5n
cyhndCk7CiAKLQlyZXQgPSBpOTE1X3BwZ3R0X2luaXRfaHcoJmRldl9wcml2LT5ndCk7CisJcmV0
ID0gaTkxNV9wcGd0dF9pbml0X2h3KGd0KTsKIAlpZiAocmV0KSB7CiAJCURSTV9FUlJPUigiRW5h
YmxpbmcgUFBHVFQgZmFpbGVkICglZClcbiIsIHJldCk7CiAJCWdvdG8gb3V0OwogCX0KIAotCXJl
dCA9IGludGVsX3dvcGNtX2luaXRfaHcoJmRldl9wcml2LT53b3BjbSk7CisJcmV0ID0gaW50ZWxf
d29wY21faW5pdF9odygmaTkxNS0+d29wY20pOwogCWlmIChyZXQpIHsKIAkJRFJNX0VSUk9SKCJF
bmFibGluZyBXT1BDTSBmYWlsZWQgKCVkKVxuIiwgcmV0KTsKIAkJZ290byBvdXQ7CiAJfQogCiAJ
LyogV2UgY2FuJ3QgZW5hYmxlIGNvbnRleHRzIHVudGlsIGFsbCBmaXJtd2FyZSBpcyBsb2FkZWQg
Ki8KLQlyZXQgPSBpbnRlbF91Y19pbml0X2h3KGRldl9wcml2KTsKKwlyZXQgPSBpbnRlbF91Y19p
bml0X2h3KGk5MTUpOwogCWlmIChyZXQpIHsKIAkJRFJNX0VSUk9SKCJFbmFibGluZyB1YyBmYWls
ZWQgKCVkKVxuIiwgcmV0KTsKIAkJZ290byBvdXQ7CiAJfQogCi0JaW50ZWxfbW9jc19pbml0X2wz
Y2NfdGFibGUoJmRldl9wcml2LT5ndCk7CisJaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoZ3Qp
OwogCiAJLyogT25seSB3aGVuIHRoZSBIVyBpcyByZS1pbml0aWFsaXNlZCwgY2FuIHdlIHJlcGxh
eSB0aGUgcmVxdWVzdHMgKi8KLQlyZXQgPSBpbnRlbF9lbmdpbmVzX3Jlc3VtZShkZXZfcHJpdik7
CisJcmV0ID0gaW50ZWxfZW5naW5lc19yZXN1bWUoaTkxNSk7CiAJaWYgKHJldCkKIAkJZ290byBj
bGVhbnVwX3VjOwogCi0JaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9wdXQoJmRldl9wcml2LT51bmNv
cmUsIEZPUkNFV0FLRV9BTEwpOworCWludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KHVuY29yZSwg
Rk9SQ0VXQUtFX0FMTCk7CiAKLQlpbnRlbF9lbmdpbmVzX3NldF9zY2hlZHVsZXJfY2FwcyhkZXZf
cHJpdik7CiAJcmV0dXJuIDA7CiAKIGNsZWFudXBfdWM6Ci0JaW50ZWxfdWNfZmluaV9odyhkZXZf
cHJpdik7CisJaW50ZWxfdWNfZmluaV9odyhpOTE1KTsKIG91dDoKLQlpbnRlbF91bmNvcmVfZm9y
Y2V3YWtlX3B1dCgmZGV2X3ByaXYtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CisJaW50ZWxfdW5j
b3JlX2ZvcmNld2FrZV9wdXQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKKworCXJldHVybiByZXQ7
Cit9CisKK2ludCBpOTE1X2dlbV9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQoreworCWludCByZXQ7CisKKwlCVUdfT04oIWk5MTUtPmtlcm5lbF9jb250ZXh0KTsKKwlyZXQg
PSBpOTE1X3Rlcm1pbmFsbHlfd2VkZ2VkKGk5MTUpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7
CisKKwlyZXQgPSBpbml0X2h3KCZpOTE1LT5ndCk7CisKKwlpbnRlbF9lbmdpbmVzX3NldF9zY2hl
ZHVsZXJfY2FwcyhpOTE1KTsKIAogCXJldHVybiByZXQ7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
