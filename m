Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DAE16F53F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 02:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE3B6E09A;
	Wed, 26 Feb 2020 01:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E07A6E087
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 01:45:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 17:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,486,1574150400"; d="scan'208";a="438261783"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by fmsmga006.fm.intel.com with ESMTP; 25 Feb 2020 17:45:21 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Feb 2020 17:46:00 -0800
Message-Id: <20200226014603.42190-11-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200226014603.42190-1-jose.souza@intel.com>
References: <20200226014603.42190-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 11/14] drm/i915/tgl: Add note about
 Wa_1409142259
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

RGlmZmVyZW50IGlzc3VlcyB3aXRoIHRoZSBzYW1lIGZpeCwgc28ganVzdGluZyBhZGRpbmcKV2Ff
MTQwOTE0MjI1OSwgV2FfMTQwOTI1MjY4NCwgV2FfMTQwOTIxNzYzMywgV2FfMTQwOTIwNzc5MywK
V2FfMTQwOTE3ODA3NiBhbmQgMTQwODk3OTcyNCB0byB0aGUgY29tbWVudCBzbyBvdGhlciBkZXZz
IGNhbiBjaGVjayBpZgp0aGlzIFdhcyB3ZXJlIGltcGxlbWV0ZW5kIHdpdGggYSBzaW1wbGUgZ3Jl
cC4KClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
fCAxMCArKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5k
ZXggZTdjYTBlYWIyNzAwLi5iN2IxMzM3MmUyODcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtNTgyLDcgKzU4MiwxNSBAQCBzdGF0aWMgdm9pZCB0
Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAog
ewogCXUzMiB2YWw7CiAKLQkvKiBXYV8xNDA5MTQyMjU5OnRnbCAqLworCS8qCisJICogV2FfMTQw
OTE0MjI1OTp0Z2wKKwkgKiBXYV8xNDA5MzQ3OTIyOnRnbAorCSAqIFdhXzE0MDkyNTI2ODQ6dGds
CisJICogV2FfMTQwOTIxNzYzMzp0Z2wKKwkgKiBXYV8xNDA5MjA3NzkzOnRnbAorCSAqIFdhXzE0
MDkxNzgwNzY6dGdsCisJICogV2FfMTQwODk3OTcyNDp0Z2wKKwkgKi8KIAlXQV9TRVRfQklUX01B
U0tFRChHRU4xMV9DT01NT05fU0xJQ0VfQ0hJQ0tFTjMsCiAJCQkgIEdFTjEyX0RJU0FCTEVfQ1BT
X0FXQVJFX0NPTE9SX1BJUEUpOwogCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
