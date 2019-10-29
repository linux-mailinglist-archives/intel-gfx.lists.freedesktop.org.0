Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D6DE8588
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:28:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A456EB3F;
	Tue, 29 Oct 2019 10:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D9956EB3F
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:28:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:28:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="374503807"
Received: from sslose-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.3.112])
 by orsmga005.jf.intel.com with ESMTP; 29 Oct 2019 03:28:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 10:28:46 +0000
Message-Id: <20191029102851.7497-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029102851.7497-1-matthew.auld@intel.com>
References: <20191029102851.7497-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/7] drm/i915: do not map aperture if it is
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
ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMzEgKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IGVlYmM3ZmVlODFlMi4u
NzNkYWQ4YzZhY2MyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtMjc3MCw3
ICsyNzcwLDkgQEAgc3RhdGljIHZvaWQgZ2d0dF9jbGVhbnVwX2h3KHN0cnVjdCBpOTE1X2dndHQg
KmdndHQpCiAJaTkxNV9hZGRyZXNzX3NwYWNlX2ZpbmkoJmdndHQtPnZtKTsKIAogCWFyY2hfcGh5
c193Y19kZWwoZ2d0dC0+bXRycik7Ci0JaW9fbWFwcGluZ19maW5pKCZnZ3R0LT5pb21hcCk7CisK
KwlpZiAoZ2d0dC0+aW9tYXAuc2l6ZSkKKwkJaW9fbWFwcGluZ19maW5pKCZnZ3R0LT5pb21hcCk7
CiB9CiAKIC8qKgpAQCAtMjk5NywxMCArMjk5OSwxMiBAQCBzdGF0aWMgaW50IGdlbjhfZ21jaF9w
cm9iZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCWludCBlcnI7CiAKIAkvKiBUT0RPOiBXZSdy
ZSBub3QgYXdhcmUgb2YgbWFwcGFibGUgY29uc3RyYWludHMgb24gZ2VuOCB5ZXQgKi8KLQlnZ3R0
LT5nbWFkciA9Ci0JCShzdHJ1Y3QgcmVzb3VyY2UpIERFRklORV9SRVNfTUVNKHBjaV9yZXNvdXJj
ZV9zdGFydChwZGV2LCAyKSwKLQkJCQkJCSBwY2lfcmVzb3VyY2VfbGVuKHBkZXYsIDIpKTsKLQln
Z3R0LT5tYXBwYWJsZV9lbmQgPSByZXNvdXJjZV9zaXplKCZnZ3R0LT5nbWFkcik7CisJaWYgKCFJ
U19ER0ZYKGRldl9wcml2KSkgeworCQlnZ3R0LT5nbWFkciA9CisJCQkoc3RydWN0IHJlc291cmNl
KSBERUZJTkVfUkVTX01FTShwY2lfcmVzb3VyY2Vfc3RhcnQocGRldiwgMiksCisJCQkJCQkJIHBj
aV9yZXNvdXJjZV9sZW4ocGRldiwgMikpOworCQlnZ3R0LT5tYXBwYWJsZV9lbmQgPSByZXNvdXJj
ZV9zaXplKCZnZ3R0LT5nbWFkcik7CisJfQogCiAJZXJyID0gcGNpX3NldF9kbWFfbWFzayhwZGV2
LCBETUFfQklUX01BU0soMzkpKTsKIAlpZiAoIWVycikKQEAgLTMyMjMsMTQgKzMyMjcsMTcgQEAg
c3RhdGljIGludCBnZ3R0X2luaXRfaHcoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAlpZiAoIUhB
U19MTEMoaTkxNSkgJiYgIUhBU19QUEdUVChpOTE1KSkKIAkJZ2d0dC0+dm0ubW0uY29sb3JfYWRq
dXN0ID0gaTkxNV9nZ3R0X2NvbG9yX2FkanVzdDsKIAotCWlmICghaW9fbWFwcGluZ19pbml0X3dj
KCZnZ3R0LT5pb21hcCwKLQkJCQlnZ3R0LT5nbWFkci5zdGFydCwKLQkJCQlnZ3R0LT5tYXBwYWJs
ZV9lbmQpKSB7Ci0JCWdndHQtPnZtLmNsZWFudXAoJmdndHQtPnZtKTsKLQkJcmV0dXJuIC1FSU87
Ci0JfQorCWlmIChnZ3R0LT5tYXBwYWJsZV9lbmQpIHsKKwkJaWYgKCFpb19tYXBwaW5nX2luaXRf
d2MoJmdndHQtPmlvbWFwLAorCQkJCQlnZ3R0LT5nbWFkci5zdGFydCwKKwkJCQkJZ2d0dC0+bWFw
cGFibGVfZW5kKSkgeworCQkJZ2d0dC0+dm0uY2xlYW51cCgmZ2d0dC0+dm0pOworCQkJcmV0dXJu
IC1FSU87CisJCX0KIAotCWdndHQtPm10cnIgPSBhcmNoX3BoeXNfd2NfYWRkKGdndHQtPmdtYWRy
LnN0YXJ0LCBnZ3R0LT5tYXBwYWJsZV9lbmQpOworCQlnZ3R0LT5tdHJyID0gYXJjaF9waHlzX3dj
X2FkZChnZ3R0LT5nbWFkci5zdGFydCwKKwkJCQkJICAgICAgZ2d0dC0+bWFwcGFibGVfZW5kKTsK
Kwl9CiAKIAlpOTE1X2dndHRfaW5pdF9mZW5jZXMoZ2d0dCk7CiAKLS0gCjIuMjAuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
