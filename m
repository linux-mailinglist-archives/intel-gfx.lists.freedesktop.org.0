Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3972CAD93D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 14:41:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F6289998;
	Mon,  9 Sep 2019 12:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68EA2899BE
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 12:40:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 05:40:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="384947497"
Received: from amyers-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.30.4])
 by fmsmga006.fm.intel.com with ESMTP; 09 Sep 2019 05:40:54 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 13:40:51 +0100
Message-Id: <20190909124052.22900-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190909124052.22900-1-matthew.auld@intel.com>
References: <20190909124052.22900-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915:
 s/i915_gtt_color_adjust/i915_ggtt_color_adjust
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

TWFrZSBpdCBjbGVhciB0aGF0IHRoZSBjb2xvciBhZGp1c3QgY2FsbGJhY2sgYXBwbGllcyB0byB0
aGUgZ2d0dC4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSm9v
bmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jICAgICAgICAgICAgIHwgMTAgKysrKystLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMgfCAgMiArLQogMiBmaWxlcyBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYwppbmRleCAwOTVmNWUzNThhNTguLjQ4Njg4ZDY4M2U5NSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI1NDcsMTAgKzI1NDcsMTAgQEAgc3RhdGljIGludCBn
Z3R0X3NldF9wYWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIAlyZXR1cm4gMDsKIH0KIAotc3Rh
dGljIHZvaWQgaTkxNV9ndHRfY29sb3JfYWRqdXN0KGNvbnN0IHN0cnVjdCBkcm1fbW1fbm9kZSAq
bm9kZSwKLQkJCQkgIHVuc2lnbmVkIGxvbmcgY29sb3IsCi0JCQkJICB1NjQgKnN0YXJ0LAotCQkJ
CSAgdTY0ICplbmQpCitzdGF0aWMgdm9pZCBpOTE1X2dndHRfY29sb3JfYWRqdXN0KGNvbnN0IHN0
cnVjdCBkcm1fbW1fbm9kZSAqbm9kZSwKKwkJCQkgICB1bnNpZ25lZCBsb25nIGNvbG9yLAorCQkJ
CSAgIHU2NCAqc3RhcnQsCisJCQkJICAgdTY0ICplbmQpCiB7CiAJaWYgKGk5MTVfbm9kZV9jb2xv
cl9kaWZmZXJzKG5vZGUsIGNvbG9yKSkKIAkJKnN0YXJ0ICs9IEk5MTVfR1RUX1BBR0VfU0laRTsK
QEAgLTMyMDYsNyArMzIwNiw3IEBAIHN0YXRpYyBpbnQgZ2d0dF9pbml0X2h3KHN0cnVjdCBpOTE1
X2dndHQgKmdndHQpCiAJZ2d0dC0+dm0uaGFzX3JlYWRfb25seSA9IElTX1ZBTExFWVZJRVcoaTkx
NSk7CiAKIAlpZiAoIUhBU19MTEMoaTkxNSkgJiYgIUhBU19QUEdUVChpOTE1KSkKLQkJZ2d0dC0+
dm0ubW0uY29sb3JfYWRqdXN0ID0gaTkxNV9ndHRfY29sb3JfYWRqdXN0OworCQlnZ3R0LT52bS5t
bS5jb2xvcl9hZGp1c3QgPSBpOTE1X2dndHRfY29sb3JfYWRqdXN0OwogCiAJaWYgKCFpb19tYXBw
aW5nX2luaXRfd2MoJmdndHQtPmlvbWFwLAogCQkJCWdndHQtPmdtYWRyLnN0YXJ0LApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYwppbmRleCBjYjMw
YzY2OWIxYjcuLmZjYTM4MTY3YmRjZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMKQEAgLTI3Niw3ICsyNzYsNyBAQCBzdGF0aWMgaW50IGln
dF9ldmljdF9mb3JfY2FjaGVfY29sb3Iodm9pZCAqYXJnKQogCiAJLyogQ3VycmVudGx5IHRoZSB1
c2Ugb2YgY29sb3JfYWRqdXN0IGlzIGxpbWl0ZWQgdG8gY2FjaGUgZG9tYWlucyB3aXRoaW4KIAkg
KiB0aGUgZ2d0dCwgYW5kIHNvIHRoZSBwcmVzZW5jZSBvZiBtbS5jb2xvcl9hZGp1c3QgaXMgYXNz
dW1lZCB0byBiZQotCSAqIGk5MTVfZ3R0X2NvbG9yX2FkanVzdCB0aHJvdWdob3V0IG91ciBkcml2
ZXIsIHNvIHVzaW5nIGEgbW9jayBjb2xvcgorCSAqIGk5MTVfZ2d0dF9jb2xvcl9hZGp1c3QgdGhy
b3VnaG91dCBvdXIgZHJpdmVyLCBzbyB1c2luZyBhIG1vY2sgY29sb3IKIAkgKiBhZGp1c3Qgd2ls
bCB3b3JrIGp1c3QgZmluZSBmb3Igb3VyIHB1cnBvc2VzLgogCSAqLwogCWdndHQtPnZtLm1tLmNv
bG9yX2FkanVzdCA9IG1vY2tfY29sb3JfYWRqdXN0OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
