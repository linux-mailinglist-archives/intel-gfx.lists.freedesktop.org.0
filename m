Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 096E22CF878
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:09:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FA506E237;
	Sat,  5 Dec 2020 01:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07056E222
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 01:09:01 +0000 (UTC)
IronPort-SDR: fS+21cKqvRGVvR9GwIM20KIZoGh/75nFLzDu7tcYj1y4PqreWxTwZ25FyzG6u3bBrJ7/t4nDR5
 EeyH/Djz1XNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="173570999"
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="173570999"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:09:01 -0800
IronPort-SDR: BqzIITS0wJ5Bl2obonsVJY9nhl8extNeBJPggufLpzV3J3E2hAtVgjHgg/O/lfgch5Mejisaps
 2JiR6spMOKiw==
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="369062904"
Received: from msdesadl-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.12.22])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:09:00 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 17:08:29 -0800
Message-Id: <20201205010844.361880-8-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201205010844.361880-1-aditya.swarup@intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/22] drm/i915/adl_s: Add PHYs for Alderlake S
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQWxkZXJs
YWtlLVMgaGFzIDUgY29tYm8gcGh5cywgYWRkIHJlZyBkZWZpbml0aW9ucyBmb3IKY29tYm8gcGh5
cyBhbmQgdXBkYXRlIHRoZSBwb3J0IHRvIHBoeSBoZWxwZXIgZm9yIEFETC1TLgoKdjI6Ci0gQ2hh
bmdlIElTX0dFTigpID49IDEyIHRvIElTX1RJR0VSTEFLRSgpIGluIGludGVsX3BoeV9pc190Yygp
CmFuZCByZXR1cm4gZmFsc2UgZm9yIHBsYXRmb3JtcyBSS0wsREcxIGFuZCBBRExTLihtZHJvcGVy
KQoKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRl
bC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysrKysrLS0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgfCAgNSArKysr
LQogMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggOTE4N2Ey
MGE4YWNhLi4yZDFjNWJmZTQwMzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCkBAIC03Mzk3LDYgKzczOTcsOCBAQCBib29sIGludGVsX3BoeV9pc19j
b21ibyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGh5IHBoeSkKIHsK
IAlpZiAocGh5ID09IFBIWV9OT05FKQogCQlyZXR1cm4gZmFsc2U7CisJZWxzZSBpZiAoSVNfQUxE
RVJMQUtFX1MoZGV2X3ByaXYpKQorCQlyZXR1cm4gcGh5IDw9IFBIWV9FOwogCWVsc2UgaWYgKElT
X0RHMShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpCiAJCXJldHVybiBwaHkg
PD0gUEhZX0Q7CiAJZWxzZSBpZiAoSVNfSlNMX0VITChkZXZfcHJpdikpCkBAIC03NDA5LDkgKzc0
MTEsNyBAQCBib29sIGludGVsX3BoeV9pc19jb21ibyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIGVudW0gcGh5IHBoeSkKIAogYm9vbCBpbnRlbF9waHlfaXNfdGMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBoeSBwaHkpCiB7Ci0JaWYgKElTX0RHMShk
ZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpCi0JCXJldHVybiBmYWxzZTsKLQll
bHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCWlmIChJU19USUdFUkxBS0UoZGV2
X3ByaXYpKQogCQlyZXR1cm4gcGh5ID49IFBIWV9EICYmIHBoeSA8PSBQSFlfSTsKIAllbHNlIGlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExICYmICFJU19KU0xfRUhMKGRldl9wcml2KSkKIAkJ
cmV0dXJuIHBoeSA+PSBQSFlfQyAmJiBwaHkgPD0gUEhZX0Y7CkBAIC03NDIxLDcgKzc0MjEsOSBA
QCBib29sIGludGVsX3BoeV9pc190YyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
IGVudW0gcGh5IHBoeSkKIAogZW51bSBwaHkgaW50ZWxfcG9ydF90b19waHkoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0KQogewotCWlmICgoSVNfREcxKGk5MTUp
IHx8IElTX1JPQ0tFVExBS0UoaTkxNSkpICYmIHBvcnQgPj0gUE9SVF9UQzEpCisJaWYgKElTX0FM
REVSTEFLRV9TKGk5MTUpICYmIHBvcnQgPj0gUE9SVF9UQzEpCisJCXJldHVybiBQSFlfQiArIHBv
cnQgLSBQT1JUX1RDMTsKKwllbHNlIGlmICgoSVNfREcxKGk5MTUpIHx8IElTX1JPQ0tFVExBS0Uo
aTkxNSkpICYmIHBvcnQgPj0gUE9SVF9UQzEpCiAJCXJldHVybiBQSFlfQyArIHBvcnQgLSBQT1JU
X1RDMTsKIAllbHNlIGlmIChJU19KU0xfRUhMKGk5MTUpICYmIHBvcnQgPT0gUE9SVF9EKQogCQly
ZXR1cm4gUEhZX0E7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBjZGM2N2Y1ODNhOWMuLjYw
YTBkNGMzNWNhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0xODc0LDEwICsxODc0LDEz
IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVn
KQogI2RlZmluZSBfSUNMX0NPTUJPUEhZX0IJCQkweDZDMDAwCiAjZGVmaW5lIF9FSExfQ09NQk9Q
SFlfQwkJCTB4MTYwMDAwCiAjZGVmaW5lIF9SS0xfQ09NQk9QSFlfRAkJCTB4MTYxMDAwCisjZGVm
aW5lIF9BRExfQ09NQk9QSFlfRQkJCTB4MTZCMDAwCisKICNkZWZpbmUgX0lDTF9DT01CT1BIWShw
aHkpCQlfUElDSyhwaHksIF9JQ0xfQ09NQk9QSFlfQSwgXAogCQkJCQkgICAgICBfSUNMX0NPTUJP
UEhZX0IsIFwKIAkJCQkJICAgICAgX0VITF9DT01CT1BIWV9DLCBcCi0JCQkJCSAgICAgIF9SS0xf
Q09NQk9QSFlfRCkKKwkJCQkJICAgICAgX1JLTF9DT01CT1BIWV9ELCBcCisJCQkJCSAgICAgIF9B
RExfQ09NQk9QSFlfRSkKIAogLyogQ05ML0lDTCBQb3J0IENMX0RXIHJlZ2lzdGVycyAqLwogI2Rl
ZmluZSBfSUNMX1BPUlRfQ0xfRFcoZHcsIHBoeSkJKF9JQ0xfQ09NQk9QSFkocGh5KSArIFwKLS0g
CjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
