Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB21FA2889
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 22:58:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED786E1B2;
	Thu, 29 Aug 2019 20:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D98336E1B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 20:58:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18310037-1500050 for multiple; Thu, 29 Aug 2019 21:58:38 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68B3DDDC3@fmsmsx120.amr.corp.intel.com>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
 <20190829081150.10271-29-chris@chris-wilson.co.uk>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3DDDC3@fmsmsx120.amr.corp.intel.com>
Message-ID: <156711231592.12323.10961622197228648918@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 29 Aug 2019 21:58:35 +0100
Subject: Re: [Intel-gfx] [PATCH 28/36] drm/i915: Cancel non-persistent
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

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMDgtMjkgMTY6NDQ6NDEpCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiBTZW50OiBUaHVyc2RheSwgQXVndXN0IDI5LCAyMDE5IDE6MTIgQU0K
PiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+OyBKb29uYXMgTGFodGluZW4KPiA+IDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgV2luaWFyc2tpLCBNaWNoYWwKPiA+IDxtaWNo
YWwud2luaWFyc2tpQGludGVsLmNvbT47IEJsb29tZmllbGQsIEpvbiA8am9uLmJsb29tZmllbGRA
aW50ZWwuY29tPgo+ID4gU3ViamVjdDogW1BBVENIIDI4LzM2XSBkcm0vaTkxNTogQ2FuY2VsIG5v
bi1wZXJzaXN0ZW50IGNvbnRleHRzIG9uIGNsb3NlCj4gPiAKPiA+IE5vcm1hbGx5LCB3ZSByZWx5
IG9uIG91ciBoYW5nY2hlY2sgdG8gcHJldmVudCBwZXJzaXN0ZW50IGJhdGNoZXMgZnJvbQo+ID4g
aG9nZ2luZyB0aGUgR1BVLiBIb3dldmVyLCBpZiB0aGUgdXNlciBkaXNhYmxlcyBoYW5nY2hlY2ss
IHRoaXMgbWVjaGFuaXNtCj4gPiBicmVha3MgZG93bi4gRGVzcGl0ZSBvdXIgaW5zaXN0ZW5jZSB0
aGF0IHRoaXMgaXMgdW5zYWZlLCB0aGUgdXNlcnMgYXJlCj4gPiBlcXVhbGx5IGluc2lzdGVudCB0
aGF0IHRoZXkgd2FudCB0byB1c2UgZW5kbGVzcyBiYXRjaGVzIGFuZCB3aWxsIGRpc2FibGUKPiA+
IHRoZSBoYW5nY2hlY2sgbWVjaGFuaXNtLiBXZSBhcmUgbG9va2luZyBhdCBwZXJoYXBzIHJlcGxh
Y2luZyBoYW5nY2hlY2sKPiA+IHdpdGggYSBzb2Z0ZXIgbWVjaGFuaXNtLCB0aGF0IHNlbmRzIGEg
cHVsc2UgZG93biB0aGUgZW5naW5lIHRvIGNoZWNrIGlmCj4gPiBpdCBpcyB3ZWxsLiBXZSBjYW4g
dXNlIHRoZSBzYW1lIHByZWVtcHRpdmUgcHVsc2UgdG8gZmx1c2ggYW4gYWN0aXZlCj4gPiBwZXJz
aXN0ZW50IGNvbnRleHQgb2ZmIHRoZSBHUFUgdXBvbiBjb250ZXh0IGNsb3NlLCBwcmV2ZW50aW5n
IHJlc291cmNlcwo+ID4gYmVpbmcgbG9zdCBhbmQgdW5raWxsYWJsZSByZXF1ZXN0cyByZW1haW5p
bmcgb24gdGhlIEdQVSBhZnRlciBwcm9jZXNzCj4gPiB0ZXJtaW5hdGlvbi4gVG8gYXZvaWQgY2hh
bmdpbmcgdGhlIEFCSSBhbmQgYWNjaWRlbnRhbGx5IGJyZWFraW5nCj4gPiBleGlzdGluZyB1c2Vy
c3BhY2UsIHdlIG1ha2UgdGhlIHBlcnNpc3RlbmNlIG9mIGEgY29udGV4dCBleHBsaWNpdCBhbmQK
PiA+IGVuYWJsZSBpdCBieSBkZWZhdWx0IChtYXRjaGluZyBjdXJyZW50IEFCSSkuIFVzZXJzcGFj
ZSBjYW4gb3B0IG91dCBvZgo+ID4gcGVyc2lzdGVudCBtb2RlIChmb3JjaW5nIHJlcXVlc3RzIHRv
IGJlIGNhbmNlbGxlZCB3aGVuIHRoZSBjb250ZXh0IGlzCj4gPiBjbG9zZWQgYnkgcHJvY2VzcyB0
ZXJtaW5hdGlvbiBvciBleHBsaWNpdGx5KSBieSBhIGNvbnRleHQgcGFyYW1ldGVyLiBUbwo+ID4g
ZmFjaWxpdGF0ZSBleGlzdGluZyB1c2UtY2FzZXMgb2YgZGlzYWJsaW5nIGhhbmdjaGVjaywgaWYg
dGhlIG1vZHBhcmFtIGlzCj4gPiBkaXNhYmxlZCAoaTkxNS5lbmFibGVfaGFuZ2NoZWNrPTApLCB3
ZSBkaXNhYmxlIHBlcnNpc3RlbmNlIG1vZGUgYnkKPiA+IGRlZmF1bHQuICAoTm90ZSwgb25lIG9m
IHRoZSBvdXRjb21lcyBmb3Igc3VwcG9ydGluZyBlbmRsZXNzIG1vZGUgd2lsbCBiZQo+ID4gdGhl
IHJlbW92YWwgb2YgaGFuZ2NoZWNraW5nLCBhdCB3aGljaCBwb2ludCBvcHRpbmcgaW50byBwZXJz
aXN0ZW50IG1vZGUKPiA+IHdpbGwgYmUgbWFuZGF0b3J5LCBvciBtYXliZSB0aGUgZGVmYXVsdCBw
ZXJoYXBzIGNvbnRyb2xsZWQgYnkgY2dyb3Vwcy4pCj4gPiAKPiA+IFRlc3RjYXNlOiBpZ3QvZ2Vt
X2N0eF9wZXJzaXN0ZW5jZQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGlu
ZW5AbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2lu
aWFyc2tpQGludGVsLmNvbT4KPiA+IENjOiBKb24gQmxvb21maWVsZCA8am9uLmJsb29tZmllbGRA
aW50ZWwuY29tPgo+ID4gLS0tCj4gUmV2aWV3ZWQtYnk6IEpvbiBCbG9vbWZpZWxkIDxqb24uYmxv
b21maWVsZEBpbnRlbC5jb20+CgpPbmUgdGhpbmcgSSBjb3VsZCBkbyB3aXRoIGZvciB0aGlzIGlz
IGFuIGFjayBmcm9tIHdob21ldmVyIGlzIHZvbHVudGVlcmVkCnRvIGFkZCB0aGUgdXNlcnNwYWNl
IHN1cHBvcnQgOikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
