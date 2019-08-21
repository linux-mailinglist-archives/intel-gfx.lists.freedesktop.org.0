Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E67FB98146
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 19:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52F686E369;
	Wed, 21 Aug 2019 17:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0566E362
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 17:30:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 10:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="169484523"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 21 Aug 2019 10:30:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Aug 2019 20:30:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 20:30:30 +0300
Message-Id: <20190821173033.24123-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190821173033.24123-1-ville.syrjala@linux.intel.com>
References: <20190821173033.24123-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Unconfuse pipe vs. crtc->index in
 i915_get_crtc_scanoutpos()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSAicGlwZSIgYXJndW1lbnQgcGFzc2VkIGluIGJ5IHRoZSB2YmxhbmsgY29kZSBpcyBpbiBmYWN0
IHRoZSBjcnRjCmluZGV4LiBEb24ndCBhc3N1bWUgdGhhdCBpcyB0aGUgc2FtZSBhcyB0aGUgcGlw
ZS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDggKysrKy0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMKaW5kZXggMzdlM2RkM2MxYTlkLi5mZTZhODdhMDA1MjcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYwpAQCAtOTQyLDE0ICs5NDIsMTQgQEAgc3RhdGljIGludCBfX2lu
dGVsX2dldF9jcnRjX3NjYW5saW5lKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCXJldHVybiAo
cG9zaXRpb24gKyBjcnRjLT5zY2FubGluZV9vZmZzZXQpICUgdnRvdGFsOwogfQogCi1ib29sIGk5
MTVfZ2V0X2NydGNfc2Nhbm91dHBvcyhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB1bnNpZ25lZCBp
bnQgcGlwZSwKK2Jvb2wgaTkxNV9nZXRfY3J0Y19zY2Fub3V0cG9zKHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYsIHVuc2lnbmVkIGludCBpbmRleCwKIAkJCSAgICAgIGJvb2wgaW5fdmJsYW5rX2lycSwg
aW50ICp2cG9zLCBpbnQgKmhwb3MsCiAJCQkgICAgICBrdGltZV90ICpzdGltZSwga3RpbWVfdCAq
ZXRpbWUsCiAJCQkgICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Ci0Jc3Ry
dWN0IGludGVsX2NydGMgKmludGVsX2NydGMgPSBpbnRlbF9nZXRfY3J0Y19mb3JfcGlwZShkZXZf
cHJpdiwKLQkJCQkJCQkJcGlwZSk7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRl
bF9jcnRjKGRybV9jcnRjX2Zyb21faW5kZXgoZGV2LCBpbmRleCkpOworCWVudW0gcGlwZSBwaXBl
ID0gY3J0Yy0+cGlwZTsKIAlpbnQgcG9zaXRpb247CiAJaW50IHZibF9zdGFydCwgdmJsX2VuZCwg
aHN5bmNfc3RhcnQsIGh0b3RhbCwgdnRvdGFsOwogCXVuc2lnbmVkIGxvbmcgaXJxZmxhZ3M7CkBA
IC05OTIsNyArOTkyLDcgQEAgYm9vbCBpOTE1X2dldF9jcnRjX3NjYW5vdXRwb3Moc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IHBpcGUsCiAJCS8qIE5vIG9idmlvdXMgcGl4ZWxj
b3VudCByZWdpc3Rlci4gT25seSBxdWVyeSB2ZXJ0aWNhbAogCQkgKiBzY2Fub3V0IHBvc2l0aW9u
IGZyb20gRGlzcGxheSBzY2FuIGxpbmUgcmVnaXN0ZXIuCiAJCSAqLwotCQlwb3NpdGlvbiA9IF9f
aW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoaW50ZWxfY3J0Yyk7CisJCXBvc2l0aW9uID0gX19pbnRl
bF9nZXRfY3J0Y19zY2FubGluZShjcnRjKTsKIAl9IGVsc2UgewogCQkvKiBIYXZlIGFjY2VzcyB0
byBwaXhlbGNvdW50IHNpbmNlIHN0YXJ0IG9mIGZyYW1lLgogCQkgKiBXZSBjYW4gc3BsaXQgdGhp
cyBpbnRvIHZlcnRpY2FsIGFuZCBob3Jpem9udGFsCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
