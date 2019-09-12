Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 909B1B07B6
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 06:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2476EC09;
	Thu, 12 Sep 2019 04:12:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6CCF6E029;
 Thu, 12 Sep 2019 03:25:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 20:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="336444935"
Received: from helsinki.fi.intel.com ([10.237.66.159])
 by orsmga004.jf.intel.com with ESMTP; 11 Sep 2019 20:25:13 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 06:24:53 +0300
Message-Id: <20190912032455.26095-6-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190912032455.26095-1-gwan-gyeong.mun@intel.com>
References: <20190912032455.26095-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 5/7] drm/i915: Add new GMP register size for
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
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBiZjM3ZWNlYmM4MmYuLmZmN2YzMmI1
OTM2MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC00Njc3LDYgKzQ2NzcsNyBAQCBlbnVt
IHsKICAqIChIYXN3ZWxsIGFuZCBuZXdlcikgdG8gc2VlIHdoaWNoIFZJREVPX0RJUF9EQVRBIGJ5
dGUgY29ycmVzcG9uZHMgdG8gZWFjaCBieXRlCiAgKiBvZiB0aGUgaW5mb2ZyYW1lIHN0cnVjdHVy
ZSBzcGVjaWZpZWQgYnkgQ0VBLTg2MS4gKi8KICNkZWZpbmUgICBWSURFT19ESVBfREFUQV9TSVpF
CTMyCisjZGVmaW5lICAgVklERU9fRElQX0dNUF9EQVRBX1NJWkUJMzYKICNkZWZpbmUgICBWSURF
T19ESVBfVlNDX0RBVEFfU0laRQkzNgogI2RlZmluZSAgIFZJREVPX0RJUF9QUFNfREFUQV9TSVpF
CTEzMgogI2RlZmluZSBWSURFT19ESVBfQ1RMCQlfTU1JTygweDYxMTcwKQotLSAKMi4yMy4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
