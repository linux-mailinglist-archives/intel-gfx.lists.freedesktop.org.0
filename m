Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F37D36BE
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 03:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81C006EB8E;
	Fri, 11 Oct 2019 01:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E3BB6E0D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 01:09:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 18:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,282,1566889200"; d="scan'208";a="394243448"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.11.83])
 by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2019 18:09:19 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 18:09:03 -0700
Message-Id: <20191011010907.103309-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011010907.103309-1-lucas.demarchi@intel.com>
References: <20191011010907.103309-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: fix port checks for MST support
 on gen >= 11
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Qm90aCBJY2UgTGFrZSBhbmQgRWxraGFydCBMYWtlIChnZW4gMTEpIHN1cHBvcnQgTVNUIG9uIGFs
bCBleHRlcm5hbApjb25uZWN0aW9ucyBleGNlcHQgRERJIEEuIFRpZ2VyIExha2UgKGdlbiAxMikg
c3VwcG9ydHMgb24gYWxsIGV4dGVybmFsCmNvbm5lY3Rpb25zLgoKTW92ZSB0aGUgY2hlY2sgdG8g
aGFwcGVuIGluc2lkZSBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0KCkgYW5kIGFkZApzcGVjaWZp
YyBwbGF0Zm9ybSBjaGVja3MuCgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMgICAgIHwgIDcgKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYyB8IDE1ICsrKysrKysrKysrKystLQogMiBmaWxlcyBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwppbmRleCAwZTQ1YzYxZDczMzEuLjM0OGEwOTg5MDYxMSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNzI2OCwxMSArNzI2OCw4IEBAIGludGVs
X2RwX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19w
b3J0LAogCQlpbnRlbF9jb25uZWN0b3ItPmdldF9od19zdGF0ZSA9IGludGVsX2Nvbm5lY3Rvcl9n
ZXRfaHdfc3RhdGU7CiAKIAkvKiBpbml0IE1TVCBvbiBwb3J0cyB0aGF0IGNhbiBzdXBwb3J0IGl0
ICovCi0JaWYgKEhBU19EUF9NU1QoZGV2X3ByaXYpICYmICFpbnRlbF9kcF9pc19lZHAoaW50ZWxf
ZHApICYmCi0JICAgIChwb3J0ID09IFBPUlRfQiB8fCBwb3J0ID09IFBPUlRfQyB8fAotCSAgICAg
cG9ydCA9PSBQT1JUX0QgfHwgcG9ydCA9PSBQT1JUX0YpKQotCQlpbnRlbF9kcF9tc3RfZW5jb2Rl
cl9pbml0KGludGVsX2RpZ19wb3J0LAotCQkJCQkgIGludGVsX2Nvbm5lY3Rvci0+YmFzZS5iYXNl
LmlkKTsKKwlpbnRlbF9kcF9tc3RfZW5jb2Rlcl9pbml0KGludGVsX2RpZ19wb3J0LAorCQkJCSAg
aW50ZWxfY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQpOwogCiAJaWYgKCFpbnRlbF9lZHBfaW5pdF9j
b25uZWN0b3IoaW50ZWxfZHAsIGludGVsX2Nvbm5lY3RvcikpIHsKIAkJaW50ZWxfZHBfYXV4X2Zp
bmkoaW50ZWxfZHApOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0
LmMKaW5kZXggYzJiYmJhMWVmZmMxLi44ZGNiNTc4ZTZkMDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwpAQCAtNjU0LDE1ICs2NTQsMjYgQEAgaW50ZWxf
ZHBfbXN0X2VuY29kZXJfYWN0aXZlX2xpbmtzKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmlu
dGVsX2RpZ19wb3J0KQogdm9pZAogaW50ZWxfZHBfbXN0X2VuY29kZXJfaW5pdChzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgaW50IGNvbm5fYmFzZV9pZCkKIHsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoaW50ZWxfZGlnX3BvcnQtPmJh
c2UuYmFzZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSAmaW50ZWxfZGlnX3Bv
cnQtPmRwOwotCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5i
YXNlLmRldjsKKwllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7CiAJ
aW50IHJldDsKIAorCWlmICghSEFTX0RQX01TVChpOTE1KSB8fCBpbnRlbF9kcF9pc19lZHAoaW50
ZWxfZHApKQorCQlyZXR1cm47CisKKwlpZiAoSU5URUxfR0VOKGk5MTUpID09IDExICYmIHBvcnQg
PT0gUE9SVF9BKQorCQlyZXR1cm47CisKKwlpZiAoSU5URUxfR0VOKGk5MTUpIDwgMTEgJiYKKwkg
ICAgcG9ydCAhPSBQT1JUX0IgJiYgcG9ydCAhPSBQT1JUX0MgJiYgcG9ydCAhPSBQT1JUX0QgJiYg
cG9ydCAhPSBQT1JUX0YpCisJCXJldHVybjsKKwogCWludGVsX2RwLT5tc3RfbWdyLmNicyA9ICZt
c3RfY2JzOwogCiAJLyogY3JlYXRlIGVuY29kZXJzICovCiAJaW50ZWxfZHBfY3JlYXRlX2Zha2Vf
bXN0X2VuY29kZXJzKGludGVsX2RpZ19wb3J0KTsKLQlyZXQgPSBkcm1fZHBfbXN0X3RvcG9sb2d5
X21ncl9pbml0KCZpbnRlbF9kcC0+bXN0X21nciwgZGV2LAorCXJldCA9IGRybV9kcF9tc3RfdG9w
b2xvZ3lfbWdyX2luaXQoJmludGVsX2RwLT5tc3RfbWdyLCAmaTkxNS0+ZHJtLAogCQkJCQkgICAm
aW50ZWxfZHAtPmF1eCwgMTYsIDMsIGNvbm5fYmFzZV9pZCk7CiAJaWYgKHJldCkgewogCQlpbnRl
bF9kcC0+Y2FuX21zdCA9IGZhbHNlOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
