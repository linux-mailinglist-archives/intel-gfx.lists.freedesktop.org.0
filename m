Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2F412ECA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 15:08:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F05889FAD;
	Fri,  3 May 2019 13:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CEEE89FCA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 13:08:21 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 06:08:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,425,1549958400"; d="scan'208";a="167235983"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 03 May 2019 06:08:18 -0700
Date: Fri, 3 May 2019 16:08:05 +0300
From: Imre Deak <imre.deak@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20190503130805.GE7433@ideak-desk.fi.intel.com>
References: <20190502101754.29219-1-imre.deak@intel.com>
 <877eb9oy77.fsf@intel.com>
 <20190503123559.GN3271@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503123559.GN3271@phenom.ffwll.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tune down WARN about incorrect
 VBT TC legacy flag
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDI6MzU6NTlQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUaHUsIE1heSAwMiwgMjAxOSBhdCAwMzowOTowMFBNICswMzAwLCBKYW5pIE5p
a3VsYSB3cm90ZToKPiA+IE9uIFRodSwgMDIgTWF5IDIwMTksIEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4gd3JvdGU6Cj4gPiA+IExvb2tzIGxpa2UgVkJUIGNvbnRhaW5zIGFnYWluIHRo
ZSB3cm9uZyBpbmZvcm1hdGlvbiBhYm91dCBhIHBvcnQncyBUeXBlQwo+ID4gPiBsZWdhY3kgdnMu
IERQLWFsdC9UQlQtYWx0IHR5cGUuIFRoZXJlIGlzIG5vIGZ1cnRoZXIgaXNzdWVzIGFmdGVyIHdl
Cj4gPiA+IG5vdGljZSB0aGlzIGFuZCBmaXggaXQgdXAsIHNvIHR1bmUgZG93biB0aGUgV0FSTiB0
byBiZSBhIGEgRFJNX0VSUk9SLgo+ID4gPgo+ID4gPiBUaGlzIGFsc28gYXZvaWRzIENJIHRhaW50
aW5nIHRoZSBrZXJuZWwgYW5kIHN0b3BwaW5nIHRoZSB0ZXN0IHJ1bi4KPiA+ID4KPiA+ID4gQnVn
emlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDU3
OAo+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiA+ID4gU2ln
bmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+ID4gPiAtLS0KPiA+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCA3ICsrKysrLS0KPiA+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4gPiBpbmRleCA0ZTdiOGQyOWQ3MzMuLjA3ZmEyNjcw
YTY3NyAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gPiA+IEBAIC01MjMw
LDkgKzUyMzAsMTIgQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ID4gIAkgKiBXQVJOIGlmIHdlIGdvdCBhIGxl
Z2FjeSBwb3J0IEhQRCwgYnV0IFZCVCBkaWRuJ3QgbWFyayB0aGUgcG9ydCBhcwo+ID4gICAgICAg
ICAgICBeXl5eCj4gPiAKPiA+IFdpdGggdGhlIGNvbW1lbnQgZml4ZWQsCj4gPiAKPiA+IFJldmll
d2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4gCj4gPiA+ICAJ
ICogbGVnYWN5LiBUcmVhdCB0aGUgcG9ydCBhcyBsZWdhY3kgZnJvbSBub3cgb24uCj4gPiA+ICAJ
ICovCj4gPiA+IC0JaWYgKFdBUk5fT04oIWludGVsX2RpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCAm
Jgo+ID4gPiAtCQkgICAgSTkxNV9SRUFEKFNERUlTUikgJiBTREVfVENfSE9UUExVR19JQ1AodGNf
cG9ydCkpKQo+ID4gPiArCWlmICghaW50ZWxfZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0ICYmCj4g
PiA+ICsJICAgIEk5MTVfUkVBRChTREVJU1IpICYgU0RFX1RDX0hPVFBMVUdfSUNQKHRjX3BvcnQp
KSB7Cj4gPiA+ICsJCURSTV9FUlJPUigiVkJUIGluY29ycmVjdGx5IGNsYWltcyBwb3J0ICVjIGlz
IG5vdCBUeXBlQyBsZWdhY3lcbiIsCj4gPiA+ICsJCQkgIHBvcnRfbmFtZShwb3J0KSk7Cj4gPiA+
ICAJCWludGVsX2RpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCA9IHRydWU7Cj4gCj4gRFJNX0VSUlJP
UiBzdGlsbCBjYXVzZXMgQ0kgZmFpbHVyZXMgKGUuZy4gbW9kdWxlIHJlbG9hZCwgd2hlcmUgSSBn
dWVzcwo+IHRoaXMgZW5kcyB1cCBpbiB0aGUgbG9ncykuCj4gCj4gSWYgd2UgcmVhbGx5IGNhbiBm
dWxseSBmaXggaXQgdXAgSSB0aGluayBhIERSTV9JTkZPIGlzIHRoZSByaWdodCBsZXZlbC4KCldl
IGhhdmUgdG8gd2FpdCB1bnRpbCB0aGUgZmlyc3QgbGVnYWN5IEhQRCBpbnRlcnJ1cHQsIHdoZXJl
YXMgd2l0aCBhCmNvcnJlY3QgVkJUIGluZm8gd2Ugd291bGQgY29uZmlndXJlIHRoZSBjb3JyZWN0
IG1vZGUgcmlnaHQgZnJvbSB0aGUKc3RhcnQuIFNvIEkgdGhpbmsgaXQncyBzdGlsbCBhIHByb2Js
ZW0gYW5kIHdlIHNob3VsZCBiZSBjb21wbGFpbmluZwphYm91dCBpdCBsb3VkZXIgZXZlbiBsYXRl
ci4KCkkgZmlsZWQgYW4gSFNEIGZvciBpdCBhbmQgd291bGQgaG9wZSBpdCB3b3VsZCBiZSB0cmVh
dGVkIGFzIGEgcmVhbCBpc3N1ZQpieSB0aGF0IHRlYW0sIG5vdCBqdXN0IHlldCBhbm90aGVyIEhT
RC4gRm9yIHRoYXQgcmVhc29uIHRvbyBJJ2QgZ28Ka2VlcGluZyBpdCBhcyBhbiBlcnJvciwgbm90
IHRvIGxvc2UgaXQgZnJvbSB0aGUgcmFkYXIuCgpNZWFud2hpbGUsIHRoZSBlcnJvciBtZXNzYWdl
IGlzIHZlcnkgc3BlY2lmaWMgKGFib3V0IHRoaXMgcGFydGljdWxhciBwb3J0CmFuZCBzY2VuYXJp
bykgc28gSSB0aGluayBDSSBmaWx0ZXJpbmcgY291bGQgY29wZSB3aXRoIG1hcmtpbmcgaXQgYXMg
YQprbm93biBpc3N1ZSwgdW50aWwgd2UgZ2V0IGl0IGZpeGVkIGluIFZCVC4KCj4gLURhbmllbAo+
IAo+ID4gPiArCX0KPiA+ID4gIAlpc19sZWdhY3kgPSBpbnRlbF9kaWdfcG9ydC0+dGNfbGVnYWN5
X3BvcnQ7Cj4gPiA+ICAKPiA+ID4gIAkvKgo+ID4gCj4gPiAtLSAKPiA+IEphbmkgTmlrdWxhLCBJ
bnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKPiA+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4g
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+IAo+IC0tIAo+IERhbmllbCBW
ZXR0ZXIKPiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KPiBodHRwOi8vYmxv
Zy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
