Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FF3111B3A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 22:57:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D8556F41C;
	Tue,  3 Dec 2019 21:57:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2BF16F41C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 21:57:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 13:57:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,275,1571727600"; d="scan'208";a="222983687"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga002.jf.intel.com with ESMTP; 03 Dec 2019 13:57:39 -0800
Date: Tue, 3 Dec 2019 14:01:13 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191203220113.GL28227@intel.com>
References: <20191203023110.488972-1-jose.souza@intel.com>
 <87a789kc7v.fsf@intel.com> <20191203131154.GP1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203131154.GP1208@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Define each HBR link rate
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBEZWMgMDMsIDIwMTkgYXQgMDM6MTE6NTRQTSArMDIwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFR1ZSwgRGVjIDAzLCAyMDE5IGF0IDExOjA4OjUyQU0gKzAyMDAsIEphbmkg
TmlrdWxhIHdyb3RlOgo+ID4gT24gTW9uLCAwMiBEZWMgMjAxOSwgSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOgo+ID4gPiBUaGlzIGlzIGJldHRlciB0
aGFuIGtlZXAgdGhvc2UgdmFsdWVzIGluIHRoZSBjb2RlIHRoYXQgeW91IGFsd2F5cwo+ID4gPiBu
ZWVkIHRvIGNoZWNrIHRoZSBEUCBzcGVjIHRvIGtub3cgd2hhdCBsZXZlbCBvZiBIQlIgaXQgaXMu
Cj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgfCA2ICsrKysrLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+ID4gaW5kZXggYTk3NjYwNmQyMWM3Li45MTRmMGNjNGQy
MzcgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Ywo+ID4gPiBAQCAtNDksNiArNDksMTAgQEAKPiA+ID4gICNpbmNsdWRlICJpbnRlbF90Yy5oIgo+
ID4gPiAgI2luY2x1ZGUgImludGVsX3Zkc2MuaCIKPiA+ID4gIAo+ID4gPiArI2RlZmluZSBIQlJf
UkFURSAyNzAwMDAKPiA+ID4gKyNkZWZpbmUgSEJSMl9SQVRFIDU0MDAwMAo+ID4gPiArI2RlZmlu
ZSBIQlIzX1JBVEUgODEwMDAwCj4gPiA+ICsKPiA+ID4gIHN0cnVjdCBkZGlfYnVmX3RyYW5zIHsK
PiA+ID4gIAl1MzIgdHJhbnMxOwkvKiBiYWxhbmNlIGxlZyBlbmFibGUsIGRlLWVtcGggbGV2ZWwg
Ki8KPiA+ID4gIAl1MzIgdHJhbnMyOwkvKiB2cmVmIHNlbCwgdnN3aW5nICovCj4gPiA+IEBAIC04
ODgsNyArODkyLDcgQEAgaWNsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LCBpbnQgdHlwZSwgaW50IHJhdGUsCj4gPiA+ICAJaWYgKHR5cGUgPT0g
SU5URUxfT1VUUFVUX0hETUkpIHsKPiA+ID4gIAkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNs
X2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hkbWkpOwo+ID4gPiAgCQlyZXR1cm4gaWNsX2Nv
bWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hkbWk7Cj4gPiA+IC0JfSBlbHNlIGlmIChyYXRlID4g
NTQwMDAwICYmIHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgewo+ID4gPiArCX0gZWxzZSBpZiAo
cmF0ZSA+IEhCUjJfUkFURSAmJiB0eXBlID09IElOVEVMX09VVFBVVF9FRFApIHsKPiA+IAo+ID4g
SSBkb24ndCB3YW50IGEgcGF0Y2ggc3dpdGNoaW5nIHNvbWUgcmFuZG9tIHBsYWNlIHRvIHVzaW5n
IGEKPiA+IG1hY3JvLiBFaXRoZXIgd2Ugc3RpY2sgdG8gbnVtYmVycyBvciBzd2l0Y2ggYWxsLgo+
ID4gCj4gPiBBbmQgaWYgc3dpdGNoIGFsbCwgYWRkIHRoZSByYXRlcyB0byBkcm0gY29yZSwgbm90
IGxvY2FsbHkgdG8KPiA+IGludGVsX2RkaS5jLiAoQW5kIHRoZW4gd29uZGVyIHdoYXQgdG8gZG8g
d2l0aCB0aGUgaW50ZXJtZWRpYXRlIHJhdGVzIGluCj4gPiBpbnRlbF9kcF9zZXRfc291cmNlX3Jh
dGVzKCkuLi4pCj4gCj4gWWVhaCwgd2UnbGwgc3RpbGwgZW5kIHVwIHdpdGggYSBtaXggb2YgZGVm
aW5lcyBhbmQgcmF3IG51bWJlcnMuCj4gCj4gPiAKPiA+IFBlcnNvbmFsbHksIEhCUjxOPiBpcyBs
ZXNzIHVzZWZ1bCB0byBtZSBpbiBjb2RlLCBpdCdzIHRoZSBhY3R1YWwgcmF0ZQo+ID4gdGhhdCBo
ZWxwcyBtZS4KPiA+IAo+ID4gQnV0IEknbGwgdHJ1c3QgVmlsbGUncyBqdWRnZW1lbnQgb24gdGhp
cyBvbmUuCj4gCj4gSSB0ZW5kIHRvIHByZWZlciByYXcgbnVtYmVycyBmb3IgdGhpcyBzb3J0IG9m
IHN0dWZmLiBJZiB3ZSBkaWRuJ3QgaGF2ZQo+IHRoZSBpbnRlcm1lZGlhdGUgcmF0ZXMgSSBtaWdo
dCBoYXZlIGEgZGlmZmVyZW50IG9waW5pb24uIFRoZSBvbmx5IHRoaW5nCj4gSSByZWFsbHkgd29y
cnkgYWJvdXQgd2l0aCByYXcgbnVtYmVycyBpcyB0aGUgcG90ZW50aWFsIGZvciB0eXBvcy4KClll
cywgZXNwZWNpYWxseSBkdWUgdG8gdGhlIHR5cG9zIGFuZCBwb3NzaWJpbGl0aWVzIG9mIG1pc3Np
bmcgb3IgYWRkaW5nIGFuIGV4dHJhIDAKbWFrZXMgbWUgd29uZGVyIHRoYXQgaXQgY291bGQgYmUg
YSBnb29kIGlkZWEgdG8gYWRkIGFsbCB0aGUgI2RlZmluZXMgUkJSIC0gSEJSMwppbiBkcm1fZHBf
aGVscGVyLmggc29tZXdoZXJlIHdpdGggcHJvcGVyIGNvbW1lbnRzIG9uIHdoaWNoIG9mIHRoZSBz
cGVjIGFkZGVkIHdoaWNoIHJhdGUgZXRjLgoKUmVnYXJkcwpNYW5hc2kKCj4gCj4gVGhlIG9yaWdp
bmFsIHByb2JsZW0gb2YgYnNwZWMgdGFsa2luZyBhYm91dCBoYnIyIGluIHRoZSBidWcgdHJhbnMK
PiB0YWJsZXMgd2UgY291bGQgcHJvYmFibHkgc29sdmUgd2l0aCBhIGNvbW1lbnQuCj4gCj4gLS0g
Cj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
