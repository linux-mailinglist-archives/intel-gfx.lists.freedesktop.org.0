Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB6422D126
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 23:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E7BA6EA09;
	Fri, 24 Jul 2020 21:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D256E171
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 21:39:24 +0000 (UTC)
IronPort-SDR: Qw2Smd7766132tpvhVhxs6PlRx7IFShVP2tKSMP6/Vit15sZ8m1NbuUc7uyxTPO2ZnXwyyVWOL
 DggzJ5BZXA/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149970009"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149970009"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 14:39:23 -0700
IronPort-SDR: doaEG7n9ZfxnhAlmKer9uXX/vYfPlKyl1qt/W07H5yvApQwbxQIeb5pKjzxi8Cy+utCe0Enr2P
 u3aZgGnADKCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="329041945"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2020 14:39:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 14:39:01 -0700
Message-Id: <20200724213918.27424-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200724213918.27424-1-lucas.demarchi@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 05/22] drm/i915/dg1: Wait for pcode/uncore
 handshake at startup
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkRHMSBkb2VzIHNv
bWUgYWRkaXRpb25hbCBwY29kZS91bmNvcmUgaGFuZHNoYWtpbmcgYXQKYm9vdCB0aW1lOyB0aGlz
IGhhbmRzaGFraW5nIG11c3QgY29tcGxldGUgYmVmb3JlIHZhcmlvdXMgb3RoZXIgcGNvZGUKY29t
bWFuZHMgYXJlIGVmZmVjdGl2ZSBhbmQgYmVmb3JlIGdlbmVyYWwgd29yayBpcyBzdWJtaXR0ZWQg
dG8gdGhlIEdQVS4KV2UgbmVlZCB0byBwb2xsIGEgbmV3IHBjb2RlIG1haWxib3ggZHVyaW5nIHN0
YXJ0dXAgdW50aWwgaXQgcmVwb3J0cyB0aGF0CnRoaXMgaGFuZHNoYWtpbmcgaXMgY29tcGxldGUu
CgpUaGUgYnNwZWMgZG9lc24ndCBnaXZlIGd1aWRhbmNlIG9uIGhvdyBsb25nIHdlIG1heSBuZWVk
IHRvIHdhaXQgZm9yIHRoaXMKaGFuZHNoYWtpbmcgdG8gY29tcGxldGUuICBGb3Igbm93LCBsZXQn
cyBqdXN0IHNldCBhIHJlYWxseSBsb25nIHRpbWVvdXQ7CmlmIHdlIHN0aWxsIGRvbid0IGdldCBh
IGNvbXBsZXRpb24gc3RhdHVzIGJ5IHRoZSBlbmQgb2YgdGhhdCB0aW1lb3V0LAp3ZSdsbCBqdXN0
IGNvbnRpbnVlIG9uIGFuZCBob3BlIGZvciB0aGUgYmVzdC4KCkJzcGVjOiA1MjA2NQpDYzogQ2xp
bnRvbiBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IFJhZGhha3Jpc2huYSBTcmlw
YWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMgICAgICAgfCAgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgfCAgMyArKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5k
LmMgfCAxNSArKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGVi
YW5kLmggfCAgMiArKwogNCBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKaW5kZXggNWZkNWFmNGJjODU1Li41NDczYmZlOTEyNmMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYwpAQCAtODUsNiArODUsNyBAQAogI2luY2x1ZGUgImludGVsX2d2dC5o
IgogI2luY2x1ZGUgImludGVsX21lbW9yeV9yZWdpb24uaCIKICNpbmNsdWRlICJpbnRlbF9wbS5o
IgorI2luY2x1ZGUgImludGVsX3NpZGViYW5kLmgiCiAjaW5jbHVkZSAidmx2X3N1c3BlbmQuaCIK
IAogc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGRyaXZlcjsKQEAgLTczNyw2ICs3MzgsOCBAQCBz
dGF0aWMgaW50IGk5MTVfZHJpdmVyX2h3X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAkgKi8KIAlpbnRlbF9kcmFtX2RldGVjdChkZXZfcHJpdik7CiAKKwlpbnRlbF9w
Y29kZV9pbml0KGRldl9wcml2KTsKKwogCWludGVsX2J3X2luaXRfaHcoZGV2X3ByaXYpOwogCiAJ
cmV0dXJuIDA7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBhMGQzMWYzYmY2MzQuLjM3Njdi
MzIxMjdkYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC05MjQ1LDYgKzkyNDUsOSBAQCBl
bnVtIHsKICNkZWZpbmUgICAgIEdFTjlfU0FHVl9ESVNBQkxFCQkJMHgwCiAjZGVmaW5lICAgICBH
RU45X1NBR1ZfSVNfRElTQUJMRUQJCTB4MQogI2RlZmluZSAgICAgR0VOOV9TQUdWX0VOQUJMRQkJ
CTB4MworI2RlZmluZSAgIERHMV9QQ09ERV9TVEFUVVMJCQkweDdFCisjZGVmaW5lICAgICBERzFf
Q0hFQ0tfVU5DT1JFX0lOSVRfU1RBVFVTCTB4MAorI2RlZmluZSAgICAgREcxX1VOQ09SRV9JTklU
X0NPTVBMRVRFCQkweDEKICNkZWZpbmUgR0VOMTJfUENPREVfUkVBRF9TQUdWX0JMT0NLX1RJTUVf
VVMJMHgyMwogI2RlZmluZSBHRU42X1BDT0RFX0RBVEEJCQkJX01NSU8oMHgxMzgxMjgpCiAjZGVm
aW5lICAgR0VONl9QQ09ERV9GUkVRX0lBX1JBVElPX1NISUZUCTgKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9zaWRlYmFuZC5jCmluZGV4IDkxNmNjZDFjMGU5Ni4uOGIwOTM1MjUyNDBkIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRlYmFuZC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMKQEAgLTU0MywzICs1NDMsMTggQEAgaW50IHNr
bF9wY29kZV9yZXF1ZXN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgbWJveCwg
dTMyIHJlcXVlc3QsCiAJcmV0dXJuIHJldCA/IHJldCA6IHN0YXR1czsKICN1bmRlZiBDT05ECiB9
CisKK3ZvaWQgaW50ZWxfcGNvZGVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
K3sKKwlpbnQgcmV0OworCisJaWYgKCFJU19ER0ZYKGk5MTUpKQorCQlyZXR1cm47CisKKwlyZXQg
PSBza2xfcGNvZGVfcmVxdWVzdChpOTE1LCBERzFfUENPREVfU1RBVFVTLAorCQkJCURHMV9DSEVD
S19VTkNPUkVfSU5JVF9TVEFUVVMsCisJCQkJREcxX1VOQ09SRV9JTklUX0NPTVBMRVRFLAorCQkJ
CURHMV9VTkNPUkVfSU5JVF9DT01QTEVURSwgNTApOworCWlmIChyZXQpCisJCWRybV9lcnIoJmk5
MTUtPmRybSwgIlBjb2RlIGRpZCBub3QgcmVwb3J0IHVuY29yZSBpbml0aWFsaXphdGlvbiBjb21w
bGV0aW9uIVxuIik7Cit9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9z
aWRlYmFuZC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuaAppbmRleCA3
ZmI5NTc0NWE0NDQuLjA5NGM3YjE5YzVkNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfc2lkZWJhbmQuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zaWRl
YmFuZC5oCkBAIC0xMzgsNCArMTM4LDYgQEAgaW50IHNhbmR5YnJpZGdlX3Bjb2RlX3dyaXRlX3Rp
bWVvdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUzMiBtYm94LAogaW50IHNrbF9w
Y29kZV9yZXF1ZXN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgbWJveCwgdTMy
IHJlcXVlc3QsCiAJCSAgICAgIHUzMiByZXBseV9tYXNrLCB1MzIgcmVwbHksIGludCB0aW1lb3V0
X2Jhc2VfbXMpOwogCit2b2lkIGludGVsX3Bjb2RlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpOworCiAjZW5kaWYgLyogX0lOVEVMX1NJREVCQU5EX0ggKi8KLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
