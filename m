Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 890C0355B9C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Apr 2021 20:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C88F06E887;
	Tue,  6 Apr 2021 18:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E110C6E3F5;
 Tue,  6 Apr 2021 18:43:47 +0000 (UTC)
IronPort-SDR: xYB5DXpBRGYtIbmu7+7sJH3OMXoncelVi++j4WfO1AhEQ/oq2gCMjvyYdArMl4x70Npkbwar8h
 oXH5PjWQ0yrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9946"; a="190969199"
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400"; d="scan'208";a="190969199"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2021 11:43:40 -0700
IronPort-SDR: iz4vIEQNxPMT28j6X63dGxjwb7Cx2uHnsQjaWilU1Uafh/2GyZka7mbVKL2PdcglAhmewdiAnv
 umwbtRshBWGw==
X-IronPort-AV: E=Sophos;i="5.82,201,1613462400"; d="scan'208";a="421339320"
Received: from oowomilo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.33.55])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2021 11:43:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: lyude@redhat.com, intel-gfx@lists.freedesktop.org
In-Reply-To: <4b95f72806c07348e4d26f1770326223b40fa845.camel@redhat.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210318170204.513000-1-lyude@redhat.com>
 <dfec442a4888c8387a6002b0424415ee5d8be343.camel@redhat.com>
 <87k0py3qya.fsf@intel.com>
 <4b95f72806c07348e4d26f1770326223b40fa845.camel@redhat.com>
Date: Tue, 06 Apr 2021 21:43:32 +0300
Message-ID: <874kgjl0dn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dpcd_bl: Don't try vesa interface
 unless specified by VBT
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM
 DRIVERS" <dri-devel@lists.freedesktop.org>, Sean Paul <seanpaul@chromium.org>,
 Aaron Ma <aaron.ma@canonical.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMyBNYXIgMjAyMSwgTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4gT24gVHVlLCAyMDIxLTAzLTIzIGF0IDE2OjA2ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToK
