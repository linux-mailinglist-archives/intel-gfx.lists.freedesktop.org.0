Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 837E222947
	for <lists+intel-gfx@lfdr.de>; Sun, 19 May 2019 23:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E06A88EF5;
	Sun, 19 May 2019 21:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50BF88EF5
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 May 2019 21:50:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 May 2019 14:50:49 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 19 May 2019 14:50:48 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.42])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4JLolUv017286; Sun, 19 May 2019 22:50:47 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 19 May 2019 21:50:43 +0000
Message-Id: <20190519215043.10712-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
Subject: [Intel-gfx] [PATCH v2] drm/i915/huc: Don't try to check HuC status
 if it's not loaded
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgbmV2ZXIgYXR0ZW1wdGVkIHRvIGxvYWQgSHVDIGZpcm13YXJlLCBvciB3ZSBhbHJlYWR5
IHdlZGdlZApvciByZXNldCBHdUMvSHVDLCB0aGVuIHRoZXJlIGlzIG5vIHJlYXNvbiB0byB3YWtl
IHVwIHRoZSBkZXZpY2UKdG8gY2hlY2sgb25lIGJpdCBpbiB0aGUgcmVnaXN0ZXIgdGhhdCB3aWxs
IGJlIGZvciBzdXJlIGNsZWFyZWQuCgp2MjogY2hlY2sgaWYgSHVDIHdhcyBlbmFibGVkOyBzdWJ0
bGUgY2hhbmdlIGluIEFCSQogICAgcmV1c2UgaHVzX2lzX2xvYWQgaGVscGVyCgpTdWdnZXN0ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5
OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVG9ueSBZZSA8dG9ueS55ZUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMgfCAyMCArKysr
KysrKysrKystLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmggfCAgNSAr
KysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMKaW5kZXggMWZmMWZiMDE1ZTU4Li5iZmRlYmVjMWNmYzgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jCkBAIC0xMTMsNyArMTEzLDcgQEAgaW50IGludGVs
X2h1Y19hdXRoKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKIAl1MzIgc3RhdHVzOwogCWludCByZXQ7
CiAKLQlpZiAoaHVjLT5mdy5sb2FkX3N0YXR1cyAhPSBJTlRFTF9VQ19GSVJNV0FSRV9TVUNDRVNT
KQorCWlmICghaW50ZWxfaHVjX2lzX2xvYWRlZChodWMpKQogCQlyZXR1cm4gLUVOT0VYRUM7CiAK
IAlyZXQgPSBpbnRlbF9ndWNfYXV0aF9odWMoZ3VjLApAQCAtMTUwLDIxICsxNTAsMjUgQEAgaW50
IGludGVsX2h1Y19hdXRoKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKICAqIFRoaXMgZnVuY3Rpb24g
cmVhZHMgc3RhdHVzIHJlZ2lzdGVyIHRvIHZlcmlmeSBpZiBIdUMKICAqIGZpcm13YXJlIHdhcyBz
dWNjZXNzZnVsbHkgbG9hZGVkLgogICoKLSAqIFJldHVybnM6IDEgaWYgSHVDIGZpcm13YXJlIGlz
IGxvYWRlZCBhbmQgdmVyaWZpZWQsCi0gKiAwIGlmIEh1QyBmaXJtd2FyZSBpcyBub3QgbG9hZGVk
IGFuZCAtRU5PREVWIGlmIEh1QwotICogaXMgbm90IHByZXNlbnQgb24gdGhpcyBwbGF0Zm9ybS4K
KyAqIFJldHVybnM6IDEgaWYgSHVDIGZpcm13YXJlIGlzIGxvYWRlZCBhbmQgdmVyaWZpZWQsIDAg
aWYgSHVDIGZpcm13YXJlIGlzIG5vdAorICogZW5hYmxlZCwgLUVOT1BLRyBpZiBIdUMgZmlybXdh
cmUgaXMgbm90IGxvYWRlZCBhbmQgLUVOT0RFViBpZiBIdUMgaXMgbm90CisgKiBwcmVzZW50IG9u
IHRoaXMgcGxhdGZvcm0uCiAgKi8KIGludCBpbnRlbF9odWNfY2hlY2tfc3RhdHVzKHN0cnVjdCBp
bnRlbF9odWMgKmh1YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBo
dWNfdG9faTkxNShodWMpOwogCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwotCWJvb2wgc3RhdHVz
ID0gZmFsc2U7CisJYm9vbCB2ZXJpZmllZCA9IGZhbHNlOwogCiAJaWYgKCFIQVNfSFVDKGRldl9w
cml2KSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKLQl3aXRoX2ludGVsX3J1bnRpbWVfcG0oZGV2X3By
aXYsIHdha2VyZWYpCi0JCXN0YXR1cyA9IEk5MTVfUkVBRChIVUNfU1RBVFVTMikgJiBIVUNfRldf
VkVSSUZJRUQ7CisJaWYgKCFVU0VTX0hVQyhkZXZfcHJpdikpCisJCXJldHVybiAwOwogCi0JcmV0
dXJuIHN0YXR1czsKKwlpZiAoaW50ZWxfaHVjX2lzX2xvYWRlZChodWMpKQorCQl3aXRoX2ludGVs
X3J1bnRpbWVfcG0oZGV2X3ByaXYsIHdha2VyZWYpCisJCQl2ZXJpZmllZCA9IEk5MTVfUkVBRChI
VUNfU1RBVFVTMikgJiBIVUNfRldfVkVSSUZJRUQ7CisKKwlyZXR1cm4gdmVyaWZpZWQgPyAxIDog
LUVOT1BLRzsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmgKaW5kZXggYTBjMjFhZTAyYTk5Li5j
ZGUzZDMwMzcxOGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5oCkBAIC00NCw2ICs0NCwxMSBA
QCB2b2lkIGludGVsX2h1Y19maW5pKHN0cnVjdCBpbnRlbF9odWMgKmh1Yyk7CiBpbnQgaW50ZWxf
aHVjX2F1dGgoc3RydWN0IGludGVsX2h1YyAqaHVjKTsKIGludCBpbnRlbF9odWNfY2hlY2tfc3Rh
dHVzKHN0cnVjdCBpbnRlbF9odWMgKmh1Yyk7CiAKK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9o
dWNfaXNfbG9hZGVkKHN0cnVjdCBpbnRlbF9odWMgKmh1YykKK3sKKwlyZXR1cm4gaW50ZWxfdWNf
ZndfaXNfbG9hZGVkKCZodWMtPmZ3KTsKK30KKwogc3RhdGljIGlubGluZSB2b2lkIGludGVsX2h1
Y19maW5pX21pc2Moc3RydWN0IGludGVsX2h1YyAqaHVjKQogewogCWludGVsX3VjX2Z3X2NsZWFu
dXBfZmV0Y2goJmh1Yy0+ZncpOwotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
