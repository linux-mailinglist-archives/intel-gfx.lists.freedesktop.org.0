Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7F820BD1D
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 01:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3AB6E4FE;
	Fri, 26 Jun 2020 23:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F5696E4F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 23:25:15 +0000 (UTC)
IronPort-SDR: eX+CnpRqvvA5joo73/7p4OB7z1hlfzyBISvoaUnVqUTYu6PsYDamvaM/lzl/622J7mc+370shg
 W2HuGjs3mPaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="125694680"
X-IronPort-AV: E=Sophos;i="5.75,285,1589266800"; d="scan'208";a="125694680"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 16:25:14 -0700
IronPort-SDR: f0gAH5pEOy0gGjnsWO7ZT3HwG/iK0uKGZZ2F7XqkloAJiyprjr5JDIW+ogge99BOZWapcHaPdm
 kMBYiDgkWfjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,285,1589266800"; d="scan'208";a="424222124"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 26 Jun 2020 16:25:14 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 16:26:41 -0700
Message-Id: <20200626232641.4557-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200626232641.4557-1-manasi.d.navare@intel.com>
References: <20200626232641.4557-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/dp: Helper to check for DDI BUF
 status to get active
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

QmFzZWQgb24gdGhlIHBsYXRmb3JtLCBCc3BlYyBleHBlY3RzIHVzIHRvIHdhaXQgb3IgcG9sbCB3
aXRoCnRpbWVvdXQgZm9yIERESSBCVUYgSURMRSBiaXQgdG8gYmUgc2V0IHRvIDAgKG5vbiBpZGxl
KSBvciBnZXQgYWN0aXZlCmFmdGVyIGVuYWJsaW5nIERESV9CVUZfQ1RMLgoKdjQ6CiogVXNlIHRo
ZSB0aW1lb3V0IGZvciBHTEsgKFZpbGxlKQp2MzoKKiBBZGQgYSBuZXcgZnVuY3Rpb24gX2FjdGl2
ZSBmb3IgRERJIEJVRiBDVEwgdG8gYmUgbm9uIGlkbGUgKFZpbGxlKQp2MjoKKiBCYXNlZCBvbiBw
bGF0Zm9ybSwgZml4ZWQgZGVsYXkgb3IgcG9sbCAoVmlsbGUpCiogVXNlIGEgaGVscGVyIHRvIGRv
IHRoaXMgKEltcmUsIFZpbGxlKQoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDE2ICsrKysrKysrKysr
KysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggMDUyYTc0NjI1YTYx
Li45NGQ1N2I1NzEzOWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YwpAQCAtMTE5NSw2ICsxMTk1LDIwIEBAIHN0YXRpYyB2b2lkIGludGVsX3dhaXRfZGRpX2J1Zl9p
ZGxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCXBvcnRfbmFtZShwb3J0
KSk7CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX3dhaXRfZGRpX2J1Zl9hY3RpdmUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAgICAgIGVudW0gcG9ydCBwb3J0KQorewor
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTAgJiYgIUlTX0dFTUlOSUxBS0UoZGV2X3ByaXYp
ICkgeworCQl1c2xlZXBfcmFuZ2UoNjAwLCAxMDAwKTsKKwkJcmV0dXJuOworCX0KKworCWlmICh3
YWl0X2Zvcl91cyghKGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERESV9CVUZfQ1RMKHBvcnQpKSAm
CisJCQkgIERESV9CVUZfSVNfSURMRSksIDYwMCkpCisJCWRybV9lcnIoJmRldl9wcml2LT5kcm0s
ICJUaW1lb3V0IHdhaXRpbmcgZm9yIERESSBCVUYgJWMgdG8gZ2V0IGFjdGl2ZVxuIiwKKwkJCXBv
cnRfbmFtZShwb3J0KSk7Cit9CisKIHN0YXRpYyB1MzIgaHN3X3BsbF90b19kZGlfcGxsX3NlbChj
b25zdCBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCkKIHsKIAlzd2l0Y2ggKHBsbC0+aW5m
by0+aWQpIHsKQEAgLTQwMjAsNyArNDAzNCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9wcmVw
YXJlX2xpbmtfcmV0cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCWludGVsX2RlX3dy
aXRlKGRldl9wcml2LCBERElfQlVGX0NUTChwb3J0KSwgaW50ZWxfZHAtPkRQKTsKIAlpbnRlbF9k
ZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYsIERESV9CVUZfQ1RMKHBvcnQpKTsKIAotCXVkZWxheSg2
MDApOworCWludGVsX3dhaXRfZGRpX2J1Zl9hY3RpdmUoZGV2X3ByaXYsIHBvcnQpOwogfQogCiBz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfc2V0X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
