Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F60218B7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 14:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E584B89890;
	Fri, 17 May 2019 12:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B9CE89890;
 Fri, 17 May 2019 12:59:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 05:59:42 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 05:59:41 -0700
To: "Ser, Simon" <simon.ser@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
References: <20190516185840.19777-1-chris@chris-wilson.co.uk>
 <d3a0ad3da08f7cb2d73a117efee8c446e8498a40.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f168add9-199d-5670-c4dc-f0ec28914c0e@linux.intel.com>
Date: Fri, 17 May 2019 13:59:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d3a0ad3da08f7cb2d73a117efee8c446e8498a40.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] benchmarks/gem_wsim:
 Randomise random seed
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA1LzIwMTkgMTE6NTUsIFNlciwgU2ltb24gd3JvdGU6Cj4gT24gVGh1LCAyMDE5LTA1
LTE2IGF0IDE5OjU4ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+IFRvIGF2b2lkIGhpdHRp
bmcgdGhlIHNhbWUgcnV0IG9uIGVhY2ggYmVuY2htYXJrIHJ1biwgc3RhcnQgd2l0aCBhIG5ldwo+
PiByYW5kb20gc2VlZC4gVG8gYWxsb3cgaGl0dGluZyB0aGUgc2FtZSBydXQgYWdhaW4sIGxldCBp
dCBiZSBzcGVjaWZpZWQKPj4gYnkgdGhlIHVzZXIuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiBDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgYmVuY2htYXJrcy9nZW1fd3Np
bS5jIHwgNiArKysrKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9iZW5jaG1hcmtzL2dlbV93c2ltLmMgYi9iZW5j
aG1hcmtzL2dlbV93c2ltLmMKPj4gaW5kZXggNDg1NjhjZTQwLi5jZjJhNDQ3NDYgMTAwNjQ0Cj4+
IC0tLSBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+PiArKysgYi9iZW5jaG1hcmtzL2dlbV93c2lt
LmMKPj4gQEAgLTIyODIsOCArMjI4Miw5IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJn
dikKPj4gICAJaWd0X3JlcXVpcmUoZmQpOwo+PiAgIAo+PiAgIAlpbml0X2Nsb2NrcygpOwo+PiAr
CXNyYW5kKHRpbWUoTlVMTCkpOwo+IAo+IE1heWJlIHRoZSBzZWVkIHVzZWQgZm9yIHRoZSBydW4g
c2hvdWxkIGJlIHByaW50ZWQgdG8gc3RkZXJyLCBzbyB0aGF0J3MKPiBpdCdzIGVhc3kgdG8gcmUt
cnVuIGEgZmFpbHVyZT8KClNvdW5kcyByaWdodC4gQnV0IEkgd291bGRuJ3Qgc2F5IHN0ZGVyciBh
bmQgd291bGQgbWFrZSBpdCBjb25kaXRpb25hbCBvbiAKdmVyYm9zaXR5IGxldmVsOgoKaWYgKHZl
cmJvc2UpCglwcmludGYoLi4uKQoKQ2hyaXMsIHdvdWxkIHlvdSBsaWtlIG1lIHRvIHRha2Ugb3Zl
ciB0aGlzIGpvYmJ5IG9mIGZpeGluZyBhbmQgaW1wcm92aW5nIApyYW5kb20gc2VlZGluZy9oYW5k
bGluZz8gSWYgeW91IGdvdCB0b28gbXVjaCBvbiB5b3VyIHBsYXRlLi4KClJlZ2FyZHMsCgpUdnJ0
a28KCj4gCj4+IC0Jd2hpbGUgKChjID0gZ2V0b3B0KGFyZ2MsIGFyZ3YsICJocXYyUlNIeEdkYzpu
OnI6dzpXOmE6dDpiOnA6IikpICE9IC0xKSB7Cj4+ICsJd2hpbGUgKChjID0gZ2V0b3B0KGFyZ2Ms
IGFyZ3YsICJocXYyUlNIeEdkYzpuOnI6dzpXOmE6dDpiOnA6czoiKSkgIT0gLTEpIHsKPj4gICAJ
CXN3aXRjaCAoYykgewo+PiAgIAkJY2FzZSAnVyc6Cj4+ICAgCQkJaWYgKG1hc3Rlcl93b3JrbG9h
ZCA+PSAwKSB7Cj4+IEBAIC0yMzAwLDYgKzIzMDEsOSBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hh
ciAqKmFyZ3YpCj4+ICAgCQljYXNlICdwJzoKPj4gICAJCQlwcmlvID0gYXRvaShvcHRhcmcpOwo+
PiAgIAkJCWJyZWFrOwo+PiArCQljYXNlICdzJzoKPj4gKwkJCXNyYW5kKGF0b2kob3B0YXJnKSk7
Cj4+ICsJCQlicmVhazsKPj4gICAJCWNhc2UgJ2EnOgo+PiAgIAkJCWlmIChhcHBlbmRfd29ya2xv
YWRfYXJnKSB7Cj4+ICAgCQkJCWlmICh2ZXJib3NlKQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+IApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
