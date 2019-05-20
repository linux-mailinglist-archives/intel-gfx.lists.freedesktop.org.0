Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD3E23BCA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 17:14:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8A489293;
	Mon, 20 May 2019 15:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ABF89293
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 15:14:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 08:14:12 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 20 May 2019 08:14:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 May 2019 18:14:09 +0300
Date: Mon, 20 May 2019 18:14:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190520151409.GX24299@intel.com>
References: <20190509122159.24376-1-ville.syrjala@linux.intel.com>
 <20190509122159.24376-9-ville.syrjala@linux.intel.com>
 <c65b5eb7-cd06-95f3-426b-726a50f74cda@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c65b5eb7-cd06-95f3-426b-726a50f74cda@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 8/8] drm/i915: Bump gen7+ fb size limits
 to 16kx16k
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMDY6MzM6MjFQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMDktMDUtMjAxOSBvbSAxNDoyMSBzY2hyZWVmIFZpbGxlIFN5cmphbGE6
Cj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+ID4KPiA+IFdpdGggZ3R0IHJlbWFwcGluZyBpbiBwbGFjZSB3ZSBjYW4gdXNlIGFyYml0cmFy
aWx5IGxhcmdlCj4gPiBmcmFtZWJ1ZmZlcnMuIExldCdzIGJ1bXAgdGhlIGxpbWl0cyB0byAxNmt4
MTZrIG9uIGdlbjcrLgo+ID4gVGhlIGxpbWl0IHdhcyBjaG9zZW4gdG8gbWF0Y2ggdGhlIG1heGlt
dW0gMkQgc3VyZmFjZSBzaXplCj4gPiBvZiB0aGUgM0QgZW5naW5lLgo+ID4KPiA+IFdpdGggdGhl
IHJlbWFwcGluZyB3ZSBjb3VsZCBlYXNpbHkgZ28gaGlnaGVyIHRoYW4gdGhhdCBmb3IgdGhlCj4g
PiBkaXNwbGF5IGVuZ2luZS4gSG93ZXZlciB0aGUgbW9kZXNldHRpbmcgZGR4IHdpbGwgYmxpbmRs
eSBhc3N1bWUKPiA+IGl0IGNhbiBoYW5kbGUgd2hhdGV2ZXIgaXMgcmVwb3J0ZWQgdmlhIGttcy4g
VGhlIG92ZXJzaXplZAo+ID4gYnVmZmVyIGRpbWVuc2lvbnMgYXJlIG5vdCBjYXVnaHQgYnkgZ2xh
bW9yIG5vciBNZXNhIHVudGlsCj4gPiBmaW5hbGx5IGFuIGFzc2VydCB3aWxsIHRyaXAgd2hlbiBn
ZW54bWwgYXR0ZW1wdHMgdG8gcGFjayB0aGUKPiA+IFNVUkZBQ0VfU1RBVEUuIFNvIHdlIHBpY2sg
YSBzYWZlIGxpbWl0IHRvIGF2b2lkIHRoZSBYIHNlcnZlcgo+ID4gZnJvbSBjcmFzaGluZyAob3Ig
cG90ZW50aWFsbHkgbWlzYmVoYXZpbmcgaWYgdGhlIGdlbnhtbCBhc3NlcnRzCj4gPiBhcmUgY29t
cGlsZWQgb3V0KS4KPiA+Cj4gPiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBmZndsbC5jaD4KPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3Jn
L3Nob3dfYnVnLmNnaT9pZD0xMTAxODcKPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCAxOCArKysrKysrKysrKystLS0tLS0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gPiBpbmRleCBhMmU0ZWY5MzhkNTMuLmE0
OTVmZDJkY2FhMyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rp
c3BsYXkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4g
PiBAQCAtMTU3ODMsMTYgKzE1NzgzLDIyIEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0
IGRybV9kZXZpY2UgKmRldikKPiA+ICAJCX0KPiA+ICAJfQo+ID4gIAo+ID4gLQkvKiBtYXhpbXVt
IGZyYW1lYnVmZmVyIGRpbWVuc2lvbnMgKi8KPiA+IC0JaWYgKElTX0dFTihkZXZfcHJpdiwgMikp
IHsKPiA+IC0JCWRldi0+bW9kZV9jb25maWcubWF4X3dpZHRoID0gMjA0ODsKPiA+IC0JCWRldi0+
bW9kZV9jb25maWcubWF4X2hlaWdodCA9IDIwNDg7Cj4gPiArCS8qCj4gPiArCSAqIE1heGltdW0g
ZnJhbWVidWZmZXIgZGltZW5zaW9ucywgY2hvc2VuIHRvIG1hdGNoCj4gPiArCSAqIHRoZSBtYXhp
bXVtIHJlbmRlciBlbmdpbmUgc3VyZmFjZSBzaXplIG9uIGdlbjQrLgo+ID4gKwkgKi8KPiA+ICsJ
aWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNykgewo+ID4gKwkJZGV2LT5tb2RlX2NvbmZpZy5t
YXhfd2lkdGggPSAxNjM4NDsKPiA+ICsJCWRldi0+bW9kZV9jb25maWcubWF4X2hlaWdodCA9IDE2
Mzg0Owo+ID4gKwl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNCkgewo+ID4gKwkJ
ZGV2LT5tb2RlX2NvbmZpZy5tYXhfd2lkdGggPSA4MTkyOwo+ID4gKwkJZGV2LT5tb2RlX2NvbmZp
Zy5tYXhfaGVpZ2h0ID0gODE5MjsKPiA+ICAJfSBlbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDMp
KSB7Cj4gPiAgCQlkZXYtPm1vZGVfY29uZmlnLm1heF93aWR0aCA9IDQwOTY7Cj4gPiAgCQlkZXYt
Pm1vZGVfY29uZmlnLm1heF9oZWlnaHQgPSA0MDk2Owo+ID4gIAl9IGVsc2Ugewo+ID4gLQkJZGV2
LT5tb2RlX2NvbmZpZy5tYXhfd2lkdGggPSA4MTkyOwo+ID4gLQkJZGV2LT5tb2RlX2NvbmZpZy5t
YXhfaGVpZ2h0ID0gODE5MjsKPiA+ICsJCWRldi0+bW9kZV9jb25maWcubWF4X3dpZHRoID0gMjA0
ODsKPiA+ICsJCWRldi0+bW9kZV9jb25maWcubWF4X2hlaWdodCA9IDIwNDg7Cj4gPiAgCX0KPiA+
ICAKPiA+ICAJaWYgKElTX0k4NDVHKGRldl9wcml2KSB8fCBJU19JODY1RyhkZXZfcHJpdikpIHsK
PiAKPiBTaG91bGQgYmUgZ29vZCBlbm91Z2gsIGxldHMgbm90IGdvIHRvbyBjcmF6eS4gOikKPiAK
PiBGb3Igd2hvbGUgc2VyaWVzOgo+IAo+IFJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoKWWF5ISBFdmVyeXRoaW5nIHJiJ2Qg
c28gc2VyaWVzIHB1c2hlZCB0byBkaW5xLgoKVGhhbmtzIGZvciB0aGUgcmV2aWV3cyBldmVyeW9u
ZS4KCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
