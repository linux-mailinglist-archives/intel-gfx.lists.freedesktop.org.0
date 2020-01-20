Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 988611430F8
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 18:47:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB276EA58;
	Mon, 20 Jan 2020 17:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616A46EA56
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 17:47:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 09:47:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="275093364"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 20 Jan 2020 09:47:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jan 2020 19:47:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2020 19:47:14 +0200
Message-Id: <20200120174728.21095-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/17] drm/i915: Move more cdclk state handling
 into the cdclk code
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIGluaXRpYWwgc2V0dXAgb2Ygc3RhdGUtPntjZGNsayxtaW5fY2RjbGtbXSxtaW5fdm9s
dGFnZV9sZXZlbFtdfQppbnRvIGludGVsX21vZGVzZXRfY2FsY19jZGNsaygpLCBhbmQgd2UnbGwg
bW92ZSB0aGUgY291bnRlcnBhcnRzIGludG8KaW50ZWxfY2RjbGtfc3dhcF9zdGF0ZSgpLiBUaGlz
IGVuY2Fwc3VsYXRlcyB0aGUgY2RjbGsgc3RhdGUgbXVjaCBiZXR0ZXIuCgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyAgIHwgMjYgKysrKysrKysr
KysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgMTEgLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDE3IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpp
bmRleCAwY2U1OTI2MDA2Y2EuLjA1ZjZjNjQ1NmRkZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMTgxOSw2ICsxODE5LDE0IEBAIHZvaWQgaW50ZWxf
Y2RjbGtfc3dhcF9zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRl
dik7CiAKKwkvKiBGSVhNRSBtYXliZSBzd2FwKCkgdGhlc2UgdG9vICovCisJbWVtY3B5KGRldl9w
cml2LT5taW5fY2RjbGssIHN0YXRlLT5taW5fY2RjbGssCisJICAgICAgIHNpemVvZihzdGF0ZS0+
bWluX2NkY2xrKSk7CisJbWVtY3B5KGRldl9wcml2LT5taW5fdm9sdGFnZV9sZXZlbCwgc3RhdGUt
Pm1pbl92b2x0YWdlX2xldmVsLAorCSAgICAgICBzaXplb2Yoc3RhdGUtPm1pbl92b2x0YWdlX2xl
dmVsKSk7CisKKwlkZXZfcHJpdi0+Y2RjbGsuZm9yY2VfbWluX2NkY2xrID0gc3RhdGUtPmNkY2xr
LmZvcmNlX21pbl9jZGNsazsKKwogCXN3YXAoc3RhdGUtPmNkY2xrLmxvZ2ljYWwsIGRldl9wcml2
LT5jZGNsay5sb2dpY2FsKTsKIAlzd2FwKHN0YXRlLT5jZGNsay5hY3R1YWwsIGRldl9wcml2LT5j
ZGNsay5hY3R1YWwpOwogfQpAQCAtMjAzMyw5ICsyMDQxLDYgQEAgc3RhdGljIGludCBpbnRlbF9j
b21wdXRlX21pbl9jZGNsayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlpbnQg
bWluX2NkY2xrLCBpOwogCWVudW0gcGlwZSBwaXBlOwogCi0JbWVtY3B5KHN0YXRlLT5taW5fY2Rj
bGssIGRldl9wcml2LT5taW5fY2RjbGssCi0JICAgICAgIHNpemVvZihzdGF0ZS0+bWluX2NkY2xr
KSk7Ci0KIAlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgY3J0
Y19zdGF0ZSwgaSkgewogCQlpbnQgcmV0OwogCkBAIC0yMDgyLDkgKzIwODcsNiBAQCBzdGF0aWMg
aW50IGJ4dF9jb21wdXRlX21pbl92b2x0YWdlX2xldmVsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQogCWludCBpOwogCWVudW0gcGlwZSBwaXBlOwogCi0JbWVtY3B5KHN0YXRlLT5t
aW5fdm9sdGFnZV9sZXZlbCwgZGV2X3ByaXYtPm1pbl92b2x0YWdlX2xldmVsLAotCSAgICAgICBz
aXplb2Yoc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsKSk7Ci0KIAlmb3JfZWFjaF9uZXdfaW50ZWxf
Y3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgY3J0Y19zdGF0ZSwgaSkgewogCQlpbnQgcmV0Owog
CkBAIC0yMzM5LDYgKzIzNDEsMTggQEAgaW50IGludGVsX21vZGVzZXRfY2FsY19jZGNsayhzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAllbnVtIHBpcGUgcGlwZTsKIAlpbnQgcmV0
OwogCisJbWVtY3B5KHN0YXRlLT5taW5fY2RjbGssIGRldl9wcml2LT5taW5fY2RjbGssCisJICAg
ICAgIHNpemVvZihzdGF0ZS0+bWluX2NkY2xrKSk7CisJbWVtY3B5KHN0YXRlLT5taW5fdm9sdGFn
ZV9sZXZlbCwgZGV2X3ByaXYtPm1pbl92b2x0YWdlX2xldmVsLAorCSAgICAgICBzaXplb2Yoc3Rh
dGUtPm1pbl92b2x0YWdlX2xldmVsKSk7CisKKwkvKiBrZWVwIHRoZSBjdXJyZW50IHNldHRpbmcg
Ki8KKwlpZiAoIXN0YXRlLT5jZGNsay5mb3JjZV9taW5fY2RjbGtfY2hhbmdlZCkKKwkJc3RhdGUt
PmNkY2xrLmZvcmNlX21pbl9jZGNsayA9IGRldl9wcml2LT5jZGNsay5mb3JjZV9taW5fY2RjbGs7
CisKKwlzdGF0ZS0+Y2RjbGsubG9naWNhbCA9IGRldl9wcml2LT5jZGNsay5sb2dpY2FsOworCXN0
YXRlLT5jZGNsay5hY3R1YWwgPSBkZXZfcHJpdi0+Y2RjbGsuYWN0dWFsOworCiAJcmV0ID0gZGV2
X3ByaXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrKHN0YXRlKTsKIAlpZiAocmV0KQogCQly
ZXR1cm4gcmV0OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwppbmRleCA4ZGNiODZjNTFhYWEuLjkzMGU5MjU2NTk2YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE0MzYwLDE0ICsxNDM2MCw4IEBAIHN0
YXRpYyBpbnQgaW50ZWxfbW9kZXNldF9jaGVja3Moc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJaW50IHJldCwgaTsKIAotCS8qIGtl
ZXAgdGhlIGN1cnJlbnQgc2V0dGluZyAqLwotCWlmICghc3RhdGUtPmNkY2xrLmZvcmNlX21pbl9j
ZGNsa19jaGFuZ2VkKQotCQlzdGF0ZS0+Y2RjbGsuZm9yY2VfbWluX2NkY2xrID0gZGV2X3ByaXYt
PmNkY2xrLmZvcmNlX21pbl9jZGNsazsKLQogCXN0YXRlLT5tb2Rlc2V0ID0gdHJ1ZTsKIAlzdGF0
ZS0+YWN0aXZlX3BpcGVzID0gZGV2X3ByaXYtPmFjdGl2ZV9waXBlczsKLQlzdGF0ZS0+Y2RjbGsu
bG9naWNhbCA9IGRldl9wcml2LT5jZGNsay5sb2dpY2FsOwotCXN0YXRlLT5jZGNsay5hY3R1YWwg
PSBkZXZfcHJpdi0+Y2RjbGsuYWN0dWFsOwogCiAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNf
aW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLAogCQkJCQkgICAgbmV3X2NydGNf
c3RhdGUsIGkpIHsKQEAgLTE1NjczLDEyICsxNTY2Nyw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRv
bWljX2NvbW1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCWlmIChzdGF0ZS0+Z2xvYmFsX3N0
YXRlX2NoYW5nZWQpIHsKIAkJYXNzZXJ0X2dsb2JhbF9zdGF0ZV9sb2NrZWQoZGV2X3ByaXYpOwog
Ci0JCW1lbWNweShkZXZfcHJpdi0+bWluX2NkY2xrLCBzdGF0ZS0+bWluX2NkY2xrLAotCQkgICAg
ICAgc2l6ZW9mKHN0YXRlLT5taW5fY2RjbGspKTsKLQkJbWVtY3B5KGRldl9wcml2LT5taW5fdm9s
dGFnZV9sZXZlbCwgc3RhdGUtPm1pbl92b2x0YWdlX2xldmVsLAotCQkgICAgICAgc2l6ZW9mKHN0
YXRlLT5taW5fdm9sdGFnZV9sZXZlbCkpOwogCQlkZXZfcHJpdi0+YWN0aXZlX3BpcGVzID0gc3Rh
dGUtPmFjdGl2ZV9waXBlczsKLQkJZGV2X3ByaXYtPmNkY2xrLmZvcmNlX21pbl9jZGNsayA9IHN0
YXRlLT5jZGNsay5mb3JjZV9taW5fY2RjbGs7CiAKIAkJaW50ZWxfY2RjbGtfc3dhcF9zdGF0ZShz
dGF0ZSk7CiAJfQotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
