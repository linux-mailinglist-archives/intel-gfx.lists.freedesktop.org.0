Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B57F2E0566
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 15:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9264D6E7DC;
	Tue, 22 Oct 2019 13:44:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61DB96E7DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 13:44:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 06:44:34 -0700
X-IronPort-AV: E=Sophos;i="5.67,327,1566889200"; d="scan'208";a="191466159"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO [10.251.81.75])
 ([10.251.81.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Oct 2019 06:44:33 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191022131016.9065-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0b58a54a-f484-7459-1e63-ce711f49837c@linux.intel.com>
Date: Tue, 22 Oct 2019 14:44:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022131016.9065-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Move uncore fw
 selftests to operate on intel_gt
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIyLzEwLzIwMTkgMTQ6MTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBGb3JjZXdha2UgaXMg
dGhlIHNwZWNpYWxpdHkgb2YgdGhlIEdULCBzbyBpdCBpcyBuYXR1cmFsIHRvIHJ1biB0aGUKPiBp
bnRlbF91bmNvcmVfZm9yY2V3YWtlIHRlc3RzIG92ZXIgdGhlIEdULiBTbyBwYXNzIGludGVsX2d0
IGFzIHRoZQo+IHBhcmFtZXRlciB0byBvdXIgc2VsZnRlc3RzLgoKSSBoYWQgdGhlIHNhbWUgdXJn
ZSB5ZXN0ZXJkYXkgYnV0IHRoZW4gZW5kZWQgdW5zdXJlIGhvdyB0aGUgZGlzcGxheS9ndCAKdW5j
b3JlIHNwbGl0IG1heSBhZmZlY3QgdGhpcyBvbiB0aGUgbG9naWNhbCBsZXZlbC4gU28gSSdsbCBs
ZWF2ZSB0aGUgCmRlY2lzaW9uIHRvIERhbmllbGUsIGhlIHNob3VsZCBrbm93IGJldHRlciB3aGF0
IHBsYW5zIGFyZSB0aGVyZS4KCk9uIHRoZSBwYXJ0aWN1bGFyIHBhdGNoIG9ubHkgY29tbWVudCBp
cyB0aGF0IEkgd291bGQgY29uc2lkZXIgb25lIG9yIHR3byAKaTkxNSBsb2NhbHMgZm9yIGJldHRl
ciByZWFkYWJpbGl0eS4KClJlZ2FyZHMsCgpUdnJ0a28KCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaW50ZWxfdW5jb3JlLmMgfCA1NCArKysrKysrKysrLS0tLS0tLS0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF91bmNvcmUu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF91bmNvcmUuYwo+IGluZGV4
IDBmZmIxNDFlYjk4OC4uMGU0ZTZiZTAxMDFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF91bmNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pbnRlbF91bmNvcmUuYwo+IEBAIC0xNDAsMTkgKzE0MCwxOSBAQCBzdGF0
aWMgaW50IGxpdmVfZm9yY2V3YWtlX29wcyh2b2lkICphcmcpCj4gICAJCX0KPiAgIAl9Owo+ICAg
CWNvbnN0IHN0cnVjdCByZWcgKnI7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGFyZzsKPiArCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7Cj4gICAJc3RydWN0IGludGVsX3Vu
Y29yZV9mb3JjZXdha2VfZG9tYWluICpkb21haW47Cj4gLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1
bmNvcmUgPSAmaTkxNS0+dW5jb3JlOwo+ICsJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0g
Z3QtPnVuY29yZTsKPiAgIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Cj4gICAJZW51
bSBpbnRlbF9lbmdpbmVfaWQgaWQ7Cj4gICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gICAJ
dW5zaWduZWQgaW50IHRtcDsKPiAgIAlpbnQgZXJyID0gMDsKPiAgIAo+IC0JR0VNX0JVR19PTihp
OTE1LT5ndC5hd2FrZSk7Cj4gKwlHRU1fQlVHX09OKGd0LT5hd2FrZSk7Cj4gICAKPiAgIAkvKiB2
bHYvY2h2IHdpdGggdGhlaXIgcGN1IGJlaGF2ZSBkaWZmZXJlbnRseSB3cnQgcmVhZHMgKi8KPiAt
CWlmIChJU19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJSWVZJRVcoaTkxNSkpIHsKPiArCWlm
IChJU19WQUxMRVlWSUVXKGd0LT5pOTE1KSB8fCBJU19DSEVSUllWSUVXKGd0LT5pOTE1KSkgewo+
ICAgCQlwcl9kZWJ1ZygiUENVIGZha2VzIGZvcmNld2FrZSBiYWRseTsgc2tpcHBpbmdcbiIpOwo+
ICAgCQlyZXR1cm4gMDsKPiAgIAl9Cj4gQEAgLTE3MCwxNSArMTcwLDE1IEBAIHN0YXRpYyBpbnQg
bGl2ZV9mb3JjZXdha2Vfb3BzKHZvaWQgKmFyZykKPiAgIAo+ICAgCS8qIFdlIGhhdmUgdG8gcGlj
ayBjYXJlZnVsbHkgdG8gZ2V0IHRoZSBleGFjdCBiZWhhdmlvdXIgd2UgbmVlZCAqLwo+ICAgCWZv
ciAociA9IHJlZ2lzdGVyczsgci0+bmFtZTsgcisrKQo+IC0JCWlmIChyLT5wbGF0Zm9ybXMgJiBJ
TlRFTF9JTkZPKGk5MTUpLT5nZW5fbWFzaykKPiArCQlpZiAoci0+cGxhdGZvcm1zICYgSU5URUxf
SU5GTyhndC0+aTkxNSktPmdlbl9tYXNrKQo+ICAgCQkJYnJlYWs7Cj4gICAJaWYgKCFyLT5uYW1l
KSB7Cj4gICAJCXByX2RlYnVnKCJGb3JjZXdha2VkIHJlZ2lzdGVyIG5vdCBrbm93biBmb3IgJXM7
IHNraXBwaW5nXG4iLAo+IC0JCQkgaW50ZWxfcGxhdGZvcm1fbmFtZShJTlRFTF9JTkZPKGk5MTUp
LT5wbGF0Zm9ybSkpOwo+ICsJCQkgaW50ZWxfcGxhdGZvcm1fbmFtZShJTlRFTF9JTkZPKGd0LT5p
OTE1KS0+cGxhdGZvcm0pKTsKPiAgIAkJcmV0dXJuIDA7Cj4gICAJfQo+ICAgCj4gLQl3YWtlcmVm
ID0gaW50ZWxfcnVudGltZV9wbV9nZXQoJmk5MTUtPnJ1bnRpbWVfcG0pOwo+ICsJd2FrZXJlZiA9
IGludGVsX3J1bnRpbWVfcG1fZ2V0KHVuY29yZS0+cnBtKTsKPiAgIAo+ICAgCWZvcl9lYWNoX2Z3
X2RvbWFpbihkb21haW4sIHVuY29yZSwgdG1wKSB7Cj4gICAJCXNtcF9zdG9yZV9tYihkb21haW4t
PmFjdGl2ZSwgZmFsc2UpOwo+IEBAIC0xODgsNyArMTg4LDcgQEAgc3RhdGljIGludCBsaXZlX2Zv
cmNld2FrZV9vcHModm9pZCAqYXJnKQo+ICAgCQlpbnRlbF91bmNvcmVfZndfcmVsZWFzZV90aW1l
cigmZG9tYWluLT50aW1lcik7Cj4gICAJfQo+ICAgCj4gLQlmb3JfZWFjaF9lbmdpbmUoZW5naW5l
LCBpOTE1LCBpZCkgewo+ICsJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKSB7Cj4gICAJ
CWk5MTVfcmVnX3QgbW1pbyA9IF9NTUlPKGVuZ2luZS0+bW1pb19iYXNlICsgci0+b2Zmc2V0KTsK
PiAgIAkJdTMyIF9faW9tZW0gKnJlZyA9IHVuY29yZS0+cmVncyArIGVuZ2luZS0+bW1pb19iYXNl
ICsgci0+b2Zmc2V0Owo+ICAgCQllbnVtIGZvcmNld2FrZV9kb21haW5zIGZ3X2RvbWFpbnM7Cj4g
QEAgLTI0OSwyMiArMjQ5LDIyIEBAIHN0YXRpYyBpbnQgbGl2ZV9mb3JjZXdha2Vfb3BzKHZvaWQg
KmFyZykKPiAgIAl9Cj4gICAKPiAgIG91dF9ycG06Cj4gLQlpbnRlbF9ydW50aW1lX3BtX3B1dCgm
aTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7Cj4gKwlpbnRlbF9ydW50aW1lX3BtX3B1dCh1bmNv
cmUtPnJwbSwgd2FrZXJlZik7Cj4gICAJcmV0dXJuIGVycjsKPiAgIH0KPiAgIAo+ICAgc3RhdGlj
IGludCBsaXZlX2ZvcmNld2FrZV9kb21haW5zKHZvaWQgKmFyZykKPiAgIHsKPiAgICNkZWZpbmUg
RldfUkFOR0UgMHg0MDAwMAo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
YXJnOwo+IC0Jc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmRldl9wcml2LT51bmNvcmU7
Cj4gKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOwo+ICsJc3RydWN0IGludGVsX3VuY29yZSAq
dW5jb3JlID0gZ3QtPnVuY29yZTsKPiAgIAl1bnNpZ25lZCBsb25nICp2YWxpZDsKPiAgIAl1MzIg
b2Zmc2V0Owo+ICAgCWludCBlcnI7Cj4gICAKPiAtCWlmICghSEFTX0ZQR0FfREJHX1VOQ0xBSU1F
RChkZXZfcHJpdikgJiYKPiAtCSAgICAhSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgJiYKPiAtCSAg
ICAhSVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCj4gKwlpZiAoIUhBU19GUEdBX0RCR19VTkNMQUlN
RUQoZ3QtPmk5MTUpICYmCj4gKwkgICAgIUlTX1ZBTExFWVZJRVcoZ3QtPmk5MTUpICYmCj4gKwkg
ICAgIUlTX0NIRVJSWVZJRVcoZ3QtPmk5MTUpKQo+ICAgCQlyZXR1cm4gMDsKPiAgIAo+ICAgCS8q
Cj4gQEAgLTI4Myw3ICsyODMsNyBAQCBzdGF0aWMgaW50IGxpdmVfZm9yY2V3YWtlX2RvbWFpbnMo
dm9pZCAqYXJnKQo+ICAgCWZvciAob2Zmc2V0ID0gMDsgb2Zmc2V0IDwgRldfUkFOR0U7IG9mZnNl
dCArPSA0KSB7Cj4gICAJCWk5MTVfcmVnX3QgcmVnID0geyBvZmZzZXQgfTsKPiAgIAo+IC0JCSh2
b2lkKUk5MTVfUkVBRF9GVyhyZWcpOwo+ICsJCWludGVsX3VuY29yZV9wb3N0aW5nX3JlYWRfZnco
dW5jb3JlLCByZWcpOwo+ICAgCQlpZiAoIWNoZWNrX2Zvcl91bmNsYWltZWRfbW1pbyh1bmNvcmUp
KQo+ICAgCQkJc2V0X2JpdChvZmZzZXQsIHZhbGlkKTsKPiAgIAl9Cj4gQEAgLTMwMCw3ICszMDAs
NyBAQCBzdGF0aWMgaW50IGxpdmVfZm9yY2V3YWtlX2RvbWFpbnModm9pZCAqYXJnKQo+ICAgCj4g
ICAJCWNoZWNrX2Zvcl91bmNsYWltZWRfbW1pbyh1bmNvcmUpOwo+ICAgCj4gLQkJKHZvaWQpSTkx
NV9SRUFEKHJlZyk7Cj4gKwkJaW50ZWxfdW5jb3JlX3Bvc3RpbmdfcmVhZF9mdyh1bmNvcmUsIHJl
Zyk7Cj4gICAJCWlmIChjaGVja19mb3JfdW5jbGFpbWVkX21taW8odW5jb3JlKSkgewo+ICAgCQkJ
cHJfZXJyKCJVbmNsYWltZWQgbW1pbyByZWFkIHRvIHJlZ2lzdGVyIDB4JTA0eFxuIiwKPiAgIAkJ
CSAgICAgICBvZmZzZXQpOwo+IEBAIC0zMTIsMjEgKzMxMiwyMyBAQCBzdGF0aWMgaW50IGxpdmVf
Zm9yY2V3YWtlX2RvbWFpbnModm9pZCAqYXJnKQo+ICAgCXJldHVybiBlcnI7Cj4gICB9Cj4gICAK
PiArc3RhdGljIGludCBsaXZlX2Z3X3RhYmxlKHZvaWQgKmFyZykKPiArewo+ICsJc3RydWN0IGlu
dGVsX2d0ICpndCA9IGFyZzsKPiArCj4gKwkvKiBDb25maXJtIHRoZSB0YWJsZSB3ZSBsb2FkIGlz
IHN0aWxsIHZhbGlkICovCj4gKwlyZXR1cm4gaW50ZWxfZndfdGFibGVfY2hlY2soZ3QtPnVuY29y
ZS0+ZndfZG9tYWluc190YWJsZSwKPiArCQkJCSAgICBndC0+dW5jb3JlLT5md19kb21haW5zX3Rh
YmxlX2VudHJpZXMsCj4gKwkJCQkgICAgSU5URUxfR0VOKGd0LT5pOTE1KSA+PSA5KTsKPiArfQo+
ICsKPiAgIGludCBpbnRlbF91bmNvcmVfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCj4gICB7Cj4gICAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3Qg
dGVzdHNbXSA9IHsKPiArCQlTVUJURVNUKGxpdmVfZndfdGFibGUpLAo+ICAgCQlTVUJURVNUKGxp
dmVfZm9yY2V3YWtlX29wcyksCj4gICAJCVNVQlRFU1QobGl2ZV9mb3JjZXdha2VfZG9tYWlucyks
Cj4gICAJfTsKPiAgIAo+IC0JaW50IGVycjsKPiAtCj4gLQkvKiBDb25maXJtIHRoZSB0YWJsZSB3
ZSBsb2FkIGlzIHN0aWxsIHZhbGlkICovCj4gLQllcnIgPSBpbnRlbF9md190YWJsZV9jaGVjayhp
OTE1LT51bmNvcmUuZndfZG9tYWluc190YWJsZSwKPiAtCQkJCSAgIGk5MTUtPnVuY29yZS5md19k
b21haW5zX3RhYmxlX2VudHJpZXMsCj4gLQkJCQkgICBJTlRFTF9HRU4oaTkxNSkgPj0gOSk7Cj4g
LQlpZiAoZXJyKQo+IC0JCXJldHVybiBlcnI7Cj4gLQo+IC0JcmV0dXJuIGk5MTVfc3VidGVzdHMo
dGVzdHMsIGk5MTUpOwo+ICsJcmV0dXJuIGludGVsX2d0X2xpdmVfc3VidGVzdHModGVzdHMsICZp
OTE1LT5ndCk7Cj4gICB9Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
