Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74692C6539
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 13:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 842E96ECED;
	Fri, 27 Nov 2020 12:11:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F6EB6ECF1;
 Fri, 27 Nov 2020 12:11:11 +0000 (UTC)
IronPort-SDR: raADMZ/45zLWthYfX4GsPP1BbtsOS4huJXuOAhX5tQdjdQnrT6jkLX6sBGqi1zME+ZNhB14vYD
 sNmcUzQw0b5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="257092850"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="257092850"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:11:10 -0800
IronPort-SDR: CZkQnJvNUr0QPdRsuyZ2chgZPP9c8zFFKcXCGiD+Dko4mb6JOg4Xzypw7hI/xmhlXdJ5yOszyb
 VVCQOGqRz9hA==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548029682"
Received: from mjgleeso-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.251.85.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 04:11:07 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 12:06:30 +0000
Message-Id: <20201127120718.454037-115-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201127120718.454037-1-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 114/162] drm/i915/lmem: Bypass aperture when
 lmem is available
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, dri-devel@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Chris P Wilson <chris.p.wilson@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKSW4gdGhl
IHNjZW5hcmlvIHdoZXJlIGxvY2FsIG1lbW9yeSBpcyBhdmFpbGFibGUsIHdlIGhhdmUKcmVseSBv
biBDUFUgYWNjZXNzIHZpYSBsbWVtIGRpcmVjdGx5IGluc3RlYWQgb2YgYXBlcnR1cmUuCgpDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IERoaW5h
a2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlz
IFAgV2lsc29uIDxjaHJpcy5wLndpbHNvbkBpbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUu
Y2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBDUSBUYW5nIDxjcS50YW5nQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29t
PgpDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jIHwgMjMgKysrKysrKysrKysr
KysrLS0tLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyAgICAgICAgICAgIHwg
MTkgKysrKysrKysrKysrLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyks
IDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJkZXYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJk
ZXYuYwppbmRleCA4MzFlOTllMDc4NWMuLjY1NTM5ZmFiNjI2OSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYwpAQCAtNDEsNiArNDEsNyBAQAogI2luY2x1ZGUg
PGRybS9kcm1fZmJfaGVscGVyLmg+CiAjaW5jbHVkZSA8ZHJtL2RybV9mb3VyY2MuaD4KIAorI2lu
Y2x1ZGUgImdlbS9pOTE1X2dlbV9sbWVtLmgiCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNs
dWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZmJkZXYuaCIKQEAg
LTEzNywxNCArMTM4LDIyIEBAIHN0YXRpYyBpbnQgaW50ZWxmYl9hbGxvYyhzdHJ1Y3QgZHJtX2Zi
X2hlbHBlciAqaGVscGVyLAogCXNpemUgPSBtb2RlX2NtZC5waXRjaGVzWzBdICogbW9kZV9jbWQu
aGVpZ2h0OwogCXNpemUgPSBQQUdFX0FMSUdOKHNpemUpOwogCi0JLyogSWYgdGhlIEZCIGlzIHRv
byBiaWcsIGp1c3QgZG9uJ3QgdXNlIGl0IHNpbmNlIGZiZGV2IGlzIG5vdCB2ZXJ5Ci0JICogaW1w
b3J0YW50IGFuZCB3ZSBzaG91bGQgcHJvYmFibHkgdXNlIHRoYXQgc3BhY2Ugd2l0aCBGQkMgb3Ig
b3RoZXIKLQkgKiBmZWF0dXJlcy4gKi8KIAlvYmogPSBFUlJfUFRSKC1FTk9ERVYpOwotCWlmIChz
aXplICogMiA8IGRldl9wcml2LT5zdG9sZW5fdXNhYmxlX3NpemUpCi0JCW9iaiA9IGk5MTVfZ2Vt
X29iamVjdF9jcmVhdGVfc3RvbGVuKGRldl9wcml2LCBzaXplKTsKLQlpZiAoSVNfRVJSKG9iaikp
Ci0JCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc2htZW0oZGV2X3ByaXYsIHNpemUpOwor
CWlmIChIQVNfTE1FTShkZXZfcHJpdikpIHsKKwkJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0
ZV9sbWVtKGRldl9wcml2LCBzaXplLAorCQkJCQkJICBJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMp
OworCX0gZWxzZSB7CisJCS8qCisJCSAqIElmIHRoZSBGQiBpcyB0b28gYmlnLCBqdXN0IGRvbid0
IHVzZSBpdCBzaW5jZSBmYmRldiBpcyBub3QgdmVyeQorCQkgKiBpbXBvcnRhbnQgYW5kIHdlIHNo
b3VsZCBwcm9iYWJseSB1c2UgdGhhdCBzcGFjZSB3aXRoIEZCQyBvciBvdGhlcgorCQkgKiBmZWF0
dXJlcy4KKwkJICovCisJCWlmIChzaXplICogMiA8IGRldl9wcml2LT5zdG9sZW5fdXNhYmxlX3Np
emUpCisJCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihkZXZfcHJpdiwgc2l6
ZSk7CisJCWlmIChJU19FUlIob2JqKSkKKwkJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVf
c2htZW0oZGV2X3ByaXYsIHNpemUpOworCX0KKwogCWlmIChJU19FUlIob2JqKSkgewogCQlkcm1f
ZXJyKCZkZXZfcHJpdi0+ZHJtLCAiZmFpbGVkIHRvIGFsbG9jYXRlIGZyYW1lYnVmZmVyXG4iKTsK
IAkJcmV0dXJuIFBUUl9FUlIob2JqKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCmluZGV4IDgyZjYw
Y2M0M2E5MC4uNTlmZTgyYWY0OGIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKQEAgLTI3LDYg
KzI3LDcgQEAKIAogI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuaCIKIAorI2lu
Y2x1ZGUgImdlbS9pOTE1X2dlbV9sbWVtLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lLmgi
CiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX2hlYXJ0YmVhdC5oIgogI2luY2x1ZGUgImd0L2lu
dGVsX2d0LmgiCkBAIC00NDgsOSArNDQ5LDExIEBAIHZvaWQgX19pb21lbSAqaTkxNV92bWFfcGlu
X2lvbWFwKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogCXZvaWQgX19pb21lbSAqcHRyOwogCWludCBl
cnI7CiAKLQlpZiAoR0VNX1dBUk5fT04oIWk5MTVfdm1hX2lzX21hcF9hbmRfZmVuY2VhYmxlKHZt
YSkpKSB7Ci0JCWVyciA9IC1FTk9ERVY7Ci0JCWdvdG8gZXJyOworCWlmICghaTkxNV9nZW1fb2Jq
ZWN0X2lzX2Rldm1lbSh2bWEtPm9iaikpIHsKKwkJaWYgKEdFTV9XQVJOX09OKCFpOTE1X3ZtYV9p
c19tYXBfYW5kX2ZlbmNlYWJsZSh2bWEpKSkgeworCQkJZXJyID0gLUVOT0RFVjsKKwkJCWdvdG8g
ZXJyOworCQl9CiAJfQogCiAJR0VNX0JVR19PTighaTkxNV92bWFfaXNfZ2d0dCh2bWEpKTsKQEAg
LTQ1OCw5ICs0NjEsMTMgQEAgdm9pZCBfX2lvbWVtICppOTE1X3ZtYV9waW5faW9tYXAoc3RydWN0
IGk5MTVfdm1hICp2bWEpCiAKIAlwdHIgPSBSRUFEX09OQ0Uodm1hLT5pb21hcCk7CiAJaWYgKHB0
ciA9PSBOVUxMKSB7Ci0JCXB0ciA9IGlvX21hcHBpbmdfbWFwX3djKCZpOTE1X3ZtX3RvX2dndHQo
dm1hLT52bSktPmlvbWFwLAotCQkJCQl2bWEtPm5vZGUuc3RhcnQsCi0JCQkJCXZtYS0+bm9kZS5z
aXplKTsKKwkJaWYgKGk5MTVfZ2VtX29iamVjdF9pc19kZXZtZW0odm1hLT5vYmopKQorCQkJcHRy
ID0gaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fbWFwKHZtYS0+b2JqLCAwLAorCQkJCQkJCSAgdm1h
LT5vYmotPmJhc2Uuc2l6ZSk7CisJCWVsc2UKKwkJCXB0ciA9IGlvX21hcHBpbmdfbWFwX3djKCZp
OTE1X3ZtX3RvX2dndHQodm1hLT52bSktPmlvbWFwLAorCQkJCQkJdm1hLT5ub2RlLnN0YXJ0LAor
CQkJCQkJdm1hLT5ub2RlLnNpemUpOwogCQlpZiAocHRyID09IE5VTEwpIHsKIAkJCWVyciA9IC1F
Tk9NRU07CiAJCQlnb3RvIGVycjsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
