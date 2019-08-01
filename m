Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 354187E66C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 01:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 008466E839;
	Thu,  1 Aug 2019 23:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769286E839
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 23:28:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 16:28:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,336,1559545200"; d="scan'208";a="167067149"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.51])
 by orsmga008.jf.intel.com with ESMTP; 01 Aug 2019 16:28:15 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Aug 2019 16:28:11 -0700
Message-Id: <20190801232812.28375-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Get transcoder power domain
 before reading its register
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

V2hlbiBnZXR0aW5nIHRoZSBwaXBlcyBhdHRhY2hlZCB0byBlbmNvZGVyIGlmIGl0IGlzIG5vdCBh
IGVEUCBlbmNvZGVyCml0IGl0ZXJhdGVzIG92ZXIgYWxsIHBpcGVzIGFuZCByZWFkIGEgdHJhbnNj
b2RlciByZWdpc3Rlci4KQnV0IGl0IHNob3VsZCBub3QgcmVhZCBhIHRyYW5zY29kZXIgcmVnaXN0
ZXIgYmVmb3JlIGdldCBpdHMgcG93ZXIKZG9tYWluLgoKSXQgd2FzIG5vdCBhIGlzc3VlIGluIGdl
bnMgb2xkZXIgdGhhbiAxMiBiZWNhdXNlIGlmIGl0IG9ubHkgaGFkCnBvcnQgQSBjb25uZWN0ZWQg
aXQgd291bGQgYmUgYXR0YWNoZWQgdG8gRURQIGFuZCBpdCB3b3VsZCBza2lwIGFsbAp0aGUgdHJh
bnNjb2RlcnMgcmVhZG91dCwgaWYgaXQgaGFkIG1vcmUgdGhhbiBvbmUgcG9ydCBjb25uZWN0ZWQs
CnBpcGUgQiB3b3VsZCBjYXVzZSBQRzMgdG8gYmUgb24gYW5kIGl0IGNvbnRhaW5zIGFsbCBvdGhl
cgp0cmFuc2NvZGVycy4KCkJ1dCBvbiBnZW4gMTIgdGhlcmUgaXMgbm8gRURQIHRyYW5zY29kZXIg
c28gaXQgaXMgYWx3YXlzIGl0ZXJhdGluZwpvdmVyIGFsbCBwaXBlcyBhbmQgaWYgb25seSBvbmUg
c2luayBpcyBjb25uZWN0ZWQsIFBHMyBpcyBrZXB0IG9mZgphbmQgcmVhZGluZyBvdGhlciB0cmFu
c2NvZGVycyByZWdpc3RlcnMgd291bGQgY2F1c2UgYQp1bmNsYWltZWQgcmVhZCB3YXJuaW5nLgoK
U28gaGVyZSBnZXR0aW5nIHRoZSBwb3dlciBkb21haW4gb2YgdGhlIHRyYW5zY29kZXIgb25seSBp
ZiBpdCBpcwplbmFibGVkLCBvdGhlcndpc2UgaXQgaXMgbm90IGNvbm5lY3RlZCB0byB0aGUgRERJ
LgoKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgOCArKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jCmluZGV4IGZiNTg4NDUwMjBkYy4uNjYwYmIwMDFiZTM1IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTIwMTUsNiArMjAxNSwxMiBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZ2V0X2VuY29kZXJfcGlwZXMoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCiAJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcCkgewogCQllbnVtIHRy
YW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSAoZW51bSB0cmFuc2NvZGVyKXA7CiAJCXVuc2lnbmVk
IGludCBwb3J0X21hc2ssIGRkaV9zZWxlY3Q7CisJCWludGVsX3dha2VyZWZfdCB0cmFuc193YWtl
cmVmOworCisJCXRyYW5zX3dha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldF9pZl9lbmFi
bGVkKGRldl9wcml2LAorCQkJCQkJCQkgICBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUihjcHVfdHJh
bnNjb2RlcikpOworCQlpZiAoIXRyYW5zX3dha2VyZWYpCisJCQljb250aW51ZTsKIAogCQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewogCQkJcG9ydF9tYXNrID0gVEdMX1RSQU5TX0RE
SV9QT1JUX01BU0s7CkBAIC0yMDI1LDYgKzIwMzEsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlf
Z2V0X2VuY29kZXJfcGlwZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCX0KIAog
CQl0bXAgPSBJOTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7CisJ
CWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LCBQT1dFUl9ET01BSU5fVFJBTlNDT0RF
UihjcHVfdHJhbnNjb2RlciksCisJCQkJCXRyYW5zX3dha2VyZWYpOwogCiAJCWlmICgodG1wICYg
cG9ydF9tYXNrKSAhPSBkZGlfc2VsZWN0KQogCQkJY29udGludWU7Ci0tIAoyLjIyLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
