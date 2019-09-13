Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35573B28C5
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 01:06:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB856F4A1;
	Fri, 13 Sep 2019 23:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7763F6F4A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 23:06:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 16:06:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="360924428"
Received: from unerlige-desk.jf.intel.com ([10.165.21.198])
 by orsmga005.jf.intel.com with ESMTP; 13 Sep 2019 16:06:20 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 13 Sep 2019 16:06:20 -0700
Message-Id: <20190913230620.15906-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190913230620.15906-1-umesh.nerlige.ramappa@intel.com>
References: <20190913230620.15906-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/perf: Add the report format with a
 non-power-of-2 size
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

QWRkIHRoZSByZXBvcnQgZm9ybWF0IHdpdGggc2l6ZSB0aGF0IGlzIG5vdCBhIHBvd2VyIG9mIDIu
IFRoaXMgYWxsb3dzCnVzZSBvZiBhbGwgcmVwb3J0IGZvcm1hdHMgZGVmaW5lZCBpbiBoYXJkd2Fy
ZS4KCk1vdmUgdGhlIGZvcm1hdCBkZWZpbml0aW9uIHRvIGVuZCB0byBhdm9pZCBicmVha2luZyBB
UEkgKExpb25lbCkKClNpZ25lZC1vZmYtYnk6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gu
bmVybGlnZS5yYW1hcHBhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYyB8ICAyICstCiBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICB8IDExICsr
KysrKy0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDQ4MmZjYTNkYTdkZS4uNzgxZmM1ODky
NDkzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMzEyLDExICszMTIsMTEgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBpOTE1X29hX2Zvcm1hdCBoc3dfb2FfZm9ybWF0c1tJOTE1X09BX0ZP
Uk1BVF9NQVhdID0gewogCVtJOTE1X09BX0ZPUk1BVF9BMTNdCSAgICA9IHsgMCwgNjQgfSwKIAlb
STkxNV9PQV9GT1JNQVRfQTI5XQkgICAgPSB7IDEsIDEyOCB9LAogCVtJOTE1X09BX0ZPUk1BVF9B
MTNfQjhfQzhdICA9IHsgMiwgMTI4IH0sCi0JLyogQTI5X0I4X0M4IERpc2FsbG93ZWQgYXMgMTky
IGJ5dGVzIGRvZXNuJ3QgZmFjdG9yIGludG8gYnVmZmVyIHNpemUgKi8KIAlbSTkxNV9PQV9GT1JN
QVRfQjRfQzhdCSAgICA9IHsgNCwgNjQgfSwKIAlbSTkxNV9PQV9GT1JNQVRfQTQ1X0I4X0M4XSAg
PSB7IDUsIDI1NiB9LAogCVtJOTE1X09BX0ZPUk1BVF9CNF9DOF9BMTZdICA9IHsgNiwgMTI4IH0s
CiAJW0k5MTVfT0FfRk9STUFUX0M0X0I4XQkgICAgPSB7IDcsIDY0IH0sCisJW0k5MTVfT0FfRk9S
TUFUX0EyOV9COF9DOF0gID0geyAzLCAxOTIgfSwKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aTkxNV9vYV9mb3JtYXQgZ2VuOF9wbHVzX29hX2Zvcm1hdHNbSTkxNV9PQV9GT1JNQVRfTUFYXSA9
IHsKZGlmZiAtLWdpdCBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFw
aS9kcm0vaTkxNV9kcm0uaAppbmRleCA0NjlkYzUxMmNjYTMuLjRlMmQ0ZTQ5MmIwNiAxMDA2NDQK
LS0tIGEvaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oCisrKyBiL2luY2x1ZGUvdWFwaS9kcm0v
aTkxNV9kcm0uaApAQCAtMTgyOSwxMiArMTgyOSwxMyBAQCBlbnVtIGRybV9pOTE1X29hX2Zvcm1h
dCB7CiAJSTkxNV9PQV9GT1JNQVRfQjRfQzgsCSAgICAvKiBIU1cgb25seSAqLwogCUk5MTVfT0Ff
Rk9STUFUX0E0NV9COF9DOCwgICAvKiBIU1cgb25seSAqLwogCUk5MTVfT0FfRk9STUFUX0I0X0M4
X0ExNiwgICAvKiBIU1cgb25seSAqLwotCUk5MTVfT0FfRk9STUFUX0M0X0I4LAkgICAgLyogSFNX
KyAqLworCUk5MTVfT0FfRk9STUFUX0M0X0I4LAkgICAgLyogSFNXIG9ubHkgKi8KIAotCS8qIEdl
bjgrICovCi0JSTkxNV9PQV9GT1JNQVRfQTEyLAotCUk5MTVfT0FfRk9STUFUX0ExMl9COF9DOCwK
LQlJOTE1X09BX0ZPUk1BVF9BMzJ1NDBfQTR1MzJfQjhfQzgsCisJSTkxNV9PQV9GT1JNQVRfQTEy
LAkJCS8qIEdlbjgrICovCisJSTkxNV9PQV9GT1JNQVRfQTEyX0I4X0M4LAkJLyogR2VuOCsgKi8K
KwlJOTE1X09BX0ZPUk1BVF9BMzJ1NDBfQTR1MzJfQjhfQzgsCS8qIEdlbjgrICovCisKKwlJOTE1
X09BX0ZPUk1BVF9BMjlfQjhfQzgsICAgLyogSFNXIG9ubHkgKi8KIAogCUk5MTVfT0FfRk9STUFU
X01BWAkgICAgLyogbm9uLUFCSSAqLwogfTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
