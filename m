Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEC68FD08
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:06:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5456EB25;
	Fri, 16 Aug 2019 08:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B5E56EB1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:05:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:05:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851535"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:05:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:44 -0700
Message-Id: <20190816080503.28594-21-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/39] drm/i915/tgl: Enable VD HCP/MFX sub-pipe
 power gating
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

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkhDUC9NRlgg
cG93ZXIgZ2F0aW5nIGlzIGRpc2FibGVkIGJ5IGRlZmF1bHQsIHR1cm4gaXQgb24gZm9yIHRoZSB2
ZCB1bml0cwphdmFpbGFibGUuIFVzZXIgc3BhY2Ugd2lsbCBhbHNvIGlzc3VlIGEgTUlfRk9SQ0Vf
V0FLRVVQIHByb3Blcmx5IHRvCndha2UgdXAgcHJvcGVyIHN1YndlbGwuCgpEdXJpbmcgZHJpdmVy
IGxvYWQsIGluaXRfY2xvY2tfZ2F0aW5nIGhhcHBlbnMgYWZ0ZXIgZGV2aWNlX2luZm9faW5pdF9t
bWlvCnJlYWQgdGhlIHZkYm94IGRpc2FibGUgZnVzZSByZWdpc3Rlciwgc28gb25seSBwcmVzZW50
IHZkIHVuaXRzIHdpbGwgaGF2ZQp0aGVzZSBlbmFibGVkLgoKQlNwZWM6IDE0MjE0CkhTREVTOiAx
MjA5OTc3ODI3CkNjOiBUb255IFllIDx0b255LnllQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
TWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8ICA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMgfCAxNyArKysrKysrKysrKysrKysrLQogMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMTBl
NmM0N2M0MTQ5Li5hNjRiMWM0Y2Q3YmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtODY4
Miw2ICs4NjgyLDEwIEBAIGVudW0gewogI2RlZmluZSAgIEdFTjlfUFdSR1RfTUVESUFfU1RBVFVT
X01BU0sJCSgxIDw8IDApCiAjZGVmaW5lICAgR0VOOV9QV1JHVF9SRU5ERVJfU1RBVFVTX01BU0sJ
CSgxIDw8IDEpCiAKKyNkZWZpbmUgUE9XRVJHQVRFX0VOQUJMRQkJCV9NTUlPKDB4YTIxMCkKKyNk
ZWZpbmUgICAgVkROX0hDUF9QT1dFUkdBVEVfRU5BQkxFKG4pCQlCSVQoKChuKSAqIDIpICsgMykK
KyNkZWZpbmUgICAgVkROX01GWF9QT1dFUkdBVEVfRU5BQkxFKG4pCQlCSVQoKChuKSAqIDIpICsg
NCkKKwogI2RlZmluZSAgR1RGSUZPREJHCQkJCV9NTUlPKDB4MTIwMDAwKQogI2RlZmluZSAgICBH
VF9GSUZPX1NCREVESUNBVEVfRlJFRV9FTlRSWV9DSFYJKDB4MWYgPDwgMjApCiAjZGVmaW5lICAg
IEdUX0ZJRk9fRlJFRV9FTlRSSUVTX0NIVgkJKDB4N2YgPDwgMTMpCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYwppbmRleCA3NWVlMDI3YWJiODAuLjYwNGM1Mzc5MzcyNiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jCkBAIC05MDc4LDYgKzkwNzgsMjEgQEAgc3RhdGljIHZvaWQgaWNsX2luaXRfY2xvY2tf
Z2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJICAgX01BU0tFRF9C
SVRfRU5BQkxFKEdFTjExX0VOQUJMRV8zMl9QTEFORV9NT0RFKSk7CiB9CiAKK3N0YXRpYyB2b2lk
IHRnbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cit7CisJdTMyIHZkX3BnX2VuYWJsZSA9IDA7CisJdW5zaWduZWQgaW50IGk7CisKKwkvKiBUaGlz
IGlzIG5vdCBhIFdBLiBFbmFibGUgVkQgSENQICYgTUZYX0VOQyBwb3dlcmdhdGUgKi8KKwlmb3Ig
KGkgPSAwOyBpIDwgSTkxNV9NQVhfVkNTOyBpKyspIHsKKwkJaWYgKEhBU19FTkdJTkUoZGV2X3By
aXYsIF9WQ1MoaSkpKQorCQkJdmRfcGdfZW5hYmxlIHw9IFZETl9IQ1BfUE9XRVJHQVRFX0VOQUJM
RShpKSB8CisJCQkJCVZETl9NRlhfUE9XRVJHQVRFX0VOQUJMRShpKTsKKwl9CisJSTkxNV9XUklU
RShQT1dFUkdBVEVfRU5BQkxFLAorCQkgICBJOTE1X1JFQUQoUE9XRVJHQVRFX0VOQUJMRSkgfCB2
ZF9wZ19lbmFibGUpOworfQorCiBzdGF0aWMgdm9pZCBjbnBfaW5pdF9jbG9ja19nYXRpbmcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCWlmICghSEFTX1BDSF9DTlAoZGV2
X3ByaXYpKQpAQCAtOTU5OCw3ICs5NjEzLDcgQEAgc3RhdGljIHZvaWQgbm9wX2luaXRfY2xvY2tf
Z2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHZvaWQgaW50ZWxfaW5p
dF9jbG9ja19nYXRpbmdfaG9va3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
ewogCWlmIChJU19HRU4oZGV2X3ByaXYsIDEyKSkKLQkJZGV2X3ByaXYtPmRpc3BsYXkuaW5pdF9j
bG9ja19nYXRpbmcgPSBub3BfaW5pdF9jbG9ja19nYXRpbmc7CisJCWRldl9wcml2LT5kaXNwbGF5
LmluaXRfY2xvY2tfZ2F0aW5nID0gdGdsX2luaXRfY2xvY2tfZ2F0aW5nOwogCWVsc2UgaWYgKElT
X0dFTihkZXZfcHJpdiwgMTEpKQogCQlkZXZfcHJpdi0+ZGlzcGxheS5pbml0X2Nsb2NrX2dhdGlu
ZyA9IGljbF9pbml0X2Nsb2NrX2dhdGluZzsKIAllbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9w
cml2KSkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
