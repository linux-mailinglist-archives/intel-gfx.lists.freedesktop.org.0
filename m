Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3099411C06
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9411E893CD;
	Thu,  2 May 2019 15:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B4E48970B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:00:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:00:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="169963718"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 08:00:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 18:02:42 +0300
Message-Id: <9bc1317a67df0b9d019eca5b36f474b76a1cad26.1556809195.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556809195.git.jani.nikula@intel.com>
References: <cover.1556809195.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 08/13] drm/i915: extract intel_acpi.h from
 i915_drv.h
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

SXQgdXNlZCB0byBiZSBoYW5keSB0aGF0IHdlIG9ubHkgaGFkIGEgY291cGxlIG9mIGhlYWRlcnMs
IGJ1dCBvdmVyIHRpbWUKaTkxNV9kcnYuaCBoYXMgYmVjb21lIHVud2llbGR5LiBFeHRyYWN0IGRl
Y2xhcmF0aW9ucyB0byBhIHNlcGFyYXRlCmhlYWRlciBmaWxlIGNvcnJlc3BvbmRpbmcgdG8gdGhl
IGltcGxlbWVudGF0aW9uIG1vZHVsZSwgY2xhcmlmeWluZyB0aGUKbW9kdWxhcml0eSBvZiB0aGUg
ZHJpdmVyLgoKRW5zdXJlIHRoZSBuZXcgaGVhZGVyIGlzIHNlbGYtY29udGFpbmVkLCBhbmQgZG8g
c28gd2l0aCBtaW5pbWFsIGZ1cnRoZXIKaW5jbHVkZXMsIHVzaW5nIGZvcndhcmQgZGVjbGFyYXRp
b25zIGFzIG5lZWRlZC4gSW5jbHVkZSB0aGUgbmV3IGhlYWRlcgpvbmx5IHdoZXJlIG5lZWRlZCwg
YW5kIHNvcnQgdGhlIG1vZGlmaWVkIGluY2x1ZGUgZGlyZWN0aXZlcyB3aGlsZSBhdCBpdAphbmQg
YXMgbmVlZGVkLgoKTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKU2lnbmVkLW9mZi1ieTogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZS5oZWFkZXItdGVzdCB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAg
ICAgICAgfCAgOSAtLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2FjcGkuYyAg
ICAgICAgIHwgIDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9hY3BpLmggICAgICAg
ICB8IDE3ICsrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNw
bGF5LmMgICAgICB8ICAxICsKIDYgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgOSBk
ZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9hY3BpLmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFk
ZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CmluZGV4
IDQzNzVmZjQuLmMxZmE4NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUuaGVhZGVyLXRlc3QKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVy
LXRlc3QKQEAgLTEzLDYgKzEzLDcgQEAgaGVhZGVyX3Rlc3QgOj0gXAogCWk5MTVfcmVnLmggXAog
CWk5MTVfc2NoZWR1bGVyX3R5cGVzLmggXAogCWk5MTVfdGltZWxpbmVfdHlwZXMuaCBcCisJaW50
ZWxfYWNwaS5oIFwKIAlpbnRlbF9hdG9taWMuaCBcCiAJaW50ZWxfYXRvbWljX3BsYW5lLmggXAog
CWludGVsX2F1ZGlvLmggXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggMjFkYWM1Li5jMDEx
YTFiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTU3LDYgKzU3LDcgQEAKICNpbmNsdWRl
ICJpOTE1X3F1ZXJ5LmgiCiAjaW5jbHVkZSAiaTkxNV90cmFjZS5oIgogI2luY2x1ZGUgImk5MTVf
dmdwdS5oIgorI2luY2x1ZGUgImludGVsX2FjcGkuaCIKICNpbmNsdWRlICJpbnRlbF9hdWRpby5o
IgogI2luY2x1ZGUgImludGVsX2NkY2xrLmgiCiAjaW5jbHVkZSAiaW50ZWxfY3NyLmgiCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAppbmRleCA5MWVmZTI4Li42ZGRjM2QgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaApAQCAtMzI2NCwxNSArMzI2NCw2IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9n
bWJ1c19pc19mb3JjZWRfYml0KHN0cnVjdCBpMmNfYWRhcHRlciAqYWRhcHRlcikKIH0KIGV4dGVy
biB2b2lkIGludGVsX2kyY19yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
OwogCi0vKiBpbnRlbF9hY3BpLmMgKi8KLSNpZmRlZiBDT05GSUdfQUNQSQotZXh0ZXJuIHZvaWQg
aW50ZWxfcmVnaXN0ZXJfZHNtX2hhbmRsZXIodm9pZCk7Ci1leHRlcm4gdm9pZCBpbnRlbF91bnJl
Z2lzdGVyX2RzbV9oYW5kbGVyKHZvaWQpOwotI2Vsc2UKLXN0YXRpYyBpbmxpbmUgdm9pZCBpbnRl
bF9yZWdpc3Rlcl9kc21faGFuZGxlcih2b2lkKSB7IHJldHVybjsgfQotc3RhdGljIGlubGluZSB2
b2lkIGludGVsX3VucmVnaXN0ZXJfZHNtX2hhbmRsZXIodm9pZCkgeyByZXR1cm47IH0KLSNlbmRp
ZiAvKiBDT05GSUdfQUNQSSAqLwotCiAvKiBpbnRlbF9kZXZpY2VfaW5mby5jICovCiBzdGF0aWMg
aW5saW5lIHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyAqCiBta3dyaXRlX2RldmljZV9pbmZvKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2FjcGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2FjcGku
YwppbmRleCA5ZDE0MmQuLjM0NTZkMzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2FjcGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9hY3BpLmMKQEAg
LTQsOSArNCwxMiBAQAogICoKICAqIF9EU00gcmVsYXRlZCBjb2RlIHN0b2xlbiBmcm9tIG5vdXZl
YXVfYWNwaS5jLgogICovCisKICNpbmNsdWRlIDxsaW51eC9wY2kuaD4KICNpbmNsdWRlIDxsaW51
eC9hY3BpLmg+CisKICNpbmNsdWRlICJpOTE1X2Rydi5oIgorI2luY2x1ZGUgImludGVsX2FjcGku
aCIKIAogI2RlZmluZSBJTlRFTF9EU01fUkVWSVNJT05fSUQgMSAvKiBGb3IgQ2FscGVsbGEgYW55
d2F5Li4uICovCiAjZGVmaW5lIElOVEVMX0RTTV9GTl9QTEFURk9STV9NVVhfSU5GTyAxIC8qIE5v
IGFyZ3MgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2FjcGkuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2FjcGkuaApuZXcgZmlsZSBtb2RlIDEwMDY0NApp
bmRleCAwMDAwMDAuLjFjNTc2YgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2FjcGkuaApAQCAtMCwwICsxLDE3IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogTUlUICovCisvKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24K
KyAqLworCisjaWZuZGVmIF9fSU5URUxfQUNQSV9IX18KKyNkZWZpbmUgX19JTlRFTF9BQ1BJX0hf
XworCisjaWZkZWYgQ09ORklHX0FDUEkKK3ZvaWQgaW50ZWxfcmVnaXN0ZXJfZHNtX2hhbmRsZXIo
dm9pZCk7Cit2b2lkIGludGVsX3VucmVnaXN0ZXJfZHNtX2hhbmRsZXIodm9pZCk7CisjZWxzZQor
c3RhdGljIGlubGluZSB2b2lkIGludGVsX3JlZ2lzdGVyX2RzbV9oYW5kbGVyKHZvaWQpIHsgcmV0
dXJuOyB9CitzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfdW5yZWdpc3Rlcl9kc21faGFuZGxlcih2
b2lkKSB7IHJldHVybjsgfQorI2VuZGlmIC8qIENPTkZJR19BQ1BJICovCisKKyNlbmRpZiAvKiBf
X0lOVEVMX0FDUElfSF9fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKaW5kZXgg
NmViZTAwMC4uMDE5ZWNjZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwpAQCAt
NDcsNiArNDcsNyBAQAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaTkxNV9nZW1f
Y2xmbHVzaC5oIgogI2luY2x1ZGUgImk5MTVfdHJhY2UuaCIKKyNpbmNsdWRlICJpbnRlbF9hY3Bp
LmgiCiAjaW5jbHVkZSAiaW50ZWxfYXRvbWljLmgiCiAjaW5jbHVkZSAiaW50ZWxfYXRvbWljX3Bs
YW5lLmgiCiAjaW5jbHVkZSAiaW50ZWxfY29sb3IuaCIKLS0gCjIuMjAuMQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
