Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1505CD48E2
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 22:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63C38892A8;
	Fri, 11 Oct 2019 20:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600CE89143
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 20:10:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 13:10:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,285,1566889200"; d="scan'208";a="184862446"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 11 Oct 2019 13:10:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 23:10:15 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 23:09:49 +0300
Message-Id: <20191011200949.7839-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011200949.7839-1-ville.syrjala@linux.intel.com>
References: <20191011200949.7839-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] drm/i915: Nuke skl wm.dirty_pipes bitmask
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBkaXJ0eV9waXBlcyBiaXRtYXNrIGlzIG5vdyB1bnVzZWQuIEdldCByaWQgb2YgaXQuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAgMSAtCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgMzUgKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzNSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBlYmE5MDU1YzQ0MDUuLmMxNmJhODVlMmVjOCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC05MDEsNyArOTAxLDYgQEAgc3RydWN0IHNrbF9kZGJf
YWxsb2NhdGlvbiB7CiB9OwogCiBzdHJ1Y3Qgc2tsX2RkYl92YWx1ZXMgewotCXVuc2lnbmVkIGRp
cnR5X3BpcGVzOwogCXN0cnVjdCBza2xfZGRiX2FsbG9jYXRpb24gZGRiOwogfTsKIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMKaW5kZXggMzkwZDFmOGQ0NWJhLi5jY2JiNzMyY2ZmNDQgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYwpAQCAtNTEzMCwyMyArNTEzMCw2IEBAIHN0YXRpYyBib29sIHNrbF9w
bGFuZV93bV9lcXVhbHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCXJldHVy
biBza2xfd21fbGV2ZWxfZXF1YWxzKCZ3bTEtPnRyYW5zX3dtLCAmd20yLT50cmFuc193bSk7CiB9
CiAKLXN0YXRpYyBib29sIHNrbF9waXBlX3dtX2VxdWFscyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YywKLQkJCSAgICAgICBjb25zdCBzdHJ1Y3Qgc2tsX3BpcGVfd20gKndtMSwKLQkJCSAgICAgICBj
b25zdCBzdHJ1Y3Qgc2tsX3BpcGVfd20gKndtMikKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKLQllbnVtIHBsYW5lX2lkIHBs
YW5lX2lkOwotCi0JZm9yX2VhY2hfcGxhbmVfaWRfb25fY3J0YyhjcnRjLCBwbGFuZV9pZCkgewot
CQlpZiAoIXNrbF9wbGFuZV93bV9lcXVhbHMoZGV2X3ByaXYsCi0JCQkJCSAmd20xLT5wbGFuZXNb
cGxhbmVfaWRdLAotCQkJCQkgJndtMi0+cGxhbmVzW3BsYW5lX2lkXSkpCi0JCQlyZXR1cm4gZmFs
c2U7Ci0JfQotCi0JcmV0dXJuIHRydWU7Ci19Ci0KIHN0YXRpYyBpbmxpbmUgYm9vbCBza2xfZGRi
X2VudHJpZXNfb3ZlcmxhcChjb25zdCBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAqYSwKIAkJCQkJICAg
Y29uc3Qgc3RydWN0IHNrbF9kZGJfZW50cnkgKmIpCiB7CkBAIC01NDAzLDggKzUzODYsNiBAQCBz
a2xfZGRiX2FkZF9hZmZlY3RlZF9waXBlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkKIAkgKiB0byBncmFiIHRoZSBsb2NrIG9uICphbGwqIENSVEMncy4KIAkgKi8KIAlpZiAoc3Rh
dGUtPmFjdGl2ZV9waXBlX2NoYW5nZXMgfHwgc3RhdGUtPm1vZGVzZXQpIHsKLQkJc3RhdGUtPndt
X3Jlc3VsdHMuZGlydHlfcGlwZXMgPSBJTlRFTF9JTkZPKGRldl9wcml2KS0+cGlwZV9tYXNrOwot
CiAJCXJldCA9IGludGVsX2FkZF9hbGxfcGlwZXMoc3RhdGUpOwogCQlpZiAocmV0KQogCQkJcmV0
dXJuIHJldDsKQEAgLTU0NzksMTIgKzU0NjAsOCBAQCBza2xfY29tcHV0ZV93bShzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7CiAJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm9sZF9jcnRjX3N0YXRlOwotCXN0cnVjdCBza2xfZGRiX3ZhbHVlcyAqcmVzdWx0cyA9
ICZzdGF0ZS0+d21fcmVzdWx0czsKIAlpbnQgcmV0LCBpOwogCi0JLyogQ2xlYXIgYWxsIGRpcnR5
IGZsYWdzICovCi0JcmVzdWx0cy0+ZGlydHlfcGlwZXMgPSAwOwotCiAJcmV0ID0gc2tsX2RkYl9h
ZGRfYWZmZWN0ZWRfcGlwZXMoc3RhdGUpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CkBAIC01
NDkyLDggKzU0NjksNyBAQCBza2xfY29tcHV0ZV93bShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkKIAkvKgogCSAqIENhbGN1bGF0ZSBXTSdzIGZvciBhbGwgcGlwZXMgdGhhdCBhcmUg
cGFydCBvZiB0aGlzIHRyYW5zYWN0aW9uLgogCSAqIE5vdGUgdGhhdCBza2xfZGRiX2FkZF9hZmZl
Y3RlZF9waXBlcyBtYXkgaGF2ZSBhZGRlZCBtb3JlIENSVEMncyB0aGF0Ci0JICogd2VyZW4ndCBv
dGhlcndpc2UgYmVpbmcgbW9kaWZpZWQgKGFuZCBzZXQgYml0cyBpbiBkaXJ0eV9waXBlcykgaWYK
LQkgKiBwaXBlIGFsbG9jYXRpb25zIGhhZCB0byBjaGFuZ2UuCisJICogd2VyZW4ndCBvdGhlcndp
c2UgYmVpbmcgbW9kaWZpZWQgaWYgcGlwZSBhbGxvY2F0aW9ucyBoYWQgdG8gY2hhbmdlLgogCSAq
LwogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRf
Y3J0Y19zdGF0ZSwKIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7CkBAIC01NTA0LDExICs1
NDgwLDYgQEAgc2tsX2NvbXB1dGVfd20oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
CiAJCXJldCA9IHNrbF93bV9hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0YXRlLCBjcnRjKTsKIAkJaWYg
KHJldCkKIAkJCXJldHVybiByZXQ7Ci0KLQkJaWYgKCFza2xfcGlwZV93bV9lcXVhbHMoY3J0YywK
LQkJCQkJJm9sZF9jcnRjX3N0YXRlLT53bS5za2wub3B0aW1hbCwKLQkJCQkJJm5ld19jcnRjX3N0
YXRlLT53bS5za2wub3B0aW1hbCkpCi0JCQlyZXN1bHRzLT5kaXJ0eV9waXBlcyB8PSBCSVQoY3J0
Yy0+cGlwZSk7CiAJfQogCiAJcmV0ID0gc2tsX2NvbXB1dGVfZGRiKHN0YXRlKTsKQEAgLTU2NDQs
NyArNTYxNSw2IEBAIHZvaWQgc2tsX3BpcGVfd21fZ2V0X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjLAogCiB2b2lkIHNrbF93bV9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogewotCXN0cnVjdCBza2xfZGRiX3ZhbHVlcyAqaHcgPSAmZGV2X3By
aXYtPndtLnNrbF9odzsKIAlzdHJ1Y3Qgc2tsX2RkYl9hbGxvY2F0aW9uICpkZGIgPSAmZGV2X3By
aXYtPndtLnNrbF9ody5kZGI7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CkBAIC01NjU0LDkgKzU2MjQsNiBAQCB2b2lkIHNr
bF93bV9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlj
cnRjX3N0YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsKIAogCQlz
a2xfcGlwZV93bV9nZXRfaHdfc3RhdGUoY3J0YywgJmNydGNfc3RhdGUtPndtLnNrbC5vcHRpbWFs
KTsKLQotCQlpZiAoY3J0Yy0+YWN0aXZlKQotCQkJaHctPmRpcnR5X3BpcGVzIHw9IEJJVChjcnRj
LT5waXBlKTsKIAl9CiAKIAlpZiAoZGV2X3ByaXYtPmFjdGl2ZV9waXBlcykgewotLSAKMi4yMS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
