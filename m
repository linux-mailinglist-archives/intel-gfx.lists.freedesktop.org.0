Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC4DB5E95
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 10:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06AF36EE37;
	Wed, 18 Sep 2019 08:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B60BC6EE37
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 08:05:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 01:05:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="362110393"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga005.jf.intel.com with ESMTP; 18 Sep 2019 01:05:42 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Sep 2019 13:27:36 +0530
Message-Id: <20190918075745.17076-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190918075745.17076-1-animesh.manna@intel.com>
References: <20190918075745.17076-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 01/10] drm/i915/dsb: feature flag added for
 display state buffer.
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

RGlzcGxheSBTdGF0ZSBCdWZmZXIoRFNCKSBpcyBhIG5ldyBoYXJkd2FyZSBjYXBhYmlsaXR5LCBp
bnRyb2R1Y2VkCmluIEdFTjEyIGRpc3BsYXkuIERTQiBhbGxvd3MgYSBkcml2ZXIgdG8gYmF0Y2gt
cHJvZ3JhbSBkaXNwbGF5IEhXCnJlZ2lzdGVycy4KCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpD
YzogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgMiArKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCA0ZmFlYzJmOTRlMTkuLjg0Yjli
MTM4ZDdhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xODYzLDYgKzE4NjMsOCBAQCBz
dGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpwZGV2X3RvX2k5MTUoc3RydWN0
IHBjaV9kZXYgKnBkZXYpCiAJKEJVSUxEX0JVR19PTl9aRVJPKCFfX2J1aWx0aW5fY29uc3RhbnRf
cChuKSkgKyBcCiAJIElOVEVMX0lORk8oZGV2X3ByaXYpLT5nZW4gPT0gKG4pKQogCisjZGVmaW5l
IEhBU19EU0IoZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfZHNi
KQorCiAvKgogICogUmV0dXJuIHRydWUgaWYgcmV2aXNpb24gaXMgaW4gcmFuZ2UgW3NpbmNlLHVu
dGlsXSBpbmNsdXNpdmUuCiAgKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZv
LmgKaW5kZXggZDRjMjg4ODYwYWVkLi4wY2RjMjQ2NTUzNGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGV2aWNlX2luZm8uaApAQCAtMTM1LDYgKzEzNSw3IEBAIGVudW0gaW50ZWxfcHBn
dHRfdHlwZSB7CiAJZnVuYyhoYXNfY3NyKTsgXAogCWZ1bmMoaGFzX2RkaSk7IFwKIAlmdW5jKGhh
c19kcF9tc3QpOyBcCisJZnVuYyhoYXNfZHNiKTsgXAogCWZ1bmMoaGFzX2ZiYyk7IFwKIAlmdW5j
KGhhc19nbWNoKTsgXAogCWZ1bmMoaGFzX2hvdHBsdWcpOyBcCi0tIAoyLjIyLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
