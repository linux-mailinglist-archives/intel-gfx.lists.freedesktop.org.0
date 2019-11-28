Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C4210C1DA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66AF56E02B;
	Thu, 28 Nov 2019 01:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502FD6E5D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:48:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 17:48:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="211863849"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.66])
 by orsmga003.jf.intel.com with ESMTP; 27 Nov 2019 17:48:54 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 17:48:49 -0800
Message-Id: <20191128014852.214135-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191128014852.214135-1-jose.souza@intel.com>
References: <20191128014852.214135-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 2/5] drm/i915/psr: Refactor psr short pulse
 handler
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

ZURQIHNwZWMgc3RhdGVzIHRoYXQgd2hlbiBzaW5rIGVuY29udGVycyBhIHByb2JsZW0gdGhhdCBw
cmV2ZW50cyBpdAp0byBrZWVwIFBTUiBydW5uaW5nIGl0IHNob3VsZCBzZXQgUFNSIHN0YXR1cyB0
byBpbnRlcm5hbCBlcnJvciBhbmQKc2V0IHRoZSByZWFzb24gd2h5IGl0IGhhcHBlbiB0byBQU1Jf
RVJST1JfU1RBVFVTIGJ1dCBpdCBpcyBub3QgaG93IGl0CndhcyBpbXBsZW1lbnRlZC4KQnV0IGFs
c28gSSBkb24ndCB3YW50IHRvIGNoYW5nZSB0aGlzIGJlaGF2aW9yLCB3aG8ga25vd3MgaWYgdGhl
cmUgaXMKYSBwYW5lbCBvdXQgdGhlcmUgdGhhdCBvbmx5IHNldCB0aGUgUFNSX0VSUk9SX1NUQVRV
Uy4KClNvIGhlcmUgcmVmYWN0b3JpbmcgdGhlIGNvZGUgYSBiaXQgdG8gbWFrZSBtb3JlIGVhc3kg
dG8gcmVhZCB3aGF0IHdhcwpzdGF0ZSBhYm92ZSBhcyBtb3JlIGNoZWNrcyB3aWxsIGJlIGFkZGVk
IHRvIHRoaXMgZnVuY3Rpb24uCgp2MjoKcmV0dXJuaW5nIGEgaW50IGluc3RlYWQgb2YgYSBib29s
IGluIHBzcl9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoKQoKQ2M6IEd3YW4tZ3llb25nIE11
biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIHwgNTEgKysrKysrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMzEgaW5z
ZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKaW5kZXggMGQ4NGVhMjhiYzZmLi4xYTFhYzNmNDZiZjcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtMTM4NiwxMSArMTM4NiwzMCBAQCB2
b2lkIGludGVsX3Bzcl9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlt
dXRleF9pbml0KCZkZXZfcHJpdi0+cHNyLmxvY2spOwogfQogCitzdGF0aWMgaW50IHBzcl9nZXRf
c3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkJ
ICAgdTggKnN0YXR1cywgdTggKmVycm9yX3N0YXR1cykKK3sKKwlzdHJ1Y3QgZHJtX2RwX2F1eCAq
YXV4ID0gJmludGVsX2RwLT5hdXg7CisJaW50IHJldDsKKworCXJldCA9IGRybV9kcF9kcGNkX3Jl
YWRiKGF1eCwgRFBfUFNSX1NUQVRVUywgc3RhdHVzKTsKKwlpZiAocmV0ICE9IDEpCisJCXJldHVy
biByZXQ7CisKKwlyZXQgPSBkcm1fZHBfZHBjZF9yZWFkYihhdXgsIERQX1BTUl9FUlJPUl9TVEFU
VVMsIGVycm9yX3N0YXR1cyk7CisJaWYgKHJldCAhPSAxKQorCQlyZXR1cm4gcmV0OworCisJKnN0
YXR1cyA9ICpzdGF0dXMgJiBEUF9QU1JfU0lOS19TVEFURV9NQVNLOworCisJcmV0dXJuIDA7Cit9
CisKIHZvaWQgaW50ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRl
bF9kcCk7CiAJc3RydWN0IGk5MTVfcHNyICpwc3IgPSAmZGV2X3ByaXYtPnBzcjsKLQl1OCB2YWw7
CisJdTggc3RhdHVzLCBlcnJvcl9zdGF0dXM7CiAJY29uc3QgdTggZXJyb3JzID0gRFBfUFNSX1JG
Ql9TVE9SQUdFX0VSUk9SIHwKIAkJCSAgRFBfUFNSX1ZTQ19TRFBfVU5DT1JSRUNUQUJMRV9FUlJP
UiB8CiAJCQkgIERQX1BTUl9MSU5LX0NSQ19FUlJPUjsKQEAgLTE0MDMsMzggKzE0MjIsMzAgQEAg
dm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlp
ZiAoIXBzci0+ZW5hYmxlZCB8fCBwc3ItPmRwICE9IGludGVsX2RwKQogCQlnb3RvIGV4aXQ7CiAK
LQlpZiAoZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9TVEFUVVMsICZ2
YWwpICE9IDEpIHsKLQkJRFJNX0VSUk9SKCJQU1JfU1RBVFVTIGRwY2QgcmVhZCBmYWlsZWRcbiIp
OworCWlmIChwc3JfZ2V0X3N0YXR1c19hbmRfZXJyb3Jfc3RhdHVzKGludGVsX2RwLCAmc3RhdHVz
LCAmZXJyb3Jfc3RhdHVzKSkgeworCQlEUk1fRVJST1IoIkVycm9yIHJlYWRpbmcgUFNSIHN0YXR1
cyBvciBlcnJvciBzdGF0dXNcbiIpOwogCQlnb3RvIGV4aXQ7CiAJfQogCi0JaWYgKCh2YWwgJiBE
UF9QU1JfU0lOS19TVEFURV9NQVNLKSA9PSBEUF9QU1JfU0lOS19JTlRFUk5BTF9FUlJPUikgewot
CQlEUk1fREVCVUdfS01TKCJQU1Igc2luayBpbnRlcm5hbCBlcnJvciwgZGlzYWJsaW5nIFBTUlxu
Iik7CisJaWYgKHN0YXR1cyA9PSBEUF9QU1JfU0lOS19JTlRFUk5BTF9FUlJPUiB8fCAoZXJyb3Jf
c3RhdHVzICYgZXJyb3JzKSkgewogCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHAp
OwogCQlwc3ItPnNpbmtfbm90X3JlbGlhYmxlID0gdHJ1ZTsKIAl9CiAKLQlpZiAoZHJtX2RwX2Rw
Y2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9FUlJPUl9TVEFUVVMsICZ2YWwpICE9IDEp
IHsKLQkJRFJNX0VSUk9SKCJQU1JfRVJST1JfU1RBVFVTIGRwY2QgcmVhZCBmYWlsZWRcbiIpOwot
CQlnb3RvIGV4aXQ7Ci0JfQotCi0JaWYgKHZhbCAmIERQX1BTUl9SRkJfU1RPUkFHRV9FUlJPUikK
KwlpZiAoc3RhdHVzID09IERQX1BTUl9TSU5LX0lOVEVSTkFMX0VSUk9SICYmICFlcnJvcl9zdGF0
dXMpCisJCURSTV9ERUJVR19LTVMoIlBTUiBzaW5rIGludGVybmFsIGVycm9yLCBkaXNhYmxpbmcg
UFNSXG4iKTsKKwlpZiAoZXJyb3Jfc3RhdHVzICYgRFBfUFNSX1JGQl9TVE9SQUdFX0VSUk9SKQog
CQlEUk1fREVCVUdfS01TKCJQU1IgUkZCIHN0b3JhZ2UgZXJyb3IsIGRpc2FibGluZyBQU1JcbiIp
OwotCWlmICh2YWwgJiBEUF9QU1JfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9SKQorCWlmIChl
cnJvcl9zdGF0dXMgJiBEUF9QU1JfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9SKQogCQlEUk1f
REVCVUdfS01TKCJQU1IgVlNDIFNEUCB1bmNvcnJlY3RhYmxlIGVycm9yLCBkaXNhYmxpbmcgUFNS
XG4iKTsKLQlpZiAodmFsICYgRFBfUFNSX0xJTktfQ1JDX0VSUk9SKQorCWlmIChlcnJvcl9zdGF0
dXMgJiBEUF9QU1JfTElOS19DUkNfRVJST1IpCiAJCURSTV9ERUJVR19LTVMoIlBTUiBMaW5rIENS
QyBlcnJvciwgZGlzYWJsaW5nIFBTUlxuIik7CiAKLQlpZiAodmFsICYgfmVycm9ycykKKwlpZiAo
ZXJyb3Jfc3RhdHVzICYgfmVycm9ycykKIAkJRFJNX0VSUk9SKCJQU1JfRVJST1JfU1RBVFVTIHVu
aGFuZGxlZCBlcnJvcnMgJXhcbiIsCi0JCQkgIHZhbCAmIH5lcnJvcnMpOwotCWlmICh2YWwgJiBl
cnJvcnMpIHsKLQkJaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGludGVsX2RwKTsKLQkJcHNyLT5z
aW5rX25vdF9yZWxpYWJsZSA9IHRydWU7Ci0JfQorCQkJICBlcnJvcl9zdGF0dXMgJiB+ZXJyb3Jz
KTsKIAkvKiBjbGVhciBzdGF0dXMgcmVnaXN0ZXIgKi8KLQlkcm1fZHBfZHBjZF93cml0ZWIoJmlu
dGVsX2RwLT5hdXgsIERQX1BTUl9FUlJPUl9TVEFUVVMsIHZhbCk7CisJZHJtX2RwX2RwY2Rfd3Jp
dGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRVJST1JfU1RBVFVTLCBlcnJvcl9zdGF0dXMpOwog
ZXhpdDoKIAltdXRleF91bmxvY2soJnBzci0+bG9jayk7CiB9Ci0tIAoyLjI0LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
