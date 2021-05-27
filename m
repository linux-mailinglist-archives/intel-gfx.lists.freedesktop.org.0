Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAC73930A8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7156C6F3B3;
	Thu, 27 May 2021 14:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34C6D6F3B3;
 Thu, 27 May 2021 14:19:46 +0000 (UTC)
IronPort-SDR: QDufQpH8ot7oay176T8vHuH9w2Q5oe8YrAXpU2Y54yra4+FoG9XW55VMNkCVYO99mTMJApjY4I
 B2IcmrEvUmnA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202749609"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="202749609"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 07:19:44 -0700
IronPort-SDR: 9cJukFaMBKcAi67jtp/7G4AvLvUtXRLT58+DufG0abwDFXN4yHk/nSiuK/jwMXmS1AY40xBtdd
 jDrXNmOdik4Q==
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="547823262"
Received: from ibanaga-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 07:19:42 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 christian.koenig@amd.com
Date: Thu, 27 May 2021 16:19:23 +0200
Message-Id: <20210527141923.1962350-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH] drm/ttm: Fix swapping dereferences of freed
 memory
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

VGhlIHN3YXBwaW5nIGNvZGUgd2FzIGRlcmVmZXJlbmNlIGJvLT50dG0gcG9pbnRlcnMgd2l0aG91
dCBoYXZpbmcgdGhlCmRtYS1yZXN2IGxvY2sgaGVsZC4gQWxzbyBpdCBtaWdodCB0cnkgdG8gc3dh
cCBvdXQgdW5wb3B1bGF0ZWQgYm9zLgoKRml4IHRoaXMgYnkgbW92aW5nIHRoZSBiby0+dHRtIGRl
cmVmZXJlbmNlIHVudGlsIHdlIGhhdmUgdGhlIHJlc2VydmF0aW9uCmxvY2suIENoZWNrIHRoYXQg
dGhlIHR0bV90dCBpcyBwb3B1bGF0ZWQgYWZ0ZXIgdGhlIHN3YXBfbm90aWZ5IGNhbGxiYWNrLgoK
U2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgICAgIHwgMTYgKysr
KysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fZGV2aWNlLmMgfCAgOCArKyst
LS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvLmMgYi9kcml2ZXJzL2dwdS9k
cm0vdHRtL3R0bV9iby5jCmluZGV4IDlmNTM1MDZhODJmYy4uODYyMTNkMzc2NTdiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9iby5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX2JvLmMKQEAgLTExNjMsNiArMTE2MywxNiBAQCBpbnQgdHRtX2JvX3N3YXBvdXQoc3Ry
dWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywgc3RydWN0IHR0bV9vcGVyYXRpb25fY3R4ICpjdHgs
CiAJaWYgKCF0dG1fYm9fZXZpY3Rfc3dhcG91dF9hbGxvd2FibGUoYm8sIGN0eCwgJnBsYWNlLCAm
bG9ja2VkLCBOVUxMKSkKIAkJcmV0dXJuIC1FQlVTWTsKIAorCWRtYV9yZXN2X2Fzc2VydF9oZWxk
KGJvLT5iYXNlLnJlc3YpOworCisJaWYgKCFiby0+dHRtIHx8CisJICAgIGJvLT50dG0tPnBhZ2Vf
ZmxhZ3MgJiBUVE1fUEFHRV9GTEFHX1NHIHx8CisJICAgIGJvLT50dG0tPnBhZ2VfZmxhZ3MgJiBU
VE1fUEFHRV9GTEFHX1NXQVBQRUQpIHsKKwkJaWYgKGxvY2tlZCkKKwkJCWRtYV9yZXN2X3VubG9j
ayhiby0+YmFzZS5yZXN2KTsKKwkJcmV0dXJuIC1FQlVTWTsKKwl9CisKIAlpZiAoIXR0bV9ib19n
ZXRfdW5sZXNzX3plcm8oYm8pKSB7CiAJCWlmIChsb2NrZWQpCiAJCQlkbWFfcmVzdl91bmxvY2so
Ym8tPmJhc2UucmVzdik7CkBAIC0xMjE1LDcgKzEyMjUsOCBAQCBpbnQgdHRtX2JvX3N3YXBvdXQo
c3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibywgc3RydWN0IHR0bV9vcGVyYXRpb25fY3R4ICpj
dHgsCiAJaWYgKGJvLT5iZGV2LT5mdW5jcy0+c3dhcF9ub3RpZnkpCiAJCWJvLT5iZGV2LT5mdW5j
cy0+c3dhcF9ub3RpZnkoYm8pOwogCi0JcmV0ID0gdHRtX3R0X3N3YXBvdXQoYm8tPmJkZXYsIGJv
LT50dG0sIGdmcF9mbGFncyk7CisJaWYgKHR0bV90dF9pc19wb3B1bGF0ZWQoYm8tPnR0bSkpCisJ
CXJldCA9IHR0bV90dF9zd2Fwb3V0KGJvLT5iZGV2LCBiby0+dHRtLCBnZnBfZmxhZ3MpOwogb3V0
OgogCiAJLyoKQEAgLTEyMjUsNiArMTIzNiw5IEBAIGludCB0dG1fYm9fc3dhcG91dChzdHJ1Y3Qg
dHRtX2J1ZmZlcl9vYmplY3QgKmJvLCBzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggKmN0eCwKIAlp
ZiAobG9ja2VkKQogCQlkbWFfcmVzdl91bmxvY2soYm8tPmJhc2UucmVzdik7CiAJdHRtX2JvX3B1
dChibyk7CisKKwkvKiBEb24ndCBicmVhayBsb2NraW5nIHJ1bGVzLiAqLworCVdBUk5fT04ocmV0
ID09IC1FQlVTWSk7CiAJcmV0dXJuIHJldDsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3R0bS90dG1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9kZXZpY2UuYwpp
bmRleCA0NjA5NTNkY2FkMTEuLmVhYTc0ODdhZTQwNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3R0bS90dG1fZGV2aWNlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fZGV2aWNl
LmMKQEAgLTE0MywxNCArMTQzLDEyIEBAIGludCB0dG1fZGV2aWNlX3N3YXBvdXQoc3RydWN0IHR0
bV9kZXZpY2UgKmJkZXYsIHN0cnVjdCB0dG1fb3BlcmF0aW9uX2N0eCAqY3R4LAogCiAJCWZvciAo
aiA9IDA7IGogPCBUVE1fTUFYX0JPX1BSSU9SSVRZOyArK2opIHsKIAkJCWxpc3RfZm9yX2VhY2hf
ZW50cnkoYm8sICZtYW4tPmxydVtqXSwgbHJ1KSB7Ci0JCQkJdWludDMyX3QgbnVtX3BhZ2VzOwor
CQkJCXBnb2ZmX3QgbnVtX3BhZ2VzOwogCi0JCQkJaWYgKCFiby0+dHRtIHx8Ci0JCQkJICAgIGJv
LT50dG0tPnBhZ2VfZmxhZ3MgJiBUVE1fUEFHRV9GTEFHX1NHIHx8Ci0JCQkJICAgIGJvLT50dG0t
PnBhZ2VfZmxhZ3MgJiBUVE1fUEFHRV9GTEFHX1NXQVBQRUQpCisJCQkJaWYgKCFSRUFEX09OQ0Uo
Ym8tPnR0bSkpCiAJCQkJCWNvbnRpbnVlOwogCi0JCQkJbnVtX3BhZ2VzID0gYm8tPnR0bS0+bnVt
X3BhZ2VzOworCQkJCW51bV9wYWdlcyA9IGJvLT5iYXNlLnNpemUgPj4gUEFHRV9TSElGVDsKIAkJ
CQlyZXQgPSB0dG1fYm9fc3dhcG91dChibywgY3R4LCBnZnBfZmxhZ3MpOwogCQkJCS8qIHR0bV9i
b19zd2Fwb3V0IGhhcyBkcm9wcGVkIHRoZSBscnVfbG9jayAqLwogCQkJCWlmICghcmV0KQotLSAK
Mi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
