Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 855E3E858D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:29:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A83786EB47;
	Tue, 29 Oct 2019 10:29:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7FFE6EB43
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:29:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:29:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="374503862"
Received: from sslose-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.3.112])
 by orsmga005.jf.intel.com with ESMTP; 29 Oct 2019 03:29:00 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 10:28:50 +0000
Message-Id: <20191029102851.7497-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029102851.7497-1-matthew.auld@intel.com>
References: <20191029102851.7497-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915: don't allocate the ring in
 stolen if we lack aperture
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

U2luY2Ugd2UgaGF2ZSBubyB3YXkgYWNjZXNzIGl0IGZyb20gdGhlIENQVS4gRm9yIHN1Y2ggY2Fz
ZXMganVzdApmYWxsYmFjayB0byBpbnRlcm5hbCBvYmplY3RzLgoKU2lnbmVkLW9mZi1ieTogTWF0
dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZy5jIHwgNCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZy5jCmluZGV4IGZh
MDFjMTQwNzc2MC4uZWNlMjA1MDRkMjQwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmlu
Zy5jCkBAIC0xMDgsNyArMTA4LDkgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3ZtYSAqY3JlYXRlX3Jp
bmdfdm1hKHN0cnVjdCBpOTE1X2dndHQgKmdndHQsIGludCBzaXplKQogCXN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CiAKLQlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihpOTE1LCBzaXplKTsKKwlvYmogPSBFUlJfUFRSKC1F
Tk9ERVYpOworCWlmIChpOTE1X2dndHRfaGFzX2FwZXJ0dXJlKGdndHQpKQorCQlvYmogPSBpOTE1
X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihpOTE1LCBzaXplKTsKIAlpZiAoSVNfRVJSKG9iaikp
CiAJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc2l6ZSk7CiAJ
aWYgKElTX0VSUihvYmopKQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
