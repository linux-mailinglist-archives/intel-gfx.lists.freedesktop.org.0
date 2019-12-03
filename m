Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB5210FE70
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 14:12:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 105C56E50E;
	Tue,  3 Dec 2019 13:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D2086E511
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 13:12:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 05:11:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="218630338"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 03 Dec 2019 05:11:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Dec 2019 15:11:54 +0200
Date: Tue, 3 Dec 2019 15:11:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191203131154.GP1208@intel.com>
References: <20191203023110.488972-1-jose.souza@intel.com>
 <87a789kc7v.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a789kc7v.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

T24gVHVlLCBEZWMgMDMsIDIwMTkgYXQgMTE6MDg6NTJBTSArMDIwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gT24gTW9uLCAwMiBEZWMgMjAxOSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+IHdyb3RlOgo+ID4gVGhpcyBpcyBiZXR0ZXIgdGhhbiBrZWVwIHRob3Nl
IHZhbHVlcyBpbiB0aGUgY29kZSB0aGF0IHlvdSBhbHdheXMKPiA+IG5lZWQgdG8gY2hlY2sgdGhl
IERQIHNwZWMgdG8ga25vdyB3aGF0IGxldmVsIG9mIEhCUiBpdCBpcy4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+
IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA2ICsr
KysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiA+IGluZGV4
IGE5NzY2MDZkMjFjNy4uOTE0ZjBjYzRkMjM3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ID4gQEAgLTQ5LDYgKzQ5LDEwIEBACj4gPiAgI2luY2x1
ZGUgImludGVsX3RjLmgiCj4gPiAgI2luY2x1ZGUgImludGVsX3Zkc2MuaCIKPiA+ICAKPiA+ICsj
ZGVmaW5lIEhCUl9SQVRFIDI3MDAwMAo+ID4gKyNkZWZpbmUgSEJSMl9SQVRFIDU0MDAwMAo+ID4g
KyNkZWZpbmUgSEJSM19SQVRFIDgxMDAwMAo+ID4gKwo+ID4gIHN0cnVjdCBkZGlfYnVmX3RyYW5z
IHsKPiA+ICAJdTMyIHRyYW5zMTsJLyogYmFsYW5jZSBsZWcgZW5hYmxlLCBkZS1lbXBoIGxldmVs
ICovCj4gPiAgCXUzMiB0cmFuczI7CS8qIHZyZWYgc2VsLCB2c3dpbmcgKi8KPiA+IEBAIC04ODgs
NyArODkyLDcgQEAgaWNsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCBpbnQgdHlwZSwgaW50IHJhdGUsCj4gPiAgCWlmICh0eXBlID09IElOVEVM
X09VVFBVVF9IRE1JKSB7Cj4gPiAgCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xfY29tYm9f
cGh5X2RkaV90cmFuc2xhdGlvbnNfaGRtaSk7Cj4gPiAgCQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9k
ZGlfdHJhbnNsYXRpb25zX2hkbWk7Cj4gPiAtCX0gZWxzZSBpZiAocmF0ZSA+IDU0MDAwMCAmJiB0
eXBlID09IElOVEVMX09VVFBVVF9FRFApIHsKPiA+ICsJfSBlbHNlIGlmIChyYXRlID4gSEJSMl9S
QVRFICYmIHR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkgewo+IAo+IEkgZG9uJ3Qgd2FudCBhIHBh
dGNoIHN3aXRjaGluZyBzb21lIHJhbmRvbSBwbGFjZSB0byB1c2luZyBhCj4gbWFjcm8uIEVpdGhl
ciB3ZSBzdGljayB0byBudW1iZXJzIG9yIHN3aXRjaCBhbGwuCj4gCj4gQW5kIGlmIHN3aXRjaCBh
bGwsIGFkZCB0aGUgcmF0ZXMgdG8gZHJtIGNvcmUsIG5vdCBsb2NhbGx5IHRvCj4gaW50ZWxfZGRp
LmMuIChBbmQgdGhlbiB3b25kZXIgd2hhdCB0byBkbyB3aXRoIHRoZSBpbnRlcm1lZGlhdGUgcmF0
ZXMgaW4KPiBpbnRlbF9kcF9zZXRfc291cmNlX3JhdGVzKCkuLi4pCgpZZWFoLCB3ZSdsbCBzdGls
bCBlbmQgdXAgd2l0aCBhIG1peCBvZiBkZWZpbmVzIGFuZCByYXcgbnVtYmVycy4KCj4gCj4gUGVy
c29uYWxseSwgSEJSPE4+IGlzIGxlc3MgdXNlZnVsIHRvIG1lIGluIGNvZGUsIGl0J3MgdGhlIGFj
dHVhbCByYXRlCj4gdGhhdCBoZWxwcyBtZS4KPiAKPiBCdXQgSSdsbCB0cnVzdCBWaWxsZSdzIGp1
ZGdlbWVudCBvbiB0aGlzIG9uZS4KCkkgdGVuZCB0byBwcmVmZXIgcmF3IG51bWJlcnMgZm9yIHRo
aXMgc29ydCBvZiBzdHVmZi4gSWYgd2UgZGlkbid0IGhhdmUKdGhlIGludGVybWVkaWF0ZSByYXRl
cyBJIG1pZ2h0IGhhdmUgYSBkaWZmZXJlbnQgb3Bpbmlvbi4gVGhlIG9ubHkgdGhpbmcKSSByZWFs
bHkgd29ycnkgYWJvdXQgd2l0aCByYXcgbnVtYmVycyBpcyB0aGUgcG90ZW50aWFsIGZvciB0eXBv
cy4KClRoZSBvcmlnaW5hbCBwcm9ibGVtIG9mIGJzcGVjIHRhbGtpbmcgYWJvdXQgaGJyMiBpbiB0
aGUgYnVnIHRyYW5zCnRhYmxlcyB3ZSBjb3VsZCBwcm9iYWJseSBzb2x2ZSB3aXRoIGEgY29tbWVu
dC4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
