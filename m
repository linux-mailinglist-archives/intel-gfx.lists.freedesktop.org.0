Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5513E1C93
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 15:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7956EAB5;
	Wed, 23 Oct 2019 13:28:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12BE66EAB5
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 13:28:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18937708-1500050 for multiple; Wed, 23 Oct 2019 14:28:15 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191023122151.5017-1-chris@chris-wilson.co.uk>
 <87blu78uo2.fsf@gaia.fi.intel.com>
In-Reply-To: <87blu78uo2.fsf@gaia.fi.intel.com>
Message-ID: <157183729280.15766.6739367226394707996@skylake-alporthouse-com>
Date: Wed, 23 Oct 2019 14:28:12 +0100
Subject: Re: [Intel-gfx] [CI 1/4] drm/i915/gt: Try to more gracefully
 quiesce the system before resets
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTIzIDE0OjIxOjAxKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJZiB3ZSBhcmUgZG9p
bmcgYSBub3JtYWwgR1BVIHJlc2V0IHRyaWdnZXJlZCBhZnRlciBkZXRlY3RpbmcgYSBsb25nCj4g
PiBwZXJpb2Qgb2Ygc3RhbGxlZCB3b3JrLCB3ZSBjYW4gdGFrZSBvdXIgdGltZSBhbmQgYWxsb3cg
dGhlIGVuZ2luZXMgdG8KPiA+IHF1aWVzY2UuIFNpbmNlIHdlJ3ZlIHN0b3BwZWQgc3VibWlzc2lv
biB0byB0aGUgZW5naW5lLCBhbmQgaWYgd2Ugd2FpdAo+ID4gbG9uZyBlbm91Z2ggYW4gaW5ub2Nl
bnQgY29udGV4dCBzaG91bGQgY29tcGxldGUsIGxlYXZpbmcgdGhlIGVuZ2luZSBpZGxlLgo+ID4g
U28gYnkgd2FpdGluZyBhIHNob3J0IGFtb3VudCBvZiB0aW1lLCB3ZSBzaG91bGQgcHJldmVudCBj
bG9iYmVyaW5nIG90aGVyCj4gPiB1c2VycyB3aGVuIHJlc2V0dGluZyBhIHN0dWNrIGNvbnRleHQu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5j
b20+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwu
Y29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlICAg
ICAgICAgfCAxMSArKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9jcy5jICAgIHwgMjAgKysrKysrKysrKysrKysrKysrKy0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCB8ICA0ICsrKysKPiA+ICAzIGZpbGVz
IGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCj4gPiBpbmRleCA0OGRmODg4OWE4OGEuLjk3ZjAxYmZl
ZGE0MSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmls
ZQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCj4gPiBAQCAt
MjUsMyArMjUsMTQgQEAgY29uZmlnIERSTV9JOTE1X1NQSU5fUkVRVUVTVAo+ID4gICAgICAgICBN
YXkgYmUgMCB0byBkaXNhYmxlIHRoZSBpbml0aWFsIHNwaW4uIEluIHByYWN0aWNlLCB3ZSBlc3Rp
bWF0ZQo+ID4gICAgICAgICB0aGUgY29zdCBvZiBlbmFibGluZyB0aGUgaW50ZXJydXB0IChpZiBj
dXJyZW50bHkgZGlzYWJsZWQpIHRvIGJlCj4gPiAgICAgICAgIGEgZmV3IG1pY3Jvc2Vjb25kcy4K
PiA+ICsKPiA+ICtjb25maWcgRFJNX0k5MTVfU1RPUF9USU1FT1VUCj4gPiArICAgICBpbnQgIkhv
dyBsb25nIHRvIHdhaXQgZm9yIGFuIGVuZ2luZSB0byBxdWllc2NlIGdyYWNlZnVsbHkgYmVmb3Jl
IHJlc2V0IChtcykiCj4gPiArICAgICBkZWZhdWx0IDEwMCAjIG1pbGxpc2Vjb25kcwo+ID4gKyAg
ICAgaGVscAo+ID4gKyAgICAgICBCeSBzdG9wcGluZyBzdWJtaXNzaW9uIGFuZCBzbGVlcGluZyBm
b3IgYSBzaG9ydCB0aW1lIGJlZm9yZSByZXNldHRpbmcKPiA+ICsgICAgICAgdGhlIEdQVSwgd2Ug
YWxsb3cgdGhlIGlubm9jZW50IGNvbnRleHRzIGFsc28gb24gdGhlIHN5c3RlbSB0byBxdWllc2Nl
Lgo+ID4gKyAgICAgICBJdCBpcyB0aGVuIGxlc3MgbGlrZWx5IGZvciBhIGhhbmdpbmcgY29udGV4
dCB0byBjYXVzZSBjb2xsYXRlcmFsCj4gPiArICAgICAgIGRhbWFnZSBhcyB0aGUgc3lzdGVtIGlz
IHJlc2V0IGluIG9yZGVyIHRvIHJlY292ZXIuIFRoZSBjb2xvcmFyeSBpcwo+IAo+IHMvY29sb3Jh
eS9jb3JvbGxhcnkKPiAKPiBJIGFtIG5vdCBjbGFpbWluZyB0aGF0IEkgd291bGQga25vdyBhIGJl
dHRlciB2YWx1ZSBmb3IgdGhpcyB0dW5hYmxlLgo+IAo+IEJ1dCBhdGxlYXN0IGN1cnJlbnRseSB3
aXRoIHRoZSBoYW5nY2hlY2sgcGVyaW9kcyB3ZSBoYXZlLCBJIHRoaW5rCj4gdGhlcmUgaXMgcm9v
bSBmb3IgbW9yZSB0aW1lIHRvIGFjdHVhbCByZXNldCBwcm9jZXNzaW5nLgo+IAo+IFdlIGNvdWxk
IGdvIGFzIGZhciBhcyB3ZSBzdGFydCB0byBpZGxlIHRoZSBvdGhlciBlbmdpbmVzCj4gaW4gcGFy
YWxsZWwsIHdoZW4gb25lIHNob3dzIHN5bXB0b21zLiBCdXQgd2VsbCBwZXJoYXBzCj4gdGhlIGVm
ZmVjdCBpcyB0aGUgc2FtZSBhcyBzaG9ydGVuaW5nIHRoZSBkZXRlY3Rpb24gY3ljbGUuCgpUcnVl
LCB0aGUgb3RoZXIgaWRlYSBJIHRoaW5rIEkgbWF5IGV4cGVyaW1lbnQgd2l0aCBpcyBwdXNoaW5n
IHRoZQpzdGFsbGVkIGZsYWcgZG93bi4gVGhlcmUncyBubyBwb2ludCB3YWl0aW5nIGZvciB0aGUg
ZW5naW5lIGlmIHdlJ3ZlCmRlY2xhcmVkIGl0IGh1bmcgYWxyZWFkeSwgYW5kIHRoYXQgc2hvdWxk
IGVsaW1pbmF0ZSB0aGUgbmVlZCBmb3IgdGhlIGlmCihpbl9hdG9taWMpLiBJIHRoaW5rIHRoZSBl
c3NlbmNlIG9mIHRoZSBwYXRoIHN0YW5kcyAtLSB3ZSBjYW4gcmVzZXQKbW9yZSBncmFjZWZ1bGx5
IGlmIHdlIHdhaXQuCgpJIHByb2JhYmx5IHNob3VsZCBtYWtlIGl0IGEgU3VnZ2VzdGVkLWJ5IEpv
b25hcyAmIEpvbi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
