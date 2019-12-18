Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A55D7124CD5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:11:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D3CE6E8BD;
	Wed, 18 Dec 2019 16:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E53466E0BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:11:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:11:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="218189649"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 18 Dec 2019 08:11:39 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Dec 2019 18:10:57 +0200
Message-Id: <20191218161105.30638-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191218161105.30638-1-imre.deak@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/15] drm/i915/tgl: Make sure FBs have a
 correct CCS plane stride
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIENDUyBwbGFuZSBzdHJpZGUgbXVzdCBiZSBmaXhlZCBvbiBUR0wsIGFzIGl0J3Mgbm90IGNv
bmZpZ3VyYWJsZSBmb3IKdGhlIGRpc3BsYXkuIEluc3RlYWQgdGhlIEhXIGhhcyBhIGhhcmR3aXJl
ZCBsb2dpYyB0byBkZXRlcm1pbmUgaXQgZnJvbQp0aGUgbWFpbiBwbGFuZSBzdHJpZGUuIE1ha2Ug
c3VyZSB1c2Vyc3BhY2UgcGFzc2VzIGluIHRoZSBjb3JyZWN0IHN0cmlkZS4KCkNjOiBEaGluYWth
cmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IElt
cmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE1ICsrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCmluZGV4IDY0MWVhMjQ1MzllYi4uN2M1MjU5MTE3MmUxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMjYyMCw2ICsyNjIw
LDExIEBAIGJvb2wgaXNfY2NzX21vZGlmaWVyKHU2NCBtb2RpZmllcikKIAkgICAgICAgbW9kaWZp
ZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lmX1RJTEVEX0NDUzsKIH0KIAorc3RhdGljIGludCBnZW4x
Ml9jY3NfYXV4X3N0cmlkZShzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwgaW50IGNjc19wbGFu
ZSkKK3sKKwlyZXR1cm4gRElWX1JPVU5EX1VQKGZiLT5waXRjaGVzW2Njc190b19tYWluX3BsYW5l
KGZiLCBjY3NfcGxhbmUpXSwgNTEyKSAqIDY0OworfQorCiB1MzIgaW50ZWxfcGxhbmVfZmJfbWF4
X3N0cmlkZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkgICAgICB1MzIg
cGl4ZWxfZm9ybWF0LCB1NjQgbW9kaWZpZXIpCiB7CkBAIC0xNjUzMCw2ICsxNjUzNSwxNiBAQCBz
dGF0aWMgaW50IGludGVsX2ZyYW1lYnVmZmVyX2luaXQoc3RydWN0IGludGVsX2ZyYW1lYnVmZmVy
ICppbnRlbF9mYiwKIAkJCWdvdG8gZXJyOwogCQl9CiAKKwkJaWYgKGlzX2dlbjEyX2Njc19wbGFu
ZShmYiwgaSkpIHsKKwkJCWludCBjY3NfYXV4X3N0cmlkZSA9IGdlbjEyX2Njc19hdXhfc3RyaWRl
KGZiLCBpKTsKKworCQkJaWYgKGZiLT5waXRjaGVzW2ldICE9IGNjc19hdXhfc3RyaWRlKSB7CisJ
CQkJRFJNX0RFQlVHX0tNUygiY2NzIGF1eCBwbGFuZSAlZCBwaXRjaCAoJWQpIG11c3QgYmUgJWRc
biIsCisJCQkJCSAgICAgIGksIGZiLT5waXRjaGVzW2ldLCBjY3NfYXV4X3N0cmlkZSk7CisJCQkJ
Z290byBlcnI7CisJCQl9CisJCX0KKwogCQlmYi0+b2JqW2ldID0gJm9iai0+YmFzZTsKIAl9CiAK
LS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
