Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BADF464A4
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93AB189B29;
	Fri, 14 Jun 2019 16:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5CA889B03
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:43:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:43:55 -0700
X-ExtLoop1: 1
Received: from rosetta.fi.intel.com ([10.237.72.186])
 by orsmga007.jf.intel.com with ESMTP; 14 Jun 2019 09:43:54 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id E311F840688; Fri, 14 Jun 2019 19:43:50 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 19:43:49 +0300
Message-Id: <20190614164350.30415-9-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190614164350.30415-1-mika.kuoppala@linux.intel.com>
References: <20190614164350.30415-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/gtt: Tear down setup and cleanup
 macros for page dma
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgZG9uJ3QgdXNlIGNvbW1vbiBjb2RlcGF0aHMgdG8gc2V0dXAgYW5kIGNsZWFudXAgcGFnZQpk
aXJlY3RvcmllcyB2cyBwYWdlIHRhYmxlcy4gU28gdGhlaXIgc2V0dXAgYW5kIGNsZWFudXAgbWFj
cm9zCmFyZSBvZiBubyB1c2UuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYyB8IDEyICsrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDBm
ZmZhMDYwOGVhNS4uYmEyODAyYzI1ZDEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
YwpAQCAtNTUwLDggKzU1MCw2IEBAIHN0YXRpYyB2b2lkIGNsZWFudXBfcGFnZV9kbWEoc3RydWN0
IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAKICNkZWZpbmUga21hcF9hdG9taWNfcHgocHgpIGtt
YXBfYXRvbWljKHB4X2Jhc2UocHgpLT5wYWdlKQogCi0jZGVmaW5lIHNldHVwX3B4KHZtLCBweCkg
c2V0dXBfcGFnZV9kbWEoKHZtKSwgcHhfYmFzZShweCkpCi0jZGVmaW5lIGNsZWFudXBfcHgodm0s
IHB4KSBjbGVhbnVwX3BhZ2VfZG1hKCh2bSksIHB4X2Jhc2UocHgpKQogI2RlZmluZSBmaWxsX3B4
KHZtLCBweCwgdikgZmlsbF9wYWdlX2RtYSgodm0pLCBweF9iYXNlKHB4KSwgKHYpKQogI2RlZmlu
ZSBmaWxsMzJfcHgodm0sIHB4LCB2KSBmaWxsX3BhZ2VfZG1hXzMyKCh2bSksIHB4X2Jhc2UocHgp
LCAodikpCiAKQEAgLTY1Myw3ICs2NTEsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcGFnZV90YWJs
ZSAqYWxsb2NfcHQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCiAJaWYgKHVubGlrZWx5
KCFwdCkpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCi0JaWYgKHVubGlrZWx5KHNldHVw
X3B4KHZtLCBwdCkpKSB7CisJaWYgKHVubGlrZWx5KHNldHVwX3BhZ2VfZG1hKHZtLCAmcHQtPmJh
c2UpKSkgewogCQlrZnJlZShwdCk7CiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCX0KQEAg
LTY2NSw3ICs2NjMsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcGFnZV90YWJsZSAqYWxsb2NfcHQo
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCiAKIHN0YXRpYyB2b2lkIGZyZWVfcHQoc3Ry
dWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sIHN0cnVjdCBpOTE1X3BhZ2VfdGFibGUgKnB0KQog
ewotCWNsZWFudXBfcHgodm0sIHB0KTsKKwljbGVhbnVwX3BhZ2VfZG1hKHZtLCAmcHQtPmJhc2Up
OwogCWtmcmVlKHB0KTsKIH0KIApAQCAtNzA4LDcgKzcwNiw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkx
NV9wYWdlX2RpcmVjdG9yeSAqYWxsb2NfcGQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0p
CiAJaWYgKHVubGlrZWx5KCFwZCkpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwogCi0JaWYg
KHVubGlrZWx5KHNldHVwX3B4KHZtLCBwZCkpKSB7CisJaWYgKHVubGlrZWx5KHNldHVwX3BhZ2Vf
ZG1hKHZtLCAmcGQtPmJhc2UpKSkgewogCQlrZnJlZShwZCk7CiAJCXJldHVybiBFUlJfUFRSKC1F
Tk9NRU0pOwogCX0KQEAgLTcyNSw3ICs3MjMsNyBAQCBzdGF0aWMgdm9pZCBmcmVlX3BkKHN0cnVj
dCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCQkgICAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3Rv
cnkgKnBkKQogewogCWlmIChsaWtlbHkocGRfaGFzX3BoeXNfcGFnZShwZCkpKQotCQljbGVhbnVw
X3B4KHZtLCBwZCk7CisJCWNsZWFudXBfcGFnZV9kbWEodm0sICZwZC0+YmFzZSk7CiAKIAlrZnJl
ZShwZCk7CiB9CkBAIC0xNTg0LDcgKzE1ODIsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcHBndHQg
KmdlbjhfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCX0KIAog
CWlmIChpOTE1X3ZtX2lzXzRsdmwoJnBwZ3R0LT52bSkpIHsKLQkJZXJyID0gc2V0dXBfcHgoJnBw
Z3R0LT52bSwgcHBndHQtPnBkKTsKKwkJZXJyID0gc2V0dXBfcGFnZV9kbWEoJnBwZ3R0LT52bSwg
JnBwZ3R0LT5wZC0+YmFzZSk7CiAJCWlmIChlcnIpCiAJCQlnb3RvIGVycl9mcmVlX3BkcDsKIAot
LSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
