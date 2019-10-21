Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD47FDEA0A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 12:48:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32BF289EAC;
	Mon, 21 Oct 2019 10:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB5C89AEB
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 10:48:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 03:48:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="209306857"
Received: from ahedstro-mobl1.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.249])
 by orsmga002.jf.intel.com with ESMTP; 21 Oct 2019 03:48:25 -0700
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Oct 2019 13:48:10 +0300
Message-Id: <20191021104811.25663-4-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191021104811.25663-1-abdiel.janulgue@linux.intel.com>
References: <20191021104811.25663-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm8gcmVhc29uIGZvciBzdGlja2luZyB0byBHVFQgbW1hcHMgbm93IHdlIGhhdmUgQ1BVIFdDIG1t
YXBzIHZpYQpvdXIgbmV3IG1tYXAgb2Zmc2V0IHBsdW1iaW5nLgoKU2lnbmVkLW9mZi1ieTogQWJk
aWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgpDYzogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCAxMCArKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCAgICAgICAgICB8ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRleCBhM2ViMTk0ZmQz
YjQuLjhlMjkxOTgzMjQ4MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1h
bi5jCkBAIC01NjYsNiArNTY2LDE2IEBAIHN0YXRpYyBpbnQgZ2VtX21tYXBfb2Zmc2V0KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCQkJCSAgICAgJmFyZ3MtPm9mZnNldCk7
CiB9CiAKK2ludAoraTkxNV9nZW1fbW1hcF9kdW1iKHN0cnVjdCBkcm1fZmlsZSAqZmlsZSwKKwkJ
ICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAorCQkgIHUzMiBoYW5kbGUsCisJCSAgdTY0ICpvZmZz
ZXQpCit7CisJcmV0dXJuIF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRhKGZpbGUsIGhhbmRs
ZSwgSTkxNV9NTUFQX1RZUEVfV0MsCisJCQkJCSAgICAgb2Zmc2V0KTsKK30KKwogLyoqCiAgKiBp
OTE1X2dlbV9tbWFwX2d0dF9pb2N0bCAtIHByZXBhcmUgYW4gb2JqZWN0IGZvciBHVFQgbW1hcCdp
bmcKICAqIEBkZXY6IERSTSBkZXZpY2UKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IGVhZDJl
NmNhNzkwNy4uMjE1N2JjOTYxZTFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTI3NTIs
NiArMjc1Miw3IEBAIHN0YXRpYyBzdHJ1Y3QgZHJtX2RyaXZlciBkcml2ZXIgPSB7CiAJLmdldF9z
Y2Fub3V0X3Bvc2l0aW9uID0gaTkxNV9nZXRfY3J0Y19zY2Fub3V0cG9zLAogCiAJLmR1bWJfY3Jl
YXRlID0gaTkxNV9nZW1fZHVtYl9jcmVhdGUsCisJLmR1bWJfbWFwX29mZnNldCA9IGk5MTVfZ2Vt
X21tYXBfZHVtYiwKIAkuaW9jdGxzID0gaTkxNV9pb2N0bHMsCiAJLm51bV9pb2N0bHMgPSBBUlJB
WV9TSVpFKGk5MTVfaW9jdGxzKSwKIAkuZm9wcyA9ICZpOTE1X2RyaXZlcl9mb3BzLApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKaW5kZXggYTQwN2NhNjI4ODhiLi44MDA2NzRkMTY3YTUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaApAQCAtMTkzNCw2ICsxOTM0LDggQEAgaTkxNV9tdXRleF9sb2NrX2lu
dGVycnVwdGlibGUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIGludCBpOTE1X2dlbV9kdW1iX2Ny
ZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdiwKIAkJCSBzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LAogCQkJIHN0cnVjdCBkcm1fbW9kZV9jcmVhdGVfZHVtYiAqYXJncyk7CitpbnQgaTkxNV9n
ZW1fbW1hcF9kdW1iKHN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2LCBzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LAorCQkgICAgICB1MzIgaGFuZGxlLCB1NjQgKm9mZnNldCk7CiBpbnQgaTkxNV9nZW1f
bW1hcF9ndHRfdmVyc2lvbih2b2lkKTsKIAogaW50IF9fbXVzdF9jaGVjayBpOTE1X2dlbV9zZXRf
Z2xvYmFsX3NlcW5vKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHUzMiBzZXFubyk7Ci0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
