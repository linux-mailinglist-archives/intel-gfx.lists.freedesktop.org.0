Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A3258C43
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBBCD6E85D;
	Thu, 27 Jun 2019 20:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F386E843
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:57:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455759"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:57:07 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:24 +0100
Message-Id: <20190627205633.1143-29-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 28/37] drm/i915: Allow i915 to manage the vma
 offset nodes instead of drm core
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
VGhpcyBlbmFibGVzIHVzIHRvIHN0b3JlIGV4dHJhIGRhdGEgd2l0aGluIHZtYS0+dm1fcHJpdmF0
ZV9kYXRhIGFuZCBhc3NpZ24KdGhlIHBhZ2VmYXVsdCBvcHMgZm9yIGVhY2ggbW1hcCBpbnN0YW5j
ZS4KCldlIHJlcGxhY2UgdGhlIGNvcmUgZHJtX2dlbV9tbWFwIGltcGxlbWVudGF0aW9uIHRvIG92
ZXJjb21lIHRoZSBsaW1pdGF0aW9uCmluIGhhdmluZyBvbmx5IGEgc2luZ2xlIG9mZnNldCBub2Rl
IHBlciBnZW0gb2JqZWN0LCBhbGxvd2luZyB1cyB0byBoYXZlCm11bHRpcGxlIG9mZnNldHMgcGVy
IG9iamVjdC4gVGhpcyBlbmFibGVzIGEgbWFwcGluZyBpbnN0YW5jZSB0byB1c2UgdW5pcXVlCmZh
dWx0LWhhZGxlcnMsIHBlciBvYmplY3QuCgpTaWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUg
PGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX21tYW4uYyAgICAgIHwgMTc5ICsrKysrKysrKysrKysrKystLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgIDMyICsrKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgICB8ICAxNyArLQogLi4uL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgIDE3ICsrCiAuLi4vZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMgICAgfCAgMTIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgICAgICAgICB8ICAxOSArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgIHwgICA5ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV92bWEuYyAgICAgICAgICAgICAgIHwgIDIxICstCiA5IGZpbGVzIGNoYW5n
ZWQsIDI2OCBpbnNlcnRpb25zKCspLCAzOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRleCAzOTE2MjFlZTNjYmIuLjdiNDZmNDRkOWMyMCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCkBAIC0yMTksNyArMjE5
LDggQEAgdm1fZmF1bHRfdCBpOTE1X2dlbV9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQgKnZtZikKIHsK
ICNkZWZpbmUgTUlOX0NIVU5LX1BBR0VTIChTWl8xTSA+PiBQQUdFX1NISUZUKQogCXN0cnVjdCB2
bV9hcmVhX3N0cnVjdCAqYXJlYSA9IHZtZi0+dm1hOwotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmogPSB0b19pbnRlbF9ibyhhcmVhLT52bV9wcml2YXRlX2RhdGEpOworCXN0cnVjdCBp
OTE1X21tYXBfb2Zmc2V0ICpwcml2ID0gYXJlYS0+dm1fcHJpdmF0ZV9kYXRhOworCXN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBwcml2LT5vYmo7CiAJc3RydWN0IGRybV9kZXZpY2Ug
KmRldiA9IG9iai0+YmFzZS5kZXY7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGRldik7CiAJc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50
aW1lX3BtOwpAQCAtMzcxLDEzICszNzIsMTUgQEAgdm1fZmF1bHRfdCBpOTE1X2dlbV9mYXVsdChz
dHJ1Y3Qgdm1fZmF1bHQgKnZtZikKIHZvaWQgX19pOTE1X2dlbV9vYmplY3RfcmVsZWFzZV9tbWFw
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7CiAJc3RydWN0IGk5MTVfdm1hICp2
bWE7CisJc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQgKm1tbzsKIAogCUdFTV9CVUdfT04oIW9iai0+
dXNlcmZhdWx0X2NvdW50KTsKIAogCW9iai0+dXNlcmZhdWx0X2NvdW50ID0gMDsKIAlsaXN0X2Rl
bCgmb2JqLT51c2VyZmF1bHRfbGluayk7Ci0JZHJtX3ZtYV9ub2RlX3VubWFwKCZvYmotPmJhc2Uu
dm1hX25vZGUsCi0JCQkgICBvYmotPmJhc2UuZGV2LT5hbm9uX2lub2RlLT5pX21hcHBpbmcpOwor
CWxpc3RfZm9yX2VhY2hfZW50cnkobW1vLCAmb2JqLT5tbWFwX29mZnNldHMsIG9mZnNldCkKKwkJ
ZHJtX3ZtYV9ub2RlX3VubWFwKCZtbW8tPnZtYV9ub2RlLAorCQkJCSAgIG9iai0+YmFzZS5kZXYt
PmFub25faW5vZGUtPmlfbWFwcGluZyk7CiAKIAlmb3JfZWFjaF9nZ3R0X3ZtYSh2bWEsIG9iaikK
IAkJaTkxNV92bWFfdW5zZXRfdXNlcmZhdWx0KHZtYSk7CkBAIC00MzEsMTQgKzQzNCwzMSBAQCB2
b2lkIGk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21tYXAoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaikKIAlpbnRlbF9ydW50aW1lX3BtX3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJl
Zik7CiB9CiAKLXN0YXRpYyBpbnQgY3JlYXRlX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmopCitzdGF0aWMgdm9pZCBpbml0X21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCQkgICAgIHN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICpt
bW8pCit7CisJbXV0ZXhfbG9jaygmb2JqLT5tbW9fbG9jayk7CisJa3JlZl9pbml0KCZtbW8tPnJl
Zik7CisJbGlzdF9hZGQoJm1tby0+b2Zmc2V0LCAmb2JqLT5tbWFwX29mZnNldHMpOworCW11dGV4
X3VubG9jaygmb2JqLT5tbW9fbG9jayk7Cit9CisKK3N0YXRpYyBpbnQgY3JlYXRlX21tYXBfb2Zm
c2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCQkgICAgICBzdHJ1Y3QgaTkx
NV9tbWFwX29mZnNldCAqbW1vKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
dG9faTkxNShvYmotPmJhc2UuZGV2KTsKKwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gb2JqLT5i
YXNlLmRldjsKIAlpbnQgZXJyOwogCi0JZXJyID0gZHJtX2dlbV9jcmVhdGVfbW1hcF9vZmZzZXQo
Jm9iai0+YmFzZSk7Ci0JaWYgKGxpa2VseSghZXJyKSkKKwlkcm1fdm1hX25vZGVfcmVzZXQoJm1t
by0+dm1hX25vZGUpOworCWlmIChtbW8tPmZpbGUpCisJCWRybV92bWFfbm9kZV9hbGxvdygmbW1v
LT52bWFfbm9kZSwgbW1vLT5maWxlKTsKKwllcnIgPSBkcm1fdm1hX29mZnNldF9hZGQoZGV2LT52
bWFfb2Zmc2V0X21hbmFnZXIsICZtbW8tPnZtYV9ub2RlLAorCQkJCSBvYmotPmJhc2Uuc2l6ZSAv
IFBBR0VfU0laRSk7CisJaWYgKGxpa2VseSghZXJyKSkgeworCQlpbml0X21tYXBfb2Zmc2V0KG9i
aiwgbW1vKTsKIAkJcmV0dXJuIDA7CisJfQogCiAJLyogQXR0ZW1wdCB0byByZWFwIHNvbWUgbW1h
cCBzcGFjZSBmcm9tIGRlYWQgb2JqZWN0cyAqLwogCWRvIHsKQEAgLTQ0OSwzMiArNDY5LDQ5IEBA
IHN0YXRpYyBpbnQgY3JlYXRlX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmopCiAJCQlicmVhazsKIAogCQlpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKGk5MTUp
OwotCQllcnIgPSBkcm1fZ2VtX2NyZWF0ZV9tbWFwX29mZnNldCgmb2JqLT5iYXNlKTsKLQkJaWYg
KCFlcnIpCisJCWVyciA9IGRybV92bWFfb2Zmc2V0X2FkZChkZXYtPnZtYV9vZmZzZXRfbWFuYWdl
ciwgJm1tby0+dm1hX25vZGUsCisJCQkJCSBvYmotPmJhc2Uuc2l6ZSAvIFBBR0VfU0laRSk7CisJ
CWlmICghZXJyKSB7CisJCQlpbml0X21tYXBfb2Zmc2V0KG9iaiwgbW1vKTsKIAkJCWJyZWFrOwor
CQl9CiAKIAl9IHdoaWxlIChmbHVzaF9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5yZXRpcmVfd29y
aykpOwogCiAJcmV0dXJuIGVycjsKIH0KIAotaW50Ci1pOTE1X2dlbV9tbWFwX2d0dChzdHJ1Y3Qg
ZHJtX2ZpbGUgKmZpbGUsCi0JCSAgc3RydWN0IGRybV9kZXZpY2UgKmRldiwKLQkJICB1MzIgaGFu
ZGxlLAotCQkgIHU2NCAqb2Zmc2V0KQorc3RhdGljIGludAorX19hc3NpZ25fZ2VtX29iamVjdF9t
bWFwX2RhdGEoc3RydWN0IGRybV9maWxlICpmaWxlLAorCQkJICAgICAgdTMyIGhhbmRsZSwKKwkJ
CSAgICAgIGVudW0gaTkxNV9tbWFwX3R5cGUgbW1hcF90eXBlLAorCQkJICAgICAgdTY0ICpvZmZz
ZXQpCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKwlzdHJ1Y3QgaTkxNV9t
bWFwX29mZnNldCAqbW1vOwogCWludCByZXQ7CiAKIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfbG9v
a3VwKGZpbGUsIGhhbmRsZSk7CiAJaWYgKCFvYmopCiAJCXJldHVybiAtRU5PRU5UOwogCi0JcmV0
ID0gY3JlYXRlX21tYXBfb2Zmc2V0KG9iaik7Ci0JaWYgKHJldCA9PSAwKQotCQkqb2Zmc2V0ID0g
ZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZvYmotPmJhc2Uudm1hX25vZGUpOworCW1tbyA9IGt6
YWxsb2Moc2l6ZW9mKCptbW8pLCBHRlBfS0VSTkVMKTsKKwlpZiAoIW1tbykgeworCQlyZXQgPSAt
RU5PTUVNOworCQlnb3RvIGVycjsKKwl9CisKKwltbW8tPmZpbGUgPSBmaWxlOworCXJldCA9IGNy
ZWF0ZV9tbWFwX29mZnNldChvYmosIG1tbyk7CisJaWYgKHJldCkgeworCQlrZnJlZShtbW8pOwor
CQlnb3RvIGVycjsKKwl9CiAKKwltbW8tPm1tYXBfdHlwZSA9IG1tYXBfdHlwZTsKKwltbW8tPm9i
aiA9IG9iajsKKwkqb2Zmc2V0ID0gZHJtX3ZtYV9ub2RlX29mZnNldF9hZGRyKCZtbW8tPnZtYV9u
b2RlKTsKK2VycjoKIAlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7CiAJcmV0dXJuIHJldDsKIH0K
QEAgLTQ5OCw5ICs1MzUsMTE1IEBAIGludAogaTkxNV9nZW1fbW1hcF9ndHRfaW9jdGwoc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJCXN0cnVjdCBkcm1fZmlsZSAqZmlsZSkK
IHsKLQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfZ3R0ICphcmdzID0gZGF0YTsKKwlzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0ICphcmdzID0gZGF0YTsKIAotCXJldHVybiBpOTE1X2dl
bV9tbWFwX2d0dChmaWxlLCBkZXYsIGFyZ3MtPmhhbmRsZSwgJmFyZ3MtPm9mZnNldCk7CisJcmV0
dXJuIF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRhKGZpbGUsIGFyZ3MtPmhhbmRsZSwKKwkJ
CQkJICAgICBJOTE1X01NQVBfVFlQRV9HVFQsCisJCQkJCSAgICAgJmFyZ3MtPm9mZnNldCk7Cit9
CisKK3ZvaWQgaTkxNV9tbWFwX29mZnNldF9vYmplY3RfcmVsZWFzZShzdHJ1Y3Qga3JlZiAqcmVm
KQoreworCXN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICptbW8gPSBjb250YWluZXJfb2YocmVmLAor
CQkJCQkJICAgIHN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0LAorCQkJCQkJICAgIHJlZik7CisJc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IG1tby0+b2JqOworCXN0cnVjdCBkcm1fZGV2
aWNlICpkZXYgPSBvYmotPmJhc2UuZGV2OworCisJaWYgKG1tby0+ZmlsZSkKKwkJZHJtX3ZtYV9u
b2RlX3Jldm9rZSgmbW1vLT52bWFfbm9kZSwgbW1vLT5maWxlKTsKKwlkcm1fdm1hX29mZnNldF9y
ZW1vdmUoZGV2LT52bWFfb2Zmc2V0X21hbmFnZXIsICZtbW8tPnZtYV9ub2RlKTsKKwlsaXN0X2Rl
bCgmbW1vLT5vZmZzZXQpOworCisJa2ZyZWUobW1vKTsKK30KKworc3RhdGljIHZvaWQgaTkxNV9n
ZW1fdm1fb3BlbihzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkKK3sKKwlzdHJ1Y3QgaTkxNV9t
bWFwX29mZnNldCAqcHJpdiA9IHZtYS0+dm1fcHJpdmF0ZV9kYXRhOworCXN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmogPSBwcml2LT5vYmo7CisKKwlkcm1fZ2VtX29iamVjdF9nZXQoJm9i
ai0+YmFzZSk7Cit9CisKK3N0YXRpYyB2b2lkIGk5MTVfZ2VtX3ZtX2Nsb3NlKHN0cnVjdCB2bV9h
cmVhX3N0cnVjdCAqdm1hKQoreworCXN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICpwcml2ID0gdm1h
LT52bV9wcml2YXRlX2RhdGE7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IHBy
aXYtPm9iajsKKworCWRybV9nZW1fb2JqZWN0X3B1dF91bmxvY2tlZCgmb2JqLT5iYXNlKTsKKwlr
cmVmX3B1dCgmcHJpdi0+cmVmLCBpOTE1X21tYXBfb2Zmc2V0X29iamVjdF9yZWxlYXNlKTsKK30K
Kworc3RhdGljIGNvbnN0IHN0cnVjdCB2bV9vcGVyYXRpb25zX3N0cnVjdCBpOTE1X2dlbV9ndHRf
dm1fb3BzID0geworCS5mYXVsdCA9IGk5MTVfZ2VtX2ZhdWx0LAorCS5vcGVuID0gaTkxNV9nZW1f
dm1fb3BlbiwKKwkuY2xvc2UgPSBpOTE1X2dlbV92bV9jbG9zZSwKK307CisKKy8qIFRoaXMgb3Zl
cmNvbWVzIHRoZSBsaW1pdGF0aW9uIGluIGRybV9nZW1fbW1hcCdzIGFzc2lnbm1lbnQgb2YgYQor
ICogZHJtX2dlbV9vYmplY3QgYXMgdGhlIHZtYS0+dm1fcHJpdmF0ZV9kYXRhLiBTaW5jZSB3ZSBu
ZWVkIHRvCisgKiBiZSBhYmxlIHRvIHJlc29sdmUgbXVsdGlwbGUgbW1hcCBvZmZzZXRzIHdoaWNo
IGNvdWxkIGJlIHRpZWQKKyAqIHRvIGEgc2luZ2xlIGdlbSBvYmplY3QuCisgKi8KK2ludCBpOTE1
X2dlbV9tbWFwKHN0cnVjdCBmaWxlICpmaWxwLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkK
K3sKKwlzdHJ1Y3QgZHJtX3ZtYV9vZmZzZXRfbm9kZSAqbm9kZTsKKwlzdHJ1Y3QgZHJtX2ZpbGUg
KnByaXYgPSBmaWxwLT5wcml2YXRlX2RhdGE7CisJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IHBy
aXYtPm1pbm9yLT5kZXY7CisJc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQgKm1tbzsKKwlzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3QgKm9iaiA9IE5VTEw7CisKKwlpZiAoZHJtX2Rldl9pc191bnBsdWdnZWQo
ZGV2KSkKKwkJcmV0dXJuIC1FTk9ERVY7CisKKwlkcm1fdm1hX29mZnNldF9sb2NrX2xvb2t1cChk
ZXYtPnZtYV9vZmZzZXRfbWFuYWdlcik7CisJbm9kZSA9IGRybV92bWFfb2Zmc2V0X2V4YWN0X2xv
b2t1cF9sb2NrZWQoZGV2LT52bWFfb2Zmc2V0X21hbmFnZXIsCisJCQkJCQkgIHZtYS0+dm1fcGdv
ZmYsCisJCQkJCQkgIHZtYV9wYWdlcyh2bWEpKTsKKwlpZiAobGlrZWx5KG5vZGUpKSB7CisJICAg
ICAgICBtbW8gPSBjb250YWluZXJfb2Yobm9kZSwgc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQsCisJ
CQkJICAgdm1hX25vZGUpOworCisJCS8qIFRha2UgYSByZWYgZm9yIG91ciBtbWFwX29mZnNldCBh
bmQgZ2VtIG9iamVjdHMuIFRoZSByZWZlcmVuY2UgaXMgY2xlYW5lZAorCQkgKiB1cCB3aGVuIHRo
ZSB2bWEgaXMgY2xvc2VkLgorCQkgKgorCQkgKiBTa2lwIDAtcmVmY250ZWQgb2JqZWN0cyBhcyBp
dCBpcyBpbiB0aGUgcHJvY2VzcyBvZiBiZWluZyBkZXN0cm95ZWQKKwkJICogYW5kIHdpbGwgYmUg
aW52YWxpZCB3aGVuIHRoZSB2bWEgbWFuYWdlciBsb2NrIGlzIHJlbGVhc2VkLgorCQkgKi8KKwkJ
aWYgKGtyZWZfZ2V0X3VubGVzc196ZXJvKCZtbW8tPnJlZikpIHsKKwkJCW9iaiA9ICZtbW8tPm9i
ai0+YmFzZTsKKwkJCWlmICgha3JlZl9nZXRfdW5sZXNzX3plcm8oJm9iai0+cmVmY291bnQpKQor
CQkJCW9iaiA9IE5VTEw7CisJCX0KKwl9CisJZHJtX3ZtYV9vZmZzZXRfdW5sb2NrX2xvb2t1cChk
ZXYtPnZtYV9vZmZzZXRfbWFuYWdlcik7CisKKwlpZiAoIW9iaikKKwkJcmV0dXJuIC1FSU5WQUw7
CisKKwlpZiAoIWRybV92bWFfbm9kZV9pc19hbGxvd2VkKG5vZGUsIHByaXYpKSB7CisJCWRybV9n
ZW1fb2JqZWN0X3B1dF91bmxvY2tlZChvYmopOworCQlyZXR1cm4gLUVBQ0NFUzsKKwl9CisKKwlp
ZiAobm9kZS0+cmVhZG9ubHkpIHsKKwkJaWYgKHZtYS0+dm1fZmxhZ3MgJiBWTV9XUklURSkgewor
CQkJZHJtX2dlbV9vYmplY3RfcHV0X3VubG9ja2VkKG9iaik7CisJCQlyZXR1cm4gLUVJTlZBTDsK
KwkJfQorCisJCXZtYS0+dm1fZmxhZ3MgJj0gflZNX01BWVdSSVRFOworCX0KKworCXZtYS0+dm1f
ZmxhZ3MgfD0gVk1fSU8gfCBWTV9QRk5NQVAgfCBWTV9ET05URVhQQU5EIHwgVk1fRE9OVERVTVA7
CisJdm1hLT52bV9wYWdlX3Byb3QgPSBwZ3Byb3Rfd3JpdGVjb21iaW5lKHZtX2dldF9wYWdlX3By
b3Qodm1hLT52bV9mbGFncykpOworCXZtYS0+dm1fcGFnZV9wcm90ID0gcGdwcm90X2RlY3J5cHRl
ZCh2bWEtPnZtX3BhZ2VfcHJvdCk7CisJdm1hLT52bV9wcml2YXRlX2RhdGEgPSBtbW87CisKKwl2
bWEtPnZtX29wcyA9ICZpOTE1X2dlbV9ndHRfdm1fb3BzOworCisJcmV0dXJuIDA7CiB9CiAKICNp
ZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9TRUxGVEVTVCkKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwppbmRleCA0MzE5NGZiY2JjMmUuLjM0MzE2MmJjODE4
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpAQCAtNTUs
NiArNTUsMjcgQEAgZnJvbnRidWZmZXJfcmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0
ICphY3RpdmUsCiAJaW50ZWxfZmJfb2JqX2ZsdXNoKG9iaiwgT1JJR0lOX0NTKTsKIH0KIAorc3Rh
dGljIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2Z1bmNzX2ZyZWUoc3RydWN0IGRybV9nZW1fb2JqZWN0
ICpvYmopCit7CisJLyogVW51c2VkIGZvciBub3cuIE1hbmRhdG9yeSBjYWxsYmFjayAqLworfQor
CitzdGF0aWMgdm9pZCBpOTE1X2dlbV9vYmplY3RfZnVuY3NfY2xvc2Uoc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpnZW1fb2JqLCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCit7CisJc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiA9IHRvX2ludGVsX2JvKGdlbV9vYmopOworCXN0cnVjdCBpOTE1
X21tYXBfb2Zmc2V0ICptbW8sICpvbjsKKworCW11dGV4X2xvY2soJm9iai0+bW1vX2xvY2spOwor
CWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShtbW8sIG9uLCAmb2JqLT5tbWFwX29mZnNldHMsIG9m
ZnNldCkKKwkJa3JlZl9wdXQoJm1tby0+cmVmLCBpOTE1X21tYXBfb2Zmc2V0X29iamVjdF9yZWxl
YXNlKTsKKwltdXRleF91bmxvY2soJm9iai0+bW1vX2xvY2spOworfQorCitzdGF0aWMgY29uc3Qg
c3RydWN0IGRybV9nZW1fb2JqZWN0X2Z1bmNzIGk5MTVfZ2VtX29iamVjdF9mdW5jcyA9IHsKKwku
ZnJlZSA9IGk5MTVfZ2VtX29iamVjdF9mdW5jc19mcmVlLAorCS5jbG9zZSA9IGk5MTVfZ2VtX29i
amVjdF9mdW5jc19jbG9zZSwKK307CisKIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2luaXQoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCSAgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3Rfb3BzICpvcHMpCiB7CkBAIC02Niw5ICs4NywxMyBAQCB2b2lkIGk5MTVfZ2VtX29i
amVjdF9pbml0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJSU5JVF9MSVNUX0hF
QUQoJm9iai0+bHV0X2xpc3QpOwogCUlOSVRfTElTVF9IRUFEKCZvYmotPmJhdGNoX3Bvb2xfbGlu
ayk7CiAKKwltdXRleF9pbml0KCZvYmotPm1tb19sb2NrKTsKKwlJTklUX0xJU1RfSEVBRCgmb2Jq
LT5tbWFwX29mZnNldHMpOworCiAJaW5pdF9yY3VfaGVhZCgmb2JqLT5yY3UpOwogCiAJb2JqLT5v
cHMgPSBvcHM7CisJb2JqLT5iYXNlLmZ1bmNzID0gJmk5MTVfZ2VtX29iamVjdF9mdW5jczsKIAog
CW9iai0+ZnJvbnRidWZmZXJfZ2d0dF9vcmlnaW4gPSBPUklHSU5fR1RUOwogCWk5MTVfYWN0aXZl
X3JlcXVlc3RfaW5pdCgmb2JqLT5mcm9udGJ1ZmZlcl93cml0ZSwKQEAgLTE1NSw2ICsxODAsNyBA
QCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKIAl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRp
bWVfcG0pOwogCWxsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUob2JqLCBvbiwgZnJlZWQsIGZyZWVk
KSB7CiAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hLCAqdm47CisJCXN0cnVjdCBpOTE1X21tYXBfb2Zm
c2V0ICptbW8sICpvbjsKIAogCQl0cmFjZV9pOTE1X2dlbV9vYmplY3RfZGVzdHJveShvYmopOwog
CkBAIC0xODQsNiArMjEwLDcgQEAgc3RhdGljIHZvaWQgX19pOTE1X2dlbV9mcmVlX29iamVjdHMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCQlzcGluX3VubG9ja19pcnFyZXN0b3Jl
KCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwogCQl9CiAKKwkJaTkxNV9nZW1fb2JqZWN0X3Jl
bGVhc2VfbW1hcChvYmopOwogCQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgp
OwogCiAJCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJm9iai0+YmluZF9jb3VudCkpOwpAQCAtMjAz
LDYgKzIzMCwxMSBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX2ZyZWVfb2JqZWN0cyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogCQlkcm1fZ2VtX29iamVjdF9yZWxlYXNlKCZvYmot
PmJhc2UpOwogCisJCW11dGV4X2xvY2soJm9iai0+bW1vX2xvY2spOworCQlsaXN0X2Zvcl9lYWNo
X2VudHJ5X3NhZmUobW1vLCBvbiwgJm9iai0+bW1hcF9vZmZzZXRzLCBvZmZzZXQpCisJCQlrcmVm
X3B1dCgmbW1vLT5yZWYsIGk5MTVfbW1hcF9vZmZzZXRfb2JqZWN0X3JlbGVhc2UpOworCQltdXRl
eF91bmxvY2soJm9iai0+bW1vX2xvY2spOworCiAJCWJpdG1hcF9mcmVlKG9iai0+Yml0XzE3KTsK
IAkJaTkxNV9nZW1fb2JqZWN0X2ZyZWUob2JqKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5oCmluZGV4IDIwNzU0YzE1NDEyYS4uNDJiNDZiYjQ2NTgwIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCkBAIC0xMjUsMTMgKzEy
NSwyMyBAQCB2b2lkIGk5MTVfZ2VtX29iamVjdF91bmxvY2tfZmVuY2Uoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKIHN0YXRpYyBpbmxpbmUgdm9pZAogaTkxNV9nZW1fb2JqZWN0X3Nl
dF9yZWFkb25seShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewotCW9iai0+YmFz
ZS52bWFfbm9kZS5yZWFkb25seSA9IHRydWU7CisJc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQgKm1t
bzsKKworCWxpc3RfZm9yX2VhY2hfZW50cnkobW1vLCAmb2JqLT5tbWFwX29mZnNldHMsIG9mZnNl
dCkKKwkgICAgICAgIG1tby0+dm1hX25vZGUucmVhZG9ubHkgPSB0cnVlOwogfQogCiBzdGF0aWMg
aW5saW5lIGJvb2wKIGk5MTVfZ2VtX29iamVjdF9pc19yZWFkb25seShjb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewotCXJldHVybiBvYmotPmJhc2Uudm1hX25vZGUucmVh
ZG9ubHk7CisJc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQgKm1tbzsKKworCWxpc3RfZm9yX2VhY2hf
ZW50cnkobW1vLCAmb2JqLT5tbWFwX29mZnNldHMsIG9mZnNldCkgeworCQlpZiAobW1vLT52bWFf
bm9kZS5yZWFkb25seSkKKwkJCXJldHVybiB0cnVlOworCX0KKworCXJldHVybiBmYWxzZTsKIH0K
IAogc3RhdGljIGlubGluZSBib29sCkBAIC00MTksNiArNDI5LDkgQEAgaW50IGk5MTVfZ2VtX29i
amVjdF93YWl0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiBpbnQgaTkxNV9nZW1f
b2JqZWN0X3dhaXRfcHJpb3JpdHkoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJ
CQkgIHVuc2lnbmVkIGludCBmbGFncywKIAkJCQkgIGNvbnN0IHN0cnVjdCBpOTE1X3NjaGVkX2F0
dHIgKmF0dHIpOworCit2b2lkIGk5MTVfbW1hcF9vZmZzZXRfb2JqZWN0X3JlbGVhc2Uoc3RydWN0
IGtyZWYgKnJlZik7CisKICNkZWZpbmUgSTkxNV9QUklPUklUWV9ESVNQTEFZIEk5MTVfVVNFUl9Q
UklPUklUWShJOTE1X1BSSU9SSVRZX01BWCkKIAogI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKaW5kZXggOGNkZWUxODUyNTFhLi44
NmYzNThkYTgwODUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3RfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0X3R5cGVzLmgKQEAgLTYxLDYgKzYxLDE5IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0X29wcyB7CiAJdm9pZCAoKnJlbGVhc2UpKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmopOwogfTsKIAorZW51bSBpOTE1X21tYXBfdHlwZSB7CisJSTkxNV9NTUFQX1RZUEVfR1RUID0g
MCwKK307CisKK3N0cnVjdCBpOTE1X21tYXBfb2Zmc2V0IHsKKwlzdHJ1Y3QgZHJtX3ZtYV9vZmZz
ZXRfbm9kZSB2bWFfbm9kZTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCogb2JqOworCXN0
cnVjdCBkcm1fZmlsZSAqZmlsZTsKKwllbnVtIGk5MTVfbW1hcF90eXBlIG1tYXBfdHlwZTsKKwlz
dHJ1Y3Qga3JlZiByZWY7CisJc3RydWN0IGxpc3RfaGVhZCBvZmZzZXQ7Cit9OworCiBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCB7CiAJc3RydWN0IGRybV9nZW1fb2JqZWN0IGJhc2U7CiAKQEAg
LTEzMiw2ICsxNDUsMTAgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgewogCXVuc2lnbmVk
IGludCB1c2VyZmF1bHRfY291bnQ7CiAJc3RydWN0IGxpc3RfaGVhZCB1c2VyZmF1bHRfbGluazsK
IAorCS8qIFByb3RlY3RzIGFjY2VzcyB0byBtbWFwIG9mZnNldHMgKi8KKwlzdHJ1Y3QgbXV0ZXgg
bW1vX2xvY2s7CisJc3RydWN0IGxpc3RfaGVhZCBtbWFwX29mZnNldHM7CisKIAlzdHJ1Y3QgbGlz
dF9oZWFkIGJhdGNoX3Bvb2xfbGluazsKIAlJOTE1X1NFTEZURVNUX0RFQ0xBUkUoc3RydWN0IGxp
c3RfaGVhZCBzdF9saW5rKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2Vs
ZnRlc3RzL2k5MTVfZ2VtX21tYW4uYwppbmRleCA2OTQ5ZGYwZjk2M2YuLmVhOTBiYTlmZDM0YyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9t
bWFuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9t
bWFuLmMKQEAgLTM2NiwxNSArMzY2LDIwIEBAIHN0YXRpYyBib29sIGFzc2VydF9tbWFwX29mZnNl
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJCSAgICAgICBpbnQgZXhwZWN0ZWQp
CiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKKwkvKiByZWZjb3VudGVkIGlu
IGNyZWF0ZV9tbWFwX29mZnNldCAqLworCXN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICptbW8gPSBr
emFsbG9jKHNpemVvZigqbW1vKSwgR0ZQX0tFUk5FTCk7CiAJaW50IGVycjsKIAogCW9iaiA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc2l6ZSk7CiAJaWYgKElTX0VSUihv
YmopKQogCQlyZXR1cm4gUFRSX0VSUihvYmopOwogCi0JZXJyID0gY3JlYXRlX21tYXBfb2Zmc2V0
KG9iaik7CisJZXJyID0gY3JlYXRlX21tYXBfb2Zmc2V0KG9iaiwgbW1vKTsKIAlpOTE1X2dlbV9v
YmplY3RfcHV0KG9iaik7CiAKKwlpZiAoZXJyKQorCQlrZnJlZShtbW8pOworCiAJcmV0dXJuIGVy
ciA9PSBleHBlY3RlZDsKIH0KIApAQCAtNDA1LDYgKzQxMCw4IEBAIHN0YXRpYyBpbnQgaWd0X21t
YXBfb2Zmc2V0X2V4aGF1c3Rpb24odm9pZCAqYXJnKQogCXN0cnVjdCBkcm1fbW0gKm1tID0gJmk5
MTUtPmRybS52bWFfb2Zmc2V0X21hbmFnZXItPnZtX2FkZHJfc3BhY2VfbW07CiAJc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsKIAlzdHJ1Y3QgZHJtX21tX25vZGUgcmVzdiwgKmhvbGU7
CisJLyogcmVmY291bnRlZCBpbiBjcmVhdGVfbW1hcF9vZmZzZXQgKi8KKwlzdHJ1Y3QgaTkxNV9t
bWFwX29mZnNldCAqbW1vID0ga3phbGxvYyhzaXplb2YoKm1tbyksIEdGUF9LRVJORUwpOwogCXU2
NCBob2xlX3N0YXJ0LCBob2xlX2VuZDsKIAlpbnQgbG9vcCwgZXJyOwogCkBAIC00NDYsOSArNDUz
LDEwIEBAIHN0YXRpYyBpbnQgaWd0X21tYXBfb2Zmc2V0X2V4aGF1c3Rpb24odm9pZCAqYXJnKQog
CQlnb3RvIG91dDsKIAl9CiAKLQllcnIgPSBjcmVhdGVfbW1hcF9vZmZzZXQob2JqKTsKKwllcnIg
PSBjcmVhdGVfbW1hcF9vZmZzZXQob2JqLCBtbW8pOwogCWlmIChlcnIpIHsKIAkJcHJfZXJyKCJV
bmFibGUgdG8gaW5zZXJ0IG9iamVjdCBpbnRvIHJlY2xhaW1lZCBob2xlXG4iKTsKKwkJa2ZyZWUo
bW1vKTsKIAkJZ290byBlcnJfb2JqOwogCX0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMKaW5kZXggYWRmZGI5MDg1ODdmLi4xY2E5OGIwYzRmODIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAtNjg4LDYgKzY4OCw3IEBAIHN0YXRpYyB2b2lkIHJldm9r
ZV9tbWFwcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCWZvciAoaSA9IDA7IGkg
PCBpOTE1LT5nZ3R0Lm51bV9mZW5jZXM7IGkrKykgewogCQlzdHJ1Y3QgZHJtX3ZtYV9vZmZzZXRf
bm9kZSAqbm9kZTsKKwkJc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQgKm1tbzsKIAkJc3RydWN0IGk5
MTVfdm1hICp2bWE7CiAJCXU2NCB2bWFfb2Zmc2V0OwogCkBAIC03MDEsMTAgKzcwMiwyMCBAQCBz
dGF0aWMgdm9pZCByZXZva2VfbW1hcHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJ
CUdFTV9CVUdfT04odm1hLT5mZW5jZSAhPSAmaTkxNS0+Z2d0dC5mZW5jZV9yZWdzW2ldKTsKIAkJ
bm9kZSA9ICZ2bWEtPm9iai0+YmFzZS52bWFfbm9kZTsKIAkJdm1hX29mZnNldCA9IHZtYS0+Z2d0
dF92aWV3LnBhcnRpYWwub2Zmc2V0IDw8IFBBR0VfU0hJRlQ7Ci0JCXVubWFwX21hcHBpbmdfcmFu
Z2UoaTkxNS0+ZHJtLmFub25faW5vZGUtPmlfbWFwcGluZywKLQkJCQkgICAgZHJtX3ZtYV9ub2Rl
X29mZnNldF9hZGRyKG5vZGUpICsgdm1hX29mZnNldCwKLQkJCQkgICAgdm1hLT5zaXplLAotCQkJ
CSAgICAxKTsKKworCQltdXRleF9sb2NrKCZ2bWEtPm9iai0+bW1vX2xvY2spOworCQlsaXN0X2Zv
cl9lYWNoX2VudHJ5KG1tbywgJnZtYS0+b2JqLT5tbWFwX29mZnNldHMsIG9mZnNldCkgeworCQkJ
bm9kZSA9ICZtbW8tPnZtYV9ub2RlOworCQkJaWYgKCFkcm1fbW1fbm9kZV9hbGxvY2F0ZWQoJm5v
ZGUtPnZtX25vZGUpIHx8CisJCQkgICAgbW1vLT5tbWFwX3R5cGUgIT0gSTkxNV9NTUFQX1RZUEVf
R1RUKQorCQkJCWNvbnRpbnVlOworCisJCQl1bm1hcF9tYXBwaW5nX3JhbmdlKGk5MTUtPmRybS5h
bm9uX2lub2RlLT5pX21hcHBpbmcsCisJCQkJCSAgICBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIo
bm9kZSkgKyB2bWFfb2Zmc2V0LAorCQkJCQkgICAgdm1hLT5zaXplLAorCQkJCQkgICAgMSk7CisJ
CX0KKwkJbXV0ZXhfdW5sb2NrKCZ2bWEtPm9iai0+bW1vX2xvY2spOwogCX0KIH0KIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKaW5kZXggMzRlZGMwMzAyNjkxLi4wZjFmM2I3ZjMwMjkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYwpAQCAtMzEyNCwxOCArMzEyNCwxMiBAQCBjb25zdCBzdHJ1Y3QgZGV2
X3BtX29wcyBpOTE1X3BtX29wcyA9IHsKIAkucnVudGltZV9yZXN1bWUgPSBpbnRlbF9ydW50aW1l
X3Jlc3VtZSwKIH07CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3Qgdm1fb3BlcmF0aW9uc19zdHJ1Y3Qg
aTkxNV9nZW1fdm1fb3BzID0gewotCS5mYXVsdCA9IGk5MTVfZ2VtX2ZhdWx0LAotCS5vcGVuID0g
ZHJtX2dlbV92bV9vcGVuLAotCS5jbG9zZSA9IGRybV9nZW1fdm1fY2xvc2UsCi19OwotCiBzdGF0
aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBpOTE1X2RyaXZlcl9mb3BzID0gewogCS5v
d25lciA9IFRISVNfTU9EVUxFLAogCS5vcGVuID0gZHJtX29wZW4sCiAJLnJlbGVhc2UgPSBkcm1f
cmVsZWFzZSwKIAkudW5sb2NrZWRfaW9jdGwgPSBkcm1faW9jdGwsCi0JLm1tYXAgPSBkcm1fZ2Vt
X21tYXAsCisJLm1tYXAgPSBpOTE1X2dlbV9tbWFwLAogCS5wb2xsID0gZHJtX3BvbGwsCiAJLnJl
YWQgPSBkcm1fcmVhZCwKIAkuY29tcGF0X2lvY3RsID0gaTkxNV9jb21wYXRfaW9jdGwsCkBAIC0z
MjI0LDcgKzMyMTgsNiBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgZHJpdmVyID0gewogCiAJ
LmdlbV9jbG9zZV9vYmplY3QgPSBpOTE1X2dlbV9jbG9zZV9vYmplY3QsCiAJLmdlbV9mcmVlX29i
amVjdF91bmxvY2tlZCA9IGk5MTVfZ2VtX2ZyZWVfb2JqZWN0LAotCS5nZW1fdm1fb3BzID0gJmk5
MTVfZ2VtX3ZtX29wcywKIAogCS5wcmltZV9oYW5kbGVfdG9fZmQgPSBkcm1fZ2VtX3ByaW1lX2hh
bmRsZV90b19mZCwKIAkucHJpbWVfZmRfdG9faGFuZGxlID0gZHJtX2dlbV9wcmltZV9mZF90b19o
YW5kbGUsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA0ZDI0ZjlkYzExOTMuLmRjMmJmNDgx
NjVmMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yNTU3LDYgKzI1NTcsNyBAQCBpbnQg
aTkxNV9nZW1fd2FpdF9mb3JfaWRsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiB2b2lkIGk5MTVfZ2VtX3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KTsKIHZvaWQgaTkxNV9nZW1fc3VzcGVuZF9sYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdik7CiB2b2lkIGk5MTVfZ2VtX3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpOworaW50IGk5MTVfZ2VtX21tYXAoc3RydWN0IGZpbGUgKmZpbHAsIHN0cnVjdCB2
bV9hcmVhX3N0cnVjdCAqdm1hKTsKIHZtX2ZhdWx0X3QgaTkxNV9nZW1fZmF1bHQoc3RydWN0IHZt
X2ZhdWx0ICp2bWYpOwogCiBpbnQgaTkxNV9nZW1fb3BlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgc3RydWN0IGRybV9maWxlICpmaWxlKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCmlu
ZGV4IGMyMGEzMDIyY2Q4MC4uZTBlMDc4MThlZmUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMK
QEAgLTg1Niw3ICs4NTYsOCBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfdm1hX2lvdW5tYXAoc3RydWN0
IGk5MTVfdm1hICp2bWEpCiAKIHZvaWQgaTkxNV92bWFfcmV2b2tlX21tYXAoc3RydWN0IGk5MTVf
dm1hICp2bWEpCiB7Ci0Jc3RydWN0IGRybV92bWFfb2Zmc2V0X25vZGUgKm5vZGUgPSAmdm1hLT5v
YmotPmJhc2Uudm1hX25vZGU7CisJc3RydWN0IGRybV92bWFfb2Zmc2V0X25vZGUgKm5vZGU7CisJ
c3RydWN0IGk5MTVfbW1hcF9vZmZzZXQgKm1tbzsKIAl1NjQgdm1hX29mZnNldDsKIAogCWxvY2tk
ZXBfYXNzZXJ0X2hlbGQoJnZtYS0+dm0tPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwpAQCAtODY4
LDEwICs4NjksMjAgQEAgdm9pZCBpOTE1X3ZtYV9yZXZva2VfbW1hcChzdHJ1Y3QgaTkxNV92bWEg
KnZtYSkKIAlHRU1fQlVHX09OKCF2bWEtPm9iai0+dXNlcmZhdWx0X2NvdW50KTsKIAogCXZtYV9v
ZmZzZXQgPSB2bWEtPmdndHRfdmlldy5wYXJ0aWFsLm9mZnNldCA8PCBQQUdFX1NISUZUOwotCXVu
bWFwX21hcHBpbmdfcmFuZ2Uodm1hLT52bS0+aTkxNS0+ZHJtLmFub25faW5vZGUtPmlfbWFwcGlu
ZywKLQkJCSAgICBkcm1fdm1hX25vZGVfb2Zmc2V0X2FkZHIobm9kZSkgKyB2bWFfb2Zmc2V0LAot
CQkJICAgIHZtYS0+c2l6ZSwKLQkJCSAgICAxKTsKKworCW11dGV4X2xvY2soJnZtYS0+b2JqLT5t
bW9fbG9jayk7CisJbGlzdF9mb3JfZWFjaF9lbnRyeShtbW8sICZ2bWEtPm9iai0+bW1hcF9vZmZz
ZXRzLCBvZmZzZXQpIHsKKwkJbm9kZSA9ICZtbW8tPnZtYV9ub2RlOworCQlpZiAoIWRybV9tbV9u
b2RlX2FsbG9jYXRlZCgmbm9kZS0+dm1fbm9kZSkgfHwKKwkJICAgIG1tby0+bW1hcF90eXBlICE9
IEk5MTVfTU1BUF9UWVBFX0dUVCkKKwkJCWNvbnRpbnVlOworCisJCXVubWFwX21hcHBpbmdfcmFu
Z2Uodm1hLT52bS0+aTkxNS0+ZHJtLmFub25faW5vZGUtPmlfbWFwcGluZywKKwkJCQkgICAgZHJt
X3ZtYV9ub2RlX29mZnNldF9hZGRyKG5vZGUpICsgdm1hX29mZnNldCwKKwkJCQkgICAgdm1hLT5z
aXplLAorCQkJCSAgICAxKTsKKwl9CisJbXV0ZXhfdW5sb2NrKCZ2bWEtPm9iai0+bW1vX2xvY2sp
OwogCiAJaTkxNV92bWFfdW5zZXRfdXNlcmZhdWx0KHZtYSk7CiAJaWYgKCEtLXZtYS0+b2JqLT51
c2VyZmF1bHRfY291bnQpCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
