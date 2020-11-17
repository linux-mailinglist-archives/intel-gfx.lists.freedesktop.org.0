Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 710722B6DC5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:50:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1ED89FDB;
	Tue, 17 Nov 2020 18:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F33A89FCC
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 18:50:52 +0000 (UTC)
IronPort-SDR: hXDdSBmO63GtehjY3HBOnkJASgKtPbSqtAQbIMiTWSCVXbKq8jQ4sZa1zE7RMC97Yr2KChabM1
 2OVjy2krmBOA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="158017851"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="158017851"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:46 -0800
IronPort-SDR: L0lDfkW610N5S6eB2Jylpd9qUG/VMy2825I7/1vYSfvwlgnE3SL/PZmE/1Kt0bebzXWl7616XF
 tBU8tNjs0e9g==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="340996840"
Received: from ankithac-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.101.215])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:46 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 10:50:13 -0800
Message-Id: <20201117185029.22078-6-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/21] drm/i915/adl_s: Add PCH support
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQWRkIHN1
cHBvcnQgZm9yIEFsZGVycG9pbnQoQURQKSBQQ0ggdXNlZCB3aXRoIEFsZGVybGFrZS1TLgoKdjI6
Ci0gVXNlIGRybV9kYmdfa21zIGFuZCBkcm1fV0FSTl9PTiBiYXNlZCBvbiBKYW5pJ3MgZmVlZGJh
Y2suKGFzd2FydXApCgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
Q2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogQ2F6IFlv
a295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMgfCA4ICsrKysrKystCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wY2guaCB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wY2guYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCmluZGV4IGYzMWMwZGFi
ZDBjYy4uMmE2ZDcwZjI0N2U4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wY2guYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwpAQCAtMTI4LDYg
KzEyOCwxMCBAQCBpbnRlbF9wY2hfdHlwZShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsIHVuc2lnbmVkIHNob3J0IGlkKQogCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRy
bSwgIkZvdW5kIEphc3BlciBMYWtlIFBDSFxuIik7CiAJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+
ZHJtLCAhSVNfSlNMX0VITChkZXZfcHJpdikpOwogCQlyZXR1cm4gUENIX0pTUDsKKwljYXNlIElO
VEVMX1BDSF9BRFBfREVWSUNFX0lEX1RZUEU6CisJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJt
LCAiRm91bmQgQWxkZXIgTGFrZSBQQ0hcbiIpOworCQlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRy
bSwgIUlTX0FMREVSTEFLRV9TKGRldl9wcml2KSk7CisJCXJldHVybiBQQ0hfQURQOwogCWRlZmF1
bHQ6CiAJCXJldHVybiBQQ0hfTk9ORTsKIAl9CkBAIC0xNTUsNyArMTU5LDkgQEAgaW50ZWxfdmly
dF9kZXRlY3RfcGNoKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkg
KiBtYWtlIGFuIGVkdWNhdGVkIGd1ZXNzIGFzIHRvIHdoaWNoIFBDSCBpcyByZWFsbHkgdGhlcmUu
CiAJICovCiAKLQlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8fCBJU19ST0NLRVRMQUtFKGRl
dl9wcml2KSkKKwlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKQorCQlpZCA9IElOVEVMX1BD
SF9BRFBfREVWSUNFX0lEX1RZUEU7CisJZWxzZSBpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8
fCBJU19ST0NLRVRMQUtFKGRldl9wcml2KSkKIAkJaWQgPSBJTlRFTF9QQ0hfVEdQX0RFVklDRV9J
RF9UWVBFOwogCWVsc2UgaWYgKElTX0pTTF9FSEwoZGV2X3ByaXYpKQogCQlpZCA9IElOVEVMX1BD
SF9NQ0NfREVWSUNFX0lEX1RZUEU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wY2guaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oCmluZGV4IDA2ZDJj
ZDUwYWYwYi4uNzMxODM3NzUwM2IwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wY2guaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaApAQCAtMjYs
NiArMjYsNyBAQCBlbnVtIGludGVsX3BjaCB7CiAJUENIX0pTUCwJLyogSmFzcGVyIExha2UgUENI
ICovCiAJUENIX01DQywgICAgICAgIC8qIE11bGUgQ3JlZWsgQ2FueW9uIFBDSCAqLwogCVBDSF9U
R1AsCS8qIFRpZ2VyIExha2UgUENIICovCisJUENIX0FEUCwJLyogQWxkZXIgTGFrZSBQQ0ggKi8K
IAogCS8qIEZha2UgUENIcywgZnVuY3Rpb25hbGl0eSBoYW5kbGVkIG9uIHRoZSBzYW1lIFBDSSBk
ZXYgKi8KIAlQQ0hfREcxID0gMTAyNCwKQEAgLTUzLDEyICs1NCwxNCBAQCBlbnVtIGludGVsX3Bj
aCB7CiAjZGVmaW5lIElOVEVMX1BDSF9UR1AyX0RFVklDRV9JRF9UWVBFCQkweDQzODAKICNkZWZp
bmUgSU5URUxfUENIX0pTUF9ERVZJQ0VfSURfVFlQRQkJMHg0RDgwCiAjZGVmaW5lIElOVEVMX1BD
SF9KU1AyX0RFVklDRV9JRF9UWVBFCQkweDM4ODAKKyNkZWZpbmUgSU5URUxfUENIX0FEUF9ERVZJ
Q0VfSURfVFlQRQkJMHg3QTgwCiAjZGVmaW5lIElOVEVMX1BDSF9QMlhfREVWSUNFX0lEX1RZUEUJ
CTB4NzEwMAogI2RlZmluZSBJTlRFTF9QQ0hfUDNYX0RFVklDRV9JRF9UWVBFCQkweDcwMDAKICNk
ZWZpbmUgSU5URUxfUENIX1FFTVVfREVWSUNFX0lEX1RZUEUJCTB4MjkwMCAvKiBxZW11IHEzNSBo
YXMgMjkxOCAqLwogCiAjZGVmaW5lIElOVEVMX1BDSF9UWVBFKGRldl9wcml2KQkJKChkZXZfcHJp
diktPnBjaF90eXBlKQogI2RlZmluZSBJTlRFTF9QQ0hfSUQoZGV2X3ByaXYpCQkJKChkZXZfcHJp
diktPnBjaF9pZCkKKyNkZWZpbmUgSEFTX1BDSF9BRFAoZGV2X3ByaXYpCQkJKElOVEVMX1BDSF9U
WVBFKGRldl9wcml2KSA9PSBQQ0hfQURQKQogI2RlZmluZSBIQVNfUENIX0RHMShkZXZfcHJpdikJ
CQkoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9ERzEpCiAjZGVmaW5lIEhBU19QQ0hf
SlNQKGRldl9wcml2KQkJCShJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPT0gUENIX0pTUCkKICNk
ZWZpbmUgSEFTX1BDSF9NQ0MoZGV2X3ByaXYpCQkJKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA9
PSBQQ0hfTUNDKQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
