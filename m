Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CE49F378
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 21:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C96897E4;
	Tue, 27 Aug 2019 19:49:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972A0897BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 19:49:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18282771-1500050 for multiple; Tue, 27 Aug 2019 20:49:27 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190827185805.21799-1-daniele.ceraolospurio@intel.com>
References: <20190827185805.21799-1-daniele.ceraolospurio@intel.com>
Message-ID: <156693536590.15406.9710277125336160803@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 27 Aug 2019 20:49:25 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: use a separate context for gpu
 relocs
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTI3IDE5OjU4OjA1KQo+IFRo
ZSBDUyBwcmUtcGFyc2VyIGNhbiBwcmUtZmV0Y2ggY29tbWFuZHMgYWNyb3NzIG1lbW9yeSBzeW5j
IHBvaW50cyBhbmQKPiBzdGFydGluZyBmcm9tIGdlbjEyIGl0IGlzIGFibGUgdG8gcHJlLWZldGNo
IGFjcm9zcyBCQl9TVEFSVCBhbmQgQkJfRU5ECj4gYm91bmRhcmllcyBhcyB3ZWxsLCBzbyB3aGVu
IHdlIGVtaXQgZ3B1IHJlbG9jcyB0aGUgcHJlLXBhcnNlciBtaWdodAo+IGZldGNoIHRoZSB0YXJn
ZXQgbG9jYXRpb24gb2YgdGhlIHJlbG9jIGJlZm9yZSB0aGUgbWVtb3J5IHdyaXRlIGxhbmRzLgo+
IAo+IFRoZSBwYXJzZXIgY2FuJ3QgcHJlLWZldGNoIGFjcm9zcyB0aGUgY3R4IHN3aXRjaCwgc28g
d2UgdXNlIGEgc2VwYXJhdGUKPiBjb250ZXh0IHRvIGd1YXJhbnRlZSB0aGF0IHRoZSBtZW1vcnkg
aXMgc3luY2hyb25pemVkIGJlZm9yZSB0aGUgcGFyc2VyCj4gY2FuIGdldCB0byBpdC4KPiAKPiBO
b3RlIHRoYXQgdGhlcmUgaXMgbm8gcmlzayBvZiB0aGUgQ1MgZG9pbmcgYSBsaXRlIHJlc3RvcmUg
ZnJvbSB0aGUgcmVsb2MKPiBjb250ZXh0IHRvIHRoZSB1c2VyIGNvbnRleHQsIGV2ZW4gaWYgdGhl
IHR3byBoYXZlIHRoZSBzYW1lIGh3X2lkLAo+IGJlY2F1c2Ugc2luY2UgZ2VuMTEgdGhlIENTIGFs
c28gY2hlY2tzIHRoZSBMUkNBIHdoZW4gZGVjaWRpbmcgaWYgaXQgY2FuCj4gbGl0ZS1yZXN0b3Jl
Lgo+IAo+IHYyOiBsaW1pdCBuZXcgY29udGV4dCB0byBnZW4xMissIHJlbGVhc2UgaW4gZWJfZGVz
dHJveSwgYWRkIGEgY29tbWVudAo+ICAgICBpbiBlbWl0X2ZpbmlfYnJlYWRjcnVtYiAoQ2hyaXMp
Lgo+IAo+IFN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CgpMb29rcyBzb2xpZCBhbmQgdGhlIGJpZyBleHBsYW5hdG9yeSByZW1pbmRlcnMg
YXJlIHZlcnkgd2VsY29tZS4gKEkgd2lsbApzaGlmdCBpdCB0byBnZW4xMV9maW5pX2JyZWFkY3J1
bWJzIEkgdGhpbmssIHNvIGl0J3MgY2xvc2VyIHRvIHRoZSBnZW4xMgpkaXZpZGUuKSBTdWJ0bGUg
Y2hhbmdlcyBpbiBiZWhhdmlvdXIgYXJlIGVhc2lseSBmb3Jnb3R0ZW4uCgpSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
