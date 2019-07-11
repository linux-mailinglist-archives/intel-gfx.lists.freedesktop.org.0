Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BBE65F2C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738426E28C;
	Thu, 11 Jul 2019 17:56:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F77E6E28B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894709"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:13 -0700
Message-Id: <20190711173115.28296-20-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 19/21] drm/i915/tgl: Add vbt value mapping
 for DDC Bus pin
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

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KCkFkZCBWQlQtdmFs
dWUgdG8gRERDIGJ1cyBwaW4gbWFwcGluZyBmb3IgdGhlIHNhbWUuCgpTaWduZWQtb2ZmLWJ5OiBN
YWhlc2ggS3VtYXIgPG1haGVzaDEua3VtYXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8IDE3ICsrKysrKysrKysrKysrKyst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCAgMyArKysK
IDIgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKaW5kZXggNGZkYmI1YzM1ZDg3Li4y
ZmU2OGY3MmI4OGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
CkBAIC0xMzU1LDEyICsxMzU1LDI3IEBAIHN0YXRpYyBjb25zdCB1OCBtY2NfZGRjX3Bpbl9tYXBb
XSA9IHsKIAlbTUNDX0REQ19CVVNfRERJX0NdID0gR01CVVNfUElOXzlfVEMxX0lDUCwKIH07CiAK
K3N0YXRpYyBjb25zdCB1OCB0Z3BfZGRjX3Bpbl9tYXBbXSA9IHsKKwlbSUNMX0REQ19CVVNfRERJ
X0FdID0gR01CVVNfUElOXzFfQlhULAorCVtJQ0xfRERDX0JVU19ERElfQl0gPSBHTUJVU19QSU5f
Ml9CWFQsCisJW1RHTF9ERENfQlVTX0RESV9DXSA9IEdNQlVTX1BJTl8zX0JYVCwKKwlbSUNMX0RE
Q19CVVNfUE9SVF8xXSA9IEdNQlVTX1BJTl85X1RDMV9JQ1AsCisJW0lDTF9ERENfQlVTX1BPUlRf
Ml0gPSBHTUJVU19QSU5fMTBfVEMyX0lDUCwKKwlbSUNMX0REQ19CVVNfUE9SVF8zXSA9IEdNQlVT
X1BJTl8xMV9UQzNfSUNQLAorCVtJQ0xfRERDX0JVU19QT1JUXzRdID0gR01CVVNfUElOXzEyX1RD
NF9JQ1AsCisJW1RHTF9ERENfQlVTX1BPUlRfNV0gPSBHTUJVU19QSU5fMTNfVEM1X1RHUCwKKwlb
VEdMX0REQ19CVVNfUE9SVF82XSA9IEdNQlVTX1BJTl8xNF9UQzZfVEdQLAorfTsKKwogc3RhdGlj
IHU4IG1hcF9kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTggdmJ0
X3BpbikKIHsKIAljb25zdCB1OCAqZGRjX3Bpbl9tYXA7CiAJaW50IG5fZW50cmllczsKIAotCWlm
IChIQVNfUENIX01DQyhkZXZfcHJpdikpIHsKKwlpZiAoSEFTX1BDSF9UR1AoZGV2X3ByaXYpKSB7
CisJCWRkY19waW5fbWFwID0gdGdwX2RkY19waW5fbWFwOworCQluX2VudHJpZXMgPSBBUlJBWV9T
SVpFKHRncF9kZGNfcGluX21hcCk7CisJfSBlbHNlIGlmIChIQVNfUENIX01DQyhkZXZfcHJpdikp
IHsKIAkJZGRjX3Bpbl9tYXAgPSBtY2NfZGRjX3Bpbl9tYXA7CiAJCW5fZW50cmllcyA9IEFSUkFZ
X1NJWkUobWNjX2RkY19waW5fbWFwKTsKIAl9IGVsc2UgaWYgKEhBU19QQ0hfSUNQKGRldl9wcml2
KSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRf
ZGVmcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCmlu
ZGV4IDJmNDg5NGU5YTAzZC4uOTNmNWM5ZDIwNGQ2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCkBAIC0zMTAsMTAgKzMxMCwxMyBAQCBlbnVtIHZi
dF9nbWJ1c19kZGkgewogCUREQ19CVVNfRERJX0YsCiAJSUNMX0REQ19CVVNfRERJX0EgPSAweDEs
CiAJSUNMX0REQ19CVVNfRERJX0IsCisJVEdMX0REQ19CVVNfRERJX0MsCiAJSUNMX0REQ19CVVNf
UE9SVF8xID0gMHg0LAogCUlDTF9ERENfQlVTX1BPUlRfMiwKIAlJQ0xfRERDX0JVU19QT1JUXzMs
CiAJSUNMX0REQ19CVVNfUE9SVF80LAorCVRHTF9ERENfQlVTX1BPUlRfNSwKKwlUR0xfRERDX0JV
U19QT1JUXzYsCiAJTUNDX0REQ19CVVNfRERJX0EgPSAweDEsCiAJTUNDX0REQ19CVVNfRERJX0Is
CiAJTUNDX0REQ19CVVNfRERJX0MgPSAweDQsCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
