Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E85AF398460
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 10:39:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0FC16EBA6;
	Wed,  2 Jun 2021 08:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 452A86EB9C;
 Wed,  2 Jun 2021 08:38:53 +0000 (UTC)
IronPort-SDR: xRlxZmvsih+A5OuWriTfwIgZaf4B18UbvNHTcE9N9wrI5mZ23p4YBL3nssErnuUdm/rXlDfMN6
 y+0Rc9A/JLHg==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="225026268"
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="225026268"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 01:38:53 -0700
IronPort-SDR: aFBCfUgelhlwWgQzCxLqP5escb6AcqUydYxEDN7Im2wZ7Tmx6sX+ZyUPiumKwyJ9X8fy/y7Gwr
 Qg/N0F7odOQg==
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="467376367"
Received: from lmarkel-mobl1.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.49])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 01:38:51 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed,  2 Jun 2021 10:38:18 +0200
Message-Id: <20210602083818.241793-12-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210602083818.241793-1-thomas.hellstrom@linux.intel.com>
References: <20210602083818.241793-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 11/11] drm/i915: Use ttm mmap handling for
 ttm bo's.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNv
bT4KClVzZSB0aGUgdHRtIGhhbmRsZXJzIGZvciBzZXJ2aWNpbmcgcGFnZSBmYXVsdHMsIGFuZCB2
bV9hY2Nlc3MuCgpXZSBkbyBvdXIgb3duIHZhbGlkYXRpb24gb2YgcmVhZC1vbmx5IGFjY2Vzcywg
b3RoZXJ3aXNlIHVzZSB0aGUKdHRtIGhhbmRsZXJzIGFzIG11Y2ggYXMgcG9zc2libGUuCgpCZWNh
dXNlIHRoZSB0dG0gaGFuZGxlcnMgZXhwZWN0IHRoZSB2bWFfbm9kZSBhdCB2bWEtPmJhc2UsIHdl
IHNsaWdodGx5Cm5lZWQgdG8gbWFzc2FnZSB0aGUgbW1hcCBoYW5kbGVycyB0byBsb29rIGF0IHZt
YV9ub2RlLT5kcml2ZXJfcHJpdmF0ZQp0byBmZXRjaCB0aGUgYm8sIGlmIGl0J3MgTlVMTCwgd2Ug
YXNzdW1lIGk5MTUncyBub3JtYWwgbW1hcF9vZmZzZXQgdWFwaQppcyB1c2VkLgoKVGhpcyBpcyB0
aGUgZWFzaWVzdCB3YXkgdG8gYWNoaWV2ZSBjb21wYXRpYmlsaXR5IHdpdGhvdXQgY2hhbmdpbmcg
dHRtJ3MKc2VtYW50aWNzLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ry
w7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCi0gRml4ZWQgc29tZSBt
aW5vciBzdHlsZSBpc3N1ZXMuIChUaG9tYXMgSGVsbHN0csO2bSkKLSBBZGRlZCBhIG11dGV4IERl
c3Ryb3kgKFRob21hcyBIZWxsc3Ryw7ZtKQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9tbWFuLmMgICAgICB8ICA4MyArKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8ICAgNiArLQogLi4uL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgICAzICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9wYWdlcy5jICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3R0bS5jICAgICAgIHwgMTIxICsrKysrKysrKysrKysrKysrLQogLi4uL2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jICAgIHwgIDkwICsrKysrKy0tLS0t
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5jICAgICB8ICAyNSAr
KystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21tYXAuaCAgICAgfCAgMTIg
Ky0KIDggZmlsZXMgY2hhbmdlZCwgMjUxIGluc2VydGlvbnMoKyksIDkyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCmluZGV4IGZkMWM5NzE0Zjhk
OC4uZDFkZTk3ZTRhZGZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFu
LmMKQEAgLTE5LDYgKzE5LDcgQEAKICNpbmNsdWRlICJpOTE1X2dlbV9tbWFuLmgiCiAjaW5jbHVk
ZSAiaTkxNV90cmFjZS5oIgogI2luY2x1ZGUgImk5MTVfdXNlcl9leHRlbnNpb25zLmgiCisjaW5j
bHVkZSAiaTkxNV9nZW1fdHRtLmgiCiAjaW5jbHVkZSAiaTkxNV92bWEuaCIKIAogc3RhdGljIGlu
bGluZSBib29sCkBAIC02MjIsNiArNjIzLDggQEAgbW1hcF9vZmZzZXRfYXR0YWNoKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQgKm1tbzsK
IAlpbnQgZXJyOwogCisJR0VNX0JVR19PTihvYmotPm9wcy0+bW1hcF9vZmZzZXQgfHwgb2JqLT5v
cHMtPm1tYXBfb3BzKTsKKwogCW1tbyA9IGxvb2t1cF9tbW8ob2JqLCBtbWFwX3R5cGUpOwogCWlm
IChtbW8pCiAJCWdvdG8gb3V0OwpAQCAtNjY0LDQwICs2NjcsNDcgQEAgbW1hcF9vZmZzZXRfYXR0
YWNoKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiB9CiAKIHN0YXRpYyBpbnQKLV9f
YXNzaWduX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKLQkJICAgICB1MzIgaGFu
ZGxlLAorX19hc3NpZ25fbW1hcF9vZmZzZXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
aiwKIAkJICAgICBlbnVtIGk5MTVfbW1hcF90eXBlIG1tYXBfdHlwZSwKLQkJICAgICB1NjQgKm9m
ZnNldCkKKwkJICAgICB1NjQgKm9mZnNldCwgc3RydWN0IGRybV9maWxlICpmaWxlKQogewotCXN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQg
Km1tbzsKLQlpbnQgZXJyOwogCi0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlLCBo
YW5kbGUpOwotCWlmICghb2JqKQotCQlyZXR1cm4gLUVOT0VOVDsKKwlpZiAoaTkxNV9nZW1fb2Jq
ZWN0X25ldmVyX21tYXAob2JqKSkKKwkJcmV0dXJuIC1FTk9ERVY7CiAKLQlpZiAoaTkxNV9nZW1f
b2JqZWN0X25ldmVyX21tYXAob2JqKSkgewotCQllcnIgPSAtRU5PREVWOwotCQlnb3RvIG91dDsK
KwlpZiAob2JqLT5vcHMtPm1tYXBfb2Zmc2V0KSAgeworCQkqb2Zmc2V0ID0gb2JqLT5vcHMtPm1t
YXBfb2Zmc2V0KG9iaik7CisJCXJldHVybiAwOwogCX0KIAogCWlmIChtbWFwX3R5cGUgIT0gSTkx
NV9NTUFQX1RZUEVfR1RUICYmCiAJICAgICFpOTE1X2dlbV9vYmplY3RfaGFzX3N0cnVjdF9wYWdl
KG9iaikgJiYKLQkgICAgIWk5MTVfZ2VtX29iamVjdF90eXBlX2hhcyhvYmosIEk5MTVfR0VNX09C
SkVDVF9IQVNfSU9NRU0pKSB7Ci0JCWVyciA9IC1FTk9ERVY7Ci0JCWdvdG8gb3V0OwotCX0KKwkg
ICAgIWk5MTVfZ2VtX29iamVjdF90eXBlX2hhcyhvYmosIEk5MTVfR0VNX09CSkVDVF9IQVNfSU9N
RU0pKQorCQlyZXR1cm4gLUVOT0RFVjsKIAogCW1tbyA9IG1tYXBfb2Zmc2V0X2F0dGFjaChvYmos
IG1tYXBfdHlwZSwgZmlsZSk7Ci0JaWYgKElTX0VSUihtbW8pKSB7Ci0JCWVyciA9IFBUUl9FUlIo
bW1vKTsKLQkJZ290byBvdXQ7Ci0JfQorCWlmIChJU19FUlIobW1vKSkKKwkJcmV0dXJuIFBUUl9F
UlIobW1vKTsKIAogCSpvZmZzZXQgPSBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIoJm1tby0+dm1h
X25vZGUpOwotCWVyciA9IDA7Ci1vdXQ6CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQKK19f
YXNzaWduX21tYXBfb2Zmc2V0X2hhbmRsZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCisJCQkgICAg
dTMyIGhhbmRsZSwKKwkJCSAgICBlbnVtIGk5MTVfbW1hcF90eXBlIG1tYXBfdHlwZSwKKwkJCSAg
ICB1NjQgKm9mZnNldCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOworCWlu
dCBlcnI7CisKKwlvYmogPSBpOTE1X2dlbV9vYmplY3RfbG9va3VwKGZpbGUsIGhhbmRsZSk7CisJ
aWYgKCFvYmopCisJCXJldHVybiAtRU5PRU5UOworCisJZXJyID0gX19hc3NpZ25fbW1hcF9vZmZz
ZXQob2JqLCBtbWFwX3R5cGUsIG9mZnNldCwgZmlsZSk7CiAJaTkxNV9nZW1fb2JqZWN0X3B1dChv
YmopOwogCXJldHVybiBlcnI7CiB9CkBAIC03MTcsNyArNzI3LDcgQEAgaTkxNV9nZW1fZHVtYl9t
bWFwX29mZnNldChzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJZWxzZQogCQltbWFwX3R5cGUgPSBJ
OTE1X01NQVBfVFlQRV9HVFQ7CiAKLQlyZXR1cm4gX19hc3NpZ25fbW1hcF9vZmZzZXQoZmlsZSwg
aGFuZGxlLCBtbWFwX3R5cGUsIG9mZnNldCk7CisJcmV0dXJuIF9fYXNzaWduX21tYXBfb2Zmc2V0
X2hhbmRsZShmaWxlLCBoYW5kbGUsIG1tYXBfdHlwZSwgb2Zmc2V0KTsKIH0KIAogLyoqCkBAIC03
ODUsNyArNzk1LDcgQEAgaTkxNV9nZW1fbW1hcF9vZmZzZXRfaW9jdGwoc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCi0JcmV0dXJuIF9f
YXNzaWduX21tYXBfb2Zmc2V0KGZpbGUsIGFyZ3MtPmhhbmRsZSwgdHlwZSwgJmFyZ3MtPm9mZnNl
dCk7CisJcmV0dXJuIF9fYXNzaWduX21tYXBfb2Zmc2V0X2hhbmRsZShmaWxlLCBhcmdzLT5oYW5k
bGUsIHR5cGUsICZhcmdzLT5vZmZzZXQpOwogfQogCiBzdGF0aWMgdm9pZCB2bV9vcGVuKHN0cnVj
dCB2bV9hcmVhX3N0cnVjdCAqdm1hKQpAQCAtODg5LDggKzg5OSwxOCBAQCBpbnQgaTkxNV9nZW1f
bW1hcChzdHJ1Y3QgZmlsZSAqZmlscCwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCiAJCSAq
IGRlc3Ryb3llZCBhbmQgd2lsbCBiZSBpbnZhbGlkIHdoZW4gdGhlIHZtYSBtYW5hZ2VyIGxvY2sK
IAkJICogaXMgcmVsZWFzZWQuCiAJCSAqLwotCQltbW8gPSBjb250YWluZXJfb2Yobm9kZSwgc3Ry
dWN0IGk5MTVfbW1hcF9vZmZzZXQsIHZtYV9ub2RlKTsKLQkJb2JqID0gaTkxNV9nZW1fb2JqZWN0
X2dldF9yY3UobW1vLT5vYmopOworCQlpZiAoIW5vZGUtPmRyaXZlcl9wcml2YXRlKSB7CisJCQlt
bW8gPSBjb250YWluZXJfb2Yobm9kZSwgc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQsIHZtYV9ub2Rl
KTsKKwkJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9nZXRfcmN1KG1tby0+b2JqKTsKKworCQkJR0VN
X0JVR19PTihvYmogJiYgb2JqLT5vcHMtPm1tYXBfb3BzKTsKKwkJfSBlbHNlIHsKKwkJCW9iaiA9
IGk5MTVfZ2VtX29iamVjdF9nZXRfcmN1CisJCQkJKGNvbnRhaW5lcl9vZihub2RlLCBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCwKKwkJCQkJICAgICAgYmFzZS52bWFfbm9kZSkpOworCisJCQlH
RU1fQlVHX09OKG9iaiAmJiAhb2JqLT5vcHMtPm1tYXBfb3BzKTsKKwkJfQogCX0KIAlkcm1fdm1h
X29mZnNldF91bmxvY2tfbG9va3VwKGRldi0+dm1hX29mZnNldF9tYW5hZ2VyKTsKIAlyY3VfcmVh
ZF91bmxvY2soKTsKQEAgLTkxMiw3ICs5MzIsOSBAQCBpbnQgaTkxNV9nZW1fbW1hcChzdHJ1Y3Qg
ZmlsZSAqZmlscCwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCiAJfQogCiAJdm1hLT52bV9m
bGFncyB8PSBWTV9QRk5NQVAgfCBWTV9ET05URVhQQU5EIHwgVk1fRE9OVERVTVA7Ci0Jdm1hLT52
bV9wcml2YXRlX2RhdGEgPSBtbW87CisKKwlpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19pb21lbShv
YmopKQorCQl2bWEtPnZtX2ZsYWdzIHw9IFZNX0lPOwogCiAJLyoKIAkgKiBXZSBrZWVwIHRoZSBy
ZWYgb24gbW1vLT5vYmosIG5vdCB2bV9maWxlLCBidXQgd2UgcmVxdWlyZQpAQCAtOTI2LDYgKzk0
OCwxNSBAQCBpbnQgaTkxNV9nZW1fbW1hcChzdHJ1Y3QgZmlsZSAqZmlscCwgc3RydWN0IHZtX2Fy
ZWFfc3RydWN0ICp2bWEpCiAJLyogRHJvcCB0aGUgaW5pdGlhbCBjcmVhdGlvbiByZWZlcmVuY2Us
IHRoZSB2bWEgaXMgbm93IGhvbGRpbmcgb25lLiAqLwogCWZwdXQoYW5vbik7CiAKKwlpZiAob2Jq
LT5vcHMtPm1tYXBfb3BzKSB7CisJCXZtYS0+dm1fcGFnZV9wcm90ID0gcGdwcm90X2RlY3J5cHRl
ZCh2bV9nZXRfcGFnZV9wcm90KHZtYS0+dm1fZmxhZ3MpKTsKKwkJdm1hLT52bV9vcHMgPSBvYmot
Pm9wcy0+bW1hcF9vcHM7CisJCXZtYS0+dm1fcHJpdmF0ZV9kYXRhID0gbm9kZS0+ZHJpdmVyX3By
aXZhdGU7CisJCXJldHVybiAwOworCX0KKworCXZtYS0+dm1fcHJpdmF0ZV9kYXRhID0gbW1vOwor
CiAJc3dpdGNoIChtbW8tPm1tYXBfdHlwZSkgewogCWNhc2UgSTkxNV9NTUFQX1RZUEVfV0M6CiAJ
CXZtYS0+dm1fcGFnZV9wcm90ID0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3QuaAppbmRleCBhM2FkOGNmNGVlZmQuLmZmNTllNmM2NDBlNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtMzQyLDE0ICszNDIsMTQgQEAgc3Ry
dWN0IHNjYXR0ZXJsaXN0ICoKIF9faTkxNV9nZW1fb2JqZWN0X2dldF9zZyhzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJIHN0cnVjdCBpOTE1X2dlbV9vYmplY3RfcGFnZV9pdGVy
ICppdGVyLAogCQkJIHVuc2lnbmVkIGludCBuLAotCQkJIHVuc2lnbmVkIGludCAqb2Zmc2V0LCBi
b29sIGFsbG93X2FsbG9jKTsKKwkJCSB1bnNpZ25lZCBpbnQgKm9mZnNldCwgYm9vbCBhbGxvd19h
bGxvYywgYm9vbCBkbWEpOwogCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBzY2F0dGVybGlzdCAqCiBp
OTE1X2dlbV9vYmplY3RfZ2V0X3NnKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJ
CSAgICAgICB1bnNpZ25lZCBpbnQgbiwKIAkJICAgICAgIHVuc2lnbmVkIGludCAqb2Zmc2V0LCBi
b29sIGFsbG93X2FsbG9jKQogewotCXJldHVybiBfX2k5MTVfZ2VtX29iamVjdF9nZXRfc2cob2Jq
LCAmb2JqLT5tbS5nZXRfcGFnZSwgbiwgb2Zmc2V0LCBhbGxvd19hbGxvYyk7CisJcmV0dXJuIF9f
aTkxNV9nZW1fb2JqZWN0X2dldF9zZyhvYmosICZvYmotPm1tLmdldF9wYWdlLCBuLCBvZmZzZXQs
IGFsbG93X2FsbG9jLCBmYWxzZSk7CiB9CiAKIHN0YXRpYyBpbmxpbmUgc3RydWN0IHNjYXR0ZXJs
aXN0ICoKQEAgLTM1Nyw3ICszNTcsNyBAQCBpOTE1X2dlbV9vYmplY3RfZ2V0X3NnX2RtYShzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJICAgdW5zaWduZWQgaW50IG4sCiAJCQkg
ICB1bnNpZ25lZCBpbnQgKm9mZnNldCwgYm9vbCBhbGxvd19hbGxvYykKIHsKLQlyZXR1cm4gX19p
OTE1X2dlbV9vYmplY3RfZ2V0X3NnKG9iaiwgJm9iai0+bW0uZ2V0X2RtYV9wYWdlLCBuLCBvZmZz
ZXQsIGFsbG93X2FsbG9jKTsKKwlyZXR1cm4gX19pOTE1X2dlbV9vYmplY3RfZ2V0X3NnKG9iaiwg
Jm9iai0+bW0uZ2V0X2RtYV9wYWdlLCBuLCBvZmZzZXQsIGFsbG93X2FsbG9jLCB0cnVlKTsKIH0K
IAogc3RydWN0IHBhZ2UgKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdF90eXBlcy5oCmluZGV4IDY4MzEzNDc0ZTZhNi4uMmEyM2I3NzQyNGIzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCkBAIC02
MSw2ICs2MSw3IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyB7CiAJCSAgICAgY29u
c3Qgc3RydWN0IGRybV9pOTE1X2dlbV9wcmVhZCAqYXJnKTsKIAlpbnQgKCpwd3JpdGUpKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCSAgICAgIGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9nZW1fcHdyaXRlICphcmcpOworCXU2NCAoKm1tYXBfb2Zmc2V0KShzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqKTsKIAogCWludCAoKmRtYWJ1Zl9leHBvcnQpKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmopOwogCkBAIC03OSw2ICs4MCw3IEBAIHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0X29wcyB7CiAJdm9pZCAoKmRlbGF5ZWRfZnJlZSkoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaik7CiAJdm9pZCAoKnJlbGVhc2UpKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopOwogCisJY29uc3Qgc3RydWN0IHZtX29wZXJhdGlvbnNfc3RydWN0ICptbWFwX29w
czsKIAljb25zdCBjaGFyICpuYW1lOyAvKiBmcmllbmRseSBuYW1lIGZvciBkZWJ1ZywgZS5nLiBs
b2NrZGVwIGNsYXNzZXMgKi8KIH07CiAKQEAgLTMyOCw2ICszMzAsNyBAQCBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCB7CiAKIAlzdHJ1Y3QgewogCQlzdHJ1Y3Qgc2dfdGFibGUgKmNhY2hlZF9p
b19zdDsKKwkJc3RydWN0IGk5MTVfZ2VtX29iamVjdF9wYWdlX2l0ZXIgZ2V0X2lvX3BhZ2U7CiAJ
CWJvb2wgY3JlYXRlZDoxOwogCX0gdHRtOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9wYWdlcy5jCmluZGV4IDY0NDRlMDk3MDE2ZC4uMDg2MDA1YzFjN2VhIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYwpAQCAtNDY3LDkgKzQ2Nyw4IEBAIF9f
aTkxNV9nZW1fb2JqZWN0X2dldF9zZyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAog
CQkJIHN0cnVjdCBpOTE1X2dlbV9vYmplY3RfcGFnZV9pdGVyICppdGVyLAogCQkJIHVuc2lnbmVk
IGludCBuLAogCQkJIHVuc2lnbmVkIGludCAqb2Zmc2V0LAotCQkJIGJvb2wgYWxsb3dfYWxsb2Mp
CisJCQkgYm9vbCBhbGxvd19hbGxvYywgYm9vbCBkbWEpCiB7Ci0JY29uc3QgYm9vbCBkbWEgPSBp
dGVyID09ICZvYmotPm1tLmdldF9kbWFfcGFnZTsKIAlzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNnOwog
CXVuc2lnbmVkIGludCBpZHgsIGNvdW50OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fdHRtLmMKaW5kZXggZmJiMzJiMTQ4YmUzLi4zNzQ4MDk4YjQyZDUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMKQEAgLTEzLDYgKzEzLDcgQEAKICNpbmNsdWRlICJn
ZW0vaTkxNV9nZW1fb2JqZWN0LmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIgog
I2luY2x1ZGUgImdlbS9pOTE1X2dlbV90dG0uaCIKKyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fbW1h
bi5oIgogCiAjZGVmaW5lIEk5MTVfUExfTE1FTTAgVFRNX1BMX1BSSVYKICNkZWZpbmUgSTkxNV9Q
TF9TWVNURU0gVFRNX1BMX1NZU1RFTQpAQCAtMTU4LDExICsxNTksMjAgQEAgc3RhdGljIGludCBp
OTE1X3R0bV9tb3ZlX25vdGlmeShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvKQogCiBzdGF0
aWMgdm9pZCBpOTE1X3R0bV9mcmVlX2NhY2hlZF9pb19zdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQogewotCWlmIChvYmotPnR0bS5jYWNoZWRfaW9fc3QpIHsKLQkJc2dfZnJlZV90
YWJsZShvYmotPnR0bS5jYWNoZWRfaW9fc3QpOwotCQlrZnJlZShvYmotPnR0bS5jYWNoZWRfaW9f
c3QpOwotCQlvYmotPnR0bS5jYWNoZWRfaW9fc3QgPSBOVUxMOwotCX0KKwlzdHJ1Y3QgcmFkaXhf
dHJlZV9pdGVyIGl0ZXI7CisJdm9pZCBfX3JjdSAqKnNsb3Q7CisKKwlpZiAoIW9iai0+dHRtLmNh
Y2hlZF9pb19zdCkKKwkJcmV0dXJuOworCisJcmN1X3JlYWRfbG9jaygpOworCXJhZGl4X3RyZWVf
Zm9yX2VhY2hfc2xvdChzbG90LCAmb2JqLT50dG0uZ2V0X2lvX3BhZ2UucmFkaXgsICZpdGVyLCAw
KQorCQlyYWRpeF90cmVlX2RlbGV0ZSgmb2JqLT50dG0uZ2V0X2lvX3BhZ2UucmFkaXgsIGl0ZXIu
aW5kZXgpOworCXJjdV9yZWFkX3VubG9jaygpOworCisJc2dfZnJlZV90YWJsZShvYmotPnR0bS5j
YWNoZWRfaW9fc3QpOworCWtmcmVlKG9iai0+dHRtLmNhY2hlZF9pb19zdCk7CisJb2JqLT50dG0u
Y2FjaGVkX2lvX3N0ID0gTlVMTDsKIH0KIAogc3RhdGljIHZvaWQgaTkxNV90dG1fcHVyZ2Uoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKQEAgLTMzOCwxMiArMzQ4LDQxIEBAIHN0YXRp
YyBpbnQgaTkxNV90dG1fbW92ZShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLCBib29sIGV2
aWN0LAogCXR0bV9ib19tb3ZlX3N5bmNfY2xlYW51cChibywgZHN0X21lbSk7CiAJaTkxNV90dG1f
ZnJlZV9jYWNoZWRfaW9fc3Qob2JqKTsKIAotCWlmICghZHN0X21hbi0+dXNlX3R0KQorCWlmICgh
ZHN0X21hbi0+dXNlX3R0KSB7CiAJCW9iai0+dHRtLmNhY2hlZF9pb19zdCA9IGRzdF9zdDsKKwkJ
b2JqLT50dG0uZ2V0X2lvX3BhZ2Uuc2dfcG9zID0gZHN0X3N0LT5zZ2w7CisJCW9iai0+dHRtLmdl
dF9pb19wYWdlLnNnX2lkeCA9IDA7CisJfQogCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQg
aTkxNV90dG1faW9fbWVtX3Jlc2VydmUoc3RydWN0IHR0bV9kZXZpY2UgKmJkZXYsIHN0cnVjdCB0
dG1fcmVzb3VyY2UgKm1lbSkKK3sKKwlpZiAobWVtLT5tZW1fdHlwZSA8IEk5MTVfUExfTE1FTTAp
CisJCXJldHVybiAwOworCisJbWVtLT5idXMuY2FjaGluZyA9IHR0bV93cml0ZV9jb21iaW5lZDsK
KwltZW0tPmJ1cy5pc19pb21lbSA9IHRydWU7CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIHVu
c2lnbmVkIGxvbmcgaTkxNV90dG1faW9fbWVtX3BmbihzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3Qg
KmJvLAorCQkJCQkgdW5zaWduZWQgbG9uZyBwYWdlX29mZnNldCkKK3sKKwlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqID0gaTkxNV90dG1fdG9fZ2VtKGJvKTsKKwl1bnNpZ25lZCBsb25n
IGJhc2UgPSBvYmotPm1tLnJlZ2lvbi0+aW9tYXAuYmFzZSAtIG9iai0+bW0ucmVnaW9uLT5yZWdp
b24uc3RhcnQ7CisJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsKKwl1bnNpZ25lZCBpbnQgb2ZzOwor
CisJR0VNX1dBUk5fT04oYm8tPnR0bSk7CisKKwlzZyA9IF9faTkxNV9nZW1fb2JqZWN0X2dldF9z
ZyhvYmosICZvYmotPnR0bS5nZXRfaW9fcGFnZSwgcGFnZV9vZmZzZXQsICZvZnMsIHRydWUsIHRy
dWUpOworCisJcmV0dXJuICgoYmFzZSArIHNnX2RtYV9hZGRyZXNzKHNnKSkgPj4gUEFHRV9TSElG
VCkgKyBvZnM7Cit9CisKIHN0YXRpYyBzdHJ1Y3QgdHRtX2RldmljZV9mdW5jcyBpOTE1X3R0bV9i
b19kcml2ZXIgPSB7CiAJLnR0bV90dF9jcmVhdGUgPSBpOTE1X3R0bV90dF9jcmVhdGUsCiAJLnR0
bV90dF91bnBvcHVsYXRlID0gaTkxNV90dG1fdHRfdW5wb3B1bGF0ZSwKQEAgLTM1Myw2ICszOTIs
OCBAQCBzdGF0aWMgc3RydWN0IHR0bV9kZXZpY2VfZnVuY3MgaTkxNV90dG1fYm9fZHJpdmVyID0g
ewogCS5tb3ZlID0gaTkxNV90dG1fbW92ZSwKIAkuc3dhcF9ub3RpZnkgPSBpOTE1X3R0bV9zd2Fw
X25vdGlmeSwKIAkuZGVsZXRlX21lbV9ub3RpZnkgPSBpOTE1X3R0bV9kZWxldGVfbWVtX25vdGlm
eSwKKwkuaW9fbWVtX3Jlc2VydmUgPSBpOTE1X3R0bV9pb19tZW1fcmVzZXJ2ZSwKKwkuaW9fbWVt
X3BmbiA9IGk5MTVfdHRtX2lvX21lbV9wZm4sCiB9OwogCiAvKioKQEAgLTQ2MCw3ICs1MDEsNjcg
QEAgc3RhdGljIHZvaWQgaTkxNV90dG1fZGVsYXllZF9mcmVlKHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmopCiAJfQogfQogCi1zdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3Rfb3BzIGk5MTVfZ2VtX3R0bV9vYmpfb3BzID0geworc3RhdGljIHZtX2ZhdWx0X3Qgdm1f
ZmF1bHRfdHRtKHN0cnVjdCB2bV9mYXVsdCAqdm1mKQoreworCXN0cnVjdCB2bV9hcmVhX3N0cnVj
dCAqYXJlYSA9IHZtZi0+dm1hOworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPQor
CQlpOTE1X3R0bV90b19nZW0oYXJlYS0+dm1fcHJpdmF0ZV9kYXRhKTsKKworCS8qIFNhbml0eSBj
aGVjayB0aGF0IHdlIGFsbG93IHdyaXRpbmcgaW50byB0aGlzIG9iamVjdCAqLworCWlmICh1bmxp
a2VseShpOTE1X2dlbV9vYmplY3RfaXNfcmVhZG9ubHkob2JqKSAmJgorCQkgICAgIGFyZWEtPnZt
X2ZsYWdzICYgVk1fV1JJVEUpKQorCQlyZXR1cm4gVk1fRkFVTFRfU0lHQlVTOworCisJcmV0dXJu
IHR0bV9ib192bV9mYXVsdCh2bWYpOworfQorCitzdGF0aWMgaW50Cit2bV9hY2Nlc3NfdHRtKHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqYXJlYSwgdW5zaWduZWQgbG9uZyBhZGRyLAorCSAgICAgIHZv
aWQgKmJ1ZiwgaW50IGxlbiwgaW50IHdyaXRlKQoreworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmogPQorCQlpOTE1X3R0bV90b19nZW0oYXJlYS0+dm1fcHJpdmF0ZV9kYXRhKTsKKwor
CWlmIChpOTE1X2dlbV9vYmplY3RfaXNfcmVhZG9ubHkob2JqKSAmJiB3cml0ZSkKKwkJcmV0dXJu
IC1FQUNDRVM7CisKKwlyZXR1cm4gdHRtX2JvX3ZtX2FjY2VzcyhhcmVhLCBhZGRyLCBidWYsIGxl
biwgd3JpdGUpOworfQorCitzdGF0aWMgdm9pZCB0dG1fdm1fb3BlbihzdHJ1Y3Qgdm1fYXJlYV9z
dHJ1Y3QgKnZtYSkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0KKwkJaTkx
NV90dG1fdG9fZ2VtKHZtYS0+dm1fcHJpdmF0ZV9kYXRhKTsKKworCUdFTV9CVUdfT04oIW9iaik7
CisJaTkxNV9nZW1fb2JqZWN0X2dldChvYmopOworfQorCitzdGF0aWMgdm9pZCB0dG1fdm1fY2xv
c2Uoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCit7CisJc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiA9CisJCWk5MTVfdHRtX3RvX2dlbSh2bWEtPnZtX3ByaXZhdGVfZGF0YSk7CisK
KwlHRU1fQlVHX09OKCFvYmopOworCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKK30KKworc3Rh
dGljIGNvbnN0IHN0cnVjdCB2bV9vcGVyYXRpb25zX3N0cnVjdCB2bV9vcHNfdHRtID0geworCS5m
YXVsdCA9IHZtX2ZhdWx0X3R0bSwKKwkuYWNjZXNzID0gdm1fYWNjZXNzX3R0bSwKKwkub3BlbiA9
IHR0bV92bV9vcGVuLAorCS5jbG9zZSA9IHR0bV92bV9jbG9zZSwKK307CisKK3N0YXRpYyB1NjQg
aTkxNV90dG1fbW1hcF9vZmZzZXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKK3sK
KwkvKiBUaGUgdHRtX2JvIG11c3QgYmUgYWxsb2NhdGVkIHdpdGggSTkxNV9CT19BTExPQ19VU0VS
ICovCisJR0VNX0JVR19PTighZHJtX21tX25vZGVfYWxsb2NhdGVkKCZvYmotPmJhc2Uudm1hX25v
ZGUudm1fbm9kZSkpOworCisJcmV0dXJuIGRybV92bWFfbm9kZV9vZmZzZXRfYWRkcigmb2JqLT5i
YXNlLnZtYV9ub2RlKTsKK30KKworY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3Bz
IGk5MTVfZ2VtX3R0bV9vYmpfb3BzID0gewogCS5uYW1lID0gImk5MTVfZ2VtX29iamVjdF90dG0i
LAogCS5mbGFncyA9IEk5MTVfR0VNX09CSkVDVF9IQVNfSU9NRU0sCiAKQEAgLTQ2OSw2ICs1NzAs
OCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2Vt
X3R0bV9vYmpfb3BzID0gewogCS50cnVuY2F0ZSA9IGk5MTVfdHRtX3B1cmdlLAogCS5hZGp1c3Rf
bHJ1ID0gaTkxNV90dG1fYWRqdXN0X2xydSwKIAkuZGVsYXllZF9mcmVlID0gaTkxNV90dG1fZGVs
YXllZF9mcmVlLAorCS5tbWFwX29mZnNldCA9IGk5MTVfdHRtX21tYXBfb2Zmc2V0LAorCS5tbWFw
X29wcyA9ICZ2bV9vcHNfdHRtLAogfTsKIAogdm9pZCBpOTE1X3R0bV9ib19kZXN0cm95KHN0cnVj
dCB0dG1fYnVmZmVyX29iamVjdCAqYm8pCkBAIC00NzYsNiArNTc5LDcgQEAgdm9pZCBpOTE1X3R0
bV9ib19kZXN0cm95KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pCiAJc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiA9IGk5MTVfdHRtX3RvX2dlbShibyk7CiAKIAlpOTE1X2dlbV9v
YmplY3RfcmVsZWFzZV9tZW1vcnlfcmVnaW9uKG9iaik7CisJbXV0ZXhfZGVzdHJveSgmb2JqLT50
dG0uZ2V0X2lvX3BhZ2UubG9jayk7CiAJaWYgKG9iai0+dHRtLmNyZWF0ZWQpCiAJCWNhbGxfcmN1
KCZvYmotPnJjdSwgX19pOTE1X2dlbV9mcmVlX29iamVjdF9yY3UpOwogfQpAQCAtNTE3LDYgKzYy
MSw4IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3QgaW50ZWxfbWVtb3J5
X3JlZ2lvbiAqbWVtLAogCWk5MTVfZ2VtX29iamVjdF9tYWtlX3Vuc2hyaW5rYWJsZShvYmopOwog
CW9iai0+cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9NQUlOX1dDIHwgSTkxNV9HRU1fRE9NQUlO
X0dUVDsKIAlpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShvYmosIEk5MTVfQ0FD
SEVfTk9ORSk7CisJSU5JVF9SQURJWF9UUkVFKCZvYmotPnR0bS5nZXRfaW9fcGFnZS5yYWRpeCwg
R0ZQX0tFUk5FTCB8IF9fR0ZQX05PV0FSTik7CisJbXV0ZXhfaW5pdCgmb2JqLT50dG0uZ2V0X2lv
X3BhZ2UubG9jayk7CiAKIAlib190eXBlID0gKG9iai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX1VT
RVIpID8gdHRtX2JvX3R5cGVfZGV2aWNlIDoKIAkJdHRtX2JvX3R5cGVfa2VybmVsOwpAQCAtNTI4
LDYgKzYzNCw3IEBAIGludCBfX2k5MTVfZ2VtX3R0bV9vYmplY3RfaW5pdChzdHJ1Y3QgaW50ZWxf
bWVtb3J5X3JlZ2lvbiAqbWVtLAogCSAqIFNpbWlsYXJseSwgaW4gZGVsYXllZF9kZXN0cm95LCB3
ZSBjYW4ndCBjYWxsIHR0bV9ib19wdXQoKQogCSAqIHVudGlsIHN1Y2Nlc3NmdWwgaW5pdGlhbGl6
YXRpb24uCiAJICovCisJb2JqLT5iYXNlLnZtYV9ub2RlLmRyaXZlcl9wcml2YXRlID0gaTkxNV9n
ZW1fdG9fdHRtKG9iaik7CiAJcmV0ID0gdHRtX2JvX2luaXQoJmk5MTUtPmJkZXYsIGk5MTVfZ2Vt
X3RvX3R0bShvYmopLCBzaXplLAogCQkJICBib190eXBlLCAmaTkxNV9zeXNfcGxhY2VtZW50LCBh
bGlnbm1lbnQsCiAJCQkgIHRydWUsIE5VTEwsIE5VTEwsIGk5MTVfdHRtX2JvX2Rlc3Ryb3kpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9t
bWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4u
YwppbmRleCAwNWEzYjI5ZjU0NWUuLmNhNjlhMjliN2YyYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMKQEAgLTU3OCwxNiArNTc4
LDE3IEBAIHN0YXRpYyBib29sIGFzc2VydF9tbWFwX29mZnNldChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKIAkJCSAgICAgICBpbnQgZXhwZWN0ZWQpCiB7CiAJc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iajsKLQlzdHJ1Y3QgaTkxNV9tbWFwX29mZnNldCAqbW1vOworCXU2NCBv
ZmZzZXQ7CisJaW50IHJldDsKIAogCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJu
YWwoaTkxNSwgc2l6ZSk7CiAJaWYgKElTX0VSUihvYmopKQotCQlyZXR1cm4gZmFsc2U7CisJCXJl
dHVybiBleHBlY3RlZCAmJiBleHBlY3RlZCA9PSBQVFJfRVJSKG9iaik7CiAKLQltbW8gPSBtbWFw
X29mZnNldF9hdHRhY2gob2JqLCBJOTE1X01NQVBfT0ZGU0VUX0dUVCwgTlVMTCk7CisJcmV0ID0g
X19hc3NpZ25fbW1hcF9vZmZzZXQob2JqLCBJOTE1X01NQVBfVFlQRV9HVFQsICZvZmZzZXQsIE5V
TEwpOwogCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIAotCXJldHVybiBQVFJfRVJSX09SX1pF
Uk8obW1vKSA9PSBleHBlY3RlZDsKKwlyZXR1cm4gcmV0ID09IGV4cGVjdGVkOwogfQogCiBzdGF0
aWMgdm9pZCBkaXNhYmxlX3JldGlyZV93b3JrZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpCkBAIC02MjIsOCArNjIzLDggQEAgc3RhdGljIGludCBpZ3RfbW1hcF9vZmZzZXRfZXhoYXVz
dGlvbih2b2lkICphcmcpCiAJc3RydWN0IGRybV9tbSAqbW0gPSAmaTkxNS0+ZHJtLnZtYV9vZmZz
ZXRfbWFuYWdlci0+dm1fYWRkcl9zcGFjZV9tbTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqOwogCXN0cnVjdCBkcm1fbW1fbm9kZSAqaG9sZSwgKm5leHQ7Ci0Jc3RydWN0IGk5MTVf
bW1hcF9vZmZzZXQgKm1tbzsKIAlpbnQgbG9vcCwgZXJyID0gMDsKKwl1NjQgb2Zmc2V0OwogCiAJ
LyogRGlzYWJsZSBiYWNrZ3JvdW5kIHJlYXBlciAqLwogCWRpc2FibGVfcmV0aXJlX3dvcmtlcihp
OTE1KTsKQEAgLTY4NCwxMyArNjg1LDEzIEBAIHN0YXRpYyBpbnQgaWd0X21tYXBfb2Zmc2V0X2V4
aGF1c3Rpb24odm9pZCAqYXJnKQogCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJu
YWwoaTkxNSwgUEFHRV9TSVpFKTsKIAlpZiAoSVNfRVJSKG9iaikpIHsKIAkJZXJyID0gUFRSX0VS
UihvYmopOworCQlwcl9lcnIoIlVuYWJsZSB0byBjcmVhdGUgb2JqZWN0IGZvciByZWNsYWltZWQg
aG9sZVxuIik7CiAJCWdvdG8gb3V0OwogCX0KIAotCW1tbyA9IG1tYXBfb2Zmc2V0X2F0dGFjaChv
YmosIEk5MTVfTU1BUF9PRkZTRVRfR1RULCBOVUxMKTsKLQlpZiAoSVNfRVJSKG1tbykpIHsKKwll
cnIgPSBfX2Fzc2lnbl9tbWFwX29mZnNldChvYmosIEk5MTVfTU1BUF9UWVBFX0dUVCwgJm9mZnNl
dCwgTlVMTCk7CisJaWYgKGVycikgewogCQlwcl9lcnIoIlVuYWJsZSB0byBpbnNlcnQgb2JqZWN0
IGludG8gcmVjbGFpbWVkIGhvbGVcbiIpOwotCQllcnIgPSBQVFJfRVJSKG1tbyk7CiAJCWdvdG8g
ZXJyX29iajsKIAl9CiAKQEAgLTg2NSwxMCArODY2LDEwIEBAIHN0YXRpYyBpbnQgX19pZ3RfbW1h
cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJICAgICAgc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIAkJICAgICAgZW51bSBpOTE1X21tYXBfdHlwZSB0eXBlKQogewot
CXN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICptbW87CiAJc3RydWN0IHZtX2FyZWFfc3RydWN0ICph
cmVhOwogCXVuc2lnbmVkIGxvbmcgYWRkcjsKIAlpbnQgZXJyLCBpOworCXU2NCBvZmZzZXQ7CiAK
IAlpZiAoIWNhbl9tbWFwKG9iaiwgdHlwZSkpCiAJCXJldHVybiAwOwpAQCAtODc5LDExICs4ODAs
MTEgQEAgc3RhdGljIGludCBfX2lndF9tbWFwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LAogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAKLQltbW8gPSBtbWFwX29mZnNldF9hdHRhY2go
b2JqLCB0eXBlLCBOVUxMKTsKLQlpZiAoSVNfRVJSKG1tbykpCi0JCXJldHVybiBQVFJfRVJSKG1t
byk7CisJZXJyID0gX19hc3NpZ25fbW1hcF9vZmZzZXQob2JqLCB0eXBlLCAmb2Zmc2V0LCBOVUxM
KTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOwogCi0JYWRkciA9IGlndF9tbWFwX25vZGUoaTkx
NSwgJm1tby0+dm1hX25vZGUsIDAsIFBST1RfV1JJVEUsIE1BUF9TSEFSRUQpOworCWFkZHIgPSBp
Z3RfbW1hcF9vZmZzZXQoaTkxNSwgb2Zmc2V0LCBvYmotPmJhc2Uuc2l6ZSwgUFJPVF9XUklURSwg
TUFQX1NIQVJFRCk7CiAJaWYgKElTX0VSUl9WQUxVRShhZGRyKSkKIAkJcmV0dXJuIGFkZHI7CiAK
QEAgLTg5NywxMyArODk4LDYgQEAgc3RhdGljIGludCBfX2lndF9tbWFwKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LAogCQlnb3RvIG91dF91bm1hcDsKIAl9CiAKLQlpZiAoYXJlYS0+dm1f
cHJpdmF0ZV9kYXRhICE9IG1tbykgewotCQlwcl9lcnIoIiVzOiB2bV9hcmVhX3N0cnVjdCBkaWQg
bm90IHBvaW50IGJhY2sgdG8gb3VyIG1tYXBfb2Zmc2V0IG9iamVjdCFcbiIsCi0JCSAgICAgICBv
YmotPm1tLnJlZ2lvbi0+bmFtZSk7Ci0JCWVyciA9IC1FSU5WQUw7Ci0JCWdvdG8gb3V0X3VubWFw
OwotCX0KLQogCWZvciAoaSA9IDA7IGkgPCBvYmotPmJhc2Uuc2l6ZSAvIHNpemVvZih1MzIpOyBp
KyspIHsKIAkJdTMyIF9fdXNlciAqdXggPSB1NjRfdG9fdXNlcl9wdHIoKHU2NCkoYWRkciArIGkg
KiBzaXplb2YoKnV4KSkpOwogCQl1MzIgeDsKQEAgLTk2MSw3ICs5NTUsNyBAQCBzdGF0aWMgaW50
IGlndF9tbWFwKHZvaWQgKmFyZykKIAkJCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7
CiAJCQlpbnQgZXJyOwogCi0JCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbiht
ciwgc2l6ZXNbaV0sIDApOworCQkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24o
bXIsIHNpemVzW2ldLCBJOTE1X0JPX0FMTE9DX1VTRVIpOwogCQkJaWYgKG9iaiA9PSBFUlJfUFRS
KC1FTk9ERVYpKQogCQkJCWNvbnRpbnVlOwogCkBAIC0xMDA0LDEyICs5OTgsMTIgQEAgc3RhdGlj
IGludCBfX2lndF9tbWFwX2FjY2VzcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJ
CSAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgICAgZW51bSBpOTE1
X21tYXBfdHlwZSB0eXBlKQogewotCXN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICptbW87CiAJdW5z
aWduZWQgbG9uZyBfX3VzZXIgKnB0cjsKIAl1bnNpZ25lZCBsb25nIEEsIEI7CiAJdW5zaWduZWQg
bG9uZyB4LCB5OwogCXVuc2lnbmVkIGxvbmcgYWRkcjsKIAlpbnQgZXJyOworCXU2NCBvZmZzZXQ7
CiAKIAltZW1zZXQoJkEsIDB4QUEsIHNpemVvZihBKSk7CiAJbWVtc2V0KCZCLCAweEJCLCBzaXpl
b2YoQikpOwpAQCAtMTAxNywxMSArMTAxMSwxMSBAQCBzdGF0aWMgaW50IF9faWd0X21tYXBfYWNj
ZXNzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCWlmICghY2FuX21tYXAob2JqLCB0
eXBlKSB8fCAhY2FuX2FjY2VzcyhvYmopKQogCQlyZXR1cm4gMDsKIAotCW1tbyA9IG1tYXBfb2Zm
c2V0X2F0dGFjaChvYmosIHR5cGUsIE5VTEwpOwotCWlmIChJU19FUlIobW1vKSkKLQkJcmV0dXJu
IFBUUl9FUlIobW1vKTsKKwllcnIgPSBfX2Fzc2lnbl9tbWFwX29mZnNldChvYmosIHR5cGUsICZv
ZmZzZXQsIE5VTEwpOworCWlmIChlcnIpCisJCXJldHVybiBlcnI7CiAKLQlhZGRyID0gaWd0X21t
YXBfbm9kZShpOTE1LCAmbW1vLT52bWFfbm9kZSwgMCwgUFJPVF9XUklURSwgTUFQX1NIQVJFRCk7
CisJYWRkciA9IGlndF9tbWFwX29mZnNldChpOTE1LCBvZmZzZXQsIG9iai0+YmFzZS5zaXplLCBQ
Uk9UX1dSSVRFLCBNQVBfU0hBUkVEKTsKIAlpZiAoSVNfRVJSX1ZBTFVFKGFkZHIpKQogCQlyZXR1
cm4gYWRkcjsKIAlwdHIgPSAodW5zaWduZWQgbG9uZyBfX3VzZXIgKilhZGRyOwpAQCAtMTA4MSw3
ICsxMDc1LDcgQEAgc3RhdGljIGludCBpZ3RfbW1hcF9hY2Nlc3Modm9pZCAqYXJnKQogCQlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCQlpbnQgZXJyOwogCi0JCW9iaiA9IGk5MTVf
Z2VtX29iamVjdF9jcmVhdGVfcmVnaW9uKG1yLCBQQUdFX1NJWkUsIDApOworCQlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbihtciwgUEFHRV9TSVpFLCBJOTE1X0JPX0FMTE9DX1VT
RVIpOwogCQlpZiAob2JqID09IEVSUl9QVFIoLUVOT0RFVikpCiAJCQljb250aW51ZTsKIApAQCAt
MTExMSwxMSArMTEwNSwxMSBAQCBzdGF0aWMgaW50IF9faWd0X21tYXBfZ3B1KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAogCQkJICBlbnVtIGk5MTVfbW1hcF90eXBlIHR5cGUpCiB7CiAJ
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwotCXN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0
ICptbW87CiAJdW5zaWduZWQgbG9uZyBhZGRyOwogCXUzMiBfX3VzZXIgKnV4OwogCXUzMiBiYmU7
CiAJaW50IGVycjsKKwl1NjQgb2Zmc2V0OwogCiAJLyoKIAkgKiBWZXJpZnkgdGhhdCB0aGUgbW1h
cCBhY2Nlc3MgaW50byB0aGUgYmFja2luZyBzdG9yZSBhbGlnbnMgd2l0aApAQCAtMTEzMiwxMSAr
MTEyNiwxMSBAQCBzdGF0aWMgaW50IF9faWd0X21tYXBfZ3B1KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LAogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAKLQltbW8gPSBtbWFwX29mZnNl
dF9hdHRhY2gob2JqLCB0eXBlLCBOVUxMKTsKLQlpZiAoSVNfRVJSKG1tbykpCi0JCXJldHVybiBQ
VFJfRVJSKG1tbyk7CisJZXJyID0gX19hc3NpZ25fbW1hcF9vZmZzZXQob2JqLCB0eXBlLCAmb2Zm
c2V0LCBOVUxMKTsKKwlpZiAoZXJyKQorCQlyZXR1cm4gZXJyOwogCi0JYWRkciA9IGlndF9tbWFw
X25vZGUoaTkxNSwgJm1tby0+dm1hX25vZGUsIDAsIFBST1RfV1JJVEUsIE1BUF9TSEFSRUQpOwor
CWFkZHIgPSBpZ3RfbW1hcF9vZmZzZXQoaTkxNSwgb2Zmc2V0LCBvYmotPmJhc2Uuc2l6ZSwgUFJP
VF9XUklURSwgTUFQX1NIQVJFRCk7CiAJaWYgKElTX0VSUl9WQUxVRShhZGRyKSkKIAkJcmV0dXJu
IGFkZHI7CiAKQEAgLTEyMjYsNyArMTIyMCw3IEBAIHN0YXRpYyBpbnQgaWd0X21tYXBfZ3B1KHZv
aWQgKmFyZykKIAkJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAkJaW50IGVycjsK
IAotCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3JlZ2lvbihtciwgUEFHRV9TSVpFLCAw
KTsKKwkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24obXIsIFBBR0VfU0laRSwg
STkxNV9CT19BTExPQ19VU0VSKTsKIAkJaWYgKG9iaiA9PSBFUlJfUFRSKC1FTk9ERVYpKQogCQkJ
Y29udGludWU7CiAKQEAgLTEzMDMsMTggKzEyOTcsMTggQEAgc3RhdGljIGludCBfX2lndF9tbWFw
X3Jldm9rZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJCSAgICAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgICAgZW51bSBpOTE1X21tYXBfdHlwZSB0eXBl
KQogewotCXN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICptbW87CiAJdW5zaWduZWQgbG9uZyBhZGRy
OwogCWludCBlcnI7CisJdTY0IG9mZnNldDsKIAogCWlmICghY2FuX21tYXAob2JqLCB0eXBlKSkK
IAkJcmV0dXJuIDA7CiAKLQltbW8gPSBtbWFwX29mZnNldF9hdHRhY2gob2JqLCB0eXBlLCBOVUxM
KTsKLQlpZiAoSVNfRVJSKG1tbykpCi0JCXJldHVybiBQVFJfRVJSKG1tbyk7CisJZXJyID0gX19h
c3NpZ25fbW1hcF9vZmZzZXQob2JqLCB0eXBlLCAmb2Zmc2V0LCBOVUxMKTsKKwlpZiAoZXJyKQor
CQlyZXR1cm4gZXJyOwogCi0JYWRkciA9IGlndF9tbWFwX25vZGUoaTkxNSwgJm1tby0+dm1hX25v
ZGUsIDAsIFBST1RfV1JJVEUsIE1BUF9TSEFSRUQpOworCWFkZHIgPSBpZ3RfbW1hcF9vZmZzZXQo
aTkxNSwgb2Zmc2V0LCBvYmotPmJhc2Uuc2l6ZSwgUFJPVF9XUklURSwgTUFQX1NIQVJFRCk7CiAJ
aWYgKElTX0VSUl9WQUxVRShhZGRyKSkKIAkJcmV0dXJuIGFkZHI7CiAKQEAgLTEzNTAsMTAgKzEz
NDQsMjAgQEAgc3RhdGljIGludCBfX2lndF9tbWFwX3Jldm9rZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKIAkJfQogCX0KIAotCWVyciA9IGNoZWNrX2Fic2VudChhZGRyLCBvYmotPmJh
c2Uuc2l6ZSk7Ci0JaWYgKGVycikgewotCQlwcl9lcnIoIiVzOiB3YXMgbm90IGFic2VudFxuIiwg
b2JqLT5tbS5yZWdpb24tPm5hbWUpOwotCQlnb3RvIG91dF91bm1hcDsKKwlpZiAoIW9iai0+b3Bz
LT5tbWFwX29wcykgeworCQllcnIgPSBjaGVja19hYnNlbnQoYWRkciwgb2JqLT5iYXNlLnNpemUp
OworCQlpZiAoZXJyKSB7CisJCQlwcl9lcnIoIiVzOiB3YXMgbm90IGFic2VudFxuIiwgb2JqLT5t
bS5yZWdpb24tPm5hbWUpOworCQkJZ290byBvdXRfdW5tYXA7CisJCX0KKwl9IGVsc2UgeworCQkv
KiB0dG0gYWxsb3dzIGFjY2VzcyB0byBldmljdGVkIHJlZ2lvbnMgYnkgZGVzaWduICovCisKKwkJ
ZXJyID0gY2hlY2tfcHJlc2VudChhZGRyLCBvYmotPmJhc2Uuc2l6ZSk7CisJCWlmIChlcnIpIHsK
KwkJCXByX2VycigiJXM6IHdhcyBub3QgcHJlc2VudFxuIiwgb2JqLT5tbS5yZWdpb24tPm5hbWUp
OworCQkJZ290byBvdXRfdW5tYXA7CisJCX0KIAl9CiAKIG91dF91bm1hcDoKQEAgLTEzNzEsNyAr
MTM3NSw3IEBAIHN0YXRpYyBpbnQgaWd0X21tYXBfcmV2b2tlKHZvaWQgKmFyZykKIAkJc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAkJaW50IGVycjsKIAotCQlvYmogPSBpOTE1X2dl
bV9vYmplY3RfY3JlYXRlX3JlZ2lvbihtciwgUEFHRV9TSVpFLCAwKTsKKwkJb2JqID0gaTkxNV9n
ZW1fb2JqZWN0X2NyZWF0ZV9yZWdpb24obXIsIFBBR0VfU0laRSwgSTkxNV9CT19BTExPQ19VU0VS
KTsKIAkJaWYgKG9iaiA9PSBFUlJfUFRSKC1FTk9ERVYpKQogCQkJY29udGludWU7CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9tbWFwLmMKaW5kZXggNTgzYTRmZjhiOGM5Li5l
OTIwYTQ2MWJkMzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
Z3RfbW1hcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5j
CkBAIC05LDE1ICs5LDI4IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpZ3Rf
bW1hcC5oIgogCi11bnNpZ25lZCBsb25nIGlndF9tbWFwX25vZGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsCi0JCQkgICAgc3RydWN0IGRybV92bWFfb2Zmc2V0X25vZGUgKm5vZGUsCi0J
CQkgICAgdW5zaWduZWQgbG9uZyBhZGRyLAotCQkJICAgIHVuc2lnbmVkIGxvbmcgcHJvdCwKLQkJ
CSAgICB1bnNpZ25lZCBsb25nIGZsYWdzKQordW5zaWduZWQgbG9uZyBpZ3RfbW1hcF9vZmZzZXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCisJCQkgICAgICB1NjQgb2Zmc2V0LAorCQkJ
ICAgICAgdW5zaWduZWQgbG9uZyBzaXplLAorCQkJICAgICAgdW5zaWduZWQgbG9uZyBwcm90LAor
CQkJICAgICAgdW5zaWduZWQgbG9uZyBmbGFncykKIHsKKwlzdHJ1Y3QgZHJtX3ZtYV9vZmZzZXRf
bm9kZSAqbm9kZTsKIAlzdHJ1Y3QgZmlsZSAqZmlsZTsKKwl1bnNpZ25lZCBsb25nIGFkZHI7CiAJ
aW50IGVycjsKIAorCS8qIG5vIG5lZWQgdG8gcmVmY291bnQsIHdlIG93biB0aGlzIG9iamVjdCAq
LworCWRybV92bWFfb2Zmc2V0X2xvY2tfbG9va3VwKGk5MTUtPmRybS52bWFfb2Zmc2V0X21hbmFn
ZXIpOworCW5vZGUgPSBkcm1fdm1hX29mZnNldF9leGFjdF9sb29rdXBfbG9ja2VkKGk5MTUtPmRy
bS52bWFfb2Zmc2V0X21hbmFnZXIsCisJCQkJCQkgIG9mZnNldCAvIFBBR0VfU0laRSwgc2l6ZSAv
IFBBR0VfU0laRSk7CisJZHJtX3ZtYV9vZmZzZXRfdW5sb2NrX2xvb2t1cChpOTE1LT5kcm0udm1h
X29mZnNldF9tYW5hZ2VyKTsKKworCWlmIChHRU1fV0FSTl9PTighbm9kZSkpIHsKKwkJcHJfaW5m
bygiRmFpbGVkIHRvIGxvb2t1cCAlbGx4XG4iLCBvZmZzZXQpOworCQlyZXR1cm4gLUVOT0VOVDsK
Kwl9CisKIAkvKiBQcmV0ZW5kIHRvIG9wZW4oIi9kZXYvZHJpL2NhcmQwIikgKi8KIAlmaWxlID0g
bW9ja19kcm1fZ2V0ZmlsZShpOTE1LT5kcm0ucHJpbWFyeSwgT19SRFdSKTsKIAlpZiAoSVNfRVJS
KGZpbGUpKQpAQCAtMjksNyArNDIsNyBAQCB1bnNpZ25lZCBsb25nIGlndF9tbWFwX25vZGUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCWdvdG8gb3V0X2ZpbGU7CiAJfQogCi0JYWRk
ciA9IHZtX21tYXAoZmlsZSwgYWRkciwgZHJtX3ZtYV9ub2RlX3NpemUobm9kZSkgPDwgUEFHRV9T
SElGVCwKKwlhZGRyID0gdm1fbW1hcChmaWxlLCAwLCBkcm1fdm1hX25vZGVfc2l6ZShub2RlKSA8
PCBQQUdFX1NISUZULAogCQkgICAgICAgcHJvdCwgZmxhZ3MsIGRybV92bWFfbm9kZV9vZmZzZXRf
YWRkcihub2RlKSk7CiAKIAlkcm1fdm1hX25vZGVfcmV2b2tlKG5vZGUsIGZpbGUtPnByaXZhdGVf
ZGF0YSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X21t
YXAuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbW1hcC5oCmluZGV4IDZl
NzE2Y2I1OWQ3ZS4uYWNiZTM0ZDgxYTZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaWd0X21tYXAuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvaWd0X21tYXAuaApAQCAtNywxMyArNywxNSBAQAogI2lmbmRlZiBJR1RfTU1BUF9ICiAjZGVm
aW5lIElHVF9NTUFQX0gKIAorI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CisKIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlOwogc3RydWN0IGRybV92bWFfb2Zmc2V0X25vZGU7CiAKLXVuc2lnbmVkIGxv
bmcgaWd0X21tYXBfbm9kZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKLQkJCSAgICBz
dHJ1Y3QgZHJtX3ZtYV9vZmZzZXRfbm9kZSAqbm9kZSwKLQkJCSAgICB1bnNpZ25lZCBsb25nIGFk
ZHIsCi0JCQkgICAgdW5zaWduZWQgbG9uZyBwcm90LAotCQkJICAgIHVuc2lnbmVkIGxvbmcgZmxh
Z3MpOwordW5zaWduZWQgbG9uZyBpZ3RfbW1hcF9vZmZzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsCisJCQkgICAgICB1NjQgb2Zmc2V0LAorCQkJICAgICAgdW5zaWduZWQgbG9uZyBz
aXplLAorCQkJICAgICAgdW5zaWduZWQgbG9uZyBwcm90LAorCQkJICAgICAgdW5zaWduZWQgbG9u
ZyBmbGFncyk7CiAKICNlbmRpZiAvKiBJR1RfTU1BUF9IICovCi0tIAoyLjMxLjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
