Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 292A82C8ECF
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:14:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 623EE6E82E;
	Mon, 30 Nov 2020 20:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734206E82E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:14:07 +0000 (UTC)
IronPort-SDR: NgXdLj26tRIoloHDSzLf5Xh/VFtzRtqklk0qGqxmgH1Zz85zsDoCdWddEvSyOLXu13rbD3EUnh
 1pnDvQbeXt0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190892923"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190892923"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:07 -0800
IronPort-SDR: oLhccjljOolNp08wLz4SnV17LYBJVJppfSfxEnndmLdkALNyZpSz6I0ulviRz3AFmoVXvyqoJt
 php8kEZ1PkDg==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372472311"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:05 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 02:17:26 +0530
Message-Id: <20201130204738.2443-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v14 03/15] drm/i915/display: Attach HDR property for
 capable Gen9 devices
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXR0YWNoIEhEUiBwcm9wZXJ0eSBmb3IgR2VuOSBkZXZpY2VzIHdpdGggTUNBIExTUENPTgpjaGlw
cy4KCnYyOiBDbGVhbmVkIEhEUiBwcm9wZXJ0eSBhdHRhY2htZW50IGxvZ2ljIGJhc2VkIG9uIGNh
cGFiaWxpdHkKYXMgcGVyIEphbmkgTmlrdWxhJ3Mgc3VnZ2VzdGlvbi4KCnYzOiBGaXhlZCB0aGUg
SERSIHByb3BlcnR5IGF0dGFjaG1lbnQgbG9naWMgYXMgcGVyIHRoZSBuZXcgY2hhbmdlcwpieSBL
YWktRmVuZyB0byBhbGlnbiB3aXRoIGxzcGNvbiBkZXRlY3Rpb24gZmFpbHVyZSBvbiBzb21lIGRl
dmljZXMuCgp2NDogQWRkIEhEUiBwcm9wcnR5IGluIGxhdGVfcmVnaXN0ZXIgdG8gaGFuZGxlIGxz
cGNvbiBkZXRlY3Rpb24sCmFzIHN1Z2dlc3RlZCBieSBWaWxsZS4KCnY1OiBJbml0IExzcGNvbiBv
bmx5IGlmIGFkdmVydGl6ZWQgZnJvbSBCSU9TLgoKdjY6IEFkZGVkIGEgVG9kbyB0byBwbGFuIGEg
Y2xlYW51cCBsYXRlciwgYWRkZWQgVmlsbGUncyBSQi4KClNpZ25lZC1vZmYtYnk6IFVtYSBTaGFu
a2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgfCAxOCArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMgfCAgMiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uaCB8ICAxICsKIDMgZmlsZXMgY2hhbmdlZCwg
MjAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwppbmRleCAzODk2ZDA4YzQxNzcuLjVhYWEwNmQ3MzYwOSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNjc3NCw2ICs2Nzc0LDggQEAgaW50
ZWxfZHBfY29ubmVjdG9yX3JlZ2lzdGVyKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3Ip
CiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rvci0+
ZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gaW50ZWxfYXR0YWNoZWRfZHAodG9f
aW50ZWxfY29ubmVjdG9yKGNvbm5lY3RvcikpOworCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOworCXN0cnVjdCBpbnRlbF9sc3Bj
b24gKmxzcGNvbiA9ICZkaWdfcG9ydC0+bHNwY29uOwogCWludCByZXQ7CiAKIAlyZXQgPSBpbnRl
bF9jb25uZWN0b3JfcmVnaXN0ZXIoY29ubmVjdG9yKTsKQEAgLTY3ODcsNiArNjc4OSwyMiBAQCBp
bnRlbF9kcF9jb25uZWN0b3JfcmVnaXN0ZXIoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rv
cikKIAlyZXQgPSBkcm1fZHBfYXV4X3JlZ2lzdGVyKCZpbnRlbF9kcC0+YXV4KTsKIAlpZiAoIXJl
dCkKIAkJZHJtX2RwX2NlY19yZWdpc3Rlcl9jb25uZWN0b3IoJmludGVsX2RwLT5hdXgsIGNvbm5l
Y3Rvcik7CisKKwlpZiAoIWludGVsX2Jpb3NfaXNfbHNwY29uX3ByZXNlbnQoaTkxNSwgZGlnX3Bv
cnQtPmJhc2UucG9ydCkpCisJCXJldHVybiByZXQ7CisKKwkvKgorCSAqIFRvRG86IENsZWFuIHRo
aXMgdXAgdG8gaGFuZGxlIGxzcGNvbiBpbml0IGFuZCByZXN1bWUgbW9yZQorCSAqIGVmZmljaWVu
dGx5IGFuZCBzdHJlYW1saW5lZC4KKwkgKi8KKwlpZiAobHNwY29uX2luaXQoZGlnX3BvcnQpKSB7
CisJCWxzcGNvbl9kZXRlY3RfaGRyX2NhcGFiaWxpdHkobHNwY29uKTsKKwkJaWYgKGxzcGNvbi0+
aGRyX3N1cHBvcnRlZCkKKwkJCWRybV9vYmplY3RfYXR0YWNoX3Byb3BlcnR5KCZjb25uZWN0b3It
PmJhc2UsCisJCQkJCQkgICBjb25uZWN0b3ItPmRldi0+bW9kZV9jb25maWcuaGRyX291dHB1dF9t
ZXRhZGF0YV9wcm9wZXJ0eSwKKwkJCQkJCSAgIDApOworCX0KKwogCXJldHVybiByZXQ7CiB9CiAK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCmluZGV4IDY0MTAy
NWYwMDI4Ni4uZjk4ODkxZjA1OGRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2xzcGNvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfbHNwY29uLmMKQEAgLTU1Miw3ICs1NTIsNyBAQCB2b2lkIGxzcGNvbl93YWl0X3Bjb25f
bW9kZShzdHJ1Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24pCiAJbHNwY29uX3dhaXRfbW9kZShsc3Bj
b24sIERSTV9MU1BDT05fTU9ERV9QQ09OKTsKIH0KIAotc3RhdGljIGJvb2wgbHNwY29uX2luaXQo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCitib29sIGxzcGNvbl9pbml0KHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogewogCXN0cnVjdCBpbnRlbF9kcCAq
ZHAgPSAmZGlnX3BvcnQtPmRwOwogCXN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNvbiA9ICZkaWdf
cG9ydC0+bHNwY29uOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9sc3Bjb24uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29u
LmgKaW5kZXggOTgwNDNiYTUwZGQ0Li40MmNjYjIxYzkwOGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uaApAQCAtMTUsNiArMTUsNyBAQCBzdHJ1Y3QgaW50
ZWxfZGlnaXRhbF9wb3J0Owogc3RydWN0IGludGVsX2VuY29kZXI7CiBzdHJ1Y3QgaW50ZWxfbHNw
Y29uOwogCitib29sIGxzcGNvbl9pbml0KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0KTsKIHZvaWQgbHNwY29uX2RldGVjdF9oZHJfY2FwYWJpbGl0eShzdHJ1Y3QgaW50ZWxfbHNw
Y29uICpsc3Bjb24pOwogdm9pZCBsc3Bjb25fcmVzdW1lKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmRpZ19wb3J0KTsKIHZvaWQgbHNwY29uX3dhaXRfcGNvbl9tb2RlKHN0cnVjdCBpbnRlbF9s
c3Bjb24gKmxzcGNvbik7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
