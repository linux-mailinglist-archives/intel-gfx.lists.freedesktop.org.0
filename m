Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 199B8E84F4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 10:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8F66EB11;
	Tue, 29 Oct 2019 09:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DAFF6E10C
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 09:59:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 02:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="205423492"
Received: from sslose-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.3.112])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Oct 2019 02:58:59 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 09:58:51 +0000
Message-Id: <20191029095856.25431-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029095856.25431-1-matthew.auld@intel.com>
References: <20191029095856.25431-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: do not map aperture if it is not
 available.
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
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMxICsrKysrKysrKysrKysr
KysrKy0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCBlZWJjN2ZlZTgx
ZTIuLjczZGFkOGM2YWNjMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI3
NzAsNyArMjc3MCw5IEBAIHN0YXRpYyB2b2lkIGdndHRfY2xlYW51cF9odyhzdHJ1Y3QgaTkxNV9n
Z3R0ICpnZ3R0KQogCWk5MTVfYWRkcmVzc19zcGFjZV9maW5pKCZnZ3R0LT52bSk7CiAKIAlhcmNo
X3BoeXNfd2NfZGVsKGdndHQtPm10cnIpOwotCWlvX21hcHBpbmdfZmluaSgmZ2d0dC0+aW9tYXAp
OworCisJaWYgKGdndHQtPmlvbWFwLnNpemUpCisJCWlvX21hcHBpbmdfZmluaSgmZ2d0dC0+aW9t
YXApOwogfQogCiAvKioKQEAgLTI5OTcsMTAgKzI5OTksMTIgQEAgc3RhdGljIGludCBnZW44X2dt
Y2hfcHJvYmUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAlpbnQgZXJyOwogCiAJLyogVE9ETzog
V2UncmUgbm90IGF3YXJlIG9mIG1hcHBhYmxlIGNvbnN0cmFpbnRzIG9uIGdlbjggeWV0ICovCi0J
Z2d0dC0+Z21hZHIgPQotCQkoc3RydWN0IHJlc291cmNlKSBERUZJTkVfUkVTX01FTShwY2lfcmVz
b3VyY2Vfc3RhcnQocGRldiwgMiksCi0JCQkJCQkgcGNpX3Jlc291cmNlX2xlbihwZGV2LCAyKSk7
Ci0JZ2d0dC0+bWFwcGFibGVfZW5kID0gcmVzb3VyY2Vfc2l6ZSgmZ2d0dC0+Z21hZHIpOworCWlm
ICghSVNfREdGWChkZXZfcHJpdikpIHsKKwkJZ2d0dC0+Z21hZHIgPQorCQkJKHN0cnVjdCByZXNv
dXJjZSkgREVGSU5FX1JFU19NRU0ocGNpX3Jlc291cmNlX3N0YXJ0KHBkZXYsIDIpLAorCQkJCQkJ
CSBwY2lfcmVzb3VyY2VfbGVuKHBkZXYsIDIpKTsKKwkJZ2d0dC0+bWFwcGFibGVfZW5kID0gcmVz
b3VyY2Vfc2l6ZSgmZ2d0dC0+Z21hZHIpOworCX0KIAogCWVyciA9IHBjaV9zZXRfZG1hX21hc2so
cGRldiwgRE1BX0JJVF9NQVNLKDM5KSk7CiAJaWYgKCFlcnIpCkBAIC0zMjIzLDE0ICszMjI3LDE3
IEBAIHN0YXRpYyBpbnQgZ2d0dF9pbml0X2h3KHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCiAJaWYg
KCFIQVNfTExDKGk5MTUpICYmICFIQVNfUFBHVFQoaTkxNSkpCiAJCWdndHQtPnZtLm1tLmNvbG9y
X2FkanVzdCA9IGk5MTVfZ2d0dF9jb2xvcl9hZGp1c3Q7CiAKLQlpZiAoIWlvX21hcHBpbmdfaW5p
dF93YygmZ2d0dC0+aW9tYXAsCi0JCQkJZ2d0dC0+Z21hZHIuc3RhcnQsCi0JCQkJZ2d0dC0+bWFw
cGFibGVfZW5kKSkgewotCQlnZ3R0LT52bS5jbGVhbnVwKCZnZ3R0LT52bSk7Ci0JCXJldHVybiAt
RUlPOwotCX0KKwlpZiAoZ2d0dC0+bWFwcGFibGVfZW5kKSB7CisJCWlmICghaW9fbWFwcGluZ19p
bml0X3djKCZnZ3R0LT5pb21hcCwKKwkJCQkJZ2d0dC0+Z21hZHIuc3RhcnQsCisJCQkJCWdndHQt
Pm1hcHBhYmxlX2VuZCkpIHsKKwkJCWdndHQtPnZtLmNsZWFudXAoJmdndHQtPnZtKTsKKwkJCXJl
dHVybiAtRUlPOworCQl9CiAKLQlnZ3R0LT5tdHJyID0gYXJjaF9waHlzX3djX2FkZChnZ3R0LT5n
bWFkci5zdGFydCwgZ2d0dC0+bWFwcGFibGVfZW5kKTsKKwkJZ2d0dC0+bXRyciA9IGFyY2hfcGh5
c193Y19hZGQoZ2d0dC0+Z21hZHIuc3RhcnQsCisJCQkJCSAgICAgIGdndHQtPm1hcHBhYmxlX2Vu
ZCk7CisJfQogCiAJaTkxNV9nZ3R0X2luaXRfZmVuY2VzKGdndHQpOwogCi0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
