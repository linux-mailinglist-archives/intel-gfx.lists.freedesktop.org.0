Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8D89AB9E
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 11:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AFB46EC4C;
	Fri, 23 Aug 2019 09:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45B6C6EC4C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 09:49:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 02:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="180647068"
Received: from wo73065l01s008.fi.intel.com ([10.237.72.188])
 by fmsmga007.fm.intel.com with ESMTP; 23 Aug 2019 02:49:05 -0700
From: Simon Ser <simon.ser@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 12:49:46 +0300
Message-Id: <20190823094946.5708-1-simon.ser@intel.com>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: add port info to debugfs
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
Cc: Manasi Navare <nanasi.d.navare@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBhZGRzIGEgbGluZSB3aXRoIHRoZSBwb3J0IG5hbWUgdG8gY29ubmVjdG9ycyBp
bgpkZWJ1Z2ZzL2k5MTVfZGVidWdfaW5mby4gSWYgdGhlIHBvcnQgaXMgVHlwZS1DLCB0aGUgVHlw
ZS1DIHBvcnQgbnVtYmVyIGlzCnByaW50ZWQgdG9vLgoKU2lnbmVkLW9mZi1ieTogU2ltb24gU2Vy
IDxzaW1vbi5zZXJAaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
PgpDYzogTWFuYXNpIE5hdmFyZSA8bmFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KUmV2aWV3ZWQt
Ynk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCgpSZXNlbmRpbmcgdjIgdG8g
dGhlIGNvcnJlY3QgbWFpbGluZyBsaXN0LgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jIHwgMTAgKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IGIzOTIyNmQ3ZjhkMi4uNGJhNTA4
Yzk1NGY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMjU1Nyw5ICsyNTU3
LDExIEBAIHN0YXRpYyB2b2lkIGludGVsX2x2ZHNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCiBz
dGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCiAJCQkJ
IHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiB7CisJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICppbnRlbF9jb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsK
IAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2RlciA9IGludGVsX2Nvbm5lY3Rvci0+
ZW5jb2RlcjsKIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZTsKKwllbnVtIHRjX3BvcnQg
dGNfcG9ydDsKCiAJc2VxX3ByaW50ZihtLCAiY29ubmVjdG9yICVkOiB0eXBlICVzLCBzdGF0dXM6
ICVzXG4iLAogCQkgICBjb25uZWN0b3ItPmJhc2UuaWQsIGNvbm5lY3Rvci0+bmFtZSwKQEAgLTI1
NzgsNiArMjU4MCwxNCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0b3JfaW5mbyhzdHJ1Y3Qg
c2VxX2ZpbGUgKm0sCiAJaWYgKCFpbnRlbF9lbmNvZGVyKQogCQlyZXR1cm47CgorCWlmIChpbnRl
bF9lbmNvZGVyLT5wb3J0ICE9IFBPUlRfTk9ORSkgeworCQlzZXFfcHJpbnRmKG0sICJcdHBvcnQ6
ICVjIiwgcG9ydF9uYW1lKGludGVsX2VuY29kZXItPnBvcnQpKTsKKwkJdGNfcG9ydCA9IGludGVs
X3BvcnRfdG9fdGMoaTkxNSwgaW50ZWxfZW5jb2Rlci0+cG9ydCk7CisJCWlmICh0Y19wb3J0ICE9
IFBPUlRfVENfTk9ORSkKKwkJCXNlcV9wcmludGYobSwgIi9UQyMlZCIsIHRjX3BvcnQgKyAxKTsK
KwkJc2VxX3ByaW50ZihtLCAiXG4iKTsKKwl9CisKIAlzd2l0Y2ggKGNvbm5lY3Rvci0+Y29ubmVj
dG9yX3R5cGUpIHsKIAljYXNlIERSTV9NT0RFX0NPTk5FQ1RPUl9EaXNwbGF5UG9ydDoKIAljYXNl
IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFA6Ci0tCjIuMjIuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
