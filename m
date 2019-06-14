Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C14946283
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 17:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48D1989AAD;
	Fri, 14 Jun 2019 15:18:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15B8089AA7
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 15:18:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 08:18:21 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by orsmga004.jf.intel.com with ESMTP; 14 Jun 2019 08:18:19 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 16:17:27 +0100
Message-Id: <20190614151731.17608-28-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 27/31] drm/i915: Compartmentalize ring buffer
 creation
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkNvbnRpbnVp
bmcgb24gdGhlIHRoZW1lIG9mIGNvbXBhcnRtZW50YWxpemluZyB0aGUgY29kZSBiZXR0ZXIgdG8g
bWFrZQpmdXR1cmUgc3BsaXQgYmV0d2VlbiBndCBhbmQgZGlzcGxheSBpbiBnbG9iYWwgaTkxNSBj
bGVhcmVyLgoKdjI6CiAqIFBhc3MgaW4gZ2d0dCBpbnN0ZWFkIG9mIGd0LiAoQ2hyaXMpCgpTaWdu
ZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyB8IDE3ICsrKysrKysr
Ky0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwppbmRleCBiM2Jm
NDdlODE2MmYuLjg5NDEyMmQyM2RkYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3JpbmdidWZmZXIuYwpAQCAtMTIyNiwxNiArMTIyNiwxNiBAQCB2b2lkIGludGVsX3JpbmdfdW5w
aW4oc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCiAJaTkxNV90aW1lbGluZV91bnBpbihyaW5nLT50
aW1lbGluZSk7CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKgotaW50ZWxfcmluZ19jcmVh
dGVfdm1hKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IHNpemUpCitzdGF0
aWMgc3RydWN0IGk5MTVfdm1hICpjcmVhdGVfcmluZ192bWEoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0
dCwgaW50IHNpemUpCiB7Ci0Jc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSAmZGV2X3By
aXYtPmdndHQudm07CisJc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPSAmZ2d0dC0+dm07
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB2bS0+aTkxNTsKIAlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCi0Jb2JqID0g
aTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oZGV2X3ByaXYsIHNpemUpOworCW9iaiA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGk5MTUsIHNpemUpOwogCWlmICghb2JqKQotCQlv
YmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2ludGVybmFsKGRldl9wcml2LCBzaXplKTsKKwkJ
b2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzaXplKTsKIAlpZiAo
SVNfRVJSKG9iaikpCiAJCXJldHVybiBFUlJfQ0FTVChvYmopOwogCkBAIC0xMjYyLDEzICsxMjYy
LDE0IEBAIGludGVsX2VuZ2luZV9jcmVhdGVfcmluZyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUsCiAJCQkgc3RydWN0IGk5MTVfdGltZWxpbmUgKnRpbWVsaW5lLAogCQkJIGludCBzaXpl
KQogeworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1OwogCXN0
cnVjdCBpbnRlbF9yaW5nICpyaW5nOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCiAJR0VNX0JV
R19PTighaXNfcG93ZXJfb2ZfMihzaXplKSk7CiAJR0VNX0JVR19PTihSSU5HX0NUTF9TSVpFKHNp
emUpICYgflJJTkdfTlJfUEFHRVMpOwogCUdFTV9CVUdfT04odGltZWxpbmUgPT0gJmVuZ2luZS0+
dGltZWxpbmUpOwotCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmVuZ2luZS0+aTkxNS0+ZHJtLnN0cnVj
dF9tdXRleCk7CisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7
CiAKIAlyaW5nID0ga3phbGxvYyhzaXplb2YoKnJpbmcpLCBHRlBfS0VSTkVMKTsKIAlpZiAoIXJp
bmcpCkBAIC0xMjg0LDEyICsxMjg1LDEyIEBAIGludGVsX2VuZ2luZV9jcmVhdGVfcmluZyhzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJICogb2YgdGhlIGJ1ZmZlci4KIAkgKi8KIAly
aW5nLT5lZmZlY3RpdmVfc2l6ZSA9IHNpemU7Ci0JaWYgKElTX0k4MzAoZW5naW5lLT5pOTE1KSB8
fCBJU19JODQ1RyhlbmdpbmUtPmk5MTUpKQorCWlmIChJU19JODMwKGk5MTUpIHx8IElTX0k4NDVH
KGk5MTUpKQogCQlyaW5nLT5lZmZlY3RpdmVfc2l6ZSAtPSAyICogQ0FDSEVMSU5FX0JZVEVTOwog
CiAJaW50ZWxfcmluZ191cGRhdGVfc3BhY2UocmluZyk7CiAKLQl2bWEgPSBpbnRlbF9yaW5nX2Ny
ZWF0ZV92bWEoZW5naW5lLT5pOTE1LCBzaXplKTsKKwl2bWEgPSBjcmVhdGVfcmluZ192bWEoZW5n
aW5lLT5ndC0+Z2d0dCwgc2l6ZSk7CiAJaWYgKElTX0VSUih2bWEpKSB7CiAJCWtmcmVlKHJpbmcp
OwogCQlyZXR1cm4gRVJSX0NBU1Qodm1hKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
