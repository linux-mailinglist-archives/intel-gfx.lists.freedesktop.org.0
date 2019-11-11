Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3578F818C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 21:50:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBC026E303;
	Mon, 11 Nov 2019 20:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61E516E7EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 20:50:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 12:50:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="194060050"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by orsmga007.jf.intel.com with ESMTP; 11 Nov 2019 12:50:50 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 12:50:25 -0800
Message-Id: <20191111205024.22853-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111205024.22853-1-lucas.demarchi@intel.com>
References: <20191111205024.22853-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dsb: fix extra warning on error
 path handling
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

V2hlbiB3ZSBjYWxsIGludGVsX2RzYl9nZXQoKSwgdGhlIGRzYiBpbml0aWFsaXphdGlvbiBtYXkg
ZmFpbCBmb3IKdmFyaW91cyByZWFzb25zLiBXZSBhbHJlYWR5IGxvZyB0aGUgZXJyb3IgbWVzc2Fn
ZSBpbiB0aGF0IHBhdGgsIG1ha2luZwppdCB1bm5lY2Vzc2FyeSB0byB0cmlnZ2VyIGEgd2Fybmlu
ZyB0aGF0IHJlZmNvdW50ID09IDAgd2hlbiBjYWxsaW5nCmludGVsX2RzYl9wdXQoKS4KClNvIGhl
cmUgd2Ugc2ltcGxpZnkgdGhlIGxvZ2ljIGFuZCBkbyBsYXp5IHNodXRkb3duOiBsZWF2aW5nIHRo
ZSBleHRyYQpyZWZjb3VudCBhbGl2ZSBzbyB3aGVuIHdlIGNhbGwgaW50ZWxfZHNiX3B1dCgpIHdl
IGVuZCB1cCBjYWxsaW5nCmk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCkuCgpTaWduZWQtb2Zm
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMjEgKysrKysrKysrKysrKyst
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwppbmRleCA0ZmVlYmJlYjBi
MGMuLjg1OGFmNmJlOWMzNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kc2IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jCkBAIC0xMDIsNiArMTAyLDcgQEAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YykKIAlzdHJ1Y3QgaW50ZWxfZHNiICpkc2IgPSAmY3J0Yy0+ZHNiOwogCXN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CisJdTMyICpidWY7
CiAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7CiAKIAlpZiAoIUhBU19EU0IoaTkxNSkpCkBAIC0x
MTAsNyArMTExLDYgQEAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAlp
ZiAoKytkc2ItPnJlZmNvdW50ICE9IDEpCiAJCXJldHVybiBkc2I7CiAKLQlkc2ItPmlkID0gRFNC
MTsKIAl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwog
CiAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBEU0JfQlVGX1NJ
WkUpOwpAQCAtMTIzLDIyICsxMjMsMjkgQEAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykKIAlpZiAoSVNfRVJSKHZtYSkpIHsKIAkJRFJNX0VSUk9SKCJWbWEgY3JlYXRpb24g
ZmFpbGVkXG4iKTsKIAkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwotCQlkc2ItPnJlZmNvdW50
LS07CiAJCWdvdG8gZXJyOwogCX0KIAotCWRzYi0+Y21kX2J1ZiA9IGk5MTVfZ2VtX29iamVjdF9w
aW5fbWFwKHZtYS0+b2JqLCBJOTE1X01BUF9XQyk7Ci0JaWYgKElTX0VSUihkc2ItPmNtZF9idWYp
KSB7CisJYnVmID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAodm1hLT5vYmosIEk5MTVfTUFQX1dD
KTsKKwlpZiAoSVNfRVJSKGJ1ZikpIHsKIAkJRFJNX0VSUk9SKCJDb21tYW5kIGJ1ZmZlciBjcmVh
dGlvbiBmYWlsZWRcbiIpOwotCQlpOTE1X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSgmdm1hLCAwKTsK
LQkJZHNiLT5jbWRfYnVmID0gTlVMTDsKLQkJZHNiLT5yZWZjb3VudC0tOwogCQlnb3RvIGVycjsK
IAl9CisKKwlkc2ItPmlkID0gRFNCMTsKIAlkc2ItPnZtYSA9IHZtYTsKKwlkc2ItPmNtZF9idWYg
PSBidWY7CiAKIGVycjoKKwkvKgorCSAqIFNldCBjbWRfYnVmIHRvIE5VTEwgc28gdGhlIHdyaXRl
cyBwYXNzLXRocm91Z2gsIGJ1dCBsZWF2ZSB0aGUKKwkgKiBkYW5nbGluZyByZWZjb3VudCB0byBi
ZSByZW1vdmVkIGxhdGVyIGJ5IHRoZSBjb3JyZXNwb25kaW5nCisJICogaW50ZWxfZHNiX3B1dCgp
OiB0aGUgaW1wb3J0YW50IGVycm9yIG1lc3NhZ2Ugd2lsbCBhbHJlYWR5IGJlCisJICogbG9nZ2Vk
IGFib3ZlLgorCSAqLworCWRzYi0+Y21kX2J1ZiA9IE5VTEw7CiAJaW50ZWxfcnVudGltZV9wbV9w
dXQoJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpOworCiAJcmV0dXJuIGRzYjsKIH0KIAotLSAK
Mi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
