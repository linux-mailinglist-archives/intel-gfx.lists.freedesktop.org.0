Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF07AEEB7
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 17:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C4E6E920;
	Tue, 10 Sep 2019 15:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 595F66E91F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 15:43:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 08:43:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="214346009"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by fmsmga002.fm.intel.com with ESMTP; 10 Sep 2019 08:43:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 08:42:51 -0700
Message-Id: <20190910154252.30503-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190910154252.30503-1-matthew.d.roper@intel.com>
References: <20190910154252.30503-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 7/8] drm/i915: Enhance cdclk sanitization
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

V2hlbiByZWFkaW5nIG91dCB0aGUgQklPUy1wcm9ncmFtbWVkIGNkY2xrIHN0YXRlLCBsZXQncyBt
YWtlIHN1cmUgdGhhdAp0aGUgY2RjbGsgdmFsdWUgaXMgb24gdGhlIHZhbGlkIGxpc3QgZm9yIHRo
ZSBwbGF0Zm9ybSwgZW5zdXJlIHRoYXQgdGhlClZDTyBtYXRjaGVzIHRoZSBjZGNsaywgYW5kIGVu
c3VyZSB0aGF0IHRoZSBDRDJYIGRpdmlkZXIgd2FzIHNldApwcm9wZXJseS4KCkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAzNCArKysrKysrKysrKysrKysrKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKaW5kZXggY2IyZmM2OGM5
MzM1Li42ODZjMWU2MTAwZjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmMKQEAgLTE1OTgsNiArMTU5OCw3IEBAIHN0YXRpYyB2b2lkIGJ4dF9zZXRfY2RjbGso
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogc3RhdGljIHZvaWQgYnh0X3Nhbml0
aXplX2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAl1MzIgY2Rj
dGwsIGV4cGVjdGVkOworCWludCBjZGNsaywgdmNvOwogCiAJaW50ZWxfdXBkYXRlX2NkY2xrKGRl
dl9wcml2KTsKIAlpbnRlbF9kdW1wX2NkY2xrX3N0YXRlKCZkZXZfcHJpdi0+Y2RjbGsuaHcsICJD
dXJyZW50IENEQ0xLIik7CkBAIC0xNjIwLDggKzE2MjEsMzcgQEAgc3RhdGljIHZvaWQgYnh0X3Nh
bml0aXplX2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkgKi8KIAlj
ZGN0bCAmPSB+QlhUX0NEQ0xLX0NEMlhfUElQRV9OT05FOwogCi0JZXhwZWN0ZWQgPSAoY2RjdGwg
JiBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMX01BU0spIHwKLQkJc2tsX2NkY2xrX2RlY2ltYWwoZGV2
X3ByaXYtPmNkY2xrLmh3LmNkY2xrKTsKKwkvKiBNYWtlIHN1cmUgdGhpcyBpcyBhIGxlZ2FsIGNk
Y2xrIHZhbHVlIGZvciB0aGUgcGxhdGZvcm0gKi8KKwljZGNsayA9IGJ4dF9jYWxjX2NkY2xrKGRl
dl9wcml2LCBkZXZfcHJpdi0+Y2RjbGsuaHcuY2RjbGspOworCWlmIChjZGNsayAhPSBkZXZfcHJp
di0+Y2RjbGsuaHcuY2RjbGspCisJCWdvdG8gc2FuaXRpemU7CisKKwkvKiBNYWtlIHN1cmUgdGhl
IFZDTyBpcyBjb3JyZWN0IGZvciB0aGUgY2RjbGsgKi8KKwl2Y28gPSBieHRfY2FsY19jZGNsa19w
bGxfdmNvKGRldl9wcml2LCBjZGNsayk7CisJaWYgKHZjbyAhPSBkZXZfcHJpdi0+Y2RjbGsuaHcu
dmNvKQorCQlnb3RvIHNhbml0aXplOworCisJZXhwZWN0ZWQgPSBza2xfY2RjbGtfZGVjaW1hbChj
ZGNsayk7CisKKwkvKiBGaWd1cmUgb3V0IHdoYXQgQ0QyWCBkaXZpZGVyIHdlIHNob3VsZCBiZSB1
c2luZyBmb3IgdGhpcyBjZGNsayAqLworCXN3aXRjaCAoRElWX1JPVU5EX0NMT1NFU1QoZGV2X3By
aXYtPmNkY2xrLmh3LnZjbywKKwkJCQkgIGRldl9wcml2LT5jZGNsay5ody5jZGNsaykpIHsKKwlj
YXNlIDI6CisJCWV4cGVjdGVkIHw9IEJYVF9DRENMS19DRDJYX0RJVl9TRUxfMTsKKwkJYnJlYWs7
CisJY2FzZSAzOgorCQlleHBlY3RlZCB8PSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzFfNTsKKwkJ
YnJlYWs7CisJY2FzZSA0OgorCQlleHBlY3RlZCB8PSBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzI7
CisJCWJyZWFrOworCWNhc2UgODoKKwkJZXhwZWN0ZWQgfD0gQlhUX0NEQ0xLX0NEMlhfRElWX1NF
TF80OworCQlicmVhazsKKwlkZWZhdWx0OgorCQlnb3RvIHNhbml0aXplOworCX0KKwogCS8qCiAJ
ICogRGlzYWJsZSBTU0EgUHJlY2hhcmdlIHdoZW4gQ0QgY2xvY2sgZnJlcXVlbmN5IDwgNTAwIE1I
eiwKIAkgKiBlbmFibGUgb3RoZXJ3aXNlLgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
