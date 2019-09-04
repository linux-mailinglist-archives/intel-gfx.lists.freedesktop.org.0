Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD6DA8695
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 18:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295ED89C21;
	Wed,  4 Sep 2019 16:26:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CDFE89C0A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 16:26:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 09:26:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,467,1559545200"; d="scan'208";a="190219593"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 04 Sep 2019 09:26:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2019 19:26:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 19:26:19 +0300
Message-Id: <20190904162625.15048-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
References: <20190904162625.15048-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/15] drm/i915: Check pfit minimum timings
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRy
YW5zY29kZXIgaGRpc3BsYXkvdmRpc3BsYXkgaGF2ZSBkb2N1bWVudGVkIG1pbmltdW0gbGltaXRz
CndoZW4gdXNpbmcgdGhlIHBhbmVsIGZpdHRlci4gRW5mb3JjZSB0aG9zZSBsaW1pdHMuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNTEg
KysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKaW5kZXggNjVmZGFiY2IyMDFhLi5jMmJkNjRiM2VkNTQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMTc2OCw2ICsxMTc2OCwxNyBA
QCBzdGF0aWMgYm9vbCBjOF9wbGFuZXNfY2hhbmdlZChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqbmV3X2NydGNfc3RhdGUpCiAJcmV0dXJuICFvbGRfY3J0Y19zdGF0ZS0+YzhfcGxhbmVz
ICE9ICFuZXdfY3J0Y19zdGF0ZS0+YzhfcGxhbmVzOwogfQogCitzdGF0aWMgaW50IGludGVsX3Bj
aF9wZml0X2NoZWNrX3RpbWluZ3MoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCit7CisJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUg
PQorCQkmY3J0Y19zdGF0ZS0+YmFzZS5hZGp1c3RlZF9tb2RlOworCisJaWYgKGFkanVzdGVkX21v
ZGUtPmNydGNfdmRpc3BsYXkgPCA3KQorCQlyZXR1cm4gLUVJTlZBTDsKKworCXJldHVybiAwOwor
fQorCiBzdGF0aWMgaW50IGludGVsX3BjaF9wZml0X2NoZWNrX3NyY19zaXplKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwpAQCAtMTE4NTUsNiAr
MTE4NjYsMTAgQEAgc3RhdGljIGludCBpbnRlbF9wY2hfcGZpdF9jaGVjayhjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAlpZiAoIWNydGNfc3RhdGUtPnBjaF9wZml0
LmVuYWJsZWQpCiAJCXJldHVybiAwOwogCisJcmV0ID0gaW50ZWxfcGNoX3BmaXRfY2hlY2tfdGlt
aW5ncyhjcnRjX3N0YXRlKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCiAJcmV0ID0gaW50
ZWxfcGNoX3BmaXRfY2hlY2tfc3JjX3NpemUoY3J0Y19zdGF0ZSk7CiAJaWYgKHJldCkKIAkJcmV0
dXJuIHJldDsKQEAgLTExODYyLDYgKzExODc3LDMzIEBAIHN0YXRpYyBpbnQgaW50ZWxfcGNoX3Bm
aXRfY2hlY2soY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJcmV0
dXJuIGludGVsX3BjaF9wZml0X2NoZWNrX3NjYWxpbmcoY3J0Y19zdGF0ZSk7CiB9CiAKK3N0YXRp
YyBpbnQgaW50ZWxfZ21jaF9wZml0X2NoZWNrX3RpbWluZ3MoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShjcnRjX3N0YXRlLT5iYXNlLmNydGMtPmRldik7CisJY29uc3Qgc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgKmFkanVzdGVkX21vZGUgPQorCQkmY3J0Y19zdGF0ZS0+YmFzZS5h
ZGp1c3RlZF9tb2RlOworCWludCBtaW47CisKKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA0
KQorCQltaW4gPSAzOworCWVsc2UKKwkJbWluID0gMjsKKworCWlmIChhZGp1c3RlZF9tb2RlLT5j
cnRjX2hkaXNwbGF5IDwgbWluIHx8CisJICAgIGFkanVzdGVkX21vZGUtPmNydGNfdmRpc3BsYXkg
PCBtaW4pCisJCXJldHVybiAtRUlOVkFMOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQg
aW50ZWxfZ21jaF9wZml0X2NoZWNrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQoreworCWlmICgoY3J0Y19zdGF0ZS0+Z21jaF9wZml0LmNvbnRyb2wgJiBQRklUX0VO
QUJMRSkgPT0gMCkKKwkJcmV0dXJuIDA7CisKKwlyZXR1cm4gaW50ZWxfZ21jaF9wZml0X2NoZWNr
X3RpbWluZ3MoY3J0Y19zdGF0ZSk7Cit9CisKIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19hdG9taWNf
Y2hlY2soc3RydWN0IGRybV9jcnRjICpjcnRjLAogCQkJCSAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKIHsKQEAgLTExODg1LDExICsxMTkyNywxMiBAQCBzdGF0aWMgaW50IGlu
dGVsX2NydGNfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAkJCXJldHVybiBy
ZXQ7CiAJfQogCi0JaWYgKCFIQVNfR01DSChkZXZfcHJpdikpIHsKKwlpZiAoSEFTX0dNQ0goZGV2
X3ByaXYpKQorCQlyZXQgPSBpbnRlbF9nbWNoX3BmaXRfY2hlY2socGlwZV9jb25maWcpOworCWVs
c2UKIAkJcmV0ID0gaW50ZWxfcGNoX3BmaXRfY2hlY2socGlwZV9jb25maWcpOwotCQlpZiAocmV0
KQotCQkJcmV0dXJuIHJldDsKLQl9CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKIAogCS8qCiAJ
ICogTWF5IG5lZWQgdG8gdXBkYXRlIHBpcGUgZ2FtbWEgZW5hYmxlIGJpdHMKLS0gCjIuMjEuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
