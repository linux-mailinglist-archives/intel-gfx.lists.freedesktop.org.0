Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 143B4294D92
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:32:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6DA6EB1B;
	Wed, 21 Oct 2020 13:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC906EB14
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:32:29 +0000 (UTC)
IronPort-SDR: 4wPsyQo12r59eAvQJSWe6pES4wCGIFiWZf31b/v990Fgn/lPJg0kHsO/DdSEGGzXDWhBGURDli
 xPhzgcgi59jA==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="154317759"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="154317759"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:29 -0700
IronPort-SDR: Qj7+WauLvkUl+FrIiLqqYyferGlQzIyYPdw4TuD3DIkXpdNs2hxP+rfcE29DBOzCvpQ4kvAcbZ
 VXVRKGxBGJUw==
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="316372469"
Received: from snadathu-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.252.137.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:32:28 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Oct 2020 06:31:58 -0700
Message-Id: <20201021133213.328994-4-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201021133213.328994-1-aditya.swarup@intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/18] drm/i915/adl_s: Add PCH support
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
cHBvcnQgZm9yIEFsZGVycG9pbnQoQURQKSBQQ0ggdXNlZCB3aXRoIEFsZGVybGFrZS1TLgoKQ2M6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQ2M6IENheiBZb2tveWFtYSA8Y2F6Lnlva295
YW1hQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0
c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2Fy
dXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BjaC5jIHwgOCArKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmgg
fCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwppbmRleCBmMzFjMGRhYmQwY2MuLjdmYWM5Njg2YTBj
MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMKQEAgLTEyOCw2ICsxMjgsMTAgQEAgaW50ZWxf
cGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1bnNpZ25l
ZCBzaG9ydCBpZCkKIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJGb3VuZCBKYXNwZXIg
TGFrZSBQQ0hcbiIpOwogCQlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIUlTX0pTTF9FSEwo
ZGV2X3ByaXYpKTsKIAkJcmV0dXJuIFBDSF9KU1A7CisJY2FzZSBJTlRFTF9QQ0hfQURQX0RFVklD
RV9JRF9UWVBFOgorCQlEUk1fREVCVUdfS01TKCJGb3VuZCBBbGRlciBMYWtlIFBDSFxuIik7CisJ
CVdBUk5fT04oIUlTX0FMREVSTEFLRV9TKGRldl9wcml2KSk7CisJCXJldHVybiBQQ0hfQURQOwog
CWRlZmF1bHQ6CiAJCXJldHVybiBQQ0hfTk9ORTsKIAl9CkBAIC0xNTUsNyArMTU5LDkgQEAgaW50
ZWxfdmlydF9kZXRlY3RfcGNoKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAkgKiBtYWtlIGFuIGVkdWNhdGVkIGd1ZXNzIGFzIHRvIHdoaWNoIFBDSCBpcyByZWFsbHkg
dGhlcmUuCiAJICovCiAKLQlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8fCBJU19ST0NLRVRM
QUtFKGRldl9wcml2KSkKKwlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpKQorCQlpZCA9IElO
VEVMX1BDSF9BRFBfREVWSUNFX0lEX1RZUEU7CisJZWxzZSBpZiAoSVNfVElHRVJMQUtFKGRldl9w
cml2KSB8fCBJU19ST0NLRVRMQUtFKGRldl9wcml2KSkKIAkJaWQgPSBJTlRFTF9QQ0hfVEdQX0RF
VklDRV9JRF9UWVBFOwogCWVsc2UgaWYgKElTX0pTTF9FSEwoZGV2X3ByaXYpKQogCQlpZCA9IElO
VEVMX1BDSF9NQ0NfREVWSUNFX0lEX1RZUEU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wY2guaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oCmluZGV4
IDA2ZDJjZDUwYWYwYi4uNzMxODM3NzUwM2IwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wY2guaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaApA
QCAtMjYsNiArMjYsNyBAQCBlbnVtIGludGVsX3BjaCB7CiAJUENIX0pTUCwJLyogSmFzcGVyIExh
a2UgUENIICovCiAJUENIX01DQywgICAgICAgIC8qIE11bGUgQ3JlZWsgQ2FueW9uIFBDSCAqLwog
CVBDSF9UR1AsCS8qIFRpZ2VyIExha2UgUENIICovCisJUENIX0FEUCwJLyogQWxkZXIgTGFrZSBQ
Q0ggKi8KIAogCS8qIEZha2UgUENIcywgZnVuY3Rpb25hbGl0eSBoYW5kbGVkIG9uIHRoZSBzYW1l
IFBDSSBkZXYgKi8KIAlQQ0hfREcxID0gMTAyNCwKQEAgLTUzLDEyICs1NCwxNCBAQCBlbnVtIGlu
dGVsX3BjaCB7CiAjZGVmaW5lIElOVEVMX1BDSF9UR1AyX0RFVklDRV9JRF9UWVBFCQkweDQzODAK
ICNkZWZpbmUgSU5URUxfUENIX0pTUF9ERVZJQ0VfSURfVFlQRQkJMHg0RDgwCiAjZGVmaW5lIElO
VEVMX1BDSF9KU1AyX0RFVklDRV9JRF9UWVBFCQkweDM4ODAKKyNkZWZpbmUgSU5URUxfUENIX0FE
UF9ERVZJQ0VfSURfVFlQRQkJMHg3QTgwCiAjZGVmaW5lIElOVEVMX1BDSF9QMlhfREVWSUNFX0lE
X1RZUEUJCTB4NzEwMAogI2RlZmluZSBJTlRFTF9QQ0hfUDNYX0RFVklDRV9JRF9UWVBFCQkweDcw
MDAKICNkZWZpbmUgSU5URUxfUENIX1FFTVVfREVWSUNFX0lEX1RZUEUJCTB4MjkwMCAvKiBxZW11
IHEzNSBoYXMgMjkxOCAqLwogCiAjZGVmaW5lIElOVEVMX1BDSF9UWVBFKGRldl9wcml2KQkJKChk
ZXZfcHJpdiktPnBjaF90eXBlKQogI2RlZmluZSBJTlRFTF9QQ0hfSUQoZGV2X3ByaXYpCQkJKChk
ZXZfcHJpdiktPnBjaF9pZCkKKyNkZWZpbmUgSEFTX1BDSF9BRFAoZGV2X3ByaXYpCQkJKElOVEVM
X1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hfQURQKQogI2RlZmluZSBIQVNfUENIX0RHMShkZXZf
cHJpdikJCQkoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9ERzEpCiAjZGVmaW5lIEhB
U19QQ0hfSlNQKGRldl9wcml2KQkJCShJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPT0gUENIX0pT
UCkKICNkZWZpbmUgSEFTX1BDSF9NQ0MoZGV2X3ByaXYpCQkJKElOVEVMX1BDSF9UWVBFKGRldl9w
cml2KSA9PSBQQ0hfTUNDKQotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
