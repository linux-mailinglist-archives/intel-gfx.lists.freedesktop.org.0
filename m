Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FB8127F4A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 16:30:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E416E0C9;
	Fri, 20 Dec 2019 15:30:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B896E0C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 15:30:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 07:30:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="206570977"
Received: from kitaracr-mobl.amr.corp.intel.com (HELO
 josouza-MOBL.amr.corp.intel.com) ([10.252.207.149])
 by orsmga007.jf.intel.com with ESMTP; 20 Dec 2019 07:30:05 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 07:29:49 -0800
Message-Id: <20191220152954.83276-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191220152954.83276-1-jose.souza@intel.com>
References: <20191220152954.83276-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 2/7] drm/i915/display: Share
 intel_connector_needs_modeset()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

aW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVzZXQoKSB3aWxsIGJlIHVzZWQgb3V0c2lkZSBvZgpp
bnRlbF9kaXNwbGF5LmMgaW4gYSBmdXR1cmUgcGF0Y2ggc28gaXQgd291bGQgb25seSBiZSBuZWNl
c3NhcnkgdG8KcmVtb3ZlIHRoZSBzdGF0ZSBhbmQgYWRkIHRoZSBwcm90b3R5cGUgdG8gdGhlIGhl
YWRlciBmaWxlLgoKQnV0IHdoaWxlIGF0IGl0LCBJIHNpbXBsaWZpZWQgdGhlIGFyZ3VtZW50cyBh
bmQgbW92ZWQgaXQgdG8gYSBiZXR0ZXIKcGxhY2UgaW50ZWxfYXRvbWljLmMuCgpObyBiZWhhdmlv
ciBjaGFuZ2VzIGludGVuZGVkIGhlcmUuCgp2MzoKLSByZW1vdmVkIGRpZ2l0YWwgZnJvbSBleHBv
cnRlZCB2ZXJzaW9uIG9mIGludGVsX2Nvbm5lY3Rvcl9uZWVkc19tb2Rlc2V0Ci0gcm9sbGJhY2sg
Y29ubmVjdG9yIHRvIGRybSB0eXBlCgp2NDoKLSBSZW5hbWVkIG5ld19jb25uZWN0b3Jfc3RhdGUg
dG8gbmV3X2Nvbm5fc3RhdGUKLSBHb2luZyBiYWNrIHRvIGRybV9jb25uZWN0b3Jfc3RhdGUgaW4K
aW50ZWxfZW5jb2RlcnNfdXBkYXRlX3ByZXBhcmUvY29tcGxldGUgYXMgd2UgYWxzbyBoYXZlCmlu
dGVsX3R2X2Nvbm5lY3Rvcl9zdGF0ZQoKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljLmMgIHwgMTggKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljLmggIHwgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgfCA0NSArKysrKystLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAzNCBp
bnNlcnRpb25zKCspLCAzMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWMuYwppbmRleCBmZDAwMjZmYzM2MTguLmI3ZGRhMThiNmYyOSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jCkBAIC0xNzQsNiAr
MTc0LDI0IEBAIGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCXJldHVybiAmc3RhdGUtPmJhc2U7CiB9CiAKKy8q
KgorICogaW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVzZXQgLSBjaGVjayBpZiBjb25uZWN0b3Ig
bmVlZHMgYSBtb2Rlc2V0CisgKi8KK2Jvb2wKK2ludGVsX2Nvbm5lY3Rvcl9uZWVkc19tb2Rlc2V0
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAorCQkJICAgICAgc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm5lY3RvcikKK3sKKwljb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0
ZSAqb2xkX2Nvbm5fc3RhdGUsICpuZXdfY29ubl9zdGF0ZTsKKworCW9sZF9jb25uX3N0YXRlID0g
ZHJtX2F0b21pY19nZXRfb2xkX2Nvbm5lY3Rvcl9zdGF0ZSgmc3RhdGUtPmJhc2UsIGNvbm5lY3Rv
cik7CisJbmV3X2Nvbm5fc3RhdGUgPSBkcm1fYXRvbWljX2dldF9uZXdfY29ubmVjdG9yX3N0YXRl
KCZzdGF0ZS0+YmFzZSwgY29ubmVjdG9yKTsKKworCXJldHVybiBvbGRfY29ubl9zdGF0ZS0+Y3J0
YyAhPSBuZXdfY29ubl9zdGF0ZS0+Y3J0YyB8fAorCSAgICAgICAobmV3X2Nvbm5fc3RhdGUtPmNy
dGMgJiYKKwkJZHJtX2F0b21pY19jcnRjX25lZWRzX21vZGVzZXQoZHJtX2F0b21pY19nZXRfbmV3
X2NydGNfc3RhdGUoJnN0YXRlLT5iYXNlLAorCQkJCQkJCQkJICAgIG5ld19jb25uX3N0YXRlLT5j
cnRjKSkpOworfQorCiAvKioKICAqIGludGVsX2NydGNfZHVwbGljYXRlX3N0YXRlIC0gZHVwbGlj
YXRlIGNydGMgc3RhdGUKICAqIEBjcnRjOiBkcm0gY3J0YwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmgKaW5kZXggN2I0OTYyMzQxOWJhLi5hN2QxYTg1NzZjNDgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuaApAQCAtMzIs
NiArMzIsOCBAQCBpbnQgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfYXRvbWljX2NoZWNrKHN0cnVj
dCBkcm1fY29ubmVjdG9yICpjb25uLAogCQkJCQkgc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0
YXRlKTsKIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICoKIGludGVsX2RpZ2l0YWxfY29ubmVj
dG9yX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsKK2Jv
b2wgaW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsCisJCQkJICAgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7CiAKIHN0
cnVjdCBkcm1fY3J0Y19zdGF0ZSAqaW50ZWxfY3J0Y19kdXBsaWNhdGVfc3RhdGUoc3RydWN0IGRy
bV9jcnRjICpjcnRjKTsKIHZvaWQgaW50ZWxfY3J0Y19kZXN0cm95X3N0YXRlKHN0cnVjdCBkcm1f
Y3J0YyAqY3J0YywKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggMGVmOTUwMjAzZDg4Li5mYzc3ODI5ZWE5NTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC02MTY2LDM5ICs2MTY2LDIzIEBAIGlu
dGVsX2Nvbm5lY3Rvcl9wcmltYXJ5X2VuY29kZXIoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29u
bmVjdG9yKQogCXJldHVybiBlbmNvZGVyOwogfQogCi1zdGF0aWMgYm9vbAotaW50ZWxfY29ubmVj
dG9yX25lZWRzX21vZGVzZXQoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCi0JCQkg
ICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX2Nvbm5fc3RhdGUsCi0J
CQkgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqbmV3X2Nvbm5fc3RhdGUp
Ci17Ci0Jc3RydWN0IGludGVsX2NydGMgKm9sZF9jcnRjID0gb2xkX2Nvbm5fc3RhdGUtPmNydGMg
PwotCQkJCSAgICAgIHRvX2ludGVsX2NydGMob2xkX2Nvbm5fc3RhdGUtPmNydGMpIDogTlVMTDsK
LQlzdHJ1Y3QgaW50ZWxfY3J0YyAqbmV3X2NydGMgPSBuZXdfY29ubl9zdGF0ZS0+Y3J0YyA/Ci0J
CQkJICAgICAgdG9faW50ZWxfY3J0YyhuZXdfY29ubl9zdGF0ZS0+Y3J0YykgOiBOVUxMOwotCi0J
cmV0dXJuIG5ld19jcnRjICE9IG9sZF9jcnRjIHx8Ci0JICAgICAgIChuZXdfY3J0YyAmJgotCQlu
ZWVkc19tb2Rlc2V0KGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIG5ld19j
cnRjKSkpOwotfQotCiBzdGF0aWMgdm9pZCBpbnRlbF9lbmNvZGVyc191cGRhdGVfcHJlcGFyZShz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKLQlzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
cl9zdGF0ZSAqb2xkX2Nvbm5fc3RhdGU7CiAJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5l
d19jb25uX3N0YXRlOwotCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uOworCXN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3I7CiAJaW50IGk7CiAKLQlmb3JfZWFjaF9vbGRuZXdfY29ubmVj
dG9yX2luX3N0YXRlKCZzdGF0ZS0+YmFzZSwgY29ubiwKLQkJCQkJICAgb2xkX2Nvbm5fc3RhdGUs
IG5ld19jb25uX3N0YXRlLCBpKSB7CisJZm9yX2VhY2hfbmV3X2Nvbm5lY3Rvcl9pbl9zdGF0ZSgm
c3RhdGUtPmJhc2UsIGNvbm5lY3RvciwgbmV3X2Nvbm5fc3RhdGUsCisJCQkJCWkpIHsKKwkJc3Ry
dWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yOwogCQlzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlcjsKIAkJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAKLQkJaWYgKCFpbnRl
bF9jb25uZWN0b3JfbmVlZHNfbW9kZXNldChzdGF0ZSwKLQkJCQkJCSAgIG9sZF9jb25uX3N0YXRl
LAotCQkJCQkJICAgbmV3X2Nvbm5fc3RhdGUpKQorCQlpZiAoIWludGVsX2Nvbm5lY3Rvcl9uZWVk
c19tb2Rlc2V0KHN0YXRlLCBjb25uZWN0b3IpKQogCQkJY29udGludWU7CiAKLQkJZW5jb2RlciA9
IGludGVsX2Nvbm5lY3Rvcl9wcmltYXJ5X2VuY29kZXIodG9faW50ZWxfY29ubmVjdG9yKGNvbm4p
KTsKKwkJaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7CisJ
CWVuY29kZXIgPSBpbnRlbF9jb25uZWN0b3JfcHJpbWFyeV9lbmNvZGVyKGludGVsX2Nvbm5lY3Rv
cik7CiAJCWlmICghZW5jb2Rlci0+dXBkYXRlX3ByZXBhcmUpCiAJCQljb250aW51ZTsKIApAQCAt
NjIxMCwyMiArNjE5NCwyMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmNvZGVyc191cGRhdGVfcHJl
cGFyZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAogc3RhdGljIHZvaWQgaW50
ZWxfZW5jb2RlcnNfdXBkYXRlX2NvbXBsZXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlKQogewotCXN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpvbGRfY29ubl9zdGF0ZTsKIAlz
dHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqbmV3X2Nvbm5fc3RhdGU7Ci0Jc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm47CisJc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKIAlpbnQg
aTsKIAotCWZvcl9lYWNoX29sZG5ld19jb25uZWN0b3JfaW5fc3RhdGUoJnN0YXRlLT5iYXNlLCBj
b25uLAotCQkJCQkgICBvbGRfY29ubl9zdGF0ZSwgbmV3X2Nvbm5fc3RhdGUsIGkpIHsKKwlmb3Jf
ZWFjaF9uZXdfY29ubmVjdG9yX2luX3N0YXRlKCZzdGF0ZS0+YmFzZSwgY29ubmVjdG9yLCBuZXdf
Y29ubl9zdGF0ZSwKKwkJCQkJaSkgeworCQlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9j
b25uZWN0b3I7CiAJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOwogCQlzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YzsKIAotCQlpZiAoIWludGVsX2Nvbm5lY3Rvcl9uZWVkc19tb2Rlc2V0KHN0
YXRlLAotCQkJCQkJICAgb2xkX2Nvbm5fc3RhdGUsCi0JCQkJCQkgICBuZXdfY29ubl9zdGF0ZSkp
CisJCWlmICghaW50ZWxfY29ubmVjdG9yX25lZWRzX21vZGVzZXQoc3RhdGUsIGNvbm5lY3Rvcikp
CiAJCQljb250aW51ZTsKIAotCQllbmNvZGVyID0gaW50ZWxfY29ubmVjdG9yX3ByaW1hcnlfZW5j
b2Rlcih0b19pbnRlbF9jb25uZWN0b3IoY29ubikpOworCQlpbnRlbF9jb25uZWN0b3IgPSB0b19p
bnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsKKwkJZW5jb2RlciA9IGludGVsX2Nvbm5lY3Rvcl9w
cmltYXJ5X2VuY29kZXIoaW50ZWxfY29ubmVjdG9yKTsKIAkJaWYgKCFlbmNvZGVyLT51cGRhdGVf
Y29tcGxldGUpCiAJCQljb250aW51ZTsKIAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
