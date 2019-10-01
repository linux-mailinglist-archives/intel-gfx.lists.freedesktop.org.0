Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62955C335C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 13:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B80FA89EAE;
	Tue,  1 Oct 2019 11:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C949389EAE
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 11:52:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 04:52:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="216040401"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga004.fm.intel.com with ESMTP; 01 Oct 2019 04:52:17 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue,  1 Oct 2019 17:22:11 +0530
Message-Id: <20191001115211.28815-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001055308.21643-2-ramalingam.c@intel.com>
References: <20191001055308.21643-2-ramalingam.c@intel.com>
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
Cc: Matthew Auld <matthew.auld@intel.com>
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
biBjaGVjayBpcyBtb3ZlIHRvIHBpbl90b19kaXNwbGF5IFtDaHJpc10KdjQ6CiAgcy9kZXZfcHJp
di9pOTE1IFtjaHJpc10KCmNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
ClNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCA4ICsrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2RvbWFpbi5jCmluZGV4IDU1YzNhYjU5ZTNhYS4uNmJmMjExNzg0ZjczIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCkBAIC00MTksMTEg
KzQxOSwxOSBAQCBpOTE1X2dlbV9vYmplY3RfcGluX3RvX2Rpc3BsYXlfcGxhbmUoc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAkJCQkgICAgIGNvbnN0IHN0cnVjdCBpOTE1X2dndHRf
dmlldyAqdmlldywKIAkJCQkgICAgIHVuc2lnbmVkIGludCBmbGFncykKIHsKKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7CiAJc3RydWN0IGk5
MTVfdm1hICp2bWE7CiAJaW50IHJldDsKIAogCWFzc2VydF9vYmplY3RfaGVsZChvYmopOwogCisJ
LyogR0VNIE9iaiBmb3IgZnJhbWUgYnVmZmVyIGlzIGV4cGVjdGVkIHRvIGJlIGluIExNRU0uICov
CisJaWYgKEhBU19MTUVNKGk5MTUpKQorCQlpZiAob2JqLT5tbS5yZWdpb24tPnR5cGUgIT0gSU5U
RUxfTE1FTSkgeworCQkJRFJNX0RFQlVHX0tNUygiT0JKIGlzIG5vdCBmcm9tIExNRU1cbiIpOwor
CQkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CisJCX0KKwogCS8qCiAJICogVGhlIGRpc3BsYXkg
ZW5naW5lIGlzIG5vdCBjb2hlcmVudCB3aXRoIHRoZSBMTEMgY2FjaGUgb24gZ2VuNi4gIEFzCiAJ
ICogYSByZXN1bHQsIHdlIG1ha2Ugc3VyZSB0aGF0IHRoZSBwaW5uaW5nIHRoYXQgaXMgYWJvdXQg
dG8gb2NjdXIgaXMKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
