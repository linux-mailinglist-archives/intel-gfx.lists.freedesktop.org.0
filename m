Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D201B4A32
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 18:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65B06EA37;
	Wed, 22 Apr 2020 16:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26CD46EA36
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 16:19:40 +0000 (UTC)
IronPort-SDR: MUKlvt51SE2m/vPMkruTGc1gZyQDsizkeBqI9zli6WTl9OBxWj/xiz+Wcih+19UmWxWRBeflkd
 zUeWOV/9wXQQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 09:19:26 -0700
IronPort-SDR: IwCgP0BTXy+mDxUakR6R460BEXdPrAp+kQrGeA2iLlDjzPe1CKFA4FaHH9sfZlNPIPesvfqC4Z
 9CRnyYtNiadw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,304,1583222400"; d="scan'208";a="244566112"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 22 Apr 2020 09:19:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Apr 2020 19:19:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 19:19:14 +0300
Message-Id: <20200422161917.17389-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200422161917.17389-1-ville.syrjala@linux.intel.com>
References: <20200422161917.17389-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915: Use drm_rect to store the pfit
 window pos/size
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgdGhpbmdzIGEgYml0IG1vcmUgYWJzdHJhY3QgYnkgcmVwbGFjaW5nIHRoZSBwY2hfcGZpdC5w
b3Mvc2l6ZQpyYXcgcmVnaXN0ZXIgdmFsdWVzIHdpdGggYSBkcm1fcmVjdC4gTWFrZXMgaXQgc2xp
Z2hseSBtb3JlIGNvbnZlbmllbnQKdG8gZWcuIGNvbXB1dGUgdGhlIHNjYWxpbmcgZmFjdG9ycy4K
CnYyOiBVc2UgZHJtX3JlY3RfaW5pdCgpCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDEwMSArKysrKysrKysrKy0tLS0tLS0KIC4uLi9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMyArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jICAgIHwgIDEzICsrLQogMyBmaWxl
cyBjaGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspLCA1MCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDk2ZDA3NjhlY2Y1ZC4u
NmJiODc5NjU4MDFlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtNjA5NiwxMCArNjA5Niw4IEBAIHN0YXRpYyBpbnQgc2tsX3VwZGF0ZV9zY2Fs
ZXJfY3J0YyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlpbnQgd2lkdGgs
IGhlaWdodDsKIAogCWlmIChjcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkKSB7Ci0JCXUzMiBw
Zml0X3NpemUgPSBjcnRjX3N0YXRlLT5wY2hfcGZpdC5zaXplOwotCi0JCXdpZHRoID0gcGZpdF9z
aXplID4+IDE2OwotCQloZWlnaHQgPSBwZml0X3NpemUgJiAweGZmZmY7CisJCXdpZHRoID0gZHJt
X3JlY3Rfd2lkdGgoJmNydGNfc3RhdGUtPnBjaF9wZml0LmRzdCk7CisJCWhlaWdodCA9IGRybV9y
ZWN0X2hlaWdodCgmY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0KTsKIAl9IGVsc2UgewogCQl3aWR0
aCA9IGFkanVzdGVkX21vZGUtPmNydGNfaGRpc3BsYXk7CiAJCWhlaWdodCA9IGFkanVzdGVkX21v
ZGUtPmNydGNfdmRpc3BsYXk7CkBAIC02MjE5LDExICs2MjE3LDIwIEBAIHN0YXRpYyB2b2lkIHNr
bF9wZml0X2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkK
IHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+
dWFwaS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGNydGMtPmJhc2UuZGV2KTsKLQllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CiAJY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc2NhbGVyX3N0YXRlICpzY2FsZXJfc3RhdGUgPQogCQkmY3J0Y19z
dGF0ZS0+c2NhbGVyX3N0YXRlOworCXN0cnVjdCBkcm1fcmVjdCBzcmMgPSB7CisJCS54MiA9IGNy
dGNfc3RhdGUtPnBpcGVfc3JjX3cgPDwgMTYsCisJCS55MiA9IGNydGNfc3RhdGUtPnBpcGVfc3Jj
X2ggPDwgMTYsCisJfTsKKwljb25zdCBzdHJ1Y3QgZHJtX3JlY3QgKmRzdCA9ICZjcnRjX3N0YXRl
LT5wY2hfcGZpdC5kc3Q7CiAJdTE2IHV2X3JnYl9ocGhhc2UsIHV2X3JnYl92cGhhc2U7Ci0JaW50
IHBmaXRfdywgcGZpdF9oLCBoc2NhbGUsIHZzY2FsZTsKKwllbnVtIHBpcGUgcGlwZSA9IGNydGMt
PnBpcGU7CisJaW50IHdpZHRoID0gZHJtX3JlY3Rfd2lkdGgoZHN0KTsKKwlpbnQgaGVpZ2h0ID0g
ZHJtX3JlY3RfaGVpZ2h0KGRzdCk7CisJaW50IHggPSBkc3QtPngxOworCWludCB5ID0gZHN0LT55
MTsKKwlpbnQgaHNjYWxlLCB2c2NhbGU7CiAJdW5zaWduZWQgbG9uZyBpcnFmbGFnczsKIAlpbnQg
aWQ7CiAKQEAgLTYyMzQsMTEgKzYyNDEsOCBAQCBzdGF0aWMgdm9pZCBza2xfcGZpdF9lbmFibGUo
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJCQljcnRjX3N0YXRl
LT5zY2FsZXJfc3RhdGUuc2NhbGVyX2lkIDwgMCkpCiAJCXJldHVybjsKIAotCXBmaXRfdyA9IChj
cnRjX3N0YXRlLT5wY2hfcGZpdC5zaXplID4+IDE2KSAmIDB4RkZGRjsKLQlwZml0X2ggPSBjcnRj
X3N0YXRlLT5wY2hfcGZpdC5zaXplICYgMHhGRkZGOwotCi0JaHNjYWxlID0gKGNydGNfc3RhdGUt
PnBpcGVfc3JjX3cgPDwgMTYpIC8gcGZpdF93OwotCXZzY2FsZSA9IChjcnRjX3N0YXRlLT5waXBl
X3NyY19oIDw8IDE2KSAvIHBmaXRfaDsKKwloc2NhbGUgPSBkcm1fcmVjdF9jYWxjX2hzY2FsZSgm
c3JjLCBkc3QsIDAsIElOVF9NQVgpOworCXZzY2FsZSA9IGRybV9yZWN0X2NhbGNfdnNjYWxlKCZz
cmMsIGRzdCwgMCwgSU5UX01BWCk7CiAKIAl1dl9yZ2JfaHBoYXNlID0gc2tsX3NjYWxlcl9jYWxj
X3BoYXNlKDEsIGhzY2FsZSwgZmFsc2UpOwogCXV2X3JnYl92cGhhc2UgPSBza2xfc2NhbGVyX2Nh
bGNfcGhhc2UoMSwgdnNjYWxlLCBmYWxzZSk7CkBAIC02MjU0LDkgKzYyNTgsOSBAQCBzdGF0aWMg
dm9pZCBza2xfcGZpdF9lbmFibGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiAJaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFNLTF9QU19IUEhBU0UocGlwZSwg
aWQpLAogCQkJICBQU19ZX1BIQVNFKDApIHwgUFNfVVZfUkdCX1BIQVNFKHV2X3JnYl9ocGhhc2Up
KTsKIAlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgU0tMX1BTX1dJTl9QT1MocGlwZSwgaWQp
LAotCQkJICBjcnRjX3N0YXRlLT5wY2hfcGZpdC5wb3MpOworCQkJICB4IDw8IDE2IHwgeSk7CiAJ
aW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFNLTF9QU19XSU5fU1oocGlwZSwgaWQpLAotCQkJ
ICBjcnRjX3N0YXRlLT5wY2hfcGZpdC5zaXplKTsKKwkJCSAgd2lkdGggPDwgMTYgfCBoZWlnaHQp
OwogCiAJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrLCBpcnFm
bGFncyk7CiB9CkBAIC02MjY1LDcgKzYyNjksMTIgQEAgc3RhdGljIHZvaWQgaWxrX3BmaXRfZW5h
YmxlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMp
OwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFz
ZS5kZXYpOworCWNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqZHN0ID0gJmNydGNfc3RhdGUtPnBjaF9w
Zml0LmRzdDsKIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CisJaW50IHdpZHRoID0gZHJt
X3JlY3Rfd2lkdGgoZHN0KTsKKwlpbnQgaGVpZ2h0ID0gZHJtX3JlY3RfaGVpZ2h0KGRzdCk7CisJ
aW50IHggPSBkc3QtPngxOworCWludCB5ID0gZHN0LT55MTsKIAogCWlmICghY3J0Y19zdGF0ZS0+
cGNoX3BmaXQuZW5hYmxlZCkKIAkJcmV0dXJuOwpAQCAtNjI4MCwxMCArNjI4OSw4IEBAIHN0YXRp
YyB2b2lkIGlsa19wZml0X2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkKIAllbHNlCiAJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQRl9DVEwocGlwZSks
IFBGX0VOQUJMRSB8CiAJCQkgICAgICAgUEZfRklMVEVSX01FRF8zeDMpOwotCWludGVsX2RlX3dy
aXRlKGRldl9wcml2LCBQRl9XSU5fUE9TKHBpcGUpLAotCQkgICAgICAgY3J0Y19zdGF0ZS0+cGNo
X3BmaXQucG9zKTsKLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgUEZfV0lOX1NaKHBpcGUpLAot
CQkgICAgICAgY3J0Y19zdGF0ZS0+cGNoX3BmaXQuc2l6ZSk7CisJaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIFBGX1dJTl9QT1MocGlwZSksIHggPDwgMTYgfCB5KTsKKwlpbnRlbF9kZV93cml0ZShk
ZXZfcHJpdiwgUEZfV0lOX1NaKHBpcGUpLCB3aWR0aCA8PCAxNiB8IGhlaWdodCk7CiB9CiAKIHZv
aWQgaHN3X2VuYWJsZV9pcHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCkBAIC03OTM2LDggKzc5NDMsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9jcnRjX3N1cHBvcnRz
X2RvdWJsZV93aWRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogc3RhdGljIHUzMiBp
bGtfcGlwZV9waXhlbF9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKQogewogCXUzMiBwaXhlbF9yYXRlID0gY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRfbW9kZS5j
cnRjX2Nsb2NrOwotCXUzMiBwZml0X3NpemUgPSBjcnRjX3N0YXRlLT5wY2hfcGZpdC5zaXplOwot
CXU2NCBwaXBlX3csIHBpcGVfaCwgcGZpdF93LCBwZml0X2g7CisJdW5zaWduZWQgaW50IHBpcGVf
dywgcGlwZV9oLCBwZml0X3csIHBmaXRfaDsKIAogCS8qCiAJICogV2Ugb25seSB1c2UgSUYtSUQg
aW50ZXJsYWNpbmcuIElmIHdlIGV2ZXIgdXNlCkBAIC03OTUwLDggKzc5NTYsOSBAQCBzdGF0aWMg
dTMyIGlsa19waXBlX3BpeGVsX3JhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCiAJcGlwZV93ID0gY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdzsKIAlwaXBlX2ggPSBj
cnRjX3N0YXRlLT5waXBlX3NyY19oOwogCi0JcGZpdF93ID0gKHBmaXRfc2l6ZSA+PiAxNikgJiAw
eEZGRkY7Ci0JcGZpdF9oID0gcGZpdF9zaXplICYgMHhGRkZGOworCXBmaXRfdyA9IGRybV9yZWN0
X3dpZHRoKCZjcnRjX3N0YXRlLT5wY2hfcGZpdC5kc3QpOworCXBmaXRfaCA9IGRybV9yZWN0X2hl
aWdodCgmY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0KTsKKwogCWlmIChwaXBlX3cgPCBwZml0X3cp
CiAJCXBpcGVfdyA9IHBmaXRfdzsKIAlpZiAocGlwZV9oIDwgcGZpdF9oKQpAQCAtMTA0MDAsNiAr
MTA0MDcsMTQgQEAgc3RhdGljIHZvaWQgaWxrX2dldF9mZGlfbV9uX2NvbmZpZyhzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YywKIAkJCQkgICAgICZwaXBlX2NvbmZpZy0+ZmRpX21fbiwgTlVMTCk7CiB9
CiAKK3N0YXRpYyB2b2lkIGlsa19nZXRfcGZpdF9wb3Nfc2l6ZShzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkgIHUzMiBwb3MsIHUzMiBzaXplKQoreworCWRybV9yZWN0
X2luaXQoJmNydGNfc3RhdGUtPnBjaF9wZml0LmRzdCwKKwkJICAgICAgcG9zID4+IDE2LCBwb3Mg
JiAweGZmZmYsCisJCSAgICAgIHNpemUgPj4gMTYsIHNpemUgJiAweGZmZmYpOworfQorCiBzdGF0
aWMgdm9pZCBza2xfZ2V0X3BmaXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQogewogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRj
X3N0YXRlLT51YXBpLmNydGMpOwpAQCAtMTA0MTAsMTggKzEwNDI1LDIwIEBAIHN0YXRpYyB2b2lk
IHNrbF9nZXRfcGZpdF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
CiAKIAkvKiBmaW5kIHNjYWxlciBhdHRhY2hlZCB0byB0aGlzIHBpcGUgKi8KIAlmb3IgKGkgPSAw
OyBpIDwgY3J0Yy0+bnVtX3NjYWxlcnM7IGkrKykgewotCQl1MzIgdG1wOworCQl1MzIgY3RsLCBw
b3MsIHNpemU7CiAKLQkJdG1wID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgU0tMX1BTX0NUUkwo
Y3J0Yy0+cGlwZSwgaSkpOwotCQlpZiAoKHRtcCAmIChQU19TQ0FMRVJfRU4gfCBQU19QTEFORV9T
RUxfTUFTSykpICE9IFBTX1NDQUxFUl9FTikKKwkJY3RsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgU0tMX1BTX0NUUkwoY3J0Yy0+cGlwZSwgaSkpOworCQlpZiAoKGN0bCAmIChQU19TQ0FMRVJf
RU4gfCBQU19QTEFORV9TRUxfTUFTSykpICE9IFBTX1NDQUxFUl9FTikKIAkJCWNvbnRpbnVlOwog
CiAJCWlkID0gaTsKIAkJY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxlZCA9IHRydWU7Ci0JCWNy
dGNfc3RhdGUtPnBjaF9wZml0LnBvcyA9Ci0JCQlpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBTS0xf
UFNfV0lOX1BPUyhjcnRjLT5waXBlLCBpKSk7Ci0JCWNydGNfc3RhdGUtPnBjaF9wZml0LnNpemUg
PQotCQkJaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgU0tMX1BTX1dJTl9TWihjcnRjLT5waXBlLCBp
KSk7CisKKwkJcG9zID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgU0tMX1BTX1dJTl9QT1MoY3J0
Yy0+cGlwZSwgaSkpOworCQlzaXplID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgU0tMX1BTX1dJ
Tl9TWihjcnRjLT5waXBlLCBpKSk7CisKKwkJaWxrX2dldF9wZml0X3Bvc19zaXplKGNydGNfc3Rh
dGUsIHBvcywgc2l6ZSk7CisKIAkJc2NhbGVyX3N0YXRlLT5zY2FsZXJzW2ldLmluX3VzZSA9IHRy
dWU7CiAJCWJyZWFrOwogCX0KQEAgLTEwNTcwLDE3ICsxMDU4NywxOCBAQCBzdGF0aWMgdm9pZCBp
bGtfZ2V0X3BmaXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQog
ewogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51
YXBpLmNydGMpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUo
Y3J0Yy0+YmFzZS5kZXYpOwotCXUzMiB0bXA7CisJdTMyIGN0bCwgcG9zLCBzaXplOwogCi0JdG1w
ID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgUEZfQ1RMKGNydGMtPnBpcGUpKTsKLQlpZiAoKHRt
cCAmIFBGX0VOQUJMRSkgPT0gMCkKKwljdGwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQRl9D
VEwoY3J0Yy0+cGlwZSkpOworCWlmICgoY3RsICYgUEZfRU5BQkxFKSA9PSAwKQogCQlyZXR1cm47
CiAKIAljcnRjX3N0YXRlLT5wY2hfcGZpdC5lbmFibGVkID0gdHJ1ZTsKLQljcnRjX3N0YXRlLT5w
Y2hfcGZpdC5wb3MgPQotCQlpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQRl9XSU5fUE9TKGNydGMt
PnBpcGUpKTsKLQljcnRjX3N0YXRlLT5wY2hfcGZpdC5zaXplID0KLQkJaW50ZWxfZGVfcmVhZChk
ZXZfcHJpdiwgUEZfV0lOX1NaKGNydGMtPnBpcGUpKTsKKworCXBvcyA9IGludGVsX2RlX3JlYWQo
ZGV2X3ByaXYsIFBGX1dJTl9QT1MoY3J0Yy0+cGlwZSkpOworCXNpemUgPSBpbnRlbF9kZV9yZWFk
KGRldl9wcml2LCBQRl9XSU5fU1ooY3J0Yy0+cGlwZSkpOworCisJaWxrX2dldF9wZml0X3Bvc19z
aXplKGNydGNfc3RhdGUsIHBvcywgc2l6ZSk7CiAKIAkvKgogCSAqIFdlIGN1cnJlbnRseSBkbyBu
b3QgZnJlZSBhc3NpZ25lbWVudHMgb2YgcGFuZWwgZml0dGVycyBvbgpAQCAtMTA1ODgsNyArMTA2
MDYsNyBAQCBzdGF0aWMgdm9pZCBpbGtfZ2V0X3BmaXRfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQogCSAqIGRpZmZlcmVudGlhdGVzIHRoZW0pIHNvIGp1c3QgV0FS
TiBhYm91dCB0aGlzIGNhc2UgZm9yIG5vdy4KIAkgKi8KIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYt
PmRybSwgSVNfR0VOKGRldl9wcml2LCA3KSAmJgotCQkgICAgKHRtcCAmIFBGX1BJUEVfU0VMX01B
U0tfSVZCKSAhPSBQRl9QSVBFX1NFTF9JVkIoY3J0Yy0+cGlwZSkpOworCQkgICAgKGN0bCAmIFBG
X1BJUEVfU0VMX01BU0tfSVZCKSAhPSBQRl9QSVBFX1NFTF9JVkIoY3J0Yy0+cGlwZSkpOwogfQog
CiBzdGF0aWMgYm9vbCBpbGtfZ2V0X3BpcGVfY29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LApAQCAtMTMwMzYsOSArMTMwNTQsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29u
ZmlnKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAkJCSAgICBw
aXBlX2NvbmZpZy0+Z21jaF9wZml0Lmx2ZHNfYm9yZGVyX2JpdHMpOwogCWVsc2UKIAkJZHJtX2Ri
Z19rbXMoJmRldl9wcml2LT5kcm0sCi0JCQkgICAgInBjaCBwZml0OiBwb3M6IDB4JTA4eCwgc2l6
ZTogMHglMDh4LCAlcywgZm9yY2UgdGhydTogJXNcbiIsCi0JCQkgICAgcGlwZV9jb25maWctPnBj
aF9wZml0LnBvcywKLQkJCSAgICBwaXBlX2NvbmZpZy0+cGNoX3BmaXQuc2l6ZSwKKwkJCSAgICAi
cGNoIHBmaXQ6ICIgRFJNX1JFQ1RfRk1UICIsICVzLCBmb3JjZSB0aHJ1OiAlc1xuIiwKKwkJCSAg
ICBEUk1fUkVDVF9BUkcoJnBpcGVfY29uZmlnLT5wY2hfcGZpdC5kc3QpLAogCQkJICAgIGVuYWJs
ZWRkaXNhYmxlZChwaXBlX2NvbmZpZy0+cGNoX3BmaXQuZW5hYmxlZCksCiAJCQkgICAgeWVzbm8o
cGlwZV9jb25maWctPnBjaF9wZml0LmZvcmNlX3RocnUpKTsKIApAQCAtMTM3ODAsOCArMTM3OTcs
MTAgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3VycmVudF9jb25maWcsCiAKIAkJUElQRV9DT05GX0NIRUNLX0JPT0wocGNoX3BmaXQu
ZW5hYmxlZCk7CiAJCWlmIChjdXJyZW50X2NvbmZpZy0+cGNoX3BmaXQuZW5hYmxlZCkgewotCQkJ
UElQRV9DT05GX0NIRUNLX1gocGNoX3BmaXQucG9zKTsKLQkJCVBJUEVfQ09ORl9DSEVDS19YKHBj
aF9wZml0LnNpemUpOworCQkJUElQRV9DT05GX0NIRUNLX0kocGNoX3BmaXQuZHN0LngxKTsKKwkJ
CVBJUEVfQ09ORl9DSEVDS19JKHBjaF9wZml0LmRzdC55MSk7CisJCQlQSVBFX0NPTkZfQ0hFQ0tf
SShwY2hfcGZpdC5kc3QueDIpOworCQkJUElQRV9DT05GX0NIRUNLX0kocGNoX3BmaXQuZHN0Lnky
KTsKIAkJfQogCiAJCVBJUEVfQ09ORl9DSEVDS19JKHNjYWxlcl9zdGF0ZS5zY2FsZXJfaWQpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aAppbmRleCBiYThjMDgxNDVjODguLmRjNzVmMjZmNjBkZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTk3NCw4ICs5NzQs
NyBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7CiAKIAkvKiBQYW5lbCBmaXR0ZXIgcGxhY2Vt
ZW50IGFuZCBzaXplIGZvciBJcm9ubGFrZSsgKi8KIAlzdHJ1Y3QgewotCQl1MzIgcG9zOwotCQl1
MzIgc2l6ZTsKKwkJc3RydWN0IGRybV9yZWN0IGRzdDsKIAkJYm9vbCBlbmFibGVkOwogCQlib29s
IGZvcmNlX3RocnU7CiAJfSBwY2hfcGZpdDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcGFuZWwuYwppbmRleCBiY2QyY2MxYWJhOTAuLjNlMzcwODg4ZWNlZiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wYW5lbC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuYwpAQCAtMTgyLDEzICsxODIsMTMg
QEAgaW50ZWxfcGNoX3BhbmVsX2ZpdHRpbmcoc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGMs
CiAJCQlpbnQgZml0dGluZ19tb2RlKQogewogCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2Rl
ICphZGp1c3RlZF9tb2RlID0gJnBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlOwotCWludCB4
ID0gMCwgeSA9IDAsIHdpZHRoID0gMCwgaGVpZ2h0ID0gMDsKKwlpbnQgeCwgeSwgd2lkdGgsIGhl
aWdodDsKIAogCS8qIE5hdGl2ZSBtb2RlcyBkb24ndCBuZWVkIGZpdHRpbmcgKi8KIAlpZiAoYWRq
dXN0ZWRfbW9kZS0+Y3J0Y19oZGlzcGxheSA9PSBwaXBlX2NvbmZpZy0+cGlwZV9zcmNfdyAmJgog
CSAgICBhZGp1c3RlZF9tb2RlLT5jcnRjX3ZkaXNwbGF5ID09IHBpcGVfY29uZmlnLT5waXBlX3Ny
Y19oICYmCiAJICAgIHBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0ICE9IElOVEVMX09VVFBVVF9G
T1JNQVRfWUNCQ1I0MjApCi0JCWdvdG8gZG9uZTsKKwkJcmV0dXJuOwogCiAJc3dpdGNoIChmaXR0
aW5nX21vZGUpIHsKIAljYXNlIERSTV9NT0RFX1NDQUxFX0NFTlRFUjoKQEAgLTIzNCwxNCArMjM0
LDEzIEBAIGludGVsX3BjaF9wYW5lbF9maXR0aW5nKHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9j
cnRjLAogCQlicmVhazsKIAogCWRlZmF1bHQ6Ci0JCVdBUk4oMSwgImJhZCBwYW5lbCBmaXQgbW9k
ZTogJWRcbiIsIGZpdHRpbmdfbW9kZSk7CisJCU1JU1NJTkdfQ0FTRShmaXR0aW5nX21vZGUpOwog
CQlyZXR1cm47CiAJfQogCi1kb25lOgotCXBpcGVfY29uZmlnLT5wY2hfcGZpdC5wb3MgPSAoeCA8
PCAxNikgfCB5OwotCXBpcGVfY29uZmlnLT5wY2hfcGZpdC5zaXplID0gKHdpZHRoIDw8IDE2KSB8
IGhlaWdodDsKLQlwaXBlX2NvbmZpZy0+cGNoX3BmaXQuZW5hYmxlZCA9IHBpcGVfY29uZmlnLT5w
Y2hfcGZpdC5zaXplICE9IDA7CisJZHJtX3JlY3RfaW5pdCgmcGlwZV9jb25maWctPnBjaF9wZml0
LmRzdCwKKwkJICAgICAgeCwgeSwgd2lkdGgsIGhlaWdodCk7CisJcGlwZV9jb25maWctPnBjaF9w
Zml0LmVuYWJsZWQgPSB0cnVlOwogfQogCiBzdGF0aWMgdm9pZAotLSAKMi4yNC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
