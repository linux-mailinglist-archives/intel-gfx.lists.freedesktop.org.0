Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D19E10D86E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 17:32:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D7876E93A;
	Fri, 29 Nov 2019 16:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C9B6E93A
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 16:32:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19395989-1500050 for multiple; Fri, 29 Nov 2019 16:31:39 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <d3295ef5-84f9-1e8c-1685-70e419174f40@linux.intel.com>
References: <20191129151845.1092933-1-chris@chris-wilson.co.uk>
 <d3295ef5-84f9-1e8c-1685-70e419174f40@linux.intel.com>
Message-ID: <157504509698.11312.5825252524031630311@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 29 Nov 2019 16:31:37 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Take timeline->mutex to walk
 list-of-requests
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yOSAxNjoyNTowOCkKPiAKPiBPbiAyOS8x
MS8yMDE5IDE1OjE4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaG91Z2ggdGhlIGNvbnRleHQg
aXMgY2xvc2VkIGFuZCBzbyBubyBtb3JlIHJlcXVlc3RzIGNhbiBiZSBhZGRlZCB0byB0aGUKPiA+
IHRpbWVsaW5lLCByZXRpcmVtZW50IGNhbiBzdGlsbCBiZSByZW1vdmluZyByZXF1ZXN0cy4gSXQg
Y2FuIGV2ZW4gYmUKPiA+IHJlbW92aW5nIHRoZSB2ZXJ5IHJlcXVlc3Qgd2UgYXJlIGluc3BlY3Rp
bmcgYW5kIHNvIGNhdXNlIHVzIHRvIHdhbmRlcgo+ID4gaW50byBkZWFkIGxpbmtzLgo+ID4gCj4g
PiBTZXJpYWxpc2Ugd2l0aCB0aGUgcmV0aXJlbWVudCBieSB0YWtpbmcgdGhlIHRpbWVsaW5lLT5t
dXRleCB1c2VkIGZvcgo+ID4gZ3VhcmRpbmcgdGhlIHRpbWVsaW5lLT5yZXF1ZXN0cyBsaXN0Lgo+
ID4gCj4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEyNDA0Cj4gPiBGaXhlczogNGEzMTc0MTUyMTQ3ICgiZHJtL2k5MTUvZ2VtOiBSZWZp
bmUgb2NjdXBhbmN5IHRlc3QgaW4ga2lsbF9jb250ZXh0KCkiKQo+ID4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogVHZydGtvIFVy
c3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IENjOiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRo
ZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGlu
ZW5AbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMgfCA0ICsrLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gPiBpbmRleCBhMTc5ZTE3MGM5MzYuLjlmMWRjOTZi
MTBhNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
b250ZXh0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0LmMKPiA+IEBAIC00MDMsNyArNDAzLDcgQEAgc3RhdGljIHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmFjdGl2ZV9lbmdpbmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+ID4gICAgICAgaWYg
KCFjZS0+dGltZWxpbmUpCj4gPiAgICAgICAgICAgICAgIHJldHVybiBOVUxMOwo+ID4gICAKPiA+
IC0gICAgIHJjdV9yZWFkX2xvY2soKTsKPiA+ICsgICAgIG11dGV4X2xvY2soJmNlLT50aW1lbGlu
ZS0+bXV0ZXgpOwo+ID4gICAgICAgbGlzdF9mb3JfZWFjaF9lbnRyeV9yZXZlcnNlKHJxLCAmY2Ut
PnRpbWVsaW5lLT5yZXF1ZXN0cywgbGluaykgewo+ID4gICAgICAgICAgICAgICBpZiAoaTkxNV9y
ZXF1ZXN0X2NvbXBsZXRlZChycSkpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4g
PiBAQCAtNDEzLDcgKzQxMyw3IEBAIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICphY3Rp
dmVfZW5naW5lKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiA+ICAgICAgICAgICAgICAgaWYg
KGVuZ2luZSkKPiA+ICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ICAgICAgIH0KPiA+
IC0gICAgIHJjdV9yZWFkX3VubG9jaygpOwo+ID4gKyAgICAgbXV0ZXhfdW5sb2NrKCZjZS0+dGlt
ZWxpbmUtPm11dGV4KTsKPiA+ICAgCj4gPiAgICAgICByZXR1cm4gZW5naW5lOwo+ID4gICB9Cj4g
PiAKPiAKPiBJZiByZXRpcmUgd291bGQgdXNlIGxpc3RfZGVsX3JjdSBjb3VsZCB3ZSBnZXQgYXdh
eSB3aXRoIG5vIGxvY2tpbmcgaGVyZT8gCj4gKEFuZCBsaXN0X2FkZF90YWlsX3JjdSB3aGVuIGFk
ZGluZyB0byB0aGUgdGltZWxpbmUuKSBJdCdzIG5vdCBhIAo+IGNvbnRlbmRlZCBwYXRoIEkga25v
dy4gU28gdGhpcyB3b3JrcyBhcyB3ZWxsLgoKT2ZmLXRoZS10b3Agb2YgbXkgaGVhZCwgSSB0aGlu
ayByY3VsaXN0IHN0aWxsIG9ubHkgYWxsb3dzIGZvcndhcmQgd2Fsa3MsCmF0IGxlYXN0IHRoZXJl
IGFyZSBubyBfcmV2ZXJzZV9yY3UgYW5kIEkgdGhpbmsgdGhlIGl0ZXJhdG9yIHNhZmV0eQpoaW5n
ZXMgdXBvbiB0aGUgb3JkZXIgaW4gd2hpY2ggdGhlIHBvaW50ZXJzIGFyZSB1cGRhdGVkIGluIGxp
c3RfYWRkLgoKTG9ja2xlc3MgYW5kIGNhY2hlLWZyaWVuZGx5IHJlcGxhY2VtZW50cyBzb3VnaHQ7
IGFwcGx5IHdpdGhpbi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
