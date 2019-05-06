Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DBE14AE9
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 15:29:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB11898FD;
	Mon,  6 May 2019 13:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9488689930
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 13:29:53 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 06:29:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="171266770"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 06 May 2019 06:29:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2019 16:29:49 +0300
Date: Mon, 6 May 2019 16:29:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190506132949.GB24299@intel.com>
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
 <1556989900-21972-2-git-send-email-swati2.sharma@intel.com>
 <87pnovn2gs.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnovn2gs.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v5][PATCH 01/11] drm/i915: Introduce vfunc
 read_luts() to create hw lut
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
Cc: daniel.vetter@ffwll.ch, intel-gfx@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMDQ6MjE6MDdQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gU2F0LCAwNCBNYXkgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGlu
dGVsLmNvbT4gd3JvdGU6Cj4gPiBJbiB0aGlzIHBhdGNoLCBhIHZmdW5jIHJlYWRfbHV0cygpIGlz
IGludHJvZHVjZWQgdG8gY3JlYXRlIGEgaHcgbHV0Cj4gPiBpLmUuIGx1dCBoYXZpbmcgdmFsdWVz
IHJlYWQgZnJvbSBnYW1tYS9kZWdhbW1hIHJlZ2lzdGVycyB3aGljaCB3aWxsCj4gPiBsYXRlciBi
ZSB1c2VkIHRvIGNvbXBhcmUgd2l0aCBzdyBsdXQgdG8gdmFsaWRhdGUgZ2FtbWEvZGVnYW1tYSBs
dXQgdmFsdWVzLgo+ID4KPiA+IHYzOiAtUmViYXNlCj4gPiB2NDogLVJlbmFtZWQgaW50ZWxfZ2V0
X2NvbG9yX2NvbmZpZyB0byBpbnRlbF9jb2xvcl9nZXRfY29uZmlnIFtKYW5pXQo+ID4gICAgIC1X
cmFwcGVkIGdldF9jb2xvcl9jb25maWcoKSBbSmFuaV0KPiA+IHY1OiAtUmVuYW1lZCBpbnRlbF9j
b2xvcl9nZXRfY29uZmlnKCkgdG8gaW50ZWxfY29sb3JfcmVhZF9sdXRzKCkKPiAKPiBWaWxsZSwg
ZGlkIHlvdSByZWFsbHkgd2FudCB0aGlzIGNoYWdlPyBJIHN1cmUgZGlkbid0LgoKSSB3YW50IHRo
ZSBsb3cgbGV2ZWwgZnVuY3MgdG8gYmUgY2FsbGVkIHNvbWV0aGluZyBsaWtlIAppbGtfcmVhZF9s
dXRfMTAoKSwgY2h2X3JlYWRfY2dtX2dhbW1hX2x1dCgpLCBldGMuClRoZSBuYW1lIG9mIHRoZSB2
ZnVuYyBpcyBtb3JlIG9mIGEgbWVoLgoKPiAKPiBCUiwKPiBKYW5pLgo+IAo+IAo+ID4gICAgIC1S
ZW5hbWVkIGdldF9jb2xvcl9jb25maWcgdG8gcmVhZF9sdXRzCj4gPgo+ID4gU2lnbmVkLW9mZi1i
eTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgfCAxICsKPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jb2xvci5jIHwgOCArKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2NvbG9yLmggfCAxICsKPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiA+IGluZGV4IDFjZWE5OGYuLjFi
NmQ4OTEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gPiBAQCAtMzQyLDYgKzM0
Miw3IEBAIHN0cnVjdCBkcm1faTkxNV9kaXNwbGF5X2Z1bmNzIHsKPiA+ICAJICogaW52b2x2ZWQg
d2l0aCB0aGUgc2FtZSBjb21taXQuCj4gPiAgCSAqLwo+ID4gIAl2b2lkICgqbG9hZF9sdXRzKShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gPiArCXZvaWQgKCpy
ZWFkX2x1dHMpKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPiA+ICB9Owo+
ID4gIAo+ID4gICNkZWZpbmUgQ1NSX1ZFUlNJT04obWFqb3IsIG1pbm9yKQkoKG1ham9yKSA8PCAx
NiB8IChtaW5vcikpCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Y29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPiA+IGluZGV4IDk2
MmRiMTIuLjAwNDhkOGEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jb2xvci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCj4g
PiBAQCAtODc5LDYgKzg3OSwxNCBAQCBpbnQgaW50ZWxfY29sb3JfY2hlY2soc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gPiAgCXJldHVybiBkZXZfcHJpdi0+ZGlzcGxheS5j
b2xvcl9jaGVjayhjcnRjX3N0YXRlKTsKPiA+ICB9Cj4gPiAgCj4gPiArdm9pZCBpbnRlbF9jb2xv
cl9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gPiArewo+
ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3Rh
dGUtPmJhc2UuY3J0Yy0+ZGV2KTsKPiA+ICsKPiA+ICsJaWYgKGRldl9wcml2LT5kaXNwbGF5LnJl
YWRfbHV0cykKPiA+ICsJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyhjcnRjX3N0YXRlKTsK
PiA+ICt9Cj4gPiArCj4gPiAgc3RhdGljIGJvb2wgbmVlZF9wbGFuZV91cGRhdGUoc3RydWN0IGlu
dGVsX3BsYW5lICpwbGFuZSwKPiA+ICAJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKPiA+ICB7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfY29sb3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmgK
PiA+IGluZGV4IGI4YTNjZTYuLmZjNTNkZTkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jb2xvci5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jb2xvci5oCj4gPiBAQCAtMTMsNSArMTMsNiBAQAo+ID4gIGludCBpbnRlbF9jb2xvcl9jaGVj
ayhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gPiAgdm9pZCBpbnRlbF9j
b2xvcl9jb21taXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+
ID4gIHZvaWQgaW50ZWxfY29sb3JfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKTsKPiA+ICt2b2lkIGludGVsX2NvbG9yX3JlYWRfbHV0cyhzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gPiAgCj4gPiAgI2VuZGlmIC8qIF9fSU5U
RUxfQ09MT1JfSF9fICovCj4gCj4gLS0gCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
