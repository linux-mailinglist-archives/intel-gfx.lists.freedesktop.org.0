Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC4311BFE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F85896EC;
	Thu,  2 May 2019 15:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17DB6896DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:00:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:00:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="169963628"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 08:00:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 18:02:37 +0300
Message-Id: <2c9248b50e620e95d85b8b9252d020a547c9474a.1556809195.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556809195.git.jani.nikula@intel.com>
References: <cover.1556809195.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 03/13] drm/i915: move ranges to intel_display.c
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

UmVkdWNlIGNsdXR0ZXIgZnJvbSBpbnRlbF9kcnYuaCB3aXRoIHRoZSBtaW5pbWFsIGNoYW5nZS4K
ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwgMTUgKysrKysrKysrKysrKysr
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCAgICAgfCAxNSAtLS0tLS0tLS0tLS0t
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCmluZGV4IGRkNjVkNy4uNmViZTAwMCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwpAQCAtNTA2Miw2ICs1MDYyLDIxIEBAIHUx
NiBza2xfc2NhbGVyX2NhbGNfcGhhc2UoaW50IHN1YiwgaW50IHNjYWxlLCBib29sIGNocm9tYV9j
b3NpdGVkKQogCXJldHVybiAoKHBoYXNlID4+IDIpICYgUFNfUEhBU0VfTUFTSykgfCB0cmlwOwog
fQogCisjZGVmaW5lIFNLTF9NSU5fU1JDX1cgOAorI2RlZmluZSBTS0xfTUFYX1NSQ19XIDQwOTYK
KyNkZWZpbmUgU0tMX01JTl9TUkNfSCA4CisjZGVmaW5lIFNLTF9NQVhfU1JDX0ggNDA5NgorI2Rl
ZmluZSBTS0xfTUlOX0RTVF9XIDgKKyNkZWZpbmUgU0tMX01BWF9EU1RfVyA0MDk2CisjZGVmaW5l
IFNLTF9NSU5fRFNUX0ggOAorI2RlZmluZSBTS0xfTUFYX0RTVF9IIDQwOTYKKyNkZWZpbmUgSUNM
X01BWF9TUkNfVyA1MTIwCisjZGVmaW5lIElDTF9NQVhfU1JDX0ggNDA5NgorI2RlZmluZSBJQ0xf
TUFYX0RTVF9XIDUxMjAKKyNkZWZpbmUgSUNMX01BWF9EU1RfSCA0MDk2CisjZGVmaW5lIFNLTF9N
SU5fWVVWXzQyMF9TUkNfVyAxNgorI2RlZmluZSBTS0xfTUlOX1lVVl80MjBfU1JDX0ggMTYKKwog
c3RhdGljIGludAogc2tsX3VwZGF0ZV9zY2FsZXIoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsIGJvb2wgZm9yY2VfZGV0YWNoLAogCQkgIHVuc2lnbmVkIGludCBzY2FsZXJfdXNl
ciwgaW50ICpzY2FsZXJfaWQsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCmluZGV4IDI1YTVmYi4u
NzA5NjQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaApAQCAtNjY4LDIxICs2NjgsNiBAQCBz
dHJ1Y3QgaW50ZWxfaW5pdGlhbF9wbGFuZV9jb25maWcgewogCXU4IHJvdGF0aW9uOwogfTsKIAot
I2RlZmluZSBTS0xfTUlOX1NSQ19XIDgKLSNkZWZpbmUgU0tMX01BWF9TUkNfVyA0MDk2Ci0jZGVm
aW5lIFNLTF9NSU5fU1JDX0ggOAotI2RlZmluZSBTS0xfTUFYX1NSQ19IIDQwOTYKLSNkZWZpbmUg
U0tMX01JTl9EU1RfVyA4Ci0jZGVmaW5lIFNLTF9NQVhfRFNUX1cgNDA5NgotI2RlZmluZSBTS0xf
TUlOX0RTVF9IIDgKLSNkZWZpbmUgU0tMX01BWF9EU1RfSCA0MDk2Ci0jZGVmaW5lIElDTF9NQVhf
U1JDX1cgNTEyMAotI2RlZmluZSBJQ0xfTUFYX1NSQ19IIDQwOTYKLSNkZWZpbmUgSUNMX01BWF9E
U1RfVyA1MTIwCi0jZGVmaW5lIElDTF9NQVhfRFNUX0ggNDA5NgotI2RlZmluZSBTS0xfTUlOX1lV
Vl80MjBfU1JDX1cgMTYKLSNkZWZpbmUgU0tMX01JTl9ZVVZfNDIwX1NSQ19IIDE2Ci0KIHN0cnVj
dCBpbnRlbF9zY2FsZXIgewogCWludCBpbl91c2U7CiAJdTMyIG1vZGU7Ci0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
