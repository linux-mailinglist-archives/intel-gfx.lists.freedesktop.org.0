Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B338A3721
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 14:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7283A6E31E;
	Fri, 30 Aug 2019 12:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC1B6E31D
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 12:53:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 05:53:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="198029785"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2019 05:53:10 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 18:15:24 +0530
Message-Id: <20190830124533.26573-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190830124533.26573-1-animesh.manna@intel.com>
References: <20190830124533.26573-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 01/10] drm/i915/dsb: feature flag added for
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
bGFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwgMiArKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCB8IDEgKwogMiBmaWxlcyBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBkYjc0ODA4MzFl
NTIuLjgwNGJmZTdhZWMyYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xODU3LDYgKzE4
NTcsOCBAQCBzdGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpwZGV2X3RvX2k5
MTUoc3RydWN0IHBjaV9kZXYgKnBkZXYpCiAJKEJVSUxEX0JVR19PTl9aRVJPKCFfX2J1aWx0aW5f
Y29uc3RhbnRfcChuKSkgKyBcCiAJIElOVEVMX0lORk8oZGV2X3ByaXYpLT5nZW4gPT0gKG4pKQog
CisjZGVmaW5lIEhBU19EU0IoZGV2X3ByaXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxh
eS5oYXNfZHNiKQorCiAvKgogICogUmV0dXJuIHRydWUgaWYgcmV2aXNpb24gaXMgaW4gcmFuZ2Ug
W3NpbmNlLHVudGlsXSBpbmNsdXNpdmUuCiAgKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmgKaW5kZXggOTJlMGMyZTA5NTRjLi5lMjA2ZjI5OGY0OGUgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaApAQCAtMTM1LDYgKzEzNSw3IEBAIGVudW0g
aW50ZWxfcHBndHRfdHlwZSB7CiAJZnVuYyhoYXNfY3NyKTsgXAogCWZ1bmMoaGFzX2RkaSk7IFwK
IAlmdW5jKGhhc19kcF9tc3QpOyBcCisJZnVuYyhoYXNfZHNiKTsgXAogCWZ1bmMoaGFzX2ZiYyk7
IFwKIAlmdW5jKGhhc19nbWNoKTsgXAogCWZ1bmMoaGFzX2hvdHBsdWcpOyBcCi0tIAoyLjIyLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
