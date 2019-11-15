Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC7CFDC7C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 12:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCA36E4E8;
	Fri, 15 Nov 2019 11:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 701ED6E4BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 11:45:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 03:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="257738223"
Received: from thijsmet-mobl2.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.150])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Nov 2019 03:45:56 -0800
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 13:45:48 +0200
Message-Id: <20191115114549.23716-3-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191115114549.23716-1-abdiel.janulgue@linux.intel.com>
References: <20191115114549.23716-1-abdiel.janulgue@linux.intel.com>
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
bnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDE4ICsrKysrKysrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uaCB8ICAyICsr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgIHwgIDEgKwogMyBmaWxl
cyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9tbWFuLmMKaW5kZXggZDJlZDhhNDYzNjcyLi5jMTc1NmU0ZjQ2YjkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwpAQCAtNTQwLDYgKzU0MCwyNCBAQCBfX2Fz
c2lnbl9nZW1fb2JqZWN0X21tYXBfZGF0YShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJcmV0dXJu
IHJldDsKIH0KIAoraW50CitpOTE1X2dlbV9tbWFwX2R1bWIoc3RydWN0IGRybV9maWxlICpmaWxl
LAorCQkgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCisJCSAgdTMyIGhhbmRsZSwKKwkJICB1NjQg
Km9mZnNldCkKK3sKKwllbnVtIGk5MTVfbW1hcF90eXBlIG1tYXBfdHlwZTsKKworCWlmIChib290
X2NwdV9oYXMoWDg2X0ZFQVRVUkVfUEFUKSkKKwkJbW1hcF90eXBlID0gSTkxNV9NTUFQX1RZUEVf
V0M7CisJZWxzZSBpZiAoIWk5MTVfZ2d0dF9oYXNfYXBlcnR1cmUoJnRvX2k5MTUoZGV2KS0+Z2d0
dCkpCisJCXJldHVybiAtRU5PREVWOworCWVsc2UKKwkJbW1hcF90eXBlID0gSTkxNV9NTUFQX1RZ
UEVfR1RUOworCisJcmV0dXJuIF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRhKGZpbGUsIGhh
bmRsZSwgbW1hcF90eXBlLCBvZmZzZXQpOworfQorCiAvKioKICAqIGk5MTVfZ2VtX21tYXBfb2Zm
c2V0X2lvY3RsIC0gcHJlcGFyZSBhbiBvYmplY3QgZm9yIEdUVCBtbWFwJ2luZwogICogQGRldjog
RFJNIGRldmljZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X21tYW4uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmgKaW5kZXgg
NGQzYjQ5M2U4NTNhLi42ZTcwYjkxZGFiYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9tbWFuLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX21tYW4uaApAQCAtMjQsNiArMjQsOCBAQCB2b2lkIGk5MTVfbW1hcF9vZmZzZXRfZGVz
dHJveShzdHJ1Y3QgaTkxNV9tbWFwX29mZnNldCAqbW1vLCBzdHJ1Y3QgbXV0ZXggKm11dGV4KQog
dm9pZCBfX2k5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21tYXBfZ3R0KHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmopOwogdm9pZCBpOTE1X2dlbV9vYmplY3RfcmVsZWFzZV9tbWFwKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwogdm9pZCBpOTE1X2dlbV9vYmplY3RfcmVsZWFz
ZV9tbWFwX29mZnNldChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKK2ludCBpOTE1
X2dlbV9tbWFwX2R1bWIoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsIHN0cnVjdCBkcm1fZGV2
aWNlICpkZXYsCisJCSAgICAgIHUzMiBoYW5kbGUsIHU2NCAqb2Zmc2V0KTsKIGludCBpOTE1X2dl
bV9tbWFwX2d0dF92ZXJzaW9uKHZvaWQpOwogCiAjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CmluZGV4IGFjNmQ0NDcwY2U3NS4uZjdkYjBiYmJlMzAyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKQEAgLTI3NjcsNiArMjc2Nyw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBkcml2ZXIg
PSB7CiAJLmdldF9zY2Fub3V0X3Bvc2l0aW9uID0gaTkxNV9nZXRfY3J0Y19zY2Fub3V0cG9zLAog
CiAJLmR1bWJfY3JlYXRlID0gaTkxNV9nZW1fZHVtYl9jcmVhdGUsCisJLmR1bWJfbWFwX29mZnNl
dCA9IGk5MTVfZ2VtX21tYXBfZHVtYiwKIAkuaW9jdGxzID0gaTkxNV9pb2N0bHMsCiAJLm51bV9p
b2N0bHMgPSBBUlJBWV9TSVpFKGk5MTVfaW9jdGxzKSwKIAkuZm9wcyA9ICZpOTE1X2RyaXZlcl9m
b3BzLAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
