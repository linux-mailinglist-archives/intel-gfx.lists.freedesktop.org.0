Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA53F305085
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 05:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 850E26E500;
	Wed, 27 Jan 2021 04:12:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615476E4F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 04:12:28 +0000 (UTC)
IronPort-SDR: YBvwf7Umz55eZ9+YDCAa+vukr3E4cTSdOb5YTDSXDu4nJVr+J2GIbjtDHpzR4UTke2tU3jmMAu
 VeMcVMlzUU8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167110813"
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="167110813"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:12:27 -0800
IronPort-SDR: CUXPM3tdsOUAkWUpsDx9bYN0N2mgY26Nljmi6Yps14nqemks5Wt9xgUVoZSVK6T3GaZ7wFMmMa
 1b/GXPtdwCRw==
X-IronPort-AV: E=Sophos;i="5.79,378,1602572400"; d="scan'208";a="473006362"
Received: from njcaminx-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.9.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 20:12:27 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 20:11:52 -0800
Message-Id: <20210127041159.136409-3-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210127041159.136409-1-aditya.swarup@intel.com>
References: <20210127041159.136409-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/adl_s: MCHBAR memory info
 registers are moved
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

RnJvbTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50ZWwuY29tPgoKVGhlIGNyd2Vidmll
dyBpbmRpY2F0ZXMgb24gQURMLVMgdGhhdCBzb21lIG9mIG91ciBNQ0hCQVIKcmVnaXN0ZXJzIGhh
dmUgbW92ZWQgZnJvbSB0aGVpciB0cmFkaXRpb25hbCAweDUwWFggb2Zmc2V0cyB0bwpuZXcgbG9j
YXRpb25zLiBUaGUgbWVhbmluZyBhbmQgYml0IGxheW91dCBvZiB0aGUgcmVnaXN0ZXJzCnJlbWFp
biBzYW1lLgoKdjI6IFNpbXBsaWZ5IGxvZ2ljIHRvIGEgc2luZ2xlIGlmIGVsc2UgY2hhaW4gYW5k
IGZpeCBpbmRlbnRzLihMdWNhcykKCkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hp
QGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVy
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgfCAgNSArKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jIHwgMjQgKysrKysrKysrKysrKysrKysr
LS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggYWE4NzI0NDYzMzdiLi4zMDMxODk3MjM5YTAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTA5MTYsNiArMTA5MTYsOCBAQCBlbnVtIHNr
bF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgIFNLTF9EUkFNX0REUl9UWVBFX0xQRERSMwkJKDIgPDwg
MCkKICNkZWZpbmUgIFNLTF9EUkFNX0REUl9UWVBFX0xQRERSNAkJKDMgPDwgMCkKIAorI2RlZmlu
ZSBBRExTX01BRF9JTlRFUl9DSEFOTkVMXzBfMF8wX01DSEJBUiBfTU1JTyhNQ0hCQVJfTUlSUk9S
X0JBU0VfU05CICsgMHg2MDQ4KQorCiAjZGVmaW5lIFNLTF9NQURfRElNTV9DSDBfMF8wXzBfTUNI
QkFSX01DTUFJTglfTU1JTyhNQ0hCQVJfTUlSUk9SX0JBU0VfU05CICsgMHg1MDBDKQogI2RlZmlu
ZSBTS0xfTUFEX0RJTU1fQ0gxXzBfMF8wX01DSEJBUl9NQ01BSU4JX01NSU8oTUNIQkFSX01JUlJP
Ul9CQVNFX1NOQiArIDB4NTAxMCkKICNkZWZpbmUgIFNLTF9EUkFNX1NfU0hJRlQJCQkxNgpAQCAt
MTA5NDMsNiArMTA5NDUsOSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKICNkZWZpbmUgIENOTF9E
UkFNX1JBTktfMwkJCSgweDIgPDwgOSkKICNkZWZpbmUgIENOTF9EUkFNX1JBTktfNAkJCSgweDMg
PDwgOSkKIAorI2RlZmluZSBBRExTX01BRF9ESU1NX0NIMF8wXzBfMF9NQ0hCQVIJCV9NTUlPKE1D
SEJBUl9NSVJST1JfQkFTRV9TTkIgKyAweDYwNTQpCisjZGVmaW5lIEFETFNfTUFEX0RJTU1fQ0gx
XzBfMF8wX01DSEJBUgkJX01NSU8oTUNIQkFSX01JUlJPUl9CQVNFX1NOQiArIDB4NjA1OCkKKwog
LyoKICAqIFBsZWFzZSBzZWUgaHN3X3JlYWRfZGNvbXAoKSBhbmQgaHN3X3dyaXRlX2Rjb21wKCkg
YmVmb3JlIHVzaW5nIHRoaXMgcmVnaXN0ZXIsCiAgKiBzaW5jZSBvbiBIU1cgd2UgY2FuJ3Qgd3Jp
dGUgdG8gaXQgdXNpbmcgaW50ZWxfdW5jb3JlX3dyaXRlLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJh
bS5jCmluZGV4IDQ3NTQyOTZhMjUwZS4uODRmODRlMTE4NTMxIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHJhbS5jCkBAIC0xODEsMTcgKzE4MSwyNCBAQCBza2xfZHJhbV9nZXRfY2hhbm5lbHNfaW5m
byhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlzdHJ1Y3QgZHJhbV9pbmZvICpk
cmFtX2luZm8gPSAmaTkxNS0+ZHJhbV9pbmZvOwogCXN0cnVjdCBkcmFtX2NoYW5uZWxfaW5mbyBj
aDAgPSB7fSwgY2gxID0ge307CisJaTkxNV9yZWdfdCBjaDBfcmVnLCBjaDFfcmVnOwogCXUzMiB2
YWw7CiAJaW50IHJldDsKIAotCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUs
Ci0JCQkJU0tMX01BRF9ESU1NX0NIMF8wXzBfMF9NQ0hCQVJfTUNNQUlOKTsKKwlpZiAoSVNfQUxE
RVJMQUtFX1MoaTkxNSkpIHsKKwkJY2gwX3JlZyA9IEFETFNfTUFEX0RJTU1fQ0gwXzBfMF8wX01D
SEJBUjsKKwkJY2gxX3JlZyA9IEFETFNfTUFEX0RJTU1fQ0gxXzBfMF8wX01DSEJBUjsKKwl9IGVs
c2UgeworCQljaDBfcmVnID0gQURMU19NQURfRElNTV9DSDBfMF8wXzBfTUNIQkFSOworCQljaDFf
cmVnID0gQURMU19NQURfRElNTV9DSDFfMF8wXzBfTUNIQkFSOworCX0KKworCXZhbCA9IGludGVs
X3VuY29yZV9yZWFkKCZpOTE1LT51bmNvcmUsIGNoMF9yZWcpOwogCXJldCA9IHNrbF9kcmFtX2dl
dF9jaGFubmVsX2luZm8oaTkxNSwgJmNoMCwgMCwgdmFsKTsKIAlpZiAocmV0ID09IDApCiAJCWRy
YW1faW5mby0+bnVtX2NoYW5uZWxzKys7CiAKLQl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCgmaTkx
NS0+dW5jb3JlLAotCQkJCVNLTF9NQURfRElNTV9DSDFfMF8wXzBfTUNIQkFSX01DTUFJTik7CisJ
dmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwgY2gxX3JlZyk7CiAJcmV0ID0g
c2tsX2RyYW1fZ2V0X2NoYW5uZWxfaW5mbyhpOTE1LCAmY2gxLCAxLCB2YWwpOwogCWlmIChyZXQg
PT0gMCkKIAkJZHJhbV9pbmZvLT5udW1fY2hhbm5lbHMrKzsKQEAgLTIyOSwxMCArMjM2LDE1IEBA
IHNrbF9kcmFtX2dldF9jaGFubmVsc19pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogc3RhdGljIGVudW0gaW50ZWxfZHJhbV90eXBlCiBza2xfZ2V0X2RyYW1fdHlwZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKKwlpOTE1X3JlZ190IHJlZzsKIAl1MzIgdmFsOwog
Ci0JdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwKLQkJCQlTS0xfTUFEX0lO
VEVSX0NIQU5ORUxfMF8wXzBfTUNIQkFSX01DTUFJTik7CisJaWYgKElTX0FMREVSTEFLRV9TKGk5
MTUpKQorCQlyZWcgPSBBRExTX01BRF9JTlRFUl9DSEFOTkVMXzBfMF8wX01DSEJBUjsKKwllbHNl
CisJCXJlZyA9IFNLTF9NQURfSU5URVJfQ0hBTk5FTF8wXzBfMF9NQ0hCQVJfTUNNQUlOOworCisJ
dmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwgcmVnKTsKIAogCXN3aXRjaCAo
dmFsICYgU0tMX0RSQU1fRERSX1RZUEVfTUFTSykgewogCWNhc2UgU0tMX0RSQU1fRERSX1RZUEVf
RERSMzoKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
