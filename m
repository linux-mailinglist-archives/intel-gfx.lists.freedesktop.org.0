Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9277B7B83
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C9F6F7DE;
	Thu, 19 Sep 2019 14:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 893D46F7DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:04:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:17 -0700
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="178060389"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 07:04:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 17:03:48 +0300
Message-Id: <b65bba2f8e43f29202f89b61118e10cd17e326cd.1568901239.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1568901239.git.jani.nikula@intel.com>
References: <cover.1568901239.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/13] drm/i915: add i915_driver_modeset_remove()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGNvbXBsZXRlbmVzcywgYWRkIGNvdW50ZXJwYXJ0IHRvIGk5MTVfZHJpdmVyX21vZGVzZXRf
cHJvYmUoKSBhbmQKcmVtb3ZlIHRoZSBhc3ltbWV0cnkgaW4gdGhlIHByb2JlL3JlbW92ZSBwYXJ0
cy4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
IHwgMjUgKysrKysrKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IDk5
MDRmNzYyZjRiYi4uNGNiOTVmZDliMzVkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTQy
Miw2ICs0MjIsMjAgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYpCiAJcmV0dXJuIHJldDsKIH0KIAorc3RhdGljIHZvaWQgaTkxNV9k
cml2ZXJfbW9kZXNldF9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJ
c3RydWN0IHBjaV9kZXYgKnBkZXYgPSBpOTE1LT5kcm0ucGRldjsKKworCWludGVsX21vZGVzZXRf
ZHJpdmVyX3JlbW92ZSgmaTkxNS0+ZHJtKTsKKworCWludGVsX2Jpb3NfZHJpdmVyX3JlbW92ZShp
OTE1KTsKKworCXZnYV9zd2l0Y2hlcm9vX3VucmVnaXN0ZXJfY2xpZW50KHBkZXYpOworCXZnYV9j
bGllbnRfcmVnaXN0ZXIocGRldiwgTlVMTCwgTlVMTCwgTlVMTCk7CisKKwlpbnRlbF9jc3JfdWNv
ZGVfZmluaShpOTE1KTsKK30KKwogc3RhdGljIHZvaWQgaW50ZWxfaW5pdF9kcGlvKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAkvKgpAQCAtMTU4Niw4ICsxNjAwLDYgQEAg
aW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3Qg
cGNpX2RldmljZV9pZCAqZW50KQogCiB2b2lkIGk5MTVfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKLQlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGk5MTUtPmRy
bS5wZGV2OwotCiAJZGlzYWJsZV9ycG1fd2FrZXJlZl9hc3NlcnRzKCZpOTE1LT5ydW50aW1lX3Bt
KTsKIAogCWk5MTVfZHJpdmVyX3VucmVnaXN0ZXIoaTkxNSk7CkBAIC0xNjA4LDE0ICsxNjIwLDcg
QEAgdm9pZCBpOTE1X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
CiAKIAlpbnRlbF9ndnRfZHJpdmVyX3JlbW92ZShpOTE1KTsKIAotCWludGVsX21vZGVzZXRfZHJp
dmVyX3JlbW92ZSgmaTkxNS0+ZHJtKTsKLQotCWludGVsX2Jpb3NfZHJpdmVyX3JlbW92ZShpOTE1
KTsKLQotCXZnYV9zd2l0Y2hlcm9vX3VucmVnaXN0ZXJfY2xpZW50KHBkZXYpOwotCXZnYV9jbGll
bnRfcmVnaXN0ZXIocGRldiwgTlVMTCwgTlVMTCwgTlVMTCk7Ci0KLQlpbnRlbF9jc3JfdWNvZGVf
ZmluaShpOTE1KTsKKwlpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZShpOTE1KTsKIAogCS8qIEZy
ZWUgZXJyb3Igc3RhdGUgYWZ0ZXIgaW50ZXJydXB0cyBhcmUgZnVsbHkgZGlzYWJsZWQuICovCiAJ
Y2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZpOTE1LT5ndC5oYW5nY2hlY2sud29yayk7Ci0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
