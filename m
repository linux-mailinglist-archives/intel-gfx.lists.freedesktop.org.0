Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A284A34B3A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB8A189830;
	Tue,  4 Jun 2019 14:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D97C899DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:50 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:48 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:24 +0300
Message-Id: <20190604145826.16424-22-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/23] drm/i915: Add state verification for the
 TypeC port mode
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

QWRkIHN0YXRlIHZlcmlmaWNhdGlvbiBmb3IgdGhlIFR5cGVDIHBvcnQgbW9kZSB3cnQuIHRoZSBw
b3J0J3MgQVVYIHBvd2VyCndlbGwgZW5hYmxpbmcvZGlzYWJsaW5nLiBBbHNvIGNoZWNrIHRoZSBj
b3JyZWN0bmVzcyBvZiBjaGFuZ2luZyB0aGUgcG9ydAptb2RlOgotIFdoZW4gZW5hYmxpbmcvZGlz
YWJsaW5nIHRoZSBBVVggcG93ZXIgd2VsbCBmb3IgYSBUeXBlQyBwb3J0IHdlIG11c3QgaG9sZAog
IGFscmVhZHkgdGhlIFR5cGVDIHBvcnQgbG9jay4KLSBXaGVuIGNoYW5naW5nIHRoZSBUeXBlQyBw
b3J0IG1vZGUgdGhlIHBvcnQncyBBVVggcG93ZXIgZG9tYWluIG11c3QgYmUKICBkaXNhYmxlZC4K
CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYyB8IDk5ICsrKysrKysrKysrKysrKysrKysrLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3RjLmMgICAgICAgICAgICB8ICAyICsKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3RjLmggICAgICAgICAgICB8IDEwICsrLQogMyBmaWxlcyBjaGFuZ2VkLCAxMDIg
aW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kaXNwbGF5X3Bvd2VyLmMKaW5kZXggMTRjZjA0YmYwYmY0Li4zZWU2ZmQwM2QxMTIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXlfcG93ZXIuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMKQEAgLTE2LDYgKzE2LDcg
QEAKICNpbmNsdWRlICJpbnRlbF9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9ob3RwbHVnLmgiCiAj
aW5jbHVkZSAiaW50ZWxfc2lkZWJhbmQuaCIKKyNpbmNsdWRlICJpbnRlbF90Yy5oIgogCiBib29s
IGludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbF9pc19lbmFibGVkKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAkJCQkJIGVudW0gaTkxNV9wb3dlcl93ZWxsX2lkIHBvd2VyX3dlbGxf
aWQpOwpAQCAtNDQ1LDI2ICs0NDYsMTEwIEBAIGljbF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxf
ZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAjZGVmaW5lIElDTF9U
QlRfQVVYX1BXX1RPX0NIKHB3X2lkeCkJXAogCSgocHdfaWR4KSAtIElDTF9QV19DVExfSURYX0FV
WF9UQlQxICsgQVVYX0NIX0MpCiAKK3N0YXRpYyBlbnVtIGF1eF9jaCBpY2xfdGNfcGh5X2F1eF9j
aChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCisJCQkJICAgICBzdHJ1Y3QgaTkx
NV9wb3dlcl93ZWxsICpwb3dlcl93ZWxsKQoreworCWludCBwd19pZHggPSBwb3dlcl93ZWxsLT5k
ZXNjLT5oc3cuaWR4OworCisJcmV0dXJuIHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190Y190YnQg
PyBJQ0xfVEJUX0FVWF9QV19UT19DSChwd19pZHgpIDoKKwkJCQkJCSBJQ0xfQVVYX1BXX1RPX0NI
KHB3X2lkeCk7Cit9CisKKyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJVR19SVU5U
SU1FX1BNKQorCitzdGF0aWMgdTY0IGFzeW5jX3B1dF9kb21haW5zX21hc2soc3RydWN0IGk5MTVf
cG93ZXJfZG9tYWlucyAqcG93ZXJfZG9tYWlucyk7CisKK3N0YXRpYyBpbnQgcG93ZXJfd2VsbF9h
c3luY19yZWZfY291bnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAg
ICAgIHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGwpCit7CisJZW51bSBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW47CisJdTY0IGFzeW5jX2RvbWFpbnMgPSBhc3luY19w
dXRfZG9tYWluc19tYXNrKCZkZXZfcHJpdi0+cG93ZXJfZG9tYWlucyk7CisJaW50IHJlZnMgPSAw
OworCisJZm9yX2VhY2hfcG93ZXJfZG9tYWluKGRvbWFpbiwgcG93ZXJfd2VsbC0+ZGVzYy0+ZG9t
YWlucykKKwkJcmVmcyArPSAhIShhc3luY19kb21haW5zICYgQklUX1VMTChkb21haW4pKTsKKwor
CVdBUk5fT04ocmVmcyA+IHBvd2VyX3dlbGwtPmNvdW50KTsKKworCXJldHVybiByZWZzOworfQor
CitzdGF0aWMgdm9pZCBpY2xfdGNfcG9ydF9hc3NlcnRfcmVmX2hlbGQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCQlzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsICpwb3dlcl93
ZWxsKQoreworCWVudW0gYXV4X2NoIGF1eF9jaCA9IGljbF90Y19waHlfYXV4X2NoKGRldl9wcml2
LCBwb3dlcl93ZWxsKTsKKwlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCA9IE5V
TEw7CisJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7CisKKwkvKiBCeXBhc3MgdGhlIGNo
ZWNrIGlmIGFsbCByZWZlcmVuY2VzIGFyZSByZWxlYXNlZCBhc3luY2hyb25vdXNseSAqLworCWlm
IChwb3dlcl93ZWxsX2FzeW5jX3JlZl9jb3VudChkZXZfcHJpdiwgcG93ZXJfd2VsbCkgPT0KKwkg
ICAgcG93ZXJfd2VsbC0+Y291bnQpCisJCXJldHVybjsKKworCWF1eF9jaCA9IGljbF90Y19waHlf
YXV4X2NoKGRldl9wcml2LCBwb3dlcl93ZWxsKTsKKworCWZvcl9lYWNoX2ludGVsX2VuY29kZXIo
JmRldl9wcml2LT5kcm0sIGVuY29kZXIpIHsKKwkJaWYgKCFpbnRlbF9wb3J0X2lzX3RjKGRldl9w
cml2LCBlbmNvZGVyLT5wb3J0KSkKKwkJCWNvbnRpbnVlOworCisJCS8qIFdlJ2xsIGNoZWNrIHRo
ZSBNU1QgcHJpbWFyeSBwb3J0ICovCisJCWlmIChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBV
VF9EUF9NU1QpCisJCQljb250aW51ZTsKKworCQlkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydCgm
ZW5jb2Rlci0+YmFzZSk7CisJCWlmIChXQVJOX09OKCFkaWdfcG9ydCkpCisJCQljb250aW51ZTsK
KworCQlpZiAoZGlnX3BvcnQtPmF1eF9jaCAhPSBhdXhfY2gpIHsKKwkJCWRpZ19wb3J0ID0gTlVM
TDsKKwkJCWNvbnRpbnVlOworCQl9CisKKwkJYnJlYWs7CisJfQorCisJaWYgKFdBUk5fT04oIWRp
Z19wb3J0KSkKKwkJcmV0dXJuOworCisJV0FSTl9PTighaW50ZWxfdGNfcG9ydF9yZWZfaGVsZChk
aWdfcG9ydCkpOworfQorCisjZWxzZQorCitzdGF0aWMgdm9pZCBpY2xfdGNfcG9ydF9hc3NlcnRf
cmVmX2hlbGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCQlzdHJ1Y3Qg
aTkxNV9wb3dlcl93ZWxsICpwb3dlcl93ZWxsKQoreworfQorCisjZW5kaWYKKwogc3RhdGljIHZv
aWQKIGljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAkJCQkgc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbCkK
IHsKLQlpbnQgcHdfaWR4ID0gcG93ZXJfd2VsbC0+ZGVzYy0+aHN3LmlkeDsKLQlib29sIGlzX3Ri
dCA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190Y190YnQ7Ci0JZW51bSBhdXhfY2ggYXV4X2No
OworCWVudW0gYXV4X2NoIGF1eF9jaCA9IGljbF90Y19waHlfYXV4X2NoKGRldl9wcml2LCBwb3dl
cl93ZWxsKTsKIAl1MzIgdmFsOwogCi0JYXV4X2NoID0gaXNfdGJ0ID8gSUNMX1RCVF9BVVhfUFdf
VE9fQ0gocHdfaWR4KSA6Ci0JCQkgIElDTF9BVVhfUFdfVE9fQ0gocHdfaWR4KTsKKwlpY2xfdGNf
cG9ydF9hc3NlcnRfcmVmX2hlbGQoZGV2X3ByaXYsIHBvd2VyX3dlbGwpOworCiAJdmFsID0gSTkx
NV9SRUFEKERQX0FVWF9DSF9DVEwoYXV4X2NoKSk7CiAJdmFsICY9IH5EUF9BVVhfQ0hfQ1RMX1RC
VF9JTzsKLQlpZiAoaXNfdGJ0KQorCWlmIChwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaXNfdGNfdGJ0
KQogCQl2YWwgfD0gRFBfQVVYX0NIX0NUTF9UQlRfSU87CiAJSTkxNV9XUklURShEUF9BVVhfQ0hf
Q1RMKGF1eF9jaCksIHZhbCk7CiAKIAloc3dfcG93ZXJfd2VsbF9lbmFibGUoZGV2X3ByaXYsIHBv
d2VyX3dlbGwpOwogfQogCitzdGF0aWMgdm9pZAoraWNsX3RjX3BoeV9hdXhfcG93ZXJfd2VsbF9k
aXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJCQkgIHN0cnVjdCBp
OTE1X3Bvd2VyX3dlbGwgKnBvd2VyX3dlbGwpCit7CisJaWNsX3RjX3BvcnRfYXNzZXJ0X3JlZl9o
ZWxkKGRldl9wcml2LCBwb3dlcl93ZWxsKTsKKworCWhzd19wb3dlcl93ZWxsX2Rpc2FibGUoZGV2
X3ByaXYsIHBvd2VyX3dlbGwpOworfQorCiAvKgogICogV2Ugc2hvdWxkIG9ubHkgdXNlIHRoZSBw
b3dlciB3ZWxsIGlmIHdlIGV4cGxpY2l0bHkgYXNrZWQgdGhlIGhhcmR3YXJlIHRvCiAgKiBlbmFi
bGUgaXQsIHNvIGNoZWNrIGlmIGl0J3MgZW5hYmxlZCBhbmQgYWxzbyBjaGVjayBpZiB3ZSd2ZSBy
ZXF1ZXN0ZWQgaXQgdG8KQEAgLTMxMTQsNyArMzE5OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aTkxNV9wb3dlcl93ZWxsX29wcyBpY2xfY29tYm9fcGh5X2F1eF9wb3dlcl93ZWxsX29wcyA9IHsK
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX29wcyBpY2xfdGNfcGh5X2F1eF9w
b3dlcl93ZWxsX29wcyA9IHsKIAkuc3luY19odyA9IGhzd19wb3dlcl93ZWxsX3N5bmNfaHcsCiAJ
LmVuYWJsZSA9IGljbF90Y19waHlfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlLAotCS5kaXNhYmxlID0g
aHN3X3Bvd2VyX3dlbGxfZGlzYWJsZSwKKwkuZGlzYWJsZSA9IGljbF90Y19waHlfYXV4X3Bvd2Vy
X3dlbGxfZGlzYWJsZSwKIAkuaXNfZW5hYmxlZCA9IGhzd19wb3dlcl93ZWxsX2VuYWJsZWQsCiB9
OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYwppbmRleCBlNzlmNmNlYjI2ZjMuLmQ4MDcxMjdhZDVm
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jCkBAIC0zMjUsNiArMzI1LDggQEAgc3RhdGljIHZv
aWQgaW50ZWxfdGNfcG9ydF9yZXNldF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0LAogCWVudW0gdGNfcG9ydF9tb2RlIG9sZF90Y19tb2RlID0gZGlnX3BvcnQtPnRjX21v
ZGU7CiAKIAlpbnRlbF9kaXNwbGF5X3Bvd2VyX2ZsdXNoX3dvcmsoZGV2X3ByaXYpOworCVdBUk5f
T04oaW50ZWxfZGlzcGxheV9wb3dlcl9pc19lbmFibGVkKGRldl9wcml2LAorCQkJCQkgICAgICAg
aW50ZWxfYXV4X3Bvd2VyX2RvbWFpbihkaWdfcG9ydCkpKTsKIAogCWljbF90Y19waHlfZGlzY29u
bmVjdChkaWdfcG9ydCk7CiAJaWNsX3RjX3BoeV9jb25uZWN0KGRpZ19wb3J0LCByZXF1aXJlZF9s
YW5lcyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuaAppbmRleCBjMTg3MGFjZjY1MTYuLjU2ODg0NGUx
ODQ2ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdGMuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5oCkBAIC0yLDggKzIsOCBAQAogI2RlZmluZSBf
X0lOVEVMX1RDX0hfXwogCiAjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KLQotc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydDsKKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgorI2luY2x1ZGUgImludGVs
X2Rydi5oIgogCiB2b2lkIGljbF90Y19waHlfZGlzY29ubmVjdChzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCk7CiAKQEAgLTE4LDYgKzE4LDEyIEBAIHZvaWQgaW50ZWxfdGNfcG9y
dF9nZXRfbGluayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAkJCSAgICBp
bnQgcmVxdWlyZWRfbGFuZXMpOwogdm9pZCBpbnRlbF90Y19wb3J0X3B1dF9saW5rKHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKIAorc3RhdGljIGlubGluZSBpbnQgaW50ZWxf
dGNfcG9ydF9yZWZfaGVsZChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKK3sK
KwlyZXR1cm4gbXV0ZXhfaXNfbG9ja2VkKCZkaWdfcG9ydC0+dGNfbG9jaykgfHwKKwkgICAgICAg
ZGlnX3BvcnQtPnRjX2xpbmtfcmVmY291bnQ7Cit9CisKIHZvaWQgaW50ZWxfdGNfcG9ydF9pbml0
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LCBib29sIGlzX2xlZ2FjeSk7CiAK
ICNlbmRpZiAvKiBfX0lOVEVMX1RDX0hfXyAqLwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
