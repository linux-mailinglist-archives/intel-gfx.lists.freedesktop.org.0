Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D13349BE4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143576EE5F;
	Thu, 25 Mar 2021 21:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431276EE5B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:30 +0000 (UTC)
IronPort-SDR: 23VsKL6XjXoIB5eKyOdvLG5G6fjKKp523wukgYVPc6wu3/9zAw3Y5QIIHOgYoc9lPSY2QqCAap
 rSaVC3RqPb4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171005069"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171005069"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:30 -0700
IronPort-SDR: u4Xs8XTG2g1cw2U99T7DDvfH2flWnHz0wZxB15AnqRJerdFv3xQ4iyPNAlbn7lghqHcqGKbnDV
 pXPUs7XWexYg==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235671"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:47:57 +0200
Message-Id: <20210325214808.2071517-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 14/25] drm/i915/intel_fb: Factor out
 calc_plane_aligned_offset()
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

RmFjdG9yIG91dCB0byBhIG5ldyBmdW5jdGlvbiB0aGUgbG9naWMgdG8gY29udmVydCB0aGUgRkIg
cGxhbmUgeC95CnZhbHVlcyB0byBhIHRpbGUgc2l6ZSBiYXNlZCBvZmZzZXQgYW5kIG5ldyB4L3kg
cmVsYXRpdmUgdG8gdGhpcyBvZmZzZXQuClRoaXMgbWFrZXMgaW50ZWxfZmlsbF9mYl9pbmZvKCkg
YW5kIGludGVsX3BsYW5lX3JlbWFwX2d0dCgpIHNvbWV3aGF0Cm1vcmUgcmVhZGFibGUuCgpTaWdu
ZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYyB8IDI1ICsrKysrKysrKysrKysrKyst
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYwppbmRleCAyNWI5NjcyMjBj
ZjA0Li4xNDAwYTMxZjBkZDZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
Yi5jCkBAIC01NTgsNiArNTU4LDIwIEBAIHN0YXRpYyBpbnQgY29udmVydF9wbGFuZV9vZmZzZXRf
dG9feHkoY29uc3Qgc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICpmYiwgaW50IGNvCiAJcmV0dXJu
IDA7CiB9CiAKK3N0YXRpYyB1MzIgY2FsY19wbGFuZV9hbGlnbmVkX29mZnNldChjb25zdCBzdHJ1
Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmZiLCBpbnQgY29sb3JfcGxhbmUsIGludCAqeCwgaW50ICp5
KQoreworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShmYi0+YmFzZS5k
ZXYpOworCXVuc2lnbmVkIGludCB0aWxlX3NpemUgPSBpbnRlbF90aWxlX3NpemUoaTkxNSk7CisJ
dTMyIG9mZnNldDsKKworCW9mZnNldCA9IGludGVsX2NvbXB1dGVfYWxpZ25lZF9vZmZzZXQoaTkx
NSwgeCwgeSwgJmZiLT5iYXNlLCBjb2xvcl9wbGFuZSwKKwkJCQkJICAgICAgZmItPmJhc2UucGl0
Y2hlc1tjb2xvcl9wbGFuZV0sCisJCQkJCSAgICAgIERSTV9NT0RFX1JPVEFURV8wLAorCQkJCQkg
ICAgICB0aWxlX3NpemUpOworCisJcmV0dXJuIG9mZnNldCAvIHRpbGVfc2l6ZTsKK30KKwogLyoK
ICAqIFNldHVwIHRoZSByb3RhdGVkIHZpZXcgZm9yIGFuIEZCIHBsYW5lIGFuZCByZXR1cm4gdGhl
IHNpemUgdGhlIEdUVCBtYXBwaW5nCiAgKiByZXF1aXJlcyBmb3IgdGhpcyB2aWV3LgpAQCAtNjYw
LDExICs2NzQsNyBAQCBpbnQgaW50ZWxfZmlsbF9mYl9pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYgogCQlpbnRlbF9mYi0+bm9ybWFs
W2ldLnggPSB4OwogCQlpbnRlbF9mYi0+bm9ybWFsW2ldLnkgPSB5OwogCi0JCW9mZnNldCA9IGlu
dGVsX2NvbXB1dGVfYWxpZ25lZF9vZmZzZXQoaTkxNSwgJngsICZ5LCBmYiwgaSwKLQkJCQkJCSAg
ICAgIGZiLT5waXRjaGVzW2ldLAotCQkJCQkJICAgICAgRFJNX01PREVfUk9UQVRFXzAsCi0JCQkJ
CQkgICAgICB0aWxlX3NpemUpOwotCQlvZmZzZXQgLz0gdGlsZV9zaXplOworCQlvZmZzZXQgPSBj
YWxjX3BsYW5lX2FsaWduZWRfb2Zmc2V0KGludGVsX2ZiLCBpLCAmeCwgJnkpOwogCiAJCWlmICgh
aXNfc3VyZmFjZV9saW5lYXIoZmIsIGkpKSB7CiAJCQlzdHJ1Y3QgaW50ZWxfcmVtYXBwZWRfcGxh
bmVfaW5mbyBwbGFuZV9pbmZvOwpAQCAtNzczLDEwICs3ODMsNyBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9wbGFuZV9yZW1hcF9ndHQoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkK
IAkJeCArPSBpbnRlbF9mYi0+bm9ybWFsW2ldLng7CiAJCXkgKz0gaW50ZWxfZmItPm5vcm1hbFtp
XS55OwogCi0JCW9mZnNldCA9IGludGVsX2NvbXB1dGVfYWxpZ25lZF9vZmZzZXQoaTkxNSwgJngs
ICZ5LAotCQkJCQkJICAgICAgZmIsIGksIGZiLT5waXRjaGVzW2ldLAotCQkJCQkJICAgICAgRFJN
X01PREVfUk9UQVRFXzAsIHRpbGVfc2l6ZSk7Ci0JCW9mZnNldCAvPSB0aWxlX3NpemU7CisJCW9m
ZnNldCA9IGNhbGNfcGxhbmVfYWxpZ25lZF9vZmZzZXQoaW50ZWxfZmIsIGksICZ4LCAmeSk7CiAK
IAkJZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgaSA+PSBBUlJBWV9TSVpFKGluZm8tPnBsYW5lKSk7
CiAJCWluZm8tPnBsYW5lW2ldLm9mZnNldCA9IG9mZnNldDsKLS0gCjIuMjUuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
