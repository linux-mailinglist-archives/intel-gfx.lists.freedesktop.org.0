Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF327CE2D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 22:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F8589842;
	Wed, 31 Jul 2019 20:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F1589842
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 20:24:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 13:24:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="163259562"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.51])
 by orsmga007.jf.intel.com with ESMTP; 31 Jul 2019 13:24:38 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2019 13:24:32 -0700
Message-Id: <20190731202433.27078-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Compute has_drrs after compute
 has_psr
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFJSUyBhbmQgUFNSIGNhbid0IGJlIGVuYWJsZSB0b2dldGhlciwgc28gZ2l2aW5nIHByZWZlcmVu
Y2UgdG8gUFNSCmFzIGl0IGFsbG93cyBtb3JlIHBvd2VyLXNhdmluZ3MgYnkgY29tcGxldGUgc2h1
dHRpbmcgZG93biBkaXNwbGF5LApzbyB0byBndWFyYW50ZWUgdGhpcywgaXQgc2hvdWxkIGNvbXB1
dGUgRFJSUyBzdGF0ZSBhZnRlciBjb21wdXRlIFBTUi4KCkNjOiBEaGluYWthcmFuIFBhbmRpeWFu
IDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxt
YWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDUzICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspLCAyMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggMGViNWQ2NmY4N2E3Li43ZmE3
MDJlYWZmZjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTIx
NDEsNiArMjE0MSwzNiBAQCBib29sIGludGVsX2RwX2xpbWl0ZWRfY29sb3JfcmFuZ2UoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJfQogfQogCitzdGF0aWMgdm9p
ZAoraW50ZWxfZHBfZHJyc19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LAorCQkJICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcsCisJCQkgICAg
IGludCBvdXRwdXRfYnBwLCBib29sIGNvbnN0YW50X24pCit7CisJc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqaW50ZWxfY29ubmVjdG9yID0gaW50ZWxfZHAtPmF0dGFjaGVkX2Nvbm5lY3RvcjsKKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsK
KworCS8qCisJICogRFJSUyBhbmQgUFNSIGNhbid0IGJlIGVuYWJsZSB0b2dldGhlciwgc28gZ2l2
aW5nIHByZWZlcmVuY2UgdG8gUFNSCisJICogYXMgaXQgYWxsb3dzIG1vcmUgcG93ZXItc2F2aW5n
cyBieSBjb21wbGV0ZSBzaHV0dGluZyBkb3duIGRpc3BsYXksCisJICogc28gdG8gZ3VhcmFudGVl
IHRoaXMsIGludGVsX2RwX2RycnNfY29tcHV0ZV9jb25maWcoKSBtdXN0IGJlIGNhbGxlZAorCSAq
IGFmdGVyIGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZygpLgorCSAqLworCWlmIChwaXBlX2NvbmZp
Zy0+aGFzX3BzcikKKwkJcmV0dXJuOworCisJaWYgKGRldl9wcml2LT5kcnJzLnR5cGUgIT0gU0VB
TUxFU1NfRFJSU19TVVBQT1JUKQorCQlyZXR1cm47CisKKwlpZiAoIWludGVsX2Nvbm5lY3Rvci0+
cGFuZWwuZG93bmNsb2NrX21vZGUpCisJCXJldHVybjsKKworCXBpcGVfY29uZmlnLT5oYXNfZHJy
cyA9IHRydWU7CisJaW50ZWxfbGlua19jb21wdXRlX21fbihvdXRwdXRfYnBwLCBwaXBlX2NvbmZp
Zy0+bGFuZV9jb3VudCwKKwkJCSAgICAgICBpbnRlbF9jb25uZWN0b3ItPnBhbmVsLmRvd25jbG9j
a19tb2RlLT5jbG9jaywKKwkJCSAgICAgICBwaXBlX2NvbmZpZy0+cG9ydF9jbG9jaywgJnBpcGVf
Y29uZmlnLT5kcF9tMl9uMiwKKwkJCSAgICAgICBjb25zdGFudF9uKTsKK30KKwogaW50CiBpbnRl
bF9kcF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCXN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKQEAgLTIxNzIsNyArMjIwMiw2IEBA
IGludGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAog
CWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlwaXBlX2NvbmZpZy0+aGFzX2RycnMgPSBmYWxz
ZTsKIAlpZiAoSVNfRzRYKGRldl9wcml2KSB8fCBwb3J0ID09IFBPUlRfQSkKIAkJcGlwZV9jb25m
aWctPmhhc19hdWRpbyA9IGZhbHNlOwogCWVsc2UgaWYgKGludGVsX2Nvbm5fc3RhdGUtPmZvcmNl
X2F1ZGlvID09IEhETUlfQVVESU9fQVVUTykKQEAgLTIyMjcsMjEgKzIyNTYsMTIgQEAgaW50ZWxf
ZHBfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkgICAg
ICAgJnBpcGVfY29uZmlnLT5kcF9tX24sCiAJCQkgICAgICAgY29uc3RhbnRfbik7CiAKLQlpZiAo
aW50ZWxfY29ubmVjdG9yLT5wYW5lbC5kb3duY2xvY2tfbW9kZSAhPSBOVUxMICYmCi0JCWRldl9w
cml2LT5kcnJzLnR5cGUgPT0gU0VBTUxFU1NfRFJSU19TVVBQT1JUKSB7Ci0JCQlwaXBlX2NvbmZp
Zy0+aGFzX2RycnMgPSB0cnVlOwotCQkJaW50ZWxfbGlua19jb21wdXRlX21fbihvdXRwdXRfYnBw
LAotCQkJCQkgICAgICAgcGlwZV9jb25maWctPmxhbmVfY291bnQsCi0JCQkJCSAgICAgICBpbnRl
bF9jb25uZWN0b3ItPnBhbmVsLmRvd25jbG9ja19tb2RlLT5jbG9jaywKLQkJCQkJICAgICAgIHBp
cGVfY29uZmlnLT5wb3J0X2Nsb2NrLAotCQkJCQkgICAgICAgJnBpcGVfY29uZmlnLT5kcF9tMl9u
MiwKLQkJCQkJICAgICAgIGNvbnN0YW50X24pOwotCX0KLQogCWlmICghSEFTX0RESShkZXZfcHJp
dikpCiAJCWludGVsX2RwX3NldF9jbG9jayhlbmNvZGVyLCBwaXBlX2NvbmZpZyk7CiAKIAlpbnRl
bF9wc3JfY29tcHV0ZV9jb25maWcoaW50ZWxfZHAsIHBpcGVfY29uZmlnKTsKKwlpbnRlbF9kcF9k
cnJzX2NvbXB1dGVfY29uZmlnKGludGVsX2RwLCBwaXBlX2NvbmZpZywgb3V0cHV0X2JwcCwKKwkJ
CQkgICAgIGNvbnN0YW50X24pOwogCiAJcmV0dXJuIDA7CiB9CkBAIC02NzI0LDE1ICs2NzQ0LDgg
QEAgdm9pZCBpbnRlbF9lZHBfZHJyc19lbmFibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVs
X2RwKTsKIAotCWlmICghY3J0Y19zdGF0ZS0+aGFzX2RycnMpIHsKLQkJRFJNX0RFQlVHX0tNUygi
UGFuZWwgZG9lc24ndCBzdXBwb3J0IERSUlNcbiIpOworCWlmICghY3J0Y19zdGF0ZS0+aGFzX2Ry
cnMpCiAJCXJldHVybjsKLQl9Ci0KLQlpZiAoZGV2X3ByaXYtPnBzci5lbmFibGVkKSB7Ci0JCURS
TV9ERUJVR19LTVMoIlBTUiBlbmFibGVkLiBOb3QgZW5hYmxpbmcgRFJSUy5cbiIpOwotCQlyZXR1
cm47Ci0JfQogCiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRycnMubXV0ZXgpOwogCWlmIChkZXZf
cHJpdi0+ZHJycy5kcCkgewotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
