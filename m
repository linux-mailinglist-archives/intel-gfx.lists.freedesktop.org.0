Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3511D11C09
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:01:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7385C89711;
	Thu,  2 May 2019 15:01:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BC4289711
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:01:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:01:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="169963770"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 08:01:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 18:02:45 +0300
Message-Id: <69bcebefa6d8689d4a962394b0c6db04904354ed.1556809195.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556809195.git.jani.nikula@intel.com>
References: <cover.1556809195.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 11/13] drm/i915: make i915_utils.h self-contained
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW5kIGVuc3VyZSBpdCBzdGF5cyB0aGF0IHdheS4KClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUuaGVhZGVyLXRlc3QgfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCAg
ICAgICAgIHwgNiArKysrLS0KIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhl
YWRlci10ZXN0IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKaW5k
ZXggYjYxZmQ4Li5mNzFlYTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlLmhlYWRlci10ZXN0CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRl
ci10ZXN0CkBAIC0xNCw2ICsxNCw3IEBAIGhlYWRlcl90ZXN0IDo9IFwKIAlpOTE1X3JlZy5oIFwK
IAlpOTE1X3NjaGVkdWxlcl90eXBlcy5oIFwKIAlpOTE1X3RpbWVsaW5lX3R5cGVzLmggXAorCWk5
MTVfdXRpbHMuaCBcCiAJaW50ZWxfYWNwaS5oIFwKIAlpbnRlbF9hdG9taWMuaCBcCiAJaW50ZWxf
YXRvbWljX3BsYW5lLmggXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91
dGlscy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCmluZGV4IDJkYmU4OS4u
MjYxMTdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCkBAIC0yNSw2ICsyNSwxMCBAQAog
I2lmbmRlZiBfX0k5MTVfVVRJTFNfSAogI2RlZmluZSBfX0k5MTVfVVRJTFNfSAogCisjaW5jbHVk
ZSA8bGludXgvbGlzdC5oPgorI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CisjaW5jbHVkZSA8bGlu
dXgvd29ya3F1ZXVlLmg+CisKICN1bmRlZiBXQVJOX09OCiAvKiBNYW55IGdjYyBzZWVtIHRvIG5v
IHNlZSB0aHJvdWdoIHRoaXMgYW5kIGZhbGwgb3ZlciA6KCAqLwogI2lmIDAKQEAgLTE1Miw4ICsx
NTYsNiBAQCBzdGF0aWMgaW5saW5lIHU2NCBwdHJfdG9fdTY0KGNvbnN0IHZvaWQgKnB0cikKIAlf
X2lkeDsJCQkJCQkJCVwKIH0pCiAKLSNpbmNsdWRlIDxsaW51eC9saXN0Lmg+Ci0KIHN0YXRpYyBp
bmxpbmUgdm9pZCBfX2xpc3RfZGVsX21hbnkoc3RydWN0IGxpc3RfaGVhZCAqaGVhZCwKIAkJCQkg
ICBzdHJ1Y3QgbGlzdF9oZWFkICpmaXJzdCkKIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
