Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FEEE010E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394CF6E4E6;
	Tue, 22 Oct 2019 09:47:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3B7C6E4D0
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:47:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:47:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="281235384"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga001.jf.intel.com with ESMTP; 22 Oct 2019 02:47:37 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:47:21 +0100
Message-Id: <20191022094726.3001-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
References: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/12] drm/i915: Split drop caches into GT and
 i915 parts
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkp1c3QgY29t
cGFydG1lbnRhbGl6ZXMgY29kZSBhIGJpdCBtb3JlLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYyB8IDI0ICsrKysrKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwppbmRleCBhZGE1N2VlZTkxNGEuLjE2MjExNDMwZWI3OCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTM2NDgsMTcgKzM2NDgsMTEgQEAgaTkxNV9kcm9w
X2NhY2hlc19nZXQodm9pZCAqZGF0YSwgdTY0ICp2YWwpCiAKIAlyZXR1cm4gMDsKIH0KLQogc3Rh
dGljIGludAotaTkxNV9kcm9wX2NhY2hlc19zZXQodm9pZCAqZGF0YSwgdTY0IHZhbCkKK2d0X2Ry
b3BfY2FjaGVzKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHU2NCB2YWwpCiB7Ci0Jc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSBkYXRhOwotCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSAmaTkxNS0+
Z3Q7CiAJaW50IHJldDsKIAotCURSTV9ERUJVRygiRHJvcHBpbmcgY2FjaGVzOiAweCUwOGxseCBb
MHglMDhsbHhdXG4iLAotCQkgIHZhbCwgdmFsICYgRFJPUF9BTEwpOwotCiAJaWYgKHZhbCAmIERS
T1BfUkVTRVRfQUNUSVZFICYmCiAJICAgIHdhaXRfZm9yKGludGVsX2VuZ2luZXNfYXJlX2lkbGUo
Z3QpLCBJOTE1X0lETEVfRU5HSU5FU19USU1FT1VUKSkKIAkJaW50ZWxfZ3Rfc2V0X3dlZGdlZChn
dCk7CkBAIC0zNjgxLDYgKzM2NzUsMjIgQEAgaTkxNV9kcm9wX2NhY2hlc19zZXQodm9pZCAqZGF0
YSwgdTY0IHZhbCkKIAlpZiAodmFsICYgRFJPUF9SRVNFVF9BQ1RJVkUgJiYgaW50ZWxfZ3RfdGVy
bWluYWxseV93ZWRnZWQoZ3QpKQogCQlpbnRlbF9ndF9oYW5kbGVfZXJyb3IoZ3QsIEFMTF9FTkdJ
TkVTLCAwLCBOVUxMKTsKIAorCXJldHVybiAwOworfQorCitzdGF0aWMgaW50CitpOTE1X2Ryb3Bf
Y2FjaGVzX3NldCh2b2lkICpkYXRhLCB1NjQgdmFsKQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gZGF0YTsKKwlpbnQgcmV0OworCisJRFJNX0RFQlVHKCJEcm9wcGluZyBjYWNo
ZXM6IDB4JTA4bGx4IFsweCUwOGxseF1cbiIsCisJCSAgdmFsLCB2YWwgJiBEUk9QX0FMTCk7CisK
KwlyZXQgPSBndF9kcm9wX2NhY2hlcygmaTkxNS0+Z3QsIHZhbCk7CisJaWYgKHJldCkKKwkJcmV0
dXJuIHJldDsKKwogCWZzX3JlY2xhaW1fYWNxdWlyZShHRlBfS0VSTkVMKTsKIAlpZiAodmFsICYg
RFJPUF9CT1VORCkKIAkJaTkxNV9nZW1fc2hyaW5rKGk5MTUsIExPTkdfTUFYLCBOVUxMLCBJOTE1
X1NIUklOS19CT1VORCk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
