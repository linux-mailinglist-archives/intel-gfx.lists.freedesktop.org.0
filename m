Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 336BDA14DF
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 11:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDDBE6E07D;
	Thu, 29 Aug 2019 09:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6FF96E05C
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 09:26:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 02:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="175211194"
Received: from tbthomps-mobl.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.111.220])
 by orsmga008.jf.intel.com with ESMTP; 29 Aug 2019 02:26:02 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 02:25:51 -0700
Message-Id: <20190829092554.32198-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829092554.32198-1-lucas.demarchi@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/7] drm/i915/tgl: move DP_TP_* to transcoder
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

R2VuIDEyIG9ud2FyZHMgbW92ZXMgdGhlIERQX1RQXyogcmVnaXN0ZXJzIHRvIGJlIHRyYW5zY29k
ZXItYmFzZWQgcmF0aGVyCnRoYW4gcG9ydC1iYXNlZC4gVGhpcyBhZGRzIHRoZSBuZXcgcmVnaXN0
ZXIgYWRkcmVzc2VzIGFuZCBjaGFuZ2VzIGFsbAp0aGUgY2FsbGVycyB0byB1c2UgdGhlIHJlZ2lz
dGVyIHNhdmVkIGluIGludGVsX2RwLT5yZWdzLiouIFRoaXMgaXMKZmlsbGVkIG91dCB3aGVuIHBy
ZXBhcmluZyB0byBlbmFibGUgdGhlIHBvcnQgc28gd2UgdGFrZSBpbnRvIGFjY291bnQgaWYKd2Ug
c2hvdWxkIHVzZSB0aGUgdHJhbnNjb2RlciBvciB0aGUgcG9ydC4KCnYyOiByZWltcGxlbWVudCBi
eSBzdGFzaGluZyB0aGUgcmVnaXN0ZXJzIHdlIHdhbnQgdG8gYWNjZXNzIHVuZGVyCmludGVsX2Rw
LT5yZWcuIE5vdyB0aGV5IGFyZSBpbml0aWFsaXplZCB3aGVuIGVuYWJsaW5nIHRoZSBwb3J0LgpW
aWxsZSBzdWdnZXN0ZWQgdG8gc3RvcmUgdGhlIHRyYW5zY29kZXIgdG8gYmUgdXNlZCBleGNsdXNp
dmVseQpieSBUR0wrLiBBZnRlciBpbXBsZW1lbnRpbmcgSSB0aG91Z2h0IGp1c3Qgc3RvcmluZyB0
aGUgcmVnaXN0ZXIgZGlyZWN0bHkKbWFkZSBpdCBjbGVhbmVyLgoKQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8IDQzICsrKysrKysrKysrKy0tLS0tLS0KIC4u
Li9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA5ICsrKysKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8IDEzICsrKy0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyAgIHwgIDggKystLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAgIHwgIDQgKysKIDUg
ZmlsZXMgY2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggZGYzZTRmZTdlM2U5Li43M2Y3
YTRiMGY2YzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAt
MzE2NCwxNyArMzE2NCwxOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZW5hYmxlX2ZlYyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Ci0JZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVy
LT5wb3J0OworCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHA7CiAJdTMyIHZhbDsKIAogCWlmICgh
Y3J0Y19zdGF0ZS0+ZmVjX2VuYWJsZSkKIAkJcmV0dXJuOwogCi0JdmFsID0gSTkxNV9SRUFEKERQ
X1RQX0NUTChwb3J0KSk7CisJaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoJmVuY29kZXItPmJh
c2UpOworCXZhbCA9IEk5MTVfUkVBRChpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwpOwogCXZhbCB8
PSBEUF9UUF9DVExfRkVDX0VOQUJMRTsKLQlJOTE1X1dSSVRFKERQX1RQX0NUTChwb3J0KSwgdmFs
KTsKKwlJOTE1X1dSSVRFKGludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCwgdmFsKTsKIAotCWlmIChp
bnRlbF9kZV93YWl0X2Zvcl9zZXQoZGV2X3ByaXYsIERQX1RQX1NUQVRVUyhwb3J0KSwKKwlpZiAo
aW50ZWxfZGVfd2FpdF9mb3Jfc2V0KGRldl9wcml2LCBpbnRlbF9kcC0+cmVncy5kcF90cF9zdGF0
dXMsCiAJCQkJICBEUF9UUF9TVEFUVVNfRkVDX0VOQUJMRV9MSVZFLCAxKSkKIAkJRFJNX0VSUk9S
KCJUaW1lZCBvdXQgd2FpdGluZyBmb3IgRkVDIEVuYWJsZSBTdGF0dXNcbiIpOwogfQpAQCAtMzE4
MywxNiArMzE4NCwxNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfZGlzYWJsZV9mZWNfc3RhdGUo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwotCWVudW0gcG9ydCBwb3J0ID0gZW5j
b2Rlci0+cG9ydDsKKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwOwogCXUzMiB2YWw7CiAKIAlp
ZiAoIWNydGNfc3RhdGUtPmZlY19lbmFibGUpCiAJCXJldHVybjsKIAotCXZhbCA9IEk5MTVfUkVB
RChEUF9UUF9DVEwocG9ydCkpOworCWludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKCZlbmNvZGVy
LT5iYXNlKTsKKwl2YWwgPSBJOTE1X1JFQUQoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsKTsKIAl2
YWwgJj0gfkRQX1RQX0NUTF9GRUNfRU5BQkxFOwotCUk5MTVfV1JJVEUoRFBfVFBfQ1RMKHBvcnQp
LCB2YWwpOwotCVBPU1RJTkdfUkVBRChEUF9UUF9DVEwocG9ydCkpOworCUk5MTVfV1JJVEUoaW50
ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsLCB2YWwpOworCVBPU1RJTkdfUkVBRChpbnRlbF9kcC0+cmVn
cy5kcF90cF9jdGwpOwogfQogCiBzdGF0aWMgdm9pZCB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCkBAIC0zMjA1LDEwICszMjA3LDE0IEBAIHN0YXRp
YyB2b2lkIHRnbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9y
dCgmZW5jb2Rlci0+YmFzZSk7CiAJYm9vbCBpc19tc3QgPSBpbnRlbF9jcnRjX2hhc190eXBlKGNy
dGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpOwogCWludCBsZXZlbCA9IGludGVsX2RkaV9k
cF9sZXZlbChpbnRlbF9kcCk7CisJZW51bSB0cmFuc2NvZGVyIHRyYW5zY29kZXIgPSBjcnRjX3N0
YXRlLT5jcHVfdHJhbnNjb2RlcjsKIAogCWludGVsX2RwX3NldF9saW5rX3BhcmFtcyhpbnRlbF9k
cCwgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywKIAkJCQkgY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCwg
aXNfbXN0KTsKIAorCWludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCA9IFRHTF9EUF9UUF9DVEwodHJh
bnNjb2Rlcik7CisJaW50ZWxfZHAtPnJlZ3MuZHBfdHBfc3RhdHVzID0gVEdMX0RQX1RQX1NUQVRV
Uyh0cmFuc2NvZGVyKTsKKwogCS8qIDEuYSBnb3Qgb24gaW50ZWxfYXRvbWljX2NvbW1pdF90YWls
KCkgKi8KIAogCS8qIDIuICovCkBAIC0zMjk3LDYgKzMzMDMsOSBAQCBzdGF0aWMgdm9pZCBoc3df
ZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaW50ZWxf
ZHBfc2V0X2xpbmtfcGFyYW1zKGludGVsX2RwLCBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrLAogCQkJ
CSBjcnRjX3N0YXRlLT5sYW5lX2NvdW50LCBpc19tc3QpOwogCisJaW50ZWxfZHAtPnJlZ3MuZHBf
dHBfY3RsID0gRFBfVFBfQ1RMKHBvcnQpOworCWludGVsX2RwLT5yZWdzLmRwX3RwX3N0YXR1cyA9
IERQX1RQX1NUQVRVUyhwb3J0KTsKKwogCWludGVsX2VkcF9wYW5lbF9vbihpbnRlbF9kcCk7CiAK
IAlpbnRlbF9kZGlfY2xrX3NlbGVjdChlbmNvZGVyLCBjcnRjX3N0YXRlKTsKQEAgLTM0NjMsMTAg
KzM0NzIsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGlzYWJsZV9kZGlfYnVmKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAogCX0KIAogCWlmIChpbnRlbF9lbmNvZGVyX2lzX2RwKGVuY29k
ZXIpKSB7Ci0JCXZhbCA9IEk5MTVfUkVBRChEUF9UUF9DVEwocG9ydCkpOworCQlzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKCZlbmNvZGVyLT5iYXNlKTsKKworCQl2
YWwgPSBJOTE1X1JFQUQoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsKTsKIAkJdmFsICY9IH4oRFBf
VFBfQ1RMX0VOQUJMRSB8IERQX1RQX0NUTF9MSU5LX1RSQUlOX01BU0spOwogCQl2YWwgfD0gRFBf
VFBfQ1RMX0xJTktfVFJBSU5fUEFUMTsKLQkJSTkxNV9XUklURShEUF9UUF9DVEwocG9ydCksIHZh
bCk7CisJCUk5MTVfV1JJVEUoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsLCB2YWwpOwogCX0KIAog
CS8qIERpc2FibGUgRkVDIGluIERQIFNpbmsgKi8KQEAgLTM4OTUsNyArMzkwNiw3IEBAIHN0YXRp
YyB2b2lkIGludGVsX2RkaV9wcmVwYXJlX2xpbmtfcmV0cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQogCXUzMiB2YWw7CiAJYm9vbCB3YWl0ID0gZmFsc2U7CiAKLQlpZiAoSTkxNV9SRUFE
KERQX1RQX0NUTChwb3J0KSkgJiBEUF9UUF9DVExfRU5BQkxFKSB7CisJaWYgKEk5MTVfUkVBRChp
bnRlbF9kcC0+cmVncy5kcF90cF9jdGwpICYgRFBfVFBfQ1RMX0VOQUJMRSkgewogCQl2YWwgPSBJ
OTE1X1JFQUQoRERJX0JVRl9DVEwocG9ydCkpOwogCQlpZiAodmFsICYgRERJX0JVRl9DVExfRU5B
QkxFKSB7CiAJCQl2YWwgJj0gfkRESV9CVUZfQ1RMX0VOQUJMRTsKQEAgLTM5MDMsMTEgKzM5MTQs
MTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3ByZXBhcmVfbGlua19yZXRyYWluKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApCiAJCQl3YWl0ID0gdHJ1ZTsKIAkJfQogCi0JCXZhbCA9IEk5MTVf
UkVBRChEUF9UUF9DVEwocG9ydCkpOworCQl2YWwgPSBJOTE1X1JFQUQoaW50ZWxfZHAtPnJlZ3Mu
ZHBfdHBfY3RsKTsKIAkJdmFsICY9IH4oRFBfVFBfQ1RMX0VOQUJMRSB8IERQX1RQX0NUTF9MSU5L
X1RSQUlOX01BU0spOwogCQl2YWwgfD0gRFBfVFBfQ1RMX0xJTktfVFJBSU5fUEFUMTsKLQkJSTkx
NV9XUklURShEUF9UUF9DVEwocG9ydCksIHZhbCk7Ci0JCVBPU1RJTkdfUkVBRChEUF9UUF9DVEwo
cG9ydCkpOworCQlJOTE1X1dSSVRFKGludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCwgdmFsKTsKKwkJ
UE9TVElOR19SRUFEKGludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCk7CiAKIAkJaWYgKHdhaXQpCiAJ
CQlpbnRlbF93YWl0X2RkaV9idWZfaWRsZShkZXZfcHJpdiwgcG9ydCk7CkBAIC0zOTIyLDggKzM5
MzMsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlcGFyZV9saW5rX3JldHJhaW4oc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCkKIAkJaWYgKGRybV9kcF9lbmhhbmNlZF9mcmFtZV9jYXAoaW50
ZWxfZHAtPmRwY2QpKQogCQkJdmFsIHw9IERQX1RQX0NUTF9FTkhBTkNFRF9GUkFNRV9FTkFCTEU7
CiAJfQotCUk5MTVfV1JJVEUoRFBfVFBfQ1RMKHBvcnQpLCB2YWwpOwotCVBPU1RJTkdfUkVBRChE
UF9UUF9DVEwocG9ydCkpOworCUk5MTVfV1JJVEUoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsLCB2
YWwpOworCVBPU1RJTkdfUkVBRChpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwpOwogCiAJaW50ZWxf
ZHAtPkRQIHw9IERESV9CVUZfQ1RMX0VOQUJMRTsKIAlJOTE1X1dSSVRFKERESV9CVUZfQ1RMKHBv
cnQpLCBpbnRlbF9kcC0+RFApOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRleCA5NjUxNGRjYzc4MTIuLjM3NDU1NTNhYzNlYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgKQEAgLTEyMTEsNiArMTIxMSwxNSBAQCBzdHJ1Y3QgaW50ZWxfZHAgewogCWJvb2wgY2Fu
X21zdDsgLyogdGhpcyBwb3J0IHN1cHBvcnRzIG1zdCAqLwogCWJvb2wgaXNfbXN0OwogCWludCBh
Y3RpdmVfbXN0X2xpbmtzOworCisJLyoKKwkgKiBEUF9UUF8qIHJlZ2lzdGVycyBtYXkgYmUgZWl0
aGVyIG9uIHBvcnQgb3IgdHJhbnNjb2RlciByZWdpc3RlciBzcGFjZS4KKwkgKi8KKwlzdHJ1Y3Qg
eworCQlpOTE1X3JlZ190IGRwX3RwX2N0bDsKKwkJaTkxNV9yZWdfdCBkcF90cF9zdGF0dXM7CisJ
fSByZWdzOworCiAJLyogY29ubmVjdG9yIGRpcmVjdGx5IGF0dGFjaGVkIC0gd29uJ3QgYmUgdXNl
IGZvciBtb2Rlc2V0IGluIG1zdCB3b3JsZCAqLwogCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmF0
dGFjaGVkX2Nvbm5lY3RvcjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
CmluZGV4IDAwYzM3NTJmYTE5Ny4uOTM4ZTZlN2NjY2YxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCkBAIC0yMjg4LDYgKzIyODgsOSBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9kcF9wcmVwYXJlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCSBpbnRlbF9j
cnRjX2hhc190eXBlKHBpcGVfY29uZmlnLAogCQkJCQkJICAgICBJTlRFTF9PVVRQVVRfRFBfTVNU
KSk7CiAKKwlpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwgPSBEUF9UUF9DVEwocG9ydCk7CisJaW50
ZWxfZHAtPnJlZ3MuZHBfdHBfc3RhdHVzID0gRFBfVFBfU1RBVFVTKHBvcnQpOworCiAJLyoKIAkg
KiBUaGVyZSBhcmUgZm91ciBraW5kcyBvZiBEUCByZWdpc3RlcnM6CiAJICoKQEAgLTMyMzcsNyAr
MzI0MCw3IEBAIF9pbnRlbF9kcF9zZXRfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLAogCQkJICAgICAgZHBfdHJhaW5fcGF0ICYgdHJhaW5fcGF0X21hc2spOwogCiAJaWYgKEhB
U19EREkoZGV2X3ByaXYpKSB7Ci0JCXUzMiB0ZW1wID0gSTkxNV9SRUFEKERQX1RQX0NUTChwb3J0
KSk7CisJCXUzMiB0ZW1wID0gSTkxNV9SRUFEKGludGVsX2RwLT5yZWdzLmRwX3RwX2N0bCk7CiAK
IAkJaWYgKGRwX3RyYWluX3BhdCAmIERQX0xJTktfU0NSQU1CTElOR19ESVNBQkxFKQogCQkJdGVt
cCB8PSBEUF9UUF9DVExfU0NSQU1CTEVfRElTQUJMRTsKQEAgLTMyNjMsNyArMzI2Niw3IEBAIF9p
bnRlbF9kcF9zZXRfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJdGVt
cCB8PSBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQ0OwogCQkJYnJlYWs7CiAJCX0KLQkJSTkxNV9X
UklURShEUF9UUF9DVEwocG9ydCksIHRlbXApOworCQlJOTE1X1dSSVRFKGludGVsX2RwLT5yZWdz
LmRwX3RwX2N0bCwgdGVtcCk7CiAKIAl9IGVsc2UgaWYgKChJU19JVllCUklER0UoZGV2X3ByaXYp
ICYmIHBvcnQgPT0gUE9SVF9BKSB8fAogCQkgICAoSEFTX1BDSF9DUFQoZGV2X3ByaXYpICYmIHBv
cnQgIT0gUE9SVF9BKSkgewpAQCAtMzk2MSwxMCArMzk2NCwxMCBAQCB2b2lkIGludGVsX2RwX3Nl
dF9pZGxlX2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlpZiAoIUhBU19E
REkoZGV2X3ByaXYpKQogCQlyZXR1cm47CiAKLQl2YWwgPSBJOTE1X1JFQUQoRFBfVFBfQ1RMKHBv
cnQpKTsKKwl2YWwgPSBJOTE1X1JFQUQoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsKTsKIAl2YWwg
Jj0gfkRQX1RQX0NUTF9MSU5LX1RSQUlOX01BU0s7CiAJdmFsIHw9IERQX1RQX0NUTF9MSU5LX1RS
QUlOX0lETEU7Ci0JSTkxNV9XUklURShEUF9UUF9DVEwocG9ydCksIHZhbCk7CisJSTkxNV9XUklU
RShpbnRlbF9kcC0+cmVncy5kcF90cF9jdGwsIHZhbCk7CiAKIAkvKgogCSAqIFVudGlsIFRHTCBv
biBQT1JUX0Egd2UgY2FuIGhhdmUgb25seSBlRFAgaW4gU1NUIG1vZGUuIFRoZXJlIHRoZSBvbmx5
CkBAIC0zOTc2LDcgKzM5NzksNyBAQCB2b2lkIGludGVsX2RwX3NldF9pZGxlX2xpbmtfdHJhaW4o
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlpZiAocG9ydCA9PSBQT1JUX0EgJiYgSU5URUxf
R0VOKGRldl9wcml2KSA8IDEyKQogCQlyZXR1cm47CiAKLQlpZiAoaW50ZWxfZGVfd2FpdF9mb3Jf
c2V0KGRldl9wcml2LCBEUF9UUF9TVEFUVVMocG9ydCksCisJaWYgKGludGVsX2RlX3dhaXRfZm9y
X3NldChkZXZfcHJpdiwgaW50ZWxfZHAtPnJlZ3MuZHBfdHBfc3RhdHVzLAogCQkJCSAgRFBfVFBf
U1RBVFVTX0lETEVfRE9ORSwgMSkpCiAJCURSTV9FUlJPUigiVGltZWQgb3V0IHdhaXRpbmcgZm9y
IERQIGlkbGUgcGF0dGVybnNcbiIpOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmMKaW5kZXggMmM1YWMzZGQ2NDdmLi4yNzc0MTI2Y2E5YWMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwpAQCAtMjg3LDcgKzI4Nyw2
IEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9wcmVfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0
ID0gaW50ZWxfbXN0LT5wcmltYXJ5OwogCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSAmaW50
ZWxfZGlnX3BvcnQtPmRwOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwotCWVudW0gcG9ydCBwb3J0ID0gaW50ZWxfZGlnX3Bv
cnQtPmJhc2UucG9ydDsKIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPQogCQl0
b19pbnRlbF9jb25uZWN0b3IoY29ubl9zdGF0ZS0+Y29ubmVjdG9yKTsKIAlpbnQgcmV0OwpAQCAt
MzE4LDggKzMxNyw4IEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9wcmVfZW5hYmxlX2RwKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQlEUk1fRVJST1IoImZhaWxlZCB0byBhbGxvY2F0
ZSB2Y3BpXG4iKTsKIAogCWludGVsX2RwLT5hY3RpdmVfbXN0X2xpbmtzKys7Ci0JdGVtcCA9IEk5
MTVfUkVBRChEUF9UUF9TVEFUVVMocG9ydCkpOwotCUk5MTVfV1JJVEUoRFBfVFBfU1RBVFVTKHBv
cnQpLCB0ZW1wKTsKKwl0ZW1wID0gSTkxNV9SRUFEKGludGVsX2RwLT5yZWdzLmRwX3RwX3N0YXR1
cyk7CisJSTkxNV9XUklURShpbnRlbF9kcC0+cmVncy5kcF90cF9zdGF0dXMsIHRlbXApOwogCiAJ
cmV0ID0gZHJtX2RwX3VwZGF0ZV9wYXlsb2FkX3BhcnQxKCZpbnRlbF9kcC0+bXN0X21ncik7CiAK
QEAgLTMzNCwxMSArMzMzLDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9lbmFibGVfZHAoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
aW50ZWxfZGlnX3BvcnQgPSBpbnRlbF9tc3QtPnByaW1hcnk7CiAJc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCA9ICZpbnRlbF9kaWdfcG9ydC0+ZHA7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Ci0JZW51bSBwb3J0IHBvcnQg
PSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3J0OwogCiAJRFJNX0RFQlVHX0tNUygiYWN0aXZlIGxp
bmtzICVkXG4iLCBpbnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcyk7CiAKLQlpZiAoaW50ZWxfZGVf
d2FpdF9mb3Jfc2V0KGRldl9wcml2LCBEUF9UUF9TVEFUVVMocG9ydCksCisJaWYgKGludGVsX2Rl
X3dhaXRfZm9yX3NldChkZXZfcHJpdiwgaW50ZWxfZHAtPnJlZ3MuZHBfdHBfc3RhdHVzLAogCQkJ
CSAgRFBfVFBfU1RBVFVTX0FDVF9TRU5ULCAxKSkKIAkJRFJNX0VSUk9SKCJUaW1lZCBvdXQgd2Fp
dGluZyBmb3IgQUNUIHNlbnRcbiIpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAzM2Q5
ZDE0MWVlOGYuLjFjOGZhYjExZWQ5ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC05NDUx
LDcgKzk0NTEsOSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKIC8qIERpc3BsYXlQb3J0IFRyYW5z
cG9ydCBDb250cm9sICovCiAjZGVmaW5lIF9EUF9UUF9DVExfQQkJCTB4NjQwNDAKICNkZWZpbmUg
X0RQX1RQX0NUTF9CCQkJMHg2NDE0MAorI2RlZmluZSBfVEdMX0RQX1RQX0NUTF9BCQkweDYwNTQw
CiAjZGVmaW5lIERQX1RQX0NUTChwb3J0KSBfTU1JT19QT1JUKHBvcnQsIF9EUF9UUF9DVExfQSwg
X0RQX1RQX0NUTF9CKQorI2RlZmluZSBUR0xfRFBfVFBfQ1RMKHRyYW4pIF9NTUlPX1RSQU5TMigo
dHJhbiksIF9UR0xfRFBfVFBfQ1RMX0EpCiAjZGVmaW5lICBEUF9UUF9DVExfRU5BQkxFCQkJKDEg
PDwgMzEpCiAjZGVmaW5lICBEUF9UUF9DVExfRkVDX0VOQUJMRQkJCSgxIDw8IDMwKQogI2RlZmlu
ZSAgRFBfVFBfQ1RMX01PREVfU1NUCQkJKDAgPDwgMjcpCkBAIC05NDcxLDcgKzk0NzMsOSBAQCBl
bnVtIHNrbF9wb3dlcl9nYXRlIHsKIC8qIERpc3BsYXlQb3J0IFRyYW5zcG9ydCBTdGF0dXMgKi8K
ICNkZWZpbmUgX0RQX1RQX1NUQVRVU19BCQkJMHg2NDA0NAogI2RlZmluZSBfRFBfVFBfU1RBVFVT
X0IJCQkweDY0MTQ0CisjZGVmaW5lIF9UR0xfRFBfVFBfU1RBVFVTX0EJCTB4NjA1NDQKICNkZWZp
bmUgRFBfVFBfU1RBVFVTKHBvcnQpIF9NTUlPX1BPUlQocG9ydCwgX0RQX1RQX1NUQVRVU19BLCBf
RFBfVFBfU1RBVFVTX0IpCisjZGVmaW5lIFRHTF9EUF9UUF9TVEFUVVModHJhbikgX01NSU9fVFJB
TlMyKCh0cmFuKSwgX1RHTF9EUF9UUF9TVEFUVVNfQSkKICNkZWZpbmUgIERQX1RQX1NUQVRVU19G
RUNfRU5BQkxFX0xJVkUJCSgxIDw8IDI4KQogI2RlZmluZSAgRFBfVFBfU1RBVFVTX0lETEVfRE9O
RQkJCSgxIDw8IDI1KQogI2RlZmluZSAgRFBfVFBfU1RBVFVTX0FDVF9TRU5UCQkJKDEgPDwgMjQp
Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
