Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C567310470B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 00:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E8B46E0C0;
	Wed, 20 Nov 2019 23:40:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D1516E0C0
 for <Intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 23:40:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 15:40:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="200918348"
Received: from cataylo2-ubuntu18-10.jf.intel.com ([10.7.199.54])
 by orsmga008.jf.intel.com with ESMTP; 20 Nov 2019 15:40:21 -0800
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 15:40:20 -0800
Message-Id: <20191120234020.29887-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable display interrupts during SDE
 IRQ handler
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KCkR1cmluZyB0
aGUgRGlzcGxheSBJbnRlcnJ1cHQgU2VydmljZSByb3V0aW5lIHRoZSBEaXNwbGF5IEludGVycnVw
dApFbmFibGUgYml0IG11c3QgYmUgZGlzYWJsZWQsIFRoZSBpbnRlcnJ1cHRzIGhhbmRsZWQsIHRo
ZW4gdGhlCkRpc3BsYXkgSW50ZXJydXB0IEVuYWJsZSBiaXQgbXVzdCBiZSBzZXQgdG8gcHJldmVu
dCBwb3NzaWJsZSBtaXNzZWQKaW50ZXJydXB0cy4KCkJzcGVjOiA0OTIxMgpDYzogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBBZGl0eWEgU3dhcnVwIDxhZGl0
eWEuc3dhcnVwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2xpbnQgVGF5bG9yIDxjbGludG9u
LmEudGF5bG9yQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
IHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMKaW5kZXggZGFlMDBmN2RkN2RmLi40MzQzNDI3M2EwOGEgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYwpAQCAtMjQ4NCw3ICsyNDg0LDExIEBAIF9fZ2VuMTFfaXJxX2hhbmRsZXIoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKiBjb25zdCBpOTE1LAogCQkgKiBHRU4xMV9ESVNQTEFZX0lO
VF9DVEwgaGFzIHNhbWUgZm9ybWF0IGFzIEdFTjhfTUFTVEVSX0lSUQogCQkgKiBmb3IgdGhlIGRp
c3BsYXkgcmVsYXRlZCBiaXRzLgogCQkgKi8KKwkJcmF3X3JlZ193cml0ZShyZWdzLCBHRU4xMV9E
SVNQTEFZX0lOVF9DVEwsIDB4MCk7CiAJCWdlbjhfZGVfaXJxX2hhbmRsZXIoaTkxNSwgZGlzcF9j
dGwpOworCQlyYXdfcmVnX3dyaXRlKHJlZ3MsIEdFTjExX0RJU1BMQVlfSU5UX0NUTCwKKwkJCQkJ
ICBHRU4xMV9ESVNQTEFZX0lSUV9FTkFCTEUpOworCiAJCWVuYWJsZV9ycG1fd2FrZXJlZl9hc3Nl
cnRzKCZpOTE1LT5ydW50aW1lX3BtKTsKIAl9CiAKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
