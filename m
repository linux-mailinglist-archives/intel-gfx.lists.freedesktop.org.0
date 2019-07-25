Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D5A75960
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 23:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297326E834;
	Thu, 25 Jul 2019 21:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E5B36E834
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 21:13:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17609408-1500050 for multiple; Thu, 25 Jul 2019 22:13:45 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHMPYONMca4vQi0N9D5fU7-NeCasd5+BC1AaacJGXfW4Ng@mail.gmail.com>
References: <20190725182437.3228-1-chris@chris-wilson.co.uk>
 <CAM0jSHMPYONMca4vQi0N9D5fU7-NeCasd5+BC1AaacJGXfW4Ng@mail.gmail.com>
Message-ID: <156408922346.31349.237009996757357263@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 25 Jul 2019 22:13:43 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Capture vma contents outside of
 spinlock
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDctMjUgMjI6MDQ6MzMpCj4gT24gVGh1LCAyNSBK
dWwgMjAxOSBhdCAxOToyNCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4KPiA+IEN1cnJlbnRseSB3ZSB1c2UgdGhlIGVuZ2luZS0+YWN0aXZlLmxvY2sg
dG8gZW5zdXJlIHRoYXQgdGhlIHJlcXVlc3QgaXMKPiA+IG5vdCByZXRpcmVkIGFzIHdlIGNhcHR1
cmUgdGhlIGRhdGEuIEhvd2V2ZXIsIHdlIG9ubHkgbmVlZCB0byBlbnN1cmUgdGhhdAo+ID4gdGhl
IHZtYSBhcmUgbm90IHJlbW92ZWQgcHJpb3IgdG8gdXNlIGFjcXVpcmluZyB0aGVpciBjb250ZW50
cywgYW5kCj4gPiBzaW5jZSB3ZSBoYXZlIGFscmVhZHkgcmVsaW5xdWlzaGVkIG91ciBzdG9wLW1h
Y2hpbmUgcHJvdGVjdGlvbiwgd2UKPiA+IGFzc3VtZSB0aGF0IHRoZSB1c2VyIHdpbGwgbm90IGJl
IG92ZXJ3cml0aW5nIHRoZSBjb250ZW50cyBiZWZvcmUgd2UgYXJlCj4gPiBhYmxlIHRvIHJlY29y
ZCB0aGVtLgo+ID4KPiA+IEluIG9yZGVyIHRvIGNhcHR1cmUgdGhlIHZtYSBvdXRzaWRlIG9mIHRo
ZSBzcGlubG9jaywgd2UgYWNxdWlyZSBhCj4gPiByZWZlcmVuY2UgYW5kIG1hcmsgdGhlIHZtYSBh
cyBhY3RpdmUgdG8gcHJldmVudCBpdCBmcm9tIGJlaW5nIHVuYm91bmQuCj4gPiBIb3dldmVyLCBz
aW5jZSBpdCBpcyB0cmlja3kgYWxsb2NhdGUgYW4gZW50cnkgaW4gdGhlIGZlbmNlIHRyZWUgKGRv
aW5nCj4gPiBzbyB3b3VsZCByZXF1aXJlIHRha2luZyBhIG11dGV4KSB3aGlsZSBpbnNpZGUgdGhl
IGVuZ2luZSBzcGlubG9jaywgd2UKPiA+IHVzZSBhbiBhdG9taWMgYml0IGFuZCBzcGVjaWFsIGNh
c2UgdGhlIGhhbmRsaW5nIGZvciBpOTE1X2FjdGl2ZV93YWl0Lgo+ID4KPiA+IFRoZSBjb3JlIGJl
bmVmaXQgaXMgdGhhdCB3ZSBjYW4gdXNlIHNvbWUgbm9uLWF0b21pYyBtZXRob2RzIGZvciBtYXBw
aW5nCj4gPiB0aGUgZGV2aWNlIHBhZ2VzLCB3ZSBjYW4gcmVtb3ZlIHRoZSBzbG93IGNvbXByZXNz
aW9uIHBoYXNlIG91dCBvZiBhdG9taWMKPiA+IGNvbnRleHQgKGkuZS4gc3RvcCBhbnRhZ29uaXNp
bmcgdGhlIG5taS13YXRjaGRvZyksIGFuZCBubyB3ZSBsb25nZXIgbmVlZAo+ID4gbGFyZ2UgcmVz
ZXJ2ZXMgb2YgYXRvbWljIHBhZ2VzLgo+ID4KPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTEyMTUKPiA+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyAgICAgICB8ICAzNCArKysrKystCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaCAgICAgICB8ICAgMyArCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmVfdHlwZXMuaCB8ICAgMyArCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyAgICB8IDExMyArKysrKysrKysrKysrKysrLS0t
LS0tLQo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgMTE4IGluc2VydGlvbnMoKyksIDM1IGRlbGV0aW9u
cygtKQo+IAo+IDxzbmlwPgo+IAo+ID4KPiA+ICBzdGF0aWMgc3RydWN0IGRybV9pOTE1X2Vycm9y
X29iamVjdCAqCj4gPiBAQCAtMTM3MCw2ICsxMzk5LDcgQEAgZ2VtX3JlY29yZF9yaW5ncyhzdHJ1
Y3QgaTkxNV9ncHVfc3RhdGUgKmVycm9yLCBzdHJ1Y3QgY29tcHJlc3MgKmNvbXByZXNzKQo+ID4g
ICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IGk5MTUtPmVu
Z2luZVtpXTsKPiA+ICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZXJyb3JfZW5naW5l
ICplZSA9ICZlcnJvci0+ZW5naW5lW2ldOwo+ID4gICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJlcXVlc3Q7Cj4gPiArICAgICAgICAgICAgICAgc3RydWN0IGNhcHR1cmVfdm1h
ICpjYXB0dXJlOwo+IAo+IE5vdCBldmVuIHNldHRpbmcgY2FwdHVyZSA9IE5VTEw/CgpnY2MgaXMg
YSB2ZXJ5IGZvcmdpdmluZyBjb21waWxlciBpdCBzZWVtcy4gV2VsbCBzcG90dGVkLAotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
