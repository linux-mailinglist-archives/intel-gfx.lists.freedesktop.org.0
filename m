Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AF5E5043
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 17:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1876EAB4;
	Fri, 25 Oct 2019 15:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E826EA92
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 15:37:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18964856-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 16:37:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 16:37:24 +0100
Message-Id: <20191025153728.23689-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191025153728.23689-1-chris@chris-wilson.co.uk>
References: <20191025153728.23689-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/7] drm/i915/lmem: support kernel mapping
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
V2UgY2FuIGNyZWF0ZSBMTUVNIG9iamVjdHMsIGJ1dCB3ZSBhbHNvIG5lZWQgdG8gc3VwcG9ydCBt
YXBwaW5nIHRoZW0KaW50byBrZXJuZWwgc3BhY2UgZm9yIGludGVybmFsIHVzZS4KClNpZ25lZC1v
ZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBTdGV2ZSBIYW1wc29uIDxzdGV2ZW4udC5oYW1wc29uQGludGVsLmNvbT4KQ2M6
IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMgICAgICB8ICAzOSArKysrKysKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmggICAgICB8ICAgOCArKwogLi4u
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggIHwgICA5ICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAgICAgfCAgMzggKysrLS0tCiAu
Li4vZHJtL2k5MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYyAgfCAxMTMgKysrKysr
KysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDE4OSBpbnNlcnRpb25zKCspLCAxOCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bG1lbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYwppbmRleCA2
YTM4ZDgwMjgxMTAuLjkyNmY2Yzk0MGUwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fbG1lbS5jCkBAIC05LDExICs5LDUwIEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKIAog
Y29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2VtX2xtZW1fb2JqX29w
cyA9IHsKKwkuZmxhZ3MgPSBJOTE1X0dFTV9PQkpFQ1RfSEFTX0lPTUVNLAorCiAJLmdldF9wYWdl
cyA9IGk5MTVfZ2VtX29iamVjdF9nZXRfcGFnZXNfYnVkZHksCiAJLnB1dF9wYWdlcyA9IGk5MTVf
Z2VtX29iamVjdF9wdXRfcGFnZXNfYnVkZHksCiAJLnJlbGVhc2UgPSBpOTE1X2dlbV9vYmplY3Rf
cmVsZWFzZV9tZW1vcnlfcmVnaW9uLAogfTsKIAorLyogWFhYOiBUaW1lIHRvIHZmdW5jIHlvdXIg
bGlmZSB1cD8gKi8KK3ZvaWQgX19pb21lbSAqCitpOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXBf
cGFnZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJCSB1bnNpZ25lZCBsb25n
IG4pCit7CisJcmVzb3VyY2Vfc2l6ZV90IG9mZnNldDsKKworCW9mZnNldCA9IGk5MTVfZ2VtX29i
amVjdF9nZXRfZG1hX2FkZHJlc3Mob2JqLCBuKTsKKworCXJldHVybiBpb19tYXBwaW5nX21hcF93
Yygmb2JqLT5tbS5yZWdpb24tPmlvbWFwLCBvZmZzZXQsIFBBR0VfU0laRSk7Cit9CisKK3ZvaWQg
X19pb21lbSAqCitpOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXBfcGFnZV9hdG9taWMoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCQkJdW5zaWduZWQgbG9uZyBuKQoreworCXJl
c291cmNlX3NpemVfdCBvZmZzZXQ7CisKKwlvZmZzZXQgPSBpOTE1X2dlbV9vYmplY3RfZ2V0X2Rt
YV9hZGRyZXNzKG9iaiwgbik7CisKKwlyZXR1cm4gaW9fbWFwcGluZ19tYXBfYXRvbWljX3djKCZv
YmotPm1tLnJlZ2lvbi0+aW9tYXAsIG9mZnNldCk7Cit9CisKK3ZvaWQgX19pb21lbSAqCitpOTE1
X2dlbV9vYmplY3RfbG1lbV9pb19tYXAoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
KwkJCSAgICB1bnNpZ25lZCBsb25nIG4sCisJCQkgICAgdW5zaWduZWQgbG9uZyBzaXplKQorewor
CXJlc291cmNlX3NpemVfdCBvZmZzZXQ7CisKKwlHRU1fQlVHX09OKCFpOTE1X2dlbV9vYmplY3Rf
aXNfY29udGlndW91cyhvYmopKTsKKworCW9mZnNldCA9IGk5MTVfZ2VtX29iamVjdF9nZXRfZG1h
X2FkZHJlc3Mob2JqLCBuKTsKKworCXJldHVybiBpb19tYXBwaW5nX21hcF93Yygmb2JqLT5tbS5y
ZWdpb24tPmlvbWFwLCBvZmZzZXQsIHNpemUpOworfQorCiBib29sIGk5MTVfZ2VtX29iamVjdF9p
c19sbWVtKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7CiAJcmV0dXJuIG9iai0+
b3BzID09ICZpOTE1X2dlbV9sbWVtX29ial9vcHM7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2xtZW0uaAppbmRleCBmYzNmMTU1ODBmZTMuLjdjMTc2YjhiN2QyZiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5oCkBAIC0xNCw2ICsxNCwxNCBAQCBzdHJ1
Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbjsKIAogZXh0ZXJuIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0X29wcyBpOTE1X2dlbV9sbWVtX29ial9vcHM7CiAKK3ZvaWQgX19pb21lbSAqaTkx
NV9nZW1fb2JqZWN0X2xtZW1faW9fbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
CisJCQkJCSAgdW5zaWduZWQgbG9uZyBuLCB1bnNpZ25lZCBsb25nIHNpemUpOwordm9pZCBfX2lv
bWVtICppOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXBfcGFnZShzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqLAorCQkJCQkgICAgICAgdW5zaWduZWQgbG9uZyBuKTsKK3ZvaWQgX19pb21l
bSAqCitpOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXBfcGFnZV9hdG9taWMoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCQkJdW5zaWduZWQgbG9uZyBuKTsKKwogYm9vbCBpOTE1
X2dlbV9vYmplY3RfaXNfbG1lbShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKTsKIAog
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCmluZGV4IGEzODdlM2VlNzI4Yi4uOTYwMDgzNzRh
NDEyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90
eXBlcy5oCkBAIC0zMSwxMCArMzEsMTEgQEAgc3RydWN0IGk5MTVfbHV0X2hhbmRsZSB7CiBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgewogCXVuc2lnbmVkIGludCBmbGFnczsKICNkZWZp
bmUgSTkxNV9HRU1fT0JKRUNUX0hBU19TVFJVQ1RfUEFHRQlCSVQoMCkKLSNkZWZpbmUgSTkxNV9H
RU1fT0JKRUNUX0lTX1NIUklOS0FCTEUJQklUKDEpCi0jZGVmaW5lIEk5MTVfR0VNX09CSkVDVF9J
U19QUk9YWQlCSVQoMikKLSNkZWZpbmUgSTkxNV9HRU1fT0JKRUNUX05PX0dHVFQJCUJJVCgzKQot
I2RlZmluZSBJOTE1X0dFTV9PQkpFQ1RfQVNZTkNfQ0FOQ0VMCUJJVCg0KQorI2RlZmluZSBJOTE1
X0dFTV9PQkpFQ1RfSEFTX0lPTUVNCUJJVCgxKQorI2RlZmluZSBJOTE1X0dFTV9PQkpFQ1RfSVNf
U0hSSU5LQUJMRQlCSVQoMikKKyNkZWZpbmUgSTkxNV9HRU1fT0JKRUNUX0lTX1BST1hZCUJJVCgz
KQorI2RlZmluZSBJOTE1X0dFTV9PQkpFQ1RfTk9fR0dUVAkJQklUKDQpCisjZGVmaW5lIEk5MTVf
R0VNX09CSkVDVF9BU1lOQ19DQU5DRUwJQklUKDUpCiAKIAkvKiBJbnRlcmZhY2UgYmV0d2VlbiB0
aGUgR0VNIG9iamVjdCBhbmQgaXRzIGJhY2tpbmcgc3RvcmFnZS4KIAkgKiBnZXRfcGFnZXMoKSBp
cyBjYWxsZWQgb25jZSBwcmlvciB0byB0aGUgdXNlIG9mIHRoZSBhc3NvY2lhdGVkIHNldApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYwppbmRleCBiMGVjMDk1OWMxM2Yu
LjgwM2JiNzM5OWNjNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3BhZ2VzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2Vz
LmMKQEAgLTcsNiArNyw3IEBACiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpOTE1
X2dlbV9vYmplY3QuaCIKICNpbmNsdWRlICJpOTE1X3NjYXR0ZXJsaXN0LmgiCisjaW5jbHVkZSAi
aTkxNV9nZW1fbG1lbS5oIgogCiB2b2lkIF9faTkxNV9nZW1fb2JqZWN0X3NldF9wYWdlcyhzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCQkJCSBzdHJ1Y3Qgc2dfdGFibGUgKnBhZ2Vz
LApAQCAtMTU0LDYgKzE1NSwxNiBAQCBzdGF0aWMgdm9pZCBfX2k5MTVfZ2VtX29iamVjdF9yZXNl
dF9wYWdlX2l0ZXIoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAlyY3VfcmVhZF91
bmxvY2soKTsKIH0KIAorc3RhdGljIHZvaWQgdW5tYXBfb2JqZWN0KHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosIHZvaWQgKnB0cikKK3sKKwlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX2xt
ZW0ob2JqKSkKKwkJaW9fbWFwcGluZ191bm1hcCgodm9pZCBfX2ZvcmNlIF9faW9tZW0gKilwdHIp
OworCWVsc2UgaWYgKGlzX3ZtYWxsb2NfYWRkcihwdHIpKQorCQl2dW5tYXAocHRyKTsKKwllbHNl
CisJCWt1bm1hcChrbWFwX3RvX3BhZ2UocHRyKSk7Cit9CisKIHN0cnVjdCBzZ190YWJsZSAqCiBf
X2k5MTVfZ2VtX29iamVjdF91bnNldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQogewpAQCAtMTY5LDE0ICsxODAsNyBAQCBfX2k5MTVfZ2VtX29iamVjdF91bnNldF9wYWdl
cyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCWk5MTVfZ2VtX29iamVjdF9tYWtl
X3Vuc2hyaW5rYWJsZShvYmopOwogCiAJaWYgKG9iai0+bW0ubWFwcGluZykgewotCQl2b2lkICpw
dHI7Ci0KLQkJcHRyID0gcGFnZV9tYXNrX2JpdHMob2JqLT5tbS5tYXBwaW5nKTsKLQkJaWYgKGlz
X3ZtYWxsb2NfYWRkcihwdHIpKQotCQkJdnVubWFwKHB0cik7Ci0JCWVsc2UKLQkJCWt1bm1hcChr
bWFwX3RvX3BhZ2UocHRyKSk7Ci0KKwkJdW5tYXBfb2JqZWN0KG9iaiwgcGFnZV9tYXNrX2JpdHMo
b2JqLT5tbS5tYXBwaW5nKSk7CiAJCW9iai0+bW0ubWFwcGluZyA9IE5VTEw7CiAJfQogCkBAIC0y
MzEsNyArMjM1LDcgQEAgaW50IF9faTkxNV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLAogfQogCiAvKiBUaGUgJ21hcHBpbmcnIHBhcnQgb2YgaTkx
NV9nZW1fb2JqZWN0X3Bpbl9tYXAoKSBiZWxvdyAqLwotc3RhdGljIHZvaWQgKmk5MTVfZ2VtX29i
amVjdF9tYXAoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKK3N0YXRpYyB2
b2lkICppOTE1X2dlbV9vYmplY3RfbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmos
CiAJCQkJIGVudW0gaTkxNV9tYXBfdHlwZSB0eXBlKQogewogCXVuc2lnbmVkIGxvbmcgbl9wYWdl
cyA9IG9iai0+YmFzZS5zaXplID4+IFBBR0VfU0hJRlQ7CkBAIC0yNDQsNiArMjQ4LDEzIEBAIHN0
YXRpYyB2b2lkICppOTE1X2dlbV9vYmplY3RfbWFwKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmosCiAJcGdwcm90X3QgcGdwcm90OwogCXZvaWQgKmFkZHI7CiAKKwlpZiAoaTkx
NV9nZW1fb2JqZWN0X2lzX2xtZW0ob2JqKSkgeworCQlpZiAodHlwZSAhPSBJOTE1X01BUF9XQykK
KwkJCXJldHVybiBOVUxMOworCisJCXJldHVybiBpOTE1X2dlbV9vYmplY3RfbG1lbV9pb19tYXAo
b2JqLCAwLCBvYmotPmJhc2Uuc2l6ZSk7CisJfQorCiAJLyogQSBzaW5nbGUgcGFnZSBjYW4gYWx3
YXlzIGJlIGttYXBwZWQgKi8KIAlpZiAobl9wYWdlcyA9PSAxICYmIHR5cGUgPT0gSTkxNV9NQVBf
V0IpCiAJCXJldHVybiBrbWFwKHNnX3BhZ2Uoc2d0LT5zZ2wpKTsKQEAgLTI4NSwxMSArMjk2LDEz
IEBAIHZvaWQgKmk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmosCiAJCQkgICAgICBlbnVtIGk5MTVfbWFwX3R5cGUgdHlwZSkKIHsKIAllbnVtIGk5
MTVfbWFwX3R5cGUgaGFzX3R5cGU7CisJdW5zaWduZWQgaW50IGZsYWdzOwogCWJvb2wgcGlubmVk
OwogCXZvaWQgKnB0cjsKIAlpbnQgZXJyOwogCi0JaWYgKHVubGlrZWx5KCFpOTE1X2dlbV9vYmpl
Y3RfaGFzX3N0cnVjdF9wYWdlKG9iaikpKQorCWZsYWdzID0gSTkxNV9HRU1fT0JKRUNUX0hBU19T
VFJVQ1RfUEFHRSB8IEk5MTVfR0VNX09CSkVDVF9IQVNfSU9NRU07CisJaWYgKCFpOTE1X2dlbV9v
YmplY3RfdHlwZV9oYXMob2JqLCBmbGFncykpCiAJCXJldHVybiBFUlJfUFRSKC1FTlhJTyk7CiAK
IAllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJm9iai0+bW0ubG9jayk7CkBAIC0zMjEs
MTAgKzMzNCw3IEBAIHZvaWQgKmk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCiAJCQlnb3RvIGVycl91bnBpbjsKIAkJfQogCi0JCWlmIChpc192
bWFsbG9jX2FkZHIocHRyKSkKLQkJCXZ1bm1hcChwdHIpOwotCQllbHNlCi0JCQlrdW5tYXAoa21h
cF90b19wYWdlKHB0cikpOworCQl1bm1hcF9vYmplY3Qob2JqLCBwdHIpOwogCiAJCXB0ciA9IG9i
ai0+bW0ubWFwcGluZyA9IE5VTEw7CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL2ludGVsX21lbW9yeV9yZWdpb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKaW5kZXggNjE3YTM1Y2ZhYzJmLi4yZTBm
OTFmYWM4NWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRl
bF9tZW1vcnlfcmVnaW9uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lu
dGVsX21lbW9yeV9yZWdpb24uYwpAQCAtMTMsOCArMTMsMTAgQEAKIAogI2luY2x1ZGUgImdlbS9p
OTE1X2dlbV9sbWVtLmgiCiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIgorI2luY2x1
ZGUgImdlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmgiCiAjaW5jbHVkZSAiZ2VtL3NlbGZ0ZXN0cy9t
b2NrX2NvbnRleHQuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgorI2luY2x1ZGUgInNlbGZ0
ZXN0cy9pZ3RfZmx1c2hfdGVzdC5oIgogI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X3JhbmRvbS5o
IgogCiBzdGF0aWMgdm9pZCBjbG9zZV9vYmplY3RzKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9u
ICptZW0sCkBAIC0yNzUsNiArMjc3LDExNiBAQCBzdGF0aWMgaW50IGlndF9sbWVtX2NyZWF0ZSh2
b2lkICphcmcpCiAJcmV0dXJuIGVycjsKIH0KIAorc3RhdGljIGludCBpZ3RfbG1lbV93cml0ZV9j
cHUodm9pZCAqYXJnKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnOwor
CXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CisJSTkxNV9STkRfU1RBVEUocHJuZyk7
CisJSUdUX1RJTUVPVVQoZW5kX3RpbWUpOworCXUzMiBieXRlc1tdID0geworCQkwLCAvKiBybmcg
cGxhY2Vob2xkZXIgKi8KKwkJc2l6ZW9mKHUzMiksCisJCXNpemVvZih1NjQpLAorCQk2NCwgLyog
Y2wgKi8KKwkJUEFHRV9TSVpFLAorCQlQQUdFX1NJWkUgLSBzaXplb2YodTMyKSwKKwkJUEFHRV9T
SVpFIC0gc2l6ZW9mKHU2NCksCisJCVBBR0VfU0laRSAtIDY0LAorCX07CisJdTMyICp2YWRkcjsK
Kwl1MzIgc3o7CisJdTMyIGk7CisJaW50ICpvcmRlcjsKKwlpbnQgY291bnQ7CisJaW50IGVycjsK
KworCWlmICghSEFTX0VOR0lORShpOTE1LCBCQ1MwKSkKKwkJcmV0dXJuIDA7CisKKwlzeiA9IHJv
dW5kX3VwKHByYW5kb21fdTMyX3N0YXRlKCZwcm5nKSAlIFNaXzMyTSwgUEFHRV9TSVpFKTsKKwlz
eiA9IG1heF90KHUzMiwgMiAqIFBBR0VfU0laRSwgc3opOworCisJb2JqID0gaTkxNV9nZW1fb2Jq
ZWN0X2NyZWF0ZV9sbWVtKGk5MTUsIHN6LCBJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMpOworCWlm
IChJU19FUlIob2JqKSkKKwkJcmV0dXJuIFBUUl9FUlIob2JqKTsKKworCXZhZGRyID0gaTkxNV9n
ZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQyk7CisJaWYgKElTX0VSUih2YWRkcikp
IHsKKwkJZXJyID0gUFRSX0VSUih2YWRkcik7CisJCWdvdG8gb3V0X3B1dDsKKwl9CisKKwkvKiBQ
dXQgdGhlIHBhZ2VzIGludG8gYSBrbm93biBzdGF0ZSAtLSBmcm9tIHRoZSBncHUgZm9yIGFkZGVk
IGZ1biAqLworCWVyciA9IGk5MTVfZ2VtX29iamVjdF9maWxsX2JsdChvYmosIGk5MTUtPmVuZ2lu
ZVtCQ1MwXS0+a2VybmVsX2NvbnRleHQsCisJCQkJICAgICAgIDB4ZGVhZGJlYWYpOworCWlmIChl
cnIpCisJCWdvdG8gb3V0X3VucGluOworCisJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKKwll
cnIgPSBpOTE1X2dlbV9vYmplY3Rfc2V0X3RvX3djX2RvbWFpbihvYmosIHRydWUpOworCWk5MTVf
Z2VtX29iamVjdF91bmxvY2sob2JqKTsKKwlpZiAoZXJyKQorCQlnb3RvIG91dF91bnBpbjsKKwor
CWNvdW50ID0gQVJSQVlfU0laRShieXRlcyk7CisJb3JkZXIgPSBpOTE1X3JhbmRvbV9vcmRlcihj
b3VudCAqIGNvdW50LCAmcHJuZyk7CisJaWYgKCFvcmRlcikgeworCQllcnIgPSAtRU5PTUVNOwor
CQlnb3RvIG91dF91bnBpbjsKKwl9CisKKwkvKiBXZSB3YW50IHRvIHRocm93IGluIGEgcmFuZG9t
IHdpZHRoL2FsaWduICovCisJYnl0ZXNbMF0gPSBpZ3RfcmFuZG9tX29mZnNldCgmcHJuZywgMCwg
UEFHRV9TSVpFLCBzaXplb2YodTMyKSwKKwkJCQkgICAgIHNpemVvZih1MzIpKTsKKworCWkgPSAw
OworCWRvIHsKKwkJdTMyIG9mZnNldDsKKwkJdTMyIGFsaWduOworCQl1MzIgZHdvcmQ7CisJCXUz
MiBzaXplOworCQl1MzIgdmFsOworCisJCXNpemUgPSBieXRlc1tvcmRlcltpXSAlIGNvdW50XTsK
KwkJaSA9IChpICsgMSkgJSAoY291bnQgKiBjb3VudCk7CisKKwkJYWxpZ24gPSBieXRlc1tvcmRl
cltpXSAlIGNvdW50XTsKKwkJaSA9IChpICsgMSkgJSAoY291bnQgKiBjb3VudCk7CisKKwkJYWxp
Z24gPSBtYXhfdCh1MzIsIHNpemVvZih1MzIpLCByb3VuZGRvd25fcG93X29mX3R3byhhbGlnbikp
OworCisJCW9mZnNldCA9IGlndF9yYW5kb21fb2Zmc2V0KCZwcm5nLCAwLCBvYmotPmJhc2Uuc2l6
ZSwKKwkJCQkJICAgc2l6ZSwgYWxpZ24pOworCisJCXZhbCA9IHByYW5kb21fdTMyX3N0YXRlKCZw
cm5nKTsKKwkJbWVtc2V0MzIodmFkZHIgKyBvZmZzZXQgLyBzaXplb2YodTMyKSwgdmFsIF4gMHhk
ZWFkYmVhZiwKKwkJCSBzaXplIC8gc2l6ZW9mKHUzMikpOworCisJCS8qCisJCSAqIFNhbXBsZSBy
YW5kb20gZHcgLS0gZG9uJ3Qgd2FzdGUgcHJlY2lvdXMgdGltZSByZWFkaW5nIGV2ZXJ5CisJCSAq
IHNpbmdsZSBkdy4KKwkJICovCisJCWR3b3JkID0gaWd0X3JhbmRvbV9vZmZzZXQoJnBybmcsIG9m
ZnNldCwKKwkJCQkJICBvZmZzZXQgKyBzaXplLAorCQkJCQkgIHNpemVvZih1MzIpLCBzaXplb2Yo
dTMyKSk7CisJCWR3b3JkIC89IHNpemVvZih1MzIpOworCQlpZiAodmFkZHJbZHdvcmRdICE9ICh2
YWwgXiAweGRlYWRiZWFmKSkgeworCQkJcHJfZXJyKCIlcyB2YWRkclsldV09JXUsIHZhbD0ldSwg
c2l6ZT0ldSwgYWxpZ249JXUsIG9mZnNldD0ldVxuIiwKKwkJCSAgICAgICBfX2Z1bmNfXywgZHdv
cmQsIHZhZGRyW2R3b3JkXSwgdmFsIF4gMHhkZWFkYmVhZiwKKwkJCSAgICAgICBzaXplLCBhbGln
biwgb2Zmc2V0KTsKKwkJCWVyciA9IC1FSU5WQUw7CisJCQlicmVhazsKKwkJfQorCX0gd2hpbGUg
KCFfX2lndF90aW1lb3V0KGVuZF90aW1lLCBOVUxMKSk7CisKK291dF91bnBpbjoKKwlpOTE1X2dl
bV9vYmplY3RfdW5waW5fbWFwKG9iaik7CitvdXRfcHV0OgorCWk5MTVfZ2VtX29iamVjdF9wdXQo
b2JqKTsKKworCXJldHVybiBlcnI7Cit9CisKIGludCBpbnRlbF9tZW1vcnlfcmVnaW9uX21vY2tf
c2VsZnRlc3RzKHZvaWQpCiB7CiAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVz
dHNbXSA9IHsKQEAgLTMwOCw2ICs0MjAsNyBAQCBpbnQgaW50ZWxfbWVtb3J5X3JlZ2lvbl9saXZl
X3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKIAlzdGF0aWMgY29u
c3Qgc3RydWN0IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0gewogCQlTVUJURVNUKGlndF9sbWVtX2Ny
ZWF0ZSksCisJCVNVQlRFU1QoaWd0X2xtZW1fd3JpdGVfY3B1KSwKIAl9OwogCiAJaWYgKCFIQVNf
TE1FTShpOTE1KSkgewotLSAKMi4yNC4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
