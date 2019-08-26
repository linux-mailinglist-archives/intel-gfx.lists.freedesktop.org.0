Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 675809CF81
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 14:21:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA6A6E121;
	Mon, 26 Aug 2019 12:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DEB56E121
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 12:21:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 05:21:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="182426420"
Received: from ndobler-mobl.amr.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.248])
 by orsmga003.jf.intel.com with ESMTP; 26 Aug 2019 05:21:15 -0700
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 15:21:02 +0300
Message-Id: <20190826122102.32400-5-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
References: <20190826122102.32400-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: cpu-map based dumb buffers
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
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fbW1hbi5jCmluZGV4IGQwYTY1M2E5YTRjYy4uZmYzNWIwNTE3ZTU5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKQEAgLTYxNSw2ICs2MTUsMTkgQEAgc3Rh
dGljIGludCBnZW1fbW1hcF9vZmZzZXQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0
YSwKIAkJCQkJICAgICAmYXJncy0+b2Zmc2V0KTsKIH0KIAoraW50CitpOTE1X2dlbV9tbWFwX2R1
bWIoc3RydWN0IGRybV9maWxlICpmaWxlLAorCQkgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCisJ
CSAgdTMyIGhhbmRsZSwKKwkJICB1NjQgKm9mZnNldCkKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSA9IGRldi0+ZGV2X3ByaXZhdGU7CisJZW51bSBpOTE1X21tYXBfdHlwZSBtbWFw
X3R5cGUgPSBIQVNfTUFQUEFCTEVfQVBFUlRVUkUoaTkxNSkgPworCQlJOTE1X01NQVBfVFlQRV9H
VFQgOiBJOTE1X01NQVBfVFlQRV9PRkZTRVRfV0M7CisKKwlyZXR1cm4gX19hc3NpZ25fZ2VtX29i
amVjdF9tbWFwX2RhdGEoZmlsZSwgaGFuZGxlLCBtbWFwX3R5cGUsIG9mZnNldCk7Cit9CisKIC8q
KgogICogaTkxNV9nZW1fbW1hcF9ndHRfaW9jdGwgLSBwcmVwYXJlIGFuIG9iamVjdCBmb3IgR1RU
IG1tYXAnaW5nCiAgKiBAZGV2OiBEUk0gZGV2aWNlCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRl
eCA2OGVkNDQ5OWZhNTIuLjQwY2NhZGM5ZWYyOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBA
IC0yODI2LDcgKzI4MjYsNyBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgZHJpdmVyID0gewog
CS5nZXRfc2Nhbm91dF9wb3NpdGlvbiA9IGk5MTVfZ2V0X2NydGNfc2Nhbm91dHBvcywKIAogCS5k
dW1iX2NyZWF0ZSA9IGk5MTVfZ2VtX2R1bWJfY3JlYXRlLAotCS5kdW1iX21hcF9vZmZzZXQgPSBp
OTE1X2dlbV9tbWFwX2d0dCwKKwkuZHVtYl9tYXBfb2Zmc2V0ID0gaTkxNV9nZW1fbW1hcF9kdW1i
LAogCS5pb2N0bHMgPSBpOTE1X2lvY3RscywKIAkubnVtX2lvY3RscyA9IEFSUkFZX1NJWkUoaTkx
NV9pb2N0bHMpLAogCS5mb3BzID0gJmk5MTVfZHJpdmVyX2ZvcHMsCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAppbmRleCA0ZTFkMmUwZmNjODYuLmQzNTE0MTg0ZWZlZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCkBAIC0yMzAwLDcgKzIzMDAsNyBAQCBpOTE1X211dGV4X2xvY2tfaW50ZXJydXB0aWJs
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogaW50IGk5MTVfZ2VtX2R1bWJfY3JlYXRlKHN0cnVj
dCBkcm1fZmlsZSAqZmlsZV9wcml2LAogCQkJIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCQkg
c3RydWN0IGRybV9tb2RlX2NyZWF0ZV9kdW1iICphcmdzKTsKLWludCBpOTE1X2dlbV9tbWFwX2d0
dChzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwgc3RydWN0IGRybV9kZXZpY2UgKmRldiwKK2lu
dCBpOTE1X2dlbV9tbWFwX2R1bWIoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsIHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsCiAJCSAgICAgIHUzMiBoYW5kbGUsIHU2NCAqb2Zmc2V0KTsKIGludCBp
OTE1X2dlbV9tbWFwX2d0dF92ZXJzaW9uKHZvaWQpOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
