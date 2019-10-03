Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5977CCAF2B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:25:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A956EA59;
	Thu,  3 Oct 2019 19:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EEB46EA63
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:25:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 12:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="191358453"
Received: from bkokkula-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.77])
 by fmsmga008.fm.intel.com with ESMTP; 03 Oct 2019 12:25:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 20:24:37 +0100
Message-Id: <20191003192444.10113-16-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003192444.10113-1-matthew.auld@intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 15/22] drm/i915: do not map aperture if it is
 not available.
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

RnJvbTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KClNraXAgYm90aCBzZXR1cCBhbmQgY2xlYW51cCBvZiB0aGUgYXBlcnR1cmUgbWFwcGlu
ZyBpZiB0aGUgSFcgZG9lc24ndApoYXZlIGFuIGFwZXJ0dXJlIGJhci4KClNpZ25lZC1vZmYtYnk6
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDM0ICsrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTMgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCAyMDk2ODZjMjNk
MjEuLjY0YmY0N2VhYTJhMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI4
MjcsNyArMjgyNyw5IEBAIHN0YXRpYyB2b2lkIGdndHRfY2xlYW51cF9odyhzdHJ1Y3QgaTkxNV9n
Z3R0ICpnZ3R0KQogCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKIAlh
cmNoX3BoeXNfd2NfZGVsKGdndHQtPm10cnIpOwotCWlvX21hcHBpbmdfZmluaSgmZ2d0dC0+aW9t
YXApOworCisJaWYgKGdndHQtPmlvbWFwLnNpemUpCisJCWlvX21hcHBpbmdfZmluaSgmZ2d0dC0+
aW9tYXApOwogfQogCiAvKioKQEAgLTMwMzgsMTAgKzMwNDAsMTMgQEAgc3RhdGljIGludCBnZW44
X2dtY2hfcHJvYmUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAlpbnQgZXJyOwogCiAJLyogVE9E
TzogV2UncmUgbm90IGF3YXJlIG9mIG1hcHBhYmxlIGNvbnN0cmFpbnRzIG9uIGdlbjggeWV0ICov
Ci0JZ2d0dC0+Z21hZHIgPQotCQkoc3RydWN0IHJlc291cmNlKSBERUZJTkVfUkVTX01FTShwY2lf
cmVzb3VyY2Vfc3RhcnQocGRldiwgMiksCi0JCQkJCQkgcGNpX3Jlc291cmNlX2xlbihwZGV2LCAy
KSk7Ci0JZ2d0dC0+bWFwcGFibGVfZW5kID0gcmVzb3VyY2Vfc2l6ZSgmZ2d0dC0+Z21hZHIpOwor
CS8qIEZJWE1FOiBXZSBwcm9iYWJseSBuZWVkIHRvIGFkZCBkbyBkZXZpY2VfaW5mbyBvciBydW50
aW1lX2luZm8gKi8KKwlpZiAoIUhBU19MTUVNKGRldl9wcml2KSkgeworCQlnZ3R0LT5nbWFkciA9
CisJCQkoc3RydWN0IHJlc291cmNlKSBERUZJTkVfUkVTX01FTShwY2lfcmVzb3VyY2Vfc3RhcnQo
cGRldiwgMiksCisJCQkJCQkJIHBjaV9yZXNvdXJjZV9sZW4ocGRldiwgMikpOworCQlnZ3R0LT5t
YXBwYWJsZV9lbmQgPSByZXNvdXJjZV9zaXplKCZnZ3R0LT5nbWFkcik7CisJfQogCiAJZXJyID0g
cGNpX3NldF9kbWFfbWFzayhwZGV2LCBETUFfQklUX01BU0soMzkpKTsKIAlpZiAoIWVycikKQEAg
LTMyNjcsMTUgKzMyNzIsMTggQEAgc3RhdGljIGludCBnZ3R0X2luaXRfaHcoc3RydWN0IGk5MTVf
Z2d0dCAqZ2d0dCkKIAlpZiAoIUhBU19MTEMoaTkxNSkgJiYgIUhBU19QUEdUVChpOTE1KSkKIAkJ
Z2d0dC0+dm0ubW0uY29sb3JfYWRqdXN0ID0gaTkxNV9nZ3R0X2NvbG9yX2FkanVzdDsKIAotCWlm
ICghaW9fbWFwcGluZ19pbml0X3djKCZnZ3R0LT5pb21hcCwKLQkJCQlnZ3R0LT5nbWFkci5zdGFy
dCwKLQkJCQlnZ3R0LT5tYXBwYWJsZV9lbmQpKSB7Ci0JCWdndHQtPnZtLmNsZWFudXAoJmdndHQt
PnZtKTsKLQkJcmV0ID0gLUVJTzsKLQkJZ290byBvdXQ7Ci0JfQorCWlmIChnZ3R0LT5tYXBwYWJs
ZV9lbmQpIHsKKwkJaWYgKCFpb19tYXBwaW5nX2luaXRfd2MoJmdndHQtPmlvbWFwLAorCQkJCQln
Z3R0LT5nbWFkci5zdGFydCwKKwkJCQkJZ2d0dC0+bWFwcGFibGVfZW5kKSkgeworCQkJZ2d0dC0+
dm0uY2xlYW51cCgmZ2d0dC0+dm0pOworCQkJcmV0ID0gLUVJTzsKKwkJCWdvdG8gb3V0OworCQl9
CiAKLQlnZ3R0LT5tdHJyID0gYXJjaF9waHlzX3djX2FkZChnZ3R0LT5nbWFkci5zdGFydCwgZ2d0
dC0+bWFwcGFibGVfZW5kKTsKKwkJZ2d0dC0+bXRyciA9IGFyY2hfcGh5c193Y19hZGQoZ2d0dC0+
Z21hZHIuc3RhcnQsCisJCQkJCSAgICAgIGdndHQtPm1hcHBhYmxlX2VuZCk7CisJfQogCiAJaTkx
NV9nZ3R0X2luaXRfZmVuY2VzKGdndHQpOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
