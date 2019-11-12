Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DD0F91AE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:15:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B596E95B;
	Tue, 12 Nov 2019 14:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B43E06E95B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:15:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 06:15:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="216042643"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 12 Nov 2019 06:15:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Nov 2019 16:15:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Nov 2019 16:14:55 +0200
Message-Id: <20191112141503.1116-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
References: <20191112141503.1116-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: Add intel_crtc_vblank_off()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGFscmVhZHkgaGF2ZSBpbnRlbF9jcnRjX3ZibGFua19vbigpLiBBZGQgYSBjb3VudGVycGFydCBz
byB3ZQpkb24ndCBoYXZlIHRvIGlubGluZSB0aGUgZGlzYWJsZSthc3NlcnQgYWxsIG92ZXIuCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
MTUgKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggZGEwMWZhNjkyOGEyLi4xOTQwMjlmZjg2MTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xODMxLDYgKzE4MzEsMTIgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfY3J0Y192Ymxhbmtfb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCiAJZHJtX2NydGNfdmJsYW5rX29uKCZjcnRjLT5iYXNlKTsKIH0KIAor
c3RhdGljIHZvaWQgaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQoreworCWRybV9jcnRjX3ZibGFua19vZmYoJmNydGMtPmJhc2UpOworCWFzc2VydF92Ymxhbmtf
ZGlzYWJsZWQoJmNydGMtPmJhc2UpOworfQorCiBzdGF0aWMgdm9pZCBpbnRlbF9lbmFibGVfcGlw
ZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCiB7CiAJc3Ry
dWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKG5ld19jcnRjX3N0YXRlLT51YXBp
LmNydGMpOwpAQCAtNjczNiw4ICs2NzQyLDcgQEAgc3RhdGljIHZvaWQgaXJvbmxha2VfY3J0Y19k
aXNhYmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAogCWludGVs
X2VuY29kZXJzX2Rpc2FibGUoc3RhdGUsIGludGVsX2NydGMpOwogCi0JZHJtX2NydGNfdmJsYW5r
X29mZihjcnRjKTsKLQlhc3NlcnRfdmJsYW5rX2Rpc2FibGVkKGNydGMpOworCWludGVsX2NydGNf
dmJsYW5rX29mZihpbnRlbF9jcnRjKTsKIAogCWludGVsX2Rpc2FibGVfcGlwZShvbGRfY3J0Y19z
dGF0ZSk7CiAKQEAgLTY3ODYsOCArNjc5MSw3IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfY3J0Y19k
aXNhYmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAogCWludGVs
X2VuY29kZXJzX2Rpc2FibGUoc3RhdGUsIGludGVsX2NydGMpOwogCi0JZHJtX2NydGNfdmJsYW5r
X29mZihjcnRjKTsKLQlhc3NlcnRfdmJsYW5rX2Rpc2FibGVkKGNydGMpOworCWludGVsX2NydGNf
dmJsYW5rX29mZihpbnRlbF9jcnRjKTsKIAogCS8qIFhYWDogRG8gdGhlIHBpcGUgYXNzZXJ0aW9u
cyBhdCB0aGUgcmlnaHQgcGxhY2UgZm9yIEJYVCBEU0kuICovCiAJaWYgKCF0cmFuc2NvZGVyX2lz
X2RzaShjcHVfdHJhbnNjb2RlcikpCkBAIC03MTYzLDggKzcxNjcsNyBAQCBzdGF0aWMgdm9pZCBp
OXh4X2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUs
CiAKIAlpbnRlbF9lbmNvZGVyc19kaXNhYmxlKHN0YXRlLCBpbnRlbF9jcnRjKTsKIAotCWRybV9j
cnRjX3ZibGFua19vZmYoY3J0Yyk7Ci0JYXNzZXJ0X3ZibGFua19kaXNhYmxlZChjcnRjKTsKKwlp
bnRlbF9jcnRjX3ZibGFua19vZmYoaW50ZWxfY3J0Yyk7CiAKIAlpbnRlbF9kaXNhYmxlX3BpcGUo
b2xkX2NydGNfc3RhdGUpOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
