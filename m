Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E8F2CF87B
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE606E2D8;
	Sat,  5 Dec 2020 01:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051AA6E2C7
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Dec 2020 01:09:12 +0000 (UTC)
IronPort-SDR: USn9M6kUXVprClUQPpUy1RuoZOUbdW+7qorwDE0TuFh8wyGHYxe4M0qqjvwW2c9B5beiUK5Mji
 Ovgj0ongvLYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="173571031"
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="173571031"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:09:12 -0800
IronPort-SDR: PqbP0DKzYV8Ns2463+PcwLwGnpAP2ffrBpT9Il4OjV+R62ogUIrmo2D+wulE2EfYgxgaQYaeqx
 x+PsNGIR5ckg==
X-IronPort-AV: E=Sophos;i="5.78,394,1599548400"; d="scan'208";a="369062997"
Received: from msdesadl-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.251.12.22])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 17:09:12 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 17:08:39 -0800
Message-Id: <20201205010844.361880-18-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201205010844.361880-1-aditya.swarup@intel.com>
References: <20201205010844.361880-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/22] drm/i915/adl_s: MCHBAR memory info
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
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJhbS5jIHwgMjMgKysrKysrKysrKysrKysrKyst
LS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBjZTRlZjdmYTQwMDAuLjU1ZTE4NjI5M2ZiYiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0xMDg2NSw2ICsxMDg2NSw4IEBAIGVudW0gc2ts
X3Bvd2VyX2dhdGUgewogI2RlZmluZSAgU0tMX0RSQU1fRERSX1RZUEVfTFBERFIzCQkoMiA8PCAw
KQogI2RlZmluZSAgU0tMX0RSQU1fRERSX1RZUEVfTFBERFI0CQkoMyA8PCAwKQogCisjZGVmaW5l
IEFETFNfTUFEX0lOVEVSX0NIQU5ORUxfMF8wXzBfTUNIQkFSIF9NTUlPKE1DSEJBUl9NSVJST1Jf
QkFTRV9TTkIgKyAweDYwNDgpCisKICNkZWZpbmUgU0tMX01BRF9ESU1NX0NIMF8wXzBfMF9NQ0hC
QVJfTUNNQUlOCV9NTUlPKE1DSEJBUl9NSVJST1JfQkFTRV9TTkIgKyAweDUwMEMpCiAjZGVmaW5l
IFNLTF9NQURfRElNTV9DSDFfMF8wXzBfTUNIQkFSX01DTUFJTglfTU1JTyhNQ0hCQVJfTUlSUk9S
X0JBU0VfU05CICsgMHg1MDEwKQogI2RlZmluZSAgU0tMX0RSQU1fU19TSElGVAkJCTE2CkBAIC0x
MDg5Miw2ICsxMDg5NCw5IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSAgQ05MX0RS
QU1fUkFOS18zCQkJKDB4MiA8PCA5KQogI2RlZmluZSAgQ05MX0RSQU1fUkFOS180CQkJKDB4MyA8
PCA5KQogCisjZGVmaW5lIEFETFNfTUFEX0RJTU1fQ0gwXzBfMF8wX01DSEJBUgkJX01NSU8oTUNI
QkFSX01JUlJPUl9CQVNFX1NOQiArIDB4NjA1NCkKKyNkZWZpbmUgQURMU19NQURfRElNTV9DSDFf
MF8wXzBfTUNIQkFSCQlfTU1JTyhNQ0hCQVJfTUlSUk9SX0JBU0VfU05CICsgMHg2MDU4KQorCiAv
KgogICogUGxlYXNlIHNlZSBoc3dfcmVhZF9kY29tcCgpIGFuZCBoc3dfd3JpdGVfZGNvbXAoKSBi
ZWZvcmUgdXNpbmcgdGhpcyByZWdpc3RlciwKICAqIHNpbmNlIG9uIEhTVyB3ZSBjYW4ndCB3cml0
ZSB0byBpdCB1c2luZyBpbnRlbF91bmNvcmVfd3JpdGUuCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFt
LmMKaW5kZXggNDc1NDI5NmEyNTBlLi5mYzk5NDIxMzljY2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcmFtLmMKQEAgLTE4MSwxNyArMTgxLDI0IEBAIHNrbF9kcmFtX2dldF9jaGFubmVsc19pbmZv
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCXN0cnVjdCBkcmFtX2luZm8gKmRy
YW1faW5mbyA9ICZpOTE1LT5kcmFtX2luZm87CiAJc3RydWN0IGRyYW1fY2hhbm5lbF9pbmZvIGNo
MCA9IHt9LCBjaDEgPSB7fTsKKwlpOTE1X3JlZ190IGNoMF9yZWcsIGNoMV9yZWc7CiAJdTMyIHZh
bDsKIAlpbnQgcmV0OwogCi0JdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwK
LQkJCQlTS0xfTUFEX0RJTU1fQ0gwXzBfMF8wX01DSEJBUl9NQ01BSU4pOworCWlmIChJU19BTERF
UkxBS0VfUyhpOTE1KSkgeworCQljaDBfcmVnID0gQURMU19NQURfRElNTV9DSDBfMF8wXzBfTUNI
QkFSOworCQljaDFfcmVnID0gQURMU19NQURfRElNTV9DSDFfMF8wXzBfTUNIQkFSOworCX0gZWxz
ZSB7CisJCWNoMF9yZWcgPSBBRExTX01BRF9ESU1NX0NIMF8wXzBfMF9NQ0hCQVI7CisJCWNoMV9y
ZWcgPSBBRExTX01BRF9ESU1NX0NIMV8wXzBfMF9NQ0hCQVI7CisJfQorCisJdmFsID0gaW50ZWxf
dW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwgY2gwX3JlZyk7CiAJcmV0ID0gc2tsX2RyYW1fZ2V0
X2NoYW5uZWxfaW5mbyhpOTE1LCAmY2gwLCAwLCB2YWwpOwogCWlmIChyZXQgPT0gMCkKIAkJZHJh
bV9pbmZvLT5udW1fY2hhbm5lbHMrKzsKIAotCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKCZpOTE1
LT51bmNvcmUsCi0JCQkJU0tMX01BRF9ESU1NX0NIMV8wXzBfMF9NQ0hCQVJfTUNNQUlOKTsKKwl2
YWwgPSBpbnRlbF91bmNvcmVfcmVhZCgmaTkxNS0+dW5jb3JlLCBjaDFfcmVnKTsKIAlyZXQgPSBz
a2xfZHJhbV9nZXRfY2hhbm5lbF9pbmZvKGk5MTUsICZjaDEsIDEsIHZhbCk7CiAJaWYgKHJldCA9
PSAwKQogCQlkcmFtX2luZm8tPm51bV9jaGFubmVscysrOwpAQCAtMjMxLDggKzIzOCwxMiBAQCBz
a2xfZ2V0X2RyYW1fdHlwZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAl1MzIg
dmFsOwogCi0JdmFsID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwKLQkJCQlTS0xf
TUFEX0lOVEVSX0NIQU5ORUxfMF8wXzBfTUNIQkFSX01DTUFJTik7CisJaWYgKElTX0FMREVSTEFL
RV9TKGk5MTUpKQorCQl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCgmaTkxNS0+dW5jb3JlLAorCQkJ
CQlBRExTX01BRF9JTlRFUl9DSEFOTkVMXzBfMF8wX01DSEJBUik7CisJZWxzZQorCQl2YWwgPSBp
bnRlbF91bmNvcmVfcmVhZCgmaTkxNS0+dW5jb3JlLAorCQkJCQlTS0xfTUFEX0lOVEVSX0NIQU5O
RUxfMF8wXzBfTUNIQkFSX01DTUFJTik7CiAKIAlzd2l0Y2ggKHZhbCAmIFNLTF9EUkFNX0REUl9U
WVBFX01BU0spIHsKIAljYXNlIFNLTF9EUkFNX0REUl9UWVBFX0REUjM6Ci0tIAoyLjI3LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
