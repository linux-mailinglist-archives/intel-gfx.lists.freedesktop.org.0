Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA22366D21
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 15:48:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FEB76E20E;
	Wed, 21 Apr 2021 13:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED8E86E9AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 13:48:24 +0000 (UTC)
IronPort-SDR: LhccSgF3dWXrnCx1kjQIFOtMu8eXoL8cuq81iKH58pLPubzZuuWT3fxA+uNGjsTMFxolpWAfDz
 SYa/QKiszAag==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="175184660"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="175184660"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 06:48:24 -0700
IronPort-SDR: 6vC5xu5Q7WZiZ5n+dVnSQIyZQofVphaxgu8tdZFX7tBEAkfC2iHHn+lz5Wg3a3Al/PHlhlQ/ny
 4gaYCauYFuUw==
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="427521827"
Received: from uchalilx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 06:48:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210414022309.30898-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
 <20210414022309.30898-5-ville.syrjala@linux.intel.com>
Date: Wed, 21 Apr 2021 16:48:20 +0300
Message-ID: <87a6pr92aj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915: Clear no_fbc_reason on
 activate
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

T24gV2VkLCAxNCBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBXZSB0cnkgdG8gc2V0IG5vX2ZiY19yZWFzb24gd2hlbiBGQkMg
aXMgbm90IHBvc3NpYmxlLCBsZXQncwo+IGNvbnNpc3RlbnRseSBjbGVhciB3aGVuIGFjdGl2YXRp
bmcgRkJDLgo+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYyB8IDEzICsrKysrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYwo+IGluZGV4IDQ5NjhlNzlhNjIzNS4uZmI4YzA4NzJhMmI3IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gQEAgLTQxMSw2ICs0MTEsMTcgQEAgYm9v
bCBpbnRlbF9mYmNfaXNfYWN0aXZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
PiAgCXJldHVybiBkZXZfcHJpdi0+ZmJjLmFjdGl2ZTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQg
aW50ZWxfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAr
ewo+ICsJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7Cj4gKwo+ICsJZHJt
X1dBUk5fT04oJmRldl9wcml2LT5kcm0sICFtdXRleF9pc19sb2NrZWQoJmZiYy0+bG9jaykpOwo+
ICsKPiArCWludGVsX2ZiY19od19hY3RpdmF0ZShkZXZfcHJpdik7Cj4gKwo+ICsJZmJjLT5ub19m
YmNfcmVhc29uID0gTlVMTDsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgaW50ZWxfZmJjX2RlYWN0
aXZhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkJIGNvbnN0IGNo
YXIgKnJlYXNvbikKPiAgewo+IEBAIC0xMDk0LDcgKzExMDUsNyBAQCBzdGF0aWMgdm9pZCBfX2lu
dGVsX2ZiY19wb3N0X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgCQlyZXR1cm47
Cj4gIAo+ICAJaWYgKCFmYmMtPmJ1c3lfYml0cykKPiAtCQlpbnRlbF9mYmNfaHdfYWN0aXZhdGUo
ZGV2X3ByaXYpOwo+ICsJCWludGVsX2ZiY19hY3RpdmF0ZShkZXZfcHJpdik7Cj4gIAllbHNlCj4g
IAkJaW50ZWxfZmJjX2RlYWN0aXZhdGUoZGV2X3ByaXYsICJmcm9udGJ1ZmZlciB3cml0ZSIpOwo+
ICB9CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
