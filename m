Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2035393155
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 011BD6F3D1;
	Thu, 27 May 2021 14:47:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8226F388;
 Thu, 27 May 2021 14:47:31 +0000 (UTC)
IronPort-SDR: DQP2ITsQRk0vKGL4xKdmIZjCTE6FIUiAhUqoIX7n2SB8XIn9Dib/Ri5R4uin/go7GmdviP08t9
 H89bDSw39MEw==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202515580"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="202515580"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 07:47:31 -0700
IronPort-SDR: 1OkfnBlg1mBbt5VrYNCEziy13te3Tj3Cl1WKLL6fxBapR8k7JL3KfwBkg887L5DVeXmZQImZGg
 3CH5J6Bc3ldQ==
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="443597876"
Received: from ibanaga-mobl.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 07:47:29 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 16:47:00 +0200
Message-Id: <20210527144710.1975553-6-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527144710.1975553-1-thomas.hellstrom@linux.intel.com>
References: <20210527144710.1975553-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 05/15] drm/i915/ttm: Embed a ttm buffer
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
