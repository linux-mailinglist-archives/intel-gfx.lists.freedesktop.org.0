Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDFB34759
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 14:54:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22C1289829;
	Tue,  4 Jun 2019 12:54:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148CA89830
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 12:54:00 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 05:53:59 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 04 Jun 2019 05:53:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Jun 2019 15:53:56 +0300
Date: Tue, 4 Jun 2019 15:53:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: matthew.s.atwood@intel.com
Message-ID: <20190604125356.GD5942@intel.com>
References: <20190603214940.11996-1-matthew.s.atwood@intel.com>
 <20190604125158.GC5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604125158.GC5942@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
dXJlLgoKT2ggYW5kIHdoaWxlIHlvdSdyZSBpbiB0aGVyZSB3b3VsZCBiZSBuaWNlIGlmIHlvdSBj
b3VsZCBmaXggdXAgdGhlIGNvbW1lbnQKdGhhdCBzdGlsbCByZWZlcnMgdG8gSU5URUxfT1VUUFVU
X1VOS05PV04uCgo+IAo+ID4gIAlkcm1fY29ubmVjdG9yX2luaXQoZGV2LCBjb25uZWN0b3IsICZp
bnRlbF9kcF9jb25uZWN0b3JfZnVuY3MsIHR5cGUpOwo+ID4gIAlkcm1fY29ubmVjdG9yX2hlbHBl
cl9hZGQoY29ubmVjdG9yLCAmaW50ZWxfZHBfY29ubmVjdG9yX2hlbHBlcl9mdW5jcyk7Cj4gPiAg
Cj4gPiAtLSAKPiA+IDIuMTcuMgo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAKPiAtLSAKPiBWaWxsZSBTeXJqw6Rsw6QK
PiBJbnRlbAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
