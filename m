Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9D8FCE78
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 20:09:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2053B6E3E5;
	Thu, 14 Nov 2019 19:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A509C6E3E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 19:09:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 11:09:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="203152991"
Received: from thijsmet-mobl2.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.150])
 by fmsmga008.fm.intel.com with ESMTP; 14 Nov 2019 11:09:19 -0800
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 21:09:09 +0200
Message-Id: <20191114190910.20380-3-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114190910.20380-1-abdiel.janulgue@linux.intel.com>
References: <20191114190910.20380-1-abdiel.janulgue@linux.intel.com>
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
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDEzICsrKysrKysrKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgfCAgMSArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgIDIgKysKIDMgZmlsZXMgY2hh
bmdlZCwgMTYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jCmluZGV4IDVjMTczYzI5YjNkMi4uZDYyNWYwZjVkMzk1IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKQEAgLTU2Nyw2ICs1NjcsMTkgQEAgc3RhdGljIGlu
dCBnZW1fbW1hcF9vZmZzZXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAkJ
CQkJICAgICAmYXJncy0+b2Zmc2V0KTsKIH0KIAoraW50CitpOTE1X2dlbV9tbWFwX2R1bWIoc3Ry
dWN0IGRybV9maWxlICpmaWxlLAorCQkgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCisJCSAgdTMy
IGhhbmRsZSwKKwkJICB1NjQgKm9mZnNldCkKK3sKKwllbnVtIGk5MTVfbW1hcF90eXBlIG1tYXBf
dHlwZSA9IGJvb3RfY3B1X2hhcyhYODZfRkVBVFVSRV9QQVQpID8KKwkJSTkxNV9NTUFQX1RZUEVf
V0MgOiBJOTE1X01NQVBfVFlQRV9HVFQ7CisKKwlyZXR1cm4gX19hc3NpZ25fZ2VtX29iamVjdF9t
bWFwX2RhdGEoZmlsZSwgaGFuZGxlLCBtbWFwX3R5cGUsCisJCQkJCSAgICAgb2Zmc2V0KTsKK30K
KwogLyoqCiAgKiBpOTE1X2dlbV9tbWFwX2d0dF9pb2N0bCAtIHByZXBhcmUgYW4gb2JqZWN0IGZv
ciBHVFQgbW1hcCdpbmcKICAqIEBkZXY6IERSTSBkZXZpY2UKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
CmluZGV4IDVmZTA3MTY0MDg5My4uMDIxNDYwYzc4YWU3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKQEAgLTI3NjYsNiArMjc2Niw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBkcml2ZXIg
PSB7CiAJLmdldF9zY2Fub3V0X3Bvc2l0aW9uID0gaTkxNV9nZXRfY3J0Y19zY2Fub3V0cG9zLAog
CiAJLmR1bWJfY3JlYXRlID0gaTkxNV9nZW1fZHVtYl9jcmVhdGUsCisJLmR1bWJfbWFwX29mZnNl
dCA9IGk5MTVfZ2VtX21tYXBfZHVtYiwKIAkuaW9jdGxzID0gaTkxNV9pb2N0bHMsCiAJLm51bV9p
b2N0bHMgPSBBUlJBWV9TSVpFKGk5MTVfaW9jdGxzKSwKIAkuZm9wcyA9ICZpOTE1X2RyaXZlcl9m
b3BzLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggOTY4YzUzYmZiNTdiLi40NjMzYmZlNjFl
MTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTg2MSw2ICsxODYxLDggQEAgaTkxNV9t
dXRleF9sb2NrX2ludGVycnVwdGlibGUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIGludCBpOTE1
X2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwKIAkJCSBzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LAogCQkJIHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVtYiAqYXJncyk7
CitpbnQgaTkxNV9nZW1fbW1hcF9kdW1iKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2LCBzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LAorCQkgICAgICB1MzIgaGFuZGxlLCB1NjQgKm9mZnNldCk7CiBp
bnQgaTkxNV9nZW1fbW1hcF9ndHRfdmVyc2lvbih2b2lkKTsKIAogaW50IF9fbXVzdF9jaGVjayBp
OTE1X2dlbV9zZXRfZ2xvYmFsX3NlcW5vKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHUzMiBzZXFu
byk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
