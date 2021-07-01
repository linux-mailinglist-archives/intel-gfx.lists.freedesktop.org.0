Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0D93B975C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 22:26:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECBA56EC36;
	Thu,  1 Jul 2021 20:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891726EBA4;
 Thu,  1 Jul 2021 20:25:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="208567516"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="208567516"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:21 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="644564529"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 13:25:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 13:24:16 -0700
Message-Id: <20210701202427.1547543-43-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210701202427.1547543-1-matthew.d.roper@intel.com>
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 42/53] drm/i915/dg2: Add MPLLB programming for
 SNPS PHY
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
Cc: Jani Nikula <jani.nikula@intel.com>, Nidhi Gupta <nidhi1.gupta@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

REcyJ3MgU05QUyBQSFlzIGluY29ycG9yYXRlIGEgZGVkaWNhdGVkIHBvcnQgUExMIGNhbGxlZCBN
UExMQiB3aGljaAp0YWtlcyB0aGUgcGxhY2Ugb2YgdGhlIHNoYXJlZCBEUExMcyB3ZSd2ZSB1c2Vk
IG9uIHBhc3QgcGxhdGZvcm1zLiAgTGV0J3MKYWRkIHRoZSBNUExMQiBwcm9ncmFtbWluZyBzZXF1
ZW5jZXM7IHRoZXknbGwgYmUgcGx1Z2dlZCBpbnRvIHRoZSByZXN0IG9mCnRoZSBjb2RlIGluIGZ1
dHVyZSBwYXRjaGVzLgoKQnNwZWM6IDU0MDMyCkJzcGVjOiA1Mzg4MQpDYzogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2Fy
bmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBOaWRoaSBHdXB0YSA8bmlk
aGkxLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSAg
ICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgIHwgICAxICsKIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaCAgICB8ICAxNyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cGxsLmMgICAgIHwgIDEyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nu
cHNfcGh5LmMgfCA1MTcgKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3NucHNfcGh5LmggfCAgMTggKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCAgICAgICAgICAgICAgIHwgIDU2ICsrCiA3IGZpbGVzIGNoYW5nZWQsIDYxNiBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc25wc19waHkuYwogY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc25wc19waHkuaAoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUKaW5kZXggMDFmMjhhZDVlYTU3Li42YjZjMWU1YTcyZDUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlCkBAIC0yNjgsNiArMjY4LDcgQEAgaTkxNS15ICs9IFwKIAlkaXNwbGF5L2ludGVsX3Bwcy5v
IFwKIAlkaXNwbGF5L2ludGVsX3FwX3RhYmxlcy5vIFwKIAlkaXNwbGF5L2ludGVsX3Nkdm8ubyBc
CisJZGlzcGxheS9pbnRlbF9zbnBzX3BoeS5vIFwKIAlkaXNwbGF5L2ludGVsX3R2Lm8gXAogCWRp
c3BsYXkvaW50ZWxfdmRzYy5vIFwKIAlkaXNwbGF5L2ludGVsX3Zyci5vIFwKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggZGMyYjk0M2E0ZTcyLi45
MWY2OTY0ZWM0MDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC01OSw2ICs1OSw3IEBACiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9oZG1pLmgi
CiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9sdmRzLmgiCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRl
bF9zZHZvLmgiCisjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9zbnBzX3BoeS5oIgogI2luY2x1ZGUg
ImRpc3BsYXkvaW50ZWxfdHYuaCIKICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX3Zkc2MuaCIKICNp
bmNsdWRlICJkaXNwbGF5L2ludGVsX3Zyci5oIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCBkOTRmMzYxYjU0OGIuLjI5YWUx
ZDliNWFiYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgKQEAgLTg4NCw2ICs4ODQsMTggQEAgZW51bSBpbnRlbF9vdXRwdXRfZm9y
bWF0IHsKIAlJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDQ0LAogfTsKIAorc3RydWN0IGludGVs
X21wbGxiX3N0YXRlIHsKKwl1MzIgY2xvY2s7IC8qIGluIEtIeiAqLworCXUzMiByZWZfY29udHJv
bDsKKwl1MzIgbXBsbGJfY3A7CisJdTMyIG1wbGxiX2RpdjsKKwl1MzIgbXBsbGJfZGl2MjsKKwl1
MzIgbXBsbGJfZnJhY24xOworCXUzMiBtcGxsYl9mcmFjbjI7CisJdTMyIG1wbGxiX3NzY2VuOwor
CXUzMiBtcGxsYl9zc2NzdGVwOworfTsKKwogc3RydWN0IGludGVsX2NydGNfc3RhdGUgewogCS8q
CiAJICogdWFwaSAoZHJtKSBzdGF0ZS4gVGhpcyBpcyB0aGUgc29mdHdhcmUgc3RhdGUgc2hvd24g
dG8gdXNlcnNwYWNlLgpAQCAtMTAxOCw3ICsxMDMwLDEwIEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlIHsKIAlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnNoYXJlZF9kcGxsOwogCiAJLyogQWN0
dWFsIHJlZ2lzdGVyIHN0YXRlIG9mIHRoZSBkcGxsLCBmb3Igc2hhcmVkIGRwbGwgY3Jvc3MtY2hl
Y2tpbmcuICovCi0Jc3RydWN0IGludGVsX2RwbGxfaHdfc3RhdGUgZHBsbF9od19zdGF0ZTsKKwl1
bmlvbiB7CisJCXN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlIGRwbGxfaHdfc3RhdGU7CisJCXN0
cnVjdCBpbnRlbF9tcGxsYl9zdGF0ZSBtcGxsYl9zdGF0ZTsKKwl9OwogCiAJLyoKIAkgKiBJQ0wg
cmVzZXJ2ZWQgRFBMTHMgZm9yIHRoZSBDUlRDL3BvcnQuIFRoZSBhY3RpdmUgUExMIGlzIHNlbGVj
dGVkIGJ5CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
bGwuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbC5jCmluZGV4IDg5
NjM1ZGE5ZjZmNi4uMTQ1MTVlNjJjMDVlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwbGwuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGwuYwpAQCAtMTEsNiArMTEsNyBAQAogI2luY2x1ZGUgImludGVsX2x2ZHMuaCIK
ICNpbmNsdWRlICJpbnRlbF9wYW5lbC5oIgogI2luY2x1ZGUgImludGVsX3NpZGViYW5kLmgiCisj
aW5jbHVkZSAiZGlzcGxheS9pbnRlbF9zbnBzX3BoeS5oIgogCiBzdHJ1Y3QgaW50ZWxfbGltaXQg
ewogCXN0cnVjdCB7CkBAIC05MjMsMTIgKzkyNCwxMyBAQCBzdGF0aWMgaW50IGhzd19jcnRjX2Nv
bXB1dGVfY2xvY2soc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAJc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUgPQogCQl0b19pbnRlbF9hdG9taWNfc3RhdGUoY3J0Y19zdGF0
ZS0+dWFwaS5zdGF0ZSk7CisJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPQorCQlpbnRl
bF9nZXRfY3J0Y19uZXdfZW5jb2RlcihzdGF0ZSwgY3J0Y19zdGF0ZSk7CiAKLQlpZiAoIWludGVs
X2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RTSSkgfHwKLQkgICAgRElT
UExBWV9WRVIoZGV2X3ByaXYpID49IDExKSB7Ci0JCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyID0KLQkJCWludGVsX2dldF9jcnRjX25ld19lbmNvZGVyKHN0YXRlLCBjcnRjX3N0YXRlKTsK
LQorCWlmIChJU19ERzIoZGV2X3ByaXYpKSB7CisJCXJldHVybiBpbnRlbF9tcGxsYl9jYWxjX3N0
YXRlKGNydGNfc3RhdGUsIGVuY29kZXIpOworCX0gZWxzZSBpZiAoIWludGVsX2NydGNfaGFzX3R5
cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RTSSkgfHwKKwkJICAgRElTUExBWV9WRVIoZGV2
X3ByaXYpID49IDExKSB7CiAJCWlmICghaW50ZWxfcmVzZXJ2ZV9zaGFyZWRfZHBsbHMoc3RhdGUs
IGNydGMsIGVuY29kZXIpKSB7CiAJCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKIAkJCQkg
ICAgImZhaWxlZCB0byBmaW5kIFBMTCBmb3IgcGlwZSAlY1xuIiwKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc25wc19waHkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc25wc19waHkuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRl
eCAwMDAwMDAwMDAwMDAuLjZkOTIwNTkwNjU5NQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc25wc19waHkuYwpAQCAtMCwwICsxLDUxNyBAQAor
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5
IEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2luY2x1ZGUgImludGVsX2RlLmgiCisjaW5jbHVk
ZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgorI2luY2x1ZGUgImludGVsX3NucHNfcGh5LmgiCisK
Ky8qKgorICogRE9DOiBTeW5vcHNpcyBQSFkgc3VwcG9ydAorICoKKyAqIFN5bm9wc2lzIFBIWXMg
YXJlIHByaW1hcmlseSBwcm9ncmFtbWVkIGJ5IGxvb2tpbmcgdXAgbWFnaWMgcmVnaXN0ZXIgdmFs
dWVzCisgKiBpbiB0YWJsZXMgcmF0aGVyIHRoYW4gY2FsY3VsYXRpbmcgdGhlIG5lY2Vzc2FyeSB2
YWx1ZXMgYXQgcnVudGltZS4KKyAqCisgKiBPZiBzcGVjaWFsIG5vdGUgaXMgdGhhdCB0aGUgU05Q
UyBQSFlzIGluY2x1ZGUgYSBkZWRpY2F0ZWQgcG9ydCBQTEwsIGtub3duIGFzCisgKiBhbiAiTVBM
TEIuIiAgVGhlIE1QTExCIHJlcGxhY2VzIHRoZSBzaGFyZWQgRFBMTCBmdW5jdGlvbmFsaXR5IHVz
ZWQgb24gb3RoZXIKKyAqIHBsYXRmb3JtcyBhbmQgbXVzdCBiZSBwcm9ncmFtbWluZyBkaXJlY3Rs
eSBkdXJpbmcgdGhlIG1vZGVzZXQgc2VxdWVuY2UKKyAqIHNpbmNlIGl0IGlzIG5vdCBoYW5kbGVk
IGJ5IHRoZSBzaGFyZWQgRFBMTCBmcmFtZXdvcmsgYXMgb24gb3RoZXIgcGxhdGZvcm1zLgorICov
CisKKy8qCisgKiBCYXNpYyBEUCBsaW5rIHJhdGVzIHdpdGggMTAwIE1IeiByZWZlcmVuY2UgY2xv
Y2suCisgKi8KKworc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9tcGxsYl9zdGF0ZSBkZzJfZHBf
cmJyXzEwMCA9IHsKKwkuY2xvY2sgPSAxNjIwMDAsCisJLnJlZl9jb250cm9sID0KKwkJUkVHX0ZJ
RUxEX1BSRVAoU05QU19QSFlfUkVGX0NPTlRST0xfUkVGX1JBTkdFLCAzKSwKKwkubXBsbGJfY3Ag
PQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9JTlQsIDQpIHwKKwkJUkVHX0ZJ
RUxEX1BSRVAoU05QU19QSFlfTVBMTEJfQ1BfUFJPUCwgMjApIHwKKwkJUkVHX0ZJRUxEX1BSRVAo
U05QU19QSFlfTVBMTEJfQ1BfSU5UX0dTLCA2NSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BI
WV9NUExMQl9DUF9QUk9QX0dTLCAxMjcpLAorCS5tcGxsYl9kaXYgPQorCQlSRUdfRklFTERfUFJF
UChTTlBTX1BIWV9NUExMQl9ESVY1X0NMS19FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBT
X1BIWV9NUExMQl9UWF9DTEtfRElWLCAyKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01Q
TExCX1BNSVhfRU4sIDEpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfVjJJLCAy
KSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSRVFfVkNPLCAyKSwKKwkubXBs
bGJfZGl2MiA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1JFRl9DTEtfRElWLCAy
KSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX01VTFRJUExJRVIsIDIyNiksCisJ
Lm1wbGxiX2ZyYWNuMSA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNOX0NH
R19VUERBVEVfRU4sIDEpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRlJBQ05f
RU4sIDEpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRlJBQ05fREVOLCA1KSwK
KwkubXBsbGJfZnJhY24yID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRlJBQ05f
UVVPVCwgMzkzMjEpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRlJBQ05fUkVN
LCAzKSwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbXBsbGJfc3RhdGUgZGcyX2Rw
X2hicjFfMTAwID0geworCS5jbG9jayA9IDI3MDAwMCwKKwkucmVmX2NvbnRyb2wgPQorCQlSRUdf
RklFTERfUFJFUChTTlBTX1BIWV9SRUZfQ09OVFJPTF9SRUZfUkFOR0UsIDMpLAorCS5tcGxsYl9j
cCA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX0lOVCwgNCkgfAorCQlSRUdf
RklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9QUk9QLCAyMCkgfAorCQlSRUdfRklFTERfUFJF
UChTTlBTX1BIWV9NUExMQl9DUF9JTlRfR1MsIDY1KSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNf
UEhZX01QTExCX0NQX1BST1BfR1MsIDEyNyksCisJLm1wbGxiX2RpdiA9CisJCVJFR19GSUVMRF9Q
UkVQKFNOUFNfUEhZX01QTExCX0RJVjVfQ0xLX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNO
UFNfUEhZX01QTExCX1RYX0NMS19ESVYsIDEpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlf
TVBMTEJfVjJJLCAyKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSRVFfVkNP
LCAzKSwKKwkubXBsbGJfZGl2MiA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1JF
Rl9DTEtfRElWLCAyKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX01VTFRJUExJ
RVIsIDE4NCksCisJLm1wbGxiX2ZyYWNuMSA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01Q
TExCX0ZSQUNOX0NHR19VUERBVEVfRU4sIDEpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlf
TVBMTEJfRlJBQ05fREVOLCAxKSwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbXBs
bGJfc3RhdGUgZGcyX2RwX2hicjJfMTAwID0geworCS5jbG9jayA9IDU0MDAwMCwKKwkucmVmX2Nv
bnRyb2wgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9SRUZfQ09OVFJPTF9SRUZfUkFOR0Us
IDMpLAorCS5tcGxsYl9jcCA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX0lO
VCwgNCkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9QUk9QLCAyMCkgfAor
CQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9JTlRfR1MsIDY1KSB8CisJCVJFR19G
SUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX1BST1BfR1MsIDEyNyksCisJLm1wbGxiX2RpdiA9
CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0RJVjVfQ0xLX0VOLCAxKSB8CisJCVJF
R19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1YySSwgMikgfAorCQlSRUdfRklFTERfUFJFUChT
TlBTX1BIWV9NUExMQl9GUkVRX1ZDTywgMyksCisJLm1wbGxiX2RpdjIgPQorCQlSRUdfRklFTERf
UFJFUChTTlBTX1BIWV9NUExMQl9SRUZfQ0xLX0RJViwgMikgfAorCQlSRUdfRklFTERfUFJFUChT
TlBTX1BIWV9NUExMQl9NVUxUSVBMSUVSLCAxODQpLAorCS5tcGxsYl9mcmFjbjEgPQorCQlSRUdf
RklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9GUkFDTl9DR0dfVVBEQVRFX0VOLCAxKSB8CisJCVJF
R19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNOX0RFTiwgMSksCit9OworCitzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX21wbGxiX3N0YXRlIGRnMl9kcF9oYnIzXzEwMCA9IHsKKwkuY2xv
Y2sgPSA4MTAwMDAsCisJLnJlZl9jb250cm9sID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlf
UkVGX0NPTlRST0xfUkVGX1JBTkdFLCAzKSwKKwkubXBsbGJfY3AgPQorCQlSRUdfRklFTERfUFJF
UChTTlBTX1BIWV9NUExMQl9DUF9JTlQsIDQpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlf
TVBMTEJfQ1BfUFJPUCwgMTkpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfQ1Bf
SU5UX0dTLCA2NSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9QUk9QX0dT
LCAxMjcpLAorCS5tcGxsYl9kaXYgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9E
SVY1X0NMS19FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9WMkksIDIp
LAorCS5tcGxsYl9kaXYyID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfUkVGX0NM
S19ESVYsIDIpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfTVVMVElQTElFUiwg
MjkyKSwKKwkubXBsbGJfZnJhY24xID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJf
RlJBQ05fQ0dHX1VQREFURV9FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExM
Ql9GUkFDTl9ERU4sIDEpLAorfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9tcGxsYl9z
dGF0ZSAqZGcyX2RwXzEwMF90YWJsZXNbXSA9IHsKKwkmZGcyX2RwX3Jicl8xMDAsCisJJmRnMl9k
cF9oYnIxXzEwMCwKKwkmZGcyX2RwX2hicjJfMTAwLAorCSZkZzJfZHBfaGJyM18xMDAsCisJTlVM
TCwKK307CisKKy8qCisgKiBCYXNpYyBEUCBsaW5rIHJhdGVzIHdpdGggMzguNCBNSHogcmVmZXJl
bmNlIGNsb2NrLgorICovCisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbXBsbGJfc3RhdGUg
ZGcyX2RwX3Jicl8zOF80ID0geworCS5jbG9jayA9IDE2MjAwMCwKKwkucmVmX2NvbnRyb2wgPQor
CQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9SRUZfQ09OVFJPTF9SRUZfUkFOR0UsIDEpLAorCS5t
cGxsYl9jcCA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX0lOVCwgNSkgfAor
CQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9QUk9QLCAyNSkgfAorCQlSRUdfRklF
TERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9JTlRfR1MsIDY1KSB8CisJCVJFR19GSUVMRF9QUkVQ
KFNOUFNfUEhZX01QTExCX0NQX1BST1BfR1MsIDEyNyksCisJLm1wbGxiX2RpdiA9CisJCVJFR19G
SUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0RJVjVfQ0xLX0VOLCAxKSB8CisJCVJFR19GSUVMRF9Q
UkVQKFNOUFNfUEhZX01QTExCX1RYX0NMS19ESVYsIDIpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05Q
U19QSFlfTVBMTEJfUE1JWF9FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExM
Ql9WMkksIDIpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRlJFUV9WQ08sIDIp
LAorCS5tcGxsYl9kaXYyID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfUkVGX0NM
S19ESVYsIDEpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfTVVMVElQTElFUiwg
MzA0KSwKKwkubXBsbGJfZnJhY24xID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJf
RlJBQ05fQ0dHX1VQREFURV9FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExM
Ql9GUkFDTl9FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9GUkFDTl9E
RU4sIDEpLAorCS5tcGxsYl9mcmFjbjIgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExM
Ql9GUkFDTl9RVU9ULCA0OTE1MiksCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX21w
bGxiX3N0YXRlIGRnMl9kcF9oYnIxXzM4XzQgPSB7CisJLmNsb2NrID0gMjcwMDAwLAorCS5yZWZf
Y29udHJvbCA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX1JFRl9DT05UUk9MX1JFRl9SQU5H
RSwgMSksCisJLm1wbGxiX2NwID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfQ1Bf
SU5ULCA1KSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX1BST1AsIDI1KSB8
CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX0lOVF9HUywgNjUpIHwKKwkJUkVH
X0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfQ1BfUFJPUF9HUywgMTI3KSwKKwkubXBsbGJfZGl2
ID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRElWNV9DTEtfRU4sIDEpIHwKKwkJ
UkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfVFhfQ0xLX0RJViwgMSkgfAorCQlSRUdfRklF
TERfUFJFUChTTlBTX1BIWV9NUExMQl9QTUlYX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNO
UFNfUEhZX01QTExCX1YySSwgMikgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9G
UkVRX1ZDTywgMyksCisJLm1wbGxiX2RpdjIgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9N
UExMQl9SRUZfQ0xLX0RJViwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9N
VUxUSVBMSUVSLCAyNDgpLAorCS5tcGxsYl9mcmFjbjEgPQorCQlSRUdfRklFTERfUFJFUChTTlBT
X1BIWV9NUExMQl9GUkFDTl9DR0dfVVBEQVRFX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNO
UFNfUEhZX01QTExCX0ZSQUNOX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01Q
TExCX0ZSQUNOX0RFTiwgMSksCisJLm1wbGxiX2ZyYWNuMiA9CisJCVJFR19GSUVMRF9QUkVQKFNO
UFNfUEhZX01QTExCX0ZSQUNOX1FVT1QsIDQwOTYwKSwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfbXBsbGJfc3RhdGUgZGcyX2RwX2hicjJfMzhfNCA9IHsKKwkuY2xvY2sgPSA1NDAw
MDAsCisJLnJlZl9jb250cm9sID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfUkVGX0NPTlRS
T0xfUkVGX1JBTkdFLCAxKSwKKwkubXBsbGJfY3AgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BI
WV9NUExMQl9DUF9JTlQsIDUpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfQ1Bf
UFJPUCwgMjUpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfQ1BfSU5UX0dTLCA2
NSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9QUk9QX0dTLCAxMjcpLAor
CS5tcGxsYl9kaXYgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9ESVY1X0NMS19F
TiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9QTUlYX0VOLCAxKSB8CisJ
CVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1YySSwgMikgfAorCQlSRUdfRklFTERfUFJF
UChTTlBTX1BIWV9NUExMQl9GUkVRX1ZDTywgMyksCisJLm1wbGxiX2RpdjIgPQorCQlSRUdfRklF
TERfUFJFUChTTlBTX1BIWV9NUExMQl9SRUZfQ0xLX0RJViwgMSkgfAorCQlSRUdfRklFTERfUFJF
UChTTlBTX1BIWV9NUExMQl9NVUxUSVBMSUVSLCAyNDgpLAorCS5tcGxsYl9mcmFjbjEgPQorCQlS
RUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9GUkFDTl9DR0dfVVBEQVRFX0VOLCAxKSB8CisJ
CVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNOX0VOLCAxKSB8CisJCVJFR19GSUVM
RF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNOX0RFTiwgMSksCisJLm1wbGxiX2ZyYWNuMiA9CisJ
CVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNOX1FVT1QsIDQwOTYwKSwKK307CisK
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbXBsbGJfc3RhdGUgZGcyX2RwX2hicjNfMzhfNCA9
IHsKKwkuY2xvY2sgPSA4MTAwMDAsCisJLnJlZl9jb250cm9sID0KKwkJUkVHX0ZJRUxEX1BSRVAo
U05QU19QSFlfUkVGX0NPTlRST0xfUkVGX1JBTkdFLCAxKSwKKwkubXBsbGJfY3AgPQorCQlSRUdf
RklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9JTlQsIDYpIHwKKwkJUkVHX0ZJRUxEX1BSRVAo
U05QU19QSFlfTVBMTEJfQ1BfUFJPUCwgMjYpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlf
TVBMTEJfQ1BfSU5UX0dTLCA2NSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9D
UF9QUk9QX0dTLCAxMjcpLAorCS5tcGxsYl9kaXYgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BI
WV9NUExMQl9ESVY1X0NMS19FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExM
Ql9QTUlYX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1YySSwgMiks
CisJLm1wbGxiX2RpdjIgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9SRUZfQ0xL
X0RJViwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9NVUxUSVBMSUVSLCAz
ODgpLAorCS5tcGxsYl9mcmFjbjEgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9G
UkFDTl9DR0dfVVBEQVRFX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExC
X0ZSQUNOX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNOX0RF
TiwgMSksCisJLm1wbGxiX2ZyYWNuMiA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExC
X0ZSQUNOX1FVT1QsIDYxNDQwKSwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbXBs
bGJfc3RhdGUgKmRnMl9kcF8zOF80X3RhYmxlc1tdID0geworCSZkZzJfZHBfcmJyXzM4XzQsCisJ
JmRnMl9kcF9oYnIxXzM4XzQsCisJJmRnMl9kcF9oYnIyXzM4XzQsCisJJmRnMl9kcF9oYnIzXzM4
XzQsCisJTlVMTCwKK307CisKKy8qCisgKiBlRFAgbGluayByYXRlcyB3aXRoIDEwMCBNSHogcmVm
ZXJlbmNlIGNsb2NrLgorICovCisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfbXBsbGJfc3Rh
dGUgZGcyX2VkcF9yMjE2ID0geworCS5jbG9jayA9IDIxNjAwMCwKKwkucmVmX2NvbnRyb2wgPQor
CQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9SRUZfQ09OVFJPTF9SRUZfUkFOR0UsIDMpLAorCS5t
cGxsYl9jcCA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX0lOVCwgNCkgfAor
CQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9QUk9QLCAxOSkgfAorCQlSRUdfRklF
TERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9JTlRfR1MsIDY1KSB8CisJCVJFR19GSUVMRF9QUkVQ
KFNOUFNfUEhZX01QTExCX0NQX1BST1BfR1MsIDEyNyksCisJLm1wbGxiX2RpdiA9CisJCVJFR19G
SUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0RJVjVfQ0xLX0VOLCAxKSB8CisJCVJFR19GSUVMRF9Q
UkVQKFNOUFNfUEhZX01QTExCX1RYX0NMS19ESVYsIDIpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05Q
U19QSFlfTVBMTEJfUE1JWF9FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExM
Ql9WMkksIDIpLAorCS5tcGxsYl9kaXYyID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBM
TEJfUkVGX0NMS19ESVYsIDIpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfTVVM
VElQTElFUiwgMzEyKSwKKwkubXBsbGJfZnJhY24xID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19Q
SFlfTVBMTEJfRlJBQ05fQ0dHX1VQREFURV9FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBT
X1BIWV9NUExMQl9GUkFDTl9FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExM
Ql9GUkFDTl9ERU4sIDUpLAorCS5tcGxsYl9mcmFjbjIgPQorCQlSRUdfRklFTERfUFJFUChTTlBT
X1BIWV9NUExMQl9GUkFDTl9RVU9ULCA1MjQyOCkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BI
WV9NUExMQl9GUkFDTl9SRU0sIDQpLAorCS5tcGxsYl9zc2NlbiA9CisJCVJFR19GSUVMRF9QUkVQ
KFNOUFNfUEhZX01QTExCX1NTQ19FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9N
UExMQl9TU0NfUEVBSywgNTA5NjEpLAorCS5tcGxsYl9zc2NzdGVwID0KKwkJUkVHX0ZJRUxEX1BS
RVAoU05QU19QSFlfTVBMTEJfU1NDX1NURVBTSVpFLCA2NTc1MiksCit9OworCitzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX21wbGxiX3N0YXRlIGRnMl9lZHBfcjI0MyA9IHsKKwkuY2xvY2sgPSAy
NDMwMDAsCisJLnJlZl9jb250cm9sID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfUkVGX0NP
TlRST0xfUkVGX1JBTkdFLCAzKSwKKwkubXBsbGJfY3AgPQorCQlSRUdfRklFTERfUFJFUChTTlBT
X1BIWV9NUExMQl9DUF9JTlQsIDQpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJf
Q1BfUFJPUCwgMjApIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfQ1BfSU5UX0dT
LCA2NSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9QUk9QX0dTLCAxMjcp
LAorCS5tcGxsYl9kaXYgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9ESVY1X0NM
S19FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9UWF9DTEtfRElWLCAy
KSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1BNSVhfRU4sIDEpIHwKKwkJUkVH
X0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfVjJJLCAyKSwKKwkubXBsbGJfZGl2MiA9CisJCVJF
R19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1JFRl9DTEtfRElWLCAyKSB8CisJCVJFR19GSUVM
RF9QUkVQKFNOUFNfUEhZX01QTExCX01VTFRJUExJRVIsIDM1NiksCisJLm1wbGxiX2ZyYWNuMSA9
CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNOX0NHR19VUERBVEVfRU4sIDEp
IHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRlJBQ05fRU4sIDEpIHwKKwkJUkVH
X0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRlJBQ05fREVOLCA1KSwKKwkubXBsbGJfZnJhY24y
ID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRlJBQ05fUVVPVCwgMjYyMTQpIHwK
KwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfRlJBQ05fUkVNLCAyKSwKKwkubXBsbGJf
c3NjZW4gPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9TU0NfRU4sIDEpIHwKKwkJ
UkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfU1NDX1BFQUssIDU3MzMxKSwKKwkubXBsbGJf
c3Njc3RlcCA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1NTQ19TVEVQU0laRSwg
NzM5NzEpLAorfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9tcGxsYl9zdGF0ZSBkZzJf
ZWRwX3IzMjQgPSB7CisJLmNsb2NrID0gMzI0MDAwLAorCS5yZWZfY29udHJvbCA9CisJCVJFR19G
SUVMRF9QUkVQKFNOUFNfUEhZX1JFRl9DT05UUk9MX1JFRl9SQU5HRSwgMyksCisJLm1wbGxiX2Nw
ID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfQ1BfSU5ULCA0KSB8CisJCVJFR19G
SUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX1BST1AsIDIwKSB8CisJCVJFR19GSUVMRF9QUkVQ
KFNOUFNfUEhZX01QTExCX0NQX0lOVF9HUywgNjUpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19Q
SFlfTVBMTEJfQ1BfUFJPUF9HUywgMTI3KSwKKwkubXBsbGJfZGl2ID0KKwkJUkVHX0ZJRUxEX1BS
RVAoU05QU19QSFlfTVBMTEJfRElWNV9DTEtfRU4sIDEpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05Q
U19QSFlfTVBMTEJfVFhfQ0xLX0RJViwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9N
UExMQl9QTUlYX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1YySSwg
MikgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9GUkVRX1ZDTywgMiksCisJLm1w
bGxiX2RpdjIgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9SRUZfQ0xLX0RJViwg
MikgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9NVUxUSVBMSUVSLCAyMjYpLAor
CS5tcGxsYl9mcmFjbjEgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9GUkFDTl9D
R0dfVVBEQVRFX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNO
X0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNOX0RFTiwgNSks
CisJLm1wbGxiX2ZyYWNuMiA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNO
X1FVT1QsIDM5MzIxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0ZSQUNOX1JF
TSwgMyksCisJLm1wbGxiX3NzY2VuID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJf
U1NDX0VOLCAxKSB8CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1NTQ19QRUFLLCAz
ODIyMSksCisJLm1wbGxiX3NzY3N0ZXAgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExM
Ql9TU0NfU1RFUFNJWkUsIDQ5MzE0KSwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxf
bXBsbGJfc3RhdGUgZGcyX2VkcF9yNDMyID0geworCS5jbG9jayA9IDQzMjAwMCwKKwkucmVmX2Nv
bnRyb2wgPQorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9SRUZfQ09OVFJPTF9SRUZfUkFOR0Us
IDMpLAorCS5tcGxsYl9jcCA9CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX0lO
VCwgNCkgfAorCQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9QUk9QLCAxOSkgfAor
CQlSRUdfRklFTERfUFJFUChTTlBTX1BIWV9NUExMQl9DUF9JTlRfR1MsIDY1KSB8CisJCVJFR19G
SUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0NQX1BST1BfR1MsIDEyNyksCisJLm1wbGxiX2RpdiA9
CisJCVJFR19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX0RJVjVfQ0xLX0VOLCAxKSB8CisJCVJF
R19GSUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1RYX0NMS19ESVYsIDEpIHwKKwkJUkVHX0ZJRUxE
X1BSRVAoU05QU19QSFlfTVBMTEJfUE1JWF9FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBT
X1BIWV9NUExMQl9WMkksIDIpLAorCS5tcGxsYl9kaXYyID0KKwkJUkVHX0ZJRUxEX1BSRVAoU05Q
U19QSFlfTVBMTEJfUkVGX0NMS19ESVYsIDIpIHwKKwkJUkVHX0ZJRUxEX1BSRVAoU05QU19QSFlf
TVBMTEJfTVVMVElQTElFUiwgMzEyKSwKKwkubXBsbGJfZnJhY24xID0KKwkJUkVHX0ZJRUxEX1BS
RVAoU05QU19QSFlfTVBMTEJfRlJBQ05fQ0dHX1VQREFURV9FTiwgMSkgfAorCQlSRUdfRklFTERf
UFJFUChTTlBTX1BIWV9NUExMQl9GUkFDTl9FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChTTlBT
X1BIWV9NUExMQl9GUkFDTl9ERU4sIDUpLAorCS5tcGxsYl9mcmFjbjIgPQorCQlSRUdfRklFTERf
UFJFUChTTlBTX1BIWV9NUExMQl9GUkFDTl9RVU9ULCA1MjQyOCkgfAorCQlSRUdfRklFTERfUFJF
UChTTlBTX1BIWV9NUExMQl9GUkFDTl9SRU0sIDQpLAorCS5tcGxsYl9zc2NlbiA9CisJCVJFR19G
SUVMRF9QUkVQKFNOUFNfUEhZX01QTExCX1NTQ19FTiwgMSkgfAorCQlSRUdfRklFTERfUFJFUChT
TlBTX1BIWV9NUExMQl9TU0NfUEVBSywgNTA5NjEpLAorCS5tcGxsYl9zc2NzdGVwID0KKwkJUkVH
X0ZJRUxEX1BSRVAoU05QU19QSFlfTVBMTEJfU1NDX1NURVBTSVpFLCA2NTc1MiksCit9OworCitz
dGF0aWMgY29uc3Qgc3RydWN0IGludGVsX21wbGxiX3N0YXRlICpkZzJfZWRwX3RhYmxlc1tdID0g
eworCSZkZzJfZHBfcmJyXzEwMCwKKwkmZGcyX2VkcF9yMjE2LAorCSZkZzJfZWRwX3IyNDMsCisJ
JmRnMl9kcF9oYnIxXzEwMCwKKwkmZGcyX2VkcF9yMzI0LAorCSZkZzJfZWRwX3I0MzIsCisJJmRn
Ml9kcF9oYnIyXzEwMCwKKwkmZGcyX2RwX2hicjNfMTAwLAorCU5VTEwsCit9OworCitpbnQgaW50
ZWxfbXBsbGJfY2FsY19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwK
KwkJCSAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQoreworCWNvbnN0IHN0cnVjdCBp
bnRlbF9tcGxsYl9zdGF0ZSAqKnRhYmxlczsKKwlpbnQgaTsKKworCWlmIChpbnRlbF9jcnRjX2hh
c190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9FRFApKSB7CisJCXRhYmxlcyA9IGRnMl9l
ZHBfdGFibGVzOworCX0gZWxzZSBpZiAoaW50ZWxfY3J0Y19oYXNfZHBfZW5jb2RlcihjcnRjX3N0
YXRlKSkgeworCQkvKgorCQkgKiBGSVhNRTogSW5pdGlhbGx5IHdlJ3JlIGp1c3QgZW5hYmxpbmcg
dGhlICJjb21ibyIgb3V0cHV0cyBvbgorCQkgKiBwb3J0IEEtRC4gIFRoZSBNUExMQiBmb3IgdGhv
c2UgcG9ydHMgdGFrZXMgYW4gaW5wdXQgZnJvbSB0aGUKKwkJICogIkRpc3BsYXkgRmlsdGVyIFBM
TCIgd2hpY2ggYWx3YXlzIGhhcyBhbiBvdXRwdXQgZnJlcXVlbmN5CisJCSAqIG9mIDEwMCBNSHos
IGhlbmNlIHRoZSB1c2Ugb2YgdGhlIF8xMDAgdGFibGVzIGJlbG93LgorCQkgKgorCQkgKiBPbmNl
IHdlIGVuYWJsZSBwb3J0IFRDMSBpdCB3aWxsIGVpdGhlciB1c2UgdGhlIHNhbWUgMTAwIE1Iegor
CQkgKiAiRGlzcGxheSBGaWx0ZXIgUExMIiAod2hlbiBzdHJhcHBlZCB0byBzdXBwb3J0IGEgbmF0
aXZlCisJCSAqIGRpc3BsYXkgY29ubmVjdGlvbikgb3IgZGlmZmVyZW50IDM4LjQgTUh6ICJGaWx0
ZXIgUExMIiB3aGVuCisJCSAqIHN0cmFwcGVkIHRvIHN1cHBvcnQgYSBVU0IgY29ubmVjdGlvbiwg
c28gd2UnbGwgbmVlZCB0byBjaGVjaworCQkgKiB0aGF0IHRvIGRldGVybWluZSB3aGljaCB0YWJs
ZSB0byB1c2UuCisJCSAqLworCQlpZiAoMCkKKwkJCXRhYmxlcyA9IGRnMl9kcF8zOF80X3RhYmxl
czsKKwkJZWxzZQorCQkJdGFibGVzID0gZGcyX2RwXzEwMF90YWJsZXM7CisJfSBlbHNlIHsKKwkJ
LyogVE9ETzogQWRkIEhETUkgc3VwcG9ydCAqLworCQlNSVNTSU5HX0NBU0UoZW5jb2Rlci0+dHlw
ZSk7CisJCXJldHVybiAtRUlOVkFMOworCX0KKworCWZvciAoaSA9IDA7IHRhYmxlc1tpXTsgaSsr
KSB7CisJCWlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrIDw9IHRhYmxlc1tpXS0+Y2xvY2spIHsK
KwkJCWNydGNfc3RhdGUtPm1wbGxiX3N0YXRlID0gKnRhYmxlc1tpXTsKKwkJCXJldHVybiAwOwor
CQl9CisJfQorCisJcmV0dXJuIC1FSU5WQUw7Cit9CisKK3ZvaWQgaW50ZWxfbXBsbGJfZW5hYmxl
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CisJY29uc3Qgc3RydWN0IGludGVsX21w
bGxiX3N0YXRlICpwbGxfc3RhdGUgPSAmY3J0Y19zdGF0ZS0+bXBsbGJfc3RhdGU7CisJZW51bSBw
aHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItPnBvcnQpOworCWk5
MTVfcmVnX3QgZW5hYmxlX3JlZyA9IChwaHkgPD0gUEhZX0QgPworCQkJCSBERzJfUExMX0VOQUJM
RShwaHkpIDogTUdfUExMX0VOQUJMRSgwKSk7CisKKwkvKgorCSAqIDMuIFNvZnR3YXJlIHByb2dy
YW1zIHRoZSBmb2xsb3dpbmcgUExMIHJlZ2lzdGVycyBmb3IgdGhlIGRlc2lyZWQKKwkgKiBmcmVx
dWVuY3kuCisJICovCisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFNOUFNfUEhZX01QTExCX0NQ
KHBoeSksIHBsbF9zdGF0ZS0+bXBsbGJfY3ApOworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBT
TlBTX1BIWV9NUExMQl9ESVYocGh5KSwgcGxsX3N0YXRlLT5tcGxsYl9kaXYpOworCWludGVsX2Rl
X3dyaXRlKGRldl9wcml2LCBTTlBTX1BIWV9NUExMQl9ESVYyKHBoeSksIHBsbF9zdGF0ZS0+bXBs
bGJfZGl2Mik7CisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFNOUFNfUEhZX01QTExCX1NTQ0VO
KHBoeSksIHBsbF9zdGF0ZS0+bXBsbGJfc3NjZW4pOworCWludGVsX2RlX3dyaXRlKGRldl9wcml2
LCBTTlBTX1BIWV9NUExMQl9TU0NTVEVQKHBoeSksIHBsbF9zdGF0ZS0+bXBsbGJfc3Njc3RlcCk7
CisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFNOUFNfUEhZX01QTExCX0ZSQUNOMShwaHkpLCBw
bGxfc3RhdGUtPm1wbGxiX2ZyYWNuMSk7CisJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFNOUFNf
UEhZX01QTExCX0ZSQUNOMihwaHkpLCBwbGxfc3RhdGUtPm1wbGxiX2ZyYWNuMik7CisKKwkvKgor
CSAqIDQuIElmIHRoZSBmcmVxdWVuY3kgd2lsbCByZXN1bHQgaW4gYSBjaGFuZ2UgdG8gdGhlIHZv
bHRhZ2UKKwkgKiByZXF1aXJlbWVudCwgZm9sbG93IHRoZSBEaXNwbGF5IFZvbHRhZ2UgRnJlcXVl
bmN5IFN3aXRjaGluZyAtCisJICogU2VxdWVuY2UgQmVmb3JlIEZyZXF1ZW5jeSBDaGFuZ2UuCisJ
ICoKKwkgKiBXZSBoYW5kbGUgdGhpcyBzdGVwIGluIGJ4dF9zZXRfY2RjbGsoKS4KKwkgKi8KKwor
CS8qIDUuIFNvZnR3YXJlIHNldHMgRFBMTF9FTkFCTEUgW1BMTCBFbmFibGVdIHRvICIxIi4gKi8K
KwlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBlbmFibGVfcmVnLCAwLCBQTExf
RU5BQkxFKTsKKworCS8qCisJICogOS4gU29mdHdhcmUgc2V0cyBTTlBTX1BIWV9NUExMQl9ESVYg
ZHBfbXBsbGJfZm9yY2VfZW4gdG8gIjEiLiBUaGlzCisJICogd2lsbCBrZWVwIHRoZSBQTEwgcnVu
bmluZyBkdXJpbmcgdGhlIERESSBsYW5lIHByb2dyYW1taW5nIGFuZCBhbnkKKwkgKiB0eXBlQyBE
UCBjYWJsZSBkaXNjb25uZWN0LiBEbyBub3Qgc2V0IHRoZSBmb3JjZSBiZWZvcmUgZW5hYmxpbmcg
dGhlCisJICogUExMIGJlY2F1c2UgdGhhdCB3aWxsIHN0YXJ0IHRoZSBQTEwgYmVmb3JlIGl0IGhh
cyBzYW1wbGVkIHRoZQorCSAqIGRpdmlkZXIgdmFsdWVzLgorCSAqLworCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBTTlBTX1BIWV9NUExMQl9ESVYocGh5KSwKKwkJICAgICAgIHBsbF9zdGF0ZS0+
bXBsbGJfZGl2IHwgU05QU19QSFlfTVBMTEJfRk9SQ0VfRU4pOworCisJLyoKKwkgKiAxMC4gU29m
dHdhcmUgcG9sbHMgb24gcmVnaXN0ZXIgRFBMTF9FTkFCTEUgW1BMTCBMb2NrXSB0byBjb25maXJt
IFBMTAorCSAqIGlzIGxvY2tlZCBhdCBuZXcgc2V0dGluZ3MuIFRoaXMgcmVnaXN0ZXIgYml0IGlz
IHNhbXBsaW5nIFBIWQorCSAqIGRwX21wbGxiX3N0YXRlIGludGVyZmFjZSBzaWduYWwuCisJICov
CisJaWYgKGludGVsX2RlX3dhaXRfZm9yX3NldChkZXZfcHJpdiwgZW5hYmxlX3JlZywgUExMX0xP
Q0ssIDUpKQorCQlEUk1fRVJST1IoIlBvcnQgJWMgUExMIG5vdCBsb2NrZWRcbiIsIHBoeV9uYW1l
KHBoeSkpOworCisJLyoKKwkgKiAxMS4gSWYgdGhlIGZyZXF1ZW5jeSB3aWxsIHJlc3VsdCBpbiBh
IGNoYW5nZSB0byB0aGUgdm9sdGFnZQorCSAqIHJlcXVpcmVtZW50LCBmb2xsb3cgdGhlIERpc3Bs
YXkgVm9sdGFnZSBGcmVxdWVuY3kgU3dpdGNoaW5nIC0KKwkgKiBTZXF1ZW5jZSBBZnRlciBGcmVx
dWVuY3kgQ2hhbmdlLgorCSAqCisJICogV2UgaGFuZGxlIHRoaXMgc3RlcCBpbiBieHRfc2V0X2Nk
Y2xrKCkuCisJICovCit9CisKK3ZvaWQgaW50ZWxfbXBsbGJfZGlzYWJsZShzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlcikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKKwllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0
X3RvX3BoeShkZXZfcHJpdiwgZW5jb2Rlci0+cG9ydCk7CisJaTkxNV9yZWdfdCBlbmFibGVfcmVn
ID0gKHBoeSA8PSBQSFlfRCA/CisJCQkJIERHMl9QTExfRU5BQkxFKHBoeSkgOiBNR19QTExfRU5B
QkxFKDApKTsKKworCS8qCisJICogMS4gSWYgdGhlIGZyZXF1ZW5jeSB3aWxsIHJlc3VsdCBpbiBh
IGNoYW5nZSB0byB0aGUgdm9sdGFnZQorCSAqIHJlcXVpcmVtZW50LCBmb2xsb3cgdGhlIERpc3Bs
YXkgVm9sdGFnZSBGcmVxdWVuY3kgU3dpdGNoaW5nIC0KKwkgKiBTZXF1ZW5jZSBCZWZvcmUgRnJl
cXVlbmN5IENoYW5nZS4KKwkgKgorCSAqIFdlIGhhbmRsZSB0aGlzIHN0ZXAgaW4gYnh0X3NldF9j
ZGNsaygpLgorCSAqLworCisJLyogMi4gU29mdHdhcmUgcHJvZ3JhbXMgRFBMTF9FTkFCTEUgW1BM
TCBFbmFibGVdIHRvICIwIiAqLworCWludGVsX3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUs
IGVuYWJsZV9yZWcsIFBMTF9FTkFCTEUsIDApOworCisJLyoKKwkgKiA0LiBTb2Z0d2FyZSBwcm9n
cmFtcyBTTlBTX1BIWV9NUExMQl9ESVYgZHBfbXBsbGJfZm9yY2VfZW4gdG8gIjAiLgorCSAqIFRo
aXMgd2lsbCBhbGxvdyB0aGUgUExMIHRvIHN0b3AgcnVubmluZy4KKwkgKi8KKwlpbnRlbF91bmNv
cmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBTTlBTX1BIWV9NUExMQl9ESVYocGh5KSwKKwkJCSBT
TlBTX1BIWV9NUExMQl9GT1JDRV9FTiwgMCk7CisKKwkvKgorCSAqIDUuIFNvZnR3YXJlIHBvbGxz
IERQTExfRU5BQkxFIFtQTEwgTG9ja10gZm9yIFBIWSBhY2tub3dsZWRnbWVudAorCSAqIChkcF90
eFhfYWNrKSB0aGF0IHRoZSBuZXcgdHJhbnNtaXR0ZXIgc2V0dGluZyByZXF1ZXN0IGlzIGNvbXBs
ZXRlZC4KKwkgKi8KKwlpZiAoaW50ZWxfZGVfd2FpdF9mb3JfY2xlYXIoZGV2X3ByaXYsIGVuYWJs
ZV9yZWcsIFBMTF9MT0NLLCA1KSkKKwkJRFJNX0VSUk9SKCJQb3J0ICVjIFBMTCBub3QgbG9ja2Vk
XG4iLCBwaHlfbmFtZShwaHkpKTsKKworCS8qCisJICogNi4gSWYgdGhlIGZyZXF1ZW5jeSB3aWxs
IHJlc3VsdCBpbiBhIGNoYW5nZSB0byB0aGUgdm9sdGFnZQorCSAqIHJlcXVpcmVtZW50LCBmb2xs
b3cgdGhlIERpc3BsYXkgVm9sdGFnZSBGcmVxdWVuY3kgU3dpdGNoaW5nIC0KKwkgKiBTZXF1ZW5j
ZSBBZnRlciBGcmVxdWVuY3kgQ2hhbmdlLgorCSAqCisJICogV2UgaGFuZGxlIHRoaXMgc3RlcCBp
biBieHRfc2V0X2NkY2xrKCkuCisJICovCit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3NucHNfcGh5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3NucHNfcGh5LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi4yMDVhYjQ2ZjBiNjcKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3NucHNfcGh5LmgKQEAgLTAsMCArMSwxOCBAQAorLyogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENv
cnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX1NOUFNfUEhZX0hfXworI2RlZmluZSBf
X0lOVEVMX1NOUFNfUEhZX0hfXworCitzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsKK3N0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlOworCitpbnQgaW50ZWxfbXBsbGJfY2FsY19zdGF0ZShzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCSAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyKTsKK3ZvaWQgaW50ZWxfbXBsbGJfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAorCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwordm9p
ZCBpbnRlbF9tcGxsYl9kaXNhYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsKKwor
I2VuZGlmIC8qIF9fSU5URUxfU05QU19QSFlfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApp
bmRleCBkNTg4NjRjN2FkYzYuLmMwNDE3Yzk5NGI5NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CkBAIC0yMjg2LDYgKzIyODYsNTcgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdf
dmFsaWQoaTkxNV9yZWdfdCByZWcpCiAjZGVmaW5lICAgTUdfRFBfTU9ERV9DRkdfRFBfWDJfTU9E
RQkJCSgxIDw8IDcpCiAjZGVmaW5lICAgTUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERQkJCSgxIDw8
IDYpCiAKKy8qCisgKiBERzIgU05QUyBQSFkgcmVnaXN0ZXJzIChUQzEgPSBQSFlfRSkKKyAqLwor
I2RlZmluZSBfU05QU19QSFlfQV9CQVNFCQkJMHgxNjgwMDAKKyNkZWZpbmUgX1NOUFNfUEhZX0Jf
QkFTRQkJCTB4MTY5MDAwCisjZGVmaW5lIF9TTlBTX1BIWShwaHkpCQkJCV9QSFkocGh5LCBcCisJ
CQkJCQkgICAgIF9TTlBTX1BIWV9BX0JBU0UsIFwKKwkJCQkJCSAgICAgX1NOUFNfUEhZX0JfQkFT
RSkKKyNkZWZpbmUgX1NOUFMyKHBoeSwgcmVnKQkJCShfU05QU19QSFkocGh5KSAtIFwKKwkJCQkJ
CSBfU05QU19QSFlfQV9CQVNFICsgKHJlZykpCisjZGVmaW5lIF9NTUlPX1NOUFMocGh5LCByZWcp
CQkJX01NSU8oX1NOUFMyKHBoeSwgcmVnKSkKKyNkZWZpbmUgX01NSU9fU05QU19MTihsbiwgcGh5
LCByZWcpCQlfTU1JTyhfU05QUzIocGh5LCBcCisJCQkJCQkJICAgICAocmVnKSArIChsbikgKiAw
eDEwKSkKKworI2RlZmluZSBTTlBTX1BIWV9NUExMQl9DUChwaHkpCQkJX01NSU9fU05QUyhwaHks
IDB4MTY4MDAwKQorI2RlZmluZSAgIFNOUFNfUEhZX01QTExCX0NQX0lOVAkJCVJFR19HRU5NQVNL
KDMxLCAyNSkKKyNkZWZpbmUgICBTTlBTX1BIWV9NUExMQl9DUF9JTlRfR1MJCVJFR19HRU5NQVNL
KDIzLCAxNykKKyNkZWZpbmUgICBTTlBTX1BIWV9NUExMQl9DUF9QUk9QCQlSRUdfR0VOTUFTSygx
NSwgOSkKKyNkZWZpbmUgICBTTlBTX1BIWV9NUExMQl9DUF9QUk9QX0dTCQlSRUdfR0VOTUFTSyg3
LCAxKQorCisjZGVmaW5lIFNOUFNfUEhZX01QTExCX0RJVihwaHkpCQkJX01NSU9fU05QUyhwaHks
IDB4MTY4MDA0KQorI2RlZmluZSAgIFNOUFNfUEhZX01QTExCX0ZPUkNFX0VOCQlSRUdfQklUKDMx
KQorI2RlZmluZSAgIFNOUFNfUEhZX01QTExCX0RJVjVfQ0xLX0VOCQlSRUdfQklUKDI5KQorI2Rl
ZmluZSAgIFNOUFNfUEhZX01QTExCX1YySQkJCVJFR19HRU5NQVNLKDI3LCAyNikKKyNkZWZpbmUg
ICBTTlBTX1BIWV9NUExMQl9GUkVRX1ZDTwkJUkVHX0dFTk1BU0soMjUsIDI0KQorI2RlZmluZSAg
IFNOUFNfUEhZX01QTExCX1BNSVhfRU4JCVJFR19CSVQoMTApCisjZGVmaW5lICAgU05QU19QSFlf
TVBMTEJfVFhfQ0xLX0RJVgkJUkVHX0dFTk1BU0soNywgNSkKKworI2RlZmluZSBTTlBTX1BIWV9N
UExMQl9GUkFDTjEocGh5KQkJX01NSU9fU05QUyhwaHksIDB4MTY4MDA4KQorI2RlZmluZSAgIFNO
UFNfUEhZX01QTExCX0ZSQUNOX0VOCQlSRUdfQklUKDMxKQorI2RlZmluZSAgIFNOUFNfUEhZX01Q
TExCX0ZSQUNOX0NHR19VUERBVEVfRU4JUkVHX0JJVCgzMCkKKyNkZWZpbmUgICBTTlBTX1BIWV9N
UExMQl9GUkFDTl9ERU4JCVJFR19HRU5NQVNLKDE1LCAwKQorCisjZGVmaW5lIFNOUFNfUEhZX01Q
TExCX0ZSQUNOMihwaHkpCQlfTU1JT19TTlBTKHBoeSwgMHgxNjgwMEMpCisjZGVmaW5lICAgU05Q
U19QSFlfTVBMTEJfRlJBQ05fUkVNCQlSRUdfR0VOTUFTSygzMSwgMTYpCisjZGVmaW5lICAgU05Q
U19QSFlfTVBMTEJfRlJBQ05fUVVPVAkJUkVHX0dFTk1BU0soMTUsIDApCisKKyNkZWZpbmUgU05Q
U19QSFlfTVBMTEJfU1NDRU4ocGh5KQkJX01NSU9fU05QUyhwaHksIDB4MTY4MDE0KQorI2RlZmlu
ZSAgIFNOUFNfUEhZX01QTExCX1NTQ19FTgkJCVJFR19CSVQoMzEpCisjZGVmaW5lICAgU05QU19Q
SFlfTVBMTEJfU1NDX1BFQUsJCVJFR19HRU5NQVNLKDI5LCAxMCkKKworI2RlZmluZSBTTlBTX1BI
WV9NUExMQl9TU0NTVEVQKHBoeSkJCV9NTUlPX1NOUFMocGh5LCAweDE2ODAxOCkKKyNkZWZpbmUg
ICBTTlBTX1BIWV9NUExMQl9TU0NfU1RFUFNJWkUJCVJFR19HRU5NQVNLKDMxLCAxMSkKKworI2Rl
ZmluZSBTTlBTX1BIWV9NUExMQl9ESVYyKHBoeSkJCV9NTUlPX1NOUFMocGh5LCAweDE2ODAxQykK
KyNkZWZpbmUgICBTTlBTX1BIWV9NUExMQl9SRUZfQ0xLX0RJVgkJUkVHX0dFTk1BU0soMTQsIDEy
KQorI2RlZmluZSAgIFNOUFNfUEhZX01QTExCX01VTFRJUExJRVIJCVJFR19HRU5NQVNLKDExLCAw
KQorCisjZGVmaW5lIFNOUFNfUEhZX1JFRl9DT05UUk9MKHBoeSkJCV9NTUlPX1NOUFMocGh5LCAw
eDE2ODE4OCkKKyNkZWZpbmUgICBTTlBTX1BIWV9SRUZfQ09OVFJPTF9SRUZfUkFOR0UJUkVHX0dF
Tk1BU0soMzEsIDI3KQorCiAvKiBUaGUgc3BlYyBkZWZpbmVzIHRoaXMgb25seSBmb3IgQlhUIFBI
WTAsIGJ1dCBsZXRzIGFzc3VtZSB0aGF0IHRoaXMKICAqIHdvdWxkIGV4aXN0IGZvciBQSFkxIHRv
byBpZiBpdCBoYWQgYSBzZWNvbmQgY2hhbm5lbC4KICAqLwpAQCAtMTA2MDEsNiArMTA2NTIsMTEg
QEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lIENOTF9EUExMX0VOQUJMRShwbGwpCV9N
TUlPX1BMTDMocGxsLCBEUExMMF9FTkFCTEUsIERQTEwxX0VOQUJMRSwgXAogCQkJCQkgICBfQURM
U19EUExMMl9FTkFCTEUsIF9BRExTX0RQTEwzX0VOQUJMRSkKIAorI2RlZmluZSBfREcyX1BMTDNf
RU5BQkxFCTB4NDYwMUMKKworI2RlZmluZSBERzJfUExMX0VOQUJMRShwbGwpIF9NTUlPX1BMTDMo
cGxsLCBEUExMMF9FTkFCTEUsIERQTEwxX0VOQUJMRSwgXAorCQkJCSAgICAgICBfQURMU19EUExM
Ml9FTkFCTEUsIF9ERzJfUExMM19FTkFCTEUpCisKICNkZWZpbmUgVEJUX1BMTF9FTkFCTEUJCV9N
TUlPKDB4NDYwMjApCiAKICNkZWZpbmUgX01HX1BMTDFfRU5BQkxFCQkweDQ2MDMwCi0tIAoyLjI1
LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
