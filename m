Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65985AC9E9
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Sep 2019 01:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F40F89D9A;
	Sat,  7 Sep 2019 23:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F84189D89;
 Sat,  7 Sep 2019 23:22:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Sep 2019 16:22:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,478,1559545200"; d="scan'208";a="177981236"
Received: from helsinki.fi.intel.com ([10.237.66.149])
 by orsmga008.jf.intel.com with ESMTP; 07 Sep 2019 16:22:42 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  8 Sep 2019 02:22:24 +0300
Message-Id: <20190907232226.9064-6-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190907232226.9064-1-gwan-gyeong.mun@intel.com>
References: <20190907232226.9064-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 5/7] drm/i915: Add new GMP register size for
 GEN11
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
Cc: imirkin@alum.mit.edu, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIEJzcGVjLCBHRU4xMSBhbmQgcHJpb3IgR0VOMTEgaGF2ZSBkaWZmZXJlbnQg
cmVnaXN0ZXIgc2l6ZSBmb3IKSERSIE1ldGFkYXRhIEluZm9mcmFtZSBTRFAgcGFja2V0LiBJdCBh
ZGRzIG5ldyBWSURFT19ESVBfR01QX0RBVEFfU0laRSBmb3IKR0VOMTEuIEFuZCBpdCBtYWtlcyBo
YW5kbGUgZGlmZmVyZW50IHJlZ2lzdGVyIHNpemUgZm9yCkhETUlfUEFDS0VUX1RZUEVfR0FNVVRf
TUVUQURBVEEgb24gaHN3X2RpcF9kYXRhX3NpemUoKSBmb3IgZWFjaCBHRU4KcGxhdGZvcm1zLiBJ
dCBhZGRyZXNzZXMgVW1hJ3MgcmV2aWV3IGNvbW1lbnRzLgoKU2lnbmVkLW9mZi1ieTogR3dhbi1n
eWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVW1hIFNo
YW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkbWkuYyB8IDEwICsrKysrKysrLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggICAgICAgICAgIHwgIDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2hkbWkuYwppbmRleCBjNTAwZmM5MTU0YzguLjI4Nzk5OWIzMTIxNyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKQEAgLTE4OSwxMyArMTg5LDE5IEBAIGhzd19k
aXBfZGF0YV9yZWcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCX0KIH0KIAot
c3RhdGljIGludCBoc3dfZGlwX2RhdGFfc2l6ZSh1bnNpZ25lZCBpbnQgdHlwZSkKK3N0YXRpYyBp
bnQgaHN3X2RpcF9kYXRhX3NpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAor
CQkJICAgICB1bnNpZ25lZCBpbnQgdHlwZSkKIHsKIAlzd2l0Y2ggKHR5cGUpIHsKIAljYXNlIERQ
X1NEUF9WU0M6CiAJCXJldHVybiBWSURFT19ESVBfVlNDX0RBVEFfU0laRTsKIAljYXNlIERQX1NE
UF9QUFM6CiAJCXJldHVybiBWSURFT19ESVBfUFBTX0RBVEFfU0laRTsKKwljYXNlIEhETUlfUEFD
S0VUX1RZUEVfR0FNVVRfTUVUQURBVEE6CisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEx
KQorCQkJcmV0dXJuIFZJREVPX0RJUF9HTVBfREFUQV9TSVpFOworCQllbHNlCisJCQlyZXR1cm4g
VklERU9fRElQX0RBVEFfU0laRTsKIAlkZWZhdWx0OgogCQlyZXR1cm4gVklERU9fRElQX0RBVEFf
U0laRTsKIAl9CkBAIC01MTQsNyArNTIwLDcgQEAgc3RhdGljIHZvaWQgaHN3X3dyaXRlX2luZm9m
cmFtZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAlpbnQgaTsKIAl1MzIgdmFsID0g
STkxNV9SRUFEKGN0bF9yZWcpOwogCi0JZGF0YV9zaXplID0gaHN3X2RpcF9kYXRhX3NpemUodHlw
ZSk7CisJZGF0YV9zaXplID0gaHN3X2RpcF9kYXRhX3NpemUoZGV2X3ByaXYsIHR5cGUpOwogCiAJ
dmFsICY9IH5oc3dfaW5mb2ZyYW1lX2VuYWJsZSh0eXBlKTsKIAlJOTE1X1dSSVRFKGN0bF9yZWcs
IHZhbCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA2YzQzYjhjNTgzYmIuLjhiMzFhZDc0
MjZkNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC00NjY3LDYgKzQ2NjcsNyBAQCBlbnVt
IHsKICAqIChIYXN3ZWxsIGFuZCBuZXdlcikgdG8gc2VlIHdoaWNoIFZJREVPX0RJUF9EQVRBIGJ5
dGUgY29ycmVzcG9uZHMgdG8gZWFjaCBieXRlCiAgKiBvZiB0aGUgaW5mb2ZyYW1lIHN0cnVjdHVy
ZSBzcGVjaWZpZWQgYnkgQ0VBLTg2MS4gKi8KICNkZWZpbmUgICBWSURFT19ESVBfREFUQV9TSVpF
CTMyCisjZGVmaW5lICAgVklERU9fRElQX0dNUF9EQVRBX1NJWkUJMzYKICNkZWZpbmUgICBWSURF
T19ESVBfVlNDX0RBVEFfU0laRQkzNgogI2RlZmluZSAgIFZJREVPX0RJUF9QUFNfREFUQV9TSVpF
CTEzMgogI2RlZmluZSBWSURFT19ESVBfQ1RMCQlfTU1JTygweDYxMTcwKQotLSAKMi4yMy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
