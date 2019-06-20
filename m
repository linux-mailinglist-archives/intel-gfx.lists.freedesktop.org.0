Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA06C4DB70
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 22:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4946E819;
	Thu, 20 Jun 2019 20:39:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 654A16E7EF
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 20:38:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 13:38:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="186938679"
Received: from yyosef-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.23.42])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jun 2019 13:38:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 21:38:13 +0100
Message-Id: <20190620203835.1421-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
References: <20190620203835.1421-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 11/33] drm/i915: Store backpointer to intel_gt in
 the engine
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkl0IHdpbGwg
Y29tZSB1c2VmdWwgaW4gdGhlIG5leHQgcGF0Y2guCgp2MjoKICogRG8gbW9ja19lbmdpbmUgYXMg
d2VsbC4KCnYzOgogKiBBbmQgdGhlIHZpcnR1YWwgZW5naW5lLi4uCgpTaWduZWQtb2ZmLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIHwgMiArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMgICAgICAgICAgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tf
ZW5naW5lLmMgICAgICAgIHwgMSArCiA0IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKaW5kZXggNWU0YmY3Mzhl
ZTU5Li5kZDIzZmNhY2VkNTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9jcy5jCkBAIC0zMTYsNiArMzE2LDcgQEAgaW50ZWxfZW5naW5lX3NldHVwKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAllbmdpbmUtPmlkID0gaWQ7CiAJZW5naW5lLT5tYXNr
ID0gQklUKGlkKTsKIAllbmdpbmUtPmk5MTUgPSBkZXZfcHJpdjsKKwllbmdpbmUtPmd0ID0gJmRl
dl9wcml2LT5ndDsKIAllbmdpbmUtPnVuY29yZSA9ICZkZXZfcHJpdi0+dW5jb3JlOwogCV9fc3By
aW50X2VuZ2luZV9uYW1lKGVuZ2luZS0+bmFtZSwgaW5mbyk7CiAJZW5naW5lLT5od19pZCA9IGVu
Z2luZS0+Z3VjX2lkID0gaW5mby0+aHdfaWQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV90eXBlcy5oCmluZGV4IDk5NDBiYWQzNzgxMi4uZmI2NWU5NmZhMzZiIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaApAQCAtMzYsNiAr
MzYsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcmVnX3RhYmxlOwogc3RydWN0IGk5MTVfZ2VtX2NvbnRl
eHQ7CiBzdHJ1Y3QgaTkxNV9yZXF1ZXN0Owogc3RydWN0IGk5MTVfc2NoZWRfYXR0cjsKK3N0cnVj
dCBpbnRlbF9ndDsKIHN0cnVjdCBpbnRlbF91bmNvcmU7CiAKIHR5cGVkZWYgdTggaW50ZWxfZW5n
aW5lX21hc2tfdDsKQEAgLTI1Nyw2ICsyNTgsNyBAQCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNs
aXN0cyB7CiAKIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgewogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1OworCXN0cnVjdCBpbnRlbF9ndCAqZ3Q7CiAJc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlOwogCWNoYXIgbmFtZVtJTlRFTF9FTkdJTkVfQ1NfTUFYX05BTUVdOwogCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IGY4YWQ0OTAwNjkxNy4uYWZiMzUxZWQ0MDg5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMzM2Myw2ICszMzYzLDcgQEAgaW50
ZWxfZXhlY2xpc3RzX2NyZWF0ZV92aXJ0dWFsKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgs
CiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCiAJdmUtPmJhc2UuaTkxNSA9IGN0eC0+aTkx
NTsKKwl2ZS0+YmFzZS5ndCA9IHNpYmxpbmdzWzBdLT5ndDsKIAl2ZS0+YmFzZS5pZCA9IC0xOwog
CXZlLT5iYXNlLmNsYXNzID0gT1RIRVJfQ0xBU1M7CiAJdmUtPmJhc2UudWFiaV9jbGFzcyA9IEk5
MTVfRU5HSU5FX0NMQVNTX0lOVkFMSUQ7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9tb2NrX2VuZ2luZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUu
YwppbmRleCA0ODZjNjk1M2RjYjEuLmIwMjJhZjMzODVmMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9tb2NrX2VuZ2luZS5jCkBAIC0yNTcsNiArMjU3LDcgQEAgc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqbW9ja19lbmdpbmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAKIAkvKiBtaW5p
bWFsIGVuZ2luZSBzZXR1cCBmb3IgcmVxdWVzdHMgKi8KIAllbmdpbmUtPmJhc2UuaTkxNSA9IGk5
MTU7CisJZW5naW5lLT5iYXNlLmd0ID0gJmk5MTUtPmd0OwogCXNucHJpbnRmKGVuZ2luZS0+YmFz
ZS5uYW1lLCBzaXplb2YoZW5naW5lLT5iYXNlLm5hbWUpLCAiJXMiLCBuYW1lKTsKIAllbmdpbmUt
PmJhc2UuaWQgPSBpZDsKIAllbmdpbmUtPmJhc2UubWFzayA9IEJJVChpZCk7Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
