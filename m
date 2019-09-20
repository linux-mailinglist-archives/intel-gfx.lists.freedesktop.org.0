Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1638CB9765
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 20:54:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A3A76FD95;
	Fri, 20 Sep 2019 18:53:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C1DF6FD95
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 18:53:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 11:53:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="202554681"
Received: from ericferx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.24])
 by fmsmga001.fm.intel.com with ESMTP; 20 Sep 2019 11:53:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 21:53:42 +0300
Message-Id: <20190920185347.17760-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915: add
 i915_driver_modeset_remove()
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
Cc: jani.nikula@intel.com, chris@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGNvbXBsZXRlbmVzcywgYWRkIGNvdW50ZXJwYXJ0IHRvIGk5MTVfZHJpdmVyX21vZGVzZXRf
cHJvYmUoKSBhbmQKcmVtb3ZlIHRoZSBhc3ltbWV0cnkgaW4gdGhlIHByb2JlL3JlbW92ZSBwYXJ0
cy4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAy
NSArKysrKysrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggOTkwNGY3
NjJmNGJiLi40Y2I5NWZkOWIzNWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtNDIyLDYg
KzQyMiwyMCBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRy
bV9kZXZpY2UgKmRldikKIAlyZXR1cm4gcmV0OwogfQogCitzdGF0aWMgdm9pZCBpOTE1X2RyaXZl
cl9tb2Rlc2V0X3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sKKwlzdHJ1
Y3QgcGNpX2RldiAqcGRldiA9IGk5MTUtPmRybS5wZGV2OworCisJaW50ZWxfbW9kZXNldF9kcml2
ZXJfcmVtb3ZlKCZpOTE1LT5kcm0pOworCisJaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKGk5MTUp
OworCisJdmdhX3N3aXRjaGVyb29fdW5yZWdpc3Rlcl9jbGllbnQocGRldik7CisJdmdhX2NsaWVu
dF9yZWdpc3RlcihwZGV2LCBOVUxMLCBOVUxMLCBOVUxMKTsKKworCWludGVsX2Nzcl91Y29kZV9m
aW5pKGk5MTUpOworfQorCiBzdGF0aWMgdm9pZCBpbnRlbF9pbml0X2RwaW8oc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCS8qCkBAIC0xNTg2LDggKzE2MDAsNiBAQCBpbnQg
aTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lf
ZGV2aWNlX2lkICplbnQpCiAKIHZvaWQgaTkxNV9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQogewotCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaTkxNS0+ZHJtLnBk
ZXY7Ci0KIAlkaXNhYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMoJmk5MTUtPnJ1bnRpbWVfcG0pOwog
CiAJaTkxNV9kcml2ZXJfdW5yZWdpc3RlcihpOTE1KTsKQEAgLTE2MDgsMTQgKzE2MjAsNyBAQCB2
b2lkIGk5MTVfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAog
CWludGVsX2d2dF9kcml2ZXJfcmVtb3ZlKGk5MTUpOwogCi0JaW50ZWxfbW9kZXNldF9kcml2ZXJf
cmVtb3ZlKCZpOTE1LT5kcm0pOwotCi0JaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwot
Ci0JdmdhX3N3aXRjaGVyb29fdW5yZWdpc3Rlcl9jbGllbnQocGRldik7Ci0JdmdhX2NsaWVudF9y
ZWdpc3RlcihwZGV2LCBOVUxMLCBOVUxMLCBOVUxMKTsKLQotCWludGVsX2Nzcl91Y29kZV9maW5p
KGk5MTUpOworCWk5MTVfZHJpdmVyX21vZGVzZXRfcmVtb3ZlKGk5MTUpOwogCiAJLyogRnJlZSBl
cnJvciBzdGF0ZSBhZnRlciBpbnRlcnJ1cHRzIGFyZSBmdWxseSBkaXNhYmxlZC4gKi8KIAljYW5j
ZWxfZGVsYXllZF93b3JrX3N5bmMoJmk5MTUtPmd0LmhhbmdjaGVjay53b3JrKTsKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
