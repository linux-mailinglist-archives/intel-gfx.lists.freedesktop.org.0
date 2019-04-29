Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFB8E28C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 14:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C57638932B;
	Mon, 29 Apr 2019 12:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B1C08932B
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 12:27:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 05:27:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="168934721"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2019 05:27:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2019 15:29:23 +0300
Message-Id: <158347ef715a35ca1f7d945efb139d80bf5e0e6c.1556540889.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556540889.git.jani.nikula@intel.com>
References: <cover.1556540889.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 05/21] drm/i915: move dsi init functions to
 intel_dsi.h
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

S2VlcCB0aGUgaGVhZGVyIHNlbGYtY29udGFpbmVkLiBJdCdsbCBuZWVkIHJld29yayBvZiBpdHMg
b3duIGluIHRoZQpmdXR1cmUsIGJ1dCBnb3R0YSBzdGFydCBzb21ld2hlcmUuCgpTaWduZWQtb2Zm
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0IHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcnYuaCAgICAgICAgICB8IDUgLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RzaS5oICAgICAgICAgIHwgNCArKysrCiAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZS5oZWFkZXItdGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRl
ci10ZXN0CmluZGV4IDA5NzlhZi4uZmY4NDAzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZS5oZWFkZXItdGVzdApAQCAtMjQsNiArMjQsNyBAQCBoZWFkZXJfdGVzdCA6PSBcCiAJaW50
ZWxfZHAuaCBcCiAJaW50ZWxfZHBsbF9tZ3IuaCBcCiAJaW50ZWxfZHJ2LmggXAorCWludGVsX2Rz
aS5oIFwKIAlpbnRlbF9kdm8uaCBcCiAJaW50ZWxfZHZvX2Rldi5oIFwKIAlpbnRlbF9mYmMuaCBc
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCmluZGV4IGEzOGI5Yy4uMjBmMjhlIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcnYuaApAQCAtMTgzMiwxMSArMTgzMiw2IEBAIGludCBpbnRlbF9kcF9hdXhf
aW5pdF9iYWNrbGlnaHRfZnVuY3Moc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVj
dG9yKTsKIC8qIGludGVsX2RwX21zdC5jICovCiBpbnQgaW50ZWxfZHBfbXN0X2VuY29kZXJfaW5p
dChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwgaW50IGNvbm5faWQp
Owogdm9pZCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9jbGVhbnVwKHN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmludGVsX2RpZ19wb3J0KTsKLS8qIHZsdl9kc2kuYyAqLwotdm9pZCB2bHZfZHNpX2lu
aXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKLQotLyogaWNsX2RzaS5jICov
Ci12b2lkIGljbF9kc2lfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwog
CiAvKiBpbnRlbF9kc2lfZGNzX2JhY2tsaWdodC5jICovCiBpbnQgaW50ZWxfZHNpX2Rjc19pbml0
X2JhY2tsaWdodF9mdW5jcyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3Ip
OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kc2kuaAppbmRleCA3MDVhNjAuLjFkMWU2YiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHNpLmgKQEAgLTE1MSw2ICsxNTEsOSBAQCBzdGF0aWMgaW5saW5lIHUxNiBp
bnRlbF9kc2lfZW5jb2Rlcl9wb3J0cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAly
ZXR1cm4gZW5jX3RvX2ludGVsX2RzaSgmZW5jb2Rlci0+YmFzZSktPnBvcnRzOwogfQogCisvKiBp
Y2xfZHNpLmMgKi8KK3ZvaWQgaWNsX2RzaV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdik7CisKIC8qIGludGVsX2RzaS5jICovCiBpbnQgaW50ZWxfZHNpX2JpdHJhdGUoY29u
c3Qgc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpKTsKIGludCBpbnRlbF9kc2lfdGxweF9ucyhj
b25zdCBzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kpOwpAQCAtMTY2LDYgKzE2OSw3IEBAIGVu
dW0gZHJtX21vZGVfc3RhdHVzIGludGVsX2RzaV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3IsCiBzdHJ1Y3QgaW50ZWxfZHNpX2hvc3QgKmludGVsX2RzaV9ob3N0X2lu
aXQoc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpLAogCQkJCQkgICBjb25zdCBzdHJ1Y3QgbWlw
aV9kc2lfaG9zdF9vcHMgKmZ1bmNzLAogCQkJCQkgICBlbnVtIHBvcnQgcG9ydCk7Cit2b2lkIHZs
dl9kc2lfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwogCiAvKiB2bHZf
ZHNpX3BsbC5jICovCiBpbnQgdmx2X2RzaV9wbGxfY29tcHV0ZShzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
