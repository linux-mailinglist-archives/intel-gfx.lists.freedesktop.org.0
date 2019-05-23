Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADDC27C04
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 13:43:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9130F89DFE;
	Thu, 23 May 2019 11:43:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62DF789DFE;
 Thu, 23 May 2019 11:43:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16653961-1500050 for multiple; Thu, 23 May 2019 12:43:32 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190523063701.4549-1-tvrtko.ursulin@linux.intel.com>
References: <20190522163141.29252-1-tvrtko.ursulin@linux.intel.com>
 <20190523063701.4549-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <155861181171.28319.12323672937395472312@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 12:43:31 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/i915: Restore some BAT
 coverage
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMyAwNzozNzowMSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEVuZ2luZSBlbnVtZXJh
dGVkIHRlc3QgbmFtZXMgaGF2ZSBjaGFuZ2VkIHNvIGZhc3QtZmVlZGJhY2sudGVzdGxpc3QgbmVl
ZHMKPiB0byBiZSB1cGRhdGVkLiBIb3dldmVyIGxpc3RpbmcgYWxsIGVuZ2luZXMgdGhlcmUgd29u
J3Qgc2NhbGUuIFNvIGluc3RlYWQKPiBhZGQgbmV3IHRlc3RzIGNhc2VzIHdoaWNoIGl0ZXJhdGUg
YWxsIGVuZ2luZXMgaW50ZXJuYWxseS4KPiAKPiB2MjoKPiAgKiBGaXggYmFzaWMtYWxsIHRlc3Qg
bmFtZS4KPiAgKiBGaXggcGFyYW1zIHRvIGJhc2ljIChib29sIGZhbHNlIHRvIHplcm8pLgo+ICAq
IFVzZSBJOTE1X0VYRUNfREVGQVVMVCBpbiBoYXNfZXh0ZW5kZWRfYnVzeV9pb2N0bCB0byB3b3Jr
YXJvdW5kIHN0YXRlZnVsCj4gICAgY29udGV4dHMgZm9yIG5vdy4KPiAgKiBIYXZlIG9ubHkgYmFz
aWMtYWxsIGluIEJBVC4gKENocmlzKQo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiAjIHYxCj4gUmV2aWV3ZWQtYnk6IEFuZGkgU2h5dGkg
PGFuZGkuc2h5dGlAaW50ZWwuY29tPiAjIHYxCj4gLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX2J1c3ku
YyAgICAgICAgICAgICAgICAgfCAxOSArKysrKysrKysrKy0tLS0KPiAgdGVzdHMvaTkxNS9nZW1f
ZXhlY19iYXNpYy5jICAgICAgICAgICB8IDMzICsrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
ICB0ZXN0cy9pbnRlbC1jaS9mYXN0LWZlZWRiYWNrLnRlc3RsaXN0IHwgMzEgKystLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMoKyksIDMzIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9idXN5LmMgYi90ZXN0
cy9pOTE1L2dlbV9idXN5LmMKPiBpbmRleCA3ODFhM2JmYWIxZDEuLmYzZWJiMzdhMzNiNCAxMDA2
NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9idXN5LmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9i
dXN5LmMKPiBAQCAtNDE3LDcgKzQxNyw3IEBAIHN0YXRpYyBib29sIGhhc19zZW1hcGhvcmVzKGlu
dCBmZCkKPiAgCj4gIHN0YXRpYyBib29sIGhhc19leHRlbmRlZF9idXN5X2lvY3RsKGludCBmZCkK
PiAgewo+IC0gICAgICAgaWd0X3NwaW5fdCAqc3BpbiA9IGlndF9zcGluX25ldyhmZCwgLmVuZ2lu
ZSA9IEk5MTVfRVhFQ19SRU5ERVIpOwo+ICsgICAgICAgaWd0X3NwaW5fdCAqc3BpbiA9IGlndF9z
cGluX25ldyhmZCwgLmVuZ2luZSA9IEk5MTVfRVhFQ19ERUZBVUxUKTsKCkkgdm90ZSBmb3IgaWd0
X3NwaW5fdCAqc3BpbiA9IGlndF9zcGluX25ldyhmZCk7IGZvciB1bHRyYS1mdW5raW5lc3MuCgpS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
