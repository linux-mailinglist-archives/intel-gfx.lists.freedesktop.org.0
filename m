Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD4926517
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F9C89AB6;
	Wed, 22 May 2019 13:51:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C1089A98;
 Wed, 22 May 2019 13:51:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:51:10 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 06:51:09 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:50:54 +0100
Message-Id: <20190522135104.26930-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
References: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 04/14] lib: igt_gt: make
 gem_engine_can_store_dword() check engine class
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpFbmdpbmVzIHJlZmVycmVk
IGJ5IGNsYXNzIGFuZCBpbnN0YW5jZSBhcmUgZ2V0dGluZyBtb3JlIHBvcHVsYXIsCmdlbV9lbmdp
bmVfY2FuX3N0b3JlX2R3b3JkKCkgc2hvdWxkIGhhbmRsZSB0aGUgc2l0dWF0aW9uLgoKU3VnZ2Vz
dGVkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogbGliL2lndF9ndC5j
IHwgMTIgKysrKysrKysrLS0tCiBsaWIvaWd0X2d0LmggfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2lndF9n
dC5jIGIvbGliL2lndF9ndC5jCmluZGV4IDU5YjYyMjQyNzQ5ZS4uNWU1YjliZWYwM2RjIDEwMDY0
NAotLS0gYS9saWIvaWd0X2d0LmMKKysrIGIvbGliL2lndF9ndC5jCkBAIC01NTcsNyArNTU3LDcg
QEAgY29uc3Qgc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUgaW50ZWxfZXhlY3V0aW9uX2Vu
Z2luZXNbXSA9IHsKIAl7IE5VTEwsIDAsIDAgfQogfTsKIAotYm9vbCBnZW1fY2FuX3N0b3JlX2R3
b3JkKGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2luZSkKK2Jvb2wgZ2VtX2NsYXNzX2Nhbl9zdG9y
ZV9kd29yZChpbnQgZmQsIGludCBjbGFzcykKIHsKIAl1aW50MTZfdCBkZXZpZCA9IGludGVsX2dl
dF9kcm1fZGV2aWQoZmQpOwogCWNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyAqaW5mbyA9
IGludGVsX2dldF9kZXZpY2VfaW5mbyhkZXZpZCk7CkBAIC01NjksOCArNTY5LDggQEAgYm9vbCBn
ZW1fY2FuX3N0b3JlX2R3b3JkKGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2luZSkKIAlpZiAoZ2Vu
ID09IDMgJiYgKGluZm8tPmlzX2dyYW50c2RhbGUgfHwgaW5mby0+aXNfYWx2aXNvKSkKIAkJcmV0
dXJuIGZhbHNlOyAvKiBvbmx5IHN1cHBvcnRzIHBoeXNpY2FsIGFkZHJlc3NlcyAqLwogCi0JaWYg
KGdlbiA9PSA2ICYmICgoZW5naW5lICYgMHgzZikgPT0gSTkxNV9FWEVDX0JTRCkpCi0JCXJldHVy
biBmYWxzZTsgLyoga2lsbHMgdGhlIG1hY2hpbmUhICovCisJaWYgKGdlbiA9PSA2ICYmIGNsYXNz
ID09IEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPKQorCQlyZXR1cm4gZmFsc2U7CiAKIAlpZiAoaW5m
by0+aXNfYnJvYWR3YXRlcikKIAkJcmV0dXJuIGZhbHNlOyAvKiBOb3Qgc3VyZSB5ZXQuLi4gKi8K
QEAgLTU3OCw2ICs1NzgsMTIgQEAgYm9vbCBnZW1fY2FuX3N0b3JlX2R3b3JkKGludCBmZCwgdW5z
aWduZWQgaW50IGVuZ2luZSkKIAlyZXR1cm4gdHJ1ZTsKIH0KIAorYm9vbCBnZW1fY2FuX3N0b3Jl
X2R3b3JkKGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2luZSkKK3sKKwlyZXR1cm4gZ2VtX2NsYXNz
X2Nhbl9zdG9yZV9kd29yZChmZCwKKwkJCQlnZW1fZXhlY2J1Zl9mbGFnc190b19lbmdpbmVfY2xh
c3MoZW5naW5lKSk7Cit9CisKIGNvbnN0IHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiBp
bnRlbF9leGVjdXRpb25fZW5naW5lczJbXSA9IHsKIAl7ICJyY3MwIiwgSTkxNV9FTkdJTkVfQ0xB
U1NfUkVOREVSLCAwIH0sCiAJeyAiYmNzMCIsIEk5MTVfRU5HSU5FX0NMQVNTX0NPUFksIDAgfSwK
ZGlmZiAtLWdpdCBhL2xpYi9pZ3RfZ3QuaCBiL2xpYi9pZ3RfZ3QuaAppbmRleCA4Y2VlZDE0Mjg4
YzcuLjBiNWM3ZmNiNGMzYyAxMDA2NDQKLS0tIGEvbGliL2lndF9ndC5oCisrKyBiL2xpYi9pZ3Rf
Z3QuaApAQCAtOTAsNiArOTAsNyBAQCBib29sIGdlbV9yaW5nX2lzX3BoeXNpY2FsX2VuZ2luZShp
bnQgZmQsIHVuc2lnbmVkIGludCByaW5nKTsKIGJvb2wgZ2VtX3JpbmdfaGFzX3BoeXNpY2FsX2Vu
Z2luZShpbnQgZmQsIHVuc2lnbmVkIGludCByaW5nKTsKIAogYm9vbCBnZW1fY2FuX3N0b3JlX2R3
b3JkKGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2luZSk7Citib29sIGdlbV9jbGFzc19jYW5fc3Rv
cmVfZHdvcmQoaW50IGZkLCBpbnQgY2xhc3MpOwogCiBleHRlcm4gY29uc3Qgc3RydWN0IGludGVs
X2V4ZWN1dGlvbl9lbmdpbmUyIHsKIAljb25zdCBjaGFyICpuYW1lOwotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
