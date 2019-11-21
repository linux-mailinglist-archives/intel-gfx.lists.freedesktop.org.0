Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32470105B52
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 21:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03856E199;
	Thu, 21 Nov 2019 20:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74C776E199
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 20:46:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19291779-1500050 for multiple; Thu, 21 Nov 2019 20:46:37 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.0bmcv8r0xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20191121175850.19844-1-michal.wajdeczko@intel.com>
 <157435952570.2524.128073657420639188@skylake-alporthouse-com>
 <op.0bmcv8r0xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <157436919327.2524.3594605537448599891@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 21 Nov 2019 20:46:33 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ggtt: Move ballooning support to
 i915_ggtt
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTExLTIxIDE5OjEwOjQ2KQo+IE9uIFRodSwg
MjEgTm92IDIwMTkgMTk6MDU6MjUgKzAxMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMTEtMjEgMTc6NTg6NTApCj4gPj4gVG9kYXkgVkdUIGltcGxlbWVudHMgR0dUVCBiYWxsb29u
aW5nIG9uIGl0cyBvd24sIHVzaW5nIHNvbWUgcHJpdmF0ZQo+ID4+IHN0YXRpYyBzdHJ1Y3R1cmUg
dG8gaG9sZCBpbmZvIGFib3V0IHJlc2VydmVkIEdHVFQgbm9kZXMgYW5kIHRoZW4KPiA+PiBtYW51
YWxseSB1cGRhdGUgdm0ucmVzZXJ2ZWQgc2l6ZSBvd25lZCBieSBpOTE1X2dndHQuCj4gPj4KPiA+
PiBBcyBpOTE1X2dndHQgYWxyZWFkeSBtYW5hZ2VzIHNvbWUgY3VzdG9tIHJlc2VydmVkIG5vZGVz
IChsaWtlIHVjX2Z3KQo+ID4+IG1vdmUgVkdUIGJhbGxvb25pbmcgc3VwcG9ydCB0byBpOTE1X2dn
dHQgYW5kIG1ha2UgaXQgbW9yZSBnZW5lcmljCj4gPj4gZm9yIHBvc3NpYmxlIGZ1dHVyZSByZXVz
ZSBpbiBvdGhlciBzY2VuYXJpb3MuCj4gPj4KPiA+PiBBcyBhIGJvbnVzIHdlIGNhbiBkcm9wIGFu
b3RoZXIgcGxhY2UgaW4gZHJpdmVyIHRoYXQgdXNlcyBzdGF0aWMgZGF0YS4KPiA+Pgo+ID4+IFNp
Z25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29t
Pgo+ID4+IENjOiBYaW9uZyBaaGFuZyA8eGlvbmcueS56aGFuZ0BpbnRlbC5jb20+Cj4gPj4gQ2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4+IENjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+ID4+IC0tLQo+ID4+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDQ3ICsrKysrKysrKysrKysrKysrKysKPiA+PiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggfCAxOCArKysrKysrKwo+ID4+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZncHUuYyAgICB8IDcyICsrKysrKy0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4gPj4gIDMgZmlsZXMgY2hhbmdlZCwgNzggaW5zZXJ0aW9ucygrKSwgNTkgZGVs
ZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMgIAo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
PiA+PiBpbmRleCA2MjM5YTlhZGJmMTQuLmQ4YjIwODRkYWI3ZSAxMDA2NDQKPiA+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPj4gQEAgLTM4MjcsNiArMzgyNyw1MyBAQCBpbnQg
aTkxNV9nZW1fZ3R0X2luc2VydChzdHJ1Y3QgIAo+ID4+IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0s
Cj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXJ0LCBl
bmQsICAKPiA+PiBEUk1fTU1fSU5TRVJUX0VWSUNUKTsKPiA+PiAgfQo+ID4+Cj4gPj4gK2ludCBp
OTE1X2dndHRfYmFsbG9vbl9zcGFjZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0LAo+ID4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICBlbnVtIGk5MTVfZ2d0dF9iYWxsb29uX2lkIGlkLAo+ID4K
PiA+IERvIHdlIHdhbnQgdG8gdXNlIGEgZml4ZWQgbnVtYmVyIG9mIHNsb3RzPwo+IAo+IFByb2Jh
Ymx5IG5vdCwgZW51bSB3YXMganVzdCB1c2VkIGFzIGEgc3RhcnRpbmcgcG9pbnQgdG8gcHJvdmlk
ZSBleHBsaWNpdAo+IG5hbWUgZWFjaCBvZiB0aGUgYXZhaWxhYmxlIG5vZGUgYW5kIHRvIGF2b2lk
IGFkZGluZyBHRU1fQlVHX09OIHdoaWxlCj4gYWNjZXNzaW5nIGZpeGVkIHNpemUgYXJyYXkuCj4g
Cj4gPgo+ID4gU28gd2hhdCBleGFjdGx5IGlzIHdyb25nIHdpdGggdGhlIGNsaWVudHMgcmVzZXJ2
aW5nIG5vZGVzIHRoZW1zZWx2ZXM/Cj4gCj4gVGhleSBzdGlsbCByZXNlcnZlIG5vZGVzIHRoZW1z
ZWx2ZXMuIEJ1dCBub3cgdGhleSB3aWxsIG5vdCBkbyB0aGF0Cj4gaW4gYSBzaGFkb3cgYW5kIG5v
dCB1c2Ugc3RhdGljIGRhdGEgdG8gaG9sZCBhY3R1YWwgbm9kZXMuCgpCdXQgdGhhdCdzIHRoZWly
IGRlY2lzaW9uLCBhbGwgd2UgcHJvdmlkZSBpcyB0aGUgc2VydmljZSB0byBkb2xlIG91dCB0aGUK
Z2d0dCAob3Igbm90IGRlcGVuZGluZyBvbiBvdXIgd2hpbSkuIElmIHRoZXkgdXNlIGEgc3RhdGlj
IGFsbG9jYXRpb24gZm9yCnRoZWlyIG5vZGVzIGFuZCBub3Qga21hbGxvYyAtLSB3ZSBkb24ndCBj
YXJlLCB3aHkgc2hvdWxkIHdlIGFzIGxvbmcKYXMgdGhlaXIgY29kZSBpcyBjb3JyZWN0PwoKPiA+
IEknbSBub3Qgc2VlaW5nIHdoeSBleGFjdGx5IHdlIHdhbnQgdG8gbW92ZSB0byBhIG11Y2ggbW9y
ZSBjZW50cmFsaXNlZAo+ID4gc3lzdGVtCj4gCj4gSSB3YW50ZWQgdG8gbWFrZSBpdCBjbGVhciB0
byBhbGwgY2xpZW50cyB0aGF0IGk5MTVfZ2d0dCBpcyBhIGdvb2QgcGxhY2UKPiB0byBrZWVwIGxp
c3Qgb2YgcmVzZXJ2ZWQgc29tZSAoaW5zdGVhZCBvZiBoaWRpbmcgdGhlbSBpbiBwcml2YXRlIHBs
YWNlcykKPiAKPiBBbmQgdG8gcHJvdmlkZSB3cmFwcGVyIGZ1bmN0aW9uIHRoYXQgY2FuIGJlIGVh
c2lseSByZXVzZWQgYW5kIHRoYXQgZWFjaAo+IGJhbGxvb25pbmcgYmVoYXZlcyBpbiB0aGUgc2Ft
ZSB3YXkuCj4gCj4gRXh0cmEgYm9udXMgaXMgdGhhdCB3ZSBoYXZlIGFsbCBzdWNoIGJhbGxvb24g
dHdlYWtzIGluIG9uZSBwbGFjZSAoYm90aAo+IGNvZGUgYW5kIGRhdGEgbm9kZXMpLgoKU28gSSB0
aGluayB5b3Ugd291bGQgYmUgaGFwcHkgd2l0aCBqdXN0IGEgCgpzdHJ1Y3QgaTkxNV9nZ3R0X2Jh
bGxvb24gKG9yIHdoYXRldmVyKSB7CglzdHJ1Y3QgZG1hX21tX25vZGUgbm9kZTsKCXN0cnVjdCBs
aXN0X2hlYWQgbGluazsKCXZvaWQgKnByaXZhdGU7Cn0gKmk5MTVfZ2d0dF9yZXNlcnZlX2JhbGxv
b24oaTkxNS9nZ3R0LCB1NjQgYm90dG9tLCB1NjQgdG9wKTsKCi4uLiBidXQgeW91IGFyZSBhbHJl
YWR5IHBhc3QgdGhlIHBvaW50IHdoZXJlIHlvdSBtaWdodCBhcyB3ZWxsIGp1c3QgbGV0CnRoZSBj
bGllbnQgYWxsb2NhdGUgdGhlaXIgb3duIHN0cnVjdCBhbmQgcGFzcyB1cyB0aGUgZHJtX21tX25v
ZGUuIFNvCgppOTE1X2dndHRfcmVzZXJ2ZShpOTE1L2dndHQsIGRybV9tbV9ub2RlLCB1NjQgYm90
dG9tLCB1NjQgdG9wLCBmbGFncz8pCgo+ID4gYW5kIGFyZ3VlIG92ZXIgb3duZXJzaGlwIG9mIGk5
MTVfZ2d0dF9iYWxsb29uX2lkLgo+IAo+IE5vdyBpdCdzIGZpcnN0IGNvbWUsIGZpcnN0IHNlcnZl
ZCBvcmRlciwgYnV0IHdlIHNob3VsZCBhbHJlYWR5IGtub3cKPiBhbGwgY3VycmVudCB1c2FnZXMg
YW5kIGluIGNhc2Ugb2YgY2xhc2ggZWl0aGVyIHBpY2sgZGlmZmVyZW50IGlkIG9yCj4gYWRkIHRo
ZSBuZXcgb25lLgo+IAo+IE5vdGUgdGhhdCB0b2RheSBzb21lIHNjZW5hcmlvcyBhcmUgZXhjbHVz
aXZlIChndnQgd29uJ3Qgd29yayB3aXRoIGd1YykKPiBzbyBzb21lIG5vZGUgcGxhY2Vob2xkZXJz
IGNhbiBiZSBzaGFyZWQgLSBidXQgdGhpcyBjYW4gYmUgZXF1YWxseSBkb25lCj4gd2l0aG91dCBl
bnVtcyBidXQgd2l0aCB1bmlvbiBvZiBleHBsaWNpdCBub2RlIGRlZmluaXRpb25zLgo+IAo+ICAg
ICAgICAgSTkxNV9HR1RUX0JBTExPT05fR1VDX1RPUCA9IEk5MTVfR0dUVF9CQUxMT09OMywKPiAg
ICAgICAgIEk5MTVfR0dUVF9CQUxMT09OX1ZHVF9VTk1BUF9UT1AgPSBJOTE1X0dHVFRfQkFMTE9P
TjMsCj4gCj4gICAgICAgICB1bmlvbiB7Cj4gICAgICAgICAgICAgICAgIHN0cnVjdCB7Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9tbV9ub2RlIHVjX2Z3Owo+ICAgICAgICAg
ICAgICAgICB9IGd1YzsKPiAgICAgICAgICAgICAgICAgc3RydWN0IHsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgZHJtX21tX25vZGUgc3BhY2VbNF07Cj4gICAgICAgICAgICAgICAg
IH0gdmd0Owo+ICAgICAgICAgfSBiYWxsb29uczsKPiAKPiBidXQgZGlyZWN0IGFjY2VzcyB0byBu
b2RlcyBjYW4gYmUgYWxzbyB3cmFwcGVkIGludG86Cj4gCj4gc3RydWN0IGRybV9tbV9ub2RlICpp
OTE1X2dndHRfZ2V0X3VjX2Z3X25vZGUoaTkxNV9nZ3R0ICpnZ3R0KQo+IHsKPiAgICAgICAgIHJl
dHVybiBnZ3R0LT5iYWxsb29uW0k5MTVfR0dUVF9CQUxMT09OX0dVQ19UT1BdOwo+IH0KCkkgYW0g
bm90IHlldCBzb2xkIG9uIHB1dHRpbmcgYW4gYXJyYXkgb2Ygbm9kZXMgaGVyZSwgd2UgYWxyZWFk
eSBoYXZlIGEKbGlzdCBvZiB0aGVtIGFsbCA6LXAKLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
