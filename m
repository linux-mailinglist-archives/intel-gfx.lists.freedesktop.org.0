Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8242A9B34B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:28:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 614496ECC7;
	Fri, 23 Aug 2019 15:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D12806ECC7
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:28:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18242166-1500050 for multiple; Fri, 23 Aug 2019 16:28:44 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156657304893.4019.6114530226750288695@skylake-alporthouse-com>
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
 <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
 <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
 <d34b64fd-4ece-ffea-6ab3-0ef1dbaf5ce1@intel.com>
 <156657304893.4019.6114530226750288695@skylake-alporthouse-com>
Message-ID: <156657412207.4019.2312887558171300172@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 23 Aug 2019 16:28:42 +0100
Subject: Re: [Intel-gfx] [RFC] drm/i915/tgl: Advanced preparser support for
 GPU relocs
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjMgMTY6MTA6NDgpCj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIzIDE2OjA1OjQ1KQo+ID4gCj4gPiAKPiA+IE9u
IDgvMjMvMTkgNzoyNiBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wOC0yMyAwODoyNzoyNSkKPiA+ID4+IFF1b3RpbmcgRGFuaWVsZSBDZXJh
b2xvIFNwdXJpbyAoMjAxOS0wOC0yMyAwMzowOTowOSkKPiA+ID4+PiBUR0wgaGFzIGFuIGltcHJv
dmVkIENTIHByZS1wYXJzZXIgdGhhdCBjYW4gbm93IHByZS1mZXRjaCBjb21tYW5kcyBhY3Jvc3MK
PiA+ID4+PiBiYXRjaCBib3VuZGFyaWVzLiBUaGlzIGltcHJvdmVzIHBlcmZvcm1hbmNlcyB3aGVu
IGxvdHMgb2Ygc21hbGwgYmF0Y2hlcwo+ID4gPj4+IGFyZSB1c2VkLCBidXQgaGFzIGFuIGltcGFj
dCBvbiBzZWxmLW1vZGlmeWluZyBjb2RlLiBJZiB3ZSB3YW50IHRvIG1vZGlmeQo+ID4gPj4+IHRo
ZSBjb250ZW50IG9mIGEgYmF0Y2ggZnJvbSBhbm90aGVyIHJpbmcvYmF0Y2gsIHdlIG5lZWQgdG8g
ZWl0aGVyCj4gPiA+Pj4gZ3VhcmFudGVlIHRoYXQgdGhlIG1lbW9yeSBsb2NhdGlvbiBpcyB1cGRh
dGVkIGJlZm9yZSB0aGUgcHJlLXBhcnNlciBnZXRzCj4gPiA+Pj4gdG8gaXQgb3Igd2UgbmVlZCB0
byB0dXJuIHRoZSBwcmUtcGFyc2VyIG9mZiBhcm91bmQgdGhlIG1vZGlmaWNhdGlvbi4KPiA+ID4+
PiBJbiBpOTE1LCB3ZSB1c2Ugc2VsZi1tb2RpZnlpbmcgY29kZSBvbmx5IGZvciBHUFUgcmVsb2Nh
dGlvbnMuCj4gPiA+Pj4KPiA+ID4+PiBUaGUgcHJlLXBhcnNlciBmZXRjaGVzIGFjcm9zcyBtZW1v
cnkgc3luY2hyb25pemF0aW9uIGNvbW1hbmRzIGFzIHdlbGwsCj4gPiA+Pj4gc28gdGhlIG9ubHkg
d2F5IHRvIGd1YXJhbnRlZSB0aGF0IHRoZSB3cml0ZXMgbGFuZCBiZWZvcmUgdGhlIHBhcnNlciBn
ZXRzCj4gPiA+Pj4gdG8gaXQgaXMgdG8gaGF2ZSBtb3JlIGluc3RydWN0aW9ucyBiZXR3ZWVuIHRo
ZSBzeW5jIGFuZCB0aGUgZGVzdGluYXRpb24KPiA+ID4+PiB0aGFuIHRoZSBwYXJzZXIgRklGTyBk
ZXB0aCwgd2hpY2ggaXMgbm90IGFuIG9wdGltYWwgc29sdXRpb24uCj4gPiA+Pgo+ID4gPj4gV2Vs
bCwgb3VyIEFCSSBpcyB0aGF0IG1lbW9yeSBpcyBjb2hlcmVudCBiZWZvcmUgdGhlIGJyZWFkY3J1
bWIgb2YgKmVhY2gqCj4gPiA+PiBiYXRjaC4gVGhhdCBpcyBhIGZ1bmRhbWVudGFsIHJlcXVpcmVt
ZW50IGZvciBvdXIgc2lnbmFsaW5nIHRvIHVzZXJzcGFjZS4KPiA+ID4+IFBsZWFzZSB0ZWxsIG1l
IHRoYXQgdGhlcmUgaXMgYSBjb250ZXh0IGZsYWcgdG8gdHVybiB0aGlzIG9mZiwgb3Igd2UgZWxz
ZQo+ID4gPj4gd2UgbmVlZCB0byBlbWl0IDMyeCBmbHVzaGVzIG9yIHdoYXRldmVyIGl0IHRha2Vz
Lgo+ID4gPiAKPiA+IEFyZSB5b3UgcmVmZXJyaW5nIHRvIHRoZSBzcGVjaWZpYyBjYXNlIHdoZXJl
IHdlIGhhdmUgYSByZXF1ZXN0IG1vZGlmeWluZyAKPiA+IGFuIG9iamVjdCB0aGF0IGlzIHRoZW4g
dXNlZCBhcyBhIGJhdGNoIGluIHRoZSBuZXh0IHJlcXVlc3Q/IEJlY2F1c2UgCj4gPiBjb2hlcmVu
Y3kgb2Ygb2JqZWN0cyB0aGF0IGFyZSBub3QgZXhlY3V0ZWQgYXMgYmF0Y2hlcyBpcyBub3QgaW1w
YWN0ZWQuCj4gCj4gIkZldGNoZXMgYWNyb3NzIG1lbW9yeSBzeW5jIiBzb3VuZHMgbGlrZSBhIG1h
am9yIEFCSSBicmVhay4gVGhlIGJhdGNoZXMKPiBhcmUgYSBoYXJkIHNlcmlhbGlzYXRpb24gYmFy
cmllciwgd2l0aCBtZW1vcnkgY29oZXJlbmN5IGd1YXJhbnRlZWQgcHJpb3IKPiB0byB0aGUgc2ln
bmFsaW5nIGF0IHRoZSBlbmQgb2Ygb25lIGJhdGNoIGFuZCBjbGVhciBjYWNoZXMgZ3VhcmFudGVl
ZCBhdAo+IHRoZSBzdGFydCBvZiB0aGUgbmV4dC4KCldlIGhhdmUgcmVsb2NzLCBvYSBhbmQgc3Nl
dSBhbGwgdXNpbmcgc2VsZi1tb2RpZnlpbmcgY29kZS4gSSBleHBlY3Qgd2UKd2lsbCBoYXZlIFBU
RSBtb2RpZmljYXRpb25zIGFuZCBtdWNoIG1vcmUgZG9uZSB2aWEgdGhlIEdQVSBpbiB0aGUgbmVh
cgpmdXR1cmUuIEFsbCByZWx5IG9uIHRoZSBDU19TVEFMTCBkb2luZyBleGFjdGx5IHdoYXQgaXQg
c2F5cyBvbiB0aGUgdGluLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
