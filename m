Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA58C8A41
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 15:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D458D6E114;
	Wed,  2 Oct 2019 13:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5631B6E114
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 13:53:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 06:53:13 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="196009983"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 06:53:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20191001173106.GS1208@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191001152506.7854-1-jani.nikula@intel.com>
 <20191001173106.GS1208@intel.com>
Date: Wed, 02 Oct 2019 16:53:08 +0300
Message-ID: <87y2y39ruj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: abstract all vgaarb
 access to intel_vga.[ch]
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

T24gVHVlLCAwMSBPY3QgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMDY6MjU6MDZQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFNwbGl0IG91dCB0aGUgY29kZSByZWxhdGVkIHRv
IHZnYSBjbGllbnQgYW5kIHZnYWFyYiBhbGwgb3ZlciB0aGUgcGxhY2UKPj4gaW50byBuZXcgaW50
ZWxfdmdhLltjaF0uIE5vIGZ1bmN0aW9uYWwgY2hhbmdlcy4KPj4gCj4+IENjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiBDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
TWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAzICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgOTcgKy0tLS0tLS0tLS0KPj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oICB8ICAgMyAtCj4+ICAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAgMjQgKy0tCj4+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jICAgICAgfCAxNjAgKysrKysrKysr
KysrKysrKysrCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5oICAg
ICAgfCAgMTggKysKPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAg
ICAgICB8ICAzMCArLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAg
ICAgICAgICAgfCAgIDEgLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMg
ICAgICAgICAgIHwgICAzICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1l
X3BtLmMgICAgICAgfCAgIDEgLQo+PiAgMTAgZmlsZXMgY2hhbmdlZCwgMTk0IGluc2VydGlvbnMo
KyksIDE0NiBkZWxldGlvbnMoLSkKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuaAo+PiAKPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUKPj4gaW5kZXggZTA0NDYzZDg1NDAxLi5kMmI1M2I1YWRkODEgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlCj4+IEBAIC0xODQsNyArMTg0LDggQEAgaTkxNS15ICs9IFwKPj4gIAlkaXNwbGF5
L2ludGVsX3Bzci5vIFwKPj4gIAlkaXNwbGF5L2ludGVsX3F1aXJrcy5vIFwKPj4gIAlkaXNwbGF5
L2ludGVsX3Nwcml0ZS5vIFwKPj4gLQlkaXNwbGF5L2ludGVsX3RjLm8KPj4gKwlkaXNwbGF5L2lu
dGVsX3RjLm8gXAo+PiArCWRpc3BsYXkvaW50ZWxfdmdhLm8KPj4gIGk5MTUtJChDT05GSUdfQUNQ
SSkgKz0gXAo+PiAgCWRpc3BsYXkvaW50ZWxfYWNwaS5vIFwKPj4gIAlkaXNwbGF5L2ludGVsX29w
cmVnaW9uLm8KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKPj4gaW5kZXggZjEzMjhjMDhmNGFkLi5kOTljNTllOTc1NjggMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+IEBAIC0zMSw3ICszMSw2
IEBACj4+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvZG1h
LXJlc3YuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4+IC0jaW5jbHVkZSA8bGludXgv
dmdhYXJiLmg+Cj4+ICAKPj4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pYy5oPgo+PiAgI2luY2x1
ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgo+PiBAQCAtNzksNiArNzgsNyBAQAo+PiAgI2lu
Y2x1ZGUgImludGVsX3NpZGViYW5kLmgiCj4+ICAjaW5jbHVkZSAiaW50ZWxfc3ByaXRlLmgiCj4+
ICAjaW5jbHVkZSAiaW50ZWxfdGMuaCIKPj4gKyNpbmNsdWRlICJpbnRlbF92Z2EuaCIKPj4gIAo+
PiAgLyogUHJpbWFyeSBwbGFuZSBmb3JtYXRzIGZvciBnZW4gPD0gMyAqLwo+PiAgc3RhdGljIGNv
bnN0IHUzMiBpOHh4X3ByaW1hcnlfZm9ybWF0c1tdID0gewo+PiBAQCAtNDI0MSw3ICs0MjQxLDcg
QEAgX19pbnRlbF9kaXNwbGF5X3Jlc3VtZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+PiAgCWlu
dCBpLCByZXQ7Cj4+ICAKPj4gIAlpbnRlbF9tb2Rlc2V0X3NldHVwX2h3X3N0YXRlKGRldiwgY3R4
KTsKPj4gLQlpOTE1X3JlZGlzYWJsZV92Z2EodG9faTkxNShkZXYpKTsKPj4gKwlpbnRlbF92Z2Ff
cmVkaXNhYmxlKHRvX2k5MTUoZGV2KSk7Cj4+ICAKPj4gIAlpZiAoIXN0YXRlKQo+PiAgCQlyZXR1
cm4gMDsKPj4gQEAgLTE1OTk0LDM1ICsxNTk5NCw2IEBAIHZvaWQgaW50ZWxfaW5pdF9kaXNwbGF5
X2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPj4gIAo+PiAgfQo+PiAg
Cj4+IC1zdGF0aWMgaTkxNV9yZWdfdCBpOTE1X3ZnYWNudHJsX3JlZyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCj4+IC17Cj4+IC0JaWYgKElTX1ZBTExFWVZJRVcoZGV2X3ByaXYp
IHx8IElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQo+PiAtCQlyZXR1cm4gVkxWX1ZHQUNOVFJMOwo+
PiAtCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNSkKPj4gLQkJcmV0dXJuIENQVV9W
R0FDTlRSTDsKPj4gLQllbHNlCj4+IC0JCXJldHVybiBWR0FDTlRSTDsKPj4gLX0KPj4gLQo+PiAt
LyogRGlzYWJsZSB0aGUgVkdBIHBsYW5lIHRoYXQgd2UgbmV2ZXIgdXNlICovCj4+IC1zdGF0aWMg
dm9pZCBpOTE1X2Rpc2FibGVfdmdhKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
Pj4gLXsKPj4gLQlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGRldl9wcml2LT5kcm0ucGRldjsKPj4g
LQl1OCBzcjE7Cj4+IC0JaTkxNV9yZWdfdCB2Z2FfcmVnID0gaTkxNV92Z2FjbnRybF9yZWcoZGV2
X3ByaXYpOwo+PiAtCj4+IC0JLyogV2FFbmFibGVWR0FBY2Nlc3NUaHJvdWdoSU9Qb3J0OmN0Zyxl
bGssaWxrLHNuYixpdmIsdmx2LGhzdyAqLwo+PiAtCXZnYV9nZXRfdW5pbnRlcnJ1cHRpYmxlKHBk
ZXYsIFZHQV9SU1JDX0xFR0FDWV9JTyk7Cj4+IC0Jb3V0YihTUjAxLCBWR0FfU1JfSU5ERVgpOwo+
PiAtCXNyMSA9IGluYihWR0FfU1JfREFUQSk7Cj4+IC0Jb3V0YihzcjEgfCAxPDw1LCBWR0FfU1Jf
REFUQSk7Cj4+IC0JdmdhX3B1dChwZGV2LCBWR0FfUlNSQ19MRUdBQ1lfSU8pOwo+PiAtCXVkZWxh
eSgzMDApOwo+PiAtCj4+IC0JSTkxNV9XUklURSh2Z2FfcmVnLCBWR0FfRElTUF9ESVNBQkxFKTsK
Pj4gLQlQT1NUSU5HX1JFQUQodmdhX3JlZyk7Cj4+IC19Cj4+IC0KPj4gIHZvaWQgaW50ZWxfbW9k
ZXNldF9pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+PiAgewo+PiAgCWlu
dGVsX3VwZGF0ZV9jZGNsayhpOTE1KTsKPj4gQEAgLTE2Mjg4LDcgKzE2MjU5LDcgQEAgaW50IGlu
dGVsX21vZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gIAkJaW50
ZWxfdXBkYXRlX21heF9jZGNsayhpOTE1KTsKPj4gIAo+PiAgCS8qIEp1c3QgZGlzYWJsZSBpdCBv
bmNlIGF0IHN0YXJ0dXAgKi8KPj4gLQlpOTE1X2Rpc2FibGVfdmdhKGk5MTUpOwo+PiArCWludGVs
X3ZnYV9kaXNhYmxlKGk5MTUpOwo+PiAgCWludGVsX3NldHVwX291dHB1dHMoaTkxNSk7Cj4+ICAK
Pj4gIAlkcm1fbW9kZXNldF9sb2NrX2FsbChkZXYpOwo+PiBAQCAtMTY2NDcsMzkgKzE2NjE4LDYg
QEAgc3RhdGljIHZvaWQgaW50ZWxfc2FuaXRpemVfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikKPj4gIAkJaWNsX3Nhbml0aXplX2VuY29kZXJfcGxsX21hcHBpbmcoZW5jb2Rl
cik7Cj4+ICB9Cj4+ICAKPj4gLXZvaWQgaTkxNV9yZWRpc2FibGVfdmdhX3Bvd2VyX29uKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPj4gLXsKPj4gLQlpOTE1X3JlZ190IHZnYV9y
ZWcgPSBpOTE1X3ZnYWNudHJsX3JlZyhkZXZfcHJpdik7Cj4+IC0KPj4gLQlpZiAoIShJOTE1X1JF
QUQodmdhX3JlZykgJiBWR0FfRElTUF9ESVNBQkxFKSkgewo+PiAtCQlEUk1fREVCVUdfS01TKCJT
b21ldGhpbmcgZW5hYmxlZCBWR0EgcGxhbmUsIGRpc2FibGluZyBpdFxuIik7Cj4+IC0JCWk5MTVf
ZGlzYWJsZV92Z2EoZGV2X3ByaXYpOwo+PiAtCX0KPj4gLX0KPj4gLQo+PiAtdm9pZCBpOTE1X3Jl
ZGlzYWJsZV92Z2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+PiAtewo+PiAt
CWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+PiAtCj4+IC0JLyoKPj4gLQkgKiBUaGlzIGZ1bmN0
aW9uIGNhbiBiZSBjYWxsZWQgYm90aCBmcm9tIGludGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUg
b3IKPj4gLQkgKiBhdCBhIHZlcnkgZWFybHkgcG9pbnQgaW4gb3VyIHJlc3VtZSBzZXF1ZW5jZSwg
d2hlcmUgdGhlIHBvd2VyIHdlbGwKPj4gLQkgKiBzdHJ1Y3R1cmVzIGFyZSBub3QgeWV0IHJlc3Rv
cmVkLiBTaW5jZSB0aGlzIGZ1bmN0aW9uIGlzIGF0IGEgdmVyeQo+PiAtCSAqIHBhcmFub2lkICJz
b21lb25lIG1pZ2h0IGhhdmUgZW5hYmxlZCBWR0Egd2hpbGUgd2Ugd2VyZSBub3QgbG9va2luZyIK
Pj4gLQkgKiBsZXZlbCwganVzdCBjaGVjayBpZiB0aGUgcG93ZXIgd2VsbCBpcyBlbmFibGVkIGlu
c3RlYWQgb2YgdHJ5aW5nIHRvCj4+IC0JICogZm9sbG93IHRoZSAiZG9uJ3QgdG91Y2ggdGhlIHBv
d2VyIHdlbGwgaWYgd2UgZG9uJ3QgbmVlZCBpdCIgcG9saWN5Cj4+IC0JICogdGhlIHJlc3Qgb2Yg
dGhlIGRyaXZlciB1c2VzLgo+PiAtCSAqLwo+PiAtCXdha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bv
d2VyX2dldF9pZl9lbmFibGVkKGRldl9wcml2LAo+PiAtCQkJCQkJICAgICBQT1dFUl9ET01BSU5f
VkdBKTsKPj4gLQlpZiAoIXdha2VyZWYpCj4+IC0JCXJldHVybjsKPj4gLQo+PiAtCWk5MTVfcmVk
aXNhYmxlX3ZnYV9wb3dlcl9vbihkZXZfcHJpdik7Cj4+IC0KPj4gLQlpbnRlbF9kaXNwbGF5X3Bv
d2VyX3B1dChkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX1ZHQSwgd2FrZXJlZik7Cj4+IC19Cj4+IC0K
Pj4gIC8qIEZJWE1FIHJlYWQgb3V0IGZ1bGwgcGxhbmUgc3RhdGUgZm9yIGFsbCBwbGFuZXMgKi8K
Pj4gIHN0YXRpYyB2b2lkIHJlYWRvdXRfcGxhbmVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQo+PiAgewo+PiBAQCAtMTcxODgsMzUgKzE3MTI2LDYgQEAgdm9pZCBpbnRl
bF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+
ICAJaW50ZWxfZmJjX2NsZWFudXBfY2ZiKGk5MTUpOwo+PiAgfQo+PiAgCj4+IC0vKgo+PiAtICog
c2V0IHZnYSBkZWNvZGUgc3RhdGUgLSB0cnVlID09IGVuYWJsZSBWR0EgZGVjb2RlCj4+IC0gKi8K
Pj4gLWludCBpbnRlbF9tb2Rlc2V0X3ZnYV9zZXRfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCBib29sIHN0YXRlKQo+PiAtewo+PiAtCXVuc2lnbmVkIHJlZyA9IElOVEVM
X0dFTihkZXZfcHJpdikgPj0gNiA/IFNOQl9HTUNIX0NUUkwgOiBJTlRFTF9HTUNIX0NUUkw7Cj4+
IC0JdTE2IGdtY2hfY3RybDsKPj4gLQo+PiAtCWlmIChwY2lfcmVhZF9jb25maWdfd29yZChkZXZf
cHJpdi0+YnJpZGdlX2RldiwgcmVnLCAmZ21jaF9jdHJsKSkgewo+PiAtCQlEUk1fRVJST1IoImZh
aWxlZCB0byByZWFkIGNvbnRyb2wgd29yZFxuIik7Cj4+IC0JCXJldHVybiAtRUlPOwo+PiAtCX0K
Pj4gLQo+PiAtCWlmICghIShnbWNoX2N0cmwgJiBJTlRFTF9HTUNIX1ZHQV9ESVNBQkxFKSA9PSAh
c3RhdGUpCj4+IC0JCXJldHVybiAwOwo+PiAtCj4+IC0JaWYgKHN0YXRlKQo+PiAtCQlnbWNoX2N0
cmwgJj0gfklOVEVMX0dNQ0hfVkdBX0RJU0FCTEU7Cj4+IC0JZWxzZQo+PiAtCQlnbWNoX2N0cmwg
fD0gSU5URUxfR01DSF9WR0FfRElTQUJMRTsKPj4gLQo+PiAtCWlmIChwY2lfd3JpdGVfY29uZmln
X3dvcmQoZGV2X3ByaXYtPmJyaWRnZV9kZXYsIHJlZywgZ21jaF9jdHJsKSkgewo+PiAtCQlEUk1f
RVJST1IoImZhaWxlZCB0byB3cml0ZSBjb250cm9sIHdvcmRcbiIpOwo+PiAtCQlyZXR1cm4gLUVJ
TzsKPj4gLQl9Cj4+IC0KPj4gLQlyZXR1cm4gMDsKPj4gLX0KPj4gLQo+PiAgI2lmIElTX0VOQUJM
RUQoQ09ORklHX0RSTV9JOTE1X0NBUFRVUkVfRVJST1IpCj4+ICAKPj4gIHN0cnVjdCBpbnRlbF9k
aXNwbGF5X2Vycm9yX3N0YXRlIHsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmgKPj4gaW5kZXggNGI5ZTE4ZTVhMjYzLi4yNzgyZjIzZWU4ODcgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4+IEBA
IC01NzksMTAgKzU3OSw3IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wcmludF9lcnJvcl9zdGF0ZShz
dHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVfYnVmICplLAo+PiAgdm9pZCBpbnRlbF9tb2Rlc2V0
X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+PiAgaW50IGludGVsX21v
ZGVzZXRfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4+ICB2b2lkIGludGVs
X21vZGVzZXRfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4+
IC1pbnQgaW50ZWxfbW9kZXNldF92Z2Ffc2V0X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgYm9vbCBzdGF0ZSk7Cj4+ICB2b2lkIGludGVsX2Rpc3BsYXlfcmVzdW1lKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpOwo+PiAtdm9pZCBpOTE1X3JlZGlzYWJsZV92Z2Eoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPj4gLXZvaWQgaTkxNV9yZWRpc2FibGVfdmdh
X3Bvd2VyX29uKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4+ICB2b2lkIGlu
dGVsX2luaXRfcGNoX3JlZmNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+
PiAgCj4+ICAvKiBtb2Rlc2V0dGluZyBhc3NlcnRzICovCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4+IGluZGV4IGYxMTg2YmMy
MzU0Mi4uYmI2NDJhMWEwZGQ0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+PiBAQCAtMyw4ICszLDYgQEAKPj4gICAq
IENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4+ICAgKi8KPj4gIAo+PiAtI2lu
Y2x1ZGUgPGxpbnV4L3ZnYWFyYi5oPgo+PiAtCj4+ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9j
cnQuaCIKPj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2RwLmgiCj4+ICAKPj4gQEAgLTE5LDYg
KzE3LDcgQEAKPj4gICNpbmNsdWRlICJpbnRlbF9ob3RwbHVnLmgiCj4+ICAjaW5jbHVkZSAiaW50
ZWxfc2lkZWJhbmQuaCIKPj4gICNpbmNsdWRlICJpbnRlbF90Yy5oIgo+PiArI2luY2x1ZGUgImlu
dGVsX3ZnYS5oIgo+PiAgCj4+ICBib29sIGludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbF9pc19lbmFi
bGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPj4gIAkJCQkJIGVudW0gaTkx
NV9wb3dlcl93ZWxsX2lkIHBvd2VyX3dlbGxfaWQpOwo+PiBAQCAtMjY3LDIzICsyNjYsOCBAQCBi
b29sIGludGVsX2Rpc3BsYXlfcG93ZXJfaXNfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCj4+ICBzdGF0aWMgdm9pZCBoc3dfcG93ZXJfd2VsbF9wb3N0X2VuYWJsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+ICAJCQkJICAgICAgIHU4IGlycV9w
aXBlX21hc2ssIGJvb2wgaGFzX3ZnYSkKPj4gIHsKPj4gLQlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9
IGRldl9wcml2LT5kcm0ucGRldjsKPj4gLQo+PiAtCS8qCj4+IC0JICogQWZ0ZXIgd2UgcmUtZW5h
YmxlIHRoZSBwb3dlciB3ZWxsLCBpZiB3ZSB0b3VjaCBWR0EgcmVnaXN0ZXIgMHgzZDUKPj4gLQkg
KiB3ZSdsbCBnZXQgdW5jbGFpbWVkIHJlZ2lzdGVyIGludGVycnVwdHMuIFRoaXMgc3RvcHMgYWZ0
ZXIgd2Ugd3JpdGUKPj4gLQkgKiBhbnl0aGluZyB0byB0aGUgVkdBIE1TUiByZWdpc3Rlci4gVGhl
IHZnYWNvbiBtb2R1bGUgdXNlcyB0aGlzCj4+IC0JICogcmVnaXN0ZXIgYWxsIHRoZSB0aW1lLCBz
byBpZiB3ZSB1bmJpbmQgb3VyIGRyaXZlciBhbmQsIGFzIGEKPj4gLQkgKiBjb25zZXF1ZW5jZSwg
YmluZCB2Z2Fjb24sIHdlJ2xsIGdldCBzdHVjayBpbiBhbiBpbmZpbml0ZSBsb29wIGF0Cj4+IC0J
ICogY29uc29sZV91bmxvY2soKS4gU28gbWFrZSBoZXJlIHdlIHRvdWNoIHRoZSBWR0EgTVNSIHJl
Z2lzdGVyLCBtYWtpbmcKPj4gLQkgKiBzdXJlIHZnYWNvbiBjYW4ga2VlcCB3b3JraW5nIG5vcm1h
bGx5IHdpdGhvdXQgdHJpZ2dlcmluZyBpbnRlcnJ1cHRzCj4+IC0JICogYW5kIGVycm9yIG1lc3Nh
Z2VzLgo+PiAtCSAqLwo+PiAtCWlmIChoYXNfdmdhKSB7Cj4+IC0JCXZnYV9nZXRfdW5pbnRlcnJ1
cHRpYmxlKHBkZXYsIFZHQV9SU1JDX0xFR0FDWV9JTyk7Cj4+IC0JCW91dGIoaW5iKFZHQV9NU1Jf
UkVBRCksIFZHQV9NU1JfV1JJVEUpOwo+PiAtCQl2Z2FfcHV0KHBkZXYsIFZHQV9SU1JDX0xFR0FD
WV9JTyk7Cj4+IC0JfQo+PiArCWlmIChoYXNfdmdhKQo+PiArCQlpbnRlbF92Z2FfbXNyX3dyaXRl
KGRldl9wcml2KTsKPgo+IEknZCBwcm9iYWJseSBjYWxsIHRoaXMgc29tZXRoaW5nIGxpa2UgaW50
ZWxfdmdhX3Jlc2V0X2lvX21lbSgpLgo+Cj4gbGd0bQo+IFJldmlld2VkLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKVGhhbmtzLCBlbmRlZCB1cCBw
dXNoaW5nIHRoaXMgYXMtaXMsIHNlbnQgYSBzZXBhcmF0ZSBwYXRjaCBmb3IgdGhlCnJlbmFtZS4K
CkJSLApKYW5pLgoKCj4KPj4gIAo+PiAgCWlmIChpcnFfcGlwZV9tYXNrKQo+PiAgCQlnZW44X2ly
cV9wb3dlcl93ZWxsX3Bvc3RfZW5hYmxlKGRldl9wcml2LCBpcnFfcGlwZV9tYXNrKTsKPj4gQEAg
LTEyMDUsNyArMTE4OSw3IEBAIHN0YXRpYyB2b2lkIHZsdl9kaXNwbGF5X3Bvd2VyX3dlbGxfaW5p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ICAJCQlpbnRlbF9jcnRfcmVz
ZXQoJmVuY29kZXItPmJhc2UpOwo+PiAgCX0KPj4gIAo+PiAtCWk5MTVfcmVkaXNhYmxlX3ZnYV9w
b3dlcl9vbihkZXZfcHJpdik7Cj4+ICsJaW50ZWxfdmdhX3JlZGlzYWJsZV9wb3dlcl9vbihkZXZf
cHJpdik7Cj4+ICAKPj4gIAlpbnRlbF9wcHNfdW5sb2NrX3JlZ3Nfd2EoZGV2X3ByaXYpOwo+PiAg
fQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2Eu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMKPj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMDAwMDAwLi43MzI1NjhlYWE5ODgKPj4gLS0tIC9k
ZXYvbnVsbAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5j
Cj4+IEBAIC0wLDAgKzEsMTYwIEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
Cj4+ICsvKgo+PiArICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KPj4gKyAq
Lwo+PiArCj4+ICsjaW5jbHVkZSA8bGludXgvcGNpLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvdmdh
YXJiLmg+Cj4+ICsKPj4gKyNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KPj4gKwo+PiArI2luY2x1
ZGUgImk5MTVfZHJ2LmgiCj4+ICsjaW5jbHVkZSAiaW50ZWxfdmdhLmgiCj4+ICsKPj4gK3N0YXRp
YyBpOTE1X3JlZ190IGludGVsX3ZnYV9jbnRybF9yZWcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4+ICt7Cj4+ICsJaWYgKElTX1ZBTExFWVZJRVcoaTkxNSkgfHwgSVNfQ0hFUlJZVklF
VyhpOTE1KSkKPj4gKwkJcmV0dXJuIFZMVl9WR0FDTlRSTDsKPj4gKwllbHNlIGlmIChJTlRFTF9H
RU4oaTkxNSkgPj0gNSkKPj4gKwkJcmV0dXJuIENQVV9WR0FDTlRSTDsKPj4gKwllbHNlCj4+ICsJ
CXJldHVybiBWR0FDTlRSTDsKPj4gK30KPj4gKwo+PiArLyogRGlzYWJsZSB0aGUgVkdBIHBsYW5l
IHRoYXQgd2UgbmV2ZXIgdXNlICovCj4+ICt2b2lkIGludGVsX3ZnYV9kaXNhYmxlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPj4gK3sKPj4gKwlzdHJ1Y3QgcGNpX2RldiAqcGRl
diA9IGRldl9wcml2LT5kcm0ucGRldjsKPj4gKwlpOTE1X3JlZ190IHZnYV9yZWcgPSBpbnRlbF92
Z2FfY250cmxfcmVnKGRldl9wcml2KTsKPj4gKwl1OCBzcjE7Cj4+ICsKPj4gKwkvKiBXYUVuYWJs
ZVZHQUFjY2Vzc1Rocm91Z2hJT1BvcnQ6Y3RnLGVsayxpbGssc25iLGl2Yix2bHYsaHN3ICovCj4+
ICsJdmdhX2dldF91bmludGVycnVwdGlibGUocGRldiwgVkdBX1JTUkNfTEVHQUNZX0lPKTsKPj4g
KwlvdXRiKFNSMDEsIFZHQV9TUl9JTkRFWCk7Cj4+ICsJc3IxID0gaW5iKFZHQV9TUl9EQVRBKTsK
Pj4gKwlvdXRiKHNyMSB8IDEgPDwgNSwgVkdBX1NSX0RBVEEpOwo+PiArCXZnYV9wdXQocGRldiwg
VkdBX1JTUkNfTEVHQUNZX0lPKTsKPj4gKwl1ZGVsYXkoMzAwKTsKPj4gKwo+PiArCUk5MTVfV1JJ
VEUodmdhX3JlZywgVkdBX0RJU1BfRElTQUJMRSk7Cj4+ICsJUE9TVElOR19SRUFEKHZnYV9yZWcp
Owo+PiArfQo+PiArCj4+ICt2b2lkIGludGVsX3ZnYV9yZWRpc2FibGVfcG93ZXJfb24oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+PiArewo+PiArCWk5MTVfcmVnX3QgdmdhX3Jl
ZyA9IGludGVsX3ZnYV9jbnRybF9yZWcoZGV2X3ByaXYpOwo+PiArCj4+ICsJaWYgKCEoSTkxNV9S
RUFEKHZnYV9yZWcpICYgVkdBX0RJU1BfRElTQUJMRSkpIHsKPj4gKwkJRFJNX0RFQlVHX0tNUygi
U29tZXRoaW5nIGVuYWJsZWQgVkdBIHBsYW5lLCBkaXNhYmxpbmcgaXRcbiIpOwo+PiArCQlpbnRl
bF92Z2FfZGlzYWJsZShkZXZfcHJpdik7Cj4+ICsJfQo+PiArfQo+PiArCj4+ICt2b2lkIGludGVs
X3ZnYV9yZWRpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ICt7Cj4+ICsJ
aW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4+ICsKPj4gKwkvKgo+PiArCSAqIFRoaXMgZnVuY3Rp
b24gY2FuIGJlIGNhbGxlZCBib3RoIGZyb20gaW50ZWxfbW9kZXNldF9zZXR1cF9od19zdGF0ZSBv
cgo+PiArCSAqIGF0IGEgdmVyeSBlYXJseSBwb2ludCBpbiBvdXIgcmVzdW1lIHNlcXVlbmNlLCB3
aGVyZSB0aGUgcG93ZXIgd2VsbAo+PiArCSAqIHN0cnVjdHVyZXMgYXJlIG5vdCB5ZXQgcmVzdG9y
ZWQuIFNpbmNlIHRoaXMgZnVuY3Rpb24gaXMgYXQgYSB2ZXJ5Cj4+ICsJICogcGFyYW5vaWQgInNv
bWVvbmUgbWlnaHQgaGF2ZSBlbmFibGVkIFZHQSB3aGlsZSB3ZSB3ZXJlIG5vdCBsb29raW5nIgo+
PiArCSAqIGxldmVsLCBqdXN0IGNoZWNrIGlmIHRoZSBwb3dlciB3ZWxsIGlzIGVuYWJsZWQgaW5z
dGVhZCBvZiB0cnlpbmcgdG8KPj4gKwkgKiBmb2xsb3cgdGhlICJkb24ndCB0b3VjaCB0aGUgcG93
ZXIgd2VsbCBpZiB3ZSBkb24ndCBuZWVkIGl0IiBwb2xpY3kKPj4gKwkgKiB0aGUgcmVzdCBvZiB0
aGUgZHJpdmVyIHVzZXMuCj4+ICsJICovCj4+ICsJd2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93
ZXJfZ2V0X2lmX2VuYWJsZWQoaTkxNSwgUE9XRVJfRE9NQUlOX1ZHQSk7Cj4+ICsJaWYgKCF3YWtl
cmVmKQo+PiArCQlyZXR1cm47Cj4+ICsKPj4gKwlpbnRlbF92Z2FfcmVkaXNhYmxlX3Bvd2VyX29u
KGk5MTUpOwo+PiArCj4+ICsJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoaTkxNSwgUE9XRVJfRE9N
QUlOX1ZHQSwgd2FrZXJlZik7Cj4+ICt9Cj4+ICsKPj4gK3ZvaWQgaW50ZWxfdmdhX21zcl93cml0
ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gK3sKPj4gKwlzdHJ1Y3QgcGNpX2Rl
diAqcGRldiA9IGk5MTUtPmRybS5wZGV2Owo+PiArCj4+ICsJLyoKPj4gKwkgKiBBZnRlciB3ZSBy
ZS1lbmFibGUgdGhlIHBvd2VyIHdlbGwsIGlmIHdlIHRvdWNoIFZHQSByZWdpc3RlciAweDNkNQo+
PiArCSAqIHdlJ2xsIGdldCB1bmNsYWltZWQgcmVnaXN0ZXIgaW50ZXJydXB0cy4gVGhpcyBzdG9w
cyBhZnRlciB3ZSB3cml0ZQo+PiArCSAqIGFueXRoaW5nIHRvIHRoZSBWR0EgTVNSIHJlZ2lzdGVy
LiBUaGUgdmdhY29uIG1vZHVsZSB1c2VzIHRoaXMKPj4gKwkgKiByZWdpc3RlciBhbGwgdGhlIHRp
bWUsIHNvIGlmIHdlIHVuYmluZCBvdXIgZHJpdmVyIGFuZCwgYXMgYQo+PiArCSAqIGNvbnNlcXVl
bmNlLCBiaW5kIHZnYWNvbiwgd2UnbGwgZ2V0IHN0dWNrIGluIGFuIGluZmluaXRlIGxvb3AgYXQK
Pj4gKwkgKiBjb25zb2xlX3VubG9jaygpLiBTbyBtYWtlIGhlcmUgd2UgdG91Y2ggdGhlIFZHQSBN
U1IgcmVnaXN0ZXIsIG1ha2luZwo+PiArCSAqIHN1cmUgdmdhY29uIGNhbiBrZWVwIHdvcmtpbmcg
bm9ybWFsbHkgd2l0aG91dCB0cmlnZ2VyaW5nIGludGVycnVwdHMKPj4gKwkgKiBhbmQgZXJyb3Ig
bWVzc2FnZXMuCj4+ICsJICovCj4+ICsJdmdhX2dldF91bmludGVycnVwdGlibGUocGRldiwgVkdB
X1JTUkNfTEVHQUNZX0lPKTsKPj4gKwlvdXRiKGluYihWR0FfTVNSX1JFQUQpLCBWR0FfTVNSX1dS
SVRFKTsKPj4gKwl2Z2FfcHV0KHBkZXYsIFZHQV9SU1JDX0xFR0FDWV9JTyk7Cj4+ICt9Cj4+ICsK
Pj4gK3N0YXRpYyBpbnQKPj4gK2ludGVsX3ZnYV9zZXRfc3RhdGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsIGJvb2wgZW5hYmxlX2RlY29kZSkKPj4gK3sKPj4gKwl1bnNpZ25lZCBpbnQg
cmVnID0gSU5URUxfR0VOKGk5MTUpID49IDYgPyBTTkJfR01DSF9DVFJMIDogSU5URUxfR01DSF9D
VFJMOwo+PiArCXUxNiBnbWNoX2N0cmw7Cj4+ICsKPj4gKwlpZiAocGNpX3JlYWRfY29uZmlnX3dv
cmQoaTkxNS0+YnJpZGdlX2RldiwgcmVnLCAmZ21jaF9jdHJsKSkgewo+PiArCQlEUk1fRVJST1Io
ImZhaWxlZCB0byByZWFkIGNvbnRyb2wgd29yZFxuIik7Cj4+ICsJCXJldHVybiAtRUlPOwo+PiAr
CX0KPj4gKwo+PiArCWlmICghIShnbWNoX2N0cmwgJiBJTlRFTF9HTUNIX1ZHQV9ESVNBQkxFKSA9
PSAhZW5hYmxlX2RlY29kZSkKPj4gKwkJcmV0dXJuIDA7Cj4+ICsKPj4gKwlpZiAoZW5hYmxlX2Rl
Y29kZSkKPj4gKwkJZ21jaF9jdHJsICY9IH5JTlRFTF9HTUNIX1ZHQV9ESVNBQkxFOwo+PiArCWVs
c2UKPj4gKwkJZ21jaF9jdHJsIHw9IElOVEVMX0dNQ0hfVkdBX0RJU0FCTEU7Cj4+ICsKPj4gKwlp
ZiAocGNpX3dyaXRlX2NvbmZpZ193b3JkKGk5MTUtPmJyaWRnZV9kZXYsIHJlZywgZ21jaF9jdHJs
KSkgewo+PiArCQlEUk1fRVJST1IoImZhaWxlZCB0byB3cml0ZSBjb250cm9sIHdvcmRcbiIpOwo+
PiArCQlyZXR1cm4gLUVJTzsKPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gMDsKPj4gK30KPj4gKwo+
PiArc3RhdGljIHVuc2lnbmVkIGludAo+PiAraW50ZWxfdmdhX3NldF9kZWNvZGUodm9pZCAqY29v
a2llLCBib29sIGVuYWJsZV9kZWNvZGUpCj4+ICt7Cj4+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSBjb29raWU7Cj4+ICsKPj4gKwlpbnRlbF92Z2Ffc2V0X3N0YXRlKGk5MTUsIGVu
YWJsZV9kZWNvZGUpOwo+PiArCj4+ICsJaWYgKGVuYWJsZV9kZWNvZGUpCj4+ICsJCXJldHVybiBW
R0FfUlNSQ19MRUdBQ1lfSU8gfCBWR0FfUlNSQ19MRUdBQ1lfTUVNIHwKPj4gKwkJICAgICAgIFZH
QV9SU1JDX05PUk1BTF9JTyB8IFZHQV9SU1JDX05PUk1BTF9NRU07Cj4+ICsJZWxzZQo+PiArCQly
ZXR1cm4gVkdBX1JTUkNfTk9STUFMX0lPIHwgVkdBX1JTUkNfTk9STUFMX01FTTsKPj4gK30KPj4g
Kwo+PiAraW50IGludGVsX3ZnYV9yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKPj4gK3sKPj4gKwlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGk5MTUtPmRybS5wZGV2Owo+PiAr
CWludCByZXQ7Cj4+ICsKPj4gKwkvKgo+PiArCSAqIElmIHdlIGhhdmUgPiAxIFZHQSBjYXJkcywg
dGhlbiB3ZSBuZWVkIHRvIGFyYml0cmF0ZSBhY2Nlc3MgdG8gdGhlCj4+ICsJICogY29tbW9uIFZH
QSByZXNvdXJjZXMuCj4+ICsJICoKPj4gKwkgKiBJZiB3ZSBhcmUgYSBzZWNvbmRhcnkgZGlzcGxh
eSBjb250cm9sbGVyICghUENJX0RJU1BMQVlfQ0xBU1NfVkdBKSwKPj4gKwkgKiB0aGVuIHdlIGRv
IG5vdCB0YWtlIHBhcnQgaW4gVkdBIGFyYml0cmF0aW9uIGFuZCB0aGUKPj4gKwkgKiB2Z2FfY2xp
ZW50X3JlZ2lzdGVyKCkgZmFpbHMgd2l0aCAtRU5PREVWLgo+PiArCSAqLwo+PiArCXJldCA9IHZn
YV9jbGllbnRfcmVnaXN0ZXIocGRldiwgaTkxNSwgTlVMTCwgaW50ZWxfdmdhX3NldF9kZWNvZGUp
Owo+PiArCWlmIChyZXQgJiYgcmV0ICE9IC1FTk9ERVYpCj4+ICsJCXJldHVybiByZXQ7Cj4+ICsK
Pj4gKwlyZXR1cm4gMDsKPj4gK30KPj4gKwo+PiArdm9pZCBpbnRlbF92Z2FfdW5yZWdpc3Rlcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gK3sKPj4gKwlzdHJ1Y3QgcGNpX2RldiAq
cGRldiA9IGk5MTUtPmRybS5wZGV2Owo+PiArCj4+ICsJdmdhX2NsaWVudF9yZWdpc3RlcihwZGV2
LCBOVUxMLCBOVUxMLCBOVUxMKTsKPj4gK30KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3ZnYS5oCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAw
MC4uMzUxNzg3MmU2MmFjCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuaAo+PiBAQCAtMCwwICsxLDE4IEBACj4+ICsvKiBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovCj4+ICsvKgo+PiArICogQ29weXJpZ2h0IMKpIDIw
MTkgSW50ZWwgQ29ycG9yYXRpb24KPj4gKyAqLwo+PiArCj4+ICsjaWZuZGVmIF9fSU5URUxfVkdB
X0hfXwo+PiArI2RlZmluZSBfX0lOVEVMX1ZHQV9IX18KPj4gKwo+PiArc3RydWN0IGRybV9pOTE1
X3ByaXZhdGU7Cj4+ICsKPj4gK3ZvaWQgaW50ZWxfdmdhX21zcl93cml0ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSk7Cj4+ICt2b2lkIGludGVsX3ZnYV9kaXNhYmxlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KTsKPj4gK3ZvaWQgaW50ZWxfdmdhX3JlZGlzYWJsZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4+ICt2b2lkIGludGVsX3ZnYV9yZWRpc2FibGVfcG93
ZXJfb24oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+PiAraW50IGludGVsX3ZnYV9y
ZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4+ICt2b2lkIGludGVsX3Zn
YV91bnJlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPj4gKwo+PiArI2Vu
ZGlmIC8qIF9fSU5URUxfVkdBX0hfXyAqLwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4gaW5k
ZXggOTFhYWU1NmI0MjgwLi4zMzA2YzZiYjUxNWEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwo+PiBAQCAtMzYsNyArMzYsNiBAQAo+PiAgI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUu
aD4KPj4gICNpbmNsdWRlIDxsaW51eC9wbnAuaD4KPj4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+
Cj4+IC0jaW5jbHVkZSA8bGludXgvdmdhYXJiLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvdmdhX3N3
aXRjaGVyb28uaD4KPj4gICNpbmNsdWRlIDxsaW51eC92dC5oPgo+PiAgI2luY2x1ZGUgPGFjcGkv
dmlkZW8uaD4KPj4gQEAgLTU5LDYgKzU4LDcgQEAKPj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVs
X292ZXJsYXkuaCIKPj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX3BpcGVfY3JjLmgiCj4+ICAj
aW5jbHVkZSAiZGlzcGxheS9pbnRlbF9zcHJpdGUuaCIKPj4gKyNpbmNsdWRlICJkaXNwbGF5L2lu
dGVsX3ZnYS5oIgo+PiAgCj4+ICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKPj4g
ICNpbmNsdWRlICJnZW0vaTkxNV9nZW1faW9jdGxzLmgiCj4+IEBAIC0yNjksMTkgKzI2OSw2IEBA
IGludGVsX3RlYXJkb3duX21jaGJhcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Cj4+ICAJCXJlbGVhc2VfcmVzb3VyY2UoJmRldl9wcml2LT5tY2hfcmVzKTsKPj4gIH0KPj4gIAo+
PiAtLyogdHJ1ZSA9IGVuYWJsZSBkZWNvZGUsIGZhbHNlID0gZGlzYWJsZSBkZWNvZGVyICovCj4+
IC1zdGF0aWMgdW5zaWduZWQgaW50IGk5MTVfdmdhX3NldF9kZWNvZGUodm9pZCAqY29va2llLCBi
b29sIHN0YXRlKQo+PiAtewo+PiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IGNvb2tpZTsKPj4gLQo+PiAtCWludGVsX21vZGVzZXRfdmdhX3NldF9zdGF0ZShkZXZfcHJpdiwg
c3RhdGUpOwo+PiAtCWlmIChzdGF0ZSkKPj4gLQkJcmV0dXJuIFZHQV9SU1JDX0xFR0FDWV9JTyB8
IFZHQV9SU1JDX0xFR0FDWV9NRU0gfAo+PiAtCQkgICAgICAgVkdBX1JTUkNfTk9STUFMX0lPIHwg
VkdBX1JTUkNfTk9STUFMX01FTTsKPj4gLQllbHNlCj4+IC0JCXJldHVybiBWR0FfUlNSQ19OT1JN
QUxfSU8gfCBWR0FfUlNSQ19OT1JNQUxfTUVNOwo+PiAtfQo+PiAtCj4+ICBzdGF0aWMgaW50IGk5
MTVfcmVzdW1lX3N3aXRjaGVyb28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+PiAg
c3RhdGljIGludCBpOTE1X3N1c3BlbmRfc3dpdGNoZXJvbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKPj4gIAkJCQkgICBwbV9tZXNzYWdlX3Qgc3RhdGUpOwo+PiBAQCAtMzQ2LDE1ICsz
MzMsOCBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4+ICAKPj4gIAlpbnRlbF9iaW9zX2luaXQoaTkxNSk7Cj4+ICAK
Pj4gLQkvKiBJZiB3ZSBoYXZlID4gMSBWR0EgY2FyZHMsIHRoZW4gd2UgbmVlZCB0byBhcmJpdHJh
dGUgYWNjZXNzCj4+IC0JICogdG8gdGhlIGNvbW1vbiBWR0EgcmVzb3VyY2VzLgo+PiAtCSAqCj4+
IC0JICogSWYgd2UgYXJlIGEgc2Vjb25kYXJ5IGRpc3BsYXkgY29udHJvbGxlciAoIVBDSV9ESVNQ
TEFZX0NMQVNTX1ZHQSksCj4+IC0JICogdGhlbiB3ZSBkbyBub3QgdGFrZSBwYXJ0IGluIFZHQSBh
cmJpdHJhdGlvbiBhbmQgdGhlCj4+IC0JICogdmdhX2NsaWVudF9yZWdpc3RlcigpIGZhaWxzIHdp
dGggLUVOT0RFVi4KPj4gLQkgKi8KPj4gLQlyZXQgPSB2Z2FfY2xpZW50X3JlZ2lzdGVyKHBkZXYs
IGk5MTUsIE5VTEwsIGk5MTVfdmdhX3NldF9kZWNvZGUpOwo+PiAtCWlmIChyZXQgJiYgcmV0ICE9
IC1FTk9ERVYpCj4+ICsJcmV0ID0gaW50ZWxfdmdhX3JlZ2lzdGVyKGk5MTUpOwo+PiArCWlmIChy
ZXQpCj4+ICAJCWdvdG8gb3V0Owo+PiAgCj4+ICAJaW50ZWxfcmVnaXN0ZXJfZHNtX2hhbmRsZXIo
KTsKPj4gQEAgLTQxNiw3ICszOTYsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRf
cHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ICAJaW50ZWxfcG93ZXJfZG9t
YWluc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwo+PiAgCXZnYV9zd2l0Y2hlcm9vX3VucmVnaXN0ZXJf
Y2xpZW50KHBkZXYpOwo+PiAgY2xlYW51cF92Z2FfY2xpZW50Ogo+PiAtCXZnYV9jbGllbnRfcmVn
aXN0ZXIocGRldiwgTlVMTCwgTlVMTCwgTlVMTCk7Cj4+ICsJaW50ZWxfdmdhX3VucmVnaXN0ZXIo
aTkxNSk7Cj4+ICBvdXQ6Cj4+ICAJcmV0dXJuIHJldDsKPj4gIH0KPj4gQEAgLTQzMCw3ICs0MTAs
NyBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKPj4gIAlpbnRlbF9iaW9zX2RyaXZlcl9yZW1vdmUoaTkxNSk7Cj4+
ICAKPj4gIAl2Z2Ffc3dpdGNoZXJvb191bnJlZ2lzdGVyX2NsaWVudChwZGV2KTsKPj4gLQl2Z2Ff
Y2xpZW50X3JlZ2lzdGVyKHBkZXYsIE5VTEwsIE5VTEwsIE5VTEwpOwo+PiArCWludGVsX3ZnYV91
bnJlZ2lzdGVyKGk5MTUpOwo+PiAgCj4+ICAJaW50ZWxfY3NyX3Vjb2RlX2ZpbmkoaTkxNSk7Cj4+
ICB9Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+PiBpbmRleCBlYTUzZGZlMmZiYTAuLjFjYmYz
OTk4YjM2MSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4+IEBAIC0yMyw3ICsyMyw2
IEBACj4+ICAgKi8KPj4gIAo+PiAgI2luY2x1ZGUgPGxpbnV4L2NvbnNvbGUuaD4KPj4gLSNpbmNs
dWRlIDxsaW51eC92Z2FhcmIuaD4KPj4gICNpbmNsdWRlIDxsaW51eC92Z2Ffc3dpdGNoZXJvby5o
Pgo+PiAgCj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9kcnYuaD4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9zdXNwZW5kLmMKPj4gaW5kZXggODUwOGEwMWFkOGI5Li4yYjIwODZkZWYwZjEgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jCj4+IEBAIC0yOCw2ICsyOCw3IEBACj4+ICAK
Pj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2ZiYy5oIgo+PiAgI2luY2x1ZGUgImRpc3BsYXkv
aW50ZWxfZ21idXMuaCIKPj4gKyNpbmNsdWRlICJkaXNwbGF5L2ludGVsX3ZnYS5oIgo+PiAgCj4+
ICAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPj4gICNpbmNsdWRlICJpOTE1X3JlZy5oIgo+PiBAQCAt
NTcsNyArNTgsNyBAQCBzdGF0aWMgdm9pZCBpOTE1X3Jlc3RvcmVfZGlzcGxheShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+ICAJaWYgKEhBU19GQkMoZGV2X3ByaXYpICYmIElO
VEVMX0dFTihkZXZfcHJpdikgPD0gNCAmJiAhSVNfRzRYKGRldl9wcml2KSkKPj4gIAkJSTkxNV9X
UklURShGQkNfQ09OVFJPTCwgZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZUZCQ19DT05UUk9MKTsKPj4g
IAo+PiAtCWk5MTVfcmVkaXNhYmxlX3ZnYShkZXZfcHJpdik7Cj4+ICsJaW50ZWxfdmdhX3JlZGlz
YWJsZShkZXZfcHJpdik7Cj4+ICB9Cj4+ICAKPj4gIGludCBpOTE1X3NhdmVfc3RhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cnVudGltZV9wbS5jCj4+IGluZGV4IDJmZDNjMDk3ZTFmNS4uYWQ3MTljOTYwMmFmIDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCj4+IEBAIC0yNyw3ICsyNyw2
IEBACj4+ICAgKi8KPj4gIAo+PiAgI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KPj4gLSNp
bmNsdWRlIDxsaW51eC92Z2FhcmIuaD4KPj4gIAo+PiAgI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQu
aD4KPj4gIAo+PiAtLSAKPj4gMi4yMC4xCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
