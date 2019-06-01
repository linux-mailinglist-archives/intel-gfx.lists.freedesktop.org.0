Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D217E32119
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Jun 2019 00:58:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77AC899C7;
	Sat,  1 Jun 2019 22:58:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5941899C7
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Jun 2019 22:58:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jun 2019 15:58:50 -0700
X-ExtLoop1: 1
Received: from lpepiak-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.139.205])
 by orsmga007.jf.intel.com with ESMTP; 01 Jun 2019 15:58:47 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Jun 2019 01:58:45 +0300
Message-Id: <20190601225845.12600-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: fix whitelist on Gen10+
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

R2VuMTAgYWRkZWQgYW4gYWRkaXRpb25hbCBOT0FfV1JJVEUgcmVnaXN0ZXIgKGhpZ2ggYml0cykg
YW5kIHdlIGZvcmdvdAp0byB3aGl0ZWxpc3QgaXQgZm9yIHVzZXJzcGFjZS4KCkZpeGVzOiA5NTY5
MGEwMmZiNWQ5NiAoImRybS9pOTE1L3BlcmY6IGVuYWJsZSBwZXJmIHN1cHBvcnQgb24gQ05MIikK
U2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgMSArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IGM0OTk1ZDVhMTZkMi4u
YmViZWE1YmE1YzI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMzAyNSw2ICszMDI1
LDcgQEAgc3RhdGljIGJvb2wgZ2VuOF9pc192YWxpZF9tdXhfYWRkcihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBhZGRyKQogc3RhdGljIGJvb2wgZ2VuMTBfaXNfdmFsaWRf
bXV4X2FkZHIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgYWRkcikKIHsK
IAlyZXR1cm4gZ2VuOF9pc192YWxpZF9tdXhfYWRkcihkZXZfcHJpdiwgYWRkcikgfHwKKwkJYWRk
ciA9PSBpOTE1X21taW9fcmVnX29mZnNldChHRU4xMF9OT0FfV1JJVEVfSElHSCkgfHwKIAkJKGFk
ZHIgPj0gaTkxNV9tbWlvX3JlZ19vZmZzZXQoT0FfUEVSRkNOVDNfTE8pICYmCiAJCSBhZGRyIDw9
IGk5MTVfbW1pb19yZWdfb2Zmc2V0KE9BX1BFUkZDTlQ0X0hJKSk7CiB9CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAppbmRleCBiYmE0MjBhYWE0YWIuLmE2MzFlNzQ3OTI4ZCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCkBAIC0xMDYyLDYgKzEwNjIsNyBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9t
bWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKIAogI2RlZmluZSBOT0FfREFUQQkgICAgX01N
SU8oMHg5ODZDKQogI2RlZmluZSBOT0FfV1JJVEUJICAgIF9NTUlPKDB4OTg4OCkKKyNkZWZpbmUg
R0VOMTBfTk9BX1dSSVRFX0hJR0ggX01NSU8oMHg5ODg0KQogCiAjZGVmaW5lIF9HRU43X1BJUEVB
X0RFX0xPQURfU0wJMHg3MDA2OAogI2RlZmluZSBfR0VON19QSVBFQl9ERV9MT0FEX1NMCTB4NzEw
NjgKLS0gCjIuMjEuMC4zOTIuZ2Y4ZjY3ODcxNTllCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
