Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5756F8FD21
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60ABE6EB2F;
	Fri, 16 Aug 2019 08:07:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4BE66EB2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:07:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:06:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851618"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:06:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:55 -0700
Message-Id: <20190816080503.28594-32-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/39] drm/i915/tgl: Updated Private PAT
 programming
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkdlbjEyIHJl
bW92ZXMgdGhlIHRhcmdldC1jYWNoZSBhbmQgYWdlIGZpZWxkcyBmcm9tIHRoZSBwcml2YXRlIFBB
VApiZWNhdXNlIE1PQ1Mgbm93IGhhdmUgdGhlIGNhcGFiaWxpdHkgdG8gc2V0IHRoZXNlIGl0c2Vs
Zi4gT25seSBtZW1vcnktdHlwZQpmaWVsZCBzaG91bGQgYmUgcHJvZ3JhbW1lZCBpbiB0aGUgcHBh
dCwgdGhlIHJlbWluZGVkIGJpdHMgYXJlIHJlc2VydmVkLgoKU2luY2Ugbm93IHRoZXJlIGFyZSBv
bmx5IDQgcG9zc2libGUgY29tYmluYXRpb25zLCB3ZSBjb3VsZCBzZXQgb25seSA0ClBQQVQgYW5k
IGxlYXZlIHRoZSByZW1pbmRlZCA0IGFzIFVDLCBidXQgSSBsZWZ0IHRoZW0gYXMgV0IgYXMgd2Ug
dXNlZAp0byBoYXZlIGJlZm9yZS4KCkFsc28gdGhlc2UgcmVnaXN0ZXJzIGhhdmUgYmVlbiByZWxv
Y2F0ZWQgdG8gdGhlIDB4NDgwMC0weDQ4MWMgcmFuZ2UuCgpIU0RFUzogMTQwNjQwMjY2MQpCU3Bl
YzogMzE2NTQKQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJy
eUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwg
MTcgKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAg
IHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCA3NmFmNDBkMjNmMDkuLmI5ZTI5
YWZjNTg3ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI4NjYsNiArMjg2
NiwxOSBAQCBzdGF0aWMgaW50IGdndHRfcHJvYmVfY29tbW9uKHN0cnVjdCBpOTE1X2dndHQgKmdn
dHQsIHU2NCBzaXplKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZCB0Z2xfc2V0dXBfcHJp
dmF0ZV9wcGF0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKK3sKKwkvKiBUR0wg
ZG9lc24ndCBzdXBwb3J0IExMQyBvciBBR0Ugc2V0dGluZ3MgKi8KKwlJOTE1X1dSSVRFKEdFTjEy
X1BBVF9JTkRFWCgwKSwgR0VOOF9QUEFUX1dCKTsKKwlJOTE1X1dSSVRFKEdFTjEyX1BBVF9JTkRF
WCgxKSwgR0VOOF9QUEFUX1dDKTsKKwlJOTE1X1dSSVRFKEdFTjEyX1BBVF9JTkRFWCgyKSwgR0VO
OF9QUEFUX1dUKTsKKwlJOTE1X1dSSVRFKEdFTjEyX1BBVF9JTkRFWCgzKSwgR0VOOF9QUEFUX1VD
KTsKKwlJOTE1X1dSSVRFKEdFTjEyX1BBVF9JTkRFWCg0KSwgR0VOOF9QUEFUX1dCKTsKKwlJOTE1
X1dSSVRFKEdFTjEyX1BBVF9JTkRFWCg1KSwgR0VOOF9QUEFUX1dCKTsKKwlJOTE1X1dSSVRFKEdF
TjEyX1BBVF9JTkRFWCg2KSwgR0VOOF9QUEFUX1dCKTsKKwlJOTE1X1dSSVRFKEdFTjEyX1BBVF9J
TkRFWCg3KSwgR0VOOF9QUEFUX1dCKTsKK30KKwogc3RhdGljIHZvaWQgY25sX3NldHVwX3ByaXZh
dGVfcHBhdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJSTkxNV9XUklU
RShHRU4xMF9QQVRfSU5ERVgoMCksIEdFTjhfUFBBVF9XQiB8IEdFTjhfUFBBVF9MTEMpOwpAQCAt
Mjk0Niw3ICsyOTU5LDkgQEAgc3RhdGljIHZvaWQgc2V0dXBfcHJpdmF0ZV9wYXQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCUdFTV9CVUdfT04oSU5URUxfR0VOKGRldl9w
cml2KSA8IDgpOwogCi0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTApCisJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTIpCisJCXRnbF9zZXR1cF9wcml2YXRlX3BwYXQoZGV2X3ByaXYp
OworCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTApCiAJCWNubF9zZXR1cF9wcml2
YXRlX3BwYXQoZGV2X3ByaXYpOwogCWVsc2UgaWYgKElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpIHx8
IElTX0dFTjlfTFAoZGV2X3ByaXYpKQogCQljaHZfc2V0dXBfcHJpdmF0ZV9wcGF0KGRldl9wcml2
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGVjYTgyOTVhYmE5ZS4uMzRkODNlM2E1MWE3
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTI1MDEsNiArMjUwMSw3IEBAIGVudW0gaTkx
NV9wb3dlcl93ZWxsX2lkIHsKICNkZWZpbmUgR0VOOF9QUklWQVRFX1BBVF9MTwlfTU1JTygweDQw
ZTApCiAjZGVmaW5lIEdFTjhfUFJJVkFURV9QQVRfSEkJX01NSU8oMHg0MGUwICsgNCkKICNkZWZp
bmUgR0VOMTBfUEFUX0lOREVYKGluZGV4KQlfTU1JTygweDQwZTAgKyAoaW5kZXgpICogNCkKKyNk
ZWZpbmUgR0VOMTJfUEFUX0lOREVYKGluZGV4KQlfTU1JTygweDQ4MDAgKyAoaW5kZXgpICogNCkK
ICNkZWZpbmUgQlNEX0hXU19QR0FfR0VONwlfTU1JTygweDA0MTgwKQogI2RlZmluZSBCTFRfSFdT
X1BHQV9HRU43CV9NTUlPKDB4MDQyODApCiAjZGVmaW5lIFZFQk9YX0hXU19QR0FfR0VONwlfTU1J
TygweDA0MzgwKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
