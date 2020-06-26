Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C63EE20AE3D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 10:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35E06EC33;
	Fri, 26 Jun 2020 08:10:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC8866EC33
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 08:10:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21621129-1500050 for multiple; Fri, 26 Jun 2020 09:10:13 +0100
MIME-Version: 1.0
In-Reply-To: <159310696106.31486.9034080828697272264@build.alporthouse.com>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <159302990055.4527.16849537545776334660@build.alporthouse.com>
 <de87a30b-3ac2-1bee-4ee0-5a05baef6146@gmail.com>
 <159308931300.4527.14536354033703689604@build.alporthouse.com>
 <6d99c4d9-7294-9ce1-471a-f81de7dc2c4f@amd.com>
 <159309140216.31486.2359580281725596670@build.alporthouse.com>
 <011fe07b-1e2c-7cc2-ade8-2c8b4df80b90@gmail.com>
 <159309782319.31486.530565133539052103@build.alporthouse.com>
 <746b10ad-7521-78dd-9a2b-2f44b6594842@amd.com>
 <159310696106.31486.9034080828697272264@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Christian König <christian.koenig@amd.com>, Christian König <ckoenig.leichtzumerken@gmail.com>, Dave Airlie <airlied@gmail.com>
Date: Fri, 26 Jun 2020 09:10:11 +0100
Message-ID: <159315901171.15982.4604268132167952820@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMDYtMjUgMTg6NDI6NDEpCj4gUXVvdGluZyBDaHJp
c3RpYW4gS8O2bmlnICgyMDIwLTA2LTI1IDE2OjQ3OjA5KQo+ID4gQW0gMjUuMDYuMjAgdW0gMTc6
MTAgc2NocmllYiBDaHJpcyBXaWxzb246Cj4gPiA+IFdlIGhhdmUgdGhlIERBRyBvZiBmZW5jZXMs
IHdlIGNhbiB1c2UgdGhhdCBpbmZvcm1hdGlvbiB0byBhdm9pZCBhZGRpbmcKPiA+ID4gYW4gaW1w
bGljaXQgY291cGxpbmcgYmV0d2VlbiBleGVjdXRpb24gY29udGV4dHMuCj4gPiAKPiA+IE5vLCB3
ZSBjYW4ndC4gQW5kIGl0IHNvdW5kcyBsaWtlIHlvdSBzdGlsbCBoYXZlIG5vdCB1bmRlcnN0b29k
IHRoZSAKPiA+IHVuZGVybHlpbmcgcHJvYmxlbS4KPiA+IAo+ID4gU2VlIHRoaXMgaGFzIG5vdGhp
bmcgdG8gZG8gd2l0aCB0aGUgZmVuY2VzIGl0c2VsZiBvciB0aGVpciBEQUcuCj4gPiAKPiA+IFdo
ZW4geW91IGRlcGVuZCBvbiB1c2Vyc3BhY2UgdG8gZG8gYW5vdGhlciBzdWJtaXNzaW9uIHNvIHlv
dXIgZmVuY2UgY2FuIAo+ID4gc3RhcnQgcHJvY2Vzc2luZyB5b3UgZW5kIHVwIGRlcGVuZGluZyBv
biB3aGF0ZXZlciB1c2Vyc3BhY2UgZG9lcy4KPiAKPiBIVyBkZXBlbmRlbmN5IG9uIHVzZXJzcGFj
ZSBpcyBleHBsaWNpdCBpbiB0aGUgQUJJIGFuZCBjbGllbnQgQVBJcywgYW5kCj4gdGhlIGRpcmVj
dCBjb250cm9sIHVzZXJzcGFjZSBoYXMgb3ZlciB0aGUgSFcuCj4gCj4gPiBUaGlzIGluIHR1cm4g
bWVhbnMgd2hlbiB1c2Vyc3BhY2UgY2FsbHMgYSBzeXN0ZW0gY2FsbCAob3IgZG9lcyBwYWdlIAo+
ID4gZmF1bHQpIGl0IGlzIHBvc3NpYmxlIHRoYXQgdGhpcyBlbmRzIHVwIGluIHRoZSByZWNsYWlt
IGNvZGUgcGF0aC4KPiAKPiBXZSBoYXZlIGJvdGggc2FpZCB0aGUgdmVyeSBzYW1lIHRoaW5nLgo+
ICAKPiA+IEFuZCB3aGlsZSB3ZSB3YW50IHRvIGF2b2lkIGl0IGJvdGggRGFuaWVsIGFuZCBJIGFs
cmVhZHkgZGlzY3Vzc2VkIHRoaXMgCj4gPiBtdWx0aXBsZSB0aW1lcyBhbmQgd2UgYWdyZWUgaXQg
aXMgc3RpbGwgYSBtdXN0IGhhdmUgdG8gYmUgYWJsZSB0byBkbyAKPiA+IGZlbmNlIHdhaXRzIGlu
IHRoZSByZWNsYWltIGNvZGUgcGF0aC4KPiAKPiBCdXQgY2FtZSB0byB0aGUgb3Bwb3NpdGUgY29u
Y2x1c2lvbi4gRm9yIGRvaW5nIHRoYXQgd2FpdCBoYXJtcyB0aGUKPiB1bnJlbGF0ZWQgY2FsbGVy
IGFuZCB0aGUgcmVjbGFpbSBpcyBvcHBvcnR1bmlzdGljLiBUaGVyZSBpcyBubyBuZWVkIGZvcgo+
IHRoYXQgY2FsbGVyIHRvIHJlY2xhaW0gdGhhdCBwYWdlLCB3aGVuIGl0IGNhbiBoYXZlIGFueSBv
dGhlci4gV2h5IGRpZCB5b3UKPiBldmVuIGNob29zZSB0aGF0IHBhZ2UgdG8gcmVjbGFpbT8gSW5k
dWNpbmcgbGF0ZW5jeSBpbiB0aGUgY2FsbGVyIGlzIGEgYnVnLAo+IGhhcyBiZWVuIHJlcG9ydGVk
IHByZXZpb3VzbHkgYXMgYSBidWcsIGFuZCBzdGlsbCBjb25zaWRlcmVkIGEgYnVnLiBbQnV0IGF0
Cj4gdGhlIGVuZCBvZiB0aGUgZGF5LCBpZiB0aGUgc3lzdGVtIGlzIG91dCBvZiBtZW1vcnksIHRo
ZW4geW91IGhhdmUgdG8gcGljawo+IGEgdmljdGltLl0KCkFuIGV4YW1wbGUKClRocmVhZCBBCQkJ
CVRocmVhZCBCCgoJc3VibWl0KFZrQ21kV2FpdEV2ZW50cykKCXJlY3Zmcm9tKFRocmVhZEIpCS4u
LglzZW5kdG8oVGhyZWFkQikKCQkJCQlcLSBhbGxvY19wYWdlCgkJCQkJIFwtIGRpcmVjdCByZWNs
YWltCgkJCQkJICBcLSBkbWFfZmVuY2Vfd2FpdChBKQoJVmtTZXRFdmVudCgpCgpSZWdhcmRsZXNz
IG9mIHRoYXQgYWN0dWFsIGRlYWRsb2NrLCB3YWl0aW5nIG9uIGFuIGFyYml0cmFyeSBmZW5jZSBp
bmN1cnMKYW4gdW5ib3VuZGVkIGxhdGVuY3kgd2hpY2ggaXMgdW5hY2NlcHRhYmxlIGZvciBkaXJl
Y3QgcmVjbGFpbS4KCk9ubGluZSBkZWJ1Z2dpbmcgY2FuIGluZGVmaW5pdGVseSBzdXNwZW5kIGZl
bmNlIHNpZ25hbGluZywgYW5kIHRoZSBvbmx5Cmd1YXJhbnRlZSB3ZSBtYWtlIG9mIGZvcndhcmQg
cHJvZ3Jlc3MsIGluIHNvbWUgY2FzZXMsIGlzIHByb2Nlc3MKdGVybWluYXRpb24uCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
