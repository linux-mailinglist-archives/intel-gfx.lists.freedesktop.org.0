Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBE955365
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EB926E157;
	Tue, 25 Jun 2019 15:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD8089911
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 15:30:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17020050-1500050 for multiple; Tue, 25 Jun 2019 16:30:17 +0100
MIME-Version: 1.0
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190625152648.GF24125@mdroper-desk.amr.corp.intel.com>
References: <20190614213749.15870-1-jose.souza@intel.com>
 <20190614221739.GF32200@mdroper-desk.amr.corp.intel.com>
 <20190625152648.GF24125@mdroper-desk.amr.corp.intel.com>
Message-ID: <156147661309.2637.4372554521331129464@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 25 Jun 2019 16:30:13 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add missing VECS engine
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

UXVvdGluZyBNYXR0IFJvcGVyICgyMDE5LTA2LTI1IDE2OjI2OjQ4KQo+IE9uIEZyaSwgSnVuIDE0
LCAyMDE5IGF0IDAzOjE3OjM5UE0gLTA3MDAsIE1hdHQgUm9wZXIgd3JvdGU6Cj4gPiBPbiBGcmks
IEp1biAxNCwgMjAxOSBhdCAwMjozNzo0OVBNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOgo+ID4gPiBFSEwgY2FuIGhhdmUgdXAgdG8gb25lIFZFQ1ModmlkZW8gZW5oYW5jZW1l
bnQpIGVuZ2luZSwgc28gYWRkIGl0IHRvCj4gPiA+IHRoZSBkZXZpY2VfaW5mby4KPiA+IAo+ID4g
QnNwZWMgMjkxNTAgaGFzIGEgZm9vdG5vdGUgb24gVkVib3ggdGhhdCBpbmRpY2F0ZXMgIlBhc3Mt
dGhyb3VnaCBvbmx5LAo+ID4gbm8gVkVib3ggcHJvY2Vzc2luZyBsb2dpYy4iICBUaGF0IG5vdGUg
c2VlbXMgYSBiaXQgdmFndWUsIGJ1dCBJIHRoaW5rIEkKPiA+IHNhdyBzb21lIG1vcmUgZGV0YWls
ZWQgaW5mbyBpbiB0aGUgcGFzdCBzb21ld2hlcmUgdGhhdCBpbmRpY2F0ZWQgdGhlCj4gPiBWRUNT
IGNvbW1hbmQgc3RyZWFtZXIgaXMgc3RpbGwgdGVjaG5pY2FsbHkgcHJlc2VudCBidXQgZG9lc24n
dCBhY3R1YWxseQo+ID4gZG8gYW55IHZpZGVvIGVuaGFuY2VtZW50IG9uIEVITDsgaXQganVzdCBw
YXNzZXMgY29udGVudCB0aHJvdWdoIHRvIFNGQy4KPiA+IAo+ID4gSSdtIG5vdCB0ZXJyaWJseSBw
bHVnZ2VkIGludG8gdGhlIG1lZGlhIHNpZGUgb2YgdGhlIHdvcmxkLCBzbyBJJ20gbm90Cj4gPiBz
dXJlIGlmIHdlIHdhbnQgdG8gZXhwb3NlIFZFQ1MgdG8gdXNlcnNwYWNlIGlmIGl0J3MgYmFzaWNh
bGx5IGEgbm9vcCBhbmQKPiA+IGRvZXNuJ3QgZG8gd2hhdCBpdCBub3JtYWxseSBkb2VzIG9uIG90
aGVyIHBsYXRmb3Jtcy4gIEJzcGVjIHBhZ2UgNTIyOQo+ID4gaW1wbGllcyB0aGF0IFNGQyBjYW4g
YmUgZmVkIGRpcmVjdGx5IGJ5IHRoZSBkZWNvZGUgZW5naW5lIHdpdGhvdXQgZ29pbmcKPiA+IHRo
cm91Z2ggVkVCT1gsIHNvIEknbSBub3Qgc3VyZSBpZiBtZWRpYSB1c2Vyc3BhY2Ugd291bGQgZXZl
ciBoYXZlIGEgdXNlCj4gPiBmb3IgdGhlIHBhc3N0aHJvdWdoLW9ubHkgVkVDUyBzdHJlYW1lci4K
PiA+IAo+ID4gV2Ugc2hvdWxkIHByb2JhYmx5IGFzayBzb21lb25lIG9uIHRoZSBtZWRpYSB0ZWFt
IHdoYXQgdGhlaXIgdGhvdWdodHMgYXJlCj4gPiBvbiB0aGlzLgo+IAo+IFNpbmNlIHRoZSBtZWRp
YSB0ZWFtIGNvbmZpcm1lZCB0aGF0IHRoZXJlIGlzIGluZGVlZCBhIHVzZSBjYXNlIGZvciBhCj4g
cGFzc3Rocm91Z2gtb25seSBWRUNTLAoKSWYgdGhlIENTIGV4aXN0cyBhcyBhIHNlcGFyYXRlIGVu
dGl0eSBzdXJlLi4uIEFueSBjaGFuY2Ugd2UgY2FuIGdldCBhbgplaGwgaW50byBDSSB0byBhY3R1
YWxseSBjb25maXJtIHRoaXM/Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
