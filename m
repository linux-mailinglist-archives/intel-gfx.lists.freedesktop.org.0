Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2368A18D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 16:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1563C6E550;
	Mon, 12 Aug 2019 14:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E3B26E550
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 14:51:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17971012-1500050 for multiple; Mon, 12 Aug 2019 15:51:20 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68B3CB34B@fmsmsx120.amr.corp.intel.com>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
 <156539369892.3161.13486569463851107198@skylake-alporthouse-com>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3CB34B@fmsmsx120.amr.corp.intel.com>
Message-ID: <156562147902.2301.5974977112037410462@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 12 Aug 2019 15:51:19 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMDgtMTIgMTU6Mzk6MzMpCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiBTZW50OiBGcmlkYXksIEF1Z3VzdCA5LCAyMDE5IDQ6MzUgUE0KPiA+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBDYzogSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgV2luaWFyc2tpLCBNaWNoYWwK
PiA+IDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT47IEJsb29tZmllbGQsIEpvbiA8am9uLmJs
b29tZmllbGRAaW50ZWwuY29tPgo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCA1LzVdIGRybS9pOTE1
OiBDYW5jZWwgbm9uLXBlcnNpc3RlbnQgY29udGV4dHMgb24gY2xvc2UKPiA+IAo+ID4gUXVvdGlu
ZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDYgMTQ6NDc6MjUpCj4gPiA+IE5vcm1hbGx5LCB3ZSBy
ZWx5IG9uIG91ciBoYW5nY2hlY2sgdG8gcHJldmVudCBwZXJzaXN0ZW50IGJhdGNoZXMgZnJvbQo+
ID4gPiBob2dnaW5nIHRoZSBHUFUuIEhvd2V2ZXIsIGlmIHRoZSB1c2VyIGRpc2FibGVzIGhhbmdj
aGVjaywgdGhpcyBtZWNoYW5pc20KPiA+ID4gYnJlYWtzIGRvd24uIERlc3BpdGUgb3VyIGluc2lz
dGVuY2UgdGhhdCB0aGlzIGlzIHVuc2FmZSwgdGhlIHVzZXJzIGFyZQo+ID4gPiBlcXVhbGx5IGlu
c2lzdGVudCB0aGF0IHRoZXkgd2FudCB0byB1c2UgZW5kbGVzcyBiYXRjaGVzIGFuZCB3aWxsIGRp
c2FibGUKPiA+ID4gdGhlIGhhbmdjaGVjayBtZWNoYW5pc20uIFdlIGFyZSBsb29raW5nIGFyZSBw
ZXJoYXBzIHJlcGxhY2luZyBoYW5nY2hlY2sKPiA+ID4gd2l0aCBhIHNvZnRlciBtZWNoYW5pc20s
IHRoYXQgc2VuZHMgYSBwdWxzZSBkb3duIHRoZSBlbmdpbmUgdG8gY2hlY2sgaWYKPiA+ID4gaXQg
aXMgd2VsbC4gV2UgY2FuIHVzZSB0aGUgc2FtZSBwcmVlbXB0aXZlIHB1bHNlIHRvIGZsdXNoIGFu
IGFjdGl2ZQo+ID4gPiBwZXJzaXN0ZW50IGNvbnRleHQgb2ZmIHRoZSBHUFUgdXBvbiBjb250ZXh0
IGNsb3NlLCBwcmV2ZW50aW5nIHJlc291cmNlcwo+ID4gPiBiZWluZyBsb3N0IGFuZCB1bmtpbGxh
YmxlIHJlcXVlc3RzIHJlbWFpbmluZyBvbiB0aGUgR1BVLCBhZnRlciBwcm9jZXNzCj4gPiA+IHRl
cm1pbmF0aW9uLiBUbyBhdm9pZCBjaGFuZ2luZyB0aGUgQUJJIGFuZCBhY2NpZGVudGFsbHkgYnJl
YWtpbmcKPiA+ID4gZXhpc3RpbmcgdXNlcnNwYWNlLCB3ZSBtYWtlIHRoZSBwZXJzaXN0ZW5jZSBv
ZiBhIGNvbnRleHQgZXhwbGljaXQgYW5kCj4gPiA+IGVuYWJsZSBpdCBieSBkZWZhdWx0LiBVc2Vy
c3BhY2UgY2FuIG9wdCBvdXQgb2YgcGVyc2lzdGVudCBtb2RlIChmb3JjaW5nCj4gPiA+IHJlcXVl
c3RzIHRvIGJlIGNhbmNlbGxlZCB3aGVuIHRoZSBjb250ZXh0IGlzIGNsb3NlZCBieSBwcm9jZXNz
Cj4gPiA+IHRlcm1pbmF0aW9uIG9yIGV4cGxpY2l0bHkpIGJ5IGEgY29udGV4dCBwYXJhbWV0ZXIs
IG9yIHRvIGZhY2lsaXRhdGUKPiA+ID4gZXhpc3RpbmcgdXNlLWNhc2VzIGJ5IGRpc2FibGluZyBo
YW5nY2hlY2sgKGk5MTUuZW5hYmxlX2hhbmdjaGVjaz0wKS4KPiA+ID4gKE5vdGUsIG9uZSBvZiB0
aGUgb3V0Y29tZXMgZm9yIHN1cHBvcnRpbmcgZW5kbGVzcyBtb2RlIHdpbGwgYmUgdGhlCj4gPiA+
IHJlbW92YWwgb2YgaGFuZ2NoZWNraW5nLCBhdCB3aGljaCBwb2ludCBvcHRpbmcgaW50byBwZXJz
aXN0ZW50IG1vZGUgd2lsbAo+ID4gPiBiZSBtYW5kYXRvcnksIG9yIG1heWJlIHRoZSBkZWZhdWx0
LikKPiA+IAo+ID4gRm9yIHRoZSByZWNvcmQsIEkndmUgZmluYWxseSBydW4gaW50byBleGFtcGxl
cyBvZiBkZXNrdG9wIGNsaWVudHMKPiA+IGV4aXRpbmcgYmVmb3JlIHRoZWlyIHJlbmRlcmluZyBp
cyBzaG93bi4gTm8gbG9uZ2VyIGh5cG90aGV0aWNhbC4KPiA+IC1DaHJpcwo+IAo+IENhbiB5b3Ug
c2hhcmUgYW55IGRldGFpbHMgLSBNaWdodCBiZSB1c2VmdWwgZm9yIHRlc3RpbmcuCgpJbiBjaW5u
YW1vbiwgdGhlIGF0bC10YWIgc3dpdGNoZXIgc2VlbXMgdG8gYmUgb25lLiBBbm90aGVyIG9uZSBz
ZWVtcyB0bwpiZSBhcm91bmQgZmlyZWZveCwgYnV0IEkgaGF2ZW4ndCBlc3RhYmxpc2hlZCB0aGUg
dHJpZ2dlci4gSSBzaG91bGQKYWN0dWFsbHkgbG9nIHdobyBvd25lZCB0aGUgY29udGV4dCEKLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
