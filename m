Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B8A109E04
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 13:33:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6962D89CDB;
	Tue, 26 Nov 2019 12:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B067589CDB
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 12:32:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19343519-1500050 for multiple; Tue, 26 Nov 2019 12:32:19 +0000
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191126122248.GB24821@ideak-desk.fi.intel.com>
References: <20191126100435.2636304-1-chris@chris-wilson.co.uk>
 <20191126122248.GB24821@ideak-desk.fi.intel.com>
Message-ID: <157477153317.15944.4588211247192502626@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 26 Nov 2019 12:32:13 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Manual rc6 entry upon parking
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMTEtMjYgMTI6MjI6NDgpCj4gSGksCj4gCj4gT24gVHVl
LCBOb3YgMjYsIDIwMTkgYXQgMTA6MDQ6MzVBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+
ID4gTm93IHRoYXQgd2UgcmFwaWRseSBwYXJrIHRoZSBHVCB3aGVuIHRoZSBHUFUgaWRsZXMsIHdl
IG9mdGVuIGZpbmQKPiA+IG91cnNlbHZlcyBpZGxpbmcgZmFzdGVyIHRoYW4gdGhlIFJDNiBwcm9t
b3Rpb24gdGltZXIuIFRodXMgaWYgd2UgdGVsbAo+ID4gdGhlIEdQVSB0byBlbnRlciBSQzYgbWFu
dWFsbHkgYXMgd2UgcGFyaywgd2UgY2FuIGRvIHNvIHF1aWNrZXIgKGJ5Cj4gPiBhcm91bmQgNTBt
cywgaGFsZiBhbiBFSSBvbiBhdmVyYWdlKSBhbmQgbWFyZ2luYWxseSBpbmNyZWFzZSBvdXIKPiA+
IHBvd2Vyc2F2aW5nIGFjcm9zcyBhbGwgZXhlY2xpc3RzIHBsYXRmb3Jtcy4KPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBD
YzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Cj4gPiBDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogSW1yZSBEZWFrIDxpbXJl
LmRlYWtAaW50ZWwuY29tPgo+IAo+IExvb2tzIG9rOgo+IEFja2VkLWJ5OiBJbXJlIERlYWsgPGlt
cmUuZGVha0BpbnRlbC5jb20+Cj4gCj4gRG9lcyBpbnRlbF9yYzZfcGFyaygpIHdvcmsgb24gVkxW
L0NIViB0b28/IEkgY2FuJ3Qgc2VlIGF0IGxlYXN0IHRoYXQKPiB3ZSdkIGVuYWJsZSBSQzYgb24g
dGhvc2Ugd2l0aCBHRU42X1JDX0NUTF9SQzZfRU5BQkxFLgoKSSBoYXZlIG5vdCB5ZXQgb2JzZXJ2
ZWQgYW55IGlsbCBlZmZlY3RzLCBidXQgSSBhbHNvIGhhdmVuJ3QgY29tcGxldGVkIGEKcG0gcnVu
IG9uIGJzdy9ieXQsIHNvIEkgY2FuIG5vdCBzYXkgaWYgaXQncyBzaW1wbHkgaWdub3JlZCBieSB0
aGUgUENVLgoKSSdsbCBkbyBhIHNlbGZ0ZXN0IHRvIGNvbmZpcm0gdGhhdCBieSBkaXNhYmxpbmcg
dGhlIEhXIHRpbWVyIGFuZCBzZXR0aW5nCnRob3NlIGJpdHMsIHdlIGRvIGVudGVyIHJjNiAoYW5k
IHZpY2UgdmVyc2Egb24gcmV0dXJuaW5nIGNvbnRyb2wgdG8gSFcpLgogCj4gQWxzbyB3aGF0IGlz
IHRoZSB2YWx1ZSB3cml0dGVuIHRvIEdFTjZfUkNfU1RBVEU/IElzIGl0IG9rIHRvIHVzZSB0aGUK
PiBzYW1lIHZhbHVlIGFmdGVyIHVucGFyaygpPwoKTWFnaWMgOikKCkFpdWkgKGJhc2VkIG1vc3Rs
eSBvbiBteSBvd24gaHlwb3RoZXNpcyBhbmQgd2F0Y2hpbmcgdGhlIEhXKSBpdCBhY3RzIGxpa2UK
YSByZXF1ZXN0IGFuZCB3aWxsIGJlIHdyaXR0ZW4gb3ZlciBieSB0aGUgSFcgYXQgdGhlIGVuZCBv
ZiBpdHMgRUkgKG9yCndoZW5ldmVyIGV4YWN0bHkgaXQgZGVjaWRlcyBvbiB3aGF0IG1vZGUgdG8g
YmUgaW4pLiBTbyBhcyB3ZSBlbmFibGUgdGhlCkhXIHRpbWVycywgd2UgbG9zZSBvd25lcnNoaXAg
b2YgdGhhdCBmaWVsZCBhbmQgY29udHJvbCBvdmVyIHdoZW4gdG8KZW50ZXIgcmM2LgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
