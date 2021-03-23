Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C956345CA3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 12:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 434686E8B7;
	Tue, 23 Mar 2021 11:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D926E8B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 11:19:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24204721-1500050 for multiple; Tue, 23 Mar 2021 11:18:56 +0000
MIME-Version: 1.0
In-Reply-To: <YFiuTGbrhSR+eKK/@intel.com>
References: <20210321161038.9329-1-ville.syrjala@linux.intel.com>
 <161634408760.31629.1053248022479151885@build.alporthouse.com>
 <161634423285.31629.4117583325553566238@build.alporthouse.com>
 <YFiuTGbrhSR+eKK/@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Tue, 23 Mar 2021 11:18:57 +0000
Message-ID: <161649833779.31629.12124682842377138715@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid div-by-zero on gen2
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjEtMDMtMjIgMTQ6NDg6NDQpCj4gT24gU3VuLCBN
YXIgMjEsIDIwMjEgYXQgMDQ6MzA6MzJQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjEtMDMtMjEgMTY6Mjg6MDcpCj4gPiA+IFF1b3Rpbmcg
VmlsbGUgU3lyamFsYSAoMjAyMS0wMy0yMSAxNjoxMDozOCkKPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiA+ID4gPiBpbmRleCBlYzI4YTZjZGU0OWIuLjBi
MjQzNGUyOWQwMCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fbW1hbi5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX21tYW4uYwo+ID4gPiA+IEBAIC0xODksNyArMTg5LDcgQEAgY29tcHV0ZV9wYXJ0aWFs
X3ZpZXcoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiA+ID4gPiAgICAg
ICAgIHN0cnVjdCBpOTE1X2dndHRfdmlldyB2aWV3Owo+ID4gPiA+ICAKPiA+ID4gPiAgICAgICAg
IGlmIChpOTE1X2dlbV9vYmplY3RfaXNfdGlsZWQob2JqKSkKPiA+ID4gPiAtICAgICAgICAgICAg
ICAgY2h1bmsgPSByb3VuZHVwKGNodW5rLCB0aWxlX3Jvd19wYWdlcyhvYmopKTsKPiA+ID4gPiAr
ICAgICAgICAgICAgICAgY2h1bmsgPSByb3VuZHVwKGNodW5rLCB0aWxlX3Jvd19wYWdlcyhvYmop
ID86IDEpOwo+ID4gPiAKPiA+ID4gSSB3YXMgdGhpbmtpbmcgdGhlIGFuc3dlciB3b3VsZCBiZSB0
byBhbGlnbiB0byB0aGUgbmV4dCBwYWdlLCBhbmQgaGV5Cj4gPiA+IHByZXN0byEKPiA+IAo+ID4g
V2FpdCwgdGhlIHRpbGUgcm93IGNhbm5vdCBiZSBhIHNpbmdsZSBwYWdlLiBTb21ldGhpbmcgZWxz
ZSBpcyB6ZXJvIHRoYXQKPiA+IHNob3VsZCBub3QgYmUuCj4gCj4gSG93IGNvbWU/IEF0IGxlYXN0
IGk5MTVfdGlsaW5nX29rKCkgZG9lc24ndCBlbmZvcmNlIGFueQo+IGJpZ2dlciBsb3dlciBib3Vu
ZC4KClRoaXMgbWF5YmUgdGhlIHRyYXAgSSdtIGZhbGxpbmcgaW50bywgdGhpbmtpbmcgdGhhdCBh
bGwgYXJjaCBoYXZlIGF0CmxlYXN0IDRLIHRpbGUgcm93cy4gU29tZSBtaWdodCBzYXksICJzaG91
bGRuJ3QgdGhlIGNodW5rIGJlIGFsaWduZWQgdG8gYW4KZXZlbiB0aWxlIHJvdyIgYXMgd2VsbCwg
YnV0IEkgd2FzIG5ldmVyIGNlcnRhaW4gYWJvdXQgdGhhdC4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
