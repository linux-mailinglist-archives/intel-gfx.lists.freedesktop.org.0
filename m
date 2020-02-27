Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA39172AAB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:00:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9FFC6ED65;
	Thu, 27 Feb 2020 22:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0A756ED58
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:00:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 14:00:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="285467845"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.234])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Feb 2020 14:00:16 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 14:00:58 -0800
Message-Id: <20200227220101.321671-8-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227220101.321671-1-jose.souza@intel.com>
References: <20200227220101.321671-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 08/11] drm/i915/tgl: Add note about
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
ZXggMGNkZDNjNTBlMGFlLi5iYTAyNjU3NjM0ODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtNTgwLDcgKzU4MCwxNSBAQCBzdGF0aWMgdm9pZCBp
Y2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAog
c3RhdGljIHZvaWQgdGdsX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKIAkJCQkgICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKIHsKLQkvKiBX
YV8xNDA5MTQyMjU5OnRnbCAqLworCS8qCisJICogV2FfMTQwOTE0MjI1OTp0Z2wKKwkgKiBXYV8x
NDA5MzQ3OTIyOnRnbAorCSAqIFdhXzE0MDkyNTI2ODQ6dGdsCisJICogV2FfMTQwOTIxNzYzMzp0
Z2wKKwkgKiBXYV8xNDA5MjA3NzkzOnRnbAorCSAqIFdhXzE0MDkxNzgwNzY6dGdsCisJICogV2Ff
MTQwODk3OTcyNDp0Z2wKKwkgKi8KIAlXQV9TRVRfQklUX01BU0tFRChHRU4xMV9DT01NT05fU0xJ
Q0VfQ0hJQ0tFTjMsCiAJCQkgIEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJUEUpOwog
Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
