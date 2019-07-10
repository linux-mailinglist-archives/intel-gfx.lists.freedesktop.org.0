Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8EF64715
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 15:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9C089E03;
	Wed, 10 Jul 2019 13:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69B0189E03
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 13:37:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 06:37:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="193056349"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 06:37:32 -0700
Date: Wed, 10 Jul 2019 16:37:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20190710133717.GC32525@ideak-desk.fi.intel.com>
References: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619180312.31817-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/sdvo: Fix handling if zero
 hbuf size
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgMDk6MDM6MDdQTSArMDMwMCwgVmlsbGUgU3lyamFsYSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IFRoZSBzcGVjIHNheXM6Cj4gIkEgdmFsdWUgb2YgMCBpbmRpY2F0ZXMgdGhhdCB0
aGlzIGJ1ZmZlciBkb2VzIG5vdCBleGlzdCIKPiBTbyB3ZSBzaG91bGQgbm90IGNvbnZlcnQgYSBo
YnVmX3NpemUgb2YgMCBpbnRvIDEuCj4gCj4gQWxzbyBwdWxsIHRoZSByZWxldmFudCBjb2RlIGlu
dG8gYSBoZWxwZXIgdG8gYXZvaWQgbWFraW5nIHRoZQo+IHNhbWUgbWlzdGFrZSBtdWx0aXBsZSB0
aW1lcy4KPiAKPiBBbmQgd2hpbGUgYXQgaXQgZml4IHRoZSBkZWJ1ZyBwcmludHMgdG8gbm90IHNh
eSAiaGJ1Zl9sZW4iIHR3aWNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpNYXRjaGVzIHRoZSBzcGVjOgpSZXZpZXdl
ZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKTm90aWNlZCB0aGUgJWkgdnMu
ICV1IHVzYWdlIGluIHRoZSBkZWJ1ZyBtZXNzYWdlLCBidXQgaXQgZG9lc24ndCBzZWVtIHRvCmNh
dXNlIGFueSBwcm9ibGVtLgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zZHZvLmMgfCAzMiArKysrKysrKysrKysrKy0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMKPiBpbmRleCBjZWRhMDNlNWEzZDQuLjY4MTQxMWFh
ZTc1NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nk
dm8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCj4g
QEAgLTkyOSw2ICs5MjksMjAgQEAgc3RhdGljIGJvb2wgaW50ZWxfc2R2b19zZXRfYXVkaW9fc3Rh
dGUoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sCj4gIAkJCQkgICAgJmF1ZGlvX3N0YXRl
LCAxKTsKPiAgfQo+ICAKPiArc3RhdGljIGJvb2wgaW50ZWxfc2R2b19nZXRfaGJ1Zl9zaXplKHN0
cnVjdCBpbnRlbF9zZHZvICppbnRlbF9zZHZvLAo+ICsJCQkJICAgICB1OCAqaGJ1Zl9zaXplKQo+
ICt7Cj4gKwlpZiAoIWludGVsX3Nkdm9fZ2V0X3ZhbHVlKGludGVsX3Nkdm8sIFNEVk9fQ01EX0dF
VF9IQlVGX0lORk8sCj4gKwkJCQkgIGhidWZfc2l6ZSwgMSkpCj4gKwkJcmV0dXJuIGZhbHNlOwo+
ICsKPiArCS8qIEJ1ZmZlciBzaXplIGlzIDAgYmFzZWQsIGhvb3JheSEgSG93ZXZlciB6ZXJvIG1l
YW5zIHplcm8uICovCj4gKwlpZiAoKmhidWZfc2l6ZSkKPiArCQkoKmhidWZfc2l6ZSkrKzsKPiAr
Cj4gKwlyZXR1cm4gdHJ1ZTsKPiArfQo+ICsKPiAgI2lmIDAKPiAgc3RhdGljIHZvaWQgaW50ZWxf
c2R2b19kdW1wX2hkbWlfYnVmKHN0cnVjdCBpbnRlbF9zZHZvICppbnRlbF9zZHZvKQo+ICB7Cj4g
QEAgLTk3MiwxNCArOTg2LDEwIEBAIHN0YXRpYyBib29sIGludGVsX3Nkdm9fd3JpdGVfaW5mb2Zy
YW1lKHN0cnVjdCBpbnRlbF9zZHZvICppbnRlbF9zZHZvLAo+ICAJCQkJICBzZXRfYnVmX2luZGV4
LCAyKSkKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAo+IC0JaWYgKCFpbnRlbF9zZHZvX2dldF92YWx1
ZShpbnRlbF9zZHZvLCBTRFZPX0NNRF9HRVRfSEJVRl9JTkZPLAo+IC0JCQkJICAmaGJ1Zl9zaXpl
LCAxKSkKPiArCWlmICghaW50ZWxfc2R2b19nZXRfaGJ1Zl9zaXplKGludGVsX3Nkdm8sICZoYnVm
X3NpemUpKQo+ICAJCXJldHVybiBmYWxzZTsKPiAgCj4gLQkvKiBCdWZmZXIgc2l6ZSBpcyAwIGJh
c2VkLCBob29yYXkhICovCj4gLQloYnVmX3NpemUrKzsKPiAtCj4gLQlEUk1fREVCVUdfS01TKCJ3
cml0aW5nIHNkdm8gaGJ1ZjogJWksIGhidWZfc2l6ZSAlaSwgaGJ1Zl9zaXplOiAlaVxuIiwKPiAr
CURSTV9ERUJVR19LTVMoIndyaXRpbmcgc2R2byBoYnVmOiAlaSwgbGVuZ3RoICVpLCBoYnVmX3Np
emU6ICVpXG4iLAo+ICAJCSAgICAgIGlmX2luZGV4LCBsZW5ndGgsIGhidWZfc2l6ZSk7Cj4gIAo+
ICAJaWYgKGhidWZfc2l6ZSA8IGxlbmd0aCkKPiBAQCAtMTAzMCwxNCArMTA0MCwxMCBAQCBzdGF0
aWMgc3NpemVfdCBpbnRlbF9zZHZvX3JlYWRfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9zZHZvICpp
bnRlbF9zZHZvLAo+ICAJaWYgKHR4X3JhdGUgPT0gU0RWT19IQlVGX1RYX0RJU0FCTEVEKQo+ICAJ
CXJldHVybiAwOwo+ICAKPiAtCWlmICghaW50ZWxfc2R2b19nZXRfdmFsdWUoaW50ZWxfc2R2bywg
U0RWT19DTURfR0VUX0hCVUZfSU5GTywKPiAtCQkJCSAgJmhidWZfc2l6ZSwgMSkpCj4gLQkJcmV0
dXJuIC1FTlhJTzsKPiAtCj4gLQkvKiBCdWZmZXIgc2l6ZSBpcyAwIGJhc2VkLCBob29yYXkhICov
Cj4gLQloYnVmX3NpemUrKzsKPiArCWlmICghaW50ZWxfc2R2b19nZXRfaGJ1Zl9zaXplKGludGVs
X3Nkdm8sICZoYnVmX3NpemUpKQo+ICsJCXJldHVybiBmYWxzZTsKPiAgCj4gLQlEUk1fREVCVUdf
S01TKCJyZWFkaW5nIHNkdm8gaGJ1ZjogJWksIGhidWZfc2l6ZSAlaSwgaGJ1Zl9zaXplOiAlaVxu
IiwKPiArCURSTV9ERUJVR19LTVMoInJlYWRpbmcgc2R2byBoYnVmOiAlaSwgbGVuZ3RoICVpLCBo
YnVmX3NpemU6ICVpXG4iLAo+ICAJCSAgICAgIGlmX2luZGV4LCBsZW5ndGgsIGhidWZfc2l6ZSk7
Cj4gIAo+ICAJaGJ1Zl9zaXplID0gbWluX3QodW5zaWduZWQgaW50LCBsZW5ndGgsIGhidWZfc2l6
ZSk7Cj4gLS0gCj4gMi4yMS4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
