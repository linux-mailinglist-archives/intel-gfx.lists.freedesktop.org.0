Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9574C25D9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 19:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A702A6E4C5;
	Mon, 30 Sep 2019 17:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 934026E4BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 17:48:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 10:48:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,568,1559545200"; d="scan'208";a="195395292"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga006.jf.intel.com with ESMTP; 30 Sep 2019 10:48:00 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Sep 2019 23:11:35 +0530
Message-Id: <20190930174137.15233-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190930174137.15233-1-anshuman.gupta@intel.com>
References: <20190930174137.15233-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 4/6] drm/i915/tgl: Do modeset to enable and
 configure DC3CO exitline
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

REMzQ08gZW5hYmxpbmcgQi5TcGVjcyBzZXF1ZW5jZSByZXF1aXJlcyB0byBlbmFibGUgZW5kIGNv
bmZpZ3VyZQpleGl0IHNjYW5saW5lcyB0byBUUkFOU19FWElUTElORSByZWdpc3RlciwgcHJvZ3Jh
bW1pbmcgdGhpcyByZWdpc3RlcgpoYXMgdG8gYmUgcGFydCBvZiBtb2Rlc2V0IHNlcXVlbmNlIGFz
IHRoaXMgY2FuJ3QgYmUgY2hhbmdlIHdoZW4KdHJhbnNjb2RlciBvciBwb3J0IGlzIGVuYWJsZWQu
CldoZW4gc3lzdGVtIGJvb3RzIHdpdGggb25seSBlRFAgcGFuZWwgdGhlcmUgbWF5IG5vdCBiZSBy
ZWFsCm1vZGVzZXQgYXMgQklPUyBoYXMgYWxyZWFkeSBwcm9ncmFtbWVkIHRoZSBuZWNlc3Nhcnkg
cmVnaXN0ZXJzLAp0aGVyZWZvcmUgaXQgbmVlZHMgdG8gZm9yY2UgYSBtb2Rlc2V0IHRvIGVuYWJs
ZSBhbmQgY29uZmlndXJlCkRDM0NPIGV4aXRsaW5lLgoKdjE6IENvbXB1dGluZyBkYzNjb19leGl0
bGluZSBjcnRjIHN0YXRlIGZyb20gYSBEUCBlbmNvZGVyCiAgICBjb21wdXRlIGNvbmZpZy4gW0lt
cmVdCiAgICBFbmFibGluZyBhbmQgZGlzYWJsaW5nIERDM0NPIFBTUjIgdHJhbnNjb2RlciBleGl0
bGluZSBmcm9tCiAgICBlbmNvZGVyIHByZV9lbmFibGUgYW5kIHBvc3RfZGlzYWJsZSBob29rcy4g
W0ltcmVdCiAgICBDb21wdXRpbmcgZGMzY29fZXhpdGxpbmUgaW5zdGVhZCBvZiBoYXNfZGMzY29f
ZXhpdGxpbmUgYm9vbC4gW0ltcmVdCnYyOiBDb2RlIHJlZmFjdG9yaW5nIGZvciBzeW1tZXRyeSBh
bmQgdG8gYXZvaWQgZXhwb3J0ZWQgZnVuY3Rpb24uIFtJbXJlXQogICAgUmVtb3ZpbmcgSVNfVElH
RVJMQUtFIGNoZWNrIGZyb20gY29tcHV0ZV9jb25maWcsIGFkZGluZyBQSVBFX0EKICAgIHJlc3Ry
aWN0aW9uIGFuZCBjbGVhcmluZyBkYzNjb19leGl0bGluZSBzdGF0ZSBpZiBjcnRjIGlzIG5vdCBh
Y3RpdmUKICAgIG9yIGl0IGlzIG5vdCBQU1IyIGNhcGFibGUgaW4gZGMzY28gZXhpdGxpbmUgY29t
cHV0ZV9jb25maWcuIFtJbXJlXQogICAgVXNpbmcgIElTX1RHTCBjaGVjayBhbmQgIGRjM2NvIGV4
aXRsaW5lIGdldF9jb25maWcKCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogQW5pbWVzaCBNYW5uYSA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxh
bnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyAgICAgIHwgMTA0ICsrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgICAxICsKIC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAgMSArCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgICAgfCAgIDEgKwogNCBmaWxlcyBjaGFuZ2VkLCAx
MDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYwppbmRleCBhYTQ3MGM3MGExOTguLmQ3NzlhMzNjNzBkYiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC00NSw2ICs0NSw3IEBACiAj
aW5jbHVkZSAiaW50ZWxfbHNwY29uLmgiCiAjaW5jbHVkZSAiaW50ZWxfcGFuZWwuaCIKICNpbmNs
dWRlICJpbnRlbF9wc3IuaCIKKyNpbmNsdWRlICJpbnRlbF9zcHJpdGUuaCIKICNpbmNsdWRlICJp
bnRlbF90Yy5oIgogI2luY2x1ZGUgImludGVsX3Zkc2MuaCIKIApAQCAtMzIwMCw2ICszMjAxLDk3
IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9kaXNhYmxlX2ZlY19zdGF0ZShzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKIAlQT1NUSU5HX1JFQUQoaW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3Rs
KTsKIH0KIAorc3RhdGljIHUzMiBpbnRlbF9nZXRfZnJhbWVfdGltZV91cyhjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3N0YXRlKQoreworCWlmICghY3N0YXRlIHx8ICFjc3RhdGUtPmJh
c2UuYWN0aXZlKQorCQlyZXR1cm4gMDsKKworCXJldHVybiBESVZfUk9VTkRfVVAoMTAwMCAqIDEw
MDAsCisJCQkgICAgZHJtX21vZGVfdnJlZnJlc2goJmNzdGF0ZS0+YmFzZS5hZGp1c3RlZF9tb2Rl
KSk7Cit9CisKK3N0YXRpYyB2b2lkCit0Z2xfY2xlYXJfcHNyMl90cmFuc2NvZGVyX2V4aXRsaW5l
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjc3RhdGUpCit7CisJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjc3RhdGUtPmJhc2UuY3J0Yy0+ZGV2KTsK
Kwl1MzIgdmFsOworCisJaWYgKCFjc3RhdGUtPmRjM2NvX2V4aXRsaW5lKQorCQlyZXR1cm47CisK
Kwl2YWwgPSBJOTE1X1JFQUQoRVhJVExJTkUoY3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpOworCXZh
bCAmPSB+KEVYSVRMSU5FX01BU0sgfCBFWElUTElORV9FTkFCTEUpOworCUk5MTVfV1JJVEUoRVhJ
VExJTkUoY3N0YXRlLT5jcHVfdHJhbnNjb2RlciksIHZhbCk7Cit9CisKK3N0YXRpYyB2b2lkCit0
Z2xfc2V0X3BzcjJfdHJhbnNjb2Rlcl9leGl0bGluZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3N0YXRlKQoreworCXUzMiB2YWwsIGV4aXRfc2NhbmxpbmVzOworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3N0YXRlLT5iYXNlLmNydGMtPmRldik7
CisKKwlpZiAoIWNzdGF0ZS0+ZGMzY29fZXhpdGxpbmUpCisJCXJldHVybjsKKworCWV4aXRfc2Nh
bmxpbmVzID0gY3N0YXRlLT5kYzNjb19leGl0bGluZTsKKwlleGl0X3NjYW5saW5lcyA8PD0gRVhJ
VExJTkVfU0hJRlQ7CisJdmFsID0gSTkxNV9SRUFEKEVYSVRMSU5FKGNzdGF0ZS0+Y3B1X3RyYW5z
Y29kZXIpKTsKKwl2YWwgJj0gfihFWElUTElORV9NQVNLIHwgRVhJVExJTkVfRU5BQkxFKTsKKwl2
YWwgfD0gZXhpdF9zY2FubGluZXM7CisJdmFsIHw9IEVYSVRMSU5FX0VOQUJMRTsKKwlJOTE1X1dS
SVRFKEVYSVRMSU5FKGNzdGF0ZS0+Y3B1X3RyYW5zY29kZXIpLCB2YWwpOworfQorCitzdGF0aWMg
dm9pZCB0Z2xfZGMzY29fZXhpdGxpbmVfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsCisJCQkJCSAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjc3RhdGUp
Cit7CisJdTMyIGV4aXRfc2NhbmxpbmVzOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3N0YXRlLT5iYXNlLmNydGMtPmRldik7CisJdTMyIGNydGNfdmRpc3Bs
YXkgPSBjc3RhdGUtPmJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5OworCisJZGV2X3By
aXYtPnBzci5kYzNjb19mcmFtZV90aW1lX3VzID0gMDsKKwljc3RhdGUtPmRjM2NvX2V4aXRsaW5l
ID0gMDsKKworCWlmICghKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENfU1RBVEVf
RU5fREMzQ08pKQorCQlyZXR1cm47CisKKwkvKiBCLlNwZWNzOjQ5MTk2IERDM0NPIG9ubHkgd29y
a3Mgd2l0aCBwaXBlQSBhbmQgRERJQS4qLworCWlmICh0b19pbnRlbF9jcnRjKGNzdGF0ZS0+YmFz
ZS5jcnRjKS0+cGlwZSAhPSBQSVBFX0EgfHwKKwkgICAgZW5jb2Rlci0+cG9ydCAhPSBQT1JUX0Ep
CisJCXJldHVybjsKKworCWlmICghY3N0YXRlLT5oYXNfcHNyMiB8fCAhY3N0YXRlLT5iYXNlLmFj
dGl2ZSkKKwkJcmV0dXJuOworCisJLyoKKwkgKiBEQzNDTyBFeGl0IHRpbWUgMjAwdXMgQi5TcGVj
IDQ5MTk2CisJICogUFNSMiB0cmFuc2NvZGVyIEVhcmx5IEV4aXQgc2NhbmxpbmVzID0gUk9VTkRV
UCgyMDAgLyBsaW5lIHRpbWUpICsgMQorCSAqLworCWV4aXRfc2NhbmxpbmVzID0KKwkJaW50ZWxf
dXNlY3NfdG9fc2NhbmxpbmVzKCZjc3RhdGUtPmJhc2UuYWRqdXN0ZWRfbW9kZSwgMjAwKSArIDE7
CisKKwlpZiAoV0FSTl9PTihleGl0X3NjYW5saW5lcyA+IGNydGNfdmRpc3BsYXkpKQorCQlyZXR1
cm47CisKKwljc3RhdGUtPmRjM2NvX2V4aXRsaW5lID0gY3J0Y192ZGlzcGxheSAtIGV4aXRfc2Nh
bmxpbmVzOworCURSTV9ERUJVR19LTVMoIkRDM0NPIGV4aXQgc2NhbmxpbmVzICVkXG4iLCBjc3Rh
dGUtPmRjM2NvX2V4aXRsaW5lKTsKKwlkZXZfcHJpdi0+cHNyLmRjM2NvX2ZyYW1lX3RpbWVfdXMg
PSBpbnRlbF9nZXRfZnJhbWVfdGltZV91cyhjc3RhdGUpOworfQorCitzdGF0aWMgdm9pZCB0Z2xf
ZGMzY29fZXhpdGxpbmVfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKK3sKKwl1MzIgdmFsOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjLT5kZXYpOworCisJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPCAxMikKKwkJcmV0dXJuOworCisJdmFsID0gSTkxNV9SRUFEKEVYSVRMSU5FKGNy
dGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7CisKKwlpZiAodmFsICYgRVhJVExJTkVfRU5BQkxF
KQorCQljcnRjX3N0YXRlLT5kYzNjb19leGl0bGluZSA9IHZhbCAmIEVYSVRMSU5FX01BU0s7Cit9
CisKIHN0YXRpYyB2b2lkIHRnbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKIAkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlLAogCQkJCSAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUp
CkBAIC0zMjEyLDYgKzMzMDQsNyBAQCBzdGF0aWMgdm9pZCB0Z2xfZGRpX3ByZV9lbmFibGVfZHAo
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJaW50IGxldmVsID0gaW50ZWxfZGRpX2Rw
X2xldmVsKGludGVsX2RwKTsKIAllbnVtIHRyYW5zY29kZXIgdHJhbnNjb2RlciA9IGNydGNfc3Rh
dGUtPmNwdV90cmFuc2NvZGVyOwogCisJdGdsX3NldF9wc3IyX3RyYW5zY29kZXJfZXhpdGxpbmUo
Y3J0Y19zdGF0ZSk7CiAJaW50ZWxfZHBfc2V0X2xpbmtfcGFyYW1zKGludGVsX2RwLCBjcnRjX3N0
YXRlLT5wb3J0X2Nsb2NrLAogCQkJCSBjcnRjX3N0YXRlLT5sYW5lX2NvdW50LCBpc19tc3QpOwog
CkBAIC0zNTI0LDYgKzM2MTcsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxl
X2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJCQkJICBkaWdfcG9ydC0+ZGRp
X2lvX3Bvd2VyX2RvbWFpbik7CiAKIAlpbnRlbF9kZGlfY2xrX2Rpc2FibGUoZW5jb2Rlcik7CisJ
dGdsX2NsZWFyX3BzcjJfdHJhbnNjb2Rlcl9leGl0bGluZShvbGRfY3J0Y19zdGF0ZSk7CiB9CiAK
IHN0YXRpYyB2b2lkIGludGVsX2RkaV9wb3N0X2Rpc2FibGVfaGRtaShzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKQEAgLTQwNzAsNiArNDE2NCw5IEBAIHZvaWQgaW50ZWxfZGRpX2dldF9j
b25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCWJyZWFrOwogCX0KIAorCWlm
IChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9FRFApCisJCXRnbF9kYzNjb19leGl0bGlu
ZV9nZXRfY29uZmlnKHBpcGVfY29uZmlnKTsKKwogCXBpcGVfY29uZmlnLT5oYXNfYXVkaW8gPQog
CQlpbnRlbF9kZGlfaXNfYXVkaW9fZW5hYmxlZChkZXZfcHJpdiwgY3B1X3RyYW5zY29kZXIpOwog
CkBAIC00MTQ3LDEwICs0MjQ0LDEzIEBAIHN0YXRpYyBpbnQgaW50ZWxfZGRpX2NvbXB1dGVfY29u
ZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWlmIChIQVNfVFJBTlNDT0RFUl9F
RFAoZGV2X3ByaXYpICYmIHBvcnQgPT0gUE9SVF9BKQogCQlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5z
Y29kZXIgPSBUUkFOU0NPREVSX0VEUDsKIAotCWlmIChpbnRlbF9jcnRjX2hhc190eXBlKHBpcGVf
Y29uZmlnLCBJTlRFTF9PVVRQVVRfSERNSSkpCisJaWYgKGludGVsX2NydGNfaGFzX3R5cGUocGlw
ZV9jb25maWcsIElOVEVMX09VVFBVVF9IRE1JKSkgewogCQlyZXQgPSBpbnRlbF9oZG1pX2NvbXB1
dGVfY29uZmlnKGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsKLQllbHNlCisJfSBl
bHNlIHsKIAkJcmV0ID0gaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoZW5jb2RlciwgcGlwZV9jb25m
aWcsIGNvbm5fc3RhdGUpOworCQl0Z2xfZGMzY29fZXhpdGxpbmVfY29tcHV0ZV9jb25maWcoZW5j
b2RlciwgcGlwZV9jb25maWcpOworCX0KKwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggOGYxMjVm
MTYyNGJkLi5hNDY3Yzc1MjNlMDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCkBAIC0xMjgyMCw2ICsxMjgyMCw3IEBAIGludGVsX3BpcGVfY29uZmln
X2NvbXBhcmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLAog
CiAJUElQRV9DT05GX0NIRUNLX0kocGl4ZWxfbXVsdGlwbGllcik7CiAJUElQRV9DT05GX0NIRUNL
X0kob3V0cHV0X2Zvcm1hdCk7CisJUElQRV9DT05GX0NIRUNLX0koZGMzY29fZXhpdGxpbmUpOwog
CVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19oZG1pX3NpbmspOwogCWlmICgoSU5URUxfR0VOKGRl
dl9wcml2KSA8IDggJiYgIUlTX0hBU1dFTEwoZGV2X3ByaXYpKSB8fAogCSAgICBJU19WQUxMRVlW
SUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKaW5kZXggOTc2NjY5
ZjAxYThjLi44YWEzOGFjZTc4NDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCkBAIC04NzAsNiArODcwLDcgQEAgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgewogCiAJYm9vbCBoYXNfcHNyOwogCWJvb2wgaGFzX3BzcjI7CisJdTMy
IGRjM2NvX2V4aXRsaW5lOwogCiAJLyoKIAkgKiBGcmVxdWVuY2UgdGhlIGRwbGwgZm9yIHRoZSBw
b3J0IHNob3VsZCBydW4gYXQuIERpZmZlcnMgZnJvbSB0aGUKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
CmluZGV4IGNkZGM5OGVhOTk2NS4uN2IyMzE4YzVjN2EwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKQEAgLTQ5NSw2ICs0OTUsNyBAQCBzdHJ1Y3QgaTkxNV9wc3IgewogCWJvb2wgbGlua19zdGFu
ZGJ5OwogCWJvb2wgY29sb3JpbWV0cnlfc3VwcG9ydDsKIAlib29sIHBzcjJfZW5hYmxlZDsKKwl1
MzIgZGMzY29fZnJhbWVfdGltZV91czsKIAl1OCBzaW5rX3N5bmNfbGF0ZW5jeTsKIAlrdGltZV90
IGxhc3RfZW50cnlfYXR0ZW1wdDsKIAlrdGltZV90IGxhc3RfZXhpdDsKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
