Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8140216F536
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 02:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79D236E071;
	Wed, 26 Feb 2020 01:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E00C6E071
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 01:45:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:45:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,486,1574150400"; d="scan'208";a="438261749"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by fmsmga006.fm.intel.com with ESMTP; 25 Feb 2020 17:45:19 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 17:45:52 -0800
Message-Id: <20200226014603.42190-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200226014603.42190-1-jose.souza@intel.com>
References: <20200226014603.42190-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/14] drm/i915/tgl: Implement Wa_1409804808
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
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IGJjNjExNGI2ZGM4
Zi4uODEzOWYxNDQzYmQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKQEAgLTEzNjcsNiArMTM2NywxMiBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCQkg
ICAgIEdFTjEyX0RJU0FCTEVfRUFSTFlfUkVBRCk7CiAJfQogCisJaWYgKElTX1RJR0VSTEFLRShp
OTE1KSkgeworCQkvKiBXYV8xNDA5ODA0ODA4OnRnbCAqLworCQl3YV9tYXNrZWRfZW4od2FsLCBH
RU43X1JPV19DSElDS0VOMiwKKwkJCSAgICAgR0VOMTJfUFVTSF9DT05TVF9ERVJFRl9IT0xEX0RJ
Uyk7CisJfQorCiAJaWYgKElTX0dFTihpOTE1LCAxMSkpIHsKIAkJLyogVGhpcyBpcyBub3QgYW4g
V2EuIEVuYWJsZSBmb3IgYmV0dGVyIGltYWdlIHF1YWxpdHkgKi8KIAkJd2FfbWFza2VkX2VuKHdh
bCwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGY0NWI1ZTg2ZWM2My4uN2VkZDVkZmJkNTg1
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTkxNDksOCArOTE0OSw5IEBAIGVudW0gewog
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
