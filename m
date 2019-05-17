Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA7A02156D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 10:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596D68981B;
	Fri, 17 May 2019 08:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0544A897EF;
 Fri, 17 May 2019 08:37:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16585206-1500050 for multiple; Fri, 17 May 2019 09:37:44 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <3494094d-8199-6198-a8e0-927f78e736ad@linux.intel.com>
References: <20190516185840.19777-1-chris@chris-wilson.co.uk>
 <3494094d-8199-6198-a8e0-927f78e736ad@linux.intel.com>
Message-ID: <155808226222.12244.5911177411071200102@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 09:37:42 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Randomise random
 seed
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNyAwOToyODo0NikKPiAKPiBPbiAxNi8w
NS8yMDE5IDE5OjU4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUbyBhdm9pZCBoaXR0aW5nIHRo
ZSBzYW1lIHJ1dCBvbiBlYWNoIGJlbmNobWFyayBydW4sIHN0YXJ0IHdpdGggYSBuZXcKPiA+IHJh
bmRvbSBzZWVkLiBUbyBhbGxvdyBoaXR0aW5nIHRoZSBzYW1lIHJ1dCBhZ2FpbiwgbGV0IGl0IGJl
IHNwZWNpZmllZAo+ID4gYnkgdGhlIHVzZXIuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgYmVuY2htYXJrcy9nZW1f
d3NpbS5jIHwgNiArKysrKy0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYmVuY2htYXJrcy9nZW1fd3NpbS5j
IGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4gPiBpbmRleCA0ODU2OGNlNDAuLmNmMmE0NDc0NiAx
MDA2NDQKPiA+IC0tLSBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+ID4gKysrIGIvYmVuY2htYXJr
cy9nZW1fd3NpbS5jCj4gPiBAQCAtMjI4Miw4ICsyMjgyLDkgQEAgaW50IG1haW4oaW50IGFyZ2Ms
IGNoYXIgKiphcmd2KQo+ID4gICAgICAgaWd0X3JlcXVpcmUoZmQpOwo+ID4gICAKPiA+ICAgICAg
IGluaXRfY2xvY2tzKCk7Cj4gPiArICAgICBzcmFuZCh0aW1lKE5VTEwpKTsKPiA+ICAgCj4gPiAt
ICAgICB3aGlsZSAoKGMgPSBnZXRvcHQoYXJnYywgYXJndiwgImhxdjJSU0h4R2RjOm46cjp3Olc6
YTp0OmI6cDoiKSkgIT0gLTEpIHsKPiA+ICsgICAgIHdoaWxlICgoYyA9IGdldG9wdChhcmdjLCBh
cmd2LCAiaHF2MlJTSHhHZGM6bjpyOnc6VzphOnQ6YjpwOnM6IikpICE9IC0xKSB7Cj4gPiAgICAg
ICAgICAgICAgIHN3aXRjaCAoYykgewo+ID4gICAgICAgICAgICAgICBjYXNlICdXJzoKPiA+ICAg
ICAgICAgICAgICAgICAgICAgICBpZiAobWFzdGVyX3dvcmtsb2FkID49IDApIHsKPiA+IEBAIC0y
MzAwLDYgKzIzMDEsOSBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCj4gPiAgICAg
ICAgICAgICAgIGNhc2UgJ3AnOgo+ID4gICAgICAgICAgICAgICAgICAgICAgIHByaW8gPSBhdG9p
KG9wdGFyZyk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiArICAgICAgICAg
ICAgIGNhc2UgJ3MnOgo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHNyYW5kKGF0b2kob3B0YXJn
KSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgICAgICAgICAgICAgIGNh
c2UgJ2EnOgo+ID4gICAgICAgICAgICAgICAgICAgICAgIGlmIChhcHBlbmRfd29ya2xvYWRfYXJn
KSB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAodmVyYm9zZSkKPiA+IAo+
IAo+IE1ha2VzIHNlbnNlLCBqdXN0IHRoZSBoZWxwIHRleHQgbWlzc2luZy4KCllvdSB1c2UgJ3Mn
IGZvciBzc2V1LCBJIHRoaW5rIEkgKEluaXRpYWwgcmFuZG9tIHNlZWQpIGlzIG9uZSBvZiB0aGUg
ZmV3CmF2YWlsYWJsZS4KCj4gSSB3YXMgaW5pdGlhbGx5IGNvbmZ1c2VkIGF0IHNyYW5kIHdoZW4g
SSB0aG91Z2h0IEkgdXNlZCB5b3VyIAo+IGhhcnNfcGV0cnVza2EgbGlicmFyeSByb3V0aW5lcyBi
dXQgdGhlbiBzYXcgcmFuZCgpIGZlZWRzIHRoZSBzZWVkIGludG8gCj4gdGhvc2UuCgpZZWFoLCBJ
IGhhZCB0byBnbyBhbmQgZG91YmxlIGNoZWNrIHRoYXQgd2UgYWN0dWFsbHkgdXNlZCByYW5kKCkK
c29tZXdoZXJlIChhbmQgbm90IGp1c3QgaW4gbXkgaGFja3MgOikKLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