Pj4gT24gVGh1LCAxOCBNYXIgMjAyMSwgTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+ID4gQWN0dWFsbHktTkFLIHRoaXMuIEkganVzdCByZWFsaXplZCBJJ3ZlIGJlZW4gbWlz
cmVhZGluZyB0aGUgYnVnIGFuZCB0aGF0Cj4+ID4gdGhpcwo+PiA+IGRvZXNuJ3QgYWN0dWFsbHkg
c2VlbSB0byBiZSBmaXhlZC4gV2lsbCByZXNlbmQgb25jZSBJIGZpZ3VyZSBvdXQgd2hhdCdzCj4+
ID4gZ29pbmcgb24KPj4gCj4+IFdlbGwsIEkgdGhpbmsgdGhlcmUgYXJlIGFjdHVhbGx5IG11bHRp
cGxlIGlzc3VlcyBvbiBtdWx0aXBsZQo+PiBtYWNoaW5lcy4gVGhpcyBmaXhlcyB0aGUgaXNzdWUg
b24gVGhpbmtQYWQgWDEgVGl0YW5pdW0gR2VuMSBbMV0uCj4+IAo+PiBJIHN1c3BlY3QgcmV2ZXJ0
aW5nIDk4ZTQ5N2UyMDNhNSAoImRybS9pOTE1L2RwY2RfYmw6IHVuY2hlY2sgUFdNX1BJTl9DQVAK
Pj4gd2hlbiBkZXRlY3QgZURQIGJhY2tsaWdodCBjYXBhYmlsaXRpZXMiKSB3b3VsZCB0b28uIEJ1
dCB0aGVuIHRoYXQgd291bGQKPj4gYnJlYWsgKm90aGVyKiBtYWNoaW5lcyB0aGF0IGNsYWltIHN1
cHBvcnQgZm9yICpib3RoKiBlRFAgUFdNIHBpbiBhbmQKPj4gRFBDRCBiYWNrbGlnaHQgY29udHJv
bCwgSSB0aGluay4KPj4gCj4+IEkgdGhpbmsgdGhlcmUgYXJlIGlzc3VlcyB3aXRoIGhvdyB3ZSB0
cnkgc2V0dXAgRFBDRCBiYWNrbGlnaHQgaWYgdGhlIEdPUAo+PiBoYXMgc2V0IHVwIFBXTSBiYWNr
bGlnaHQuIEZvciBleGFtcGxlLCB3ZSBkb24ndCBzZXQgdGhlIGJhY2tsaWdodAo+PiBjb250cm9s
IG1vZGUgY29ycmVjdGx5IHVudGlsIHRoZSBuZXh0IGRpc2FibGUvZW5hYmxlIHNlcXVlbmNlLiBI
b3dldmVyLAo+PiBJIHRyaWVkIHRvIGZpeCB0aGlzLCBhbmQgSSB0aGluayBJIHdhcyBkb2luZyBh
bGwgdGhlIHJpZ2h0IHRoaW5ncywgYW5kCj4+IERQQ0QgcmVhZHMgc2VlbWVkIHRvIGNvbmZpcm0g
dGhpcywgeWV0IEkgd2FzIG5vdCBhYmxlIHRvIGNvbnRyb2wKPj4gYnJpZ2h0bmVzcyB1c2luZyBE
UENELiBJIGRvbid0IGtub3cgd2hhdCBnaXZlcywgYnV0IEkgZG8ga25vdyBlRFAgUFdNCj4+IHBp
biBjb250cm9sIHdvcmtzLgo+Cj4gU2hvdWxkIHdlIGdvIGFoZWFkIGFuZCBwdXNoIHRoZSBWRVNB
IGZpeCBmb3IgdGhpcyB0aGVuPyBJZiB5b3UncmUgd2lsbGluZyB0bwo+IHRlc3QgZnV0dXJlIHBh
dGNoZXMgb24gdGhhdCBtYWNoaW5lLCB3ZSBjb3VsZCBnaXZlIGFub3RoZXIgc2hvdCBhdCBlbmFi
bGluZyB0aGlzCj4gaW4gdGhlIGZ1dHVyZSBpZiB3ZSBmaW5kIHJlYXNvbiB0by4KClllcywgbGV0
J3MgZ28gd2l0aCB0aGlzIGZpcnN0LgoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+CgoKPgo+PiAKPj4gCj4+IEJSLAo+PiBKYW5pLgo+PiAKPj4gCj4+IFsx
XSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzMxNTgK
Pj4gCj4+IAo+PiA+IAo+PiA+IE9uIFRodSwgMjAyMS0wMy0xOCBhdCAxMzowMiAtMDQwMCwgTHl1
ZGUgUGF1bCB3cm90ZToKPj4gPiA+IExvb2tzIGxpa2UgdGhhdCB0aGVyZSBhY3R1YWxseSBhcmUg
YW5vdGhlciBzdWJzZXQgb2YgbGFwdG9wcyBvbiB0aGUgbWFya2V0Cj4+ID4gPiB0aGF0IGRvbid0
IHN1cHBvcnQgdGhlIEludGVsIEhEUiBiYWNrbGlnaHQgaW50ZXJmYWNlLCBidXQgZG8gYWR2ZXJ0
aXNlCj4+ID4gPiBzdXBwb3J0IGZvciB0aGUgVkVTQSBEUENEIGJhY2tsaWdodCBpbnRlcmZhY2Ug
ZGVzcGl0ZSB0aGUgZmFjdCBpdCBkb2Vzbid0Cj4+ID4gPiBzZWVtIHRvIHdvcmsuCj4+ID4gPiAK
Pj4gPiA+IE5vdGUgdGhvdWdoIEknbSBub3QgZW50aXJlbHkgY2xlYXIgb24gdGhpcyAtIG9uIG9u
ZSBvZiB0aGUgbWFjaGluZXMgd2hlcmUKPj4gPiA+IHRoaXMgaXNzdWUgd2FzIG9ic2VydmVkLCBJ
IGFsc28gbm90aWNlZCB0aGF0IHdlIGFwcGVhcmVkIHRvIGJlIHJlamVjdGluZwo+PiA+ID4gdGhl
IFZCVCBkZWZpbmVkIGJhY2tsaWdodCBmcmVxdWVuY3kgaW4KPj4gPiA+IGludGVsX2RwX2F1eF92
ZXNhX2NhbGNfbWF4X2JhY2tsaWdodCgpLiBJdCdzIG5vdGVkIGluIHRoaXMgZnVuY3Rpb24gdGhh
dDoKPj4gPiA+IAo+PiA+ID4gLyogVXNlIGhpZ2hlc3QgcG9zc2libGUgdmFsdWUgb2YgUG4gZm9y
IG1vcmUgZ3JhbnVsYXJpdHkgb2YgYnJpZ2h0bmVzcwo+PiA+ID4gwqAqIGFkanVzdG1lbnQgd2hp
bGUgc2F0aWZ5aW5nIHRoZSBjb25kaXRpb25zIGJlbG93Lgo+PiA+ID4gwqAqIC4uLgo+PiA+ID4g
wqAqIC0gRnhQIGlzIHdpdGhpbiAyNSUgb2YgZGVzaXJlZCB2YWx1ZS4KPj4gPiA+IMKgKsKgwqAg
Tm90ZTogMjUlIGlzIGFyYml0cmFyeSB2YWx1ZSBhbmQgbWF5IG5lZWQgc29tZSB0d2Vhay4KPj4g
PiA+IMKgKi8KPj4gPiA+IAo+PiA+ID4gU28gaXQncyBwb3NzaWJsZSB0aGF0IHRoaXMgdmFsdWUg
bWlnaHQganVzdCBuZWVkIHRvIGJlIHR3ZWFrZWQsIGJ1dCBmb3IKPj4gPiA+IG5vdwo+PiA+ID4g
bGV0J3MganVzdCBkaXNhYmxlIHRoZSBWRVNBIGJhY2tsaWdodCBpbnRlcmZhY2UgdW5sZXNzIGl0
J3Mgc3BlY2lmaWVkIGluCj4+ID4gPiB0aGUgVkJUIGp1c3QgdG8gYmUgc2FmZS4gV2UgbWlnaHQg
YmUgYWJsZSB0byB0cnkgZW5hYmxpbmcgdGhpcyBhZ2FpbiBieQo+PiA+ID4gZGVmYXVsdCBpbiB0
aGUgZnV0dXJlLgo+PiA+ID4gCj4+ID4gPiBGaXhlczogMjIyNzgxNmU2NDdhICgiZHJtL2k5MTUv
ZHA6IEFsbG93IGZvcmNpbmcgc3BlY2lmaWMgaW50ZXJmYWNlcwo+PiA+ID4gdGhyb3VnaAo+PiA+
ID4gZW5hYmxlX2RwY2RfYmFja2xpZ2h0IikKPj4gPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgo+PiA+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGlu
dGVsLmNvbT4KPj4gPiA+IEJ1Z3ppbGxhOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2ludGVsLy0vaXNzdWVzLzMxNjkKPj4gPiA+IFNpZ25lZC1vZmYtYnk6IEx5dWRlIFBhdWwg
PGx5dWRlQHJlZGhhdC5jb20+Cj4+ID4gPiAtLS0KPj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgfCAxIC0KPj4gPiA+IMKgMSBmaWxl
IGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPj4gPiA+IAo+PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4+ID4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4+
ID4gPiBpbmRleCA2NTE4ODQzOTAxMzcuLjRmODMzN2M3ZmQyZSAxMDA2NDQKPj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNr
bGlnaHQuYwo+PiA+ID4gQEAgLTY0Niw3ICs2NDYsNiBAQCBpbnQgaW50ZWxfZHBfYXV4X2luaXRf
YmFja2xpZ2h0X2Z1bmNzKHN0cnVjdAo+PiA+ID4gaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3Ip
Cj4+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBi
cmVhazsKPj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJTlRFTF9C
QUNLTElHSFRfRElTUExBWV9EREk6Cj4+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB0cnlfaW50ZWxfaW50ZXJmYWNlID0gdHJ1ZTsKPj4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdHJ5X3Zlc2FfaW50
ZXJmYWNlID0gdHJ1ZTsKPj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGJyZWFrOwo+PiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBkZWZhdWx0Ogo+PiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0dXJuIC1FTk9ERVY7Cj4+IAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
