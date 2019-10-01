Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A793AC2D02
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 07:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85F5D6E072;
	Tue,  1 Oct 2019 05:53:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EFC6E072
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 05:53:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 22:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,570,1559545200"; d="scan'208";a="215954045"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga004.fm.intel.com with ESMTP; 30 Sep 2019 22:53:15 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Date: Tue,  1 Oct 2019 11:23:07 +0530
Message-Id: <20191001055308.21643-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Create dumb buffer from LMEM
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

V2hlbiBMTUVNIGlzIHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0
ZWQgZnJvbSBMTUVNLgoKVGhpcyBpcyBkZXZlbG9wZWQgb24gdG9wIG9mIExNRU0gQmFzaWNzCmh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjczNTAvCgp2MjoKICBQYXJh
bWV0ZXJzIGFyZSByZXNodWZmbGVkLiBbQ2hyaXNdCgpTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2Ft
IEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+CmNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVs
ZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDE4ICsr
KysrKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5kZXggODJkYWFhYjAyMmQ4Li40OGFm
YzY3NmZhOGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpAQCAtNDQsNiArNDQsNyBAQAogI2lu
Y2x1ZGUgImdlbS9pOTE1X2dlbV9jbGZsdXNoLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1faW9jdGxzLmgiCisjaW5jbHVkZSAiZ2Vt
L2k5MTVfZ2VtX2xtZW0uaCIKICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fcG0uaCIKICNpbmNsdWRl
ICJndC9pbnRlbF9lbmdpbmVfdXNlci5oIgogI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCkBAIC0x
NTcsNiArMTU4LDcgQEAgaTkxNV9nZW1fcGh5c19wd3JpdGUoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiwKIHN0YXRpYyBpbnQKIGk5MTVfZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbGUsCiAJCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJZW51bSBpbnRl
bF9yZWdpb25faWQgbWVtX3JlZ2lvbiwKIAkJdTY0ICpzaXplX3AsCiAJCXUzMiAqaGFuZGxlX3Ap
CiB7CkBAIC0xNzAsNyArMTcyLDEyIEBAIGk5MTVfZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbGUsCiAJCXJldHVybiAtRUlOVkFMOwogCiAJLyogQWxsb2NhdGUgdGhlIG5ldyBvYmplY3Qg
Ki8KLQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2LCBzaXplKTsK
KwlpZiAobWVtX3JlZ2lvbiA9PSBJTlRFTF9NRU1PUllfTE1FTSkKKwkJb2JqID0gaTkxNV9nZW1f
b2JqZWN0X2NyZWF0ZV9sbWVtKGRldl9wcml2LCBzaXplLCAwKTsKKwllbHNlIGlmIChtZW1fcmVn
aW9uID09IElOVEVMX01FTU9SWV9TVE9MRU4pCisJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVh
dGVfc3RvbGVuKGRldl9wcml2LCBzaXplKTsKKwllbHNlCisJCW9iaiA9IGk5MTVfZ2VtX29iamVj
dF9jcmVhdGVfc2htZW0oZGV2X3ByaXYsIHNpemUpOwogCWlmIChJU19FUlIob2JqKSkKIAkJcmV0
dXJuIFBUUl9FUlIob2JqKTsKIApAQCAtMTkwLDYgKzE5Nyw3IEBAIGk5MTVfZ2VtX2R1bWJfY3Jl
YXRlKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKIAkJICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LAogCQkgICAgIHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVtYiAqYXJncykKIHsKKwllbnVtIGlu
dGVsX3JlZ2lvbl9pZCBtZW1fcmVnaW9uID0gSU5URUxfTUVNT1JZX1VLTk9XTjsKIAlpbnQgY3Bw
ID0gRElWX1JPVU5EX1VQKGFyZ3MtPmJwcCwgOCk7CiAJdTMyIGZvcm1hdDsKIApAQCAtMjE2LDcg
KzIyNCwxMSBAQCBpOTE1X2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCiAJ
CWFyZ3MtPnBpdGNoID0gQUxJR04oYXJncy0+cGl0Y2gsIDQwOTYpOwogCiAJYXJncy0+c2l6ZSA9
IGFyZ3MtPnBpdGNoICogYXJncy0+aGVpZ2h0OwotCXJldHVybiBpOTE1X2dlbV9jcmVhdGUoZmls
ZSwgdG9faTkxNShkZXYpLAorCisJaWYgKEhBU19MTUVNKHRvX2k5MTUoZGV2KSkpCisJCW1lbV9y
ZWdpb24gPSBJTlRFTF9NRU1PUllfTE1FTTsKKworCXJldHVybiBpOTE1X2dlbV9jcmVhdGUoZmls
ZSwgdG9faTkxNShkZXYpLCBtZW1fcmVnaW9uLAogCQkJICAgICAgICZhcmdzLT5zaXplLCAmYXJn
cy0+aGFuZGxlKTsKIH0KIApAQCAtMjM1LDcgKzI0Nyw3IEBAIGk5MTVfZ2VtX2NyZWF0ZV9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCiAJaTkxNV9nZW1fZmx1c2hf
ZnJlZV9vYmplY3RzKGRldl9wcml2KTsKIAotCXJldHVybiBpOTE1X2dlbV9jcmVhdGUoZmlsZSwg
ZGV2X3ByaXYsCisJcmV0dXJuIGk5MTVfZ2VtX2NyZWF0ZShmaWxlLCBkZXZfcHJpdiwgSU5URUxf
TUVNT1JZX1VLTk9XTiwKIAkJCSAgICAgICAmYXJncy0+c2l6ZSwgJmFyZ3MtPmhhbmRsZSk7CiB9
CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
