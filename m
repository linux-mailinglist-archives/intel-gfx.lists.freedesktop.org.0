Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FDDCDDA8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 10:49:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A4CC6E4F1;
	Mon,  7 Oct 2019 08:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8BEB6E4F3
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 08:49:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 01:49:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,267,1566889200"; d="scan'208";a="199467432"
Received: from vanderss-mobl1.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.190])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Oct 2019 01:49:26 -0700
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 11:48:44 +0300
Message-Id: <20191007084845.1554-4-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007084845.1554-1-abdiel.janulgue@linux.intel.com>
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
 <20191007084845.1554-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915: cpu-map based dumb buffers
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

SWYgdGhlcmUgaXMgbm8gYXBlcnR1cmUgd2UgY2FuJ3QgdXNlIG1hcF9ndHQgdG8gbWFwIGR1bWIg
YnVmZmVycywgc28gd2UKbmVlZCBhIGNwdS1tYXAgYmFzZWQgcGF0aCB0byBkbyBpdC4gV2UgcHJl
ZmVyIG1hcF9ndHQgb24gcGxhdGZvcm1zIHRoYXQKZG8gaGF2ZSBhcGVydHVyZS4KClNpZ25lZC1v
ZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4K
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgpD
YzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCAxMyArKysrKysrKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDE2IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRl
eCBhZTFlNjg3NDA4ZGEuLmE5NjA0ZDBkYjYwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fbW1hbi5jCkBAIC01NjksNiArNTY5LDE5IEBAIHN0YXRpYyBpbnQgZ2VtX21tYXBf
b2Zmc2V0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCQkJCSAgICAgJmFy
Z3MtPm9mZnNldCk7CiB9CiAKK2ludAoraTkxNV9nZW1fbW1hcF9kdW1iKHN0cnVjdCBkcm1fZmls
ZSAqZmlsZSwKKwkJICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAorCQkgIHUzMiBoYW5kbGUsCisJ
CSAgdTY0ICpvZmZzZXQpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkZXYt
PmRldl9wcml2YXRlOworCWVudW0gaTkxNV9tbWFwX3R5cGUgbW1hcF90eXBlID0gSEFTX01BUFBB
QkxFX0FQRVJUVVJFKGk5MTUpID8KKwkJSTkxNV9NTUFQX1RZUEVfR1RUIDogSTkxNV9NTUFQX1RZ
UEVfT0ZGU0VUX1dDOworCisJcmV0dXJuIF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRhKGZp
bGUsIGhhbmRsZSwgbW1hcF90eXBlLCBvZmZzZXQpOworfQorCiAvKioKICAqIGk5MTVfZ2VtX21t
YXBfZ3R0X2lvY3RsIC0gcHJlcGFyZSBhbiBvYmplY3QgZm9yIEdUVCBtbWFwJ2luZwogICogQGRl
djogRFJNIGRldmljZQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggOTE4MmRhNTcxODJiLi4w
ZmJiZTAzYmVmYjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMjc0OCw2ICsyNzQ4LDcg
QEAgc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGRyaXZlciA9IHsKIAkuZ2V0X3NjYW5vdXRfcG9z
aXRpb24gPSBpOTE1X2dldF9jcnRjX3NjYW5vdXRwb3MsCiAKIAkuZHVtYl9jcmVhdGUgPSBpOTE1
X2dlbV9kdW1iX2NyZWF0ZSwKKwkuZHVtYl9tYXBfb2Zmc2V0ID0gaTkxNV9nZW1fbW1hcF9kdW1i
LAogCS5pb2N0bHMgPSBpOTE1X2lvY3RscywKIAkubnVtX2lvY3RscyA9IEFSUkFZX1NJWkUoaTkx
NV9pb2N0bHMpLAogCS5mb3BzID0gJmk5MTVfZHJpdmVyX2ZvcHMsCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAppbmRleCA2NTkzMTlmMDNmMTguLjQ3NDg3YmVhZjBlMyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCkBAIC0yMjc4LDYgKzIyNzgsOCBAQCBpOTE1X211dGV4X2xvY2tfaW50ZXJydXB0aWJs
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogaW50IGk5MTVfZ2VtX2R1bWJfY3JlYXRlKHN0cnVj
dCBkcm1fZmlsZSAqZmlsZV9wcml2LAogCQkJIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQkg
c3RydWN0IGRybV9tb2RlX2NyZWF0ZV9kdW1iICphcmdzKTsKK2ludCBpOTE1X2dlbV9tbWFwX2R1
bWIoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCisJ
CSAgICAgIHUzMiBoYW5kbGUsIHU2NCAqb2Zmc2V0KTsKIGludCBpOTE1X2dlbV9tbWFwX2d0dF92
ZXJzaW9uKHZvaWQpOwogCiBpbnQgX19tdXN0X2NoZWNrIGk5MTVfZ2VtX3NldF9nbG9iYWxfc2Vx
bm8oc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdTMyIHNlcW5vKTsKLS0gCjIuMjMuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
