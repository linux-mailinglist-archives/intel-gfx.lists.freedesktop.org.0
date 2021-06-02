Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E580B39855E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 11:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 308276EC23;
	Wed,  2 Jun 2021 09:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2134D6EC23;
 Wed,  2 Jun 2021 09:37:06 +0000 (UTC)
IronPort-SDR: +4vmjtdcHivywMuLfJ/JBV6TYm5O8bYVFOlkvMoeLeqIUnHyF5vBRcBF23qmVDd23FVF02N4Fl
 AcCRtdyZ1RTw==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="183427550"
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="183427550"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 02:37:05 -0700
IronPort-SDR: xlJE9KM5keKPu/iJcmLvBKWqIPJyBYkZ3F3U8YL8vDo4/O3Drb+TTZ5ztYAj0+x5EuT61+g+Rd
 CdQyHVsBfyZQ==
X-IronPort-AV: E=Sophos;i="5.83,241,1616482800"; d="scan'208";a="447334848"
Received: from klim31-mobl1.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.150.164])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 02:37:01 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Jun 2021 10:36:36 +0100
Message-Id: <20210602093636.167070-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem/mman: only allow WC for lmem
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGRnZnggd2hlcmUgd2Ugbm93IGhhdmUgbG1lbSBhbmQgdHRtLCB3ZSBjYW4gb25seSBzdXBw
b3J0IHNpbmdsZSBtbWFwCm1vZGUgZm9yIHRoZSBsaWZldGltZSBvZiB0aGUgb2JqZWN0LCBhbmQg
Zm9yIGxtZW0gb2JqZWN0cyB0aGlzIHNob3VsZCBiZQpXQywgc28gcmVqZWN0IGFsbCBvdGhlciBt
YXBwaW5nIG1vZGVzIGZvciBtbWFwX29mZnNldCwgaW5jbHVkaW5nIGlmIHRoZQpvYmplY3QgY2Fu
IGJlIHBsYWNlZCBpbiBib3RoIHNtZW0gYW5kIGxtZW0uCgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhv
bWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBmZndsbC5jaD4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jICAgfCAgNCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmMgfCAyMiArKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmggfCAgNCArKysrCiAzIGZpbGVzIGNoYW5nZWQsIDMwIGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRleCBm
ZDFjOTcxNGY4ZDguLjMyZjg4ZjIzNjc3MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fbW1hbi5jCkBAIC02ODksNiArNjg5LDEwIEBAIF9fYXNzaWduX21tYXBfb2Zmc2V0KHN0
cnVjdCBkcm1fZmlsZSAqZmlsZSwKIAkJZ290byBvdXQ7CiAJfQogCisJaWYgKG1tYXBfdHlwZSAh
PSBJOTE1X01NQVBfVFlQRV9XQyAmJgorCSAgICBpOTE1X2dlbV9vYmplY3RfcGxhY2VtZW50c19j
b250YWluX3R5cGUob2JqLCBJTlRFTF9NRU1PUllfTE9DQUwpKQorCQlyZXR1cm4gLUVOT0RFVjsK
KwogCW1tbyA9IG1tYXBfb2Zmc2V0X2F0dGFjaChvYmosIG1tYXBfdHlwZSwgZmlsZSk7CiAJaWYg
KElTX0VSUihtbW8pKSB7CiAJCWVyciA9IFBUUl9FUlIobW1vKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwppbmRleCAyYmU2MTA5ZDAwOTMuLmQ0YjBkYThlZDk2
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwpAQCAtNDAz
LDYgKzQwMywyOCBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3JlYWRfZnJvbV9wYWdlKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmosIHU2NCBvZmZzZXQsCiAJcmV0dXJuIDA7CiB9CiAKKy8q
KgorICogaTkxNV9nZW1fb2JqZWN0X3BsYWNlbWVudHNfY29udGFpbl90eXBlIC0gQ2hlY2sgd2hl
dGhlciB0aGUgb2JqZWN0IGNhbiBiZQorICogcGxhY2VkIGF0IGNlcnRhaW4gbWVtb3J5IHR5cGUK
KyAqIEBvYmo6IFBvaW50ZXIgdG8gdGhlIG9iamVjdAorICogQHR5cGU6IFRoZSBtZW1vcnkgdHlw
ZSB0byBjaGVjaworICoKKyAqIFJldHVybjogVHJ1ZSBpZiB0aGUgb2JqZWN0IGNhbiBiZSBwbGFj
ZWQgaW4gQHR5cGUuIEZhbHNlIG90aGVyd2lzZS4KKyAqLworYm9vbCBpOTE1X2dlbV9vYmplY3Rf
cGxhY2VtZW50c19jb250YWluX3R5cGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
KwkJCQkJICAgICBlbnVtIGludGVsX21lbW9yeV90eXBlIHR5cGUpCit7CisJdW5zaWduZWQgaW50
IGk7CisKKwkvKiBUT0RPOiBjb25zaWRlciBtYXliZSBzdG9yaW5nIGFzIGEgbWFzayB3aGVuIGRv
aW5nIGdlbV9jcmVhdGVfZXh0ICovCisJZm9yIChpID0gMDsgaSA8IG9iai0+bW0ubl9wbGFjZW1l
bnRzOyBpKyspIHsKKwkJaWYgKG9iai0+bW0ucGxhY2VtZW50c1tpXS0+dHlwZSA9PSB0eXBlKQor
CQkJcmV0dXJuIHRydWU7CisJfQorCisJcmV0dXJuIGZhbHNlOworfQorCiB2b2lkIGk5MTVfZ2Vt
X2luaXRfX29iamVjdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJSU5JVF9X
T1JLKCZpOTE1LT5tbS5mcmVlX3dvcmssIF9faTkxNV9nZW1fZnJlZV93b3JrKTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAppbmRleCAyZWJkNzk1MzdhZWEuLjRk
NmVhOWUwN2RmMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Qu
aApAQCAtMTIsNiArMTIsNyBAQAogI2luY2x1ZGUgPGRybS9kcm1fZGV2aWNlLmg+CiAKICNpbmNs
dWRlICJkaXNwbGF5L2ludGVsX2Zyb250YnVmZmVyLmgiCisjaW5jbHVkZSAiaW50ZWxfbWVtb3J5
X3JlZ2lvbi5oIgogI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdF90eXBlcy5oIgogI2luY2x1ZGUg
Imk5MTVfZ2VtX2d0dC5oIgogI2luY2x1ZGUgImk5MTVfdm1hX3R5cGVzLmgiCkBAIC01ODcsNiAr
NTg4LDkgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9yZWFkX2Zyb21fcGFnZShzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqLCB1NjQgb2Zmc2V0LAogCiBib29sIGk5MTVfZ2VtX29iamVjdF9p
c19zaG1lbShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKIAorYm9vbCBp
OTE1X2dlbV9vYmplY3RfcGxhY2VtZW50c19jb250YWluX3R5cGUoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiwKKwkJCQkJICAgICBlbnVtIGludGVsX21lbW9yeV90eXBlIHR5cGUpOwor
CiAjaWZkZWYgQ09ORklHX01NVV9OT1RJRklFUgogc3RhdGljIGlubGluZSBib29sCiBpOTE1X2dl
bV9vYmplY3RfaXNfdXNlcnB0cihzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQotLSAK
Mi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
