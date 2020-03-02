Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4159E1767EB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 00:13:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D306E1B1;
	Mon,  2 Mar 2020 23:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34C7A8910C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 23:13:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 15:13:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,508,1574150400"; d="scan'208";a="233545085"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by fmsmga008.fm.intel.com with ESMTP; 02 Mar 2020 15:13:26 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 15:14:20 -0800
Message-Id: <20200302231421.224322-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gen11: Moving WAs to
 rcs_engine_wa_init()
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

VGhpcyBhcmUgcmVnaXN0ZXIgb2YgcmVuZGVyIGVuZ2luZSwgc28gYWZ0ZXIgYSByZW5kZXIgcmVz
ZXQgdGhvc2UKd291bGQgcmV0dXJuIHRvIHRoZSBkZWZhdWx0IHZhbHVlIGFuZCBpbml0X2Nsb2Nr
X2dhdGluZygpIGlzIG5vdApjYWxsZWQgZm9yIHNpbmdsZSBlbmdpbmUgcmVzZXQuClNvIGhlcmUg
bW92aW5nIGl0IHJjc19lbmdpbmVfd2FfaW5pdCgpIHRoYXQgd2lsbCBndWFyYW50ZWUgdGhhdCB0
aGlzCldBcyB3aWxsIG5vdCBiZSBsb3N0LgoKQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMgfCAxNSArKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMgICAgICAgICAgICAgfCAxNSAtLS0tLS0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggM2UzNzVhM2I3NzE0Li45MGUxYzQ4ZGQ2YmUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTQ1
NCw2ICsxNDU0LDIxIEBAIHJjc19lbmdpbmVfd2FfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIAkJCQkgICBHRU4xMV9TQ1JBVENI
MiwKIAkJCQkgICBHRU4xMV9DT0hFUkVOVF9QQVJUSUFMX1dSSVRFX01FUkdFX0VOQUJMRSwKIAkJ
CQkgICAwKTsKKworCQkvKiBXYUVuYWJsZTMyUGxhbmVNb2RlOmljbCAqLworCQl3YV9tYXNrZWRf
ZW4od2FsLCBHRU45X0NTRkVfQ0hJQ0tFTjFfUkNTLAorCQkJICAgICBHRU4xMV9FTkFCTEVfMzJf
UExBTkVfTU9ERSk7CisKKwkJLyoKKwkJICogV2FfMTQwODYxNTA3MjppY2wsZWhsICAodnN1bml0
KQorCQkgKiBXYV8xNDA3NTk2Mjk0OmljbCxlaGwgIChoc3VuaXQpCisJCSAqLworCQl3YV9tYXNr
ZWRfZW4od2FsLCBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSwKKwkJCSAgICAgVlNVTklUX0NM
S0dBVEVfRElTIHwgSFNVTklUX0NMS0dBVEVfRElTKTsKKworCQkvKiBXYV8xNDA3MzUyNDI3Omlj
bCxlaGwgKi8KKwkJd2FfbWFza2VkX2VuKHdhbCwgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUy
LAorCQkJICAgICBQU0RVTklUX0NMS0dBVEVfRElTKTsKIAl9CiAKIAlpZiAoSVNfR0VOX1JBTkdF
KGk5MTUsIDksIDExKSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggODMxZTUzYzEzN2Nm
Li5kM2RmMDA0NDU3ODcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNjc4MiwyMSArNjc4
Miw2IEBAIHN0YXRpYyB2b2lkIGljbF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCiAJSTkxNV9XUklURShHRU4xMF9ERlJfUkFUSU9fRU5fQU5EX0NI
SUNLRU4sCiAJCSAgIEk5MTVfUkVBRChHRU4xMF9ERlJfUkFUSU9fRU5fQU5EX0NISUNLRU4pICYg
fkRGUl9ESVNBQkxFKTsKIAotCS8qIFdhRW5hYmxlMzJQbGFuZU1vZGU6aWNsICovCi0JSTkxNV9X
UklURShHRU45X0NTRkVfQ0hJQ0tFTjFfUkNTLAotCQkgICBfTUFTS0VEX0JJVF9FTkFCTEUoR0VO
MTFfRU5BQkxFXzMyX1BMQU5FX01PREUpKTsKLQotCS8qCi0JICogV2FfMTQwODYxNTA3MjppY2ws
ZWhsICAodnN1bml0KQotCSAqIFdhXzE0MDc1OTYyOTQ6aWNsLGVobCAgKGhzdW5pdCkKLQkgKi8K
LQlpbnRlbF91bmNvcmVfcm13KCZkZXZfcHJpdi0+dW5jb3JlLCBVTlNMSUNFX1VOSVRfTEVWRUxf
Q0xLR0FURSwKLQkJCSAwLCBWU1VOSVRfQ0xLR0FURV9ESVMgfCBIU1VOSVRfQ0xLR0FURV9ESVMp
OwotCi0JLyogV2FfMTQwNzM1MjQyNzppY2wsZWhsICovCi0JaW50ZWxfdW5jb3JlX3JtdygmZGV2
X3ByaXYtPnVuY29yZSwgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyLAotCQkJIDAsIFBTRFVO
SVRfQ0xLR0FURV9ESVMpOwotCiAJLypXYV8xNDAxMDU5NDAxMzppY2wsIGVobCAqLwogCWludGVs
X3VuY29yZV9ybXcoJmRldl9wcml2LT51bmNvcmUsIEdFTjhfQ0hJQ0tFTl9EQ1BSXzEsCiAJCQkg
MCwgQ05MX0RFTEFZX1BNUlNQKTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
