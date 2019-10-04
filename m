Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AF8CC14E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 19:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADFD46EBE5;
	Fri,  4 Oct 2019 17:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285916EBEE
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 17:05:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 10:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="222216129"
Received: from bkokkula-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.77])
 by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2019 10:05:15 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 18:04:46 +0100
Message-Id: <20191004170452.15410-16-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004170452.15410-1-matthew.auld@intel.com>
References: <20191004170452.15410-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 15/21] drm/i915: do not map aperture if it is
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
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMyICsrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCA0NDkwMDU5NmZl
YzYuLmFkMTIzYjg0ODgwZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI4
MjMsNyArMjgyMyw5IEBAIHN0YXRpYyB2b2lkIGdndHRfY2xlYW51cF9odyhzdHJ1Y3QgaTkxNV9n
Z3R0ICpnZ3R0KQogCWk5MTVfYWRkcmVzc19zcGFjZV9maW5pKCZnZ3R0LT52bSk7CiAKIAlhcmNo
X3BoeXNfd2NfZGVsKGdndHQtPm10cnIpOwotCWlvX21hcHBpbmdfZmluaSgmZ2d0dC0+aW9tYXAp
OworCisJaWYgKGdndHQtPmlvbWFwLnNpemUpCisJCWlvX21hcHBpbmdfZmluaSgmZ2d0dC0+aW9t
YXApOwogfQogCiAvKioKQEAgLTMwMzQsMTAgKzMwMzYsMTMgQEAgc3RhdGljIGludCBnZW44X2dt
Y2hfcHJvYmUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAlpbnQgZXJyOwogCiAJLyogVE9ETzog
V2UncmUgbm90IGF3YXJlIG9mIG1hcHBhYmxlIGNvbnN0cmFpbnRzIG9uIGdlbjggeWV0ICovCi0J
Z2d0dC0+Z21hZHIgPQotCQkoc3RydWN0IHJlc291cmNlKSBERUZJTkVfUkVTX01FTShwY2lfcmVz
b3VyY2Vfc3RhcnQocGRldiwgMiksCi0JCQkJCQkgcGNpX3Jlc291cmNlX2xlbihwZGV2LCAyKSk7
Ci0JZ2d0dC0+bWFwcGFibGVfZW5kID0gcmVzb3VyY2Vfc2l6ZSgmZ2d0dC0+Z21hZHIpOworCS8q
IEZJWE1FOiBXZSBwcm9iYWJseSBuZWVkIHRvIGFkZCBkbyBkZXZpY2VfaW5mbyBvciBydW50aW1l
X2luZm8gKi8KKwlpZiAoIUhBU19MTUVNKGRldl9wcml2KSkgeworCQlnZ3R0LT5nbWFkciA9CisJ
CQkoc3RydWN0IHJlc291cmNlKSBERUZJTkVfUkVTX01FTShwY2lfcmVzb3VyY2Vfc3RhcnQocGRl
diwgMiksCisJCQkJCQkJIHBjaV9yZXNvdXJjZV9sZW4ocGRldiwgMikpOworCQlnZ3R0LT5tYXBw
YWJsZV9lbmQgPSByZXNvdXJjZV9zaXplKCZnZ3R0LT5nbWFkcik7CisJfQogCiAJZXJyID0gcGNp
X3NldF9kbWFfbWFzayhwZGV2LCBETUFfQklUX01BU0soMzkpKTsKIAlpZiAoIWVycikKQEAgLTMy
NjAsMTQgKzMyNjUsMTcgQEAgc3RhdGljIGludCBnZ3R0X2luaXRfaHcoc3RydWN0IGk5MTVfZ2d0
dCAqZ2d0dCkKIAlpZiAoIUhBU19MTEMoaTkxNSkgJiYgIUhBU19QUEdUVChpOTE1KSkKIAkJZ2d0
dC0+dm0ubW0uY29sb3JfYWRqdXN0ID0gaTkxNV9nZ3R0X2NvbG9yX2FkanVzdDsKIAotCWlmICgh
aW9fbWFwcGluZ19pbml0X3djKCZnZ3R0LT5pb21hcCwKLQkJCQlnZ3R0LT5nbWFkci5zdGFydCwK
LQkJCQlnZ3R0LT5tYXBwYWJsZV9lbmQpKSB7Ci0JCWdndHQtPnZtLmNsZWFudXAoJmdndHQtPnZt
KTsKLQkJcmV0dXJuIC1FSU87Ci0JfQorCWlmIChnZ3R0LT5tYXBwYWJsZV9lbmQpIHsKKwkJaWYg
KCFpb19tYXBwaW5nX2luaXRfd2MoJmdndHQtPmlvbWFwLAorCQkJCQlnZ3R0LT5nbWFkci5zdGFy
dCwKKwkJCQkJZ2d0dC0+bWFwcGFibGVfZW5kKSkgeworCQkJZ2d0dC0+dm0uY2xlYW51cCgmZ2d0
dC0+dm0pOworCQkJcmV0dXJuIC1FSU87CisJCX0KIAotCWdndHQtPm10cnIgPSBhcmNoX3BoeXNf
d2NfYWRkKGdndHQtPmdtYWRyLnN0YXJ0LCBnZ3R0LT5tYXBwYWJsZV9lbmQpOworCQlnZ3R0LT5t
dHJyID0gYXJjaF9waHlzX3djX2FkZChnZ3R0LT5nbWFkci5zdGFydCwKKwkJCQkJICAgICAgZ2d0
dC0+bWFwcGFibGVfZW5kKTsKKwl9CiAKIAlpOTE1X2dndHRfaW5pdF9mZW5jZXMoZ2d0dCk7CiAK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
