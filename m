Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC8FC01CB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 11:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26C596EEC0;
	Fri, 27 Sep 2019 09:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54C896EEC0
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 09:08:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 02:08:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,554,1559545200"; d="scan'208";a="180445747"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga007.jf.intel.com with ESMTP; 27 Sep 2019 02:08:42 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Fri, 27 Sep 2019 14:38:33 +0530
Message-Id: <20190927090833.16383-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926052135.29911-2-ramalingam.c@intel.com>
References: <20190926052135.29911-2-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Allowed memory region for GEM
 obj
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

RWFjaCBHRU0gb2JqZWN0IGlzIGluaXRpYWxpemVkIHdpdGggYWxsb3dlZCBtZW1vcnkgcmVnaW9u
cyBmb3IKaXQncyBtaWdyYXRpb24gYWNyb3NzIG1lbW9yeSByZWdpb24uCgpJbiBmdXR1cmUgcGF0
Y2ggd2UgYXJlIHJlc3RyaWN0aW5nIHRoZSBtZW1vcnkgcmVnaW9ucyBvciBmZXcgb2JqZWN0cy4K
ClRoaXMgaXMgZGV2ZWxvcGVkIG9uIHRvcCBvZiB2MyBMTUVNIHNlcmllcwpodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzU2NjgzLwoKdjI6CiAgZGV2X3ByaXYgaXMgcmV0
cmlldmVkIGZyb20gb2JqIFtDaHJpc10KCkNDOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBp
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAg
ICAgfCA5ICsrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVj
dF90eXBlcy5oIHwgMyArKysKIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwppbmRleCAwZjMzZGE1ZTU0
MWQuLjE2NWFlMDNjNjc3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3QuYwpAQCAtNTEsNiArNTEsOCBAQCB2b2lkIGk5MTVfZ2VtX29iamVjdF9mcmVlKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB2b2lkIGk5MTVfZ2VtX29iamVjdF9pbml0KHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkgIGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0X29wcyAqb3BzKQogeworCXN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShvYmotPmJhc2UuZHJtKTsKKwogCW11dGV4X2luaXQoJm9iai0+
bW0ubG9jayk7CiAKIAlzcGluX2xvY2tfaW5pdCgmb2JqLT52bWEubG9jayk7CkBAIC03MCw2ICs3
Miw4IEBAIHZvaWQgaTkxNV9nZW1fb2JqZWN0X2luaXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKIAlvYmotPm1tLm1hZHYgPSBJOTE1X01BRFZfV0lMTE5FRUQ7CiAJSU5JVF9SQURJ
WF9UUkVFKCZvYmotPm1tLmdldF9wYWdlLnJhZGl4LCBHRlBfS0VSTkVMIHwgX19HRlBfTk9XQVJO
KTsKIAltdXRleF9pbml0KCZvYmotPm1tLmdldF9wYWdlLmxvY2spOworCisJb2JqLT5tZW1vcnlf
cmVnaW9ucyA9IElOVEVMX0lORk8oZGV2X3ByaXYpLT5tZW1vcnlfcmVnaW9uczsKIH0KIAogLyoq
CkBAIC01MzQsNiArNTM4LDExIEBAIHN0YXRpYyBpbnQgaTkxNV9nZW1fb2JqZWN0X3JlZ2lvbl9z
ZWxlY3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQl1MzIgcmVnaW9uID0g
dXJlZ2lvbnNfY29weVtpXTsKIAkJZW51bSBpbnRlbF9yZWdpb25faWQgaWQgPSBfX3JlZ2lvbl9p
ZChyZWdpb24pOwogCisJCWlmICghKG9iai0+bWVtb3J5X3JlZ2lvbnMgJiByZWdpb24pKSB7CisJ
CQlyZXQgPSAtRUlOVkFMOworCQkJY29udGludWU7CisJCX0KKwogCQlpZiAoaWQgPT0gSU5URUxf
TUVNT1JZX1VLTk9XTikgewogCQkJcmV0ID0gLUVJTlZBTDsKIAkJCWdvdG8gZXJyOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCmluZGV4IDdi
OTM0NTBhODYwYi4uYWY1NTA1ZTBiZDBhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCkBAIC0yODYsNiArMjg2LDkgQEAgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgewogCiAJLyoqIGZvciBwaHlzIGFsbG9jYXRlZCBvYmplY3RzICov
CiAJc3RydWN0IGRybV9kbWFfaGFuZGxlICpwaHlzX2hhbmRsZTsKKworCS8qIEFsbG93ZWQgbWVt
b3J5IHJlZ2lvbnMgZm9yIHRoaXMgb2JqIHRvIHJlc2lkZSBpbi4gKi8KKwl1MzIgbWVtb3J5X3Jl
Z2lvbnM7CiB9OwogCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
