Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2836C4C31E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 23:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7756E48D;
	Wed, 19 Jun 2019 21:35:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0486E49B
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 21:35:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 14:35:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="162159199"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jun 2019 14:35:03 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 22:34:34 +0100
Message-Id: <20190619213437.1190-30-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
References: <20190619213437.1190-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 30/33] drm/i915: Save trip via top-level i915 in a
 few more places
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkZvciBndCBy
ZWxhdGVkIG9wZXJhdGlvbnMgaXQgbWFrZXMgbW9yZSBsb2dpY2FsIHNlbnNlIHRvIHN0YXkgaW4g
dGhlIHJlYWxtCm9mIGd0IGluc3RlYWQgb2YgZGVyZWZlcmVuY2luZyB2aWEgZHJpdmVyIGk5MTUu
CgpUaGlzIHBhdGNoIGhhbmRsZXMgYSBmZXcgb2YgdGhlIGVhc3kgb25lcyB3aXRoIHdvcmsgcmVx
dWlyaW5nIG1vcmUKcmVmYWN0b3Jpbmcgc3RpbGwgb3V0c3RhbmRpbmcuCgpTaWduZWQtb2ZmLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICAgICAgfCAzICstLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAzICstLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgICAgICAgICAgICAgfCAy
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgICAgICAgICAg
ICB8IDQgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jICAg
ICAgICAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jICAgICAgICAgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hh
bmdjaGVjay5jICAgICAgICAgIHwgOCArKysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
c2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyAgICAgICAgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyAgICAgICAgICAgICAgICAgICB8IDQgKystLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fcmVuZGVyX3N0YXRlLmMgICAgICAgICAgfCAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgICAgICAgICAgICAgICB8IDIgKy0KIDEx
IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMKaW5kZXggZGNm
NjBhOGMyMjllLi4yMTU0Y2RlZTRhYjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jCkBAIC0xMDM5LDggKzEwMzksNyBAQCBzdGF0aWMgaW50
IF9faWd0X3dyaXRlX2h1Z2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAkJCSAgICB1
NjQgc2l6ZSwgdTY0IG9mZnNldCwKIAkJCSAgICB1MzIgZHdvcmQsIHUzMiB2YWwpCiB7Ci0Jc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOwotCXN0
cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0gY3R4LT52bSA/OiAmaTkxNS0+Z2d0dC52bTsK
KwlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9IGN0eC0+dm0gPzogJmVuZ2luZS0+Z3Qt
PmdndHQtPnZtOwogCXVuc2lnbmVkIGludCBmbGFncyA9IFBJTl9VU0VSIHwgUElOX09GRlNFVF9G
SVhFRDsKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAlpbnQgZXJyOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCBl
YWEyYjE2NTc0YzcuLjI2MTZhOGYxYzZlMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTIzNyw4ICsyMzcsNyBA
QCBzdGF0aWMgaW50IGdwdV9maWxsKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJ
CSAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCSAgICB1bnNpZ25lZCBpbnQg
ZHcpCiB7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KG9iai0+YmFz
ZS5kZXYpOwotCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0gY3R4LT52bSA/OiAmaTkx
NS0+Z2d0dC52bTsKKwlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSA9IGN0eC0+dm0gPzog
JmVuZ2luZS0+Z3QtPmdndHQtPnZtOwogCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCXN0cnVj
dCBpOTE1X3ZtYSAqdm1hOwogCXN0cnVjdCBpOTE1X3ZtYSAqYmF0Y2g7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDk1OWVkMzAzYjVmYy4uNzcwNDlkYTY1
ZjA4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3Mu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpAQCAtNTgw
LDcgKzU4MCw3IEBAIHN0YXRpYyBpbnQgaW5pdF9zdGF0dXNfcGFnZShzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCiAKIAlpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShv
YmosIEk5MTVfQ0FDSEVfTExDKTsKIAotCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgJmVu
Z2luZS0+aTkxNS0+Z2d0dC52bSwgTlVMTCk7CisJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2Jq
LCAmZW5naW5lLT5ndC0+Z2d0dC0+dm0sIE5VTEwpOwogCWlmIChJU19FUlIodm1hKSkgewogCQly
ZXQgPSBQVFJfRVJSKHZtYSk7CiAJCWdvdG8gZXJyOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwppbmRleCA4MmI3YWNlNjJkOTcuLmJjODllOTM5MTU5ZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKQEAgLTE4NzQsNyArMTg3NCw3IEBAIHN0YXRpYyBpbnQgbHJjX3NldHVw
X3dhX2N0eChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJaWYgKElTX0VSUihvYmop
KQogCQlyZXR1cm4gUFRSX0VSUihvYmopOwogCi0Jdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2Jq
LCAmZW5naW5lLT5pOTE1LT5nZ3R0LnZtLCBOVUxMKTsKKwl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5j
ZShvYmosICZlbmdpbmUtPmd0LT5nZ3R0LT52bSwgTlVMTCk7CiAJaWYgKElTX0VSUih2bWEpKSB7
CiAJCWVyciA9IFBUUl9FUlIodm1hKTsKIAkJZ290byBlcnI7CkBAIC0yOTY1LDcgKzI5NjUsNyBA
QCBzdGF0aWMgaW50IGV4ZWNsaXN0c19jb250ZXh0X2RlZmVycmVkX2FsbG9jKHN0cnVjdCBpbnRl
bF9jb250ZXh0ICpjZSwKIAlpZiAoSVNfRVJSKGN0eF9vYmopKQogCQlyZXR1cm4gUFRSX0VSUihj
dHhfb2JqKTsKIAotCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKGN0eF9vYmosICZlbmdpbmUtPmk5
MTUtPmdndHQudm0sIE5VTEwpOworCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKGN0eF9vYmosICZl
bmdpbmUtPmd0LT5nZ3R0LT52bSwgTlVMTCk7CiAJaWYgKElTX0VSUih2bWEpKSB7CiAJCXJldCA9
IFBUUl9FUlIodm1hKTsKIAkJZ290byBlcnJvcl9kZXJlZl9vYmo7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKaW5kZXggZmJlZDdlNWE2NDFiLi4xMTgzYjJlMjg1
ZmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKQEAgLTE0
MTMsNyArMTQxMyw3IEBAIGFsbG9jX2NvbnRleHRfdm1hKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZSkKIAkJaTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvYmopOwogCX0KIAotCXZtYSA9
IGk5MTVfdm1hX2luc3RhbmNlKG9iaiwgJmk5MTUtPmdndHQudm0sIE5VTEwpOworCXZtYSA9IGk5
MTVfdm1hX2luc3RhbmNlKG9iaiwgJmVuZ2luZS0+Z3QtPmdndHQtPnZtLCBOVUxMKTsKIAlpZiAo
SVNfRVJSKHZtYSkpIHsKIAkJZXJyID0gUFRSX0VSUih2bWEpOwogCQlnb3RvIGVycl9vYmo7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCAxNDBjZjNm
MjQxNDEuLmM3MDQ0NWFkZmIwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jCkBAIC0xNDIwLDcgKzE0MjAsNyBAQCBzdGF0aWMgaW50IGVuZ2luZV93YV9s
aXN0X3ZlcmlmeShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJaWYgKCF3YWwtPmNvdW50KQog
CQlyZXR1cm4gMDsKIAotCXZtYSA9IGNyZWF0ZV9zY3JhdGNoKCZjZS0+ZW5naW5lLT5pOTE1LT5n
Z3R0LnZtLCB3YWwtPmNvdW50KTsKKwl2bWEgPSBjcmVhdGVfc2NyYXRjaCgmY2UtPmVuZ2luZS0+
Z3QtPmdndHQtPnZtLCB3YWwtPmNvdW50KTsKIAlpZiAoSVNfRVJSKHZtYSkpCiAJCXJldHVybiBQ
VFJfRVJSKHZtYSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2hhbmdjaGVjay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2No
ZWNrLmMKaW5kZXggMmQ3NzNmMTFlMjAzLi4wZGMzODk2ZTQ5ZjUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCkBAIC0xMzAsNyArMTMwLDcgQEAgc3Rh
dGljIHN0cnVjdCBpOTE1X3JlcXVlc3QgKgogaGFuZ19jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaGFu
ZyAqaCwgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0gaC0+aTkxNTsKLQlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bSA9IGgtPmN0eC0+dm0gPzogJmk5MTUtPmdndHQudm07CisJc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm0gPSBoLT5jdHgtPnZtID86ICZlbmdpbmUtPmd0LT5nZ3R0LT52bTsKIAlzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSA9IE5VTEw7CiAJc3RydWN0IGk5MTVfdm1hICpod3MsICp2bWE7CiAJ
dW5zaWduZWQgaW50IGZsYWdzOwpAQCAtMTQzLDEyICsxNDMsMTIgQEAgaGFuZ19jcmVhdGVfcmVx
dWVzdChzdHJ1Y3QgaGFuZyAqaCwgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCQl2b2lkICp2YWRkcjsKIAotCQlvYmog
PSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGgtPmk5MTUsIFBBR0VfU0laRSk7CisJ
CW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgUEFHRV9TSVpFKTsK
IAkJaWYgKElTX0VSUihvYmopKQogCQkJcmV0dXJuIEVSUl9DQVNUKG9iaik7CiAKIAkJdmFkZHIg
PSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChvYmosCi0JCQkJCQlpOTE1X2NvaGVyZW50X21hcF90
eXBlKGgtPmk5MTUpKTsKKwkJCQkJCWk5MTVfY29oZXJlbnRfbWFwX3R5cGUoaTkxNSkpOwogCQlp
ZiAoSVNfRVJSKHZhZGRyKSkgewogCQkJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwogCQkJcmV0
dXJuIEVSUl9DQVNUKHZhZGRyKTsKQEAgLTI1NSw3ICsyNTUsNyBAQCBoYW5nX2NyZWF0ZV9yZXF1
ZXN0KHN0cnVjdCBoYW5nICpoLCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJfQog
CiAJZmxhZ3MgPSAwOwotCWlmIChJTlRFTF9HRU4odm0tPmk5MTUpIDw9IDUpCisJaWYgKElOVEVM
X0dFTihpOTE1KSA8PSA1KQogCQlmbGFncyB8PSBJOTE1X0RJU1BBVENIX1NFQ1VSRTsKIAogCWVy
ciA9IHJxLT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQocnEsIHZtYS0+bm9kZS5zdGFydCwgUEFHRV9T
SVpFLCBmbGFncyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fy
b3VuZHMuYwppbmRleCA5MzFiYzMzZmM0NmQuLmYxMmNiMjBmZTc4NSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCkBAIC0xMDMsNyArMTAzLDcg
QEAgcmVhZF9ub25wcml2cyhzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LCBzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJaTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21hcChyZXN1bHQp
OwogCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAocmVzdWx0KTsKIAotCXZtYSA9IGk5MTVfdm1h
X2luc3RhbmNlKHJlc3VsdCwgJmVuZ2luZS0+aTkxNS0+Z2d0dC52bSwgTlVMTCk7CisJdm1hID0g
aTkxNV92bWFfaW5zdGFuY2UocmVzdWx0LCAmZW5naW5lLT5ndC0+Z2d0dC0+dm0sIE5VTEwpOwog
CWlmIChJU19FUlIodm1hKSkgewogCQllcnIgPSBQVFJfRVJSKHZtYSk7CiAJCWdvdG8gZXJyX29i
ajsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggYzQ2NzFiYzI1ZDlkLi4xYTg2
MGRiYWRjMzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xODU0LDcgKzE4
NTQsNyBAQCBzdGF0aWMgaW50IGdlbjZfYWxsb2NfdmFfcmFuZ2Uoc3RydWN0IGk5MTVfYWRkcmVz
c19zcGFjZSAqdm0sCiAKIAlpZiAoZmx1c2gpIHsKIAkJbWFya190bGJzX2RpcnR5KCZwcGd0dC0+
YmFzZSk7Ci0JCWdlbjZfZ2d0dF9pbnZhbGlkYXRlKCZ2bS0+aTkxNS0+Z2d0dCk7CisJCWdlbjZf
Z2d0dF9pbnZhbGlkYXRlKHZtLT5ndC0+Z2d0dCk7CiAJfQogCiAJZ290byBvdXQ7CkBAIC0yMDQ1
LDcgKzIwNDUsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfdm1hX29wcyBwZF92bWFfb3Bz
ID0gewogc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqcGRfdm1hX2NyZWF0ZShzdHJ1Y3QgZ2VuNl9w
cGd0dCAqcHBndHQsIGludCBzaXplKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
ID0gcHBndHQtPmJhc2Uudm0uaTkxNTsKLQlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmk5MTUt
PmdndHQ7CisJc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCA9IHBwZ3R0LT5iYXNlLnZtLmd0LT5nZ3R0
OwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCiAJR0VNX0JVR19PTighSVNfQUxJR05FRChzaXpl
LCBJOTE1X0dUVF9QQUdFX1NJWkUpKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX3JlbmRlcl9zdGF0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
cmVuZGVyX3N0YXRlLmMKaW5kZXggNGVlMDMyMDcyZDRmLi42YmRhMDhjMWU4ZDcgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3JlbmRlcl9zdGF0ZS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3JlbmRlcl9zdGF0ZS5jCkBAIC0xOTQsNyArMTk0
LDcgQEAgaW50IGk5MTVfZ2VtX3JlbmRlcl9zdGF0ZV9lbWl0KHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxKQogCWlmIChJU19FUlIoc28ub2JqKSkKIAkJcmV0dXJuIFBUUl9FUlIoc28ub2JqKTsKIAot
CXNvLnZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKHNvLm9iaiwgJmVuZ2luZS0+aTkxNS0+Z2d0dC52
bSwgTlVMTCk7CisJc28udm1hID0gaTkxNV92bWFfaW5zdGFuY2Uoc28ub2JqLCAmZW5naW5lLT5n
dC0+Z2d0dC0+dm0sIE5VTEwpOwogCWlmIChJU19FUlIoc28udm1hKSkgewogCQllcnIgPSBQVFJf
RVJSKHNvLnZtYSk7CiAJCWdvdG8gZXJyX29iajsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9l
cnJvci5jCmluZGV4IGI3ZTlmZGRlZjI3MC4uZjQ3ZTc3NGU5YTQzIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ3B1X2Vycm9yLmMKQEAgLTE0MTAsMTIgKzE0MTAsMTIgQEAgY2FwdHVyZV9vYmpl
Y3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogc3RhdGljIHZvaWQgZ2VtX3Jl
Y29yZF9yaW5ncyhzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yKQogewogCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gZXJyb3ItPmk5MTU7Ci0Jc3RydWN0IGk5MTVfZ2d0dCAqZ2d0
dCA9ICZpOTE1LT5nZ3R0OwogCWludCBpOwogCiAJZm9yIChpID0gMDsgaSA8IEk5MTVfTlVNX0VO
R0lORVM7IGkrKykgewogCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBpOTE1LT5l
bmdpbmVbaV07CiAJCXN0cnVjdCBkcm1faTkxNV9lcnJvcl9lbmdpbmUgKmVlID0gJmVycm9yLT5l
bmdpbmVbaV07CisJCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSBlbmdpbmUtPmd0LT5nZ3R0Owog
CQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0OwogCiAJCWVlLT5lbmdpbmVfaWQgPSAtMTsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
