Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF09C2D03
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 07:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFA956E082;
	Tue,  1 Oct 2019 05:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72BD86E082
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 05:53:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 22:53:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,570,1559545200"; d="scan'208";a="215954051"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga004.fm.intel.com with ESMTP; 30 Sep 2019 22:53:17 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Date: Tue,  1 Oct 2019 11:23:08 +0530
Message-Id: <20191001055308.21643-2-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001055308.21643-1-ramalingam.c@intel.com>
References: <20191001055308.21643-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: FB backing gem obj should reside
 in LMEM
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

SWYgTG9jYWwgbWVtb3J5IGlzIHN1cHBvcnRlZCBieSBoYXJkd2FyZSwgd2Ugd2FudCBmcmFtZWJ1
ZmZlciBiYWNraW5nCmdlbSBvYmplY3RzIGZyb20gbG9jYWwgbWVtb3J5LgoKcGluX3RvX2Rpc3Bs
YXkgaXMgZmFpbGVkLCBpZiB0aGUgYmFja2luZyBvYmogaXMgbm90IGZyb20gTE1FTS4KClRoaXMg
aXMgZGV2ZWxvcGVkIG9uIHRvcCBvZiBMTUVNIEJhc2ljcwpodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzY3MzUwLwoKdjI6CiAgbWVtb3J5IHJlZ2lvbnMgYXJlIGNvcnJl
Y3RseSBhc3NpZ25lZCB0byBvYmotPm1lbW9yeV9yZWdpb25zIFt0dnJ0a29dCiAgbWlncmF0aW9u
IGZhaWx1cmUgaXMgcmVwb3J0ZWQgYXMgZGVidWcgbG9nIFtUdnJ0a29dCnYzOgogIE1pZ3JhdGlv
biBpcyBkcm9wcGVkLiBvbmx5IGVycm9yIGlzIHJlcG9ydGVkIFtEYW5pZWxdCiAgbWVtIHJlZ2lv
biBjaGVjayBpcyBtb3ZlIHRvIHBpbl90b19kaXNwbGF5IFtDaHJpc10KCmNjOiBNYXR0aGV3IEF1
bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8
cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZG9tYWluLmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFp
bi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCmluZGV4IDU1
YzNhYjU5ZTNhYS4uYzc0ZDA3OTZiMTQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RvbWFpbi5jCkBAIC00MTksMTEgKzQxOSwxOSBAQCBpOTE1X2dlbV9vYmplY3RfcGlu
X3RvX2Rpc3BsYXlfcGxhbmUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCQkg
ICAgIGNvbnN0IHN0cnVjdCBpOTE1X2dndHRfdmlldyAqdmlldywKIAkJCQkgICAgIHVuc2lnbmVk
IGludCBmbGFncykKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KG9iai0+YmFzZS5kZXYpOwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCWludCByZXQ7CiAK
IAlhc3NlcnRfb2JqZWN0X2hlbGQob2JqKTsKIAorCS8qIEdFTSBPYmogZm9yIGZyYW1lIGJ1ZmZl
ciBpcyBleHBlY3RlZCB0byBiZSBpbiBMTUVNLiAqLworCWlmIChIQVNfTE1FTShkZXZfcHJpdikp
CisJCWlmIChvYmotPm1tLnJlZ2lvbi0+dHlwZSAhPSBJTlRFTF9MTUVNKSB7CisJCQlEUk1fREVC
VUdfS01TKCJPQkogaXMgbm90IGZyb20gTE1FTVxuIik7CisJCQlyZXR1cm4gRVJSX1BUUigtRUlO
VkFMKTsKKwkJfQorCiAJLyoKIAkgKiBUaGUgZGlzcGxheSBlbmdpbmUgaXMgbm90IGNvaGVyZW50
IHdpdGggdGhlIExMQyBjYWNoZSBvbiBnZW42LiAgQXMKIAkgKiBhIHJlc3VsdCwgd2UgbWFrZSBz
dXJlIHRoYXQgdGhlIHBpbm5pbmcgdGhhdCBpcyBhYm91dCB0byBvY2N1ciBpcwotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
