Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 831CA381572
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 05:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E566F4DC;
	Sat, 15 May 2021 03:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD9C56F4D3
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 May 2021 03:10:43 +0000 (UTC)
IronPort-SDR: SgbA7FhlR9gtnPr+8KXv5xHrn2xd9Ed53VDjmH2wOMBxR984y/+OUHEhF0CEBrKpkfMuNXE/Xg
 3kXqdmz8t5og==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="187383711"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="187383711"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:43 -0700
IronPort-SDR: +mxLN7Yxc3guzuUodHp3RgYcaVVUM+PfB/ydT5UkCs0sFNNoXbSQt/6GBeIrDu730JGiRikj90
 gtmAPXnFIrww==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="392901213"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 20:10:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 20:10:30 -0700
Message-Id: <20210515031035.2561658-19-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210515031035.2561658-1-matthew.d.roper@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 18/23] drm/i915/display: Introduce new
 intel_psr_pause/resume function
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

RnJvbTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgoKVGhpcyBp
bnRyb2R1Y2VzIHRoZSBmb2xsb3dpbmcgZnVuY3Rpb24gdGhhdCBjYW4gZW5hYmxlIGFuZCBkaXNh
YmxlIHBzcgp3aXRob3V0IGludGVsX2NydGNfc3RhdGUvZHJtX2Nvbm5lY3Rvcl9zdGF0ZSB3aGVu
IGludGVsX3BzciBpcyBhbHJlYWR5CmVuYWJsZWQgd2l0aCBjdXJyZW50IGludGVsX2NydGNfc3Rh
dGUgYW5kIGRybV9jb25uZWN0b3Jfc3RhdGUgaW5mb3JtYXRpb24uCgotIGludGVsX3Bzcl9wYXVz
ZSgpOiBQYXVzZSBjdXJyZW50IFBTUi4gaXQgZGVhY3RpdmF0ZXMgY3VycmVudCBwc3Igc3RhdGUu
Ci0gaW50ZWxfcHNyX3Jlc3VtZSgpOiBSZXN1bWUgcGF1c2VkIFBTUiB3aXRob3V0IGludGVsX2Ny
dGNfc3RhdGUgYW5kCiAgICAgICAgICAgICAgICAgICAgICBkcm1fY29ubmVjdG9yX3N0YXRlLiBJ
dCBhY3RpdmF0ZXMgcGF1c2VkIHBzciBzdGF0ZS4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xh
di5saXNvdnNraXlAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5
ZW9uZy5tdW5AaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPgotLS0KIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgICAgICB8IDkzICsrKysrKysrKysrKysrKystLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmggICAgICB8ICAyICsKIDMgZmlsZXMgY2hhbmdlZCwgODIgaW5zZXJ0
aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCBiOGQxZjcwMmQ4MDguLmVlN2NiZGQ3
ZGI4NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgKQEAgLTE0ODIsNiArMTQ4Miw3IEBAIHN0cnVjdCBpbnRlbF9wc3IgewogCWJv
b2wgc2lua19zdXBwb3J0OwogCWJvb2wgc291cmNlX3N1cHBvcnQ7CiAJYm9vbCBlbmFibGVkOwor
CWJvb2wgcGF1c2VkOwogCWVudW0gcGlwZSBwaXBlOwogCWVudW0gdHJhbnNjb2RlciB0cmFuc2Nv
ZGVyOwogCWJvb2wgYWN0aXZlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMKaW5kZXggNGE2M2QxMDg3NmNlLi5kNGRmM2Y1ZTc5MTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtMTA2MCwzNCArMTA2MCwyMyBAQCBzdGF0aWMgYm9v
bCBwc3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJ
cmV0dXJuIHRydWU7CiB9CiAKLXN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCi0JCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLAotCQkJCSAgICBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZSkKK3N0YXRpYyB2b2lkIF9pbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAorCQkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQgPSBkcF90b19kaWdfcG9ydChpbnRlbF9kcCk7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CiAJc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIgPSAmZGlnX3BvcnQtPmJhc2U7Ci0JdTMyIHZhbDsKIAogCWRybV9XQVJOX09O
KCZkZXZfcHJpdi0+ZHJtLCBpbnRlbF9kcC0+cHNyLmVuYWJsZWQpOwogCi0JaW50ZWxfZHAtPnBz
ci5wc3IyX2VuYWJsZWQgPSBjcnRjX3N0YXRlLT5oYXNfcHNyMjsKIAlpbnRlbF9kcC0+cHNyLmJ1
c3lfZnJvbnRidWZmZXJfYml0cyA9IDA7Ci0JaW50ZWxfZHAtPnBzci5waXBlID0gdG9faW50ZWxf
Y3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpLT5waXBlOwotCWludGVsX2RwLT5wc3IudHJhbnNj
b2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOwotCS8qIERDNS9EQzYgcmVxdWlyZXMg
YXQgbGVhc3QgNiBpZGxlIGZyYW1lcyAqLwotCXZhbCA9IHVzZWNzX3RvX2ppZmZpZXMoaW50ZWxf
Z2V0X2ZyYW1lX3RpbWVfdXMoY3J0Y19zdGF0ZSkgKiA2KTsKLQlpbnRlbF9kcC0+cHNyLmRjM2Nv
X2V4aXRfZGVsYXkgPSB2YWw7Ci0JaW50ZWxfZHAtPnBzci5kYzNjb19leGl0bGluZSA9IGNydGNf
c3RhdGUtPmRjM2NvX2V4aXRsaW5lOwotCWludGVsX2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5h
YmxlZCA9IGNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaDsKIAogCWlmICghcHNyX2lu
dGVycnVwdF9lcnJvcl9jaGVjayhpbnRlbF9kcCkpCiAJCXJldHVybjsKIAogCWRybV9kYmdfa21z
KCZkZXZfcHJpdi0+ZHJtLCAiRW5hYmxpbmcgUFNSJXNcbiIsCiAJCSAgICBpbnRlbF9kcC0+cHNy
LnBzcjJfZW5hYmxlZCA/ICIyIiA6ICIxIik7Ci0JaW50ZWxfZHBfY29tcHV0ZV9wc3JfdnNjX3Nk
cChpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSwKLQkJCQkgICAgICZpbnRlbF9kcC0+
cHNyLnZzYyk7CisKIAlpbnRlbF93cml0ZV9kcF92c2Nfc2RwKGVuY29kZXIsIGNydGNfc3RhdGUs
ICZpbnRlbF9kcC0+cHNyLnZzYyk7CiAJaW50ZWxfcHNyX2VuYWJsZV9zaW5rKGludGVsX2RwKTsK
IAlpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShpbnRlbF9kcCk7CkBAIC0xMDk2LDYgKzEwODUsMjgg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCwKIAlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxfZHApOwogfQogCitzdGF0aWMgdm9p
ZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAorCQkJ
CSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkgICAg
Y29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCit7CisJdTMyIHZh
bDsKKworCWludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkID0gY3J0Y19zdGF0ZS0+aGFzX3BzcjI7
CisJaW50ZWxfZHAtPnBzci5waXBlID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNy
dGMpLT5waXBlOworCWludGVsX2RwLT5wc3IudHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90
cmFuc2NvZGVyOworCS8qIERDNS9EQzYgcmVxdWlyZXMgYXQgbGVhc3QgNiBpZGxlIGZyYW1lcyAq
LworCXZhbCA9IHVzZWNzX3RvX2ppZmZpZXMoaW50ZWxfZ2V0X2ZyYW1lX3RpbWVfdXMoY3J0Y19z
dGF0ZSkgKiA2KTsKKwlpbnRlbF9kcC0+cHNyLmRjM2NvX2V4aXRfZGVsYXkgPSB2YWw7CisJaW50
ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkID0gY3J0Y19zdGF0ZS0+ZW5hYmxlX3Bz
cjJfc2VsX2ZldGNoOworCWludGVsX2RwLT5wc3IuZGMzY29fZXhpdGxpbmUgPSBjcnRjX3N0YXRl
LT5kYzNjb19leGl0bGluZTsKKwlpbnRlbF9kcC0+cHNyLnBhdXNlZCA9IGZhbHNlOworCisJaW50
ZWxfZHBfY29tcHV0ZV9wc3JfdnNjX3NkcChpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgY29ubl9zdGF0
ZSwKKwkJCQkgICAgICZpbnRlbF9kcC0+cHNyLnZzYyk7CisKKwlfaW50ZWxfcHNyX2VuYWJsZV9s
b2NrZWQoaW50ZWxfZHAsIGNydGNfc3RhdGUpOworfQorCiAvKioKICAqIGludGVsX3Bzcl9lbmFi
bGUgLSBFbmFibGUgUFNSCiAgKiBAaW50ZWxfZHA6IEludGVsIERQCkBAIC0xMjMzLDYgKzEyNDQs
NjAgQEAgdm9pZCBpbnRlbF9wc3JfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAog
CWNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmaW50ZWxfZHAtPnBzci5kYzNjb193b3JrKTsKIH0K
IAorLyoqCisgKiBpbnRlbF9wc3JfcGF1c2UgLSBQYXVzZSBQU1IKKyAqIEBpbnRlbF9kcDogSW50
ZWwgRFAKKyAqCisgKiBUaGlzIGZ1bmN0aW9uIG5lZWQgdG8gYmUgY2FsbGVkIGFmdGVyIGVuYWJs
aW5nIHBzci4KKyAqLwordm9pZCBpbnRlbF9wc3JfcGF1c2Uoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkKK3sKKwlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsKKworCWlm
ICghQ0FOX1BTUihpbnRlbF9kcCkpCisJCXJldHVybjsKKworCW11dGV4X2xvY2soJnBzci0+bG9j
ayk7CisKKwlpZiAoIXBzci0+YWN0aXZlKSB7CisJCW11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsK
KwkJcmV0dXJuOworCX0KKworCWludGVsX3Bzcl9leGl0KGludGVsX2RwKTsKKwlwc3ItPnBhdXNl
ZCA9IHRydWU7CisKKwltdXRleF91bmxvY2soJnBzci0+bG9jayk7CisKKwljYW5jZWxfd29ya19z
eW5jKCZwc3ItPndvcmspOworCWNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmcHNyLT5kYzNjb193
b3JrKTsKK30KKworLyoqCisgKiBpbnRlbF9wc3JfcmVzdW1lIC0gUmVzdW1lIFBTUgorICogQGlu
dGVsX2RwOiBJbnRlbCBEUAorICoKKyAqIFRoaXMgZnVuY3Rpb24gbmVlZCB0byBiZSBjYWxsZWQg
YWZ0ZXIgcGF1c2luZyBwc3IuCisgKi8KK3ZvaWQgaW50ZWxfcHNyX3Jlc3VtZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQoreworCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+
cHNyOworCisJaWYgKCFDQU5fUFNSKGludGVsX2RwKSkKKwkJcmV0dXJuOworCisJbXV0ZXhfbG9j
aygmcHNyLT5sb2NrKTsKKworCWlmICghcHNyLT5wYXVzZWQpCisJCWdvdG8gdW5sb2NrOworCisJ
cHNyLT5wYXVzZWQgPSBmYWxzZTsKKwlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxfZHApOworCit1
bmxvY2s6CisJbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOworfQorCiBzdGF0aWMgdm9pZCBwc3Jf
Zm9yY2VfaHdfdHJhY2tpbmdfZXhpdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogewogCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgKaW5kZXggZTNkYjg1ZTk3ZjRj
Li42NDE1MjFiMTAxYzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
aApAQCAtNTEsNSArNTEsNyBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0
Y2goc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCQkJY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZSAqcGxhbmVfc3RhdGUsCiAJCQkJCWludCBjb2xvcl9wbGFuZSk7Cit2b2lkIGludGVsX3Bzcl9w
YXVzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKK3ZvaWQgaW50ZWxfcHNyX3Jlc3VtZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKIAogI2VuZGlmIC8qIF9fSU5URUxfUFNSX0hfXyAq
LwotLSAKMi4yNS40CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
