Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F543873E3
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 10:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563F46E856;
	Tue, 18 May 2021 08:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97A16E859;
 Tue, 18 May 2021 08:27:34 +0000 (UTC)
IronPort-SDR: agEB/lrfFDXGAN02Fv2IM1MU54khOVw+F+ow1w5ecnpLHSAFiG1jEzpvlj9Gc/74diDNRQ3Wau
 Lsshr+sh4K1g==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="197572679"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="197572679"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:27:33 -0700
IronPort-SDR: mc2WPPpSG+uhNZfY8EuHtOeGn87rUQiGYXMpU4i+Q+roC7ovBtD3XQ1S5dtjaULWbgCmzp+Lm+
 AaDANq07qLmw==
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="611892287"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.195])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 01:27:25 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 18 May 2021 10:26:48 +0200
Message-Id: <20210518082701.997251-3-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
References: <20210518082701.997251-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/15] drm/i915: Don't free shared locks
 while shared
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

V2UgYXJlIGN1cnJlbnRseSBzaGFyaW5nIHRoZSBWTSByZXNlcnZhdGlvbiBsb2NrcyBhY3Jvc3Mg
YSBudW1iZXIgb2YKZ2VtIG9iamVjdHMgd2l0aCBwYWdlLXRhYmxlIG1lbW9yeS4gU2luY2UgVFRN
IHdpbGwgaW5kaXZpZGl1YWxpemUgdGhlCnJlc2VydmF0aW9uIGxvY2tzIHdoZW4gZnJlZWluZyBv
YmplY3RzLCBpbmNsdWRpbmcgYWNjZXNzaW5nIHRoZSBzaGFyZWQKbG9ja3MsIG1ha2Ugc3VyZSB0
aGF0IHRoZSBzaGFyZWQgbG9ja3MgYXJlIG5vdCBmcmVlZCB1bnRpbCB0aGF0IGlzIGRvbmUuCkZv
ciBQUEdUVCB3ZSBhZGQgYW4gYWRkaXRpb25hbCByZWZjb3VudCwgZm9yIEdHVFQgd2UgdGFrZSBh
ZGRpdGlvbmFsCm1lYXN1cmVzIHRvIG1ha2Ugc3VyZSBvYmplY3RzIHNoYXJpbmcgdGhlIEdHVFQg
cmVzZXJ2YXRpb24gbG9jayBhcmUKZnJlZWQgYXQgR0dUVCB0YWtlZG93bgoKU2lnbmVkLW9mZi1i
eTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgot
LS0KdjI6IFRyeSBoYXJkZXIgdG8gbWFrZSBzdXJlIG9iamVjdHMgc2hhcmluZyB0aGUgR0dUVCBy
ZXNlcnZhdGlvbiBsb2NrIGFyZQpmcmVlZCBhdCBHR1RUIHRha2Vkb3duLgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgICB8ICAzICsrCiAuLi4vZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAgMSArCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9nZ3R0LmMgICAgICAgICAgfCAxOSArKysrKystLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMgICAgICAgICAgIHwgNDUgKysrKysrKysrKysrKysr
LS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmggICAgICAgICAgIHwgMzAg
KysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcHBndHQuYyAgICAg
ICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAg
ICB8ICA1ICsrKwogNyBmaWxlcyBjaGFuZ2VkLCA5MiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKaW5kZXgg
MjgxNDQ0MTBkZjg2Li5hYmFkZjA5OTRhZDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmMKQEAgLTI1Miw2ICsyNTIsOSBAQCBzdGF0aWMgdm9pZCBfX2k5MTVf
Z2VtX2ZyZWVfb2JqZWN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJaWYgKG9i
ai0+bW0ubl9wbGFjZW1lbnRzID4gMSkKIAkJCWtmcmVlKG9iai0+bW0ucGxhY2VtZW50cyk7CiAK
KwkJaWYgKG9iai0+cmVzdl9zaGFyZWRfZnJvbSkKKwkJCWk5MTVfdm1fcmVzdl9wdXQob2JqLT5y
ZXN2X3NoYXJlZF9mcm9tKTsKKwogCQkvKiBCdXQga2VlcCB0aGUgcG9pbnRlciBhbGl2ZSBmb3Ig
UkNVLXByb3RlY3RlZCBsb29rdXBzICovCiAJCWNhbGxfcmN1KCZvYmotPnJjdSwgX19pOTE1X2dl
bV9mcmVlX29iamVjdF9yY3UpOwogCQljb25kX3Jlc2NoZWQoKTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAppbmRleCAwNzI3ZDBjNzZhYTAu
LjQ1MDM0MGE3MzE4NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdF90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3RfdHlwZXMuaApAQCAtMTQ5LDYgKzE0OSw3IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0IHsKIAkgKiB3aGVuIGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKCkgb3IgaTkxNV9nZW1f
d3dfY3R4X2ZpbmkoKSBhcmUgY2FsbGVkLgogCSAqLwogCXN0cnVjdCBsaXN0X2hlYWQgb2JqX2xp
bms7CisJc3RydWN0IGRtYV9yZXN2ICpyZXN2X3NoYXJlZF9mcm9tOwogCiAJdW5pb24gewogCQlz
dHJ1Y3QgcmN1X2hlYWQgcmN1OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jCmluZGV4
IDM1MDY5Y2E1ZDdkZS4uMTBjMjNhNzQ5YTk1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9nZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z2d0dC5jCkBAIC03NDYsNyArNzQ2LDYgQEAgc3RhdGljIHZvaWQgZ2d0dF9jbGVhbnVwX2h3KHN0
cnVjdCBpOTE1X2dndHQgKmdndHQpCiAKIAltdXRleF91bmxvY2soJmdndHQtPnZtLm11dGV4KTsK
IAlpOTE1X2FkZHJlc3Nfc3BhY2VfZmluaSgmZ2d0dC0+dm0pOwotCWRtYV9yZXN2X2ZpbmkoJmdn
dHQtPnZtLnJlc3YpOwogCiAJYXJjaF9waHlzX3djX2RlbChnZ3R0LT5tdHJyKTsKIApAQCAtNzY4
LDYgKzc2NywxOSBAQCB2b2lkIGk5MTVfZ2d0dF9kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKIAlnZ3R0X2NsZWFudXBfaHcoZ2d0dCk7CiB9CiAKKy8qKgorICog
aTkxNV9nZ3R0X2RyaXZlcl9sYXRlX3JlbGVhc2UgLSBDbGVhbnVwIG9mIEdHVFQgdGhhdCBuZWVk
cyB0byBiZSBkb25lIGFmdGVyCisgKiBhbGwgZnJlZSBvYmplY3RzIGhhdmUgYmVlbiBkcmFpbmVk
LgorICogQGk5MTU6IGk5MTUgZGV2aWNlCisgKi8KK3ZvaWQgaTkxNV9nZ3R0X2RyaXZlcl9sYXRl
X3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCit7CisJc3RydWN0IGk5MTVf
Z2d0dCAqZ2d0dCA9ICZpOTE1LT5nZ3R0OworCisJR0VNX1dBUk5fT04oa3JlZl9yZWFkKCZnZ3R0
LT52bS5yZXN2X3JlZikgIT0gMSk7CisJZG1hX3Jlc3ZfZmluaSgmZ2d0dC0+dm0uX3Jlc3YpOwor
fQorCiBzdGF0aWMgdW5zaWduZWQgaW50IGdlbjZfZ2V0X3RvdGFsX2d0dF9zaXplKHUxNiBzbmJf
Z21jaF9jdGwpCiB7CiAJc25iX2dtY2hfY3RsID4+PSBTTkJfR01DSF9HR01TX1NISUZUOwpAQCAt
ODI5LDYgKzg0MSw3IEBAIHN0YXRpYyBpbnQgZ2d0dF9wcm9iZV9jb21tb24oc3RydWN0IGk5MTVf
Z2d0dCAqZ2d0dCwgdTY0IHNpemUpCiAJCXJldHVybiAtRU5PTUVNOwogCX0KIAorCWtyZWZfaW5p
dCgmZ2d0dC0+dm0ucmVzdl9yZWYpOwogCXJldCA9IHNldHVwX3NjcmF0Y2hfcGFnZSgmZ2d0dC0+
dm0pOwogCWlmIChyZXQpIHsKIAkJZHJtX2VycigmaTkxNS0+ZHJtLCAiU2NyYXRjaCBzZXR1cCBm
YWlsZWRcbiIpOwpAQCAtMTEzNSw3ICsxMTQ4LDcgQEAgc3RhdGljIGludCBnZ3R0X3Byb2JlX2h3
KHN0cnVjdCBpOTE1X2dndHQgKmdndHQsIHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJZ2d0dC0+dm0u
Z3QgPSBndDsKIAlnZ3R0LT52bS5pOTE1ID0gaTkxNTsKIAlnZ3R0LT52bS5kbWEgPSBpOTE1LT5k
cm0uZGV2OwotCWRtYV9yZXN2X2luaXQoJmdndHQtPnZtLnJlc3YpOworCWRtYV9yZXN2X2luaXQo
JmdndHQtPnZtLl9yZXN2KTsKIAogCWlmIChJTlRFTF9HRU4oaTkxNSkgPD0gNSkKIAkJcmV0ID0g
aTkxNV9nbWNoX3Byb2JlKGdndHQpOwpAQCAtMTE0NCw3ICsxMTU3LDcgQEAgc3RhdGljIGludCBn
Z3R0X3Byb2JlX2h3KHN0cnVjdCBpOTE1X2dndHQgKmdndHQsIHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiAJZWxzZQogCQlyZXQgPSBnZW44X2dtY2hfcHJvYmUoZ2d0dCk7CiAJaWYgKHJldCkgewotCQlk
bWFfcmVzdl9maW5pKCZnZ3R0LT52bS5yZXN2KTsKKwkJZG1hX3Jlc3ZfZmluaSgmZ2d0dC0+dm0u
X3Jlc3YpOwogCQlyZXR1cm4gcmV0OwogCX0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQu
YwppbmRleCA5Yjk4ZjlkOWZhYTMuLjY5NWIyMmIxNzY0NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3R0LmMKQEAgLTIyLDggKzIyLDExIEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICphbGxvY19wdF9sbWVtKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLCBpbnQgc3opCiAJ
ICogb2JqZWN0IHVuZGVybmVhdGgsIHdpdGggdGhlIGlkZWEgdGhhdCBvbmUgb2JqZWN0X2xvY2so
KSB3aWxsIGxvY2sKIAkgKiB0aGVtIGFsbCBhdCBvbmNlLgogCSAqLwotCWlmICghSVNfRVJSKG9i
aikpCi0JCW9iai0+YmFzZS5yZXN2ID0gJnZtLT5yZXN2OworCWlmICghSVNfRVJSKG9iaikpIHsK
KwkJb2JqLT5iYXNlLnJlc3YgPSBpOTE1X3ZtX3Jlc3ZfZ2V0KHZtKTsKKwkJb2JqLT5yZXN2X3No
YXJlZF9mcm9tID0gb2JqLT5iYXNlLnJlc3Y7CisJfQorCiAJcmV0dXJuIG9iajsKIH0KIApAQCAt
NDAsOCArNDMsMTEgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmFsbG9jX3B0X2RtYShz
dHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwgaW50IHN6KQogCSAqIG9iamVjdCB1bmRlcm5l
YXRoLCB3aXRoIHRoZSBpZGVhIHRoYXQgb25lIG9iamVjdF9sb2NrKCkgd2lsbCBsb2NrCiAJICog
dGhlbSBhbGwgYXQgb25jZS4KIAkgKi8KLQlpZiAoIUlTX0VSUihvYmopKQotCQlvYmotPmJhc2Uu
cmVzdiA9ICZ2bS0+cmVzdjsKKwlpZiAoIUlTX0VSUihvYmopKSB7CisJCW9iai0+YmFzZS5yZXN2
ID0gaTkxNV92bV9yZXN2X2dldCh2bSk7CisJCW9iai0+cmVzdl9zaGFyZWRfZnJvbSA9IG9iai0+
YmFzZS5yZXN2OworCX0KKwogCXJldHVybiBvYmo7CiB9CiAKQEAgLTEwMiw3ICsxMDgsNyBAQCB2
b2lkIF9faTkxNV92bV9jbG9zZShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIGludCBp
OTE1X3ZtX2xvY2tfb2JqZWN0cyhzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJCSBz
dHJ1Y3QgaTkxNV9nZW1fd3dfY3R4ICp3dykKIHsKLQlpZiAodm0tPnNjcmF0Y2hbMF0tPmJhc2Uu
cmVzdiA9PSAmdm0tPnJlc3YpIHsKKwlpZiAodm0tPnNjcmF0Y2hbMF0tPmJhc2UucmVzdiA9PSAm
dm0tPl9yZXN2KSB7CiAJCXJldHVybiBpOTE1X2dlbV9vYmplY3RfbG9jayh2bS0+c2NyYXRjaFsw
XSwgd3cpOwogCX0gZWxzZSB7CiAJCXN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCA9IGk5MTVfdm1f
dG9fcHBndHQodm0pOwpAQCAtMTE4LDYgKzEyNCwyMiBAQCB2b2lkIGk5MTVfYWRkcmVzc19zcGFj
ZV9maW5pKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQogCW11dGV4X2Rlc3Ryb3koJnZt
LT5tdXRleCk7CiB9CiAKKy8qKgorICogaTkxNV92bV9yZXN2X3JlbGVhc2UgLSBGaW5hbCBzdHJ1
Y3QgaTkxNV9hZGRyZXNzX3NwYWNlIGRlc3RydWN0b3IKKyAqIEBrcmVmOiBQb2ludGVyIHRvIHRo
ZSAmaTkxNV9hZGRyZXNzX3NwYWNlLnJlc3ZfcmVmIG1lbWJlci4KKyAqCisgKiBUaGlzIGZ1bmN0
aW9uIGlzIGNhbGxlZCB3aGVuIHRoZSBsYXN0IGxvY2sgc2hhcmVyIG5vIGxvbmdlciBzaGFyZXMg
dGhlCisgKiAmaTkxNV9hZGRyZXNzX3NwYWNlLl9yZXN2IGxvY2suCisgKi8KK3ZvaWQgaTkxNV92
bV9yZXN2X3JlbGVhc2Uoc3RydWN0IGtyZWYgKmtyZWYpCit7CisJc3RydWN0IGk5MTVfYWRkcmVz
c19zcGFjZSAqdm0gPQorCQljb250YWluZXJfb2Yoa3JlZiwgdHlwZW9mKCp2bSksIHJlc3ZfcmVm
KTsKKworCWRtYV9yZXN2X2ZpbmkoJnZtLT5fcmVzdik7CisJa2ZyZWUodm0pOworfQorCiBzdGF0
aWMgdm9pZCBfX2k5MTVfdm1fcmVsZWFzZShzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiB7CiAJ
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0gPQpAQCAtMTI1LDkgKzE0Nyw4IEBAIHN0YXRp
YyB2b2lkIF9faTkxNV92bV9yZWxlYXNlKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKIAogCXZt
LT5jbGVhbnVwKHZtKTsKIAlpOTE1X2FkZHJlc3Nfc3BhY2VfZmluaSh2bSk7Ci0JZG1hX3Jlc3Zf
ZmluaSgmdm0tPnJlc3YpOwogCi0Ja2ZyZWUodm0pOworCWk5MTVfdm1fcmVzdl9wdXQoJnZtLT5f
cmVzdik7CiB9CiAKIHZvaWQgaTkxNV92bV9yZWxlYXNlKHN0cnVjdCBrcmVmICprcmVmKQpAQCAt
MTQ0LDYgKzE2NSwxNCBAQCB2b2lkIGk5MTVfdm1fcmVsZWFzZShzdHJ1Y3Qga3JlZiAqa3JlZikK
IHZvaWQgaTkxNV9hZGRyZXNzX3NwYWNlX2luaXQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAq
dm0sIGludCBzdWJjbGFzcykKIHsKIAlrcmVmX2luaXQoJnZtLT5yZWYpOworCisJLyoKKwkgKiBT
cGVjaWFsIGNhc2UgZm9yIEdHVFQgdGhhdCBoYXMgYWxyZWFkeSBkb25lIGFuIGVhcmx5CisJICog
a3JlZl9pbml0IGhlcmUuCisJICovCisJaWYgKCFrcmVmX3JlYWQoJnZtLT5yZXN2X3JlZikpCisJ
CWtyZWZfaW5pdCgmdm0tPnJlc3ZfcmVmKTsKKwogCUlOSVRfUkNVX1dPUksoJnZtLT5yY3UsIF9f
aTkxNV92bV9yZWxlYXNlKTsKIAlhdG9taWNfc2V0KCZ2bS0+b3BlbiwgMSk7CiAKQEAgLTE3MCw3
ICsxOTksNyBAQCB2b2lkIGk5MTVfYWRkcmVzc19zcGFjZV9pbml0KHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtLCBpbnQgc3ViY2xhc3MpCiAJCW1pZ2h0X2FsbG9jKEdGUF9LRVJORUwpOwog
CQltdXRleF9yZWxlYXNlKCZ2bS0+bXV0ZXguZGVwX21hcCwgX1RISVNfSVBfKTsKIAl9Ci0JZG1h
X3Jlc3ZfaW5pdCgmdm0tPnJlc3YpOworCWRtYV9yZXN2X2luaXQoJnZtLT5fcmVzdik7CiAKIAlH
RU1fQlVHX09OKCF2bS0+dG90YWwpOwogCWRybV9tbV9pbml0KCZ2bS0+bW0sIDAsIHZtLT50b3Rh
bCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5oCmluZGV4IGNhMDBiNDU4MjdiNy4uYjFi
Njg3MTQzMTQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuaApAQCAtMjQ1LDcgKzI0
NSw5IEBAIHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgewogCWF0b21pY190IG9wZW47CiAKIAlz
dHJ1Y3QgbXV0ZXggbXV0ZXg7IC8qIHByb3RlY3RzIHZtYSBhbmQgb3VyIGxpc3RzICovCi0Jc3Ry
dWN0IGRtYV9yZXN2IHJlc3Y7IC8qIHJlc2VydmF0aW9uIGxvY2sgZm9yIGFsbCBwZCBvYmplY3Rz
LCBhbmQgYnVmZmVyIHBvb2wgKi8KKworCXN0cnVjdCBrcmVmIHJlc3ZfcmVmOyAvKiBrcmVmIHRv
IGtlZXAgdGhlIHJlc2VydmF0aW9uIGxvY2sgYWxpdmUuICovCisJc3RydWN0IGRtYV9yZXN2IF9y
ZXN2OyAvKiByZXNlcnZhdGlvbiBsb2NrIGZvciBhbGwgcGQgb2JqZWN0cywgYW5kIGJ1ZmZlciBw
b29sICovCiAjZGVmaW5lIFZNX0NMQVNTX0dHVFQgMAogI2RlZmluZSBWTV9DTEFTU19QUEdUVCAx
CiAjZGVmaW5lIFZNX0NMQVNTX0RQVCAyCkBAIC00MDQsMTMgKzQwNiwzOCBAQCBpOTE1X3ZtX2dl
dChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAlyZXR1cm4gdm07CiB9CiAKKy8qKgor
ICogaTkxNV92bV9yZXN2X2dldCAtIE9idGFpbiBhIHJlZmVyZW5jZSBvbiB0aGUgdm0ncyByZXNl
cnZhdGlvbiBsb2NrCisgKiBAdm06IFRoZSB2bSB3aG9zZSByZXNlcnZhdGlvbiBsb2NrIHdlIHdh
bnQgdG8gc2hhcmUuCisgKgorICogUmV0dXJuOiBBIHBvaW50ZXIgdG8gdGhlIHZtJ3MgcmVzZXJ2
YXRpb24gbG9jay4KKyAqLworc3RhdGljIGlubGluZSBzdHJ1Y3QgZG1hX3Jlc3YgKmk5MTVfdm1f
cmVzdl9nZXQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCit7CisJa3JlZl9nZXQoJnZt
LT5yZXN2X3JlZik7CisJcmV0dXJuICZ2bS0+X3Jlc3Y7Cit9CisKIHZvaWQgaTkxNV92bV9yZWxl
YXNlKHN0cnVjdCBrcmVmICprcmVmKTsKIAordm9pZCBpOTE1X3ZtX3Jlc3ZfcmVsZWFzZShzdHJ1
Y3Qga3JlZiAqa3JlZik7CisKIHN0YXRpYyBpbmxpbmUgdm9pZCBpOTE1X3ZtX3B1dChzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIHsKIAlrcmVmX3B1dCgmdm0tPnJlZiwgaTkxNV92bV9y
ZWxlYXNlKTsKIH0KIAorLyoqCisgKiBpOTE1X3ZtX3Jlc3ZfcHV0IC0gUmVsZWFzZSBhIHJlZmVy
ZW5jZSBvbiB0aGUgdm0ncyByZXNlcnZhdGlvbiBsb2NrCisgKiBAcmVzdjogUG9pbnRlciB0byBh
IHJlc2VydmF0aW9uIGxvY2sgb2J0YWluZWQgZnJvbSBpOTE1X3ZtX3Jlc3ZfZ2V0KCkKKyAqLwor
c3RhdGljIGlubGluZSB2b2lkIGk5MTVfdm1fcmVzdl9wdXQoc3RydWN0IGRtYV9yZXN2ICpyZXN2
KQoreworCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0gY29udGFpbmVyX29mKHJlc3Ys
IHR5cGVvZigqdm0pLCBfcmVzdik7CisKKwlrcmVmX3B1dCgmdm0tPnJlc3ZfcmVmLCBpOTE1X3Zt
X3Jlc3ZfcmVsZWFzZSk7Cit9CisKIHN0YXRpYyBpbmxpbmUgc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqCiBpOTE1X3ZtX29wZW4oc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCiB7CkBA
IC01MDYsNiArNTMzLDcgQEAgdm9pZCBpOTE1X2dndHRfZW5hYmxlX2d1YyhzdHJ1Y3QgaTkxNV9n
Z3R0ICpnZ3R0KTsKIHZvaWQgaTkxNV9nZ3R0X2Rpc2FibGVfZ3VjKHN0cnVjdCBpOTE1X2dndHQg
KmdndHQpOwogaW50IGk5MTVfaW5pdF9nZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KTsKIHZvaWQgaTkxNV9nZ3R0X2RyaXZlcl9yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KTsKK3ZvaWQgaTkxNV9nZ3R0X2RyaXZlcl9sYXRlX3JlbGVhc2Uoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpOwogCiBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9nZ3R0X2hhc19h
cGVydHVyZShjb25zdCBzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogewpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcHBndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3BwZ3R0LmMKaW5kZXggNGUzZDgwYzIyOTVjLi5hZWUzYTg5MjkyNDUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3BwZ3R0LmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcHBndHQuYwpAQCAtMzA3LDcgKzMwNyw3IEBAIHZvaWQg
cHBndHRfaW5pdChzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQsIHN0cnVjdCBpbnRlbF9ndCAqZ3Qp
CiAJcHBndHQtPnZtLmRtYSA9IGk5MTUtPmRybS5kZXY7CiAJcHBndHQtPnZtLnRvdGFsID0gQklU
X1VMTChJTlRFTF9JTkZPKGk5MTUpLT5wcGd0dF9zaXplKTsKIAotCWRtYV9yZXN2X2luaXQoJnBw
Z3R0LT52bS5yZXN2KTsKKwlkbWFfcmVzdl9pbml0KCZwcGd0dC0+dm0uX3Jlc3YpOwogCWk5MTVf
YWRkcmVzc19zcGFjZV9pbml0KCZwcGd0dC0+dm0sIFZNX0NMQVNTX1BQR1RUKTsKIAogCXBwZ3R0
LT52bS52bWFfb3BzLmJpbmRfdm1hICAgID0gcHBndHRfYmluZF92bWE7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYwppbmRleCA1MTE4ZGM4Mzg2YjIuLjkyYmNjYzU2MjNhOCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCkBAIC02MzEsNiArNjMxLDggQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9od19w
cm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaW50ZWxfbWVtb3J5X3Jl
Z2lvbnNfZHJpdmVyX3JlbGVhc2UoZGV2X3ByaXYpOwogZXJyX2dndHQ6CiAJaTkxNV9nZ3R0X2Ry
aXZlcl9yZWxlYXNlKGRldl9wcml2KTsKKwlpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKGRl
dl9wcml2KTsKKwlpOTE1X2dndHRfZHJpdmVyX2xhdGVfcmVsZWFzZShkZXZfcHJpdik7CiBlcnJf
cGVyZjoKIAlpOTE1X3BlcmZfZmluaShkZXZfcHJpdik7CiAJcmV0dXJuIHJldDsKQEAgLTg4MCw2
ICs4ODIsOCBAQCBpbnQgaTkxNV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNv
bnN0IHN0cnVjdCBwY2lfZGV2aWNlX2lkICplbnQpCiAJaTkxNV9kcml2ZXJfaHdfcmVtb3ZlKGk5
MTUpOwogCWludGVsX21lbW9yeV9yZWdpb25zX2RyaXZlcl9yZWxlYXNlKGk5MTUpOwogCWk5MTVf
Z2d0dF9kcml2ZXJfcmVsZWFzZShpOTE1KTsKKwlpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3Rz
KGk5MTUpOworCWk5MTVfZ2d0dF9kcml2ZXJfbGF0ZV9yZWxlYXNlKGk5MTUpOwogb3V0X2NsZWFu
dXBfbW1pbzoKIAlpOTE1X2RyaXZlcl9tbWlvX3JlbGVhc2UoaTkxNSk7CiBvdXRfcnVudGltZV9w
bV9wdXQ6CkBAIC05MzYsNiArOTQwLDcgQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfcmVsZWFz
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQogCWludGVsX21lbW9yeV9yZWdpb25zX2RyaXZlcl9y
ZWxlYXNlKGRldl9wcml2KTsKIAlpOTE1X2dndHRfZHJpdmVyX3JlbGVhc2UoZGV2X3ByaXYpOwog
CWk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoZGV2X3ByaXYpOworCWk5MTVfZ2d0dF9kcml2
ZXJfbGF0ZV9yZWxlYXNlKGRldl9wcml2KTsKIAogCWk5MTVfZHJpdmVyX21taW9fcmVsZWFzZShk
ZXZfcHJpdik7CiAKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
