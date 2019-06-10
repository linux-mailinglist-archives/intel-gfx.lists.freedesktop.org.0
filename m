Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1F43B452
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 14:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79AF388FE2;
	Mon, 10 Jun 2019 12:06:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C1E88FE2
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 12:06:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 05:06:10 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.8.43])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 05:06:10 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 13:06:04 +0100
Message-Id: <20190610120608.15477-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
References: <20190610120608.15477-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/6] drm/i915: Convert i915_reg_read_ioctl to use
 explicit mmio accessors
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk5vIGV4Y3Vz
ZSBmb3IgY29kZSBsb2NhdGVkIGluIGludGVsX3VuY29yZS5jIHRvIG5vdCB1c2UgaW50ZWxfdW5j
b3JlXwpoZWxwZXJzLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KU3VnZ2VzdGVkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyB8IDIzICsrKysrKysrKysr
KysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCmluZGV4IGY3ODY2ODEyM2YwMi4u
ODUxNzFhOGI4NjZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNv
cmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwpAQCAtMTY3Miw3
ICsxNjcyLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByZWdfd2hpdGVsaXN0IHsKIGludCBpOTE1
X3JlZ19yZWFkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQl2b2lkICpkYXRhLCBz
dHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShkZXYpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9f
aTkxNShkZXYpOworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZpOTE1LT51bmNvcmU7
CiAJc3RydWN0IGRybV9pOTE1X3JlZ19yZWFkICpyZWcgPSBkYXRhOwogCXN0cnVjdCByZWdfd2hp
dGVsaXN0IGNvbnN0ICplbnRyeTsKIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKQEAgLTE2ODks
NyArMTY5MCw3IEBAIGludCBpOTE1X3JlZ19yZWFkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYsCiAJCUdFTV9CVUdfT04oZW50cnktPnNpemUgPiA4KTsKIAkJR0VNX0JVR19PTihlbnRyeV9v
ZmZzZXQgJiAoZW50cnktPnNpemUgLSAxKSk7CiAKLQkJaWYgKElOVEVMX0lORk8oZGV2X3ByaXYp
LT5nZW5fbWFzayAmIGVudHJ5LT5nZW5fbWFzayAmJgorCQlpZiAoSU5URUxfSU5GTyhpOTE1KS0+
Z2VuX21hc2sgJiBlbnRyeS0+Z2VuX21hc2sgJiYKIAkJICAgIGVudHJ5X29mZnNldCA9PSAocmVn
LT5vZmZzZXQgJiAtZW50cnktPnNpemUpKQogCQkJYnJlYWs7CiAJCWVudHJ5Kys7CkBAIC0xNzAx
LDE4ICsxNzAyLDIyIEBAIGludCBpOTE1X3JlZ19yZWFkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsCiAKIAlmbGFncyA9IHJlZy0+b2Zmc2V0ICYgKGVudHJ5LT5zaXplIC0gMSk7CiAKLQl3
aXRoX2ludGVsX3J1bnRpbWVfcG0oZGV2X3ByaXYsIHdha2VyZWYpIHsKKwl3aXRoX2ludGVsX3J1
bnRpbWVfcG0oaTkxNSwgd2FrZXJlZikgewogCQlpZiAoZW50cnktPnNpemUgPT0gOCAmJiBmbGFn
cyA9PSBJOTE1X1JFR19SRUFEXzhCX1dBKQotCQkJcmVnLT52YWwgPSBJOTE1X1JFQUQ2NF8yeDMy
KGVudHJ5LT5vZmZzZXRfbGR3LAotCQkJCQkJICAgIGVudHJ5LT5vZmZzZXRfdWR3KTsKKwkJCXJl
Zy0+dmFsID0gaW50ZWxfdW5jb3JlX3JlYWQ2NF8yeDMyKHVuY29yZSwKKwkJCQkJCQkgICAgZW50
cnktPm9mZnNldF9sZHcsCisJCQkJCQkJICAgIGVudHJ5LT5vZmZzZXRfdWR3KTsKIAkJZWxzZSBp
ZiAoZW50cnktPnNpemUgPT0gOCAmJiBmbGFncyA9PSAwKQotCQkJcmVnLT52YWwgPSBJOTE1X1JF
QUQ2NChlbnRyeS0+b2Zmc2V0X2xkdyk7CisJCQlyZWctPnZhbCA9IGludGVsX3VuY29yZV9yZWFk
NjQodW5jb3JlLAorCQkJCQkJICAgICAgIGVudHJ5LT5vZmZzZXRfbGR3KTsKIAkJZWxzZSBpZiAo
ZW50cnktPnNpemUgPT0gNCAmJiBmbGFncyA9PSAwKQotCQkJcmVnLT52YWwgPSBJOTE1X1JFQUQo
ZW50cnktPm9mZnNldF9sZHcpOworCQkJcmVnLT52YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsIGVudHJ5LT5vZmZzZXRfbGR3KTsKIAkJZWxzZSBpZiAoZW50cnktPnNpemUgPT0gMiAmJiBm
bGFncyA9PSAwKQotCQkJcmVnLT52YWwgPSBJOTE1X1JFQUQxNihlbnRyeS0+b2Zmc2V0X2xkdyk7
CisJCQlyZWctPnZhbCA9IGludGVsX3VuY29yZV9yZWFkMTYodW5jb3JlLAorCQkJCQkJICAgICAg
IGVudHJ5LT5vZmZzZXRfbGR3KTsKIAkJZWxzZSBpZiAoZW50cnktPnNpemUgPT0gMSAmJiBmbGFn
cyA9PSAwKQotCQkJcmVnLT52YWwgPSBJOTE1X1JFQUQ4KGVudHJ5LT5vZmZzZXRfbGR3KTsKKwkJ
CXJlZy0+dmFsID0gaW50ZWxfdW5jb3JlX3JlYWQ4KHVuY29yZSwKKwkJCQkJCSAgICAgIGVudHJ5
LT5vZmZzZXRfbGR3KTsKIAkJZWxzZQogCQkJcmV0ID0gLUVJTlZBTDsKIAl9Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
