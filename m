Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E42C411BC15
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 19:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1BA6EBB2;
	Wed, 11 Dec 2019 18:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F926EBB3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 18:45:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 10:45:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,302,1571727600"; d="scan'208";a="216016726"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.8.163])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 10:45:28 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 10:45:17 -0800
Message-Id: <20191211184526.142413-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191211184526.142413-1-jose.souza@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 rebased 02/11] drm/i915: s/intel_crtc/crtc/
 in intel_crtc_init()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIGdldCByaWQgb2YgdGhlIHJlZHVuZGFudCBpbnRlbF8gcHJlZml4IG9uIG91ciB2YXJpYWJs
ZXMuCgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCAzMiArKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE2IGluc2Vy
dGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNjU1Nzk1OTRmMTNiLi4zYzNlZjYyOTFlYWIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNTc5MCwx
NCArMTU3OTAsMTQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fY3J0Y19mdW5jcyBpOHh4X2Ny
dGNfZnVuY3MgPSB7CiBzdGF0aWMgaW50IGludGVsX2NydGNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKQogewogCWNvbnN0IHN0cnVjdCBkcm1f
Y3J0Y19mdW5jcyAqZnVuY3M7Ci0Jc3RydWN0IGludGVsX2NydGMgKmludGVsX2NydGM7CisJc3Ry
dWN0IGludGVsX2NydGMgKmNydGM7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUgPSBOVUxMOwogCXN0cnVjdCBpbnRlbF9wbGFuZSAqcHJpbWFyeSA9IE5VTEw7CiAJc3RydWN0
IGludGVsX3BsYW5lICpjdXJzb3IgPSBOVUxMOwogCWludCBzcHJpdGUsIHJldDsKIAotCWludGVs
X2NydGMgPSBremFsbG9jKHNpemVvZigqaW50ZWxfY3J0YyksIEdGUF9LRVJORUwpOwotCWlmICgh
aW50ZWxfY3J0YykKKwljcnRjID0ga3phbGxvYyhzaXplb2YoKmNydGMpLCBHRlBfS0VSTkVMKTsK
KwlpZiAoIWNydGMpCiAJCXJldHVybiAtRU5PTUVNOwogCiAJY3J0Y19zdGF0ZSA9IGt6YWxsb2Mo
c2l6ZW9mKCpjcnRjX3N0YXRlKSwgR0ZQX0tFUk5FTCk7CkBAIC0xNTgwNSwxNSArMTU4MDUsMTUg
QEAgc3RhdGljIGludCBpbnRlbF9jcnRjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LCBlbnVtIHBpcGUgcGlwZSkKIAkJcmV0ID0gLUVOT01FTTsKIAkJZ290byBmYWlsOwog
CX0KLQlfX2RybV9hdG9taWNfaGVscGVyX2NydGNfcmVzZXQoJmludGVsX2NydGMtPmJhc2UsICZj
cnRjX3N0YXRlLT51YXBpKTsKLQlpbnRlbF9jcnRjLT5jb25maWcgPSBjcnRjX3N0YXRlOworCV9f
ZHJtX2F0b21pY19oZWxwZXJfY3J0Y19yZXNldCgmY3J0Yy0+YmFzZSwgJmNydGNfc3RhdGUtPnVh
cGkpOworCWNydGMtPmNvbmZpZyA9IGNydGNfc3RhdGU7CiAKIAlwcmltYXJ5ID0gaW50ZWxfcHJp
bWFyeV9wbGFuZV9jcmVhdGUoZGV2X3ByaXYsIHBpcGUpOwogCWlmIChJU19FUlIocHJpbWFyeSkp
IHsKIAkJcmV0ID0gUFRSX0VSUihwcmltYXJ5KTsKIAkJZ290byBmYWlsOwogCX0KLQlpbnRlbF9j
cnRjLT5wbGFuZV9pZHNfbWFzayB8PSBCSVQocHJpbWFyeS0+aWQpOworCWNydGMtPnBsYW5lX2lk
c19tYXNrIHw9IEJJVChwcmltYXJ5LT5pZCk7CiAKIAlmb3JfZWFjaF9zcHJpdGUoZGV2X3ByaXYs
IHBpcGUsIHNwcml0ZSkgewogCQlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOwpAQCAtMTU4MjMs
NyArMTU4MjMsNyBAQCBzdGF0aWMgaW50IGludGVsX2NydGNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKQogCQkJcmV0ID0gUFRSX0VSUihwbGFu
ZSk7CiAJCQlnb3RvIGZhaWw7CiAJCX0KLQkJaW50ZWxfY3J0Yy0+cGxhbmVfaWRzX21hc2sgfD0g
QklUKHBsYW5lLT5pZCk7CisJCWNydGMtPnBsYW5lX2lkc19tYXNrIHw9IEJJVChwbGFuZS0+aWQp
OwogCX0KIAogCWN1cnNvciA9IGludGVsX2N1cnNvcl9wbGFuZV9jcmVhdGUoZGV2X3ByaXYsIHBp
cGUpOwpAQCAtMTU4MzEsNyArMTU4MzEsNyBAQCBzdGF0aWMgaW50IGludGVsX2NydGNfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKQogCQlyZXQg
PSBQVFJfRVJSKGN1cnNvcik7CiAJCWdvdG8gZmFpbDsKIAl9Ci0JaW50ZWxfY3J0Yy0+cGxhbmVf
aWRzX21hc2sgfD0gQklUKGN1cnNvci0+aWQpOworCWNydGMtPnBsYW5lX2lkc19tYXNrIHw9IEJJ
VChjdXJzb3ItPmlkKTsKIAogCWlmIChIQVNfR01DSChkZXZfcHJpdikpIHsKIAkJaWYgKElTX0NI
RVJSWVZJRVcoZGV2X3ByaXYpIHx8CkBAIC0xNTg1MiwzMiArMTU4NTIsMzIgQEAgc3RhdGljIGlu
dCBpbnRlbF9jcnRjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVt
IHBpcGUgcGlwZSkKIAkJCWZ1bmNzID0gJmlsa19jcnRjX2Z1bmNzOwogCX0KIAotCXJldCA9IGRy
bV9jcnRjX2luaXRfd2l0aF9wbGFuZXMoJmRldl9wcml2LT5kcm0sICZpbnRlbF9jcnRjLT5iYXNl
LAorCXJldCA9IGRybV9jcnRjX2luaXRfd2l0aF9wbGFuZXMoJmRldl9wcml2LT5kcm0sICZjcnRj
LT5iYXNlLAogCQkJCQkmcHJpbWFyeS0+YmFzZSwgJmN1cnNvci0+YmFzZSwKIAkJCQkJZnVuY3Ms
ICJwaXBlICVjIiwgcGlwZV9uYW1lKHBpcGUpKTsKIAlpZiAocmV0KQogCQlnb3RvIGZhaWw7CiAK
LQlpbnRlbF9jcnRjLT5waXBlID0gcGlwZTsKKwljcnRjLT5waXBlID0gcGlwZTsKIAogCS8qIGlu
aXRpYWxpemUgc2hhcmVkIHNjYWxlcnMgKi8KLQlpbnRlbF9jcnRjX2luaXRfc2NhbGVycyhpbnRl
bF9jcnRjLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9jcnRjX2luaXRfc2NhbGVycyhjcnRjLCBjcnRj
X3N0YXRlKTsKIAogCUJVR19PTihwaXBlID49IEFSUkFZX1NJWkUoZGV2X3ByaXYtPnBpcGVfdG9f
Y3J0Y19tYXBwaW5nKSB8fAogCSAgICAgICBkZXZfcHJpdi0+cGlwZV90b19jcnRjX21hcHBpbmdb
cGlwZV0gIT0gTlVMTCk7Ci0JZGV2X3ByaXYtPnBpcGVfdG9fY3J0Y19tYXBwaW5nW3BpcGVdID0g
aW50ZWxfY3J0YzsKKwlkZXZfcHJpdi0+cGlwZV90b19jcnRjX21hcHBpbmdbcGlwZV0gPSBjcnRj
OwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCA5KSB7CiAJCWVudW0gaTl4eF9wbGFuZV9p
ZCBpOXh4X3BsYW5lID0gcHJpbWFyeS0+aTl4eF9wbGFuZTsKIAogCQlCVUdfT04oaTl4eF9wbGFu
ZSA+PSBBUlJBWV9TSVpFKGRldl9wcml2LT5wbGFuZV90b19jcnRjX21hcHBpbmcpIHx8CiAJCSAg
ICAgICBkZXZfcHJpdi0+cGxhbmVfdG9fY3J0Y19tYXBwaW5nW2k5eHhfcGxhbmVdICE9IE5VTEwp
OwotCQlkZXZfcHJpdi0+cGxhbmVfdG9fY3J0Y19tYXBwaW5nW2k5eHhfcGxhbmVdID0gaW50ZWxf
Y3J0YzsKKwkJZGV2X3ByaXYtPnBsYW5lX3RvX2NydGNfbWFwcGluZ1tpOXh4X3BsYW5lXSA9IGNy
dGM7CiAJfQogCi0JaW50ZWxfY29sb3JfaW5pdChpbnRlbF9jcnRjKTsKKwlpbnRlbF9jb2xvcl9p
bml0KGNydGMpOwogCi0JV0FSTl9PTihkcm1fY3J0Y19pbmRleCgmaW50ZWxfY3J0Yy0+YmFzZSkg
IT0gaW50ZWxfY3J0Yy0+cGlwZSk7CisJV0FSTl9PTihkcm1fY3J0Y19pbmRleCgmY3J0Yy0+YmFz
ZSkgIT0gY3J0Yy0+cGlwZSk7CiAKIAlyZXR1cm4gMDsKIApAQCAtMTU4ODcsNyArMTU4ODcsNyBA
QCBzdGF0aWMgaW50IGludGVsX2NydGNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIGVudW0gcGlwZSBwaXBlKQogCSAqIGNydGNzL3BsYW5lcyBhbHJlYWR5IGluaXRpYWxp
emVkLgogCSAqLwogCWtmcmVlKGNydGNfc3RhdGUpOwotCWtmcmVlKGludGVsX2NydGMpOworCWtm
cmVlKGNydGMpOwogCiAJcmV0dXJuIHJldDsKIH0KLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
