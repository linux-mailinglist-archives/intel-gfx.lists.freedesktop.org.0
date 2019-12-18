Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCF1124CD3
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:11:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0812E6E882;
	Wed, 18 Dec 2019 16:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C766E8A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:11:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:11:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="218189662"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2019 08:11:41 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 18:10:58 +0200
Message-Id: <20191218161105.30638-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/15] drm/i915: Skip rotated offset adjustment
 for unsupported modifiers
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+
CgpEdXJpbmcgZnJhbWVidWZmZXIgY3JlYXRpb24sIHdlIHByZS1jb21wdXRlIG9mZnNldHMgZm9y
IDkwLzI3MCBwbGFuZQpyb3RhdGlvbi4gSG93ZXZlciwgb25seSBZIGFuZCBZZiBtb2RpZmllcnMg
c3VwcG9ydCA5MC8yNzAgcm90YXRpb24uIFNvLApza2lwIHRoZSBjYWxjdWxhdGlvbnMgZm9yIG90
aGVyIG1vZGlmaWVycy4KCnYyOiBBZGQgYSBib3VuZHMgY2hlY2sgV0FSTiBmb3IgdGhlIHJvdGF0
aW9uIGluZm8gYXJyYXkuCgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNp
Z25lZC1vZmYtYnk6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2ICsrKysr
LQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggN2M1MjU5MTE3
MmUxLi5iNGViMGQyMTQ3ZjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCkBAIC0yOTI2LDEzICsyOTI2LDE2IEBAIGludGVsX2ZpbGxfZmJfaW5mbyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJCQkgICAgICB0aWxlX3NpemUp
OwogCQlvZmZzZXQgLz0gdGlsZV9zaXplOwogCi0JCWlmICghaXNfc3VyZmFjZV9saW5lYXIoZmIs
IGkpKSB7CisJCS8qIFkgb3IgWWYgbW9kaWZpZXJzIHJlcXVpcmVkIGZvciA5MC8yNzAgcm90YXRp
b24gKi8KKwkJaWYgKGZiLT5tb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRCB8fAor
CQkgICAgZmItPm1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRCkgewogCQkJdW5z
aWduZWQgaW50IHRpbGVfd2lkdGgsIHRpbGVfaGVpZ2h0OwogCQkJdW5zaWduZWQgaW50IHBpdGNo
X3RpbGVzOwogCQkJc3RydWN0IGRybV9yZWN0IHI7CiAKIAkJCWludGVsX3RpbGVfZGltcyhmYiwg
aSwgJnRpbGVfd2lkdGgsICZ0aWxlX2hlaWdodCk7CiAKKwkJCVdBUk5fT04oaSA+PSBBUlJBWV9T
SVpFKHJvdF9pbmZvLT5wbGFuZSkpOwogCQkJcm90X2luZm8tPnBsYW5lW2ldLm9mZnNldCA9IG9m
ZnNldDsKIAkJCXJvdF9pbmZvLT5wbGFuZVtpXS5zdHJpZGUgPSBESVZfUk9VTkRfVVAoZmItPnBp
dGNoZXNbaV0sIHRpbGVfd2lkdGggKiBjcHApOwogCQkJcm90X2luZm8tPnBsYW5lW2ldLndpZHRo
ID0gRElWX1JPVU5EX1VQKHggKyB3aWR0aCwgdGlsZV93aWR0aCk7CkBAIC0zMDYzLDYgKzMwNjYs
NyBAQCBpbnRlbF9wbGFuZV9yZW1hcF9ndHQoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFu
ZV9zdGF0ZSkKIAkJCQkJCSAgICAgIERSTV9NT0RFX1JPVEFURV8wLCB0aWxlX3NpemUpOwogCQlv
ZmZzZXQgLz0gdGlsZV9zaXplOwogCisJCVdBUk5fT04oaSA+PSBBUlJBWV9TSVpFKGluZm8tPnBs
YW5lKSk7CiAJCWluZm8tPnBsYW5lW2ldLm9mZnNldCA9IG9mZnNldDsKIAkJaW5mby0+cGxhbmVb
aV0uc3RyaWRlID0gRElWX1JPVU5EX1VQKGZiLT5waXRjaGVzW2ldLAogCQkJCQkJICAgICB0aWxl
X3dpZHRoICogY3BwKTsKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
