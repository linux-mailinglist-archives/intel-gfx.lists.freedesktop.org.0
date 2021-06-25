Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D01C3B4328
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jun 2021 14:29:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE6B96E138;
	Fri, 25 Jun 2021 12:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA4F6E138;
 Fri, 25 Jun 2021 12:29:24 +0000 (UTC)
IronPort-SDR: uA9JRwMBxxcd6t/O0cgBQWZf5w4tYlegKp687j2/9KZ9L3DMjyMJxI8YfPjzhJsCeibYqRszKg
 2q6TlhDqePIw==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="204651942"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="204651942"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 05:29:23 -0700
IronPort-SDR: Zzr4R56rSB12nsbF7Z/QVWmTlz86jKzrFTr3RQhFlfP83U3HS8XlR71etHFfDa1qG8lH/NZE1j
 nkj9NOga0nfA==
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="488165493"
Received: from adalyx-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.15.48])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 05:29:21 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Jun 2021 13:27:50 +0100
Message-Id: <20210625122751.590289-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/gem: only allow WC for lmem
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBhbHJlYWR5IHRoZSBjYXNlIGZvciBvdXIga2VybmVsIGludGVybmFsIG1hcHBpbmdz
LCBhbmQgc2luY2Ugd2UKbm93IG9ubHkgc3VwcG9ydCBhIHNpbmdsZSBtb2RlIHRoaXMgc2hvdWxk
IGFsd2F5cyBiZSBXQyBpZiB0aGUgb2JqZWN0CmNhbiBiZSBwbGFjZWQgaW4gbG1lbS4KCnYyOiBy
ZWJhc2UgYW5kIGFsc28gdXBkYXRlIHNldF9kb21haW4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcg
QXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwu
dmV0dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9k
b21haW4uYyB8ICA2ICsrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21t
YW4uYyAgIHwgIDkgKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmMgfCAyMSArKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3QuaCB8ICA0ICsrKysKIDQgZmlsZXMgY2hhbmdlZCwgNDAgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9kb21haW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwpp
bmRleCAwNzM4MjIxMDBkYTcuLmQwYzkxNjk3YmIyMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9kb21haW4uYwpAQCAtNTcxLDYgKzU3MSwxMiBAQCBpOTE1X2dlbV9zZXRf
ZG9tYWluX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJaWYgKFJF
QURfT05DRShvYmotPndyaXRlX2RvbWFpbikgPT0gcmVhZF9kb21haW5zKQogCQlnb3RvIG91dF91
bnBpbjsKIAorCWlmIChpOTE1X2dlbV9vYmplY3RfcGxhY2VtZW50c19jb250YWluX3R5cGUob2Jq
LCBJTlRFTF9NRU1PUllfTE9DQUwpICYmCisJICAgIHJlYWRfZG9tYWlucyAhPSBJOTE1X0dFTV9E
T01BSU5fV0MpIHsKKwkJZXJyID0gLUVJTlZBTDsKKwkJZ290byBvdXRfdW5waW47CisJfQorCiAJ
aWYgKHJlYWRfZG9tYWlucyAmIEk5MTVfR0VNX0RPTUFJTl9XQykKIAkJZXJyID0gaTkxNV9nZW1f
b2JqZWN0X3NldF90b193Y19kb21haW4ob2JqLCB3cml0ZV9kb21haW4pOwogCWVsc2UgaWYgKHJl
YWRfZG9tYWlucyAmIEk5MTVfR0VNX0RPTUFJTl9HVFQpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX21tYW4uYwppbmRleCBhOTBmNzk2ZTg1YzAuLmYzNTg2YjM2ZGQ1MyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCkBAIC02ODgsNiArNjg4LDE1IEBA
IF9fYXNzaWduX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJ
ICAgICFpOTE1X2dlbV9vYmplY3RfaGFzX2lvbWVtKG9iaikpCiAJCXJldHVybiAtRU5PREVWOwog
CisJLyoKKwkgKiBOb3RlIHRoYXQgZXZlbiBpZiB0aGUgb2JqZWN0IGNhbiBhbHNvIGJlIHBsYWNl
ZCBpbiBzbWVtIHRoZW4gd2Ugc3RpbGwKKwkgKiBtYXAgYXMgV0MgaGVyZSwgc2luY2Ugd2UgY2Fu
IG9ubHkgc3VwcG9ydCBhIHNpbmdsZSBtb2RlLiBPbiBERzEgdGhpcworCSAqIHN1Y2tzIHNpbmNl
IHdlIGNhbid0IHR1cm4gb2ZmIHNub29waW5nIGZvciB0aGlzIGNhc2UuCisJICovCisJaWYgKG1t
YXBfdHlwZSAhPSBJOTE1X01NQVBfVFlQRV9XQyAmJgorCSAgICBpOTE1X2dlbV9vYmplY3RfcGxh
Y2VtZW50c19jb250YWluX3R5cGUob2JqLCBJTlRFTF9NRU1PUllfTE9DQUwpKQorCQlyZXR1cm4g
LUVOT0RFVjsKKwogCW1tbyA9IG1tYXBfb2Zmc2V0X2F0dGFjaChvYmosIG1tYXBfdHlwZSwgZmls
ZSk7CiAJaWYgKElTX0VSUihtbW8pKQogCQlyZXR1cm4gUFRSX0VSUihtbW8pOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCmluZGV4IDA3ZThmZjlhOGFhZS4uMzI2
OTU2YzE4Zjc2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
CkBAIC01MTMsNiArNTEzLDI3IEBAIGJvb2wgaTkxNV9nZW1fb2JqZWN0X2hhc19pb21lbShjb25z
dCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCXJldHVybiBvYmotPm1lbV9mbGFn
cyAmIEk5MTVfQk9fRkxBR19JT01FTTsKIH0KIAorLyoqCisgKiBpOTE1X2dlbV9vYmplY3RfcGxh
Y2VtZW50c19jb250YWluX3R5cGUgLSBDaGVjayB3aGV0aGVyIHRoZSBvYmplY3QgY2FuIGJlCisg
KiBwbGFjZWQgYXQgY2VydGFpbiBtZW1vcnkgdHlwZQorICogQG9iajogUG9pbnRlciB0byB0aGUg
b2JqZWN0CisgKiBAdHlwZTogVGhlIG1lbW9yeSB0eXBlIHRvIGNoZWNrCisgKgorICogUmV0dXJu
OiBUcnVlIGlmIHRoZSBvYmplY3QgY2FuIGJlIHBsYWNlZCBpbiBAdHlwZS4gRmFsc2Ugb3RoZXJ3
aXNlLgorICovCitib29sIGk5MTVfZ2VtX29iamVjdF9wbGFjZW1lbnRzX2NvbnRhaW5fdHlwZShz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAorCQkJCQkgICAgIGVudW0gaW50ZWxfbWVt
b3J5X3R5cGUgdHlwZSkKK3sKKwl1bnNpZ25lZCBpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCBv
YmotPm1tLm5fcGxhY2VtZW50czsgaSsrKSB7CisJCWlmIChvYmotPm1tLnBsYWNlbWVudHNbaV0t
PnR5cGUgPT0gdHlwZSkKKwkJCXJldHVybiB0cnVlOworCX0KKworCXJldHVybiBmYWxzZTsKK30K
Kwogdm9pZCBpOTE1X2dlbV9pbml0X19vYmplY3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQogewogCUlOSVRfV09SSygmaTkxNS0+bW0uZnJlZV93b3JrLCBfX2k5MTVfZ2VtX2ZyZWVf
d29yayk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKaW5kZXgg
ZWEzMjI0YTQ4MGM0Li5lMWRhYTU4YmMyMjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmgKQEAgLTEyLDYgKzEyLDcgQEAKICNpbmNsdWRlIDxkcm0vZHJtX2Rl
dmljZS5oPgogCiAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5oIgorI2luY2x1
ZGUgImludGVsX21lbW9yeV9yZWdpb24uaCIKICNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3RfdHlw
ZXMuaCIKICNpbmNsdWRlICJpOTE1X2dlbV9ndHQuaCIKICNpbmNsdWRlICJpOTE1X2dlbV93dy5o
IgpAQCAtNTk3LDYgKzU5OCw5IEBAIGJvb2wgaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGFibGUoc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaik7CiAKIGJvb2wgaTkxNV9nZW1fb2JqZWN0X3Zh
bGlkYXRlc190b19sbWVtKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwogCitib29s
IGk5MTVfZ2VtX29iamVjdF9wbGFjZW1lbnRzX2NvbnRhaW5fdHlwZShzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqLAorCQkJCQkgICAgIGVudW0gaW50ZWxfbWVtb3J5X3R5cGUgdHlwZSk7
CisKICNpZmRlZiBDT05GSUdfTU1VX05PVElGSUVSCiBzdGF0aWMgaW5saW5lIGJvb2wKIGk5MTVf
Z2VtX29iamVjdF9pc191c2VycHRyKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCi0t
IAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
