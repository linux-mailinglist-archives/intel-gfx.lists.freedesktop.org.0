Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6ECDCF7F
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 21:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F1D6E154;
	Fri, 18 Oct 2019 19:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 266F76E154
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 19:41:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 12:41:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; d="scan'208";a="226649750"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.54.75.49])
 by fmsmga002.fm.intel.com with ESMTP; 18 Oct 2019 12:41:58 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Oct 2019 12:43:56 -0700
Message-Id: <20190718144340.1114-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Patchwork-Id: 318817
Subject: [Intel-gfx] [2/2] drm/i915: Check some transcoder timing minimum
 limits
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

RnJvbTogVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpGcm9t
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKT24gSUxL
KyB0aGUgZG9jdW1lbnRlZCBtaW4gaGRpc3BsYXkgaXMgNjQsIG1pbiBoYmxhbmsgaXMgMzIsIGFu
ZCBtaW4KdmJsYW5rIGlzIDUuIE9uIGVhcmxpZXIgcGxhdGZvcm1zIG1pbiBoYmxhbmsgaXMgYWxz
byAzMiwgYW5kIG1pbgp2YmxhbmsgaXMgMy4gTWFrZSBzdXJlIHRoZSBtb2RlIHNhdGlzZmllcyB0
aG9zZSBsaW1pdHMuCgpUaGVyZSBhcmUgZnVydGhlciBsaW1pdHMgZm9yIEhETUkgYW5kIHBmaXQg
dXNlIGNhc2VzLCBidXQgd2UnbGwgY2hlY2sKZm9yIHRob3NlIGluIGEgbW9yZSBzcGVjaWZpYyBs
b2NhdGlvbi4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgfCAxNSArKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCBlMjViODJkMDdkNGYuLjExNDFmNGFhMzFjNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE1ODE2LDYgKzE1ODE2LDIxIEBAIGludGVs
X21vZGVfdmFsaWQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkgICAgbW9kZS0+dnRvdGFsID4g
dnRvdGFsX21heCkKIAkJcmV0dXJuIE1PREVfVl9JTExFR0FMOwogCisJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gNSkgeworCQlpZiAobW9kZS0+aGRpc3BsYXkgPCA2NCB8fAorCQkgICAgbW9k
ZS0+aHRvdGFsIC0gbW9kZS0+aGRpc3BsYXkgPCAzMikKKwkJCXJldHVybiBNT0RFX0hfSUxMRUdB
TDsKKworCQlpZiAobW9kZS0+dnRvdGFsIC0gbW9kZS0+dmRpc3BsYXkgPCA1KQorCQkJcmV0dXJu
IE1PREVfVl9JTExFR0FMOworCX0gZWxzZSB7CisJCWlmIChtb2RlLT5odG90YWwgLSBtb2RlLT5o
ZGlzcGxheSA8IDMyKQorCQkJcmV0dXJuIE1PREVfSF9JTExFR0FMOworCisJCWlmIChtb2RlLT52
dG90YWwgLSBtb2RlLT52ZGlzcGxheSA8IDMpCisJCQlyZXR1cm4gTU9ERV9WX0lMTEVHQUw7CisJ
fQorCiAJcmV0dXJuIE1PREVfT0s7CiB9CiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
