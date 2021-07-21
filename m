Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8B83D19BD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 00:31:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1360A6EB5D;
	Wed, 21 Jul 2021 22:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C476EB1E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 22:30:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211528000"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211528000"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="658464192"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 15:30:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 15:30:35 -0700
Message-Id: <20210721223043.834562-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210721223043.834562-1-matthew.d.roper@intel.com>
References: <20210721223043.834562-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 10/18] drm/i915/dg2: Add fake PCH
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2l0aCBERzEsIERHMiBoYXMgYW4gSUNMLXN0eWxlIHNvdXRoIGRpc3BsYXkgaW50ZXJmYWNl
IHByb3ZpZGVkIG9uCnRoZSBzYW1lIFBDSSBkZXZpY2UuICBBZGQgYSBmYWtlIFBDSCB0byBlbnN1
cmUgREcyIHRha2VzIHRoZSBhcHByb3ByaWF0ZQpjb2RlcGF0aHMgZm9yIHNvdXRoIGRpc3BsYXkg
aGFuZGxpbmcuCgpCc3BlYzogNTQ4NzEsIDUwMDYyLCA0OTk2MSwgNTM2NzMKQ2M6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dh
cnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfaXJxLmMgIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMg
fCAzICsrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmggfCAyICsrCiAzIGZpbGVz
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCmluZGV4IDYxZGNlYjJhMTdjMS4uZTIxNzFiZDI4MjBlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMKQEAgLTIwNyw3ICsyMDcsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9ocGRfaW5pdF9w
aW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkgICAgKCFIQVNfUENIX1NQ
TElUKGRldl9wcml2KSB8fCBIQVNfUENIX05PUChkZXZfcHJpdikpKQogCQlyZXR1cm47CiAKLQlp
ZiAoSEFTX1BDSF9ERzEoZGV2X3ByaXYpKQorCWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikg
Pj0gUENIX0RHMSkKIAkJaHBkLT5wY2hfaHBkID0gaHBkX3NkZV9kZzE7CiAJZWxzZSBpZiAoSU5U
RUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9JQ1ApCiAJCWhwZC0+cGNoX2hwZCA9IGhwZF9p
Y3A7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCmluZGV4IDRlOTJhZTE5MTg5ZS4uY2M0NDE2NGUy
NDJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwpAQCAtMjExLDYgKzIxMSw5IEBAIHZvaWQg
aW50ZWxfZGV0ZWN0X3BjaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYg
KElTX0RHMShkZXZfcHJpdikpIHsKIAkJZGV2X3ByaXYtPnBjaF90eXBlID0gUENIX0RHMTsKIAkJ
cmV0dXJuOworCX0gZWxzZSBpZiAoSVNfREcyKGRldl9wcml2KSkgeworCQlkZXZfcHJpdi0+cGNo
X3R5cGUgPSBQQ0hfREcyOworCQlyZXR1cm47CiAJfQogCiAJLyoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cGNoLmgKaW5kZXggZTJmM2YzMGM2NDQ1Li43YzBkODNkMjkyZGMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BjaC5oCkBAIC0zMCw2ICszMCw3IEBAIGVudW0gaW50ZWxfcGNoIHsKIAogCS8qIEZha2Ug
UENIcywgZnVuY3Rpb25hbGl0eSBoYW5kbGVkIG9uIHRoZSBzYW1lIFBDSSBkZXYgKi8KIAlQQ0hf
REcxID0gMTAyNCwKKwlQQ0hfREcyLAogfTsKIAogI2RlZmluZSBJTlRFTF9QQ0hfREVWSUNFX0lE
X01BU0sJCTB4ZmY4MApAQCAtNjIsNiArNjMsNyBAQCBlbnVtIGludGVsX3BjaCB7CiAKICNkZWZp
bmUgSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpCQkoKGRldl9wcml2KS0+cGNoX3R5cGUpCiAjZGVm
aW5lIElOVEVMX1BDSF9JRChkZXZfcHJpdikJCQkoKGRldl9wcml2KS0+cGNoX2lkKQorI2RlZmlu
ZSBIQVNfUENIX0RHMihkZXZfcHJpdikJCQkoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBD
SF9ERzIpCiAjZGVmaW5lIEhBU19QQ0hfQURQKGRldl9wcml2KQkJCShJTlRFTF9QQ0hfVFlQRShk
ZXZfcHJpdikgPT0gUENIX0FEUCkKICNkZWZpbmUgSEFTX1BDSF9ERzEoZGV2X3ByaXYpCQkJKElO
VEVMX1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hfREcxKQogI2RlZmluZSBIQVNfUENIX0pTUChk
ZXZfcHJpdikJCQkoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9KU1ApCi0tIAoyLjI1
LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
