Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F5235066
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 21:43:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FE9A89BFB;
	Tue,  4 Jun 2019 19:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D9589BFB
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 19:43:01 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 12:43:01 -0700
X-ExtLoop1: 1
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jun 2019 12:43:01 -0700
Date: Tue, 4 Jun 2019 12:44:48 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190604194448.GC7353@intel.com>
References: <20190603214940.11996-1-matthew.s.atwood@intel.com>
 <20190604125158.GC5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604125158.GC5942@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Correctly advertise HBR3 for
 GEN11+
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
Cc: intel-gfx@lists.freedesktop.org, dhinakaran.pandiyan@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMDQsIDIwMTkgYXQgMDM6NTE6NThQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIE1vbiwgSnVuIDAzLCAyMDE5IGF0IDAyOjQ5OjQwUE0gLTA3MDAsIG1hdHRo
ZXcucy5hdHdvb2RAaW50ZWwuY29tIHdyb3RlOgo+ID4gRnJvbTogTWF0dCBBdHdvb2QgPG1hdHRo
ZXcucy5hdHdvb2RAaW50ZWwuY29tPgo+ID4gCj4gPiBpbnRlbF9kcF9zZXRfc291cmNlX3JhdGVz
KCkgY2FsbHMgaW50ZWxfZHBfaXNfZWRwKCksIHdoaWNoIGlzIHVuc2FmZSB0bwo+ID4gdXNlIGJl
Zm9yZSBlbmNvZGVyX3R5cGUgaXMgc2V0LiBUaGlzIGNhdXNlZCBHRU4xMSsgdG8gaW5jb3JyZWN0
bHkgc3RyaXAKPiA+IEhCUjMgZnJvbSBzb3VyY2UgcmF0ZXMuIE1vdmUgaW50ZWxfZHBfc2V0X3Nv
dXJjZV9yYXRlcygpIHRvIGFmdGVyCj4gPiBlbmNvZGVyX3R5cGUgaXMgc2V0LiBBZGQgY29tbWVu
dCB0byBpbnRlbF9kcF9pc19lZHAoKSBkZXNjcmliaW5nIHVuc2FmZQo+ID4gdXNhZ2VzLgo+ID4g
Cj4gPiBGaXhlczogYjI2NWEyYTYyNTVmNSAoImRybS9pOTE1L2ljbDogY29tYm8gcG9ydCB2c3dp
bmcgcHJvZ3JhbW1pbmcKPiA+IGNoYW5nZXMgcGVyIEJTUEVDIikKPiA+IFNpZ25lZC1vZmYtYnk6
IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCA2ICsrKystLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHAuYwo+ID4gaW5kZXggMjRiNTZiMmE3NmM4Li5hNDQ5MGJjYWQ2ODQgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gPiBAQCAtMTQxLDYgKzE0MSw4IEBAIHN0YXRpYyBj
b25zdCB1OCB2YWxpZF9kc2Nfc2xpY2Vjb3VudFtdID0gezEsIDIsIDR9Owo+ID4gICAqCj4gPiAg
ICogSWYgYSBDUFUgb3IgUENIIERQIG91dHB1dCBpcyBhdHRhY2hlZCB0byBhbiBlRFAgcGFuZWws
IHRoaXMgZnVuY3Rpb24KPiA+ICAgKiB3aWxsIHJldHVybiB0cnVlLCBhbmQgZmFsc2Ugb3RoZXJ3
aXNlLgo+ID4gKyAqCj4gPiArICogVGhpcyBmdW5jdGlvbiBpcyBub3Qgc2FmZSB0byB1c2UgcHJp
b3IgdG8gZW5jb2RlciB0eXBlIGJlaW5nIHNldC4KPiA+ICAgKi8KPiA+ICBib29sIGludGVsX2Rw
X2lzX2VkcChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ID4gIHsKPiA+IEBAIC03MzQyLDgg
KzczNDQsNiBAQCBpbnRlbF9kcF9pbml0X2Nvbm5lY3RvcihzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICppbnRlbF9kaWdfcG9ydCwKPiA+ICAJCSBpbnRlbF9kaWdfcG9ydC0+bWF4X2xhbmVzLCBw
b3J0X25hbWUocG9ydCkpKQo+ID4gIAkJcmV0dXJuIGZhbHNlOwo+ID4gIAo+ID4gLQlpbnRlbF9k
cF9zZXRfc291cmNlX3JhdGVzKGludGVsX2RwKTsKPiA+IC0KPiA+ICAJaW50ZWxfZHAtPnJlc2V0
X2xpbmtfcGFyYW1zID0gdHJ1ZTsKPiA+ICAJaW50ZWxfZHAtPnBwc19waXBlID0gSU5WQUxJRF9Q
SVBFOwo+ID4gIAlpbnRlbF9kcC0+YWN0aXZlX3BpcGUgPSBJTlZBTElEX1BJUEU7Cj4gPiBAQCAt
NzM4OCw2ICs3Mzg4LDggQEAgaW50ZWxfZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCj4gPiAgCQkJdHlwZSA9PSBEUk1fTU9ERV9DT05O
RUNUT1JfZURQID8gImVEUCIgOiAiRFAiLAo+ID4gIAkJCXBvcnRfbmFtZShwb3J0KSk7Cj4gPiAg
Cj4gPiArCWludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoaW50ZWxfZHApOwo+ID4gKwo+IAo+IEkg
d291bGQgc3VnZ2VzdCBtb3ZpbmcgdGhlIGVuY29kZXItPnR5cGUgc2V0dXAgZWFybGllciBzbyB0
aGF0IHdlIG1pZ2h0Cj4gYXZvaWQgaGl0dGluZyB0aGlzIHNhbWUgcHJvYmxlbSBpbiB0aGUgZnV0
dXJlLgoKSU1ITywgSWRlYWxseSB0aGlzIGVuY29kZXItPnR5cGUgc2hvdWxkIGJlIHNldCBpbiBp
bnRlbF9kZGlfaW5pdCBvciBpbnRlbF9kZGlfaW5pdF9kcF9jb25uZWN0b3IoKQpmb3IgdXMgdG8g
bmV2ZXIgZ2V0IGludG8gYSBzaXR1YXRpb24gd2hlcmUgaW50ZWxfZHBfaXNfZWRwKCkgaXMgY2Fs
bGVkIGJlZm9yZSBlbmNvZGVyLT50eXBlIGlzIHNldC4KCklzIHRoYXQgd2hhdCB5b3UgYXJlIHJl
Y29tbWVuZGluZz8KCk1hbmFzaQoKPiAKPiA+ICAJZHJtX2Nvbm5lY3Rvcl9pbml0KGRldiwgY29u
bmVjdG9yLCAmaW50ZWxfZHBfY29ubmVjdG9yX2Z1bmNzLCB0eXBlKTsKPiA+ICAJZHJtX2Nvbm5l
Y3Rvcl9oZWxwZXJfYWRkKGNvbm5lY3RvciwgJmludGVsX2RwX2Nvbm5lY3Rvcl9oZWxwZXJfZnVu
Y3MpOwo+ID4gIAo+ID4gLS0gCj4gPiAyLjE3LjIKPiA+IAo+ID4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QK
PiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCj4gLS0gCj4gVmlsbGUg
U3lyasOkbMOkCj4gSW50ZWwKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
