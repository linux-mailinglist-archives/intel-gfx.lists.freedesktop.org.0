Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A9929C84
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 18:49:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA71E6E126;
	Fri, 24 May 2019 16:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1C16E126
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 16:49:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 09:49:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,507,1549958400"; d="scan'208";a="177785003"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 24 May 2019 09:49:40 -0700
Date: Fri, 24 May 2019 19:49:07 +0300
From: Imre Deak <imre.deak@intel.com>
To: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <20190524164907.GB12657@ideak-desk.fi.intel.com>
References: <20190523130836.6488-1-imre.deak@intel.com>
 <5e5ecf1c-3650-56af-0c45-ad8a58ccb59e@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e5ecf1c-3650-56af-0c45-ad8a58ccb59e@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Tune down link train error
 messages due to IO failure
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMjQsIDIwMTkgYXQgMDc6Mjc6NTRQTSArMDMwMCwgTWFydGluIFBlcmVzIHdy
b3RlOgo+IE9uIDIzLzA1LzIwMTkgMTY6MDgsIEltcmUgRGVhayB3cm90ZToKPiA+IEFuIElPIGZh
aWx1cmUgaGFwcGVucyBpZiB0aGUgc2luayBpcyB1bnBsdWdnZWQuIFRoaXMgc2NlbmFyaW8gc2hv
dWxkbid0Cj4gPiBiZSBsb2dnZWQgd2l0aCBlcnJvciBsZXZlbCwgc2luY2UgaXQgaXMgbm90IGEg
dXNlciB2aXNpYmxlIHByb2JsZW0uCj4gPiBDb252ZXJ0aW5nIHRoZSBjb3JyZXNwb25kaW5nIGVy
cm9yIG1lc3NhZ2VzIHRvIGJlIGRlYnVnIG1lc3NhZ2VzIGFsc28KPiA+IGVuc3VyZXMgdGhhdCB3
ZSBkb24ndCBmYWlsIHNvbWUgQ0kgdGVzdCBpbmNvcnJlY3RseSB0aGF0IHRlc3RzIHRoZQo+ID4g
dW5wbHVnZ2luZyB3aGlsZSBhIG1vZGUgaXMgc3RpbGwgYWN0aXZlIG9uIHRoZSBnaXZlbiBjb25u
ZWN0b3IgKGxpa2UgdGhlCj4gPiBrbXNfY2hhbWVsaXVtIHRlc3RzIGltaXRpdGF0aW5nIHN1Y2gg
YW4gdW5wbHVnIGR1cmluZyBiZWluZyBzdXNwZW5kZWQpLgo+ID4gCj4gPiBMZWF2ZSB0aG9zZSBs
aW5rIHRyYWluaW5nIGVycm9yIG1lc3NhZ2VzIHRoYXQgYXJlIGR1ZSB0byBhbiBhY3R1YWwKPiA+
IHRyYW5zZmVyIHJhdGUgZXJyb3IgKGFuZCBub3QgYW4gSU8gZXJyb3IpIGFzLWlzLCBhcyB0aGF0
IGtpbmQgb2YgcHJvYmxlbQo+ID4gaXMgcmVsYXRlZCB0byB0aGUgdXNlcidzIGNvbmZpZ3VyYXRp
b24gKGNhYmxlLCBtb2RlLCBtb25pdG9yKSBhbmQgc28gaXQKPiA+IGlzIHJlYWxseSB1c2VyIHZp
c2libGUuCj4gCj4gQXJlIHRoZXJlIHNvbWUgc2NlbmFyaW9zIHRoYXQgd291bGQgYmUgd2FycmFu
dGluZyBhIERSTV9FUlJPUj8gSWYgc28sCj4gdGhlbiB3ZSBzaG91bGQgZGVjaWRlIG9uIHRoZSB2
ZXJib3NpdHkgYmFzZWQgb24gd2V0aGVyIHRoZSBjb25uZWN0b3IgaXMKPiBjb25uZWN0ZWQgb3Ig
ZGlzY29ubmVjdGVkLCBkb24ndCB5b3UgdGhpbms/CgpJIGRvbid0IHRoaW5rIHdlIHNob3VsZCBk
ZXBlbmQgb24gdGhlIGNvcnJlY3RuZXNzIG9mIHNldHRpbmcgdGhlIG1lc3NhZ2UKbGV2ZWwgY29y
cmVjdGx5IGJhc2VkIG9uIHRoZSBsaXZlIHN0YXRlLCBzaW5jZSB0aGUgbGl2ZSBzdGF0ZSBpdHNl
bGYgaXMKZmxha3kvdW5yZWxpYWJsZSBiYXNlZCBvbiB0aGUgdGltaW5nIG9mIHRoZSB1bnBsdWcg
dnMuIHRoZSBzZXR0bGluZyBvZgp0aGUgbGl2ZSBzdGF0ZSBmbGFnLiBGb3IgaW5zdGFuY2Ugd2Ug
Y291bGQgc2VlIHRoZSBBVVggSU8gZmFpbGluZwphbHJlYWR5IGJ1dCBsaXZlIHN0YXRlIHN0aWxs
IGluZGljYXRpbmcgdGhhdCB0aGUgc2luayBpcyBwbHVnZ2VkLCBzbwp3ZSdkIHByaW50IGFnYWlu
IGFuIGVycm9yIGluc3RlYWQgb2YgdGhlIGNvcnJlY3QgdHVuZWQtZG93biBub3RlLgoKPiAKPiBN
YXJ0aW4KPiA+IAo+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTExMDM5MAo+ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBf
bGlua190cmFpbmluZy5jIHwgMTIgKysrKysrLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwo+ID4gaW5kZXggOWIxZmNjZWE5NjZiLi4z
OTJlYmViODljZTggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cF9saW5rX3RyYWluaW5nLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rw
X2xpbmtfdHJhaW5pbmcuYwo+ID4gQEAgLTE2OSw3ICsxNjksNyBAQCBpbnRlbF9kcF9saW5rX3Ry
YWluaW5nX2Nsb2NrX3JlY292ZXJ5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gPiAgCWlm
ICghaW50ZWxfZHBfcmVzZXRfbGlua190cmFpbihpbnRlbF9kcCwKPiA+ICAJCQkJICAgICAgIERQ
X1RSQUlOSU5HX1BBVFRFUk5fMSB8Cj4gPiAgCQkJCSAgICAgICBEUF9MSU5LX1NDUkFNQkxJTkdf
RElTQUJMRSkpIHsKPiA+IC0JCURSTV9FUlJPUigiZmFpbGVkIHRvIGVuYWJsZSBsaW5rIHRyYWlu
aW5nXG4iKTsKPiA+ICsJCURSTV9ERUJVR19LTVMoImZhaWxlZCB0byBlbmFibGUgbGluayB0cmFp
bmluZ1xuIik7Cj4gPiAgCQlyZXR1cm4gZmFsc2U7Cj4gPiAgCX0KPiA+ICAKPiA+IEBAIC0xOTMs
NyArMTkzLDcgQEAgaW50ZWxfZHBfbGlua190cmFpbmluZ19jbG9ja19yZWNvdmVyeShzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQo+ID4gIAkJZHJtX2RwX2xpbmtfdHJhaW5fY2xvY2tfcmVjb3Zl
cnlfZGVsYXkoaW50ZWxfZHAtPmRwY2QpOwo+ID4gIAo+ID4gIAkJaWYgKCFpbnRlbF9kcF9nZXRf
bGlua19zdGF0dXMoaW50ZWxfZHAsIGxpbmtfc3RhdHVzKSkgewo+ID4gLQkJCURSTV9FUlJPUigi
ZmFpbGVkIHRvIGdldCBsaW5rIHN0YXR1c1xuIik7Cj4gPiArCQkJRFJNX0RFQlVHX0tNUygiZmFp
bGVkIHRvIGdldCBsaW5rIHN0YXR1c1xuIik7Cj4gPiAgCQkJcmV0dXJuIGZhbHNlOwo+ID4gIAkJ
fQo+ID4gIAo+ID4gQEAgLTIxNyw3ICsyMTcsNyBAQCBpbnRlbF9kcF9saW5rX3RyYWluaW5nX2Ns
b2NrX3JlY292ZXJ5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gPiAgCQkvKiBVcGRhdGUg
dHJhaW5pbmcgc2V0IGFzIHJlcXVlc3RlZCBieSB0YXJnZXQgKi8KPiA+ICAJCWludGVsX2dldF9h
ZGp1c3RfdHJhaW4oaW50ZWxfZHAsIGxpbmtfc3RhdHVzKTsKPiA+ICAJCWlmICghaW50ZWxfZHBf
dXBkYXRlX2xpbmtfdHJhaW4oaW50ZWxfZHApKSB7Cj4gPiAtCQkJRFJNX0VSUk9SKCJmYWlsZWQg
dG8gdXBkYXRlIGxpbmsgdHJhaW5pbmdcbiIpOwo+ID4gKwkJCURSTV9ERUJVR19LTVMoImZhaWxl
ZCB0byB1cGRhdGUgbGluayB0cmFpbmluZ1xuIik7Cj4gPiAgCQkJcmV0dXJuIGZhbHNlOwo+ID4g
IAkJfQo+ID4gIAo+ID4gQEAgLTI5NSw3ICsyOTUsNyBAQCBpbnRlbF9kcF9saW5rX3RyYWluaW5n
X2NoYW5uZWxfZXF1YWxpemF0aW9uKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gPiAgCS8q
IGNoYW5uZWwgZXF1YWxpemF0aW9uICovCj4gPiAgCWlmICghaW50ZWxfZHBfc2V0X2xpbmtfdHJh
aW4oaW50ZWxfZHAsCj4gPiAgCQkJCSAgICAgdHJhaW5pbmdfcGF0dGVybikpIHsKPiA+IC0JCURS
TV9FUlJPUigiZmFpbGVkIHRvIHN0YXJ0IGNoYW5uZWwgZXF1YWxpemF0aW9uXG4iKTsKPiA+ICsJ
CURSTV9ERUJVR19LTVMoImZhaWxlZCB0byBzdGFydCBjaGFubmVsIGVxdWFsaXphdGlvblxuIik7
Cj4gPiAgCQlyZXR1cm4gZmFsc2U7Cj4gPiAgCX0KPiA+ICAKPiA+IEBAIC0zMDMsNyArMzAzLDcg
QEAgaW50ZWxfZHBfbGlua190cmFpbmluZ19jaGFubmVsX2VxdWFsaXphdGlvbihzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQo+ID4gIAo+ID4gIAkJZHJtX2RwX2xpbmtfdHJhaW5fY2hhbm5lbF9l
cV9kZWxheShpbnRlbF9kcC0+ZHBjZCk7Cj4gPiAgCQlpZiAoIWludGVsX2RwX2dldF9saW5rX3N0
YXR1cyhpbnRlbF9kcCwgbGlua19zdGF0dXMpKSB7Cj4gPiAtCQkJRFJNX0VSUk9SKCJmYWlsZWQg
dG8gZ2V0IGxpbmsgc3RhdHVzXG4iKTsKPiA+ICsJCQlEUk1fREVCVUdfS01TKCJmYWlsZWQgdG8g
Z2V0IGxpbmsgc3RhdHVzXG4iKTsKPiA+ICAJCQlicmVhazsKPiA+ICAJCX0KPiA+ICAKPiA+IEBA
IC0zMjcsNyArMzI3LDcgQEAgaW50ZWxfZHBfbGlua190cmFpbmluZ19jaGFubmVsX2VxdWFsaXph
dGlvbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ID4gIAkJLyogVXBkYXRlIHRyYWluaW5n
IHNldCBhcyByZXF1ZXN0ZWQgYnkgdGFyZ2V0ICovCj4gPiAgCQlpbnRlbF9nZXRfYWRqdXN0X3Ry
YWluKGludGVsX2RwLCBsaW5rX3N0YXR1cyk7Cj4gPiAgCQlpZiAoIWludGVsX2RwX3VwZGF0ZV9s
aW5rX3RyYWluKGludGVsX2RwKSkgewo+ID4gLQkJCURSTV9FUlJPUigiZmFpbGVkIHRvIHVwZGF0
ZSBsaW5rIHRyYWluaW5nXG4iKTsKPiA+ICsJCQlEUk1fREVCVUdfS01TKCJmYWlsZWQgdG8gdXBk
YXRlIGxpbmsgdHJhaW5pbmdcbiIpOwo+ID4gIAkJCWJyZWFrOwo+ID4gIAkJfQo+ID4gIAl9Cj4g
PiAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
