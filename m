Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4074A18F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 15:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B8AE6E18F;
	Tue, 18 Jun 2019 13:04:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9A4A6E183
 for <Intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 13:04:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 06:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="160053421"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2019 06:04:32 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 14:03:43 +0100
Message-Id: <20190618130345.6135-32-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
References: <20190618130345.6135-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/33] drm/i915: Make timelines gt centric
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk91ciB0aW1l
bGluZXMgYXJlIHN0b3JlZCBpbnNpZGUgaW50ZWxfZ3Qgc28gd2UgY2FuIGNvbnZlcnQgdGhlIGlu
dGVyZmFjZQp0byB0YWtlIGV4YWN0bHkgdGhhdCBhbmQgbm90IGk5MTUuCgpBdCB0aGUgc2FtZSB0
aW1lIHJlLW9yZGVyIHRoZSBwYXJhbXMgdG8gb3VyIG1vcmUgdHlwaWNhbCBsYXlvdXQgYW5kCnJl
cGxhY2UgdGhlIGJhY2twb2ludGVyIHRvIHRoZSBuZXcgY29udGFpbmluZyBzdHJ1Y3R1cmUuCgpT
aWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyAgIHwgIDIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jICAgICB8ICA0ICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgICAgfCAgNyArLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyAgICB8ICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jICAgICAgICAgfCAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV90aW1lbGluZS5jICAgICAgICAgIHwgNDMgKysrKysrKysrLS0tLS0t
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90aW1lbGluZS5oICAgICAgICAgIHwgIDcg
KystCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RpbWVsaW5lX3R5cGVzLmggICAgfCAgMiAr
LQogLi4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV90aW1lbGluZS5jICAgIHwgIDggKyst
LQogLi4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja190aW1lbGluZS5jICAgIHwgIDIgKy0K
IDEwIGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDQxIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDBmMmMyMmEz
YmNiNi4uMWExZjZjYTE5YTg3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmMKQEAgLTUzMCw3ICs1MzAsNyBAQCBpOTE1X2dlbV9jcmVhdGVfY29udGV4dChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHVuc2lnbmVkIGludCBmbGFncykKIAlp
ZiAoZmxhZ3MgJiBJOTE1X0NPTlRFWFRfQ1JFQVRFX0ZMQUdTX1NJTkdMRV9USU1FTElORSkgewog
CQlzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxpbmU7CiAKLQkJdGltZWxpbmUgPSBpOTE1X3Rp
bWVsaW5lX2NyZWF0ZShkZXZfcHJpdiwgTlVMTCk7CisJCXRpbWVsaW5lID0gaTkxNV90aW1lbGlu
ZV9jcmVhdGUoJmRldl9wcml2LT5ndCwgTlVMTCk7CiAJCWlmIChJU19FUlIodGltZWxpbmUpKSB7
CiAJCQljb250ZXh0X2Nsb3NlKGN0eCk7CiAJCQlyZXR1cm4gRVJSX0NBU1QodGltZWxpbmUpOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCBmMzQ3OTdlMTFh
NzAuLmMyYWZjOGQzNGFhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2NzLmMKQEAgLTczNiw4ICs3MzYsOCBAQCBzdGF0aWMgaW50IG1lYXN1cmVfYnJlYWRjcnVtYl9k
dyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJaWYgKCFmcmFtZSkKIAkJcmV0dXJu
IC1FTk9NRU07CiAKLQlpZiAoaTkxNV90aW1lbGluZV9pbml0KGVuZ2luZS0+aTkxNSwKLQkJCSAg
ICAgICAmZnJhbWUtPnRpbWVsaW5lLAorCWlmIChpOTE1X3RpbWVsaW5lX2luaXQoJmZyYW1lLT50
aW1lbGluZSwKKwkJCSAgICAgICBlbmdpbmUtPmd0LAogCQkJICAgICAgIGVuZ2luZS0+c3RhdHVz
X3BhZ2Uudm1hKSkKIAkJZ290byBvdXRfZnJhbWU7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMKaW5kZXggMTk5MjczZGU0OThjLi4yMGYwN2RiZjViZTkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCkBAIC0yOTM3LDEyICsyOTM3LDEzIEBAIHBvcHVsYXRlX2xyX2NvbnRl
eHQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCXJldHVybiByZXQ7CiB9CiAKLXN0YXRpYyBz
dHJ1Y3QgaTkxNV90aW1lbGluZSAqZ2V0X3RpbWVsaW5lKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHgpCitzdGF0aWMgc3RydWN0IGk5MTVfdGltZWxpbmUgKgorZ2V0X3RpbWVsaW5lKHN0cnVj
dCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsIHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CiAJaWYgKGN0
eC0+dGltZWxpbmUpCiAJCXJldHVybiBpOTE1X3RpbWVsaW5lX2dldChjdHgtPnRpbWVsaW5lKTsK
IAllbHNlCi0JCXJldHVybiBpOTE1X3RpbWVsaW5lX2NyZWF0ZShjdHgtPmk5MTUsIE5VTEwpOwor
CQlyZXR1cm4gaTkxNV90aW1lbGluZV9jcmVhdGUoZ3QsIE5VTEwpOwogfQogCiBzdGF0aWMgaW50
IGV4ZWNsaXN0c19jb250ZXh0X2RlZmVycmVkX2FsbG9jKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZSwKQEAgLTI5NzYsNyArMjk3Nyw3IEBAIHN0YXRpYyBpbnQgZXhlY2xpc3RzX2NvbnRleHRfZGVm
ZXJyZWRfYWxsb2Moc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCQlnb3RvIGVycm9yX2RlcmVm
X29iajsKIAl9CiAKLQl0aW1lbGluZSA9IGdldF90aW1lbGluZShjZS0+Z2VtX2NvbnRleHQpOwor
CXRpbWVsaW5lID0gZ2V0X3RpbWVsaW5lKGNlLT5nZW1fY29udGV4dCwgZW5naW5lLT5ndCk7CiAJ
aWYgKElTX0VSUih0aW1lbGluZSkpIHsKIAkJcmV0ID0gUFRSX0VSUih0aW1lbGluZSk7CiAJCWdv
dG8gZXJyb3JfZGVyZWZfb2JqOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1
ZmZlci5jCmluZGV4IGRhNjcyMTVmOGU1Mi4uZjI0ZGJjNWEyMGUxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCkBAIC0yMjYzLDcgKzIyNjMsNyBAQCBpbnQg
aW50ZWxfcmluZ19zdWJtaXNzaW9uX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQogCXN0cnVjdCBpbnRlbF9yaW5nICpyaW5nOwogCWludCBlcnI7CiAKLQl0aW1lbGluZSA9IGk5
MTVfdGltZWxpbmVfY3JlYXRlKGVuZ2luZS0+aTkxNSwgZW5naW5lLT5zdGF0dXNfcGFnZS52bWEp
OworCXRpbWVsaW5lID0gaTkxNV90aW1lbGluZV9jcmVhdGUoZW5naW5lLT5ndCwgZW5naW5lLT5z
dGF0dXNfcGFnZS52bWEpOwogCWlmIChJU19FUlIodGltZWxpbmUpKSB7CiAJCWVyciA9IFBUUl9F
UlIodGltZWxpbmUpOwogCQlnb3RvIGVycjsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L21vY2tfZW5naW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2lu
ZS5jCmluZGV4IDA4NjgwMWI1MTQ0MS4uYjgwZWMwZjUzMTExIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L21vY2tfZW5naW5lLmMKQEAgLTU2LDcgKzU2LDcgQEAgc3RhdGljIHN0cnVjdCBpbnRlbF9y
aW5nICptb2NrX3Jpbmcoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWlmICghcmlu
ZykKIAkJcmV0dXJuIE5VTEw7CiAKLQlpZiAoaTkxNV90aW1lbGluZV9pbml0KGVuZ2luZS0+aTkx
NSwgJnJpbmctPnRpbWVsaW5lLCBOVUxMKSkgeworCWlmIChpOTE1X3RpbWVsaW5lX2luaXQoJnJp
bmctPnRpbWVsaW5lLCBlbmdpbmUtPmd0LCBOVUxMKSkgewogCQlrZnJlZShyaW5nKTsKIAkJcmV0
dXJuIE5VTEw7CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90aW1l
bGluZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90aW1lbGluZS5jCmluZGV4IGRjODg1
YTEzYjE2ZC4uM2UyYzMxNjlkYzY5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3RpbWVsaW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90aW1lbGluZS5j
CkBAIC00LDYgKzQsOCBAQAogICogQ29weXJpZ2h0IMKpIDIwMTYtMjAxOCBJbnRlbCBDb3Jwb3Jh
dGlvbgogICovCiAKKyNpbmNsdWRlICJndC9pbnRlbF9ndF90eXBlcy5oIgorCiAjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKIAogI2luY2x1ZGUgImk5MTVfYWN0aXZlLmgiCkBAIC0xNCw3ICsxNiw4IEBA
CiAjZGVmaW5lIHB0cl90ZXN0X2JpdChwdHIsIGJpdCkgKCh1bnNpZ25lZCBsb25nKShwdHIpICYg
QklUKGJpdCkpCiAKIHN0cnVjdCBpOTE1X3RpbWVsaW5lX2h3c3AgewotCXN0cnVjdCBpOTE1X2d0
X3RpbWVsaW5lcyAqZ3Q7CisJc3RydWN0IGludGVsX2d0ICpndDsKKwlzdHJ1Y3QgaTkxNV9ndF90
aW1lbGluZXMgKmd0X3RpbWVsaW5lczsKIAlzdHJ1Y3QgbGlzdF9oZWFkIGZyZWVfbGluazsKIAlz
dHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAl1NjQgZnJlZV9iaXRtYXA7CkBAIC0yOCwxNCArMzEsOSBA
QCBzdHJ1Y3QgaTkxNV90aW1lbGluZV9jYWNoZWxpbmUgewogI2RlZmluZSBDQUNIRUxJTkVfRlJF
RSBDQUNIRUxJTkVfQklUUwogfTsKIAotc3RhdGljIGlubGluZSBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqCi1od3NwX3RvX2k5MTUoc3RydWN0IGk5MTVfdGltZWxpbmVfaHdzcCAqaHdzcCkKLXsK
LQlyZXR1cm4gY29udGFpbmVyX29mKGh3c3AtPmd0LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSwg
Z3QudGltZWxpbmVzKTsKLX0KLQotc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqX19od3NwX2FsbG9j
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAq
X19od3NwX2FsbG9jKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiB7CisJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
OwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCkBAIC00NSw3ICs0Myw3IEBAIHN0YXRpYyBzdHJ1
Y3QgaTkxNV92bWEgKl9faHdzcF9hbGxvYyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IAogCWk5MTVfZ2VtX29iamVjdF9zZXRfY2FjaGVfY29oZXJlbmN5KG9iaiwgSTkxNV9DQUNIRV9M
TEMpOwogCi0Jdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCAmaTkxNS0+Z2d0dC52bSwgTlVM
TCk7CisJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCAmZ3QtPmdndHQtPnZtLCBOVUxMKTsK
IAlpZiAoSVNfRVJSKHZtYSkpCiAJCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIApAQCAtNTUs
OCArNTMsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfdm1hICpfX2h3c3BfYWxsb2Moc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiBzdGF0aWMgc3RydWN0IGk5MTVfdm1hICoKIGh3c3BfYWxs
b2Moc3RydWN0IGk5MTVfdGltZWxpbmUgKnRpbWVsaW5lLCB1bnNpZ25lZCBpbnQgKmNhY2hlbGlu
ZSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRpbWVsaW5lLT5pOTE1Owot
CXN0cnVjdCBpOTE1X2d0X3RpbWVsaW5lcyAqZ3QgPSAmaTkxNS0+Z3QudGltZWxpbmVzOworCXN0
cnVjdCBpOTE1X2d0X3RpbWVsaW5lcyAqZ3QgPSAmdGltZWxpbmUtPmd0LT50aW1lbGluZXM7CiAJ
c3RydWN0IGk5MTVfdGltZWxpbmVfaHdzcCAqaHdzcDsKIAogCUJVSUxEX0JVR19PTihCSVRTX1BF
Ul9UWVBFKHU2NCkgKiBDQUNIRUxJTkVfQllURVMgPiBQQUdFX1NJWkUpOwpAQCAtNzUsMTYgKzcy
LDE3IEBAIGh3c3BfYWxsb2Moc3RydWN0IGk5MTVfdGltZWxpbmUgKnRpbWVsaW5lLCB1bnNpZ25l
ZCBpbnQgKmNhY2hlbGluZSkKIAkJaWYgKCFod3NwKQogCQkJcmV0dXJuIEVSUl9QVFIoLUVOT01F
TSk7CiAKLQkJdm1hID0gX19od3NwX2FsbG9jKGk5MTUpOworCQl2bWEgPSBfX2h3c3BfYWxsb2Mo
dGltZWxpbmUtPmd0KTsKIAkJaWYgKElTX0VSUih2bWEpKSB7CiAJCQlrZnJlZShod3NwKTsKIAkJ
CXJldHVybiB2bWE7CiAJCX0KIAogCQl2bWEtPnByaXZhdGUgPSBod3NwOworCQlod3NwLT5ndCA9
IHRpbWVsaW5lLT5ndDsKIAkJaHdzcC0+dm1hID0gdm1hOwogCQlod3NwLT5mcmVlX2JpdG1hcCA9
IH4wdWxsOwotCQlod3NwLT5ndCA9IGd0OworCQlod3NwLT5ndF90aW1lbGluZXMgPSBndDsKIAog
CQlzcGluX2xvY2tfaXJxKCZndC0+aHdzcF9sb2NrKTsKIAkJbGlzdF9hZGQoJmh3c3AtPmZyZWVf
bGluaywgJmd0LT5od3NwX2ZyZWVfbGlzdCk7CkBAIC0xMDQsNyArMTAyLDcgQEAgaHdzcF9hbGxv
YyhzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxpbmUsIHVuc2lnbmVkIGludCAqY2FjaGVsaW5l
KQogCiBzdGF0aWMgdm9pZCBfX2lkbGVfaHdzcF9mcmVlKHN0cnVjdCBpOTE1X3RpbWVsaW5lX2h3
c3AgKmh3c3AsIGludCBjYWNoZWxpbmUpCiB7Ci0Jc3RydWN0IGk5MTVfZ3RfdGltZWxpbmVzICpn
dCA9IGh3c3AtPmd0OworCXN0cnVjdCBpOTE1X2d0X3RpbWVsaW5lcyAqZ3QgPSBod3NwLT5ndF90
aW1lbGluZXM7CiAJdW5zaWduZWQgbG9uZyBmbGFnczsKIAogCXNwaW5fbG9ja19pcnFzYXZlKCZn
dC0+aHdzcF9sb2NrLCBmbGFncyk7CkBAIC0xNzAsNyArMTY4LDcgQEAgY2FjaGVsaW5lX2FsbG9j
KHN0cnVjdCBpOTE1X3RpbWVsaW5lX2h3c3AgKmh3c3AsIHVuc2lnbmVkIGludCBjYWNoZWxpbmUp
CiAJY2wtPmh3c3AgPSBod3NwOwogCWNsLT52YWRkciA9IHBhZ2VfcGFja19iaXRzKHZhZGRyLCBj
YWNoZWxpbmUpOwogCi0JaTkxNV9hY3RpdmVfaW5pdChod3NwX3RvX2k5MTUoaHdzcCksICZjbC0+
YWN0aXZlLCBfX2NhY2hlbGluZV9yZXRpcmUpOworCWk5MTVfYWN0aXZlX2luaXQoaHdzcC0+Z3Qt
Pmk5MTUsICZjbC0+YWN0aXZlLCBfX2NhY2hlbGluZV9yZXRpcmUpOwogCiAJcmV0dXJuIGNsOwog
fQpAQCAtMTk2LDggKzE5NCw4IEBAIHN0YXRpYyB2b2lkIGNhY2hlbGluZV9mcmVlKHN0cnVjdCBp
OTE1X3RpbWVsaW5lX2NhY2hlbGluZSAqY2wpCiAJCV9faWRsZV9jYWNoZWxpbmVfZnJlZShjbCk7
CiB9CiAKLWludCBpOTE1X3RpbWVsaW5lX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsCi0JCSAgICAgICBzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxpbmUsCitpbnQgaTkxNV90
aW1lbGluZV9pbml0KHN0cnVjdCBpOTE1X3RpbWVsaW5lICp0aW1lbGluZSwKKwkJICAgICAgIHN0
cnVjdCBpbnRlbF9ndCAqZ3QsCiAJCSAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKmh3c3ApCiB7CiAJ
dm9pZCAqdmFkZHI7CkBAIC0yMTIsNyArMjEwLDcgQEAgaW50IGk5MTVfdGltZWxpbmVfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkgKi8KIAlCVUlMRF9CVUdfT04oS1NZTkNN
QVAgPCBJOTE1X05VTV9FTkdJTkVTKTsKIAotCXRpbWVsaW5lLT5pOTE1ID0gaTkxNTsKKwl0aW1l
bGluZS0+Z3QgPSBndDsKIAl0aW1lbGluZS0+cGluX2NvdW50ID0gMDsKIAl0aW1lbGluZS0+aGFz
X2luaXRpYWxfYnJlYWRjcnVtYiA9ICFod3NwOwogCXRpbWVsaW5lLT5od3NwX2NhY2hlbGluZSA9
IE5VTEw7CkBAIC0yODIsNyArMjgwLDcgQEAgdm9pZCBpOTE1X3RpbWVsaW5lc19pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCiBzdGF0aWMgdm9pZCB0aW1lbGluZV9hZGRfdG9f
YWN0aXZlKHN0cnVjdCBpOTE1X3RpbWVsaW5lICp0bCkKIHsKLQlzdHJ1Y3QgaTkxNV9ndF90aW1l
bGluZXMgKmd0ID0gJnRsLT5pOTE1LT5ndC50aW1lbGluZXM7CisJc3RydWN0IGk5MTVfZ3RfdGlt
ZWxpbmVzICpndCA9ICZ0bC0+Z3QtPnRpbWVsaW5lczsKIAogCW11dGV4X2xvY2soJmd0LT5tdXRl
eCk7CiAJbGlzdF9hZGQoJnRsLT5saW5rLCAmZ3QtPmFjdGl2ZV9saXN0KTsKQEAgLTI5MSw3ICsy
ODksNyBAQCBzdGF0aWMgdm9pZCB0aW1lbGluZV9hZGRfdG9fYWN0aXZlKHN0cnVjdCBpOTE1X3Rp
bWVsaW5lICp0bCkKIAogc3RhdGljIHZvaWQgdGltZWxpbmVfcmVtb3ZlX2Zyb21fYWN0aXZlKHN0
cnVjdCBpOTE1X3RpbWVsaW5lICp0bCkKIHsKLQlzdHJ1Y3QgaTkxNV9ndF90aW1lbGluZXMgKmd0
ID0gJnRsLT5pOTE1LT5ndC50aW1lbGluZXM7CisJc3RydWN0IGk5MTVfZ3RfdGltZWxpbmVzICpn
dCA9ICZ0bC0+Z3QtPnRpbWVsaW5lczsKIAogCW11dGV4X2xvY2soJmd0LT5tdXRleCk7CiAJbGlz
dF9kZWwoJnRsLT5saW5rKTsKQEAgLTM0Nyw4ICszNDUsNyBAQCB2b2lkIGk5MTVfdGltZWxpbmVf
ZmluaShzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxpbmUpCiB9CiAKIHN0cnVjdCBpOTE1X3Rp
bWVsaW5lICoKLWk5MTVfdGltZWxpbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAotCQkgICAgIHN0cnVjdCBpOTE1X3ZtYSAqZ2xvYmFsX2h3c3ApCitpOTE1X3RpbWVsaW5l
X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBzdHJ1Y3QgaTkxNV92bWEgKmdsb2JhbF9od3Nw
KQogewogCXN0cnVjdCBpOTE1X3RpbWVsaW5lICp0aW1lbGluZTsKIAlpbnQgZXJyOwpAQCAtMzU3
LDcgKzM1NCw3IEBAIGk5MTVfdGltZWxpbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAogCWlmICghdGltZWxpbmUpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCi0J
ZXJyID0gaTkxNV90aW1lbGluZV9pbml0KGk5MTUsIHRpbWVsaW5lLCBnbG9iYWxfaHdzcCk7CisJ
ZXJyID0gaTkxNV90aW1lbGluZV9pbml0KHRpbWVsaW5lLCBndCwgZ2xvYmFsX2h3c3ApOwogCWlm
IChlcnIpIHsKIAkJa2ZyZWUodGltZWxpbmUpOwogCQlyZXR1cm4gRVJSX1BUUihlcnIpOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90aW1lbGluZS5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV90aW1lbGluZS5oCmluZGV4IDM2ZTVlNWE2NTE1NS4uYTQ1NGQ0OWYy
MjlmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RpbWVsaW5lLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90aW1lbGluZS5oCkBAIC0zMSwxNCArMzEsMTMg
QEAKICNpbmNsdWRlICJpOTE1X3N5bmNtYXAuaCIKICNpbmNsdWRlICJpOTE1X3RpbWVsaW5lX3R5
cGVzLmgiCiAKLWludCBpOTE1X3RpbWVsaW5lX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsCi0JCSAgICAgICBzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGwsCitpbnQgaTkxNV90aW1l
bGluZV9pbml0KHN0cnVjdCBpOTE1X3RpbWVsaW5lICp0bCwKKwkJICAgICAgIHN0cnVjdCBpbnRl
bF9ndCAqZ3QsCiAJCSAgICAgICBzdHJ1Y3QgaTkxNV92bWEgKmh3c3ApOwogdm9pZCBpOTE1X3Rp
bWVsaW5lX2Zpbmkoc3RydWN0IGk5MTVfdGltZWxpbmUgKnRsKTsKIAogc3RydWN0IGk5MTVfdGlt
ZWxpbmUgKgotaTkxNV90aW1lbGluZV9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsCi0JCSAgICAgc3RydWN0IGk5MTVfdm1hICpnbG9iYWxfaHdzcCk7CitpOTE1X3RpbWVsaW5l
X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBzdHJ1Y3QgaTkxNV92bWEgKmdsb2JhbF9od3Nw
KTsKIAogc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV90aW1lbGluZSAqCiBpOTE1X3RpbWVsaW5l
X2dldChzdHJ1Y3QgaTkxNV90aW1lbGluZSAqdGltZWxpbmUpCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3RpbWVsaW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3RpbWVsaW5lX3R5cGVzLmgKaW5kZXggZmNlNWNiNGYxMDkwLi45MzE1ODVlMTJkNDEg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdGltZWxpbmVfdHlwZXMuaAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RpbWVsaW5lX3R5cGVzLmgKQEAgLTU5LDcg
KzU5LDcgQEAgc3RydWN0IGk5MTVfdGltZWxpbmUgewogCXN0cnVjdCBpOTE1X3N5bmNtYXAgKnN5
bmM7CiAKIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpbms7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTU7CisJc3RydWN0IGludGVsX2d0ICpndDsKIAogCXN0cnVjdCBrcmVmIGtyZWY7CiB9Owpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdGltZWxpbmUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3RpbWVsaW5lLmMKaW5kZXgg
NzI0YmYzNjUwYjNlLi45ZWI0ZTlhYjg1NTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pOTE1X3RpbWVsaW5lLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfdGltZWxpbmUuYwpAQCAtNjYsNyArNjYsNyBAQCBzdGF0aWMgaW50IF9f
bW9ja19od3NwX3RpbWVsaW5lKHN0cnVjdCBtb2NrX2h3c3BfZnJlZWxpc3QgKnN0YXRlLAogCQl1
bnNpZ25lZCBsb25nIGNhY2hlbGluZTsKIAkJaW50IGVycjsKIAotCQl0bCA9IGk5MTVfdGltZWxp
bmVfY3JlYXRlKHN0YXRlLT5pOTE1LCBOVUxMKTsKKwkJdGwgPSBpOTE1X3RpbWVsaW5lX2NyZWF0
ZSgmc3RhdGUtPmk5MTUtPmd0LCBOVUxMKTsKIAkJaWYgKElTX0VSUih0bCkpCiAJCQlyZXR1cm4g
UFRSX0VSUih0bCk7CiAKQEAgLTQ0OCw3ICs0NDgsNyBAQCB0bF93cml0ZShzdHJ1Y3QgaTkxNV90
aW1lbGluZSAqdGwsIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgdTMyIHZhbHVlKQog
CXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCWludCBlcnI7CiAKLQlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZ0bC0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7IC8qIGxhenkgcnEgcmVmcyAqLworCWxv
Y2tkZXBfYXNzZXJ0X2hlbGQoJnRsLT5ndC0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7IC8qIGxh
enkgcnEgcmVmcyAqLwogCiAJZXJyID0gaTkxNV90aW1lbGluZV9waW4odGwpOwogCWlmIChlcnIp
IHsKQEAgLTQ3OCw3ICs0NzgsNyBAQCBjaGVja2VkX2k5MTVfdGltZWxpbmVfY3JlYXRlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCXN0cnVjdCBpOTE1X3RpbWVsaW5lICp0bDsK
IAotCXRsID0gaTkxNV90aW1lbGluZV9jcmVhdGUoaTkxNSwgTlVMTCk7CisJdGwgPSBpOTE1X3Rp
bWVsaW5lX2NyZWF0ZSgmaTkxNS0+Z3QsIE5VTEwpOwogCWlmIChJU19FUlIodGwpKQogCQlyZXR1
cm4gdGw7CiAKQEAgLTY2MCw3ICs2NjAsNyBAQCBzdGF0aWMgaW50IGxpdmVfaHdzcF93cmFwKHZv
aWQgKmFyZykKIAltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAl3YWtlcmVm
ID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwogCi0JdGwgPSBpOTE1
X3RpbWVsaW5lX2NyZWF0ZShpOTE1LCBOVUxMKTsKKwl0bCA9IGk5MTVfdGltZWxpbmVfY3JlYXRl
KCZpOTE1LT5ndCwgTlVMTCk7CiAJaWYgKElTX0VSUih0bCkpIHsKIAkJZXJyID0gUFRSX0VSUih0
bCk7CiAJCWdvdG8gb3V0X3JwbTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9tb2NrX3RpbWVsaW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
bW9ja190aW1lbGluZS5jCmluZGV4IDY1YjUyYmUyM2Q0Mi4uYzgwYWMwZmJkZDNiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja190aW1lbGluZS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX3RpbWVsaW5lLmMKQEAgLTEwLDcg
KzEwLDcgQEAKIAogdm9pZCBtb2NrX3RpbWVsaW5lX2luaXQoc3RydWN0IGk5MTVfdGltZWxpbmUg
KnRpbWVsaW5lLCB1NjQgY29udGV4dCkKIHsKLQl0aW1lbGluZS0+aTkxNSA9IE5VTEw7CisJdGlt
ZWxpbmUtPmd0ID0gTlVMTDsKIAl0aW1lbGluZS0+ZmVuY2VfY29udGV4dCA9IGNvbnRleHQ7CiAK
IAltdXRleF9pbml0KCZ0aW1lbGluZS0+bXV0ZXgpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
