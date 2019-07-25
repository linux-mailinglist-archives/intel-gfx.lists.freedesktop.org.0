Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 288ED75B3B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 01:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90456E839;
	Thu, 25 Jul 2019 23:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF9AE6E839
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 23:27:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17611529-1500050 for multiple; Fri, 26 Jul 2019 00:27:32 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68B39EC27@fmsmsx120.amr.corp.intel.com>
References: <57b95613f6cf4a0806baeb3d99790bd90b7615e4>
 <20190725231651.17660-1-chris@chris-wilson.co.uk>
 <AD48BB7FB99B174FBCC69E228F58B3B68B39EC27@fmsmsx120.amr.corp.intel.com>
Message-ID: <156409725005.30723.12612262044238740018@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 26 Jul 2019 00:27:30 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Replace hangcheck by heartbeats
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

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMDctMjYgMDA6MjE6NDcpCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiBTZW50OiBUaHVyc2RheSwgSnVseSAyNSwgMjAxOSA0OjE3IFBNCj4g
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPjsgSm9vbmFzIExhaHRpbmVuCj4gPiA8am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT47IFVyc3VsaW4sIFR2cnRrbyA8dHZydGtvLnVyc3Vs
aW5AaW50ZWwuY29tPjsKPiA+IEJsb29tZmllbGQsIEpvbiA8am9uLmJsb29tZmllbGRAaW50ZWwu
Y29tPgo+ID4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNTogUmVwbGFjZSBoYW5nY2hlY2sgYnkg
aGVhcnRiZWF0cwo+ID4gCj4gPiBSZXBsYWNlIHNhbXBsaW5nIHRoZSBlbmdpbmUgc3RhdGUgZXZl
cnkgc28gb2Z0ZW4gd2l0aCBhIHBlcmlvZGljCj4gPiBoZWFydGJlYXQgcmVxdWVzdCB0byBtZWFz
dXJlIHRoZSBoZWFsdGggb2YgYW4gZW5naW5lLiBUaGlzIGlzIGNvdXBsZWQKPiA+IHdpdGggdGhl
IGZvcmNlZC1wcmVlbXB0aW9uIHRvIGFsbG93IGxvbmcgcnVubmluZyByZXF1ZXN0cyB0byBzdXJ2
aXZlIHNvCj4gPiBsb25nIGFzIHRoZXkgZG8gbm90IGJsb2NrIG90aGVyIHVzZXJzLgo+IAo+IENh
biB5b3UgZXhwbGFpbiB3aHkgd2Ugd291bGQgbmVlZCB0aGlzIGF0IGFsbCBpZiB3ZSBoYXZlIGZv
cmNlZC1wcmVlbXB0aW9uPwo+IEZvcmNlZCBwcmVlbXB0aW9uIGd1YXJhbnRlZXMgdGhhdCBhbiBl
bmdpbmUgY2Fubm90IGludGVyZmVyZSB3aXRoIHRoZSB0aW1lbHkKPiBleGVjdXRpb24gb2Ygb3Ro
ZXIgY29udGV4dHMuIElmIGl0IGhhbmdzLCBidXQgbm90aGluZyBlbHNlIHdhbnRzIHRvIHVzZSB0
aGUgZW5naW5lCj4gdGhlbiBkbyB3ZSBjYXJlPwoKV2UgbWF5IG5vdCBoYXZlIHNvbWV0aGluZyBl
bHNlIHdhaXRpbmcgdG8gdXNlIHRoZSBlbmdpbmUsIGJ1dCB3ZSBtYXkKaGF2ZSB1c2VycyB3YWl0
aW5nIGZvciB0aGUgcmVzcG9uc2Ugd2hlcmUgd2UgbmVlZCB0byBkZXRlY3QgdGhlIEdQVSBoYW5n
CnRvIHByZXZlbnQgYW4gaW5maW5pdGUgd2FpdCAvIHN0dWNrIHByb2Nlc3NlcyBhbmQgaW5maW5p
dGUgcG93ZXIgZHJhaW4uCgpUaGVyZSBpcyBhbHNvIHRoZSBzZWNvbmRhcnkgdGFzayBvZiBmbHVz
aGluZyBpZGxlIGJhcnJpZXJzLgoKPiBQb3dlciwgb2J2aW91c2x5LiBCdXQgSSdtIG5vdCBldmVy
eXRoaW5nIGNhbiBiZSBwcmUtZW1wdGVkLiBJZiBhIGNvbXB1dGUKPiBjb250ZXh0IGlzIHJ1bm5p
bmcgb24gYW4gZW5naW5lLCBhbmQgbm8gb3RoZXIgY29udGV4dHMgcmVxdWlyZSB0aGF0IGVuZ2lu
ZSwKPiB0aGVuIGlzIGl0ICByaWdodCB0byBudWtlIGl0IGp1c3QgYmVjYXVzZSBpdCdzIGJ1c3kg
aW4gYSBsb25nIHJ1bm5pbmcgdGhyZWFkPwoKWWVzLiBVbmxlc3MgeW91IGFzayB0aGF0IHdlIGlt
cGxlbWVudCBHUFUtaXNvbGF0aW9uIHdoZXJlIG5vdCBldmVuIHRoZQprZXJuZWwgaXMgYWxsb3dl
ZCB0byB1c2UgYSBwYXJ0aWN1bGFyIHNldCBvZiBlbmdpbmVzLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
