Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F8E10233E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 12:37:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FDC36E900;
	Tue, 19 Nov 2019 11:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 423076E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 11:37:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 03:37:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; d="scan'208";a="258700078"
Received: from alooi-mobl.gar.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.144])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Nov 2019 03:37:19 -0800
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 13:37:09 +0200
Message-Id: <20191119113710.1162-3-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191119113710.1162-1-abdiel.janulgue@linux.intel.com>
References: <20191119113710.1162-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJlZmVyIENQVSBXQyBtbWFwcyB2aWEgb3VyIG5ldyBtbWFwIG9mZnNldCBwbHVtYmluZyBvdGhl
cndpc2UgZmFsbC0KYmFjayB0byBHVFQgbW1hcHMgd2hlbiBodyBkb2Vzbid0IHN1cHBvcnQgUEFU
CgpTaWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5p
bnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkFja2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgMTggKysrKysrKysrKysrKysrKysr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5oIHwgIDIgKysKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgfCAgMSArCiAzIGZpbGVzIGNoYW5n
ZWQsIDIxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21t
YW4uYwppbmRleCBiYjA1YzUzYzAzYzguLjM5MTM2MzRhYjcxNyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCkBAIC01NDAsNiArNTQwLDI0IEBAIF9fYXNzaWduX2dl
bV9vYmplY3RfbW1hcF9kYXRhKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKIAlyZXR1cm4gcmV0Owog
fQogCitpbnQKK2k5MTVfZ2VtX21tYXBfZHVtYihzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCisJCSAg
c3RydWN0IGRybV9kZXZpY2UgKmRldiwKKwkJICB1MzIgaGFuZGxlLAorCQkgIHU2NCAqb2Zmc2V0
KQoreworCWVudW0gaTkxNV9tbWFwX3R5cGUgbW1hcF90eXBlOworCisJaWYgKGJvb3RfY3B1X2hh
cyhYODZfRkVBVFVSRV9QQVQpKQorCQltbWFwX3R5cGUgPSBJOTE1X01NQVBfVFlQRV9XQzsKKwll
bHNlIGlmICghaTkxNV9nZ3R0X2hhc19hcGVydHVyZSgmdG9faTkxNShkZXYpLT5nZ3R0KSkKKwkJ
cmV0dXJuIC1FTk9ERVY7CisJZWxzZQorCQltbWFwX3R5cGUgPSBJOTE1X01NQVBfVFlQRV9HVFQ7
CisKKwlyZXR1cm4gX19hc3NpZ25fZ2VtX29iamVjdF9tbWFwX2RhdGEoZmlsZSwgaGFuZGxlLCBt
bWFwX3R5cGUsIG9mZnNldCk7Cit9CisKIC8qKgogICogaTkxNV9nZW1fbW1hcF9vZmZzZXRfaW9j
dGwgLSBwcmVwYXJlIGFuIG9iamVjdCBmb3IgR1RUIG1tYXAnaW5nCiAgKiBAZGV2OiBEUk0gZGV2
aWNlCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uaAppbmRleCA0ZDNiNDkz
ZTg1M2EuLjZlNzBiOTFkYWJjNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX21tYW4uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5oCkBAIC0yNCw2ICsyNCw4IEBAIHZvaWQgaTkxNV9tbWFwX29mZnNldF9kZXN0cm95KHN0
cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICptbW8sIHN0cnVjdCBtdXRleCAqbXV0ZXgpCiB2b2lkIF9f
aTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbW1hcF9ndHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaik7CiB2b2lkIGk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21tYXAoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaik7CiB2b2lkIGk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21tYXBf
b2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOworaW50IGk5MTVfZ2VtX21t
YXBfZHVtYihzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwgc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKKwkJICAgICAgdTMyIGhhbmRsZSwgdTY0ICpvZmZzZXQpOwogaW50IGk5MTVfZ2VtX21tYXBf
Z3R0X3ZlcnNpb24odm9pZCk7CiAKICNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXgg
YWM2ZDQ0NzBjZTc1Li5mN2RiMGJiYmUzMDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAt
Mjc2Nyw2ICsyNzY3LDcgQEAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGRyaXZlciA9IHsKIAku
Z2V0X3NjYW5vdXRfcG9zaXRpb24gPSBpOTE1X2dldF9jcnRjX3NjYW5vdXRwb3MsCiAKIAkuZHVt
Yl9jcmVhdGUgPSBpOTE1X2dlbV9kdW1iX2NyZWF0ZSwKKwkuZHVtYl9tYXBfb2Zmc2V0ID0gaTkx
NV9nZW1fbW1hcF9kdW1iLAogCS5pb2N0bHMgPSBpOTE1X2lvY3RscywKIAkubnVtX2lvY3RscyA9
IEFSUkFZX1NJWkUoaTkxNV9pb2N0bHMpLAogCS5mb3BzID0gJmk5MTVfZHJpdmVyX2ZvcHMsCi0t
IAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
