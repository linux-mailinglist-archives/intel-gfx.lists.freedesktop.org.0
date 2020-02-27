Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A76172AA8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB6686ED67;
	Thu, 27 Feb 2020 22:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B66496E980
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:00:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:00:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="285467792"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 14:00:14 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 14:00:51 -0800
Message-Id: <20200227220101.321671-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 01/11] drm/i915/tgl: Implement Wa_1409804808
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

VGhpcyB3b3JrYXJvdW5kIHRoZSBDUyBub3QgZG9uZSBpc3N1ZSBvbiBQSVBFX0NPTlRST0wuCgp2
MjoKLSByZXBsYWNlZCBCSVQoKSBieSBSRUdfQklUKCkgaW4gYWxsIEdFTjdfUk9XX0NISUNLRU4y
KCkgYml0cwotIHNob3J0ZW5lZCB0aGUgbmFtZSBvZiB0aGUgbmV3IGJpdAoKQlNwZWM6IDUyODkw
CkJTcGVjOiA0NjIxOApDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
UmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA2ICsrKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDUgKysrLS0K
IDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDA2Y2VmM2MxOGYy
Ni4uZDQwMmI4ZWJjNzgwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKQEAgLTEzNjIsNiArMTM2MiwxMiBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCQkg
ICAgIEdFTjEyX0RJU0FCTEVfRUFSTFlfUkVBRCk7CiAJfQogCisJaWYgKElTX1RJR0VSTEFLRShp
OTE1KSkgeworCQkvKiBXYV8xNDA5ODA0ODA4OnRnbCAqLworCQl3YV9tYXNrZWRfZW4od2FsLCBH
RU43X1JPV19DSElDS0VOMiwKKwkJCSAgICAgR0VOMTJfUFVTSF9DT05TVF9ERVJFRl9IT0xEX0RJ
Uyk7CisJfQorCiAJaWYgKElTX0dFTihpOTE1LCAxMSkpIHsKIAkJLyogVGhpcyBpcyBub3QgYW4g
V2EuIEVuYWJsZSBmb3IgYmV0dGVyIGltYWdlIHF1YWxpdHkgKi8KIAkJd2FfbWFza2VkX2VuKHdh
bCwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDcyZGU5NTkxZjc3Zi4uYWNhY2UwMTZkNDZj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTkxNDAsOCArOTE0MCw5IEBAIGVudW0gewog
I2RlZmluZSAgIFRIUk9UVExFXzEyXzUJCQkJKDcgPDwgMikKICNkZWZpbmUgICBESVNBQkxFX0VB
UkxZX0VPVAkJCSgxIDw8IDEpCiAKLSNkZWZpbmUgR0VON19ST1dfQ0hJQ0tFTjIJCV9NTUlPKDB4
ZTRmNCkKLSNkZWZpbmUgR0VOMTJfRElTQUJMRV9FQVJMWV9SRUFECUJJVCgxNCkKKyNkZWZpbmUg
R0VON19ST1dfQ0hJQ0tFTjIJCQlfTU1JTygweGU0ZjQpCisjZGVmaW5lICAgR0VOMTJfRElTQUJM
RV9FQVJMWV9SRUFECQlSRUdfQklUKDE0KQorI2RlZmluZSAgIEdFTjEyX1BVU0hfQ09OU1RfREVS
RUZfSE9MRF9ESVMJUkVHX0JJVCg4KQogCiAjZGVmaW5lIEdFTjdfUk9XX0NISUNLRU4yX0dUMgkJ
X01NSU8oMHhmNGY0KQogI2RlZmluZSAgIERPUF9DTE9DS19HQVRJTkdfRElTQUJMRQkoMSA8PCAw
KQotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
