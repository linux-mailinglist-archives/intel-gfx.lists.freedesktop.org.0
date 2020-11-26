Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BFB2C56BA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 15:13:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16456E948;
	Thu, 26 Nov 2020 14:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964A86E948
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 14:13:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23117683-1500050 for multiple; Thu, 26 Nov 2020 14:13:11 +0000
MIME-Version: 1.0
In-Reply-To: <20201126140824.GC6112@intel.com>
References: <20201126105539.2661-1-chris@chris-wilson.co.uk>
 <20201126140824.GC6112@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Thu, 26 Nov 2020 14:13:09 +0000
Message-ID: <160639998981.31673.3771025151904134465@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Program mocs:63 for cache
 eviction on gen9
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMTEtMjYgMTQ6MDg6MjQpCj4gT24gVGh1LCBO
b3YgMjYsIDIwMjAgYXQgMTA6NTU6MzlBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
VmlsbGUgbm90aWNlZCB0aGF0IHRoZSBsYXN0IG1vY3MgZW50cnkgaXMgdXNlZCB1bmNvbmRpdGlv
bmFsbHkgYnkgdGhlIEhXCj4gPiB3aGVuIGl0IHBlcmZvcm1zIGNhY2hlIGV2aWN0aW9ucywgYW5k
IG5vdGVkIHRoYXQgd2hpbGUgdGhlIHZhbHVlIGlzIG5vdAo+ID4gbWVhbnQgdG8gYmUgd3JpdGFi
bGUgYnkgdGhlIGRyaXZlciwgd2Ugc2hvdWxkIHByb2dyYW0gaXQgdG8gYSByZWFzb25hYmxlCj4g
PiB2YWx1ZSBuZXZlcnRoZWxlc3MuCj4gPiAKPiA+IEFzIGl0IHR1cm5zIG91dCwgd2UgY2FuIGNo
YW5nZSB0aGUgdmFsdWUgb2YgbW9jczo2MyBhbmQgdGhlIHZhbHVlIHdlCj4gPiB3ZXJlIHByb2dy
YW1taW5nIGludG8gaXQgd291bGQgY2F1c2UgaGFyZCBoYW5ncyBpbiBjb25qdW5jdGlvbiB3aXRo
Cj4gPiBhdG9taWMgb3BlcmF0aW9ucy4KPiA+IAo+ID4gU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2xvc2VzOiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzI3MDcKPiA+IEZpeGVz
OiAzYmJhYmEwY2VhYTIgKCJkcm0vaTkxNTogQWRkZWQgUHJvZ3JhbW1pbmcgb2YgdGhlIE1PQ1Mi
KQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiA+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gPiBDYzog
PHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjQuMysKPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYyB8IDUgKysrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9tb2NzLmMKPiA+IGluZGV4IDI1NDg3M2UxNjQ2ZS4uNmFlNTEyODQ3ZjY0IDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiA+IEBAIC0xMzEsNyArMTMx
LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfbW9jc19lbnRyeSBza2xfbW9jc190
YWJsZVtdID0gewo+ID4gICAgICAgR0VOOV9NT0NTX0VOVFJJRVMsCj4gPiAgICAgICBNT0NTX0VO
VFJZKEk5MTVfTU9DU19DQUNIRUQsCj4gPiAgICAgICAgICAgICAgICAgIExFXzNfV0IgfCBMRV9U
Q18yX0xMQ19FTExDIHwgTEVfTFJVTSgzKSwKPiA+IC0gICAgICAgICAgICAgICAgTDNfM19XQikK
PiA+ICsgICAgICAgICAgICAgICAgTDNfM19XQiksCj4gPiArICAgICBNT0NTX0VOVFJZKDYzLAo+
IAo+IFdvbmRlciBpZiB3ZSBzaG91bGQgZ2l2ZSB0aGVzZSBtYWdpYyBNT0NTIGVudHJpZXMgYWN0
dWFsIG5hbWVzPwoKRm9yIGEgb25lLW9mZiBlbnRyeSB0aGF0IGRvZXNuJ3QgaGF2ZSBhIHNwZWNp
YWwgbmFtZSBpbiB0aGUgc3BlYywgc2VlbXMKbGlrZSBvdmVya2lsbC4gSSBhZGRlZCB0aGUgY29t
bWVudHMgZnJvbSB0aGUgc3BlYyB0aGF0IHRlbGwgdXMgYWJvdXQgaG93CnRoZSBIVyBpcyB1c2lu
ZyBpdC4KClRoYXQgcGFnZSBoYXMgYSBsb3Qgb2YgaGlkZGVuIGdlbXMgYWJvdXQgTU9DUyBvbiBz
a2wuIFRvbnMgb2YgbWFnaWMKd2UndmUgbWlzc2VkIG91dCBvbi4gVWdoLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
