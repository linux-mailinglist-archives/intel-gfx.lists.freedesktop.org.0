Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C2043DBF
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FB8E89B62;
	Thu, 13 Jun 2019 15:45:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4831D89B68
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:45:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 08:44:54 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2019 08:44:53 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-22-tvrtko.ursulin@linux.intel.com>
 <156043514826.17012.14040878897383864996@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <793f0429-86ac-e5c6-423f-1a2b22acab26@linux.intel.com>
Date: Thu, 13 Jun 2019 16:44:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156043514826.17012.14040878897383864996@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 21/28] drm/i915/gtt: Reduce source verbosity
 by caching repeated dereferences
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

Ck9uIDEzLzA2LzIwMTkgMTU6MTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEzIDE0OjM1OjMyKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBUaGVyZSBpcyBhIGxvdCBvZiBjb2RlIGlu
IGk5MTVfZ2VtX2d0dC5jIHdoaWNoIHJlcGVhdGFkbHkgZGVyZWZlcmVuY2VzCj4+IGVpdGhlciBn
Z3R0IG9yIHBwZ3R0IGluIG9yZGVyIHRvIGdldCB0byB0aGUgdm0uIENhY2hlIHRob3NlIGFjY2Vz
c2VzIGluCj4+IGxvY2FsIHZhcmlhYmxlcyBmb3IgYmV0dGVyIHJlYWRhYmlsaXR5Lgo+IAo+IFRo
ZXJlIGlzbid0IGEgZGVyZWZlcmVuY2UgdGhvdWdoLCBpdCdzIGp1c3QgdXNpbmcgdGhlIGJhc2Ug
c3RydWN0LiBNZWguCj4gCj4gSSBkb24ndCByZWFsbHkgbWluZCwgYnV0IEkgY2hvc2UgdG8gd3Jp
dGUgaXQgdGhlIG90aGVyIHdheSwgc3BlY2lmaWNhbGx5Cj4gdXNpbmcgdm0gdG8ga2VlcCBpdCBz
aG9ydC4KPiAKPiBBdCB0aGUgZW5kIG9mIHRoZSBkYXksIHRoZSBjb21waWxlciAqc2hvdWxkKiBl
bGltaW5hdGUgdGhlIHJlZHVuZGFudAo+IGxvY2FsLCBzbyBpdCBpcyBtZXJlbHkgYSBtYXR0ZXIg
b2Ygd2hpY2ggcmVhZGVycyBwcmVmZXIuIEkgdGhpbmsgSSBzdGlsbAo+IGhhdmUgYSBzbGlnaHQg
cHJlZmVyZW5jZSB0byB1c2luZyBwcGd0dCB0aHJvdWdob3V0IHJhdGhlciB0aGFuIG1peGluZwo+
IHBwZ3R0IGFuZCB2bSBmb3IgdGhlIHNhbWUgb2JqZWN0LgoKQWdyZWVkLiBJJ2xsIGRyb3AgaXQu
IEl0IHdhcyBhIHNpbGx5IGhvLWh1bSBtb21lbnQgb2YgbWlzZ3VpZGVkIG9wdGltaXNtIApob3cg
aXQgd2lsbCBzYXZlIHNvbWUgbGluZSB3cmFwcyBhbmQgdGhlbiBpdCBkaWRuJ3QgZXZlbiBkbyB0
aGF0LgoKPj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMg
fCAyNTQgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAx
MzQgaW5zZXJ0aW9ucygrKSwgMTIwIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwo+PiBpbmRleCA1MTZmZmM0YTUyMWEuLmQwOWE0ZDliNzFkYSAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4gQEAgLTEwMDQsMTAgKzEwMDQsMTEg
QEAgZ2VuOF9wcGd0dF9pbnNlcnRfcHRlX2VudHJpZXMoc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0
LAo+PiAgIHsKPj4gICAgICAgICAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKnBkOwo+PiAg
ICAgICAgICBjb25zdCBnZW44X3B0ZV90IHB0ZV9lbmNvZGUgPSBnZW44X3B0ZV9lbmNvZGUoMCwg
Y2FjaGVfbGV2ZWwsIGZsYWdzKTsKPj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNl
ICp2bSA9ICZwcGd0dC0+dm07Cj4+ICAgICAgICAgIGdlbjhfcHRlX3QgKnZhZGRyOwo+PiAgICAg
ICAgICBib29sIHJldDsKPj4gICAKPj4gLSAgICAgICBHRU1fQlVHX09OKGlkeC0+cGRwZSA+PSBp
OTE1X3BkcGVzX3Blcl9wZHAoJnBwZ3R0LT52bSkpOwo+PiArICAgICAgIEdFTV9CVUdfT04oaWR4
LT5wZHBlID49IGk5MTVfcGRwZXNfcGVyX3BkcCh2bSkpOwo+PiAgICAgICAgICBwZCA9IHBkcC0+
cGFnZV9kaXJlY3RvcnlbaWR4LT5wZHBlXTsKPj4gICAgICAgICAgdmFkZHIgPSBrbWFwX2F0b21p
Y19weChwZC0+cGFnZV90YWJsZVtpZHgtPnBkZV0pOwo+PiAgICAgICAgICBkbyB7Cj4+IEBAIC0x
MDM4LDcgKzEwMzksNyBAQCBnZW44X3BwZ3R0X2luc2VydF9wdGVfZW50cmllcyhzdHJ1Y3QgaTkx
NV9wcGd0dCAqcHBndHQsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgYnJlYWs7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH0KPj4gICAKPj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBHRU1fQlVHX09OKGlkeC0+cGRwZSA+PSBp
OTE1X3BkcGVzX3Blcl9wZHAoJnBwZ3R0LT52bSkpOwo+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIEdFTV9CVUdfT04oaWR4LT5wZHBlID49IGk5MTVfcGRwZXNfcGVyX3BkcCh2bSkp
Owo+IAo+IEkgZG9uJ3Qgc2VlIGFueSBjb2RlIGhlcmUuIDotcAoKSSBkb24ndCBnZXQgaXQsIG1h
eWJlIGZvciB0aGUgYmV0dGVyLiA6KQoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
