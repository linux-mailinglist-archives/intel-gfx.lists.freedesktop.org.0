Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B9E9AACA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5DEB6EC32;
	Fri, 23 Aug 2019 08:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 606A76EC2D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702000"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:34 -0700
Message-Id: <20190823082055.5992-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 02/23] drm/i915/tgl: Enable VD HCP/MFX
 sub-pipe power gating
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
MjA5OTc3ODI3ClNpZ25lZC1vZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBUb255IFllIDx0b255LnllQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgIDQgKysrKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYyB8IDE4ICsrKysrKysrKysrKysrKysrLQogMiBmaWxlcyBjaGFuZ2Vk
LCAyMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
aW5kZXggYTA5MmIzNGMyNjlkLi4wMmUxZWYxMGM0N2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aApAQCAtODYxNSw2ICs4NjE1LDEwIEBAIGVudW0gewogI2RlZmluZSAgIEdFTjlfUFdSR1RfTUVE
SUFfU1RBVFVTX01BU0sJCSgxIDw8IDApCiAjZGVmaW5lICAgR0VOOV9QV1JHVF9SRU5ERVJfU1RB
VFVTX01BU0sJCSgxIDw8IDEpCiAKKyNkZWZpbmUgUE9XRVJHQVRFX0VOQUJMRQkJCV9NTUlPKDB4
YTIxMCkKKyNkZWZpbmUgICAgVkROX0hDUF9QT1dFUkdBVEVfRU5BQkxFKG4pCQlCSVQoKChuKSAq
IDIpICsgMykKKyNkZWZpbmUgICAgVkROX01GWF9QT1dFUkdBVEVfRU5BQkxFKG4pCQlCSVQoKChu
KSAqIDIpICsgNCkKKwogI2RlZmluZSAgR1RGSUZPREJHCQkJCV9NTUlPKDB4MTIwMDAwKQogI2Rl
ZmluZSAgICBHVF9GSUZPX1NCREVESUNBVEVfRlJFRV9FTlRSWV9DSFYJKDB4MWYgPDwgMjApCiAj
ZGVmaW5lICAgIEdUX0ZJRk9fRlJFRV9FTlRSSUVTX0NIVgkJKDB4N2YgPDwgMTMpCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwppbmRleCA3NWVlMDI3YWJiODAuLmQzZWExOTNjZDA5MyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCkBAIC05MDc4LDYgKzkwNzgsMjIgQEAgc3RhdGljIHZvaWQgaWNsX2lu
aXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJICAg
X01BU0tFRF9CSVRfRU5BQkxFKEdFTjExX0VOQUJMRV8zMl9QTEFORV9NT0RFKSk7CiB9CiAKK3N0
YXRpYyB2b2lkIHRnbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCit7CisJdTMyIHZkX3BnX2VuYWJsZSA9IDA7CisJdW5zaWduZWQgaW50IGk7CisK
KwkvKiBUaGlzIGlzIG5vdCBhIFdBLiBFbmFibGUgVkQgSENQICYgTUZYX0VOQyBwb3dlcmdhdGUg
Ki8KKwlmb3IgKGkgPSAwOyBpIDwgSTkxNV9NQVhfVkNTOyBpKyspIHsKKwkJaWYgKEhBU19FTkdJ
TkUoZGV2X3ByaXYsIF9WQ1MoaSkpKQorCQkJdmRfcGdfZW5hYmxlIHw9IFZETl9IQ1BfUE9XRVJH
QVRFX0VOQUJMRShpKSB8CisJCQkJCVZETl9NRlhfUE9XRVJHQVRFX0VOQUJMRShpKTsKKwl9CisK
KwlJOTE1X1dSSVRFKFBPV0VSR0FURV9FTkFCTEUsCisJCSAgIEk5MTVfUkVBRChQT1dFUkdBVEVf
RU5BQkxFKSB8IHZkX3BnX2VuYWJsZSk7Cit9CisKIHN0YXRpYyB2b2lkIGNucF9pbml0X2Nsb2Nr
X2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CiAJaWYgKCFIQVNf
UENIX0NOUChkZXZfcHJpdikpCkBAIC05NTk4LDcgKzk2MTQsNyBAQCBzdGF0aWMgdm9pZCBub3Bf
aW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogdm9p
ZCBpbnRlbF9pbml0X2Nsb2NrX2dhdGluZ19ob29rcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCiB7CiAJaWYgKElTX0dFTihkZXZfcHJpdiwgMTIpKQotCQlkZXZfcHJpdi0+ZGlz
cGxheS5pbml0X2Nsb2NrX2dhdGluZyA9IG5vcF9pbml0X2Nsb2NrX2dhdGluZzsKKwkJZGV2X3By
aXYtPmRpc3BsYXkuaW5pdF9jbG9ja19nYXRpbmcgPSB0Z2xfaW5pdF9jbG9ja19nYXRpbmc7CiAJ
ZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpCiAJCWRldl9wcml2LT5kaXNwbGF5LmluaXRf
Y2xvY2tfZ2F0aW5nID0gaWNsX2luaXRfY2xvY2tfZ2F0aW5nOwogCWVsc2UgaWYgKElTX0NBTk5P
TkxBS0UoZGV2X3ByaXYpKQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
