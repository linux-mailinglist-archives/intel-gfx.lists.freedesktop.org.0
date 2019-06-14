Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00781459BF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 11:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C62889760;
	Fri, 14 Jun 2019 09:59:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E1B89760
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 09:59:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16900024-1500050 for multiple; Fri, 14 Jun 2019 10:59:20 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-7-tvrtko.ursulin@linux.intel.com>
 <156043374038.16925.16516920630664771480@skylake-alporthouse-com>
 <6186c719-417f-53d0-c37c-640c0f341be5@linux.intel.com>
 <156050427156.12188.12057320062082265893@skylake-alporthouse-com>
 <3cc42950-14cd-6e7a-d4ef-2b485b12d0af@linux.intel.com>
In-Reply-To: <3cc42950-14cd-6e7a-d4ef-2b485b12d0af@linux.intel.com>
Message-ID: <156050635768.12536.14431598745520539852@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 10:59:17 +0100
Subject: Re: [Intel-gfx] [RFC 06/28] drm/i915: Convert
 i915_gem_init_swizzling to intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxMDo0MjoxMSkKPiAKPiBPbiAxNC8w
Ni8yMDE5IDEwOjI0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTE0IDEwOjA2OjQxKQo+ID4+Cj4gPj4gT24gMTMvMDYvMjAxOSAxNDo0OSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2
LTEzIDE0OjM1OjE3KQo+ID4+Pj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiA+Pj4+Cj4gPj4+PiBTdGFydCB1c2luZyB0aGUgbmV3bHkgaW50cm9kdWNl
ZCBzdHJ1Y3QgaW50ZWxfZ3QgdG8gZnVzZSB0b2dldGhlciBjb3JyZWN0Cj4gPj4+PiBsb2dpY2Fs
IGluaXQgZmxvdyB3aXRoIHVuY29yZSBmb3IgbW9yZSByZW1vdmFsIG9mIGltcGxpY2l0IGRldl9w
cml2IGluCj4gPj4+PiBtbWlvIGFjY2Vzcy4KPiA+Pj4+Cj4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4+Pgo+ID4+PiBMb29r
cyBmaW5lLCBJIG1pZ2h0IG1vdmUgaXQgYWdhaW4gbGF0ZXIgbmV4dCB0byB0aGUgZmVuY2UgcmVn
aXN0ZXJzLCBvcgo+ID4+PiBhdCBsZWFzdCBwdWxsIHRoaXMgYW5kIHRoZSBkZXRlY3Rpb24gaW50
byBpdHMgb3duIGludGVsX2d0X3N3aXp6bGluZy5jCj4gPj4+Cj4gPj4+IEhtbSwgbm93IHRoYXQg
SSBzYWlkIHRoYXQsIGRvZXMgdGhhdCBzZWVtIGxpa2UgYSByZWFzb25hYmxlIHRoaW5nIHRvIGRv
Cj4gPj4+IHJpZ2h0IGF3YXksIHNlZSBpOTE1X2dlbV9mZW5jZV9yZWdzLmMgZm9yIHRoZSBzd2l6
emxlIHByb2JlPwo+ID4+Cj4gPj4gSXMgc3dpenpsaW5nIGdsb2JhbCBmb3IgdGhlIG1lbW9yeSBj
b250cm9sbGVyIG9yIGFwcGxpY2FibGUgb25seSBmb3IKPiA+PiBmZW5jZWQgcmVnaW9ucz8KPiA+
IAo+ID4gQXMgZmFyIGFzIG15IHVuZGVyc3RhbmRpbmcgZ29lcywgaXQgdXNlZCB0byBiZSBvbmx5
IGZvciBmZW5jZWQgcmVnaW9ucwo+ID4gd2hlbiB0aGUgZ3B1IHdhcyB0aGUgZ21jaCwgYnV0IGNv
bXBsZXRlbHkgbWlncmF0ZWQgdG8gdGhlIG1lbW9yeQo+ID4gY29udHJvbGxlciBhcm91bmQgc25i
ICh3aXRoIHRoZSByaW5nIGFyY2hpdGVjdHVyZSwgdGhlIEdQVSB3YXMganVzdAo+ID4gYW5vdGhl
ciBjbGllbnQpLiBUaGlzIGNvaW5jaWRlcyB3aXRoIHN3aXp6bGluZyBiZWNvbWluZyBkZWZ1bmN0
IGFzIHBhcnQKPiA+IG9mIHRpbGluZy4gVG8gZnVydGhlciBtdWRkeSB0aGUgcGljdHVyZXMsIGFs
bCB0aGUgdGltZSB0aGUgbWVtb3J5Cj4gPiBjb250cm9sbGVyIGlzIGludGVybGVhdmluZyBhY3Jv
c3MgdGhlIGNoYW5uZWxzLiBJIGFtIHByZXR0eSBjZXJ0YWluCj4gPiBhcm91bmQgZ2VuMyB0aGlz
IHdhcyBleHBsaWNpdGx5IGNvbnRyb2xsZWQgYnkgdGhlIEdQVSBmb3IgaXRzIHBhZ2VzLCBidXQK
PiA+IGJ5IGdlbjUgdGhpcyBpcyB0cmFuc3BhcmVudCB0byB0aGUgR1BVLiAoU2VlIHRoZSBpc3N1
ZXMgd2l0aCBMLXNoYXBlZAo+ID4gbWVtb3J5IGNvbmZpZ3VyYXRpb25zIHdoZXJlIHRoZSBtYWdp
YyB3YXMgbm90IGhpZGRlbiBmcm9tIHRoZSBHUFUuKQo+ID4gCj4gPiBTbywgYWl1aSwgZm9yIG91
ciB3b3JsZCB2aWV3IHRpbGluZyBhbmQgc3dpenpsaW5nIGFyZSBjb21wbGljaXQuCj4gCj4gSG1t
Li4gbG9va2luZyBhdCB0aGUgY29kZSBjb21wbGljaXQgYnV0IHN0aWxsIHNlZW0gc2VwYXJhdGUu
IFNvIEkgY291bGQgCj4gYmUgbW9yZSBlYXNpbHkgY29udmluY2VkIHRoZSBzd2l6emxpbmcgY29k
ZSBkb2VzIG5vdCBhY3R1YWxseSBiZWxvbmcgaW4gCj4gaTkxNV9nZW1fZmVuY2VfcmVnLmMgYW5k
IHdlIHNob3VsZCBtYXliZSBoYXZlIGludGVsX2d0X3N3aXp6bGUuaHxjLgoKZ2VtX2ZlbmNlX3Jl
ZyAtPiBndC8gYXMgd2VsbCBJIHRoaW5rLCBleGNlcHQgZm9yIHRoZSBpOTE1X2dlbV9vYmplY3QK
Yml0bWFwcy4gV2UgY2FuIHB1dCB0aGUgYml0bWFwcyBpbnRvIGdlbS9pOTE1X2dlbV90aWxpbmc/
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
