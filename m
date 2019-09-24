Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A93BC828
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 14:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C195C6EA1B;
	Tue, 24 Sep 2019 12:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40BB66EA1B
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 12:48:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18599642-1500050 for multiple; Tue, 24 Sep 2019 13:48:20 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190924121821.31277-1-chris@chris-wilson.co.uk>
 <87h851zwvt.fsf@gaia.fi.intel.com>
In-Reply-To: <87h851zwvt.fsf@gaia.fi.intel.com>
Message-ID: <156932929515.4979.5131378134682439317@skylake-alporthouse-com>
Date: Tue, 24 Sep 2019 13:48:15 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_map_gtt: Escape from slow
 forked GTT access
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTI0IDEzOjQ0OjU0KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBCZXdhcmUgdGhlIHNs
aXRoeSB0J292ZXMuCj4gPgo+ID4gRm9ya2VkIEdUVCBhY2Nlc3Mgb24gaWNsIGlzIG5vdG9yaW91
c2x5IHNsb3csIHNvIHJhdGhlciB0aGFuIHNwZW5kIGFuCj4gPiBldGVybml0eSBjaGVja2luZyB0
aGUgd2hvbGUgb2JqZWN0LCBjaGVjayBmb3IgYSBjb21wbGV0aW9uIGV2ZW50IGFmdGVyCj4gPiBo
YW5kbGluZyB0aGUgcGFnZWZhdWx0LiBJdCdzIGlzIHRoZSByYWNlIG9mIHRoZSBwYWdlZmF1bHQg
dnMgcmVzZXQgdGhhdAo+ID4gd2UgY2FyZSBtb3N0IGFib3V0LCBhbmQgd2UgZXhwZWN0IHRoZSBi
dWcgdG8gcmVzdWx0IGluIHRoZSBwYWdlZmF1bHQKPiA+IGJlaW5nIGJsb2NrZWQgaW5kZWZpbml0
ZWx5LCBzbyBjaGVja2luZyBhZnRlcndhcmRzIGRvZXMgbm90IHJlZHVjZQo+ID4gY292ZXJhZ2Uu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5j
b20+Cj4gPiAtLS0KPiA+ICB0ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jIHwgMyArKysKPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3Rlc3Rz
L2k5MTUvZ2VtX21tYXBfZ3R0LmMgYi90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCj4gPiBpbmRl
eCAwNDI4YTEzNzIuLjkxZGE1YTM3YiAxMDA2NDQKPiA+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX21t
YXBfZ3R0LmMKPiA+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKPiA+IEBAIC02MDIs
NiArNjAyLDkgQEAgdGVzdF9oYW5nKGludCBmZCkKPiA+ICAKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGd0dFswXVt4XSA9IHBhdHRlcm5zW25leHRfcGF0dGVybl07Cj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBndHRbMV1beF0gPSBwYXR0ZXJuc1tuZXh0X3BhdHRl
cm5dOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKFJFQURfT05D
RShjb250cm9sLT5kb25lKSkKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgYnJlYWs7Cj4gCj4gVGhlIGhhbmcgd291bGQgaGF2ZSBtYW5pZmVzdGVkIGl0c2VsZiBvbiBh
IHByZXZpb3VzIGxvb3AKPiBhbHJlYWR5Lgo+IAo+IFNvIHlvdSBjb3VsZCBsaWZlIHRoZSBleGl0
IGNvbmRpdGlvbiBiZWZvcmUgdGhlIHdyaXRlcy4KClRoZSB3cml0ZXMgbWF5IGFsc28gY2F1c2Ug
YSBmcmVzaCBmYXVsdC4gVGhlIGlkZWEgd2FzIHRvIHNpbXBseSBjaGVjawptb3JlIGZyZXF1ZW50
bHkgdGhhbiBvbmNlIHBlciBvYmplY3QgLS0gc28gbG9uZyBhcyB3ZSBjaGVjayB3aXRoaW4gMnMg
b2YKdGhlIHRlcm1pbmF0aW9uIHJlcXVlc3QsIHdlIGFyZSBnb29kLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
