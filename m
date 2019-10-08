Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA79CFE9C
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:13:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8009A89870;
	Tue,  8 Oct 2019 16:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A59B89870
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:12:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 09:12:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="199856640"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Oct 2019 09:12:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 09:12:52 -0700
Message-Id: <20191008161252.1411-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Select DPLL's via mask
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzbGlnaHRseSBzaW1wbGlmaWVzIHRoZSBFSEwgRFBMTDQgaGFuZGxpbmcgYW5kIGFsc28g
Z2l2ZXMgdXMgbW9yZQpmbGV4aWJpbGl0eSBpbiB0aGUgZnV0dXJlIGluIGNhc2Ugd2UgbmVlZCB0
byBza2lwIHRoZSB1c2Ugb2Ygc3BlY2lmaWMKUExMJ3MgKGUuZy4sIGR1ZSB0byBoYXJkd2FyZSB3
b3JrYXJvdW5kcyBhbmQgc3VjaCkuCgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNo
aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jIHwgNDIgKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlv
bnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBsbF9tZ3IuYwppbmRleCA1ZTllODRjOTRhMTUuLjE0ZTA0MDY1OGIxMiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwpAQCAtMjQ3LDgg
KzI0Nyw3IEBAIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKgogaW50ZWxfZmluZF9z
aGFyZWRfZHBsbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkJICAgICAgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVs
X2RwbGxfaHdfc3RhdGUgKnBsbF9zdGF0ZSwKLQkJICAgICAgIGVudW0gaW50ZWxfZHBsbF9pZCBy
YW5nZV9taW4sCi0JCSAgICAgICBlbnVtIGludGVsX2RwbGxfaWQgcmFuZ2VfbWF4KQorCQkgICAg
ICAgdW5zaWduZWQgbG9uZyBkcGxsX21hc2spCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAJc3RydWN0IGludGVsX3NoYXJl
ZF9kcGxsICpwbGwsICp1bnVzZWRfcGxsID0gTlVMTDsKQEAgLTI1Nyw3ICsyNTYsOSBAQCBpbnRl
bF9maW5kX3NoYXJlZF9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCiAJ
c2hhcmVkX2RwbGwgPSBpbnRlbF9hdG9taWNfZ2V0X3NoYXJlZF9kcGxsX3N0YXRlKCZzdGF0ZS0+
YmFzZSk7CiAKLQlmb3IgKGkgPSByYW5nZV9taW47IGkgPD0gcmFuZ2VfbWF4OyBpKyspIHsKKwlX
QVJOX09OKGRwbGxfbWFzayAmIH4oQklUKEk5MTVfTlVNX1BMTFMpIC0gMSkpOworCisJZm9yX2Vh
Y2hfc2V0X2JpdChpLCAmZHBsbF9tYXNrLCBJOTE1X05VTV9QTExTKSB7CiAJCXBsbCA9ICZkZXZf
cHJpdi0+c2hhcmVkX2RwbGxzW2ldOwogCiAJCS8qIE9ubHkgd2FudCB0byBjaGVjayBlbmFibGVk
IHRpbWluZ3MgZmlyc3QgKi8KQEAgLTQ2NCw4ICs0NjUsOCBAQCBzdGF0aWMgYm9vbCBpYnhfZ2V0
X2RwbGwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJfSBlbHNlIHsKIAkJcGxs
ID0gaW50ZWxfZmluZF9zaGFyZWRfZHBsbChzdGF0ZSwgY3J0YywKIAkJCQkJICAgICAmY3J0Y19z
dGF0ZS0+ZHBsbF9od19zdGF0ZSwKLQkJCQkJICAgICBEUExMX0lEX1BDSF9QTExfQSwKLQkJCQkJ
ICAgICBEUExMX0lEX1BDSF9QTExfQik7CisJCQkJCSAgICAgR0VOTUFTSyhEUExMX0lEX1BDSF9Q
TExfQiwKKwkJCQkJCSAgICAgRFBMTF9JRF9QQ0hfUExMX0EpKTsKIAl9CiAKIAlpZiAoIXBsbCkK
QEAgLTgxNCw3ICs4MTUsNyBAQCBoc3dfZGRpX2hkbWlfZ2V0X2RwbGwoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCiAKIAlwbGwgPSBpbnRlbF9maW5kX3NoYXJlZF9kcGxsKHN0YXRl
LCBjcnRjLAogCQkJCSAgICAgJmNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUsCi0JCQkJICAgICBE
UExMX0lEX1dSUExMMSwgRFBMTF9JRF9XUlBMTDIpOworCQkJCSAgICAgR0VOTUFTSyhEUExMX0lE
X1dSUExMMiwgRFBMTF9JRF9XUlBMTDEpKTsKIAogCWlmICghcGxsKQogCQlyZXR1cm4gTlVMTDsK
QEAgLTg3Nyw3ICs4NzgsNyBAQCBzdGF0aWMgYm9vbCBoc3dfZ2V0X2RwbGwoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsCiAKIAkJcGxsID0gaW50ZWxfZmluZF9zaGFyZWRfZHBsbChz
dGF0ZSwgY3J0YywKIAkJCQkJICAgICAmY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZSwKLQkJCQkJ
ICAgICBEUExMX0lEX1NQTEwsIERQTExfSURfU1BMTCk7CisJCQkJCSAgICAgQklUKERQTExfSURf
U1BMTCkpOwogCX0gZWxzZSB7CiAJCXJldHVybiBmYWxzZTsKIAl9CkBAIC0xNDQ3LDEzICsxNDQ4
LDEyIEBAIHN0YXRpYyBib29sIHNrbF9nZXRfZHBsbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwKIAlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQ
VVRfRURQKSkKIAkJcGxsID0gaW50ZWxfZmluZF9zaGFyZWRfZHBsbChzdGF0ZSwgY3J0YywKIAkJ
CQkJICAgICAmY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZSwKLQkJCQkJICAgICBEUExMX0lEX1NL
TF9EUExMMCwKLQkJCQkJICAgICBEUExMX0lEX1NLTF9EUExMMCk7CisJCQkJCSAgICAgQklUKERQ
TExfSURfU0tMX0RQTEwwKSk7CiAJZWxzZQogCQlwbGwgPSBpbnRlbF9maW5kX3NoYXJlZF9kcGxs
KHN0YXRlLCBjcnRjLAogCQkJCQkgICAgICZjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlLAotCQkJ
CQkgICAgIERQTExfSURfU0tMX0RQTEwxLAotCQkJCQkgICAgIERQTExfSURfU0tMX0RQTEwzKTsK
KwkJCQkJICAgICBHRU5NQVNLKERQTExfSURfU0tMX0RQTEwzLAorCQkJCQkJICAgICAgRFBMTF9J
RF9TS0xfRFBMTDEpKTsKIAlpZiAoIXBsbCkKIAkJcmV0dXJuIGZhbHNlOwogCkBAIC0yNDAxLDgg
KzI0MDEsOCBAQCBzdGF0aWMgYm9vbCBjbmxfZ2V0X2RwbGwoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsCiAKIAlwbGwgPSBpbnRlbF9maW5kX3NoYXJlZF9kcGxsKHN0YXRlLCBjcnRj
LAogCQkJCSAgICAgJmNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUsCi0JCQkJICAgICBEUExMX0lE
X1NLTF9EUExMMCwKLQkJCQkgICAgIERQTExfSURfU0tMX0RQTEwyKTsKKwkJCQkgICAgIEdFTk1B
U0soRFBMTF9JRF9TS0xfRFBMTDIsCisJCQkJCSAgICAgRFBMTF9JRF9TS0xfRFBMTDApKTsKIAlp
ZiAoIXBsbCkgewogCQlEUk1fREVCVUdfS01TKCJObyBQTEwgc2VsZWN0ZWRcbiIpOwogCQlyZXR1
cm4gZmFsc2U7CkBAIC0yOTc1LDcgKzI5NzUsNyBAQCBzdGF0aWMgYm9vbCBpY2xfZ2V0X2NvbWJv
X3BoeV9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkmY3J0Y19zdGF0
ZS0+aWNsX3BvcnRfZHBsbHNbSUNMX1BPUlRfRFBMTF9ERUZBVUxUXTsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAllbnVtIHBv
cnQgcG9ydCA9IGVuY29kZXItPnBvcnQ7Ci0JYm9vbCBoYXNfZHBsbDQgPSBmYWxzZTsKKwl1bnNp
Z25lZCBkcGxsX21hc2s7CiAKIAlpZiAoIWljbF9jYWxjX2RwbGxfc3RhdGUoY3J0Y19zdGF0ZSwg
ZW5jb2RlciwgJnBvcnRfZHBsbC0+aHdfc3RhdGUpKSB7CiAJCURSTV9ERUJVR19LTVMoIkNvdWxk
IG5vdCBjYWxjdWxhdGUgY29tYm8gUEhZIFBMTCBzdGF0ZS5cbiIpOwpAQCAtMjk4NCwxMyArMjk4
NCwxMyBAQCBzdGF0aWMgYm9vbCBpY2xfZ2V0X2NvbWJvX3BoeV9kcGxsKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLAogCX0KIAogCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikg
JiYgcG9ydCAhPSBQT1JUX0EpCi0JCWhhc19kcGxsNCA9IHRydWU7CisJCWRwbGxfbWFzayA9IEdF
Tk1BU0soRFBMTF9JRF9FSExfRFBMTDQsIERQTExfSURfSUNMX0RQTEwwKTsKKwllbHNlCisJCWRw
bGxfbWFzayA9IEdFTk1BU0soRFBMTF9JRF9JQ0xfRFBMTDEsIERQTExfSURfSUNMX0RQTEwwKTsK
IAogCXBvcnRfZHBsbC0+cGxsID0gaW50ZWxfZmluZF9zaGFyZWRfZHBsbChzdGF0ZSwgY3J0YywK
IAkJCQkJCSZwb3J0X2RwbGwtPmh3X3N0YXRlLAotCQkJCQkJRFBMTF9JRF9JQ0xfRFBMTDAsCi0J
CQkJCQloYXNfZHBsbDQgPyBEUExMX0lEX0VITF9EUExMNAotCQkJCQkJCSAgOiBEUExMX0lEX0lD
TF9EUExMMSk7CisJCQkJCQlkcGxsX21hc2spOwogCWlmICghcG9ydF9kcGxsLT5wbGwpIHsKIAkJ
RFJNX0RFQlVHX0tNUygiTm8gY29tYm8gUEhZIFBMTCBmb3VuZCBmb3IgW0VOQ09ERVI6JWQ6JXNd
XG4iLAogCQkJICAgICAgZW5jb2Rlci0+YmFzZS5iYXNlLmlkLCBlbmNvZGVyLT5iYXNlLm5hbWUp
OwpAQCAtMzAyMyw4ICszMDIzLDcgQEAgc3RhdGljIGJvb2wgaWNsX2dldF90Y19waHlfZHBsbHMo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAKIAlwb3J0X2RwbGwtPnBsbCA9IGlu
dGVsX2ZpbmRfc2hhcmVkX2RwbGwoc3RhdGUsIGNydGMsCiAJCQkJCQkmcG9ydF9kcGxsLT5od19z
dGF0ZSwKLQkJCQkJCURQTExfSURfSUNMX1RCVFBMTCwKLQkJCQkJCURQTExfSURfSUNMX1RCVFBM
TCk7CisJCQkJCQlCSVQoRFBMTF9JRF9JQ0xfVEJUUExMKSk7CiAJaWYgKCFwb3J0X2RwbGwtPnBs
bCkgewogCQlEUk1fREVCVUdfS01TKCJObyBUQlQtQUxUIFBMTCBmb3VuZFxuIik7CiAJCXJldHVy
biBmYWxzZTsKQEAgLTMwNDMsOCArMzA0Miw3IEBAIHN0YXRpYyBib29sIGljbF9nZXRfdGNfcGh5
X2RwbGxzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCQkJCQkJCSBlbmNvZGVy
LT5wb3J0KSk7CiAJcG9ydF9kcGxsLT5wbGwgPSBpbnRlbF9maW5kX3NoYXJlZF9kcGxsKHN0YXRl
LCBjcnRjLAogCQkJCQkJJnBvcnRfZHBsbC0+aHdfc3RhdGUsCi0JCQkJCQlkcGxsX2lkLAotCQkJ
CQkJZHBsbF9pZCk7CisJCQkJCQlCSVQoZHBsbF9pZCkpOwogCWlmICghcG9ydF9kcGxsLT5wbGwp
IHsKIAkJRFJNX0RFQlVHX0tNUygiTm8gTUcgUEhZIFBMTCBmb3VuZFxuIik7CiAJCWdvdG8gZXJy
X3VucmVmZXJlbmNlX3RidF9wbGw7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
