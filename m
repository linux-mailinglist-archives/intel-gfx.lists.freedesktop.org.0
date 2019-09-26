Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71369BEF4C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 12:08:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602BF6EDC7;
	Thu, 26 Sep 2019 10:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2C66ECA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 10:08:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 03:08:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,551,1559545200"; d="scan'208";a="203825763"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga001.fm.intel.com with ESMTP; 26 Sep 2019 03:08:11 -0700
Received: from localhost (172.28.172.64) by IRSMSX102.ger.corp.intel.com
 (163.33.3.155) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 26 Sep
 2019 11:08:10 +0100
From: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 26 Sep 2019 12:06:35 +0200
Message-ID: <20190926100635.9416-6-michal.winiarski@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190926100635.9416-1-michal.winiarski@intel.com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
MIME-Version: 1.0
X-Originating-IP: [172.28.172.64]
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/execlists: Don't allocate scratch
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

V2UncmUgbm8gbG9uZ2VyIHVzaW5nIGl0IG9uIGV4ZWNsaXN0cyBwbGF0Zm9ybXMuIFRoZXJlJ3Mg
bm8gcG9pbnQgaW4KYWxsb2NhdGluZyBpdC4KClNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgV2luaWFy
c2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9jcy5jIHwgMiAtLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAg
ICAgfCA2ICsrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCBm
NDUxZDUwNzZiZGUuLmE0ZTVhY2VmZjY3OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMKQEAgLTY2OSw4ICs2NjksNiBAQCBzdGF0aWMgaW50IG1lYXN1cmVfYnJl
YWRjcnVtYl9kdyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJc3RydWN0IG1lYXN1
cmVfYnJlYWRjcnVtYiAqZnJhbWU7CiAJaW50IGR3ID0gLUVOT01FTTsKIAotCUdFTV9CVUdfT04o
IWVuZ2luZS0+Z3QtPnNjcmF0Y2gpOwotCiAJZnJhbWUgPSBremFsbG9jKHNpemVvZigqZnJhbWUp
LCBHRlBfS0VSTkVMKTsKIAlpZiAoIWZyYW1lKQogCQlyZXR1cm4gLUVOT01FTTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndC5jCmluZGV4IGVlZjliZGFlOGViYi4uZTEzNWE2NmI3MjQyIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKQEAgLTMyOSw2ICszMjksOSBAQCBzdGF0aWMgaW50
IGludGVsX2d0X2luaXRfc2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBpbnQg
c2l6ZSkKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAlpbnQgcmV0OwogCisJaWYgKEhBU19FWEVD
TElTVFMoaTkxNSkpCisJCXJldHVybiAwOworCiAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0
ZV9zdG9sZW4oaTkxNSwgc2l6ZSk7CiAJaWYgKCFvYmopCiAJCW9iaiA9IGk5MTVfZ2VtX29iamVj
dF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc2l6ZSk7CkBAIC0zNTgsNiArMzYxLDkgQEAgc3RhdGlj
IGludCBpbnRlbF9ndF9pbml0X3NjcmF0Y2goc3RydWN0IGludGVsX2d0ICpndCwgdW5zaWduZWQg
aW50IHNpemUpCiAKIHN0YXRpYyB2b2lkIGludGVsX2d0X2Zpbmlfc2NyYXRjaChzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQogeworCWlmIChIQVNfRVhFQ0xJU1RTKGd0LT5pOTE1KSkKKwkJcmV0dXJuOwor
CiAJaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmd0LT5zY3JhdGNoLCAwKTsKIH0KIAotLSAK
Mi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
