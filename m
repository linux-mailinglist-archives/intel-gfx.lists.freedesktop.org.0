Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8685217AA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 13:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5A989919;
	Fri, 17 May 2019 11:25:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F6B89911;
 Fri, 17 May 2019 11:25:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 04:25:44 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.11.159])
 by fmsmga005.fm.intel.com with ESMTP; 17 May 2019 04:25:43 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 17 May 2019 12:25:12 +0100
Message-Id: <20190517112526.6738-12-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 11/25] gem_wsim: Extract str to engine
 lookup
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCnYyOgogKiBS
ZW1vdmUgcmVkdW5kYW50IGNoZWNrLiAoQ2hyaXMpCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogYmVuY2htYXJrcy9nZW1fd3NpbS5jIHwg
MzQgKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIx
IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2JlbmNobWFya3Mv
Z2VtX3dzaW0uYyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwppbmRleCA0NjQzMTRjMDU2OTcuLjYw
YjdkMzJlMjJkNCAxMDA2NDQKLS0tIGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jCisrKyBiL2JlbmNo
bWFya3MvZ2VtX3dzaW0uYwpAQCAtMzE4LDYgKzMxOCwxOCBAQCB3c2ltX2Vycihjb25zdCBjaGFy
ICpmbXQsIC4uLikKIAl9IFwKIH0KIAorc3RhdGljIGludCBzdHJfdG9fZW5naW5lKGNvbnN0IGNo
YXIgKnN0cikKK3sKKwl1bnNpZ25lZCBpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9T
SVpFKHJpbmdfc3RyX21hcCk7IGkrKykgeworCQlpZiAoIXN0cmNhc2VjbXAoc3RyLCByaW5nX3N0
cl9tYXBbaV0pKQorCQkJcmV0dXJuIGk7CisJfQorCisJcmV0dXJuIC0xOworfQorCiBzdGF0aWMg
c3RydWN0IHdvcmtsb2FkICoKIHBhcnNlX3dvcmtsb2FkKHN0cnVjdCB3X2FyZyAqYXJnLCB1bnNp
Z25lZCBpbnQgZmxhZ3MsIHN0cnVjdCB3b3JrbG9hZCAqYXBwX3cpCiB7CkBAIC00ODAsMjIgKzQ5
MiwxOCBAQCBwYXJzZV93b3JrbG9hZChzdHJ1Y3Qgd19hcmcgKmFyZywgdW5zaWduZWQgaW50IGZs
YWdzLCBzdHJ1Y3Qgd29ya2xvYWQgKmFwcF93KQogCQl9CiAKIAkJaWYgKChmaWVsZCA9IHN0cnRv
a19yKGZzdGFydCwgIi4iLCAmZmN0eCkpICE9IE5VTEwpIHsKLQkJCXVuc2lnbmVkIGludCBvbGRf
dmFsaWQgPSB2YWxpZDsKLQogCQkJZnN0YXJ0ID0gTlVMTDsKIAotCQkJZm9yIChpID0gMDsgaSA8
IEFSUkFZX1NJWkUocmluZ19zdHJfbWFwKTsgaSsrKSB7Ci0JCQkJaWYgKCFzdHJjYXNlY21wKGZp
ZWxkLCByaW5nX3N0cl9tYXBbaV0pKSB7Ci0JCQkJCXN0ZXAuZW5naW5lID0gaTsKLQkJCQkJaWYg
KHN0ZXAuZW5naW5lID09IEJDUykKLQkJCQkJCWJjc191c2VkID0gdHJ1ZTsKLQkJCQkJdmFsaWQr
KzsKLQkJCQkJYnJlYWs7Ci0JCQkJfQotCQkJfQotCi0JCQljaGVja19hcmcob2xkX3ZhbGlkID09
IHZhbGlkLAorCQkJaSA9IHN0cl90b19lbmdpbmUoZmllbGQpOworCQkJY2hlY2tfYXJnKGkgPCAw
LAogCQkJCSAgIkludmFsaWQgZW5naW5lIGlkIGF0IHN0ZXAgJXUhXG4iLCBucl9zdGVwcyk7CisK
KwkJCXZhbGlkKys7CisKKwkJCXN0ZXAuZW5naW5lID0gaTsKKworCQkJaWYgKHN0ZXAuZW5naW5l
ID09IEJDUykKKwkJCQliY3NfdXNlZCA9IHRydWU7CiAJCX0KIAogCQlpZiAoKGZpZWxkID0gc3Ry
dG9rX3IoZnN0YXJ0LCAiLiIsICZmY3R4KSkgIT0gTlVMTCkgewotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
