Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B415581B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 21:49:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DC66E181;
	Tue, 25 Jun 2019 19:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB7E6E181
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 19:49:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 12:49:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="188401774"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 25 Jun 2019 12:48:58 -0700
Date: Tue, 25 Jun 2019 22:48:57 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190625194857.GD5455@ideak-desk.fi.intel.com>
References: <20190620140600.11357-1-imre.deak@intel.com>
 <20190620140600.11357-17-imre.deak@intel.com>
 <20190625135301.GE5942@intel.com>
 <20190625185738.GB5455@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625185738.GB5455@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 16/23] drm/i915: Sanitize the shared DPLL
 reserve/release interface
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMDk6NTc6MzhQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IE9uIFR1ZSwgSnVuIDI1LCAyMDE5IGF0IDA0OjUzOjAxUE0gKzAzMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToKPiA+IE9uIFRodSwgSnVuIDIwLCAyMDE5IGF0IDA1OjA1OjUzUE0gKzAzMDAs
IEltcmUgRGVhayB3cm90ZToKPiA+ID4gRm9yIGNvbnNpc3RlbmN5IHMvaW50ZWxfZ2V0X3NoYXJl
ZF9kcGxsKCkvaW50ZWxfcmVzZXJ2ZV9zaGFyZWRfZHBsbHMoKS8KPiA+ID4gdG8gYmV0dGVyIG1h
dGNoIGludGVsX3JlbGVhc2Vfc2hhcmVkX2RwbGxzKCkuIEFsc28sIHBhc3MgdG8gdGhlCj4gPiA+
IHJlc2VydmUvcmVsZWFzZSBhbmQgZ2V0X2RwbGxzL3B1dF9kcGxscyBob29rcyB0aGUgaW50ZWxf
YXRvbWljX3N0YXRlIGFuZAo+ID4gPiBDUlRDIG9iamVjdCwgdGhhdCB3YXkgdGhlc2UgZnVuY3Rp
b25zIGNhbiBsb29rIHVwIHRoZSBvbGQgb3IgbmV3IHN0YXRlCj4gPiA+IGFzIG5lZWRlZC4KPiA+
ID4gCj4gPiA+IEFsc28gcmVsZWFzZSB0aGUgUExMcyBmcm9tIHRoZSBhdG9taWMgc3RhdGUgdmlh
IGEgbmV3Cj4gPiA+IHB1dF9kcGxscy0+aW50ZWxfdW5yZWZlcmVuY2Vfc2hhcmVkX2RwbGwoKSBj
YWxsIGNoYWluIGZvciBiZXR0ZXIKPiA+ID4gc3ltbWV0cnkgd2l0aCB0aGUgcmVzZXJ2YXRpb24g
dmlhIHRoZQo+ID4gPiBnZXRfZHBsbHMtPmludGVsX3JlZmVyZW5jZV9zaGFyZWRfZHBsbCgpIGNh
bGwgY2hhaW4uCj4gPiA+IAo+ID4gPiBTaW5jZSBub3RoaW5nIHVzZXMgdGhlIFBMTCByZXR1cm5l
ZCBieSBpbnRlbF9yZXNlcnZlX3NoYXJlZF9kcGxscygpLAo+ID4gPiBtYWtlIGl0IHJldHVybiBv
bmx5IGEgYm9vbC4KPiA+ID4gCj4gPiA+IFdoaWxlIGF0IGl0IGFsc28gY2xhcmlmeSB0aGUgcmVz
ZXJ2ZS9yZWxlYXNlIGZ1bmN0aW9uIGRvY2Jvb2sgaGVhZGVycwo+ID4gPiBtYWtpbmcgaXQgY2xl
YXIgdGhhdCBtdWx0aXBsZSBEUExMcyB3aWxsIGJlIHJlc2VydmVkL3JlbGVhc2VkIGFuZAo+ID4g
PiB3aGV0aGVyIHRoZSBuZXcgb3Igb2xkIGF0b21pYyBDUlRDIHN0YXRlIGlzIGFmZmVjdGVkLgo+
ID4gPiAKPiA+ID4gVGhpcyByZWZhY3RvcmluZyBpcyBhbHNvIGEgcHJlcGFyYXRpb24gZm9yIGEg
Zm9sbG93LXVwIGNoYW5nZSB0aGF0IG5lZWRzCj4gPiA+IHRvIHJlc2VydmUgbXVsdGlwbGUgRFBM
THMuCj4gPiA+IAo+ID4gPiBLdWRvcyB0byBWaWxsZSBmb3IgdGhlIGlkZWEgdG8gcGFzcyBpbnRl
bF9hdG9taWNfc3RhdGUgYXJvdW5kLCB0byBtYWtlCj4gPiA+IHRoaW5ncyBjbGVhcmVyIGxvY2Fs
bHkgd2hlcmUgYW4gb2JqZWN0J3Mgb2xkL25ldyBhdG9taWMgc3RhdGUgaXMKPiA+ID4gcmVxdWly
ZWQuCj4gPiA+IAo+ID4gPiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCj4gPiA+IAo+ID4gPiB2MjoK
PiA+ID4gLSBGaXggY2hlY2twYXRjaCBpc3N1ZTogdHlwbyBpbiBjb2RlIGNvbW1lbnQuCj4gPiA+
IAo+ID4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiA+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiA+
IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
Pgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4g
PiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgIHwgIDE5ICstCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
bGxfbWdyLmMgfCAyMjEgKysrKysrKysrKystLS0tLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmggfCAgMTMgKy0KPiA+ID4gIDMgZmlsZXMgY2hh
bmdlZCwgMTUzIGluc2VydGlvbnMoKyksIDEwMCBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiA+IGluZGV4
IDQ2OGNhNmQ4NGJkOC4uNjg4MTM3NTI0MTc5IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gPiBAQCAtOTUwNCw2ICs5NTA0
LDggQEAgc3RhdGljIGludCBpcm9ubGFrZV9jcnRjX2NvbXB1dGVfY2xvY2soc3RydWN0IGludGVs
X2NydGMgKmNydGMsCj4gPiA+ICAJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQo+ID4gPiAgewo+ID4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ID4gPiArCXN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlID0KPiA+ID4gKwkJdG9faW50ZWxfYXRvbWljX3N0YXRlKGNydGNfc3Rh
dGUtPmJhc2Uuc3RhdGUpOwo+ID4gPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9saW1pdCAqbGltaXQ7
Cj4gPiA+ICAJaW50IHJlZmNsayA9IDEyMDAwMDsKPiA+ID4gIAo+ID4gPiBAQCAtOTU0NSw3ICs5
NTQ3LDcgQEAgc3RhdGljIGludCBpcm9ubGFrZV9jcnRjX2NvbXB1dGVfY2xvY2soc3RydWN0IGlu
dGVsX2NydGMgKmNydGMsCj4gPiA+ICAKPiA+ID4gIAlpcm9ubGFrZV9jb21wdXRlX2RwbGwoY3J0
YywgY3J0Y19zdGF0ZSwgTlVMTCk7Cj4gPiA+ICAKPiA+ID4gLQlpZiAoIWludGVsX2dldF9zaGFy
ZWRfZHBsbChjcnRjX3N0YXRlLCBOVUxMKSkgewo+ID4gPiArCWlmICghaW50ZWxfcmVzZXJ2ZV9z
aGFyZWRfZHBsbHMoc3RhdGUsIGNydGMsIE5VTEwpKSB7Cj4gPiA+ICAJCURSTV9ERUJVR19LTVMo
ImZhaWxlZCB0byBmaW5kIFBMTCBmb3IgcGlwZSAlY1xuIiwKPiA+ID4gIAkJCSAgICAgIHBpcGVf
bmFtZShjcnRjLT5waXBlKSk7Cj4gPiA+ICAJCXJldHVybiAtRUlOVkFMOwo+ID4gPiBAQCAtOTky
Niw3ICs5OTI4LDcgQEAgc3RhdGljIGludCBoYXN3ZWxsX2NydGNfY29tcHV0ZV9jbG9jayhzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiA+ID4gIAkJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIgPQo+ID4gPiAgCQkJaW50ZWxfZ2V0X2NydGNfbmV3X2VuY29kZXIoc3RhdGUsIGNydGNfc3Rh
dGUpOwo+ID4gPiAgCj4gPiA+IC0JCWlmICghaW50ZWxfZ2V0X3NoYXJlZF9kcGxsKGNydGNfc3Rh
dGUsIGVuY29kZXIpKSB7Cj4gPiA+ICsJCWlmICghaW50ZWxfcmVzZXJ2ZV9zaGFyZWRfZHBsbHMo
c3RhdGUsIGNydGMsIGVuY29kZXIpKSB7Cj4gPiA+ICAJCQlEUk1fREVCVUdfS01TKCJmYWlsZWQg
dG8gZmluZCBQTEwgZm9yIHBpcGUgJWNcbiIsCj4gPiA+ICAJCQkJICAgICAgcGlwZV9uYW1lKGNy
dGMtPnBpcGUpKTsKPiA+ID4gIAkJCXJldHVybiAtRUlOVkFMOwo+ID4gPiBAQCAtMTMxOTUsMjcg
KzEzMTk3LDIwIEBAIHN0YXRpYyB2b2lkIHVwZGF0ZV9zY2FubGluZV9vZmZzZXQoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gPiA+ICBzdGF0aWMgdm9pZCBpbnRl
bF9tb2Rlc2V0X2NsZWFyX3BsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4g
PiA+ICB7Cj4gPiA+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkx
NShzdGF0ZS0+YmFzZS5kZXYpOwo+ID4gPiAtCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRf
Y3J0Y19zdGF0ZSwgKm5ld19jcnRjX3N0YXRlOwo+ID4gPiArCXN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpuZXdfY3J0Y19zdGF0ZTsKPiA+ID4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiA+
ID4gIAlpbnQgaTsKPiA+ID4gIAo+ID4gPiAgCWlmICghZGV2X3ByaXYtPmRpc3BsYXkuY3J0Y19j
b21wdXRlX2Nsb2NrKQo+ID4gPiAgCQlyZXR1cm47Cj4gPiA+ICAKPiA+ID4gLQlmb3JfZWFjaF9v
bGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsCj4g
PiA+IC0JCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgewo+ID4gPiAtCQlzdHJ1Y3QgaW50ZWxf
c2hhcmVkX2RwbGwgKm9sZF9kcGxsID0KPiA+ID4gLQkJCW9sZF9jcnRjX3N0YXRlLT5zaGFyZWRf
ZHBsbDsKPiA+ID4gLQo+ID4gPiArCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0
YXRlLCBjcnRjLCBuZXdfY3J0Y19zdGF0ZSwgaSkgewo+ID4gPiAgCQlpZiAoIW5lZWRzX21vZGVz
ZXQoJm5ld19jcnRjX3N0YXRlLT5iYXNlKSkKPiA+ID4gIAkJCWNvbnRpbnVlOwo+ID4gPiAgCj4g
PiA+ICAJCW5ld19jcnRjX3N0YXRlLT5zaGFyZWRfZHBsbCA9IE5VTEw7Cj4gPiA+ICAKPiA+ID4g
LQkJaWYgKCFvbGRfZHBsbCkKPiA+ID4gLQkJCWNvbnRpbnVlOwo+ID4gPiAtCj4gPiA+IC0JCWlu
dGVsX3JlbGVhc2Vfc2hhcmVkX2RwbGwob2xkX2RwbGwsIGNydGMsICZzdGF0ZS0+YmFzZSk7Cj4g
PiA+ICsJCWludGVsX3JlbGVhc2Vfc2hhcmVkX2RwbGxzKHN0YXRlLCBjcnRjKTsKPiA+ID4gIAl9
Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBsbF9tZ3IuYwo+ID4gPiBpbmRleCBiZjY2MjYxYzhiZjAuLjNmYmM5NzU4NTFmYSAx
MDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuYwo+ID4gPiBAQCAtMzYsOSArMzYsMTAgQEAKPiA+ID4gICAqIFRoaXMgZmlsZSBwcm92
aWRlcyBhbiBhYnN0cmFjdGlvbiBvdmVyIGRpc3BsYXkgUExMcy4gVGhlIGZ1bmN0aW9uCj4gPiA+
ICAgKiBpbnRlbF9zaGFyZWRfZHBsbF9pbml0KCkgaW5pdGlhbGl6ZXMgdGhlIFBMTHMgZm9yIHRo
ZSBnaXZlbiBwbGF0Zm9ybS4gIFRoZQo+ID4gPiAgICogdXNlcnMgb2YgYSBQTEwgYXJlIHRyYWNr
ZWQgYW5kIHRoYXQgdHJhY2tpbmcgaXMgaW50ZWdyYXRlZCB3aXRoIHRoZSBhdG9taWMKPiA+ID4g
LSAqIG1vZGVzdCBpbnRlcmZhY2UuIER1cmluZyBhbiBhdG9taWMgb3BlcmF0aW9uLCBhIFBMTCBj
YW4gYmUgcmVxdWVzdGVkIGZvciBhCj4gPiA+IC0gKiBnaXZlbiBDUlRDIGFuZCBlbmNvZGVyIGNv
bmZpZ3VyYXRpb24gYnkgY2FsbGluZyBpbnRlbF9nZXRfc2hhcmVkX2RwbGwoKSBhbmQKPiA+ID4g
LSAqIGEgcHJldmlvdXNseSB1c2VkIFBMTCBjYW4gYmUgcmVsZWFzZWQgd2l0aCBpbnRlbF9yZWxl
YXNlX3NoYXJlZF9kcGxsKCkuCj4gPiA+ICsgKiBtb2RzZXQgaW50ZXJmYWNlLiBEdXJpbmcgYW4g
YXRvbWljIG9wZXJhdGlvbiwgcmVxdWlyZWQgUExMcyBjYW4gYmUgcmVzZXJ2ZWQKPiA+ID4gKyAq
IGZvciBhIGdpdmVuIENSVEMgYW5kIGVuY29kZXIgY29uZmlndXJhdGlvbiBieSBjYWxsaW5nCj4g
PiA+ICsgKiBpbnRlbF9yZXNlcnZlX3NoYXJlZF9kcGxscygpIGFuZCBwcmV2aW91c2x5IHJlc2Vy
dmVkIFBMTHMgY2FuIGJlIHJlbGVhc2VkCj4gPiA+ICsgKiB3aXRoIGludGVsX3JlbGVhc2Vfc2hh
cmVkX2RwbGxzKCkuCj4gPiA+ICAgKiBDaGFuZ2VzIHRvIHRoZSB1c2VycyBhcmUgZmlyc3Qgc3Rh
Z2VkIGluIHRoZSBhdG9taWMgc3RhdGUsIGFuZCB0aGVuIG1hZGUKPiA+ID4gICAqIGVmZmVjdGl2
ZSBieSBjYWxsaW5nIGludGVsX3NoYXJlZF9kcGxsX3N3YXBfc3RhdGUoKSBkdXJpbmcgdGhlIGF0
b21pYwo+ID4gPiAgICogY29tbWl0IHBoYXNlLgo+ID4gPiBAQCAtMzA5LDYgKzMxMCwyOCBAQCBp
bnRlbF9yZWZlcmVuY2Vfc2hhcmVkX2RwbGwoc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGws
Cj4gPiA+ICAJc2hhcmVkX2RwbGxbaWRdLmNydGNfbWFzayB8PSAxIDw8IGNydGMtPnBpcGU7Cj4g
PiA+ICB9Cj4gPiA+ICAKPiA+ID4gK3N0YXRpYyB2b2lkIGludGVsX3VucmVmZXJlbmNlX3NoYXJl
ZF9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gPiArCQkJCQkgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ID4gPiArCQkJCQkgIGNvbnN0IHN0cnVjdCBp
bnRlbF9zaGFyZWRfZHBsbCAqcGxsKQo+ID4gPiArewo+ID4gPiArCXN0cnVjdCBpbnRlbF9zaGFy
ZWRfZHBsbF9zdGF0ZSAqc2hhcmVkX2RwbGw7Cj4gPiA+ICsKPiA+ID4gKwlzaGFyZWRfZHBsbCA9
IGludGVsX2F0b21pY19nZXRfc2hhcmVkX2RwbGxfc3RhdGUoJnN0YXRlLT5iYXNlKTsKPiA+ID4g
KwlzaGFyZWRfZHBsbFtwbGwtPmluZm8tPmlkXS5jcnRjX21hc2sgJj0gfigxIDw8IGNydGMtPnBp
cGUpOwo+ID4gPiArfQo+ID4gPiArCj4gPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9wdXRfZHBsbChz
dHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+ID4gKwkJCSAgIHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKQo+ID4gPiArewo+ID4gPiArCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlID0KPiA+ID4gKwkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0
ZSwgY3J0Yyk7Cj4gPiAKPiA+IEknbSB3b25kZXJpbmcgYSBiaXQgd2h5IHdlJ3JlIHVzaW5nIHRo
ZSBvbGQgY3J0YyBzdGF0ZSBoZXJlLiBXZQo+ID4gZHVwbGljYXRlZCB0aGUgc3RhdGUgc28gc2hv
dWxkbid0IHRoZSBuZXcgY3J0YyBzdGF0ZSBoYXZlIHRoZQo+ID4gc2FtZSBkcGxsIHN0aWxsIGF0
IHRoaXMgcG9pbnQ/Cj4gPiAKPiA+IERvZXNuJ3QgcmVhbGx5IG1hdHRlciBJIHN1cHBvc2UuIE5v
dCBldmVuIHN1cmUgd2hpY2ggc3RhdGUgd291bGQKPiA+IGJlIG1vcmUgY29ycmVjdCBoZXJlLgo+
IAo+IFlvdSBhcmUgcmlnaHQsIHRoZSBuZXcgY3J0YyBzdGF0ZSB3b3VsZCBiZSB0aGUgYmV0dGVy
IGNob2ljZSBoZXJlLiBUaGUKPiB0d28gc3RhdGVzIGFyZSBlcXVhbCBoZXJlIHllcywgYnV0IGlu
IHRoZSB1cGNvbWluZyBpY2xfcHV0X2RwbGxzKCkgd2UKPiBzaG91bGQgY2xlYXIgdGhlIG5ldyBj
cnRjX3N0YXRlLT5pY2xfcG9ydF9kcGxscy4gTm90IGNsZWFyaW5nIHRoZW0KPiBoYXBwZW5zIHRv
IG5vdCBjYXVzZSBhIHByb2JsZW0sIHNpbmNlIHdlIHJlYWxsb2NhdGUgYWxsIFBMTHMgaW4KPiBp
Y2xfZ2V0X2RwbGxzKCksIGJ1dCBpdCdzIGJldHRlciB0byBkbyB0aGUgY2xlYXJpbmcgYW55d2F5
IGZvcgo+IGNvbnNpc3RlbmN5Lgo+IAo+IEknbGwgY2hhbmdlIHRoYXQuCgpBaCwgbm93IEkgcmVt
ZW1iZXIgd2h5IG5ldyBjcnRjIHN0YXRlIHdvdWxkbid0IHdvcmsgaGVyZToKd2hlbiByZXN0b3Jp
bmcgdGhlIHN0YXRlIHZpYQppbnRlbF9yZWxlYXNlX2xvYWRfZGV0ZWN0X3BpcGUoKS0+ZHJtX2F0
b21pY19oZWxwZXJfY29tbWl0X2R1cGxpY2F0ZWRfc3RhdGUoKQp0aGUgbmV3IGFuZCBvbGQgY3Ry
YyBzdGF0ZXMgd29uJ3QgYmUgZXF1YWwuIFNvIHdlIG5lZWQgdG8gdXNlIHRoZSBvbGQKY3J0YyBz
dGF0ZSBhcyB0aGF0IGNvbnRhaW5zIHRoZSBQTEwgd2UgbXVzdCByZWxlYXNlLCB3aGlsZSB0aGUg
bmV3IGNydGMKc3RhdGUgY291bGQgaGF2ZSBubyBQTEwgYXNzaWduZWQgdG8gaXQgKGlmIHRoZSBw
aXBlIHdhcyBkaXNhYmxlZCBiZWZvcmUKbG9hZC1kZXRlY3QpLgoKU28gd2Ugc2hvdWxkIGxlYXZl
IHRoaXMgb25lIGhlcmUgYXMtaXMsIGFuZCBkbyB0aGUgY2xlYXJpbmcgb2YKaWNsX3BvcnRfZHBs
bHNbXSBsYXRlciBmcm9tIHRoZSBuZXcgY3J0YyBzdGF0ZSAod2hpbGUgc3RpbGwgbG9va2luZyB1
cAp0aGUgUExMcyB0byBwdXQgaW4gaWNsX3B1dF9kcGxscygpIGZyb20gdGhlIG9sZCBjcnRjIHN0
YXRlKS4KCj4gCj4gPiAKPiA+IEFueXdheXMsIHRoZSBwYXRjaCBzZWVtcyBPSy4KPiA+IFJldmll
d2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+
ID4gCj4gPiA+ICsKPiA+ID4gKwlpZiAoIWNydGNfc3RhdGUtPnNoYXJlZF9kcGxsKQo+ID4gPiAr
CQlyZXR1cm47Cj4gPiA+ICsKPiA+ID4gKwlpbnRlbF91bnJlZmVyZW5jZV9zaGFyZWRfZHBsbChz
dGF0ZSwgY3J0YywgY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGwpOwo+ID4gPiArfQo+ID4gPiArCj4g
PiA+ICAvKioKPiA+ID4gICAqIGludGVsX3NoYXJlZF9kcGxsX3N3YXBfc3RhdGUgLSBtYWtlIGF0
b21pYyBEUExMIGNvbmZpZ3VyYXRpb24gZWZmZWN0aXZlCj4gPiA+ICAgKiBAc3RhdGU6IGF0b21p
YyBzdGF0ZQo+ID4gPiBAQCAtNDIxLDExICs0NDQsMTIgQEAgc3RhdGljIHZvaWQgaWJ4X3BjaF9k
cGxsX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gPiAgCXVk
ZWxheSgyMDApOwo+ID4gPiAgfQo+ID4gPiAgCj4gPiA+IC1zdGF0aWMgc3RydWN0IGludGVsX3No
YXJlZF9kcGxsICoKPiA+ID4gLWlieF9nZXRfZHBsbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKPiA+ID4gLQkgICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQo+
ID4gPiArc3RhdGljIGJvb2wgaWJ4X2dldF9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLAo+ID4gPiArCQkJIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ID4gPiArCQkJIHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQo+ID4gPiAgewo+ID4gPiAtCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwo+ID4g
PiArCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KPiA+ID4gKwkJaW50ZWxf
YXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gPiA+ICAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gPiA+
ICAJc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGw7Cj4gPiA+ICAJZW51bSBpbnRlbF9kcGxs
X2lkIGk7Cj4gPiA+IEBAIC00NDUsMTIgKzQ2OSwxMiBAQCBpYnhfZ2V0X2RwbGwoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gPiA+ICAJfQo+ID4gPiAgCj4gPiA+ICAJaWYg
KCFwbGwpCj4gPiA+IC0JCXJldHVybiBOVUxMOwo+ID4gPiArCQlyZXR1cm4gZmFsc2U7Cj4gPiA+
ICAKPiA+ID4gIAkvKiByZWZlcmVuY2UgdGhlIHBsbCAqLwo+ID4gPiAgCWludGVsX3JlZmVyZW5j
ZV9zaGFyZWRfZHBsbChwbGwsIGNydGNfc3RhdGUpOwo+ID4gPiAgCj4gPiA+IC0JcmV0dXJuIHBs
bDsKPiA+ID4gKwlyZXR1cm4gdHJ1ZTsKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAgc3RhdGljIHZv
aWQgaWJ4X2R1bXBfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+
ID4gPiBAQCAtODIxLDEwICs4NDUsMTIgQEAgaHN3X2RkaV9kcF9nZXRfZHBsbChzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiA+ID4gIAlyZXR1cm4gcGxsOwo+ID4gPiAgfQo+
ID4gPiAgCj4gPiA+IC1zdGF0aWMgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICoKPiA+ID4gLWhz
d19nZXRfZHBsbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+ID4gLQkg
ICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQo+ID4gPiArc3RhdGljIGJvb2wgaHN3
X2dldF9kcGxsKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4gPiArCQkJIHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ID4gPiArCQkJIHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyKQo+ID4gPiAgewo+ID4gPiArCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlID0KPiA+ID4gKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0
Yyk7Cj4gPiA+ICAJc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGw7Cj4gPiA+ICAKPiA+ID4g
IAltZW1zZXQoJmNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUsIDAsCj4gPiA+IEBAIC04MzYsNyAr
ODYyLDcgQEAgaHN3X2dldF9kcGxsKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAo+ID4gPiAgCQlwbGwgPSBoc3dfZGRpX2RwX2dldF9kcGxsKGNydGNfc3RhdGUpOwo+ID4gPiAg
CX0gZWxzZSBpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRf
QU5BTE9HKSkgewo+ID4gPiAgCQlpZiAoV0FSTl9PTihjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrIC8g
MiAhPSAxMzUwMDApKQo+ID4gPiAtCQkJcmV0dXJuIE5VTEw7Cj4gPiA+ICsJCQlyZXR1cm4gZmFs
c2U7Cj4gPiA+ICAKPiA+ID4gIAkJY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZS5zcGxsID0KPiA+
ID4gIAkJCVNQTExfUExMX0VOQUJMRSB8IFNQTExfRlJFUV8xMzUwTUh6IHwgU1BMTF9SRUZfTVVY
RURfU1NDOwo+ID4gPiBAQCAtODQ0LDE1ICs4NzAsMTUgQEAgaHN3X2dldF9kcGxsKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ID4gPiAgCQlwbGwgPSBpbnRlbF9maW5kX3No
YXJlZF9kcGxsKGNydGNfc3RhdGUsCj4gPiA+ICAJCQkJCSAgICAgRFBMTF9JRF9TUExMLCBEUExM
X0lEX1NQTEwpOwo+ID4gPiAgCX0gZWxzZSB7Cj4gPiA+IC0JCXJldHVybiBOVUxMOwo+ID4gPiAr
CQlyZXR1cm4gZmFsc2U7Cj4gPiA+ICAJfQo+ID4gPiAgCj4gPiA+ICAJaWYgKCFwbGwpCj4gPiA+
IC0JCXJldHVybiBOVUxMOwo+ID4gPiArCQlyZXR1cm4gZmFsc2U7Cj4gPiA+ICAKPiA+ID4gIAlp
bnRlbF9yZWZlcmVuY2Vfc2hhcmVkX2RwbGwocGxsLCBjcnRjX3N0YXRlKTsKPiA+ID4gIAo+ID4g
PiAtCXJldHVybiBwbGw7Cj4gPiA+ICsJcmV0dXJuIHRydWU7Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+
ID4gIHN0YXRpYyB2b2lkIGhzd19kdW1wX2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKPiA+ID4gQEAgLTEzODUsMTAgKzE0MTEsMTIgQEAgc2tsX2RkaV9kcF9zZXRf
ZHBsbF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiA+ID4g
IAlyZXR1cm4gdHJ1ZTsKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAtc3RhdGljIHN0cnVjdCBpbnRl
bF9zaGFyZWRfZHBsbCAqCj4gPiA+IC1za2xfZ2V0X2RwbGwoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsCj4gPiA+IC0JICAgICBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
cikKPiA+ID4gK3N0YXRpYyBib29sIHNrbF9nZXRfZHBsbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKPiA+ID4gKwkJCSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiA+ID4gKwkJ
CSBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiA+ID4gIHsKPiA+ID4gKwlzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9Cj4gPiA+ICsJCWludGVsX2F0b21pY19nZXRf
bmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwo+ID4gPiAgCXN0cnVjdCBpbnRlbF9zaGFyZWRf
ZHBsbCAqcGxsOwo+ID4gPiAgCWJvb2wgYnJldDsKPiA+ID4gIAo+ID4gPiBAQCAtMTM5NiwxNiAr
MTQyNCwxNiBAQCBza2xfZ2V0X2RwbGwoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUsCj4gPiA+ICAJCWJyZXQgPSBza2xfZGRpX2hkbWlfcGxsX2RpdmlkZXJzKGNydGNfc3RhdGUp
Owo+ID4gPiAgCQlpZiAoIWJyZXQpIHsKPiA+ID4gIAkJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5v
dCBnZXQgSERNSSBwbGwgZGl2aWRlcnMuXG4iKTsKPiA+ID4gLQkJCXJldHVybiBOVUxMOwo+ID4g
PiArCQkJcmV0dXJuIGZhbHNlOwo+ID4gPiAgCQl9Cj4gPiA+ICAJfSBlbHNlIGlmIChpbnRlbF9j
cnRjX2hhc19kcF9lbmNvZGVyKGNydGNfc3RhdGUpKSB7Cj4gPiA+ICAJCWJyZXQgPSBza2xfZGRp
X2RwX3NldF9kcGxsX2h3X3N0YXRlKGNydGNfc3RhdGUpOwo+ID4gPiAgCQlpZiAoIWJyZXQpIHsK
PiA+ID4gIAkJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCBzZXQgRFAgZHBsbCBIVyBzdGF0ZS5c
biIpOwo+ID4gPiAtCQkJcmV0dXJuIE5VTEw7Cj4gPiA+ICsJCQlyZXR1cm4gZmFsc2U7Cj4gPiA+
ICAJCX0KPiA+ID4gIAl9IGVsc2Ugewo+ID4gPiAtCQlyZXR1cm4gTlVMTDsKPiA+ID4gKwkJcmV0
dXJuIGZhbHNlOwo+ID4gPiAgCX0KPiA+ID4gIAo+ID4gPiAgCWlmIChpbnRlbF9jcnRjX2hhc190
eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9FRFApKQo+ID4gPiBAQCAtMTQxNywxMSArMTQ0
NSwxMSBAQCBza2xfZ2V0X2RwbGwoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
Cj4gPiA+ICAJCQkJCSAgICAgRFBMTF9JRF9TS0xfRFBMTDEsCj4gPiA+ICAJCQkJCSAgICAgRFBM
TF9JRF9TS0xfRFBMTDMpOwo+ID4gPiAgCWlmICghcGxsKQo+ID4gPiAtCQlyZXR1cm4gTlVMTDsK
PiA+ID4gKwkJcmV0dXJuIGZhbHNlOwo+ID4gPiAgCj4gPiA+ICAJaW50ZWxfcmVmZXJlbmNlX3No
YXJlZF9kcGxsKHBsbCwgY3J0Y19zdGF0ZSk7Cj4gPiA+ICAKPiA+ID4gLQlyZXR1cm4gcGxsOwo+
ID4gPiArCXJldHVybiB0cnVlOwo+ID4gPiAgfQo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgdm9pZCBz
a2xfZHVtcF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gPiA+
IEBAIC0xODI3LDIyICsxODU1LDIzIEBAIGJ4dF9kZGlfaGRtaV9zZXRfZHBsbF9od19zdGF0ZShz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiA+ID4gIAlyZXR1cm4gYnh0X2Rk
aV9zZXRfZHBsbF9od19zdGF0ZShjcnRjX3N0YXRlLCAmY2xrX2Rpdik7Cj4gPiA+ICB9Cj4gPiA+
ICAKPiA+ID4gLXN0YXRpYyBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKgo+ID4gPiAtYnh0X2dl
dF9kcGxsKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ID4gPiAtCSAgICAg
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4gPiA+ICtzdGF0aWMgYm9vbCBieHRfZ2V0
X2RwbGwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiA+ICsJCQkgc3RydWN0
IGludGVsX2NydGMgKmNydGMsCj4gPiA+ICsJCQkgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIpCj4gPiA+ICB7Cj4gPiA+IC0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9j
cnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7Cj4gPiA+ICsJc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUgPQo+ID4gPiArCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRl
KHN0YXRlLCBjcnRjKTsKPiA+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiA+ID4gIAlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2Rw
bGwgKnBsbDsKPiA+ID4gIAllbnVtIGludGVsX2RwbGxfaWQgaWQ7Cj4gPiA+ICAKPiA+ID4gIAlp
ZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfSERNSSkgJiYK
PiA+ID4gIAkgICAgIWJ4dF9kZGlfaGRtaV9zZXRfZHBsbF9od19zdGF0ZShjcnRjX3N0YXRlKSkK
PiA+ID4gLQkJcmV0dXJuIE5VTEw7Cj4gPiA+ICsJCXJldHVybiBmYWxzZTsKPiA+ID4gIAo+ID4g
PiAgCWlmIChpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKGNydGNfc3RhdGUpICYmCj4gPiA+ICAJ
ICAgICFieHRfZGRpX2RwX3NldF9kcGxsX2h3X3N0YXRlKGNydGNfc3RhdGUpKQo+ID4gPiAtCQly
ZXR1cm4gTlVMTDsKPiA+ID4gKwkJcmV0dXJuIGZhbHNlOwo+ID4gPiAgCj4gPiA+ICAJLyogMTox
IG1hcHBpbmcgYmV0d2VlbiBwb3J0cyBhbmQgUExMcyAqLwo+ID4gPiAgCWlkID0gKGVudW0gaW50
ZWxfZHBsbF9pZCkgZW5jb2Rlci0+cG9ydDsKPiA+ID4gQEAgLTE4NTMsNyArMTg4Miw3IEBAIGJ4
dF9nZXRfZHBsbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+ID4gIAo+
ID4gPiAgCWludGVsX3JlZmVyZW5jZV9zaGFyZWRfZHBsbChwbGwsIGNydGNfc3RhdGUpOwo+ID4g
PiAgCj4gPiA+IC0JcmV0dXJuIHBsbDsKPiA+ID4gKwlyZXR1cm4gdHJ1ZTsKPiA+ID4gIH0KPiA+
ID4gIAo+ID4gPiAgc3RhdGljIHZvaWQgYnh0X2R1bXBfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gPiBAQCAtMTg4NCw4ICsxOTEzLDExIEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGxfZnVuY3MgYnh0X2RkaV9wbGxfZnVuY3MgPSB7
Cj4gPiA+ICBzdHJ1Y3QgaW50ZWxfZHBsbF9tZ3Igewo+ID4gPiAgCWNvbnN0IHN0cnVjdCBkcGxs
X2luZm8gKmRwbGxfaW5mbzsKPiA+ID4gIAo+ID4gPiAtCXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBs
bCAqKCpnZXRfZHBsbCkoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gPiA+
IC0JCQkJCSAgICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsKPiA+ID4gKwlib29s
ICgqZ2V0X2RwbGxzKShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+ID4gKwkJ
CSAgc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gPiA+ICsJCQkgIHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyKTsKPiA+ID4gKwl2b2lkICgqcHV0X2RwbGxzKShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKPiA+ID4gKwkJCSAgc3RydWN0IGludGVsX2NydGMgKmNydGMpOwo+
ID4gPiAgCj4gPiA+ICAJdm9pZCAoKmR1bXBfaHdfc3RhdGUpKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKPiA+ID4gIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX2h3
X3N0YXRlICpod19zdGF0ZSk7Cj4gPiA+IEBAIC0xODk5LDcgKzE5MzEsOCBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGRwbGxfaW5mbyBwY2hfcGxsc1tdID0gewo+ID4gPiAgCj4gPiA+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX2RwbGxfbWdyIHBjaF9wbGxfbWdyID0gewo+ID4gPiAgCS5kcGxs
X2luZm8gPSBwY2hfcGxscywKPiA+ID4gLQkuZ2V0X2RwbGwgPSBpYnhfZ2V0X2RwbGwsCj4gPiA+
ICsJLmdldF9kcGxscyA9IGlieF9nZXRfZHBsbCwKPiA+ID4gKwkucHV0X2RwbGxzID0gaW50ZWxf
cHV0X2RwbGwsCj4gPiA+ICAJLmR1bXBfaHdfc3RhdGUgPSBpYnhfZHVtcF9od19zdGF0ZSwKPiA+
ID4gIH07Cj4gPiA+ICAKPiA+ID4gQEAgLTE5MTUsNyArMTk0OCw4IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZHBsbF9pbmZvIGhzd19wbGxzW10gPSB7Cj4gPiA+ICAKPiA+ID4gIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgaW50ZWxfZHBsbF9tZ3IgaHN3X3BsbF9tZ3IgPSB7Cj4gPiA+ICAJLmRwbGxfaW5m
byA9IGhzd19wbGxzLAo+ID4gPiAtCS5nZXRfZHBsbCA9IGhzd19nZXRfZHBsbCwKPiA+ID4gKwku
Z2V0X2RwbGxzID0gaHN3X2dldF9kcGxsLAo+ID4gPiArCS5wdXRfZHBsbHMgPSBpbnRlbF9wdXRf
ZHBsbCwKPiA+ID4gIAkuZHVtcF9od19zdGF0ZSA9IGhzd19kdW1wX2h3X3N0YXRlLAo+ID4gPiAg
fTsKPiA+ID4gIAo+ID4gPiBAQCAtMTkyOSw3ICsxOTYzLDggQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkcGxsX2luZm8gc2tsX3BsbHNbXSA9IHsKPiA+ID4gIAo+ID4gPiAgc3RhdGljIGNvbnN0IHN0
cnVjdCBpbnRlbF9kcGxsX21nciBza2xfcGxsX21nciA9IHsKPiA+ID4gIAkuZHBsbF9pbmZvID0g
c2tsX3BsbHMsCj4gPiA+IC0JLmdldF9kcGxsID0gc2tsX2dldF9kcGxsLAo+ID4gPiArCS5nZXRf
ZHBsbHMgPSBza2xfZ2V0X2RwbGwsCj4gPiA+ICsJLnB1dF9kcGxscyA9IGludGVsX3B1dF9kcGxs
LAo+ID4gPiAgCS5kdW1wX2h3X3N0YXRlID0gc2tsX2R1bXBfaHdfc3RhdGUsCj4gPiA+ICB9Owo+
ID4gPiAgCj4gPiA+IEBAIC0xOTQyLDcgKzE5NzcsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRw
bGxfaW5mbyBieHRfcGxsc1tdID0gewo+ID4gPiAgCj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX2RwbGxfbWdyIGJ4dF9wbGxfbWdyID0gewo+ID4gPiAgCS5kcGxsX2luZm8gPSBieHRf
cGxscywKPiA+ID4gLQkuZ2V0X2RwbGwgPSBieHRfZ2V0X2RwbGwsCj4gPiA+ICsJLmdldF9kcGxs
cyA9IGJ4dF9nZXRfZHBsbCwKPiA+ID4gKwkucHV0X2RwbGxzID0gaW50ZWxfcHV0X2RwbGwsCj4g
PiA+ICAJLmR1bXBfaHdfc3RhdGUgPSBieHRfZHVtcF9od19zdGF0ZSwKPiA+ID4gIH07Cj4gPiA+
ICAKPiA+ID4gQEAgLTIzMzIsMTAgKzIzNjgsMTIgQEAgY25sX2RkaV9kcF9zZXRfZHBsbF9od19z
dGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiA+ID4gIAlyZXR1cm4g
dHJ1ZTsKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAtc3RhdGljIHN0cnVjdCBpbnRlbF9zaGFyZWRf
ZHBsbCAqCj4gPiA+IC1jbmxfZ2V0X2RwbGwoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCj4gPiA+IC0JICAgICBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiA+ID4g
K3N0YXRpYyBib29sIGNubF9nZXRfZHBsbChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwKPiA+ID4gKwkJCSBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiA+ID4gKwkJCSBzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiA+ID4gIHsKPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9Cj4gPiA+ICsJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNf
c3RhdGUoc3RhdGUsIGNydGMpOwo+ID4gPiAgCXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxs
Owo+ID4gPiAgCWJvb2wgYnJldDsKPiA+ID4gIAo+ID4gPiBAQCAtMjM0MywxOCArMjM4MSwxOCBA
QCBjbmxfZ2V0X2RwbGwoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gPiA+
ICAJCWJyZXQgPSBjbmxfZGRpX2hkbWlfcGxsX2RpdmlkZXJzKGNydGNfc3RhdGUpOwo+ID4gPiAg
CQlpZiAoIWJyZXQpIHsKPiA+ID4gIAkJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCBnZXQgSERN
SSBwbGwgZGl2aWRlcnMuXG4iKTsKPiA+ID4gLQkJCXJldHVybiBOVUxMOwo+ID4gPiArCQkJcmV0
dXJuIGZhbHNlOwo+ID4gPiAgCQl9Cj4gPiA+ICAJfSBlbHNlIGlmIChpbnRlbF9jcnRjX2hhc19k
cF9lbmNvZGVyKGNydGNfc3RhdGUpKSB7Cj4gPiA+ICAJCWJyZXQgPSBjbmxfZGRpX2RwX3NldF9k
cGxsX2h3X3N0YXRlKGNydGNfc3RhdGUpOwo+ID4gPiAgCQlpZiAoIWJyZXQpIHsKPiA+ID4gIAkJ
CURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCBzZXQgRFAgZHBsbCBIVyBzdGF0ZS5cbiIpOwo+ID4g
PiAtCQkJcmV0dXJuIE5VTEw7Cj4gPiA+ICsJCQlyZXR1cm4gZmFsc2U7Cj4gPiA+ICAJCX0KPiA+
ID4gIAl9IGVsc2Ugewo+ID4gPiAgCQlEUk1fREVCVUdfS01TKCJTa2lwIERQTEwgc2V0dXAgZm9y
IG91dHB1dF90eXBlcyAweCV4XG4iLAo+ID4gPiAgCQkJICAgICAgY3J0Y19zdGF0ZS0+b3V0cHV0
X3R5cGVzKTsKPiA+ID4gLQkJcmV0dXJuIE5VTEw7Cj4gPiA+ICsJCXJldHVybiBmYWxzZTsKPiA+
ID4gIAl9Cj4gPiA+ICAKPiA+ID4gIAlwbGwgPSBpbnRlbF9maW5kX3NoYXJlZF9kcGxsKGNydGNf
c3RhdGUsCj4gPiA+IEBAIC0yMzYyLDEyICsyNDAwLDEyIEBAIGNubF9nZXRfZHBsbChzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+ID4gIAkJCQkgICAgIERQTExfSURfU0tM
X0RQTEwyKTsKPiA+ID4gIAlpZiAoIXBsbCkgewo+ID4gPiAgCQlEUk1fREVCVUdfS01TKCJObyBQ
TEwgc2VsZWN0ZWRcbiIpOwo+ID4gPiAtCQlyZXR1cm4gTlVMTDsKPiA+ID4gKwkJcmV0dXJuIGZh
bHNlOwo+ID4gPiAgCX0KPiA+ID4gIAo+ID4gPiAgCWludGVsX3JlZmVyZW5jZV9zaGFyZWRfZHBs
bChwbGwsIGNydGNfc3RhdGUpOwo+ID4gPiAgCj4gPiA+IC0JcmV0dXJuIHBsbDsKPiA+ID4gKwly
ZXR1cm4gdHJ1ZTsKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAgc3RhdGljIHZvaWQgY25sX2R1bXBf
aHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gPiBAQCAtMjM5
NCw3ICsyNDMyLDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcGxsX2luZm8gY25sX3BsbHNbXSA9
IHsKPiA+ID4gIAo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX21nciBjbmxf
cGxsX21nciA9IHsKPiA+ID4gIAkuZHBsbF9pbmZvID0gY25sX3BsbHMsCj4gPiA+IC0JLmdldF9k
cGxsID0gY25sX2dldF9kcGxsLAo+ID4gPiArCS5nZXRfZHBsbHMgPSBjbmxfZ2V0X2RwbGwsCj4g
PiA+ICsJLnB1dF9kcGxscyA9IGludGVsX3B1dF9kcGxsLAo+ID4gPiAgCS5kdW1wX2h3X3N0YXRl
ID0gY25sX2R1bXBfaHdfc3RhdGUsCj4gPiA+ICB9Owo+ID4gPiAgCj4gPiA+IEBAIC0yNzkyLDEx
ICsyODMxLDEzIEBAIHN0YXRpYyBib29sIGljbF9jYWxjX21nX3BsbF9zdGF0ZShzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiA+ID4gIAlyZXR1cm4gdHJ1ZTsKPiA+ID4gIH0K
PiA+ID4gIAo+ID4gPiAtc3RhdGljIHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqCj4gPiA+IC1p
Y2xfZ2V0X2RwbGwoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gPiA+IC0J
ICAgICBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiA+ID4gK3N0YXRpYyBib29sIGlj
bF9nZXRfZHBsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiA+ICsJCQkg
IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ID4gPiArCQkJICBzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikKPiA+ID4gIHsKPiA+ID4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUtPmJhc2UuY3J0Yy0+ZGV2KTsKPiA+ID4gKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7
Cj4gPiA+ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQo+ID4gPiArCQlp
bnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKPiA+ID4gIAlzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydDsKPiA+ID4gIAlzdHJ1Y3QgaW50
ZWxfc2hhcmVkX2RwbGwgKnBsbDsKPiA+ID4gIAllbnVtIHBvcnQgcG9ydCA9IGVuY29kZXItPnBv
cnQ7Cj4gPiA+IEBAIC0yODMxLDI0ICsyODcyLDI0IEBAIGljbF9nZXRfZHBsbChzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+ID4gIAkJfQo+ID4gPiAgCX0gZWxzZSB7Cj4g
PiA+ICAJCU1JU1NJTkdfQ0FTRShwb3J0KTsKPiA+ID4gLQkJcmV0dXJuIE5VTEw7Cj4gPiA+ICsJ
CXJldHVybiBmYWxzZTsKPiA+ID4gIAl9Cj4gPiA+ICAKPiA+ID4gIAlpZiAoIXJldCkgewo+ID4g
PiAgCQlEUk1fREVCVUdfS01TKCJDb3VsZCBub3QgY2FsY3VsYXRlIFBMTCBzdGF0ZS5cbiIpOwo+
ID4gPiAtCQlyZXR1cm4gTlVMTDsKPiA+ID4gKwkJcmV0dXJuIGZhbHNlOwo+ID4gPiAgCX0KPiA+
ID4gIAo+ID4gPiAgCj4gPiA+ICAJcGxsID0gaW50ZWxfZmluZF9zaGFyZWRfZHBsbChjcnRjX3N0
YXRlLCBtaW4sIG1heCk7Cj4gPiA+ICAJaWYgKCFwbGwpIHsKPiA+ID4gIAkJRFJNX0RFQlVHX0tN
UygiTm8gUExMIHNlbGVjdGVkXG4iKTsKPiA+ID4gLQkJcmV0dXJuIE5VTEw7Cj4gPiA+ICsJCXJl
dHVybiBmYWxzZTsKPiA+ID4gIAl9Cj4gPiA+ICAKPiA+ID4gIAlpbnRlbF9yZWZlcmVuY2Vfc2hh
cmVkX2RwbGwocGxsLCBjcnRjX3N0YXRlKTsKPiA+ID4gIAo+ID4gPiAtCXJldHVybiBwbGw7Cj4g
PiA+ICsJcmV0dXJuIHRydWU7Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4gIHN0YXRpYyBib29sIG1n
X3BsbF9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4g
PiBAQCAtMzIyMyw3ICszMjY0LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcGxsX2luZm8gaWNs
X3BsbHNbXSA9IHsKPiA+ID4gIAo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxs
X21nciBpY2xfcGxsX21nciA9IHsKPiA+ID4gIAkuZHBsbF9pbmZvID0gaWNsX3BsbHMsCj4gPiA+
IC0JLmdldF9kcGxsID0gaWNsX2dldF9kcGxsLAo+ID4gPiArCS5nZXRfZHBsbHMgPSBpY2xfZ2V0
X2RwbGxzLAo+ID4gPiArCS5wdXRfZHBsbHMgPSBpbnRlbF9wdXRfZHBsbCwKPiA+ID4gIAkuZHVt
cF9od19zdGF0ZSA9IGljbF9kdW1wX2h3X3N0YXRlLAo+ID4gPiAgfTsKPiA+ID4gIAo+ID4gPiBA
QCAtMzIzNSw3ICszMjc3LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcGxsX2luZm8gZWhsX3Bs
bHNbXSA9IHsKPiA+ID4gIAo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX21n
ciBlaGxfcGxsX21nciA9IHsKPiA+ID4gIAkuZHBsbF9pbmZvID0gZWhsX3BsbHMsCj4gPiA+IC0J
LmdldF9kcGxsID0gaWNsX2dldF9kcGxsLAo+ID4gPiArCS5nZXRfZHBsbHMgPSBpY2xfZ2V0X2Rw
bGxzLAo+ID4gPiArCS5wdXRfZHBsbHMgPSBpbnRlbF9wdXRfZHBsbCwKPiA+ID4gIAkuZHVtcF9o
d19zdGF0ZSA9IGljbF9kdW1wX2h3X3N0YXRlLAo+ID4gPiAgfTsKPiA+ID4gIAo+ID4gPiBAQCAt
MzI4Nyw1MCArMzMzMCw2NCBAQCB2b2lkIGludGVsX3NoYXJlZF9kcGxsX2luaXQoc3RydWN0IGRy
bV9kZXZpY2UgKmRldikKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAgLyoqCj4gPiA+IC0gKiBpbnRl
bF9nZXRfc2hhcmVkX2RwbGwgLSBnZXQgYSBzaGFyZWQgRFBMTCBmb3IgQ1JUQyBhbmQgZW5jb2Rl
ciBjb21iaW5hdGlvbgo+ID4gPiAtICogQGNydGNfc3RhdGU6IGF0b21pYyBzdGF0ZSBmb3IgdGhl
IGNydGMKPiA+ID4gKyAqIGludGVsX3Jlc2VydmVfc2hhcmVkX2RwbGxzIC0gcmVzZXJ2ZSBEUExM
cyBmb3IgQ1JUQyBhbmQgZW5jb2RlciBjb21iaW5hdGlvbgo+ID4gPiArICogQHN0YXRlOiBhdG9t
aWMgc3RhdGUKPiA+ID4gKyAqIEBjcnRjOiBDUlRDIHRvIHJlc2VydmUgRFBMTHMgZm9yCj4gPiA+
ICAgKiBAZW5jb2RlcjogZW5jb2Rlcgo+ID4gPiAgICoKPiA+ID4gLSAqIEZpbmQgYW4gYXBwcm9w
cmlhdGUgRFBMTCBmb3IgdGhlIGdpdmVuIENSVEMgYW5kIGVuY29kZXIgY29tYmluYXRpb24uIEEK
PiA+ID4gLSAqIHJlZmVyZW5jZSBmcm9tIHRoZSBAY3J0Y19zdGF0ZSB0byB0aGUgcmV0dXJuZWQg
cGxsIGlzIHJlZ2lzdGVyZWQgaW4gdGhlCj4gPiA+IC0gKiBhdG9taWMgc3RhdGUuIFRoYXQgY29u
ZmlndXJhdGlvbiBpcyBtYWRlIGVmZmVjdGl2ZSBieSBjYWxsaW5nCj4gPiA+IC0gKiBpbnRlbF9z
aGFyZWRfZHBsbF9zd2FwX3N0YXRlKCkuIFRoZSByZWZlcmVuY2Ugc2hvdWxkIGJlIHJlbGVhc2Vk
IGJ5IGNhbGxpbmcKPiA+ID4gLSAqIGludGVsX3JlbGVhc2Vfc2hhcmVkX2RwbGwoKS4KPiA+ID4g
KyAqIFRoaXMgZnVuY3Rpb24gcmVzZXJ2ZXMgYWxsIHJlcXVpcmVkIERQTExzIGZvciB0aGUgZ2l2
ZW4gQ1JUQyBhbmQgZW5jb2Rlcgo+ID4gPiArICogY29tYmluYXRpb24gaW4gdGhlIGN1cnJlbnQg
YXRvbWljIGNvbW1pdCBAc3RhdGUgYW5kIHRoZSBuZXcgQGNydGMgYXRvbWljCj4gPiA+ICsgKiBz
dGF0ZS4KPiA+ID4gKyAqCj4gPiA+ICsgKiBUaGUgbmV3IGNvbmZpZ3VyYXRpb24gaW4gdGhlIGF0
b21pYyBjb21taXQgQHN0YXRlIGlzIG1hZGUgZWZmZWN0aXZlIGJ5Cj4gPiA+ICsgKiBjYWxsaW5n
IGludGVsX3NoYXJlZF9kcGxsX3N3YXBfc3RhdGUoKS4KPiA+ID4gKyAqCj4gPiA+ICsgKiBUaGUg
cmVzZXJ2ZWQgRFBMTHMgc2hvdWxkIGJlIHJlbGVhc2VkIGJ5IGNhbGxpbmcKPiA+ID4gKyAqIGlu
dGVsX3JlbGVhc2Vfc2hhcmVkX2RwbGxzKCkuCj4gPiA+ICAgKgo+ID4gPiAgICogUmV0dXJuczoK
PiA+ID4gLSAqIEEgc2hhcmVkIERQTEwgdG8gYmUgdXNlZCBieSBAY3J0Y19zdGF0ZSBhbmQgQGVu
Y29kZXIuCj4gPiA+ICsgKiBUcnVlIGlmIGFsbCByZXF1aXJlZCBEUExMcyB3ZXJlIHN1Y2Nlc3Nm
dWxseSByZXNlcnZlZC4KPiA+ID4gICAqLwo+ID4gPiAtc3RydWN0IGludGVsX3NoYXJlZF9kcGxs
ICoKPiA+ID4gLWludGVsX2dldF9zaGFyZWRfZHBsbChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwKPiA+ID4gLQkJICAgICAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIp
Cj4gPiA+ICtib29sIGludGVsX3Jlc2VydmVfc2hhcmVkX2RwbGxzKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLAo+ID4gPiArCQkJCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ID4g
PiArCQkJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQo+ID4gPiAgewo+ID4gPiAtCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+YmFz
ZS5jcnRjLT5kZXYpOwo+ID4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKPiA+ID4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfZHBs
bF9tZ3IgKmRwbGxfbWdyID0gZGV2X3ByaXYtPmRwbGxfbWdyOwo+ID4gPiAgCj4gPiA+ICAJaWYg
KFdBUk5fT04oIWRwbGxfbWdyKSkKPiA+ID4gLQkJcmV0dXJuIE5VTEw7Cj4gPiA+ICsJCXJldHVy
biBmYWxzZTsKPiA+ID4gIAo+ID4gPiAtCXJldHVybiBkcGxsX21nci0+Z2V0X2RwbGwoY3J0Y19z
dGF0ZSwgZW5jb2Rlcik7Cj4gPiA+ICsJcmV0dXJuIGRwbGxfbWdyLT5nZXRfZHBsbHMoc3RhdGUs
IGNydGMsIGVuY29kZXIpOwo+ID4gPiAgfQo+ID4gPiAgCj4gPiA+ICAvKioKPiA+ID4gLSAqIGlu
dGVsX3JlbGVhc2Vfc2hhcmVkX2RwbGwgLSBlbmQgdXNlIG9mIERQTEwgYnkgQ1JUQyBpbiBhdG9t
aWMgc3RhdGUKPiA+ID4gLSAqIEBkcGxsOiBkcGxsIGluIHVzZSBieSBAY3J0Ywo+ID4gPiAtICog
QGNydGM6IGNydGMKPiA+ID4gKyAqIGludGVsX3JlbGVhc2Vfc2hhcmVkX2RwbGxzIC0gZW5kIHVz
ZSBvZiBEUExMcyBieSBDUlRDIGluIGF0b21pYyBzdGF0ZQo+ID4gPiAgICogQHN0YXRlOiBhdG9t
aWMgc3RhdGUKPiA+ID4gKyAqIEBjcnRjOiBjcnRjIGZyb20gd2hpY2ggdGhlIERQTExzIGFyZSB0
byBiZSByZWxlYXNlZAo+ID4gPiAgICoKPiA+ID4gLSAqIFRoaXMgZnVuY3Rpb24gcmVsZWFzZXMg
dGhlIHJlZmVyZW5jZSBmcm9tIEBjcnRjIHRvIEBkcGxsIGZyb20gdGhlCj4gPiA+IC0gKiBhdG9t
aWMgQHN0YXRlLiBUaGUgbmV3IGNvbmZpZ3VyYXRpb24gaXMgbWFkZSBlZmZlY3RpdmUgYnkgY2Fs
bGluZwo+ID4gPiAtICogaW50ZWxfc2hhcmVkX2RwbGxfc3dhcF9zdGF0ZSgpLgo+ID4gPiArICog
VGhpcyBmdW5jdGlvbiByZWxlYXNlcyBhbGwgRFBMTHMgcmVzZXJ2ZWQgYnkgaW50ZWxfcmVzZXJ2
ZV9zaGFyZWRfZHBsbHMoKQo+ID4gPiArICogZnJvbSB0aGUgY3VycmVudCBhdG9taWMgY29tbWl0
IEBzdGF0ZSBhbmQgdGhlIG9sZCBAY3J0YyBhdG9taWMgc3RhdGUuCj4gPiA+ICsgKgo+ID4gPiAr
ICogVGhlIG5ldyBjb25maWd1cmF0aW9uIGluIHRoZSBhdG9taWMgY29tbWl0IEBzdGF0ZSBpcyBt
YWRlIGVmZmVjdGl2ZSBieQo+ID4gPiArICogY2FsbGluZyBpbnRlbF9zaGFyZWRfZHBsbF9zd2Fw
X3N0YXRlKCkuCj4gPiA+ICAgKi8KPiA+ID4gLXZvaWQgaW50ZWxfcmVsZWFzZV9zaGFyZWRfZHBs
bChzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKmRwbGwsCj4gPiA+IC0JCQkgICAgICAgc3RydWN0
IGludGVsX2NydGMgKmNydGMsCj4gPiA+IC0JCQkgICAgICAgc3RydWN0IGRybV9hdG9taWNfc3Rh
dGUgKnN0YXRlKQo+ID4gPiArdm9pZCBpbnRlbF9yZWxlYXNlX3NoYXJlZF9kcGxscyhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+ID4gKwkJCQlzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YykKPiA+ID4gIHsKPiA+ID4gLQlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGxfc3RhdGUgKnNo
YXJlZF9kcGxsX3N0YXRlOwo+ID4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKPiA+ID4gKwljb25zdCBzdHJ1Y3QgaW50ZWxf
ZHBsbF9tZ3IgKmRwbGxfbWdyID0gZGV2X3ByaXYtPmRwbGxfbWdyOwo+ID4gPiArCj4gPiA+ICsJ
LyoKPiA+ID4gKwkgKiBGSVhNRTogdGhpcyBmdW5jdGlvbiBpcyBjYWxsZWQgZm9yIGV2ZXJ5IHBs
YXRmb3JtIGhhdmluZyBhCj4gPiA+ICsJICogY29tcHV0ZV9jbG9jayBob29rLCBldmVuIHRob3Vn
aCB0aGUgcGxhdGZvcm0gZG9lc24ndCB5ZXQgc3VwcG9ydAo+ID4gPiArCSAqIHRoZSBzaGFyZWQg
RFBMTCBmcmFtZXdvcmsgYW5kIGludGVsX3Jlc2VydmVfc2hhcmVkX2RwbGxzKCkgaXMgbm90Cj4g
PiA+ICsJICogY2FsbGVkIG9uIHRob3NlLgo+ID4gPiArCSAqLwo+ID4gPiArCWlmICghZHBsbF9t
Z3IpCj4gPiA+ICsJCXJldHVybjsKPiA+ID4gIAo+ID4gPiAtCXNoYXJlZF9kcGxsX3N0YXRlID0g
aW50ZWxfYXRvbWljX2dldF9zaGFyZWRfZHBsbF9zdGF0ZShzdGF0ZSk7Cj4gPiA+IC0Jc2hhcmVk
X2RwbGxfc3RhdGVbZHBsbC0+aW5mby0+aWRdLmNydGNfbWFzayAmPSB+KDEgPDwgY3J0Yy0+cGlw
ZSk7Cj4gPiA+ICsJZHBsbF9tZ3ItPnB1dF9kcGxscyhzdGF0ZSwgY3J0Yyk7Cj4gPiA+ICB9Cj4g
PiA+ICAKPiA+ID4gIC8qKgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsX21nci5oCj4gPiA+IGluZGV4IGQwNTcwNDE0ZjNkMS4uMTZkZGFiMTM4NTc0IDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxf
bWdyLmgKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxs
X21nci5oCj4gPiA+IEBAIC0zOSw2ICszOSw3IEBACj4gPiA+ICBzdHJ1Y3QgZHJtX2F0b21pY19z
dGF0ZTsKPiA+ID4gIHN0cnVjdCBkcm1fZGV2aWNlOwo+ID4gPiAgc3RydWN0IGRybV9pOTE1X3By
aXZhdGU7Cj4gPiA+ICtzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlOwo+ID4gPiAgc3RydWN0IGlu
dGVsX2NydGM7Cj4gPiA+ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsKPiA+ID4gIHN0cnVjdCBp
bnRlbF9lbmNvZGVyOwo+ID4gPiBAQCAtMTk1LDcgKzE5Niw3IEBAIHN0cnVjdCBpbnRlbF9kcGxs
X2h3X3N0YXRlIHsKPiA+ID4gICAqIGZ1dHVyZSBzdGF0ZSB3aGljaCB3b3VsZCBiZSBhcHBsaWVk
IGJ5IGFuIGF0b21pYyBtb2RlIHNldCAoc3RvcmVkIGluCj4gPiA+ICAgKiBhIHN0cnVjdCAmaW50
ZWxfYXRvbWljX3N0YXRlKS4KPiA+ID4gICAqCj4gPiA+IC0gKiBTZWUgYWxzbyBpbnRlbF9nZXRf
c2hhcmVkX2RwbGwoKSBhbmQgaW50ZWxfcmVsZWFzZV9zaGFyZWRfZHBsbCgpLgo+ID4gPiArICog
U2VlIGFsc28gaW50ZWxfcmVzZXJ2ZV9zaGFyZWRfZHBsbHMoKSBhbmQgaW50ZWxfcmVsZWFzZV9z
aGFyZWRfZHBsbHMoKS4KPiA+ID4gICAqLwo+ID4gPiAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxs
X3N0YXRlIHsKPiA+ID4gIAkvKioKPiA+ID4gQEAgLTMzMSwxMSArMzMyLDExIEBAIHZvaWQgYXNz
ZXJ0X3NoYXJlZF9kcGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ID4g
IAkJCWJvb2wgc3RhdGUpOwo+ID4gPiAgI2RlZmluZSBhc3NlcnRfc2hhcmVkX2RwbGxfZW5hYmxl
ZChkLCBwKSBhc3NlcnRfc2hhcmVkX2RwbGwoZCwgcCwgdHJ1ZSkKPiA+ID4gICNkZWZpbmUgYXNz
ZXJ0X3NoYXJlZF9kcGxsX2Rpc2FibGVkKGQsIHApIGFzc2VydF9zaGFyZWRfZHBsbChkLCBwLCBm
YWxzZSkKPiA+ID4gLXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqaW50ZWxfZ2V0X3NoYXJlZF9k
cGxsKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpzdGF0ZSwKPiA+ID4gLQkJCQkJCXN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyKTsKPiA+ID4gLXZvaWQgaW50ZWxfcmVsZWFzZV9zaGFyZWRf
ZHBsbChzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKmRwbGwsCj4gPiA+IC0JCQkgICAgICAgc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsCj4gPiA+IC0JCQkgICAgICAgc3RydWN0IGRybV9hdG9taWNf
c3RhdGUgKnN0YXRlKTsKPiA+ID4gK2Jvb2wgaW50ZWxfcmVzZXJ2ZV9zaGFyZWRfZHBsbHMoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiA+ICsJCQkJc3RydWN0IGludGVsX2Ny
dGMgKmNydGMsCj4gPiA+ICsJCQkJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOwo+ID4g
PiArdm9pZCBpbnRlbF9yZWxlYXNlX3NoYXJlZF9kcGxscyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKPiA+ID4gKwkJCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7Cj4gPiA+ICB2
b2lkIGludGVsX3ByZXBhcmVfc2hhcmVkX2RwbGwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpOwo+ID4gPiAgdm9pZCBpbnRlbF9lbmFibGVfc2hhcmVkX2RwbGwoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwo+ID4gPiAgdm9pZCBpbnRl
bF9kaXNhYmxlX3NoYXJlZF9kcGxsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKTsKPiA+ID4gLS0gCj4gPiA+IDIuMTcuMQo+ID4gCj4gPiAtLSAKPiA+IFZpbGxlIFN5
cmrDpGzDpAo+ID4gSW50ZWwKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
