Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB181022D7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 12:18:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339696E88F;
	Tue, 19 Nov 2019 11:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A72A36E195
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 11:18:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19256365-1500050 for multiple; Tue, 19 Nov 2019 11:17:58 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <874kz0xhu1.fsf@gaia.fi.intel.com>
References: <20191119100929.2628356-1-chris@chris-wilson.co.uk>
 <20191119100929.2628356-6-chris@chris-wilson.co.uk>
 <874kz0xhu1.fsf@gaia.fi.intel.com>
Message-ID: <157416227618.10169.142493506514347097@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 19 Nov 2019 11:17:56 +0000
Subject: Re: [Intel-gfx] [PATCH 06/17] drm/i915/gem: Merge GGTT vma flush
 into a single loop
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTE5IDEwOjQ4OjIyKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBXZSBvbmx5IG5lZWQg
dGhlIG9uZSBsb29wIHRvIGZpbmQgdGhlIGRpcnR5IHZtYSBmbHVzaCB0aGVtLCBhbmQgdGhlaXIK
PiA+IGNoaXBzZXQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuYyB8IDEyICsrKy0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuYwo+ID4gaW5kZXggZGIxMDNkM2M4NzYwLi42M2JkM2ZmODRmNWUg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+
ID4gQEAgLTI3OSwxOCArMjc5LDEyIEBAIGk5MTVfZ2VtX29iamVjdF9mbHVzaF93cml0ZV9kb21h
aW4oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiA+ICAKPiA+ICAgICAgIHN3aXRj
aCAob2JqLT53cml0ZV9kb21haW4pIHsKPiA+ICAgICAgIGNhc2UgSTkxNV9HRU1fRE9NQUlOX0dU
VDoKPiA+IC0gICAgICAgICAgICAgZm9yX2VhY2hfZ2d0dF92bWEodm1hLCBvYmopCj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgaW50ZWxfZ3RfZmx1c2hfZ2d0dF93cml0ZXModm1hLT52bS0+Z3Qp
Owo+ID4gLQo+ID4gLSAgICAgICAgICAgICBpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaChvYmotPmZy
b250YnVmZmVyLCBPUklHSU5fQ1BVKTsKPiA+IC0KPiA+ICAgICAgICAgICAgICAgZm9yX2VhY2hf
Z2d0dF92bWEodm1hLCBvYmopIHsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBpZiAodm1hLT5p
b21hcCkKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gLQo+
IAo+IElzIHRoZSBzdG9yeSB3aXRoIGlvbWFwIHRvIGp1c3QgYXZvaWQgZnJhZ2lsaXR5IGFuZAo+
IGdvIHdpdGggdGhlIHNhbWUgcGF0aCwgZXZlbiBpZiB0aGUgZmx1c2hlcyB3b3VsZCBiZQo+IHN1
cGVyZmx1b3VzPwoKVGhlIHN1YnRsZSBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIHR3byBsb29wcyBp
cyB0aGUgZmlyc3QgaXMganVzdApmbHVzaGluZyBhbnl0aGluZyB0aGUgdXNlciBoYWQgdGhlaXIg
aGFuZHMgb24sIGFuZCB0aGUgc2Vjb25kIGFueXRoaW5nCnRoZSBrZXJuZWwgd2FzIGRvaW5nIGZv
ciBpdHNlbGYuCgpJIGRvbid0IHRoaW5rIGl0J3MgdGhhdCBzaW1wbGUuCgpGb3IgdXNlcnNwYWNl
IHRvIGludm9rZSB0aGlzIGZ1bmN0aW9uLCBpdCBoYXMgY2FsbGVkIGEgc2V0LWRvbWFpbiBpb2N0
bC4KU28gaXQgc2hvdWxkIGVxdWFsbHkgYmUgbWFya2luZyBpdHMgd3JpdGUgd2l0aCBhIHNldC1k
b21haW4gaW9jdGwgZm9yCnNldC1kb21haW4gdG8gZXZlbiB3b3JrLiBBdCB3aGljaCBwb2ludCwg
d2UgbWlnaHQgYXMgd2VsbCBqdXN0IHNheSB0aGF0CnRoaXMgY2FuIG9ubHkgd29yayBpZiB1c2Vy
c3BhY2UgZG9lcyBpdHMgZHVlIGRpbGlnZW5jZSBpbiB1c2luZwpzZXQtZG9tYWluIG9yIHVzZXJz
cGFjZSBoYXMgdG8gY2FyZSBhYm91dCB0aGUgQ1BVIGNhY2hlcyBpdHNlbGYuCgpTbyBnaXZlbiB0
aGF0IHVzZXJzcGFjZSBoYXMgdG8gdGFrZSBjYXJlIGFueXdheSwgSSBkb24ndCBzZWUgYW55IGhh
cm0KaGVyZSBpbiBza2lwcGluZyB0aGUgZmx1c2hlcyBpZiB3ZSBoYXZlIG5vdCBtYXJrZWQgdGhl
bSBhcyBkaXJ0eS4gTm93LApoYXZpbmcgc2FpZCB0aGF0LCB3ZSBzaG91bGQgdGhlbiBiZSBtYXJr
aW5nIGFsbCB0aGUgZ2d0dCBhcyBkaXJ0eSBmb3IgYQpzZXQtZG9tYWluIGdndHQgd3JpdGUuLi4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
