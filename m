Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4FC436D1
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFBB989AA7;
	Thu, 13 Jun 2019 13:43:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9C389AA7
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:43:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 06:43:03 -0700
X-ExtLoop1: 1
Received: from aabuhatz-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.210])
 by orsmga008.jf.intel.com with ESMTP; 13 Jun 2019 06:41:31 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 14:35:32 +0100
Message-Id: <20190613133539.12620-22-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 21/28] drm/i915/gtt: Reduce source verbosity by
 caching repeated dereferences
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRoZXJlIGlz
IGEgbG90IG9mIGNvZGUgaW4gaTkxNV9nZW1fZ3R0LmMgd2hpY2ggcmVwZWF0YWRseSBkZXJlZmVy
ZW5jZXMKZWl0aGVyIGdndHQgb3IgcHBndHQgaW4gb3JkZXIgdG8gZ2V0IHRvIHRoZSB2bS4gQ2Fj
aGUgdGhvc2UgYWNjZXNzZXMgaW4KbG9jYWwgdmFyaWFibGVzIGZvciBiZXR0ZXIgcmVhZGFiaWxp
dHkuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMjU0ICsrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMzQgaW5zZXJ0aW9ucygr
KSwgMTIwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXgg
NTE2ZmZjNGE1MjFhLi5kMDlhNGQ5YjcxZGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jCkBAIC0xMDA0LDEwICsxMDA0LDExIEBAIGdlbjhfcHBndHRfaW5zZXJ0X3B0ZV9lbnRyaWVz
KHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCwKIHsKIAlzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9y
eSAqcGQ7CiAJY29uc3QgZ2VuOF9wdGVfdCBwdGVfZW5jb2RlID0gZ2VuOF9wdGVfZW5jb2RlKDAs
IGNhY2hlX2xldmVsLCBmbGFncyk7CisJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSAm
cHBndHQtPnZtOwogCWdlbjhfcHRlX3QgKnZhZGRyOwogCWJvb2wgcmV0OwogCi0JR0VNX0JVR19P
TihpZHgtPnBkcGUgPj0gaTkxNV9wZHBlc19wZXJfcGRwKCZwcGd0dC0+dm0pKTsKKwlHRU1fQlVH
X09OKGlkeC0+cGRwZSA+PSBpOTE1X3BkcGVzX3Blcl9wZHAodm0pKTsKIAlwZCA9IHBkcC0+cGFn
ZV9kaXJlY3RvcnlbaWR4LT5wZHBlXTsKIAl2YWRkciA9IGttYXBfYXRvbWljX3B4KHBkLT5wYWdl
X3RhYmxlW2lkeC0+cGRlXSk7CiAJZG8gewpAQCAtMTAzOCw3ICsxMDM5LDcgQEAgZ2VuOF9wcGd0
dF9pbnNlcnRfcHRlX2VudHJpZXMoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0LAogCQkJCQlicmVh
azsKIAkJCQl9CiAKLQkJCQlHRU1fQlVHX09OKGlkeC0+cGRwZSA+PSBpOTE1X3BkcGVzX3Blcl9w
ZHAoJnBwZ3R0LT52bSkpOworCQkJCUdFTV9CVUdfT04oaWR4LT5wZHBlID49IGk5MTVfcGRwZXNf
cGVyX3BkcCh2bSkpOwogCQkJCXBkID0gcGRwLT5wYWdlX2RpcmVjdG9yeVtpZHgtPnBkcGVdOwog
CQkJfQogCkBAIC0xMzUyLDE2ICsxMzUzLDE3IEBAIHN0YXRpYyB2b2lkIGdlbjhfcHBndHRfY2xl
YW51cF8zbHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCiBzdGF0aWMgdm9pZCBn
ZW44X3BwZ3R0X2NsZWFudXBfNGx2bChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQpCiB7CisJc3Ry
dWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSAmcHBndHQtPnZtOwogCWludCBpOwogCiAJZm9y
IChpID0gMDsgaSA8IEdFTjhfUE1MNEVTX1BFUl9QTUw0OyBpKyspIHsKLQkJaWYgKHBwZ3R0LT5w
bWw0LnBkcHNbaV0gPT0gcHBndHQtPnZtLnNjcmF0Y2hfcGRwKQorCQlpZiAocHBndHQtPnBtbDQu
cGRwc1tpXSA9PSB2bS0+c2NyYXRjaF9wZHApCiAJCQljb250aW51ZTsKIAotCQlnZW44X3BwZ3R0
X2NsZWFudXBfM2x2bCgmcHBndHQtPnZtLCBwcGd0dC0+cG1sNC5wZHBzW2ldKTsKKwkJZ2VuOF9w
cGd0dF9jbGVhbnVwXzNsdmwodm0sIHBwZ3R0LT5wbWw0LnBkcHNbaV0pOwogCX0KIAotCWNsZWFu
dXBfcHgoJnBwZ3R0LT52bSwgJnBwZ3R0LT5wbWw0KTsKKwljbGVhbnVwX3B4KHZtLCAmcHBndHQt
PnBtbDQpOwogfQogCiBzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5MTVf
YWRkcmVzc19zcGFjZSAqdm0pCkBAIC0xNTkwLDE4ICsxNTkyLDE5IEBAIHN0YXRpYyBpbnQgZ2Vu
OF9wcmVhbGxvY2F0ZV90b3BfbGV2ZWxfcGRwKHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCkKIHN0
YXRpYyB2b2lkIHBwZ3R0X2luaXQoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0LCBzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7
CisJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSAmcHBndHQtPnZtOwogCi0JcHBndHQt
PnZtLmd0ID0gZ3Q7Ci0JcHBndHQtPnZtLmk5MTUgPSBpOTE1OwotCXBwZ3R0LT52bS5kbWEgPSAm
aTkxNS0+ZHJtLnBkZXYtPmRldjsKLQlwcGd0dC0+dm0udG90YWwgPSBCSVRfVUxMKElOVEVMX0lO
Rk8oaTkxNSktPnBwZ3R0X3NpemUpOworCXZtLT5ndCA9IGd0OworCXZtLT5pOTE1ID0gaTkxNTsK
Kwl2bS0+ZG1hID0gJmk5MTUtPmRybS5wZGV2LT5kZXY7CisJdm0tPnRvdGFsID0gQklUX1VMTChJ
TlRFTF9JTkZPKGk5MTUpLT5wcGd0dF9zaXplKTsKIAotCWk5MTVfYWRkcmVzc19zcGFjZV9pbml0
KCZwcGd0dC0+dm0sIFZNX0NMQVNTX1BQR1RUKTsKKwlpOTE1X2FkZHJlc3Nfc3BhY2VfaW5pdCh2
bSwgVk1fQ0xBU1NfUFBHVFQpOwogCi0JcHBndHQtPnZtLnZtYV9vcHMuYmluZF92bWEgICAgPSBw
cGd0dF9iaW5kX3ZtYTsKLQlwcGd0dC0+dm0udm1hX29wcy51bmJpbmRfdm1hICA9IHBwZ3R0X3Vu
YmluZF92bWE7Ci0JcHBndHQtPnZtLnZtYV9vcHMuc2V0X3BhZ2VzICAgPSBwcGd0dF9zZXRfcGFn
ZXM7Ci0JcHBndHQtPnZtLnZtYV9vcHMuY2xlYXJfcGFnZXMgPSBjbGVhcl9wYWdlczsKKwl2bS0+
dm1hX29wcy5iaW5kX3ZtYSAgICA9IHBwZ3R0X2JpbmRfdm1hOworCXZtLT52bWFfb3BzLnVuYmlu
ZF92bWEgID0gcHBndHRfdW5iaW5kX3ZtYTsKKwl2bS0+dm1hX29wcy5zZXRfcGFnZXMgICA9IHBw
Z3R0X3NldF9wYWdlczsKKwl2bS0+dm1hX29wcy5jbGVhcl9wYWdlcyA9IGNsZWFyX3BhZ2VzOwog
fQogCiAvKgpAQCAtMTYxMyw2ICsxNjE2LDcgQEAgc3RhdGljIHZvaWQgcHBndHRfaW5pdChzdHJ1
Y3QgaTkxNV9wcGd0dCAqcHBndHQsIHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAgKi8KIHN0YXRpYyBz
dHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuOF9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiB7CisJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm07CiAJc3RydWN0IGk5
MTVfcHBndHQgKnBwZ3R0OwogCWludCBlcnI7CiAKQEAgLTE2MjAsNiArMTYyNCw4IEBAIHN0YXRp
YyBzdHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuOF9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCiAJaWYgKCFwcGd0dCkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAK
Kwl2bSA9ICZwcGd0dC0+dm07CisKIAlwcGd0dF9pbml0KHBwZ3R0LCAmaTkxNS0+Z3QpOwogCiAJ
LyoKQEAgLTE2MjgsMzAgKzE2MzQsMzAgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICpnZW44
X3BwZ3R0X2NyZWF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkgKiBHZW4xMSBo
YXMgSFNERVMjOjE4MDcxMzYxODcgdW5yZXNvbHZlZC4gRGlzYWJsZSBybyBzdXBwb3J0CiAJICog
Zm9yIG5vdy4KIAkgKi8KLQlwcGd0dC0+dm0uaGFzX3JlYWRfb25seSA9IElOVEVMX0dFTihpOTE1
KSAhPSAxMTsKKwl2bS0+aGFzX3JlYWRfb25seSA9IElOVEVMX0dFTihpOTE1KSAhPSAxMTsKIAog
CS8qIFRoZXJlIGFyZSBvbmx5IGZldyBleGNlcHRpb25zIGZvciBnZW4gPj02LiBjaHYgYW5kIGJ4
dC4KIAkgKiBBbmQgd2UgYXJlIG5vdCBzdXJlIGFib3V0IHRoZSBsYXR0ZXIgc28gcGxheSBzYWZl
IGZvciBub3cuCiAJICovCiAJaWYgKElTX0NIRVJSWVZJRVcoaTkxNSkgfHwgSVNfQlJPWFRPTihp
OTE1KSkKLQkJcHBndHQtPnZtLnB0X2ttYXBfd2MgPSB0cnVlOworCQl2bS0+cHRfa21hcF93YyA9
IHRydWU7CiAKLQllcnIgPSBnZW44X2luaXRfc2NyYXRjaCgmcHBndHQtPnZtKTsKKwllcnIgPSBn
ZW44X2luaXRfc2NyYXRjaCh2bSk7CiAJaWYgKGVycikKIAkJZ290byBlcnJfZnJlZTsKIAotCWlm
IChpOTE1X3ZtX2lzXzRsdmwoJnBwZ3R0LT52bSkpIHsKLQkJZXJyID0gc2V0dXBfcHgoJnBwZ3R0
LT52bSwgJnBwZ3R0LT5wbWw0KTsKKwlpZiAoaTkxNV92bV9pc180bHZsKHZtKSkgeworCQllcnIg
PSBzZXR1cF9weCh2bSwgJnBwZ3R0LT5wbWw0KTsKIAkJaWYgKGVycikKIAkJCWdvdG8gZXJyX3Nj
cmF0Y2g7CiAKLQkJZ2VuOF9pbml0aWFsaXplX3BtbDQoJnBwZ3R0LT52bSwgJnBwZ3R0LT5wbWw0
KTsKKwkJZ2VuOF9pbml0aWFsaXplX3BtbDQodm0sICZwcGd0dC0+cG1sNCk7CiAKLQkJcHBndHQt
PnZtLmFsbG9jYXRlX3ZhX3JhbmdlID0gZ2VuOF9wcGd0dF9hbGxvY180bHZsOwotCQlwcGd0dC0+
dm0uaW5zZXJ0X2VudHJpZXMgPSBnZW44X3BwZ3R0X2luc2VydF80bHZsOwotCQlwcGd0dC0+dm0u
Y2xlYXJfcmFuZ2UgPSBnZW44X3BwZ3R0X2NsZWFyXzRsdmw7CisJCXZtLT5hbGxvY2F0ZV92YV9y
YW5nZSA9IGdlbjhfcHBndHRfYWxsb2NfNGx2bDsKKwkJdm0tPmluc2VydF9lbnRyaWVzID0gZ2Vu
OF9wcGd0dF9pbnNlcnRfNGx2bDsKKwkJdm0tPmNsZWFyX3JhbmdlID0gZ2VuOF9wcGd0dF9jbGVh
cl80bHZsOwogCX0gZWxzZSB7Ci0JCWVyciA9IF9fcGRwX2luaXQoJnBwZ3R0LT52bSwgJnBwZ3R0
LT5wZHApOworCQllcnIgPSBfX3BkcF9pbml0KHZtLCAmcHBndHQtPnBkcCk7CiAJCWlmIChlcnIp
CiAJCQlnb3RvIGVycl9zY3JhdGNoOwogCkBAIC0xNjYzLDIwICsxNjY5LDIwIEBAIHN0YXRpYyBz
dHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuOF9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiAJCQl9CiAJCX0KIAotCQlwcGd0dC0+dm0uYWxsb2NhdGVfdmFfcmFuZ2UgPSBn
ZW44X3BwZ3R0X2FsbG9jXzNsdmw7Ci0JCXBwZ3R0LT52bS5pbnNlcnRfZW50cmllcyA9IGdlbjhf
cHBndHRfaW5zZXJ0XzNsdmw7Ci0JCXBwZ3R0LT52bS5jbGVhcl9yYW5nZSA9IGdlbjhfcHBndHRf
Y2xlYXJfM2x2bDsKKwkJdm0tPmFsbG9jYXRlX3ZhX3JhbmdlID0gZ2VuOF9wcGd0dF9hbGxvY18z
bHZsOworCQl2bS0+aW5zZXJ0X2VudHJpZXMgPSBnZW44X3BwZ3R0X2luc2VydF8zbHZsOworCQl2
bS0+Y2xlYXJfcmFuZ2UgPSBnZW44X3BwZ3R0X2NsZWFyXzNsdmw7CiAJfQogCiAJaWYgKGludGVs
X3ZncHVfYWN0aXZlKGk5MTUpKQogCQlnZW44X3BwZ3R0X25vdGlmeV92Z3QocHBndHQsIHRydWUp
OwogCi0JcHBndHQtPnZtLmNsZWFudXAgPSBnZW44X3BwZ3R0X2NsZWFudXA7CisJdm0tPmNsZWFu
dXAgPSBnZW44X3BwZ3R0X2NsZWFudXA7CiAKIAlyZXR1cm4gcHBndHQ7CiAKIGVycl9zY3JhdGNo
OgotCWdlbjhfZnJlZV9zY3JhdGNoKCZwcGd0dC0+dm0pOworCWdlbjhfZnJlZV9zY3JhdGNoKHZt
KTsKIGVycl9mcmVlOgogCWtmcmVlKHBwZ3R0KTsKIAlyZXR1cm4gRVJSX1BUUihlcnIpOwpAQCAt
MjMyNSw3ICsyMzMxLDggQEAgc3RhdGljIGJvb2wgbmVlZHNfaWRsZV9tYXBzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogc3RhdGljIHZvaWQgZ2d0dF9zdXNwZW5kX21hcHBp
bmdzKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUgPSBnZ3R0LT52bS5pOTE1OworCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0g
JmdndHQtPnZtOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdm0tPmk5MTU7CiAK
IAkvKiBEb24ndCBib3RoZXIgbWVzc2luZyB3aXRoIGZhdWx0cyBwcmUgR0VONiBhcyB3ZSBoYXZl
IGxpdHRsZQogCSAqIGRvY3VtZW50YXRpb24gc3VwcG9ydGluZyB0aGF0IGl0J3MgYSBnb29kIGlk
ZWEuCkBAIC0yMzMzLDkgKzIzNDAsOSBAQCBzdGF0aWMgdm9pZCBnZ3R0X3N1c3BlbmRfbWFwcGlu
Z3Moc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAlpZiAoSU5URUxfR0VOKGk5MTUpIDwgNikKIAkJ
cmV0dXJuOwogCi0JaW50ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhnZ3R0LT52bS5ndCk7
CisJaW50ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyh2bS0+Z3QpOwogCi0JZ2d0dC0+dm0u
Y2xlYXJfcmFuZ2UoJmdndHQtPnZtLCAwLCBnZ3R0LT52bS50b3RhbCk7CisJdm0tPmNsZWFyX3Jh
bmdlKHZtLCAwLCB2bS0+dG90YWwpOwogCiAJZ2d0dC0+aW52YWxpZGF0ZShnZ3R0KTsKIH0KQEAg
LTI4MzcsMTYgKzI4NDQsMTcgQEAgc3RhdGljIHZvaWQgZmluaV9hbGlhc2luZ19wcGd0dChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogc3RhdGljIGludCBnZ3R0X3Jlc2VydmVfZ3Vj
X3RvcChzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogeworCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtID0gJmdndHQtPnZtOwogCXU2NCBzaXplOwogCWludCByZXQ7CiAKLQlpZiAoIVVTRVNf
R1VDKGdndHQtPnZtLmk5MTUpKQorCWlmICghVVNFU19HVUModm0tPmk5MTUpKQogCQlyZXR1cm4g
MDsKIAotCUdFTV9CVUdfT04oZ2d0dC0+dm0udG90YWwgPD0gR1VDX0dHVFRfVE9QKTsKLQlzaXpl
ID0gZ2d0dC0+dm0udG90YWwgLSBHVUNfR0dUVF9UT1A7CisJR0VNX0JVR19PTih2bS0+dG90YWwg
PD0gR1VDX0dHVFRfVE9QKTsKKwlzaXplID0gdm0tPnRvdGFsIC0gR1VDX0dHVFRfVE9QOwogCi0J
cmV0ID0gaTkxNV9nZW1fZ3R0X3Jlc2VydmUoJmdndHQtPnZtLCAmZ2d0dC0+dWNfZncsIHNpemUs
CisJcmV0ID0gaTkxNV9nZW1fZ3R0X3Jlc2VydmUodm0sICZnZ3R0LT51Y19mdywgc2l6ZSwKIAkJ
CQkgICBHVUNfR0dUVF9UT1AsIEk5MTVfQ09MT1JfVU5FVklDVEFCTEUsCiAJCQkJICAgUElOX05P
RVZJQ1QpOwogCWlmIChyZXQpCkBAIC0yODczLDYgKzI4ODEsNyBAQCBpbnQgaTkxNV9nZW1faW5p
dF9nZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkgKiBvZiB0aGUgYXBl
cnR1cmUuCiAJICovCiAJc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9ICZkZXZfcHJpdi0+Z2d0dDsK
KwlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9ICZnZ3R0LT52bTsKIAl1bnNpZ25lZCBs
b25nIGhvbGVfc3RhcnQsIGhvbGVfZW5kOwogCXN0cnVjdCBkcm1fbW1fbm9kZSAqZW50cnk7CiAJ
aW50IHJldDsKQEAgLTI4OTEsNyArMjkwMCw3IEBAIGludCBpOTE1X2dlbV9pbml0X2dndHQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlyZXR1cm4gcmV0OwogCiAJLyogUmVz
ZXJ2ZSBhIG1hcHBhYmxlIHNsb3QgZm9yIG91ciBsb2NrbGVzcyBlcnJvciBjYXB0dXJlICovCi0J
cmV0ID0gZHJtX21tX2luc2VydF9ub2RlX2luX3JhbmdlKCZnZ3R0LT52bS5tbSwgJmdndHQtPmVy
cm9yX2NhcHR1cmUsCisJcmV0ID0gZHJtX21tX2luc2VydF9ub2RlX2luX3JhbmdlKCZ2bS0+bW0s
ICZnZ3R0LT5lcnJvcl9jYXB0dXJlLAogCQkJCQkgIFBBR0VfU0laRSwgMCwgSTkxNV9DT0xPUl9V
TkVWSUNUQUJMRSwKIAkJCQkJICAwLCBnZ3R0LT5tYXBwYWJsZV9lbmQsCiAJCQkJCSAgRFJNX01N
X0lOU0VSVF9MT1cpOwpAQCAtMjkwOCwxNSArMjkxNywxNCBAQCBpbnQgaTkxNV9nZW1faW5pdF9n
Z3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJZ290byBlcnJfcmVzZXJ2
ZTsKIAogCS8qIENsZWFyIGFueSBub24tcHJlYWxsb2NhdGVkIGJsb2NrcyAqLwotCWRybV9tbV9m
b3JfZWFjaF9ob2xlKGVudHJ5LCAmZ2d0dC0+dm0ubW0sIGhvbGVfc3RhcnQsIGhvbGVfZW5kKSB7
CisJZHJtX21tX2Zvcl9lYWNoX2hvbGUoZW50cnksICZ2bS0+bW0sIGhvbGVfc3RhcnQsIGhvbGVf
ZW5kKSB7CiAJCURSTV9ERUJVR19LTVMoImNsZWFyaW5nIHVudXNlZCBHVFQgc3BhY2U6IFslbHgs
ICVseF1cbiIsCiAJCQkgICAgICBob2xlX3N0YXJ0LCBob2xlX2VuZCk7Ci0JCWdndHQtPnZtLmNs
ZWFyX3JhbmdlKCZnZ3R0LT52bSwgaG9sZV9zdGFydCwKLQkJCQkgICAgIGhvbGVfZW5kIC0gaG9s
ZV9zdGFydCk7CisJCXZtLT5jbGVhcl9yYW5nZSh2bSwgaG9sZV9zdGFydCwgaG9sZV9lbmQgLSBo
b2xlX3N0YXJ0KTsKIAl9CiAKIAkvKiBBbmQgZmluYWxseSBjbGVhciB0aGUgcmVzZXJ2ZWQgZ3Vh
cmQgcGFnZSAqLwotCWdndHQtPnZtLmNsZWFyX3JhbmdlKCZnZ3R0LT52bSwgZ2d0dC0+dm0udG90
YWwgLSBQQUdFX1NJWkUsIFBBR0VfU0laRSk7CisJdm0tPmNsZWFyX3JhbmdlKHZtLCB2bS0+dG90
YWwgLSBQQUdFX1NJWkUsIFBBR0VfU0laRSk7CiAKIAlpZiAoSU5URUxfUFBHVFQoZGV2X3ByaXYp
ID09IElOVEVMX1BQR1RUX0FMSUFTSU5HKSB7CiAJCXJldCA9IGluaXRfYWxpYXNpbmdfcHBndHQo
ZGV2X3ByaXYpOwpAQCAtMjk0MCwxNSArMjk0OCwxNiBAQCBpbnQgaTkxNV9nZW1faW5pdF9nZ3R0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHZvaWQgaTkxNV9nZ3R0X2NsZWFu
dXBfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0cnVjdCBpOTE1
X2dndHQgKmdndHQgPSAmZGV2X3ByaXYtPmdndHQ7CisJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0gPSAmZ2d0dC0+dm07CiAJc3RydWN0IGk5MTVfdm1hICp2bWEsICp2bjsKIAlzdHJ1Y3Qg
cGFnZXZlYyAqcHZlYzsKIAotCWdndHQtPnZtLmNsb3NlZCA9IHRydWU7CisJdm0tPmNsb3NlZCA9
IHRydWU7CiAKIAltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJZmlu
aV9hbGlhc2luZ19wcGd0dChkZXZfcHJpdik7CiAKLQlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUo
dm1hLCB2biwgJmdndHQtPnZtLmJvdW5kX2xpc3QsIHZtX2xpbmspCisJbGlzdF9mb3JfZWFjaF9l
bnRyeV9zYWZlKHZtYSwgdm4sICZ2bS0+Ym91bmRfbGlzdCwgdm1fbGluaykKIAkJV0FSTl9PTihp
OTE1X3ZtYV91bmJpbmQodm1hKSk7CiAKIAlpZiAoZHJtX21tX25vZGVfYWxsb2NhdGVkKCZnZ3R0
LT5lcnJvcl9jYXB0dXJlKSkKQEAgLTI5NTYsMTIgKzI5NjUsMTIgQEAgdm9pZCBpOTE1X2dndHRf
Y2xlYW51cF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlnZ3R0X3Jl
bGVhc2VfZ3VjX3RvcChnZ3R0KTsKIAotCWlmIChkcm1fbW1faW5pdGlhbGl6ZWQoJmdndHQtPnZt
Lm1tKSkgeworCWlmIChkcm1fbW1faW5pdGlhbGl6ZWQoJnZtLT5tbSkpIHsKIAkJaW50ZWxfdmd0
X2RlYmFsbG9vbihnZ3R0KTsKLQkJaTkxNV9hZGRyZXNzX3NwYWNlX2ZpbmkoJmdndHQtPnZtKTsK
KwkJaTkxNV9hZGRyZXNzX3NwYWNlX2Zpbmkodm0pOwogCX0KIAotCWdndHQtPnZtLmNsZWFudXAo
JmdndHQtPnZtKTsKKwl2bS0+Y2xlYW51cCh2bSk7CiAKIAlwdmVjID0gJmRldl9wcml2LT5tbS53
Y19zdGFzaC5wdmVjOwogCWlmIChwdmVjLT5ucikgewpAQCAtMzAxMyw3ICszMDIyLDggQEAgc3Rh
dGljIHVuc2lnbmVkIGludCBjaHZfZ2V0X3RvdGFsX2d0dF9zaXplKHUxNiBnbWNoX2N0cmwpCiAK
IHN0YXRpYyBpbnQgZ2d0dF9wcm9iZV9jb21tb24oc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwgdTY0
IHNpemUpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZ2d0dC0+dm0u
aTkxNTsKKwlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9ICZnZ3R0LT52bTsKKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB2bS0+aTkxNTsKIAlzdHJ1Y3QgcGNpX2Rl
diAqcGRldiA9IGRldl9wcml2LT5kcm0ucGRldjsKIAlwaHlzX2FkZHJfdCBwaHlzX2FkZHI7CiAJ
aW50IHJldDsKQEAgLTMwMzcsNyArMzA0Nyw3IEBAIHN0YXRpYyBpbnQgZ2d0dF9wcm9iZV9jb21t
b24oc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwgdTY0IHNpemUpCiAJCXJldHVybiAtRU5PTUVNOwog
CX0KIAotCXJldCA9IHNldHVwX3NjcmF0Y2hfcGFnZSgmZ2d0dC0+dm0sIEdGUF9ETUEzMik7CisJ
cmV0ID0gc2V0dXBfc2NyYXRjaF9wYWdlKHZtLCBHRlBfRE1BMzIpOwogCWlmIChyZXQpIHsKIAkJ
RFJNX0VSUk9SKCJTY3JhdGNoIHNldHVwIGZhaWxlZFxuIik7CiAJCS8qIGlvdW5tYXAgd2lsbCBh
bHNvIGdldCBjYWxsZWQgYXQgcmVtb3ZlLCBidXQgbWVoICovCkBAIC0zMDQ1LDkgKzMwNTUsOCBA
QCBzdGF0aWMgaW50IGdndHRfcHJvYmVfY29tbW9uKHN0cnVjdCBpOTE1X2dndHQgKmdndHQsIHU2
NCBzaXplKQogCQlyZXR1cm4gcmV0OwogCX0KIAotCWdndHQtPnZtLnNjcmF0Y2hfcHRlID0KLQkJ
Z2d0dC0+dm0ucHRlX2VuY29kZShnZ3R0LT52bS5zY3JhdGNoX3BhZ2UuZGFkZHIsCi0JCQkJICAg
IEk5MTVfQ0FDSEVfTk9ORSwgMCk7CisJdm0tPnNjcmF0Y2hfcHRlID0KKwkJdm0tPnB0ZV9lbmNv
ZGUodm0tPnNjcmF0Y2hfcGFnZS5kYWRkciwgSTkxNV9DQUNIRV9OT05FLCAwKTsKIAogCXJldHVy
biAwOwogfQpAQCAtMzM0Nyw3ICszMzU2LDggQEAgc3RhdGljIHZvaWQgc2V0dXBfcHJpdmF0ZV9w
YXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiBzdGF0aWMgaW50IGdlbjhf
Z21jaF9wcm9iZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogewotCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IGdndHQtPnZtLmk5MTU7CisJc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm0gPSAmZ2d0dC0+dm07CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdm0tPmk5MTU7CiAJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBkZXZfcHJpdi0+ZHJtLnBkZXY7
CiAJdW5zaWduZWQgaW50IHNpemU7CiAJdTE2IHNuYl9nbWNoX2N0bDsKQEAgLTMzNzEsMjIgKzMz
ODEsMjIgQEAgc3RhdGljIGludCBnZW44X2dtY2hfcHJvYmUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0
dCkKIAllbHNlCiAJCXNpemUgPSBnZW44X2dldF90b3RhbF9ndHRfc2l6ZShzbmJfZ21jaF9jdGwp
OwogCi0JZ2d0dC0+dm0udG90YWwgPSAoc2l6ZSAvIHNpemVvZihnZW44X3B0ZV90KSkgKiBJOTE1
X0dUVF9QQUdFX1NJWkU7Ci0JZ2d0dC0+dm0uY2xlYW51cCA9IGdlbjZfZ21jaF9yZW1vdmU7Ci0J
Z2d0dC0+dm0uaW5zZXJ0X3BhZ2UgPSBnZW44X2dndHRfaW5zZXJ0X3BhZ2U7Ci0JZ2d0dC0+dm0u
Y2xlYXJfcmFuZ2UgPSBub3BfY2xlYXJfcmFuZ2U7CisJdm0tPnRvdGFsID0gKHNpemUgLyBzaXpl
b2YoZ2VuOF9wdGVfdCkpICogSTkxNV9HVFRfUEFHRV9TSVpFOworCXZtLT5jbGVhbnVwID0gZ2Vu
Nl9nbWNoX3JlbW92ZTsKKwl2bS0+aW5zZXJ0X3BhZ2UgPSBnZW44X2dndHRfaW5zZXJ0X3BhZ2U7
CisJdm0tPmNsZWFyX3JhbmdlID0gbm9wX2NsZWFyX3JhbmdlOwogCWlmIChpbnRlbF9zY2Fub3V0
X25lZWRzX3Z0ZF93YShkZXZfcHJpdikpCi0JCWdndHQtPnZtLmNsZWFyX3JhbmdlID0gZ2VuOF9n
Z3R0X2NsZWFyX3JhbmdlOworCQl2bS0+Y2xlYXJfcmFuZ2UgPSBnZW44X2dndHRfY2xlYXJfcmFu
Z2U7CiAKLQlnZ3R0LT52bS5pbnNlcnRfZW50cmllcyA9IGdlbjhfZ2d0dF9pbnNlcnRfZW50cmll
czsKKwl2bS0+aW5zZXJ0X2VudHJpZXMgPSBnZW44X2dndHRfaW5zZXJ0X2VudHJpZXM7CiAKIAkv
KiBTZXJpYWxpemUgR1RUIHVwZGF0ZXMgd2l0aCBhcGVydHVyZSBhY2Nlc3Mgb24gQlhUIGlmIFZU
LWQgaXMgb24uICovCiAJaWYgKGludGVsX2dndHRfdXBkYXRlX25lZWRzX3Z0ZF93YShkZXZfcHJp
dikgfHwKIAkgICAgSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikgLyogZmFpbHMgd2l0aCBjb25jdXJy
ZW50IHVzZS91cGRhdGUgKi8pIHsKLQkJZ2d0dC0+dm0uaW5zZXJ0X2VudHJpZXMgPSBieHRfdnRk
X2dndHRfaW5zZXJ0X2VudHJpZXNfX0JLTDsKLQkJZ2d0dC0+dm0uaW5zZXJ0X3BhZ2UgICAgPSBi
eHRfdnRkX2dndHRfaW5zZXJ0X3BhZ2VfX0JLTDsKLQkJaWYgKGdndHQtPnZtLmNsZWFyX3Jhbmdl
ICE9IG5vcF9jbGVhcl9yYW5nZSkKLQkJCWdndHQtPnZtLmNsZWFyX3JhbmdlID0gYnh0X3Z0ZF9n
Z3R0X2NsZWFyX3JhbmdlX19CS0w7CisJCXZtLT5pbnNlcnRfZW50cmllcyA9IGJ4dF92dGRfZ2d0
dF9pbnNlcnRfZW50cmllc19fQktMOworCQl2bS0+aW5zZXJ0X3BhZ2UgICAgPSBieHRfdnRkX2dn
dHRfaW5zZXJ0X3BhZ2VfX0JLTDsKKwkJaWYgKHZtLT5jbGVhcl9yYW5nZSAhPSBub3BfY2xlYXJf
cmFuZ2UpCisJCQl2bS0+Y2xlYXJfcmFuZ2UgPSBieHRfdnRkX2dndHRfY2xlYXJfcmFuZ2VfX0JL
TDsKIAogCQkvKiBQcmV2ZW50IHJlY3Vyc2l2ZWx5IGNhbGxpbmcgc3RvcF9tYWNoaW5lKCkgYW5k
IGRlYWRsb2Nrcy4gKi8KIAkJZGV2X2luZm8oZGV2X3ByaXYtPmRybS5kZXYsCkBAIC0zMzk2LDEy
ICszNDA2LDEyIEBAIHN0YXRpYyBpbnQgZ2VuOF9nbWNoX3Byb2JlKHN0cnVjdCBpOTE1X2dndHQg
KmdndHQpCiAKIAlnZ3R0LT5pbnZhbGlkYXRlID0gZ2VuNl9nZ3R0X2ludmFsaWRhdGU7CiAKLQln
Z3R0LT52bS52bWFfb3BzLmJpbmRfdm1hICAgID0gZ2d0dF9iaW5kX3ZtYTsKLQlnZ3R0LT52bS52
bWFfb3BzLnVuYmluZF92bWEgID0gZ2d0dF91bmJpbmRfdm1hOwotCWdndHQtPnZtLnZtYV9vcHMu
c2V0X3BhZ2VzICAgPSBnZ3R0X3NldF9wYWdlczsKLQlnZ3R0LT52bS52bWFfb3BzLmNsZWFyX3Bh
Z2VzID0gY2xlYXJfcGFnZXM7CisJdm0tPnZtYV9vcHMuYmluZF92bWEgICAgPSBnZ3R0X2JpbmRf
dm1hOworCXZtLT52bWFfb3BzLnVuYmluZF92bWEgID0gZ2d0dF91bmJpbmRfdm1hOworCXZtLT52
bWFfb3BzLnNldF9wYWdlcyAgID0gZ2d0dF9zZXRfcGFnZXM7CisJdm0tPnZtYV9vcHMuY2xlYXJf
cGFnZXMgPSBjbGVhcl9wYWdlczsKIAotCWdndHQtPnZtLnB0ZV9lbmNvZGUgPSBnZW44X3B0ZV9l
bmNvZGU7CisJdm0tPnB0ZV9lbmNvZGUgPSBnZW44X3B0ZV9lbmNvZGU7CiAKIAlzZXR1cF9wcml2
YXRlX3BhdChkZXZfcHJpdik7CiAKQEAgLTM0MTAsNyArMzQyMCw4IEBAIHN0YXRpYyBpbnQgZ2Vu
OF9nbWNoX3Byb2JlKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiAKIHN0YXRpYyBpbnQgZ2VuNl9n
bWNoX3Byb2JlKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gZ2d0dC0+dm0uaTkxNTsKKwlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3Nw
YWNlICp2bSA9ICZnZ3R0LT52bTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB2bS0+aTkxNTsKIAlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGRldl9wcml2LT5kcm0ucGRldjsK
IAl1bnNpZ25lZCBpbnQgc2l6ZTsKIAl1MTYgc25iX2dtY2hfY3RsOwpAQCAtMzQzNywzMiArMzQ0
OCwzMiBAQCBzdGF0aWMgaW50IGdlbjZfZ21jaF9wcm9iZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0
KQogCXBjaV9yZWFkX2NvbmZpZ193b3JkKHBkZXYsIFNOQl9HTUNIX0NUUkwsICZzbmJfZ21jaF9j
dGwpOwogCiAJc2l6ZSA9IGdlbjZfZ2V0X3RvdGFsX2d0dF9zaXplKHNuYl9nbWNoX2N0bCk7Ci0J
Z2d0dC0+dm0udG90YWwgPSAoc2l6ZSAvIHNpemVvZihnZW42X3B0ZV90KSkgKiBJOTE1X0dUVF9Q
QUdFX1NJWkU7CisJdm0tPnRvdGFsID0gKHNpemUgLyBzaXplb2YoZ2VuNl9wdGVfdCkpICogSTkx
NV9HVFRfUEFHRV9TSVpFOwogCi0JZ2d0dC0+dm0uY2xlYXJfcmFuZ2UgPSBub3BfY2xlYXJfcmFu
Z2U7CisJdm0tPmNsZWFyX3JhbmdlID0gbm9wX2NsZWFyX3JhbmdlOwogCWlmICghSEFTX0ZVTExf
UFBHVFQoZGV2X3ByaXYpIHx8IGludGVsX3NjYW5vdXRfbmVlZHNfdnRkX3dhKGRldl9wcml2KSkK
LQkJZ2d0dC0+dm0uY2xlYXJfcmFuZ2UgPSBnZW42X2dndHRfY2xlYXJfcmFuZ2U7Ci0JZ2d0dC0+
dm0uaW5zZXJ0X3BhZ2UgPSBnZW42X2dndHRfaW5zZXJ0X3BhZ2U7Ci0JZ2d0dC0+dm0uaW5zZXJ0
X2VudHJpZXMgPSBnZW42X2dndHRfaW5zZXJ0X2VudHJpZXM7Ci0JZ2d0dC0+dm0uY2xlYW51cCA9
IGdlbjZfZ21jaF9yZW1vdmU7CisJCXZtLT5jbGVhcl9yYW5nZSA9IGdlbjZfZ2d0dF9jbGVhcl9y
YW5nZTsKKwl2bS0+aW5zZXJ0X3BhZ2UgPSBnZW42X2dndHRfaW5zZXJ0X3BhZ2U7CisJdm0tPmlu
c2VydF9lbnRyaWVzID0gZ2VuNl9nZ3R0X2luc2VydF9lbnRyaWVzOworCXZtLT5jbGVhbnVwID0g
Z2VuNl9nbWNoX3JlbW92ZTsKIAogCWdndHQtPmludmFsaWRhdGUgPSBnZW42X2dndHRfaW52YWxp
ZGF0ZTsKIAogCWlmIChIQVNfRURSQU0oZGV2X3ByaXYpKQotCQlnZ3R0LT52bS5wdGVfZW5jb2Rl
ID0gaXJpc19wdGVfZW5jb2RlOworCQl2bS0+cHRlX2VuY29kZSA9IGlyaXNfcHRlX2VuY29kZTsK
IAllbHNlIGlmIChJU19IQVNXRUxMKGRldl9wcml2KSkKLQkJZ2d0dC0+dm0ucHRlX2VuY29kZSA9
IGhzd19wdGVfZW5jb2RlOworCQl2bS0+cHRlX2VuY29kZSA9IGhzd19wdGVfZW5jb2RlOwogCWVs
c2UgaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYpKQotCQlnZ3R0LT52bS5wdGVfZW5jb2RlID0g
Ynl0X3B0ZV9lbmNvZGU7CisJCXZtLT5wdGVfZW5jb2RlID0gYnl0X3B0ZV9lbmNvZGU7CiAJZWxz
ZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA3KQotCQlnZ3R0LT52bS5wdGVfZW5jb2RlID0g
aXZiX3B0ZV9lbmNvZGU7CisJCXZtLT5wdGVfZW5jb2RlID0gaXZiX3B0ZV9lbmNvZGU7CiAJZWxz
ZQotCQlnZ3R0LT52bS5wdGVfZW5jb2RlID0gc25iX3B0ZV9lbmNvZGU7CisJCXZtLT5wdGVfZW5j
b2RlID0gc25iX3B0ZV9lbmNvZGU7CiAKLQlnZ3R0LT52bS52bWFfb3BzLmJpbmRfdm1hICAgID0g
Z2d0dF9iaW5kX3ZtYTsKLQlnZ3R0LT52bS52bWFfb3BzLnVuYmluZF92bWEgID0gZ2d0dF91bmJp
bmRfdm1hOwotCWdndHQtPnZtLnZtYV9vcHMuc2V0X3BhZ2VzICAgPSBnZ3R0X3NldF9wYWdlczsK
LQlnZ3R0LT52bS52bWFfb3BzLmNsZWFyX3BhZ2VzID0gY2xlYXJfcGFnZXM7CisJdm0tPnZtYV9v
cHMuYmluZF92bWEgICAgPSBnZ3R0X2JpbmRfdm1hOworCXZtLT52bWFfb3BzLnVuYmluZF92bWEg
ID0gZ2d0dF91bmJpbmRfdm1hOworCXZtLT52bWFfb3BzLnNldF9wYWdlcyAgID0gZ2d0dF9zZXRf
cGFnZXM7CisJdm0tPnZtYV9vcHMuY2xlYXJfcGFnZXMgPSBjbGVhcl9wYWdlczsKIAogCXJldHVy
biBnZ3R0X3Byb2JlX2NvbW1vbihnZ3R0LCBzaXplKTsKIH0KQEAgLTM0NzQsNyArMzQ4NSw4IEBA
IHN0YXRpYyB2b2lkIGk5MTVfZ21jaF9yZW1vdmUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAq
dm0pCiAKIHN0YXRpYyBpbnQgaTkxNV9nbWNoX3Byb2JlKHN0cnVjdCBpOTE1X2dndHQgKmdndHQp
CiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZ2d0dC0+dm0uaTkxNTsK
KwlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9ICZnZ3R0LT52bTsKKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB2bS0+aTkxNTsKIAlwaHlzX2FkZHJfdCBnbWFkcl9i
YXNlOwogCWludCByZXQ7CiAKQEAgLTM0ODQsMjQgKzM0OTYsMjQgQEAgc3RhdGljIGludCBpOTE1
X2dtY2hfcHJvYmUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAkJcmV0dXJuIC1FSU87CiAJfQog
Ci0JaW50ZWxfZ3R0X2dldCgmZ2d0dC0+dm0udG90YWwsICZnbWFkcl9iYXNlLCAmZ2d0dC0+bWFw
cGFibGVfZW5kKTsKKwlpbnRlbF9ndHRfZ2V0KCZ2bS0+dG90YWwsICZnbWFkcl9iYXNlLCAmZ2d0
dC0+bWFwcGFibGVfZW5kKTsKIAogCWdndHQtPmdtYWRyID0KIAkJKHN0cnVjdCByZXNvdXJjZSkg
REVGSU5FX1JFU19NRU0oZ21hZHJfYmFzZSwKIAkJCQkJCSBnZ3R0LT5tYXBwYWJsZV9lbmQpOwog
CiAJZ2d0dC0+ZG9faWRsZV9tYXBzID0gbmVlZHNfaWRsZV9tYXBzKGRldl9wcml2KTsKLQlnZ3R0
LT52bS5pbnNlcnRfcGFnZSA9IGk5MTVfZ2d0dF9pbnNlcnRfcGFnZTsKLQlnZ3R0LT52bS5pbnNl
cnRfZW50cmllcyA9IGk5MTVfZ2d0dF9pbnNlcnRfZW50cmllczsKLQlnZ3R0LT52bS5jbGVhcl9y
YW5nZSA9IGk5MTVfZ2d0dF9jbGVhcl9yYW5nZTsKLQlnZ3R0LT52bS5jbGVhbnVwID0gaTkxNV9n
bWNoX3JlbW92ZTsKKwl2bS0+aW5zZXJ0X3BhZ2UgPSBpOTE1X2dndHRfaW5zZXJ0X3BhZ2U7CisJ
dm0tPmluc2VydF9lbnRyaWVzID0gaTkxNV9nZ3R0X2luc2VydF9lbnRyaWVzOworCXZtLT5jbGVh
cl9yYW5nZSA9IGk5MTVfZ2d0dF9jbGVhcl9yYW5nZTsKKwl2bS0+Y2xlYW51cCA9IGk5MTVfZ21j
aF9yZW1vdmU7CiAKIAlnZ3R0LT5pbnZhbGlkYXRlID0gZ21jaF9nZ3R0X2ludmFsaWRhdGU7CiAK
LQlnZ3R0LT52bS52bWFfb3BzLmJpbmRfdm1hICAgID0gZ2d0dF9iaW5kX3ZtYTsKLQlnZ3R0LT52
bS52bWFfb3BzLnVuYmluZF92bWEgID0gZ2d0dF91bmJpbmRfdm1hOwotCWdndHQtPnZtLnZtYV9v
cHMuc2V0X3BhZ2VzICAgPSBnZ3R0X3NldF9wYWdlczsKLQlnZ3R0LT52bS52bWFfb3BzLmNsZWFy
X3BhZ2VzID0gY2xlYXJfcGFnZXM7CisJdm0tPnZtYV9vcHMuYmluZF92bWEgICAgPSBnZ3R0X2Jp
bmRfdm1hOworCXZtLT52bWFfb3BzLnVuYmluZF92bWEgID0gZ2d0dF91bmJpbmRfdm1hOworCXZt
LT52bWFfb3BzLnNldF9wYWdlcyAgID0gZ2d0dF9zZXRfcGFnZXM7CisJdm0tPnZtYV9vcHMuY2xl
YXJfcGFnZXMgPSBjbGVhcl9wYWdlczsKIAogCWlmICh1bmxpa2VseShnZ3R0LT5kb19pZGxlX21h
cHMpKQogCQlEUk1fSU5GTygiYXBwbHlpbmcgSXJvbmxha2UgcXVpcmtzIGZvciBpbnRlbF9pb21t
dVxuIik7CkBAIC0zNTEyLDExICszNTI0LDEyIEBAIHN0YXRpYyBpbnQgaTkxNV9nbWNoX3Byb2Jl
KHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiBzdGF0aWMgaW50IGdndHRfcHJvYmVfaHcoc3RydWN0
IGk5MTVfZ2d0dCAqZ2d0dCwgc3RydWN0IGludGVsX2d0ICpndCkKIHsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1OworCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2Ug
KnZtID0gJmdndHQtPnZtOwogCWludCByZXQ7CiAKLQlnZ3R0LT52bS5ndCA9IGd0OwotCWdndHQt
PnZtLmk5MTUgPSBpOTE1OwotCWdndHQtPnZtLmRtYSA9ICZpOTE1LT5kcm0ucGRldi0+ZGV2Owor
CXZtLT5ndCA9IGd0OworCXZtLT5pOTE1ID0gaTkxNTsKKwl2bS0+ZG1hID0gJmk5MTUtPmRybS5w
ZGV2LT5kZXY7CiAKIAlpZiAoSU5URUxfR0VOKGk5MTUpIDw9IDUpCiAJCXJldCA9IGk5MTVfZ21j
aF9wcm9iZShnZ3R0KTsKQEAgLTM1MjcsMjQgKzM1NDAsMjMgQEAgc3RhdGljIGludCBnZ3R0X3By
b2JlX2h3KHN0cnVjdCBpOTE1X2dndHQgKmdndHQsIHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJaWYg
KHJldCkKIAkJcmV0dXJuIHJldDsKIAotCWlmICgoZ2d0dC0+dm0udG90YWwgLSAxKSA+PiAzMikg
eworCWlmICgodm0tPnRvdGFsIC0gMSkgPj4gMzIpIHsKIAkJRFJNX0VSUk9SKCJXZSBuZXZlciBl
eHBlY3RlZCBhIEdsb2JhbCBHVFQgd2l0aCBtb3JlIHRoYW4gMzJiaXRzIgogCQkJICAiIG9mIGFk
ZHJlc3Mgc3BhY2UhIEZvdW5kICVsbGRNIVxuIiwKLQkJCSAgZ2d0dC0+dm0udG90YWwgPj4gMjAp
OwotCQlnZ3R0LT52bS50b3RhbCA9IDFVTEwgPDwgMzI7Ci0JCWdndHQtPm1hcHBhYmxlX2VuZCA9
Ci0JCQltaW5fdCh1NjQsIGdndHQtPm1hcHBhYmxlX2VuZCwgZ2d0dC0+dm0udG90YWwpOworCQkJ
ICB2bS0+dG90YWwgPj4gMjApOworCQl2bS0+dG90YWwgPSAxVUxMIDw8IDMyOworCQlnZ3R0LT5t
YXBwYWJsZV9lbmQgPSBtaW5fdCh1NjQsIGdndHQtPm1hcHBhYmxlX2VuZCwgdm0tPnRvdGFsKTsK
IAl9CiAKLQlpZiAoZ2d0dC0+bWFwcGFibGVfZW5kID4gZ2d0dC0+dm0udG90YWwpIHsKKwlpZiAo
Z2d0dC0+bWFwcGFibGVfZW5kID4gdm0tPnRvdGFsKSB7CiAJCURSTV9FUlJPUigibWFwcGFibGUg
YXBlcnR1cmUgZXh0ZW5kcyBwYXN0IGVuZCBvZiBHR1RULCIKIAkJCSAgIiBhcGVydHVyZT0lcGEs
IHRvdGFsPSVsbHhcbiIsCi0JCQkgICZnZ3R0LT5tYXBwYWJsZV9lbmQsIGdndHQtPnZtLnRvdGFs
KTsKLQkJZ2d0dC0+bWFwcGFibGVfZW5kID0gZ2d0dC0+dm0udG90YWw7CisJCQkgICZnZ3R0LT5t
YXBwYWJsZV9lbmQsIHZtLT50b3RhbCk7CisJCWdndHQtPm1hcHBhYmxlX2VuZCA9IHZtLT50b3Rh
bDsKIAl9CiAKIAkvKiBHTUFEUiBpcyB0aGUgUENJIG1taW8gYXBlcnR1cmUgaW50byB0aGUgZ2xv
YmFsIEdUVC4gKi8KLQlEUk1fREVCVUdfRFJJVkVSKCJHR1RUIHNpemUgPSAlbGx1TVxuIiwgZ2d0
dC0+dm0udG90YWwgPj4gMjApOworCURSTV9ERUJVR19EUklWRVIoIkdHVFQgc2l6ZSA9ICVsbHVN
XG4iLCB2bS0+dG90YWwgPj4gMjApOwogCURSTV9ERUJVR19EUklWRVIoIkdNQURSIHNpemUgPSAl
bGx1TVxuIiwgKHU2NClnZ3R0LT5tYXBwYWJsZV9lbmQgPj4gMjApOwogCURSTV9ERUJVR19EUklW
RVIoIkRTTSBzaXplID0gJWxsdU1cbiIsCiAJCQkgKHU2NClyZXNvdXJjZV9zaXplKCZpbnRlbF9n
cmFwaGljc19zdG9sZW5fcmVzKSA+PiAyMCk7CkBAIC0zNTc3LDIwICszNTg5LDIxIEBAIHN0YXRp
YyB2b2lkIGdndHRfY2xlYW51cF9odyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCiBzdGF0aWMg
aW50IGdndHRfaW5pdF9odyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogewotCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gZ2d0dC0+dm0uaTkxNTsKKwlzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSA9ICZnZ3R0LT52bTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IHZtLT5pOTE1OwogCWludCByZXQgPSAwOwogCiAJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVj
dF9tdXRleCk7CiAKLQlpOTE1X2FkZHJlc3Nfc3BhY2VfaW5pdCgmZ2d0dC0+dm0sIFZNX0NMQVNT
X0dHVFQpOworCWk5MTVfYWRkcmVzc19zcGFjZV9pbml0KHZtLCBWTV9DTEFTU19HR1RUKTsKIAot
CWdndHQtPnZtLmlzX2dndHQgPSB0cnVlOworCXZtLT5pc19nZ3R0ID0gdHJ1ZTsKIAogCS8qIE9u
bHkgVkxWIHN1cHBvcnRzIHJlYWQtb25seSBHR1RUIG1hcHBpbmdzICovCi0JZ2d0dC0+dm0uaGFz
X3JlYWRfb25seSA9IElTX1ZBTExFWVZJRVcoaTkxNSk7CisJdm0tPmhhc19yZWFkX29ubHkgPSBJ
U19WQUxMRVlWSUVXKGk5MTUpOwogCiAJaWYgKCFIQVNfTExDKGk5MTUpICYmICFIQVNfUFBHVFQo
aTkxNSkpCi0JCWdndHQtPnZtLm1tLmNvbG9yX2FkanVzdCA9IGk5MTVfZ3R0X2NvbG9yX2FkanVz
dDsKKwkJdm0tPm1tLmNvbG9yX2FkanVzdCA9IGk5MTVfZ3R0X2NvbG9yX2FkanVzdDsKIAogCWlm
ICghaW9fbWFwcGluZ19pbml0X3djKCZnZ3R0LT5pb21hcCwKIAkJCQlnZ3R0LT5nbWFkci5zdGFy
dCwKQEAgLTM2ODEsMjQgKzM2OTQsMjUgQEAgdm9pZCBpOTE1X2dndHRfZGlzYWJsZV9ndWMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIHN0YXRpYyB2b2lkIGdndHRfcmVzdG9yZV9t
YXBwaW5ncyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogeworCXN0cnVjdCBpOTE1X2FkZHJlc3Nf
c3BhY2UgKnZtID0gJmdndHQtPnZtOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hLCAqdm47CiAKLQlp
bnRlbF9ndF9jaGVja19hbmRfY2xlYXJfZmF1bHRzKGdndHQtPnZtLmd0KTsKKwlpbnRlbF9ndF9j
aGVja19hbmRfY2xlYXJfZmF1bHRzKHZtLT5ndCk7CiAKLQltdXRleF9sb2NrKCZnZ3R0LT52bS5t
dXRleCk7CisJbXV0ZXhfbG9jaygmdm0tPm11dGV4KTsKIAogCS8qIEZpcnN0IGZpbGwgb3VyIHBv
cnRpb24gb2YgdGhlIEdUVCB3aXRoIHNjcmF0Y2ggcGFnZXMgKi8KLQlnZ3R0LT52bS5jbGVhcl9y
YW5nZSgmZ2d0dC0+dm0sIDAsIGdndHQtPnZtLnRvdGFsKTsKLQlnZ3R0LT52bS5jbG9zZWQgPSB0
cnVlOyAvKiBza2lwIHJld3JpdGluZyBQVEUgb24gVk1BIHVuYmluZCAqLworCXZtLT5jbGVhcl9y
YW5nZSh2bSwgMCwgdm0tPnRvdGFsKTsKKwl2bS0+Y2xvc2VkID0gdHJ1ZTsgLyogc2tpcCByZXdy
aXRpbmcgUFRFIG9uIFZNQSB1bmJpbmQgKi8KIAogCS8qIGNsZmx1c2ggb2JqZWN0cyBib3VuZCBp
bnRvIHRoZSBHR1RUIGFuZCByZWJpbmQgdGhlbS4gKi8KLQlsaXN0X2Zvcl9lYWNoX2VudHJ5X3Nh
ZmUodm1hLCB2biwgJmdndHQtPnZtLmJvdW5kX2xpc3QsIHZtX2xpbmspIHsKKwlsaXN0X2Zvcl9l
YWNoX2VudHJ5X3NhZmUodm1hLCB2biwgJnZtLT5ib3VuZF9saXN0LCB2bV9saW5rKSB7CiAJCXN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSB2bWEtPm9iajsKIAogCQlpZiAoISh2bWEt
PmZsYWdzICYgSTkxNV9WTUFfR0xPQkFMX0JJTkQpKQogCQkJY29udGludWU7CiAKLQkJbXV0ZXhf
dW5sb2NrKCZnZ3R0LT52bS5tdXRleCk7CisJCW11dGV4X3VubG9jaygmdm0tPm11dGV4KTsKIAog
CQlpZiAoIWk5MTVfdm1hX3VuYmluZCh2bWEpKQogCQkJZ290byBsb2NrOwpAQCAtMzcxMywxMyAr
MzcyNywxMyBAQCBzdGF0aWMgdm9pZCBnZ3R0X3Jlc3RvcmVfbWFwcGluZ3Moc3RydWN0IGk5MTVf
Z2d0dCAqZ2d0dCkKIAkJfQogCiBsb2NrOgotCQltdXRleF9sb2NrKCZnZ3R0LT52bS5tdXRleCk7
CisJCW11dGV4X2xvY2soJnZtLT5tdXRleCk7CiAJfQogCi0JZ2d0dC0+dm0uY2xvc2VkID0gZmFs
c2U7CisJdm0tPmNsb3NlZCA9IGZhbHNlOwogCWdndHQtPmludmFsaWRhdGUoZ2d0dCk7CiAKLQlt
dXRleF91bmxvY2soJmdndHQtPnZtLm11dGV4KTsKKwltdXRleF91bmxvY2soJnZtLT5tdXRleCk7
CiB9CiAKIHZvaWQgaTkxNV9nZW1fcmVzdG9yZV9ndHRfbWFwcGluZ3Moc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQpAQCAtMzczMCw3ICszNzQ0LDcgQEAgdm9pZCBpOTE1X2dlbV9y
ZXN0b3JlX2d0dF9tYXBwaW5ncyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJ
CXN0cnVjdCBpbnRlbF9wcGF0ICpwcGF0ID0gJmRldl9wcml2LT5wcGF0OwogCiAJCWJpdG1hcF9z
ZXQocHBhdC0+ZGlydHksIDAsIHBwYXQtPm1heF9lbnRyaWVzKTsKLQkJZGV2X3ByaXYtPnBwYXQu
dXBkYXRlX2h3KGRldl9wcml2KTsKKwkJcHBhdC0+dXBkYXRlX2h3KGRldl9wcml2KTsKIAkJcmV0
dXJuOwogCX0KIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
