Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1246914B08
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2019 15:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3BC8994D;
	Mon,  6 May 2019 13:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A0038994D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2019 13:38:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 06:38:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,438,1549958400"; d="scan'208";a="171269197"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 May 2019 06:38:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20190506132949.GB24299@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
 <1556989900-21972-2-git-send-email-swati2.sharma@intel.com>
 <87pnovn2gs.fsf@intel.com> <20190506132949.GB24299@intel.com>
Date: Mon, 06 May 2019 16:41:00 +0300
Message-ID: <87mujzn1jn.fsf@intel.com>
MIME-Version: 1.0
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

T24gTW9uLCAwNiBNYXkgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMDQ6MjE6MDdQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIFNhdCwgMDQgTWF5IDIwMTksIFN3YXRpIFNo
YXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+IHdyb3RlOgo+PiA+IEluIHRoaXMgcGF0Y2gs
IGEgdmZ1bmMgcmVhZF9sdXRzKCkgaXMgaW50cm9kdWNlZCB0byBjcmVhdGUgYSBodyBsdXQKPj4g
PiBpLmUuIGx1dCBoYXZpbmcgdmFsdWVzIHJlYWQgZnJvbSBnYW1tYS9kZWdhbW1hIHJlZ2lzdGVy
cyB3aGljaCB3aWxsCj4+ID4gbGF0ZXIgYmUgdXNlZCB0byBjb21wYXJlIHdpdGggc3cgbHV0IHRv
IHZhbGlkYXRlIGdhbW1hL2RlZ2FtbWEgbHV0IHZhbHVlcy4KPj4gPgo+PiA+IHYzOiAtUmViYXNl
Cj4+ID4gdjQ6IC1SZW5hbWVkIGludGVsX2dldF9jb2xvcl9jb25maWcgdG8gaW50ZWxfY29sb3Jf
Z2V0X2NvbmZpZyBbSmFuaV0KPj4gPiAgICAgLVdyYXBwZWQgZ2V0X2NvbG9yX2NvbmZpZygpIFtK
YW5pXQo+PiA+IHY1OiAtUmVuYW1lZCBpbnRlbF9jb2xvcl9nZXRfY29uZmlnKCkgdG8gaW50ZWxf
Y29sb3JfcmVhZF9sdXRzKCkKPj4gCj4+IFZpbGxlLCBkaWQgeW91IHJlYWxseSB3YW50IHRoaXMg
Y2hhZ2U/IEkgc3VyZSBkaWRuJ3QuCj4KPiBJIHdhbnQgdGhlIGxvdyBsZXZlbCBmdW5jcyB0byBi
ZSBjYWxsZWQgc29tZXRoaW5nIGxpa2UgCj4gaWxrX3JlYWRfbHV0XzEwKCksIGNodl9yZWFkX2Nn
bV9nYW1tYV9sdXQoKSwgZXRjLgo+IFRoZSBuYW1lIG9mIHRoZSB2ZnVuYyBpcyBtb3JlIG9mIGEg
bWVoLgoKQW5kIEkgZG9uJ3QgY2FyZSBhYm91dCB0aGUgbG93IGxldmVsIGZ1bmN0aW9ucyBzbyBt
dWNoLCBJIGNhcmUgYWJvdXQgdGhlCmludGVyZmFjZSB3aGljaCBJIHNob3VsZCBlbXBoYXNpemUg
dGhlICJnZXQgY29uZmlnIiBzdGFnZS4gOikKCkJSLApKYW5pLgoKPgo+PiAKPj4gQlIsCj4+IEph
bmkuCj4+IAo+PiAKPj4gPiAgICAgLVJlbmFtZWQgZ2V0X2NvbG9yX2NvbmZpZyB0byByZWFkX2x1
dHMKPj4gPgo+PiA+IFNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBp
bnRlbC5jb20+Cj4+ID4gLS0tCj4+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
ICAgfCAxICsKPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYyB8IDggKysr
KysrKysKPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCB8IDEgKwo+PiA+
ICAzIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKPj4gPgo+PiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaAo+PiA+IGluZGV4IDFjZWE5OGYuLjFiNmQ4OTEgMTAwNjQ0Cj4+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKPj4gPiBAQCAtMzQyLDYgKzM0Miw3IEBAIHN0cnVjdCBkcm1faTkx
NV9kaXNwbGF5X2Z1bmNzIHsKPj4gPiAgCSAqIGludm9sdmVkIHdpdGggdGhlIHNhbWUgY29tbWl0
Lgo+PiA+ICAJICovCj4+ID4gIAl2b2lkICgqbG9hZF9sdXRzKShjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4+ID4gKwl2b2lkICgqcmVhZF9sdXRzKShzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4+ID4gIH07Cj4+ID4gIAo+PiA+ICAjZGVm
aW5lIENTUl9WRVJTSU9OKG1ham9yLCBtaW5vcikJKChtYWpvcikgPDwgMTYgfCAobWlub3IpKQo+
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwo+PiA+IGluZGV4IDk2MmRiMTIuLjAwNDhk
OGEgMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwo+
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPj4gPiBAQCAtODc5
LDYgKzg3OSwxNCBAQCBpbnQgaW50ZWxfY29sb3JfY2hlY2soc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCj4+ID4gIAlyZXR1cm4gZGV2X3ByaXYtPmRpc3BsYXkuY29sb3JfY2hl
Y2soY3J0Y19zdGF0ZSk7Cj4+ID4gIH0KPj4gPiAgCj4+ID4gK3ZvaWQgaW50ZWxfY29sb3JfcmVh
ZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiA+ICt7Cj4+ID4g
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUt
PmJhc2UuY3J0Yy0+ZGV2KTsKPj4gPiArCj4+ID4gKwlpZiAoZGV2X3ByaXYtPmRpc3BsYXkucmVh
ZF9sdXRzKQo+PiA+ICsJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyhjcnRjX3N0YXRlKTsK
Pj4gPiArfQo+PiA+ICsKPj4gPiAgc3RhdGljIGJvb2wgbmVlZF9wbGFuZV91cGRhdGUoc3RydWN0
IGludGVsX3BsYW5lICpwbGFuZSwKPj4gPiAgCQkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+ID4gIHsKPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nv
bG9yLmgKPj4gPiBpbmRleCBiOGEzY2U2Li5mYzUzZGU5IDEwMDY0NAo+PiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmgKPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jb2xvci5oCj4+ID4gQEAgLTEzLDUgKzEzLDYgQEAKPj4gPiAgaW50IGludGVs
X2NvbG9yX2NoZWNrKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPj4gPiAg
dm9pZCBpbnRlbF9jb2xvcl9jb21taXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpOwo+PiA+ICB2b2lkIGludGVsX2NvbG9yX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4+ID4gK3ZvaWQgaW50ZWxfY29sb3JfcmVh
ZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPj4gPiAgCj4+ID4g
ICNlbmRpZiAvKiBfX0lOVEVMX0NPTE9SX0hfXyAqLwo+PiAKPj4gLS0gCj4+IEphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKCi0tIApKYW5pIE5pa3VsYSwgSW50
ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
