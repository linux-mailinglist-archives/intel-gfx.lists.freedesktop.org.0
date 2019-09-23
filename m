Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D677BB23F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FAA6E859;
	Mon, 23 Sep 2019 10:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B8F6E84D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:30:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 03:30:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="182494650"
Received: from mrnaghsh-mobl1.amr.corp.intel.com (HELO
 dk-ThinkPad-X260.fios-router.home) ([10.254.177.243])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2019 03:30:11 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 03:29:29 -0700
Message-Id: <20190923102935.5860-4-dhinakaran.pandiyan@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v3 3/9] drm/i915: Move CCS stride alignment W/A
 inside intel_fb_stride_alignment
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RWFzaWVyIHRvIHJlYWQgaWYgYWxsIHRoZSBhbGlnbm1lbnQgY2hhbmdlcyBhcmUgaW4gb25lIHBs
YWNlIGFuZCBjb250YWluZWQKd2l0aGluIGEgZnVuY3Rpb24uCgpDYzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRo
aW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMzEgKysrKysrKysrKy0tLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGE5NGQxNDVkZDA0OC4uYzQz
N2YwMGMyMDcyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtMjU1MSw3ICsyNTUxLDIyIEBAIGludGVsX2ZiX3N0cmlkZV9hbGlnbm1lbnQoY29u
c3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSkKIAkJZWxzZQog
CQkJcmV0dXJuIDY0OwogCX0gZWxzZSB7Ci0JCXJldHVybiBpbnRlbF90aWxlX3dpZHRoX2J5dGVz
KGZiLCBjb2xvcl9wbGFuZSk7CisJCXUzMiB0aWxlX3dpZHRoID0gaW50ZWxfdGlsZV93aWR0aF9i
eXRlcyhmYiwgY29sb3JfcGxhbmUpOworCisJCS8qCisJCSAqIERpc3BsYXkgV0EgIzA1MzE6IHNr
bCxieHQsa2JsLGdsaworCQkgKgorCQkgKiBSZW5kZXIgZGVjb21wcmVzc2lvbiBhbmQgcGxhbmUg
d2lkdGggPiAzODQwCisJCSAqIGNvbWJpbmVkIHdpdGggaG9yaXpvbnRhbCBwYW5uaW5nIHJlcXVp
cmVzIHRoZQorCQkgKiBwbGFuZSBzdHJpZGUgdG8gYmUgYSBtdWx0aXBsZSBvZiA0LiBXZSdsbCBq
dXN0CisJCSAqIHJlcXVpcmUgdGhlIGVudGlyZSBmYiB0byBhY2NvbW1vZGF0ZSB0aGF0IHRvIGF2
b2lkCisJCSAqIHBvdGVudGlhbCBydW50aW1lIGVycm9ycyBhdCBwbGFuZSBjb25maWd1cmF0aW9u
IHRpbWUuCisJCSAqLworCQlpZiAoSVNfR0VOKGRldl9wcml2LCA5KSAmJiBpc19jY3NfbW9kaWZp
ZXIoZmItPm1vZGlmaWVyKSAmJgorCQkgICAgY29sb3JfcGxhbmUgPT0gMCAmJiBmYi0+d2lkdGgg
PiAzODQwKQorCQkJdGlsZV93aWR0aCAqPSA0OworCisJCXJldHVybiB0aWxlX3dpZHRoOwogCX0K
IH0KIApAQCAtMTU3MDUsMjAgKzE1NzIwLDYgQEAgc3RhdGljIGludCBpbnRlbF9mcmFtZWJ1ZmZl
cl9pbml0KHN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlciAqaW50ZWxfZmIsCiAJCX0KIAogCQlzdHJp
ZGVfYWxpZ25tZW50ID0gaW50ZWxfZmJfc3RyaWRlX2FsaWdubWVudChmYiwgaSk7Ci0KLQkJLyoK
LQkJICogRGlzcGxheSBXQSAjMDUzMTogc2tsLGJ4dCxrYmwsZ2xrCi0JCSAqCi0JCSAqIFJlbmRl
ciBkZWNvbXByZXNzaW9uIGFuZCBwbGFuZSB3aWR0aCA+IDM4NDAKLQkJICogY29tYmluZWQgd2l0
aCBob3Jpem9udGFsIHBhbm5pbmcgcmVxdWlyZXMgdGhlCi0JCSAqIHBsYW5lIHN0cmlkZSB0byBi
ZSBhIG11bHRpcGxlIG9mIDQuIFdlJ2xsIGp1c3QKLQkJICogcmVxdWlyZSB0aGUgZW50aXJlIGZi
IHRvIGFjY29tbW9kYXRlIHRoYXQgdG8gYXZvaWQKLQkJICogcG90ZW50aWFsIHJ1bnRpbWUgZXJy
b3JzIGF0IHBsYW5lIGNvbmZpZ3VyYXRpb24gdGltZS4KLQkJICovCi0JCWlmIChJU19HRU4oZGV2
X3ByaXYsIDkpICYmIGkgPT0gMCAmJiBmYi0+d2lkdGggPiAzODQwICYmCi0JCSAgICBpc19jY3Nf
bW9kaWZpZXIoZmItPm1vZGlmaWVyKSkKLQkJCXN0cmlkZV9hbGlnbm1lbnQgKj0gNDsKLQogCQlp
ZiAoZmItPnBpdGNoZXNbaV0gJiAoc3RyaWRlX2FsaWdubWVudCAtIDEpKSB7CiAJCQlEUk1fREVC
VUdfS01TKCJwbGFuZSAlZCBwaXRjaCAoJWQpIG11c3QgYmUgYXQgbGVhc3QgJXUgYnl0ZSBhbGln
bmVkXG4iLAogCQkJCSAgICAgIGksIGZiLT5waXRjaGVzW2ldLCBzdHJpZGVfYWxpZ25tZW50KTsK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
