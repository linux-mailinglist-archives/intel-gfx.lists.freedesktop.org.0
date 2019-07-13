Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C706776D
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 03:10:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CA456E3B8;
	Sat, 13 Jul 2019 01:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01D06E3AA
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 01:09:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 18:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,484,1557212400"; d="scan'208";a="341850963"
Received: from dhoyan-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.252.197.100])
 by orsmga005.jf.intel.com with ESMTP; 12 Jul 2019 18:09:47 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 18:09:38 -0700
Message-Id: <20190713010940.17711-21-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190713010940.17711-1-lucas.demarchi@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/22] drm/i915: Move MOCS setup to intel_mocs.c
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkhpZGUgdGhl
IGRldGFpbHMgb2YgTU9DUyBzZXR1cCBmcm9tIGk5MTVfZ2VtIGJ5IG1vdmluZyBib3RoIGN1cnJl
bnQgY2FsbHMKaW50byBvbmUgaW4gaW50ZWxfbW9jc19pbml0LgoKQ2M6IFN0dWFydCBTdW1tZXJz
IDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX21vY3MuYyB8IDE1ICsrKysrKysrKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbW9jcy5oIHwgIDMgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
ICAgICAgfCAgMyArLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgOCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKaW5kZXggMzY1ZDhmZjEx
ZjIzLi41Y2QxODc2OGI1ZGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX21vY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKQEAg
LTM5OSwxNCArMzk5LDEzIEBAIHZvaWQgaW50ZWxfbW9jc19pbml0X2VuZ2luZShzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCiAgKgogICogVGhpcyBmdW5jdGlvbiBpbml0aWFsaXplcyB0
aGUgTU9DUyBnbG9iYWwgcmVnaXN0ZXJzLgogICovCi12b2lkIGludGVsX21vY3NfaW5pdF9nbG9i
YWwoc3RydWN0IGludGVsX2d0ICpndCkKK3N0YXRpYyB2b2lkIGludGVsX21vY3NfaW5pdF9nbG9i
YWwoc3RydWN0IGludGVsX2d0ICpndCkKIHsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUg
PSBndC0+dW5jb3JlOwogCXN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxlIHRhYmxlOwogCXVuc2ln
bmVkIGludCBpbmRleDsKIAotCWlmICghSEFTX0dMT0JBTF9NT0NTX1JFR0lTVEVSUyhndC0+aTkx
NSkpCi0JCXJldHVybjsKKwlHRU1fQlVHX09OKCFIQVNfR0xPQkFMX01PQ1NfUkVHSVNURVJTKGd0
LT5pOTE1KSk7CiAKIAlpZiAoIWdldF9tb2NzX3NldHRpbmdzKGd0LCAmdGFibGUpKQogCQlyZXR1
cm47CkBAIC01NzUsNyArNTc0LDcgQEAgc3RhdGljIGludCBlbWl0X21vY3NfbDNjY190YWJsZShz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKICAqCiAgKiBSZXR1cm46IE5vdGhpbmcuCiAgKi8KLXZv
aWQgaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoc3RydWN0IGludGVsX2d0ICpndCkKK3N0YXRp
YyB2b2lkIGludGVsX21vY3NfaW5pdF9sM2NjX3RhYmxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7
CiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKIAlzdHJ1Y3QgZHJt
X2k5MTVfbW9jc190YWJsZSB0YWJsZTsKQEAgLTY1MywzICs2NTIsMTEgQEAgaW50IGludGVsX3Jj
c19jb250ZXh0X2luaXRfbW9jcyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAogCXJldHVybiAw
OwogfQorCit2b2lkIGludGVsX21vY3NfaW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQoreworCWlu
dGVsX21vY3NfaW5pdF9sM2NjX3RhYmxlKGd0KTsKKworCWlmIChIQVNfR0xPQkFMX01PQ1NfUkVH
SVNURVJTKGd0LT5pOTE1KSkKKwkJaW50ZWxfbW9jc19pbml0X2dsb2JhbChndCk7Cit9CmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgKaW5kZXggYWEzYTJkZjA3YzgyLi4yYzVjYmYyMTM4
MTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgKQEAgLTU1LDggKzU1LDcgQEAg
c3RydWN0IGludGVsX2VuZ2luZV9jczsKIHN0cnVjdCBpbnRlbF9ndDsKIAogaW50IGludGVsX3Jj
c19jb250ZXh0X2luaXRfbW9jcyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSk7Ci12b2lkIGludGVs
X21vY3NfaW5pdF9sM2NjX3RhYmxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwotdm9pZCBpbnRlbF9t
b2NzX2luaXRfZ2xvYmFsKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwordm9pZCBpbnRlbF9tb2NzX2lu
aXQoc3RydWN0IGludGVsX2d0ICpndCk7CiB2b2lkIGludGVsX21vY3NfaW5pdF9lbmdpbmUoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKIAogI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYwppbmRleCBkMjNlMTU2ZjY2NTkuLjc5ODBlZTliZjhhOCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jCkBAIC0xMjU0LDggKzEyNTQsNyBAQCBpbnQgaTkxNV9nZW1faW5pdF9odyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJZ290byBvdXQ7CiAJfQogCi0JaW50ZWxfbW9jc19p
bml0X2dsb2JhbChndCk7Ci0JaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoZ3QpOworCWludGVs
X21vY3NfaW5pdChndCk7CiAKIAlpbnRlbF9lbmdpbmVzX3NldF9zY2hlZHVsZXJfY2FwcyhpOTE1
KTsKIAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
