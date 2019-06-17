Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6115E47EC3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 11:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E77B08919D;
	Mon, 17 Jun 2019 09:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5EE8919D
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 09:48:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 02:48:27 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2019 02:48:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 12:51:01 +0300
Message-Id: <20190617095108.22118-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190617095108.22118-1-jani.nikula@intel.com>
References: <20190617095108.22118-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 04/11] drm/i915: make i915_pvinfo.h
 self-contained
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

QWRkIHRoZSBtaW5pbWFsIGluY2x1ZGVzL2RlY2xhcmF0aW9ucyB0byBtYWtlIHRoZSBoZWFkZXIg
c2VsZi1jb250YWluZWQsCmFuZCBlbnN1cmUgaXQgc3RheXMgdGhhdCB3YXkuCgpTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0IHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3B2aW5mby5oICAgICAgICB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVy
LXRlc3QgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAppbmRleCA0
ZjdhMzQ5ZGNmYzUuLmMwZDE2NjNlNWI2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUuaGVhZGVyLXRlc3QKQEAgLTEyLDYgKzEyLDcgQEAgaGVhZGVyX3Rlc3QgOj0gXAogCWk5MTVf
aXJxLmggXAogCWk5MTVfcGFyYW1zLmggXAogCWk5MTVfcHJpb2xpc3RfdHlwZXMuaCBcCisJaTkx
NV9wdmluZm8uaCBcCiAJaTkxNV9yZWcuaCBcCiAJaTkxNV9zY2hlZHVsZXJfdHlwZXMuaCBcCiAJ
aTkxNV90aW1lbGluZV90eXBlcy5oIFwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcHZpbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3B2aW5mby5oCmluZGV4
IDk2OWU1MTQ5MTZhYi4uMmIyOTA2NWRhNmQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3B2aW5mby5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcHZpbmZv
LmgKQEAgLTI0LDYgKzI0LDggQEAKICNpZm5kZWYgX0k5MTVfUFZJTkZPX0hfCiAjZGVmaW5lIF9J
OTE1X1BWSU5GT19IXwogCisjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKwogLyogVGhlIE1NSU8g
b2Zmc2V0IG9mIHRoZSBzaGFyZWQgaW5mbyBiZXR3ZWVuIGd1ZXN0IGFuZCBob3N0IGVtdWxhdG9y
ICovCiAjZGVmaW5lIFZHVF9QVklORk9fUEFHRQkweDc4MDAwCiAjZGVmaW5lIFZHVF9QVklORk9f
U0laRQkweDEwMDAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
