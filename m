Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1A47AEE9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 19:07:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EDCE6E5D1;
	Tue, 30 Jul 2019 17:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876636E5D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 17:07:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17735736-1500050 for multiple; Tue, 30 Jul 2019 18:07:10 +0100
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <37c95ae1-e996-74c1-c08c-08fbcb5fd497@linux.intel.com>
References: <20190730035835.24103-1-ramalingam.c@intel.com>
 <66d3520c-205d-4631-5d35-f963e1d88e2f@linux.intel.com>
 <20190730080427.GA31013@intel.com>
 <37c95ae1-e996-74c1-c08c-08fbcb5fd497@linux.intel.com>
Message-ID: <156450642872.6373.8533889876738348685@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Jul 2019 18:07:08 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t v5] tests/i915/gem_exec_async: Update
 with engine discovery
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0zMCAxNjoyMDowOCkKPiAKPiBPbiAzMC8w
Ny8yMDE5IDA5OjA0LCBSYW1hbGluZ2FtIEMgd3JvdGU6Cj4gPiBPbiAyMDE5LTA3LTMwIGF0IDEz
OjA1OjI3ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiA+Pgo+ID4+IE9uIDMwLzA3LzIw
MTkgMDQ6NTgsIFJhbWFsaW5nYW0gQyB3cm90ZToKPiA+Pj4gK2Jvb2wgZ2VtX2ViX2ZsYWdzX2Fy
ZV9kaWZmZXJlbnRfZW5naW5lcyh1bnNpZ25lZCBlYl9mbGFnMSwgdW5zaWduZWQgZWJfZmxhZzIp
Cj4gPj4KPiA+PiBJIHRoaW5rIHdlIHRyeSB0byBhdm9pZCBpbXBsaWVkIGludCBidXQgbm90IHN1
cmUgaW4gdGhpcyBjYXNlIHdoZXRoZXIgdG8gc3VnZ2VzdCB1bnNpZ25lZCBpbnQsIGxvbmcgb3Ig
dWludDY0X3QuIElmIHdlIGFyZSBzdWdnZXN0aW5nIGluIHRoZSBmdW5jdGlvbiBuYW1lIHRoYXQg
YW55IGZsYWdzIGNhbiBiZSBwYXNzZWQgaW4gcGVyaGFwcyBpdCBzaG91bGQgYmUgdWludDY0X3Qg
YW5kIHRoZW4gd2UgZmlsdGVyIG9uIHRoZSBlbmdpbmUgYml0cyAoZmxhZ3MuLiAmPSBJOTE1X0VY
RUNfUklOR19NQVNLIHwgKDMgPDwgMTMpKSBiZWZvcmUgY2hlY2tpbmcuIFllYWgsIEkgdGhpbmsg
dGhhdCB3b3VsZCBiZSBtb3JlIHJvYnVzdCBmb3IgYSBnZW5lcmljIGhlbHBlci4KPiA+Pgo+ID4+
IEFuZCBhZGQgYSBkb2MgYmx1cmIgZm9yIHRoaXMgaGVscGVyIHNpbmNlIGl0IGlzIG5vbi1vYnZp
b3VzIHdoeSB3ZSB3ZW50IGZvciBkaWZmZXJlbnQgYW5kIG5vdCBzYW1lLiBNeSB0aGlua2luZyB3
YXMgdGhlIG5hbWUgZGlmZmVyZW50IHdvdWxkIGJlIGNsZWFyZXIgdG8gZXhwcmVzcyBraW5kIG9m
IHRyaS1zdGF0ZSBuYXR1cmUgb2YgdGhpcyBjaGVjay4gKEZsYWdzIG1heSBiZSBkaWZmZXJlbnQs
IGJ1dCBlbmdpbmVzIGFyZSBub3QgZ3VhcmFudGVlZCB0byBiZSBkaWZmZXJlbnQuKSBIYXZlIEkg
b3Zlci1jb21wbGljYXRlZCBpdD8gRG8gd2UgbmVlZCB0byBtYWtlIGl0IGNsZWFyZXIgYnkgbmFt
aW5nIGl0IGdlbV9lYl9mbGFnc19hcmVfZ3VhcmFudGVlZF9kaWZmZXJlbnRfZW5naW5lcz8gOikK
PiA+IEZvciBtZSBjdXJyZW50IHNoYXBlIGxvb2tzIGdvb2QgZW5vdWdoIDopIEkgd2lsbCB1c2Ug
dGhlIHVpbnQ2NF90IGZvcgo+ID4gcGFyYW1ldGVyIHR5cGVzLgo+IAo+IE9rYXkgYnV0IHBsZWFz
ZSBhZGQgc29tZSBkb2N1bWVudGF0aW9uIGZvciB0aGUgaGVscGVyICh3ZSd2ZSBiZWVuIHZlcnkg
Cj4gYmFkIGluIHRoaXMgd29yayBpbiB0aGlzIHJlc3BlY3Qgc28gZmFyKSBhbmQgYWxzbyBmaWx0
ZXIgb3V0IG5vbi1lbmdpbmUgCj4gc2VsZWN0aW9uIGJpdHMgZnJvbSB0aGUgZmxhZ3MgYmVmb3Jl
IGRvaW5nIHRoZSBjaGVja3MuCj4gCj4gPj4KPiA+Pj4gK3sKPiA+Pj4gKyAgIGlmIChlYl9mbGFn
MSA9PSBlYl9mbGFnMikKPiA+Pj4gKyAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+ID4+PiArCj4g
Pj4+ICsgICAvKiBERUZBVUxUIHN0YW5kcyBmb3IgUkVOREVSIGluIGxlZ2FjeSB1QVBJKi8KPiA+
Pj4gKyAgIGlmICgoZWJfZmxhZzEgPT0gSTkxNV9FWEVDX0RFRkFVTFQgJiYgZWJfZmxhZzIgPT0g
STkxNV9FWEVDX1JFTkRFUikgfHwKPiA+Pj4gKyAgICAgICAgKGViX2ZsYWcxID09IEk5MTVfRVhF
Q19SRU5ERVIgJiYgZWJfZmxhZzIgPT0gSTkxNV9FWEVDX0RFRkFVTFQpKQo+ID4+PiArICAgICAg
ICAgICByZXR1cm4gZmFsc2U7Cj4gPj4+ICsKPiA+Pj4gKyAgIC8qCj4gPj4+ICsgICAgKiBCU0Qg
Y291bGQgYmUgZXhlY3V0ZWQgb24gQlNEMS9CU0QyLiBTbyBCU0QgYW5kIEJTRC1uIGNvdWxkIGJl
Cj4gPj4+ICsgICAgKiBzYW1lIGVuZ2luZS4KPiA+Pj4gKyAgICAqLwo+ID4+PiArICAgaWYgKChl
Yl9mbGFnMSA9PSBJOTE1X0VYRUNfQlNEKSAmJgo+ID4+PiArICAgICAgIChlYl9mbGFnMiAmIH5J
OTE1X0VYRUNfQlNEX01BU0spID09IEk5MTVfRVhFQ19CU0QpCj4gPj4+ICsgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIGZhbHNlOwo+ID4+PiArCj4gPj4+ICsgICBpZiAoKGViX2ZsYWcyID09IEk5
MTVfRVhFQ19CU0QpICYmCj4gPj4+ICsgICAgICAgKGViX2ZsYWcxICYgfkk5MTVfRVhFQ19CU0Rf
TUFTSykgPT0gSTkxNV9FWEVDX0JTRCkKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICByZXR1cm4g
ZmFsc2U7Cj4gPj4KPiA+PiBJIHRoaW5rIHRoaXMgd29ya3MuCj4gPj4KPiA+PiBJJ3ZlIGFsc28g
Y29tZSB1cCB3aXRoIHNvbWV0aGluZyB0byBtZXJnZSB0aGUgdHdvIGNoZWNrcywgbm90IDEwMCUg
aXQncyBjb3JyZWN0IG9yIG1vcmUgcmVhZGFibGU6Cj4gPj4KPiA+PiBpZiAoKChmbGFnMSB8IGZs
YWcyKSAmIEk5MTVfRVhFQ19SSU5HX01BU0spKSA9PSBJOTE1X0VYRUNfQlNEICYmIC8vIGF0IGxl
YXN0IG9uZSBpcyBCU0QKPiA+PiAgICAgICEoKGZsYWcxIF4gZmxhZzIpICYgSTkxNV9FWEVDX1JJ
TkdfTUFTSykgJiYgLy8gYm90aCBhcmUgQlNECj4gPj4gICAgICAoKChmbGFnMSB8IGZsYWcyKSAm
ICgzIDw8IDEzKSkpICE9IDMpIC8vIG5vdCBndWFyYW50ZWVkIGRpZmZlcmVudAo+ID4+ICAgICAg
cmV0dXJuIGZhbHNlOwo+ID4+Cj4gPj4gV291bGQgbmVlZCBmZWVkaW5nIGluIHNvbWUgdmFsdWVz
IGFuZCBjaGVja2luZyBpdCB3b3JrcyBhcyBleHBlY3RlZC4gUHJvYmFibHkgbm90IHdvcnRoIGl0
IHNpbmNlIEkgZG91YnQgaXQgaXMgbW9yZSByZWFkYWJsZS4KPiA+IHJlYWRhYmlsaXR5IHBlcnNw
ZWN0aXZlLCB3ZSBjb3VsZCBzdGljayB0byB0aGUgb3JpZ2luYWwgdmVyc2lvbi4gSWYgd2UKPiA+
IHdhbnQgdG8gZ28gYWhlYWQgd2UgbmVlZCB0byBkbyBiZWxvdyBvcHM6Cj4gCj4gU3RpY2sgd2l0
aCB5b3VyIHZlcnNpb24gSSB0aGluay4KPiAKPiBDaHJpcyBpcyBiZWluZyBxdWlldCBCVFcuIEVp
dGhlciB3ZSBhcmUgYmVsb3cgaGlzIHJhZGFyIGFuZCBoZSdsbCBzY3JlYW0gCj4gbGF0ZXIsIG9y
IHdlIG1hbmFnZWQgdG8gYXBwcm9hY2ggc29tZXRoaW5nIGhlIGZpbmRzIHBhc3NhYmxlLiA7KQoK
SnVzdCB3YWl0aW5nIHVudGlsIEkgaGF2ZSB0byB1c2UgaXQgaW4gYW5nZXIgOikKCkd1dCBmZWVs
aW5nIGlzIHRoYXQgSSB3b24ndCBoYXZlIHRvIHVzZSBpdCwgaW4gdGhhdCBpZiBJIGhhdmUgdHdv
CmRpZmZlcmVudCB0aW1lbGluZXMgcG9pbnRpbmcgdG8gdGhlIHNhbWUgcGh5c2ljYWwgZW5naW5l
LCBkbyBJIHJlYWxseQpjYXJlPyBUaGUgc2l0dWF0aW9ucyB3aGVyZSBJIHdvdWxkIGhhdmUgZGlz
dGluY3QgZW5naW5lIG1hcHBpbmdzIHN0cmlrZQptZSBhcyBiZWluZyBjYXNlcyB3aGVyZSBJJ20g
dGVzdGluZyB0aW1lbGluZXM7IG90aGVyd2lzZSBJIHdvdWxkIGNyZWF0ZQpjb250ZXh0cyB3aXRo
IHRoZSBzYW1lIGN0eC0+ZW5naW5lc1tdIG1hcC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
