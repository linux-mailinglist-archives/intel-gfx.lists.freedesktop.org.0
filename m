Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A9D2EAF1D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F30886E151;
	Tue,  5 Jan 2021 15:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 890866E194
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:43 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:11 +0100
Message-Id: <20210105153558.134272-18-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 17/64] drm/i915: Flatten obj->mm.lock
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB1c2VycHRyIGZpeGVkLCB0aGVyZSBpcyBubyBuZWVkIGZvciBhbGwgc2VwYXJhdGUgbG9j
a2RlcCBjbGFzc2VzCm5vdywgYW5kIHdlIGNhbiByZW1vdmUgYWxsIGxvY2tkZXAgdHJpY2tzIHVz
ZWQuIEEgdHJ5bG9jayBpbiB0aGUKc2hyaW5rZXIgaXMgYWxsIHdlIG5lZWQgbm93IHRvIGZsYXR0
ZW4gdGhlIGxvY2tpbmcgaGllcmFyY2h5LgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21h
cyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICB8ICA2ICstLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCAgIHwgMjAgKystLS0tLS0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAgICB8IDM0ICsrKysr
KysrKystLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGh5cy5j
ICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIu
YyB8IDEwICsrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIu
YyAgfCAgMiArLQogNiBmaWxlcyBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCA0NyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKaW5kZXgg
MTM5Mzk4OGJkNWFmLi4wMjhhNTU2YWIxYTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmMKQEAgLTYyLDcgKzYyLDcgQEAgdm9pZCBpOTE1X2dlbV9vYmplY3Rf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJICBjb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgKm9wcywKIAkJCSAgc3RydWN0IGxvY2tfY2xhc3Nfa2V5
ICprZXksIHVuc2lnbmVkIGZsYWdzKQogewotCV9fbXV0ZXhfaW5pdCgmb2JqLT5tbS5sb2NrLCBv
cHMtPm5hbWUgPzogIm9iai0+bW0ubG9jayIsIGtleSk7CisJbXV0ZXhfaW5pdCgmb2JqLT5tbS5s
b2NrKTsKIAogCXNwaW5fbG9ja19pbml0KCZvYmotPnZtYS5sb2NrKTsKIAlJTklUX0xJU1RfSEVB
RCgmb2JqLT52bWEubGlzdCk7CkBAIC04NiwxMCArODYsNiBAQCB2b2lkIGk5MTVfZ2VtX29iamVj
dF9pbml0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJbXV0ZXhfaW5pdCgmb2Jq
LT5tbS5nZXRfcGFnZS5sb2NrKTsKIAlJTklUX1JBRElYX1RSRUUoJm9iai0+bW0uZ2V0X2RtYV9w
YWdlLnJhZGl4LCBHRlBfS0VSTkVMIHwgX19HRlBfTk9XQVJOKTsKIAltdXRleF9pbml0KCZvYmot
Pm1tLmdldF9kbWFfcGFnZS5sb2NrKTsKLQotCWlmIChJU19FTkFCTEVEKENPTkZJR19MT0NLREVQ
KSAmJiBpOTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKQotCQlpOTE1X2dlbV9zaHJp
bmtlcl90YWludHNfbXV0ZXgodG9faTkxNShvYmotPmJhc2UuZGV2KSwKLQkJCQkJICAgICAgICZv
YmotPm1tLmxvY2spOwogfQogCiAvKioKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuaAppbmRleCBkYjRkZGJmY2VlNDAuLmFhYTU3NDU0NTc3NiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtMzIyLDI3ICszMjIsMTAgQEAg
dm9pZCBfX2k5MTVfZ2VtX29iamVjdF9zZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKIGludCBfX19faTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqKTsKIGludCBfX2k5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXMoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CiAKLWVudW0gaTkxNV9tbV9zdWJjbGFzcyB7
IC8qIGxvY2tkZXAgc3ViY2xhc3MgZm9yIG9iai0+bW0ubG9jay9zdHJ1Y3RfbXV0ZXggKi8KLQlJ
OTE1X01NX05PUk1BTCA9IDAsCi0JLyoKLQkgKiBPbmx5IHVzZWQgYnkgc3RydWN0X211dGV4LCB3
aGVuIGNhbGxlZCAicmVjdXJzaXZlbHkiIGZyb20KLQkgKiBkaXJlY3QtcmVjbGFpbS1lc3F1ZS4g
U2FmZSBiZWNhdXNlIHRoZXJlIGlzIG9ubHkgZXZlcnkgb25lCi0JICogc3RydWN0X211dGV4IGlu
IHRoZSBlbnRpcmUgc3lzdGVtLgotCSAqLwotCUk5MTVfTU1fU0hSSU5LRVIgPSAxLAotCS8qCi0J
ICogVXNlZCBmb3Igb2JqLT5tbS5sb2NrIHdoZW4gYWxsb2NhdGluZyBwYWdlcy4gU2FmZSBiZWNh
dXNlIHRoZSBvYmplY3QKLQkgKiBpc24ndCB5ZXQgb24gYW55IExSVSwgYW5kIHRoZXJlZm9yZSB0
aGUgc2hyaW5rZXIgY2FuJ3QgZGVhZGxvY2sgb24KLQkgKiBpdC4gQXMgc29vbiBhcyB0aGUgb2Jq
ZWN0IGhhcyBwYWdlcywgb2JqLT5tbS5sb2NrIG5lc3RzIHdpdGhpbgotCSAqIGZzX3JlY2xhaW0u
Ci0JICovCi0JSTkxNV9NTV9HRVRfUEFHRVMgPSAxLAotfTsKLQogc3RhdGljIGlubGluZSBpbnQg
X19tdXN0X2NoZWNrCiBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmopCiB7Ci0JbWlnaHRfbG9ja19uZXN0ZWQoJm9iai0+bW0ubG9jaywgSTkx
NV9NTV9HRVRfUEFHRVMpOworCW1pZ2h0X2xvY2soJm9iai0+bW0ubG9jayk7CiAKIAlpZiAoYXRv
bWljX2luY19ub3RfemVybygmb2JqLT5tbS5wYWdlc19waW5fY291bnQpKQogCQlyZXR1cm4gMDsK
QEAgLTM4Niw2ICszNjksNyBAQCBpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMoc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIH0KIAogaW50IF9faTkxNV9nZW1fb2JqZWN0X3B1dF9w
YWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKK2ludCBfX2k5MTVfZ2VtX29i
amVjdF9wdXRfcGFnZXNfbG9ja2VkKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwog
dm9pZCBpOTE1X2dlbV9vYmplY3RfdHJ1bmNhdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaik7CiB2b2lkIGk5MTVfZ2VtX29iamVjdF93cml0ZWJhY2soc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaik7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2Vz
LmMKaW5kZXggYWVmZGJlMzZmZTZmLi5mZmMzYzNjNDc0YjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCkBAIC0xMTEsNyArMTExLDcgQEAgaW50IF9faTkxNV9n
ZW1fb2JqZWN0X2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewog
CWludCBlcnI7CiAKLQllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGVfbmVzdGVkKCZvYmot
Pm1tLmxvY2ssIEk5MTVfTU1fR0VUX1BBR0VTKTsKKwllcnIgPSBtdXRleF9sb2NrX2ludGVycnVw
dGlibGUoJm9iai0+bW0ubG9jayk7CiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsKIApAQCAtMTkz
LDIxICsxOTMsMTMgQEAgX19pOTE1X2dlbV9vYmplY3RfdW5zZXRfcGFnZXMoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaikKIAlyZXR1cm4gcGFnZXM7CiB9CiAKLWludCBfX2k5MTVfZ2Vt
X29iamVjdF9wdXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKK2ludCBf
X2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXNfbG9ja2VkKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopCiB7CiAJc3RydWN0IHNnX3RhYmxlICpwYWdlczsKLQlpbnQgZXJyOwogCiAJaWYg
KGk5MTVfZ2VtX29iamVjdF9oYXNfcGlubmVkX3BhZ2VzKG9iaikpCiAJCXJldHVybiAtRUJVU1k7
CiAKLQkvKiBNYXkgYmUgY2FsbGVkIGJ5IHNocmlua2VyIGZyb20gd2l0aGluIGdldF9wYWdlcygp
IChvbiBhbm90aGVyIGJvKSAqLwotCW11dGV4X2xvY2soJm9iai0+bW0ubG9jayk7Ci0JaWYgKHVu
bGlrZWx5KGF0b21pY19yZWFkKCZvYmotPm1tLnBhZ2VzX3Bpbl9jb3VudCkpKSB7Ci0JCWVyciA9
IC1FQlVTWTsKLQkJZ290byB1bmxvY2s7Ci0JfQotCiAJaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2Vf
bW1hcF9vZmZzZXQob2JqKTsKIAogCS8qCkBAIC0yMjMsMTQgKzIxNSwyMiBAQCBpbnQgX19pOTE1
X2dlbV9vYmplY3RfcHV0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJ
ICogZ2V0X3BhZ2VzIGJhY2tlbmRzIHdlIHNob3VsZCBiZSBiZXR0ZXIgYWJsZSB0byBoYW5kbGUg
dGhlCiAJICogY2FuY2VsbGF0aW9uIG9mIHRoZSBhc3luYyB0YXNrIGluIGEgbW9yZSB1bmlmb3Jt
IG1hbm5lci4KIAkgKi8KLQlpZiAoIXBhZ2VzKQotCQlwYWdlcyA9IEVSUl9QVFIoLUVJTlZBTCk7
Ci0KLQlpZiAoIUlTX0VSUihwYWdlcykpCisJaWYgKCFJU19FUlJfT1JfTlVMTChwYWdlcykpCiAJ
CW9iai0+b3BzLT5wdXRfcGFnZXMob2JqLCBwYWdlcyk7CiAKLQllcnIgPSAwOwotdW5sb2NrOgor
CXJldHVybiAwOworfQorCitpbnQgX19pOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzKHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCit7CisJaW50IGVycjsKKworCWlmIChpOTE1X2dlbV9v
YmplY3RfaGFzX3Bpbm5lZF9wYWdlcyhvYmopKQorCQlyZXR1cm4gLUVCVVNZOworCisJLyogTWF5
IGJlIGNhbGxlZCBieSBzaHJpbmtlciBmcm9tIHdpdGhpbiBnZXRfcGFnZXMoKSAob24gYW5vdGhl
ciBibykgKi8KKwltdXRleF9sb2NrKCZvYmotPm1tLmxvY2spOworCWVyciA9IF9faTkxNV9nZW1f
b2JqZWN0X3B1dF9wYWdlc19sb2NrZWQob2JqKTsKIAltdXRleF91bmxvY2soJm9iai0+bW0ubG9j
ayk7CiAKIAlyZXR1cm4gZXJyOwpAQCAtMzM4LDcgKzMzOCw3IEBAIHZvaWQgKmk5MTVfZ2VtX29i
amVjdF9waW5fbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJICAgICFpOTE1
X2dlbV9vYmplY3RfdHlwZV9oYXMob2JqLCBJOTE1X0dFTV9PQkpFQ1RfSEFTX0lPTUVNKSkKIAkJ
cmV0dXJuIEVSUl9QVFIoLUVOWElPKTsKIAotCWVyciA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJs
ZV9uZXN0ZWQoJm9iai0+bW0ubG9jaywgSTkxNV9NTV9HRVRfUEFHRVMpOworCWVyciA9IG11dGV4
X2xvY2tfaW50ZXJydXB0aWJsZSgmb2JqLT5tbS5sb2NrKTsKIAlpZiAoZXJyKQogCQlyZXR1cm4g
RVJSX1BUUihlcnIpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fcGh5cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYwpp
bmRleCAxNDRlNDk0MGVlZGUuLjBkMTc2YmYwNjQwNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fcGh5cy5jCkBAIC0yMzYsNyArMjM2LDcgQEAgaW50IGk5MTVfZ2VtX29iamVj
dF9hdHRhY2hfcGh5cyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCBpbnQgYWxpZ24p
CiAJaWYgKGVycikKIAkJcmV0dXJuIGVycjsKIAotCWVyciA9IG11dGV4X2xvY2tfaW50ZXJydXB0
aWJsZV9uZXN0ZWQoJm9iai0+bW0ubG9jaywgSTkxNV9NTV9HRVRfUEFHRVMpOworCWVyciA9IG11
dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmb2JqLT5tbS5sb2NrKTsKIAlpZiAoZXJyKQogCQlnb3Rv
IGVycl91bmxvY2s7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9zaHJpbmtlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlu
a2VyLmMKaW5kZXggYzJkYmExY2Q5NTMyLi4xMWI4ZDRlNjlmYzcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jCkBAIC00OSw5ICs0OSw5IEBAIHN0YXRp
YyBib29sIHVuc2FmZV9kcm9wX3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
CiAJCWZsYWdzID0gSTkxNV9HRU1fT0JKRUNUX1VOQklORF9URVNUOwogCiAJaWYgKGk5MTVfZ2Vt
X29iamVjdF91bmJpbmQob2JqLCBmbGFncykgPT0gMCkKLQkJX19pOTE1X2dlbV9vYmplY3RfcHV0
X3BhZ2VzKG9iaik7CisJCXJldHVybiB0cnVlOwogCi0JcmV0dXJuICFpOTE1X2dlbV9vYmplY3Rf
aGFzX3BhZ2VzKG9iaik7CisJcmV0dXJuIGZhbHNlOwogfQogCiBzdGF0aWMgdm9pZCB0cnlfdG9f
d3JpdGViYWNrKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCkBAIC0yMDAsMTAgKzIw
MCwxMCBAQCBpOTE1X2dlbV9zaHJpbmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAK
IAkJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmk5MTUtPm1tLm9ial9sb2NrLCBmbGFncyk7CiAK
LQkJCWlmICh1bnNhZmVfZHJvcF9wYWdlcyhvYmosIHNocmluaykpIHsKKwkJCWlmICh1bnNhZmVf
ZHJvcF9wYWdlcyhvYmosIHNocmluaykgJiYKKwkJCSAgICBtdXRleF90cnlsb2NrKCZvYmotPm1t
LmxvY2spKSB7CiAJCQkJLyogTWF5IGFycml2ZSBmcm9tIGdldF9wYWdlcyBvbiBhbm90aGVyIGJv
ICovCi0JCQkJbXV0ZXhfbG9jaygmb2JqLT5tbS5sb2NrKTsKLQkJCQlpZiAoIWk5MTVfZ2VtX29i
amVjdF9oYXNfcGFnZXMob2JqKSkgeworCQkJCWlmICghX19pOTE1X2dlbV9vYmplY3RfcHV0X3Bh
Z2VzX2xvY2tlZChvYmopKSB7CiAJCQkJCXRyeV90b193cml0ZWJhY2sob2JqLCBzaHJpbmspOwog
CQkJCQljb3VudCArPSBvYmotPmJhc2Uuc2l6ZSA+PiBQQUdFX1NISUZUOwogCQkJCX0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91c2VycHRyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCmluZGV4IGQwN2Y4NDMyOGVk
ZC4uYjFjMDM1YzU1NzA4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fdXNlcnB0ci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV91
c2VycHRyLmMKQEAgLTI0Niw3ICsyNDYsNyBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX29iamVjdF91
c2VycHRyX3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLCBib29sCiAJaWYg
KEdFTV9XQVJOX09OKGk5MTVfZ2VtX29iamVjdF9oYXNfcGlubmVkX3BhZ2VzKG9iaikpKQogCQly
ZXR1cm4gLUVCVVNZOwogCi0JbXV0ZXhfbG9ja19uZXN0ZWQoJm9iai0+bW0ubG9jaywgSTkxNV9N
TV9HRVRfUEFHRVMpOworCW11dGV4X2xvY2soJm9iai0+bW0ubG9jayk7CiAKIAlwYWdlcyA9IF9f
aTkxNV9nZW1fb2JqZWN0X3Vuc2V0X3BhZ2VzKG9iaik7CiAJaWYgKCFJU19FUlJfT1JfTlVMTChw
YWdlcykpCi0tIAoyLjMwLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
