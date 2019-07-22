Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D5E70582
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 18:34:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 584EC896EC;
	Mon, 22 Jul 2019 16:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 003EF896EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 16:34:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17509760-1500050 for multiple; Mon, 22 Jul 2019 17:34:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
 <20190718070024.21781-9-chris@chris-wilson.co.uk>
 <52144a00-31b1-eb0d-8bb3-9f92c6e465fd@linux.intel.com>
In-Reply-To: <52144a00-31b1-eb0d-8bb3-9f92c6e465fd@linux.intel.com>
Message-ID: <156381326830.31349.7315735301633275071@skylake-alporthouse-com>
Date: Mon, 22 Jul 2019 17:34:28 +0100
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915: Use
 intel_engine_lookup_user for probing HAS_BSD etc
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yMiAxMzo0OTo1NCkKPiAKPiBPbiAxOC8w
Ny8yMDE5IDA4OjAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBVc2UgdGhlIHNhbWUgbWVjaGFu
aXNtIHRvIGRldGVybWluZSBpZiBhIGJhY2tlbmQgZW5naW5lIGV4aXN0cyBmb3IgYQo+ID4gdWFi
aSBtYXBwaW5nIGFzIHVzZWQgaW50ZXJuYWxseS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDEzICsrKysrKysrKy0tLS0KPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jCj4gPiBpbmRleCBkMWMzNDk5YzhlMDMuLjM2N2JkYzQ2ODlmMSAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiA+IEBAIC02MSw2ICs2MSw3IEBACj4gPiAg
IAo+ID4gICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaCIKPiA+ICAgI2luY2x1ZGUg
ImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIKPiA+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3Vz
ZXIuaCIKPiA+ICAgI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCj4gPiAgICNpbmNsdWRlICJndC9p
bnRlbF9ndF9wbS5oIgo+ID4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfcmVzZXQuaCIKPiA+IEBAIC0z
NzEsMTYgKzM3MiwyMCBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwoc3RydWN0IGRy
bV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiA+ICAgICAgICAgICAgICAgdmFsdWUgPSBkZXZf
cHJpdi0+b3ZlcmxheSA/IDEgOiAwOwo+ID4gICAgICAgICAgICAgICBicmVhazsKPiA+ICAgICAg
IGNhc2UgSTkxNV9QQVJBTV9IQVNfQlNEOgo+ID4gLSAgICAgICAgICAgICB2YWx1ZSA9ICEhZGV2
X3ByaXYtPmVuZ2luZVtWQ1MwXTsKPiA+ICsgICAgICAgICAgICAgdmFsdWUgPSAhIWludGVsX2Vu
Z2luZV9sb29rdXBfdXNlcihkZXZfcHJpdiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMCk7Cj4gPiAg
ICAgICAgICAgICAgIGJyZWFrOwo+ID4gICAgICAgY2FzZSBJOTE1X1BBUkFNX0hBU19CTFQ6Cj4g
PiAtICAgICAgICAgICAgIHZhbHVlID0gISFkZXZfcHJpdi0+ZW5naW5lW0JDUzBdOwo+ID4gKyAg
ICAgICAgICAgICB2YWx1ZSA9ICEhaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKGRldl9wcml2LAo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEk5MTVf
RU5HSU5FX0NMQVNTX0NPUFksIDApOwo+ID4gICAgICAgICAgICAgICBicmVhazsKPiA+ICAgICAg
IGNhc2UgSTkxNV9QQVJBTV9IQVNfVkVCT1g6Cj4gPiAtICAgICAgICAgICAgIHZhbHVlID0gISFk
ZXZfcHJpdi0+ZW5naW5lW1ZFQ1MwXTsKPiA+ICsgICAgICAgICAgICAgdmFsdWUgPSAhIWludGVs
X2VuZ2luZV9sb29rdXBfdXNlcihkZXZfcHJpdiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBJOTE1X0VOR0lORV9DTEFTU19WSURFT19FTkhBTkNF
LCAwKTsKPiA+ICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgICAgICBjYXNlIEk5MTVfUEFSQU1f
SEFTX0JTRDI6Cj4gPiAtICAgICAgICAgICAgIHZhbHVlID0gISFkZXZfcHJpdi0+ZW5naW5lW1ZD
UzFdOwo+ID4gKyAgICAgICAgICAgICB2YWx1ZSA9ICEhaW50ZWxfZW5naW5lX2xvb2t1cF91c2Vy
KGRldl9wcml2LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAxKTsKPiA+ICAgICAgICAgICAgICAgYnJl
YWs7Cj4gPiAgICAgICBjYXNlIEk5MTVfUEFSQU1fSEFTX0xMQzoKPiA+ICAgICAgICAgICAgICAg
dmFsdWUgPSBIQVNfTExDKGRldl9wcml2KTsKPiA+IAo+IAo+IEhvdyBkbyB5b3Ugc2VlIEFCSSBz
ZW1hbnRpY3Mgb2YgdGhlc2UgZ2V0X3BhcmFtcyAtICJHUFUgaGFzIGVuZ2luZSBYLCBvciAKPiBJ
OTE1X0VYRUNfWCB3aWxsIHdvcmsiPwoKSSB3aXNoIHRoZXkgbmV2ZXIgZXhpc3RlZC4gSSBkb24n
dCB0aGluayB3ZSB3YW50IHRvIGJlIGFueSBtb3JlCnByZXNjcmlwdGl2ZSB0aGFuOgoKCWlmICFI
QVNfZm9vOiB0aGVuIEk5MTVfRVhFQ19mb28gKG5vIGN0eC0+ZW5naW5lc1tdKSByZXR1cm5zIC1F
SU5WQUwKCnNvIEkgdGhpbmsgdGhlcmUncyBhIGxpbmsgaGVyZSB3aXRoIHdoYXRldmVyIGRlZmF1
bHRfZW5naW5lcygpIGJlY29tZXMuCk1heSBiZSBiZXN0IHRvIHB1bnQgdGhlc2UgbmV4dCB0byBk
ZWZhdWx0X2VuZ2luZXMgc28gd2UgY2FuIHRyeSBhbmQga2VlcAp0aGVtIGluIHN5bmMuCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
