Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DBAFE862
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 00:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D9F16EB43;
	Fri, 15 Nov 2019 23:04:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 536AD6EB43
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 23:04:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 15:04:12 -0800
X-IronPort-AV: E=Sophos;i="5.68,309,1569308400"; d="scan'208";a="195532354"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.167])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 15:04:12 -0800
Date: Fri, 15 Nov 2019 15:04:07 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191115230407.wcywmy2coeks7gta@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191111205024.22853-1-lucas.demarchi@intel.com>
 <20191111205024.22853-3-lucas.demarchi@intel.com>
 <20191115205249.GA21445@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115205249.GA21445@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dsb: fix extra warning on
 error path handling
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMTUsIDIwMTkgYXQgMTI6NTI6NDlQTSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPk9uIE1vbiwgTm92IDExLCAyMDE5IGF0IDEyOjUwOjI1UE0gLTA4MDAsIEx1Y2FzIERlIE1h
cmNoaSB3cm90ZToKPj4gV2hlbiB3ZSBjYWxsIGludGVsX2RzYl9nZXQoKSwgdGhlIGRzYiBpbml0
aWFsaXphdGlvbiBtYXkgZmFpbCBmb3IKPj4gdmFyaW91cyByZWFzb25zLiBXZSBhbHJlYWR5IGxv
ZyB0aGUgZXJyb3IgbWVzc2FnZSBpbiB0aGF0IHBhdGgsIG1ha2luZwo+PiBpdCB1bm5lY2Vzc2Fy
eSB0byB0cmlnZ2VyIGEgd2FybmluZyB0aGF0IHJlZmNvdW50ID09IDAgd2hlbiBjYWxsaW5nCj4+
IGludGVsX2RzYl9wdXQoKS4KPj4KPj4gU28gaGVyZSB3ZSBzaW1wbGlmeSB0aGUgbG9naWMgYW5k
IGRvIGxhenkgc2h1dGRvd246IGxlYXZpbmcgdGhlIGV4dHJhCj4+IHJlZmNvdW50IGFsaXZlIHNv
IHdoZW4gd2UgY2FsbCBpbnRlbF9kc2JfcHV0KCkgd2UgZW5kIHVwIGNhbGxpbmcKPj4gaTkxNV92
bWFfdW5waW5fYW5kX3JlbGVhc2UoKS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4KPkR1ZSB0byB0aGUgbGFjayBvZiBhbnkg
YWN0dWFsIGNvbmN1cnJlbmN5LCBpdCBzZWVtcyBsaWtlIHdlIGNvdWxkCj5ldmVudHVhbGx5IGdl
dCByaWQgb2YgdGhlIHdob2xlIGdldC9wdXQgZGVzaWduIGFuZCBqdXN0IGFsbG9jYXRlIHRoZQo+
YnVmZmVyIG9uY2UgKGFuZCBwaW4gaXQgZHVyaW5nIHRoZSBwcmVwYXJlIHN0ZXApLiAgQnV0IHRo
aXMgc2VlbXMgZ29vZAoKSSBhc3N1bWVkIHRoaXMgd2FzIGRlc2lnbmVkIHRvIGFjY2VwdCB0aGUg
cGF0dGVybgoKaW50ZWxfZHNiX2dldCgpOwppbnRlbF9kc2JfZ2V0KCk7CmludGVsX2RzYl9wdXQo
KTsKaW50ZWxfZHNiX3B1dCgpOwoKPmVub3VnaCBmb3Igbm93Lgo+Cj5SZXZpZXdlZC1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCnRoYW5rcwpMdWNhcyBEZSBNYXJj
aGkKCj4KPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNi
LmMgfCAyMSArKysrKysrKysrKysrKy0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMKPj4gaW5kZXggNGZlZWJiZWIwYjBjLi44NThhZjZiZTljMzYgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+PiBAQCAtMTAyLDYg
KzEwMiw3IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4+ICAJc3Ry
dWN0IGludGVsX2RzYiAqZHNiID0gJmNydGMtPmRzYjsKPj4gIAlzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqOwo+PiAgCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+PiArCXUzMiAqYnVmOwo+
PiAgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+Pgo+PiAgCWlmICghSEFTX0RTQihpOTE1KSkK
Pj4gQEAgLTExMCw3ICsxMTEsNiBAQCBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQo+PiAgCWlmICgrK2RzYi0+cmVmY291bnQgIT0gMSkKPj4gIAkJcmV0dXJuIGRzYjsKPj4K
Pj4gLQlkc2ItPmlkID0gRFNCMTsKPj4gIAl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXQo
Jmk5MTUtPnJ1bnRpbWVfcG0pOwo+Pgo+PiAgCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVf
aW50ZXJuYWwoaTkxNSwgRFNCX0JVRl9TSVpFKTsKPj4gQEAgLTEyMywyMiArMTIzLDI5IEBAIGlu
dGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4+ICAJaWYgKElTX0VSUih2bWEp
KSB7Cj4+ICAJCURSTV9FUlJPUigiVm1hIGNyZWF0aW9uIGZhaWxlZFxuIik7Cj4+ICAJCWk5MTVf
Z2VtX29iamVjdF9wdXQob2JqKTsKPj4gLQkJZHNiLT5yZWZjb3VudC0tOwo+PiAgCQlnb3RvIGVy
cjsKPj4gIAl9Cj4+Cj4+IC0JZHNiLT5jbWRfYnVmID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAo
dm1hLT5vYmosIEk5MTVfTUFQX1dDKTsKPj4gLQlpZiAoSVNfRVJSKGRzYi0+Y21kX2J1ZikpIHsK
Pj4gKwlidWYgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcCh2bWEtPm9iaiwgSTkxNV9NQVBfV0Mp
Owo+PiArCWlmIChJU19FUlIoYnVmKSkgewo+PiAgCQlEUk1fRVJST1IoIkNvbW1hbmQgYnVmZmVy
IGNyZWF0aW9uIGZhaWxlZFxuIik7Cj4+IC0JCWk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZ2
bWEsIDApOwo+PiAtCQlkc2ItPmNtZF9idWYgPSBOVUxMOwo+PiAtCQlkc2ItPnJlZmNvdW50LS07
Cj4+ICAJCWdvdG8gZXJyOwo+PiAgCX0KPj4gKwo+PiArCWRzYi0+aWQgPSBEU0IxOwo+PiAgCWRz
Yi0+dm1hID0gdm1hOwo+PiArCWRzYi0+Y21kX2J1ZiA9IGJ1ZjsKPj4KPj4gIGVycjoKPj4gKwkv
Kgo+PiArCSAqIFNldCBjbWRfYnVmIHRvIE5VTEwgc28gdGhlIHdyaXRlcyBwYXNzLXRocm91Z2gs
IGJ1dCBsZWF2ZSB0aGUKPj4gKwkgKiBkYW5nbGluZyByZWZjb3VudCB0byBiZSByZW1vdmVkIGxh
dGVyIGJ5IHRoZSBjb3JyZXNwb25kaW5nCj4+ICsJICogaW50ZWxfZHNiX3B1dCgpOiB0aGUgaW1w
b3J0YW50IGVycm9yIG1lc3NhZ2Ugd2lsbCBhbHJlYWR5IGJlCj4+ICsJICogbG9nZ2VkIGFib3Zl
Lgo+PiArCSAqLwo+PiArCWRzYi0+Y21kX2J1ZiA9IE5VTEw7Cj4+ICAJaW50ZWxfcnVudGltZV9w
bV9wdXQoJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpOwo+PiArCj4+ICAJcmV0dXJuIGRzYjsK
Pj4gIH0KPj4KPj4gLS0KPj4gMi4yNC4wCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+Cj4tLSAKPk1hdHQgUm9wZXIKPkdyYXBoaWNz
IFNvZnR3YXJlIEVuZ2luZWVyCj5WVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50Cj5JbnRlbCBD
b3Jwb3JhdGlvbgo+KDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
