Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8186439163C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 13:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5EF6EC99;
	Wed, 26 May 2021 11:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10BD6EC99;
 Wed, 26 May 2021 11:33:23 +0000 (UTC)
IronPort-SDR: USvBZTlWK0cQYNw0y6Jp5zdlUM02KA8TVwokkOaL0iABXJmY3oWjrlkw2HHlPOdSakxV2t1xAu
 XzYbSWDtxNZA==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="223627277"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="223627277"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:23 -0700
IronPort-SDR: +R2ICfD/6CH7WzAoP5xoyrvagN62Vf1FxdiZDDy1FR78yysXGE3FOfKFQ5A/LJjW2JUbruBW1d
 +vACrEsAIVqA==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="633457875"
Received: from pegilssx-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.205])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 04:33:22 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 26 May 2021 13:32:49 +0200
Message-Id: <20210526113259.1661914-6-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
References: <20210526113259.1661914-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 05/15] drm/i915/ttm: Embed a ttm buffer
 object in the i915 gem object
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW1iZWQgYSBzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgaW50byB0aGUgaTkxNSBnZW0gb2JqZWN0
LCBtYWtpbmcgc3VyZQp3ZSBhbGlhcyB0aGUgZ2VtIG9iamVjdCBwYXJ0LiBJdCdzIGEgYml0IHVu
Zm9ydHVuYXRlIHRoYXQgdGhlCnN0cnVjdCB0dG1fYnVmZmVyX29qYmVjdCBlbWJlZHMgYSBnZW0g
b2JqZWN0IHNpbmNlIHdlIG90aGVyd2lzZSBjb3VsZAptYWtlIHRoZSBUVE0gcGFydCBwcml2YXRl
IHRvIHRoZSBUVE0gYmFja2VuZCwgYW5kIHVzZSB0aGUgdXN1YWwKaTkxNSBnZW0gb2JqZWN0IGZv
ciB0aGUgb3RoZXIgYmFja2VuZHMuClRvIG1ha2UgdGhpcyBhIGJpdCBtb3JlIHN0b3JhZ2UgZWZm
aWNpZW50IGZvciB0aGUgb3RoZXIgYmFja2VuZHMsCndlJ2QgaGF2ZSB0byB1c2UgYSBwb2ludGVy
IGZvciB0aGUgZ2VtIG9iamVjdCB3aGljaCB3b3VsZCByZXF1aXJlCmEgbG90IG9mIGNoYW5nZXMg
aW4gdGhlIGRyaXZlci4gV2UgcG9zdHBvbmUgdGhhdCBmb3IgbGF0ZXIuCgpTaWduZWQtb2ZmLWJ5
OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkFj
a2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgICAg
ICB8ICA3ICsrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3Rf
dHlwZXMuaCB8IDEyICsrKysrKysrKysrLQogMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdC5jCmluZGV4IDJiZTYxMDlkMDA5My4uNTcwNmQ0NzE2OTJkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCkBAIC02Miw2ICs2MiwxMyBAQCB2b2lkIGk5
MTVfZ2VtX29iamVjdF9pbml0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkg
IGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyAqb3BzLAogCQkJICBzdHJ1Y3Qg
bG9ja19jbGFzc19rZXkgKmtleSwgdW5zaWduZWQgZmxhZ3MpCiB7CisJLyoKKwkgKiBBIGdlbSBv
YmplY3QgaXMgZW1iZWRkZWQgYm90aCBpbiBhIHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCA6LyBh
bmQKKwkgKiBpbiBhIGRybV9pOTE1X2dlbV9vYmplY3QuIE1ha2Ugc3VyZSB0aGV5IGFyZSBhbGlh
c2VkLgorCSAqLworCUJVSUxEX0JVR19PTihvZmZzZXRvZih0eXBlb2YoKm9iaiksIGJhc2UpICE9
CisJCSAgICAgb2Zmc2V0b2YodHlwZW9mKCpvYmopLCBfX2RvX25vdF9hY2Nlc3MuYmFzZSkpOwor
CiAJc3Bpbl9sb2NrX2luaXQoJm9iai0+dm1hLmxvY2spOwogCUlOSVRfTElTVF9IRUFEKCZvYmot
PnZtYS5saXN0KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29i
amVjdF90eXBlcy5oCmluZGV4IGY1YjQ2ZDExZTZlNi4uZDA0N2VhMTI2MDI5IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oCkBAIC0xMCw2
ICsxMCw3IEBACiAjaW5jbHVkZSA8bGludXgvbW11X25vdGlmaWVyLmg+CiAKICNpbmNsdWRlIDxk
cm0vZHJtX2dlbS5oPgorI2luY2x1ZGUgPGRybS90dG0vdHRtX2JvX2FwaS5oPgogI2luY2x1ZGUg
PHVhcGkvZHJtL2k5MTVfZHJtLmg+CiAKICNpbmNsdWRlICJpOTE1X2FjdGl2ZS5oIgpAQCAtOTks
NyArMTAwLDE2IEBAIHN0cnVjdCBpOTE1X2dlbV9vYmplY3RfcGFnZV9pdGVyIHsKIH07CiAKIHN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsKLQlzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgYmFzZTsK
KwkvKgorCSAqIFdlIG1pZ2h0IGhhdmUgcmVhc29uIHRvIHJldmlzaXQgdGhlIGJlbG93IHNpbmNl
IGl0IHdhc3RlcworCSAqIGEgbG90IG9mIHNwYWNlIGZvciBub24tdHRtIGdlbSBvYmplY3RzLgor
CSAqIEluIGFueSBjYXNlLCBhbHdheXMgdXNlIHRoZSBhY2Nlc3NvcnMgZm9yIHRoZSB0dG1fYnVm
ZmVyX29iamVjdAorCSAqIHdoZW4gYWNjZXNzaW5nIGl0LgorCSAqLworCXVuaW9uIHsKKwkJc3Ry
dWN0IGRybV9nZW1fb2JqZWN0IGJhc2U7CisJCXN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCBfX2Rv
X25vdF9hY2Nlc3M7CisJfTsKIAogCWNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0X29w
cyAqb3BzOwogCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
