Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93596B4287
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 22:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E074F6EA83;
	Mon, 16 Sep 2019 20:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C7726EA83
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 20:54:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18511796-1500050 for multiple; Mon, 16 Sep 2019 21:54:12 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <68a86006-4113-d8fd-4ca5-4f7a00b1d21f@intel.com>
References: <20190914082550.11547-1-chris@chris-wilson.co.uk>
 <68a86006-4113-d8fd-4ca5-4f7a00b1d21f@intel.com>
Message-ID: <156866724977.5729.14683483492813044307@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 16 Sep 2019 21:54:09 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Suspend pre-parser across GTT
 invalidations
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTE2IDIxOjM3OjI2KQo+IAo+
IAo+IE9uIDkvMTQvMTkgMToyNSBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gQmVmb3JlIHdl
IGV4ZWN1dGUgYSBiYXRjaCwgd2UgbXVzdCBmaXJzdCBpc3N1ZSBhbnkgYW5kIGFsbCBUTEIKPiA+
IGludmFsaWRhdGlvbnMgc28gdGhhdCBiYXRjaCBwaWNrcyB1cCB0aGUgbmV3IHBhZ2UgdGFibGUg
ZW50cmllcy4KPiA+IFRpZ2VybGFrZSdzIHByZXBhcnNlciBpcyB3ZWFrZW5pbmcgb3VyIHBvc3Qt
c3luYyBDU19TVEFMTCBpbnNpZGUgdGhlCj4gPiBpbnZhbGlkYXRlIHBpcGUtY29udHJvbCBhbmQg
YWxsb3dpbmcgdGhlIGxvYWRpbmcgb2YgdGhlIGJhdGNoIGJ1ZmZlcgo+ID4gYmVmb3JlIHdlIGhh
dmUgc2V0dXAgaXRzIHBhZ2UgdGFibGUgKGFuZCBzbyBpdCBsb2FkcyB0aGUgd3JvbmcgcGFnZSBh
bmQKPiA+IGV4ZWN1dGVzIGluZGVmaW5pdGVseSkuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IERhbmllbGUgQ2Vy
YW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gPiBDYzogTWlr
YSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+IFN1
Z2dlc3Rpb25zIHdlbGNvbWUgYXMgdGhpcyBkb2VzIG5vdCBzZWVtIGludGVuZGVkIGJlaGF2aW91
ciwgc28gSQo+ID4gc3VzcGVjdCB0aGVyZSBpcyBhIHN0cm9uZyBwaXBlY29udHJvbCBmbGFnIHdl
IGFyZSBtaXNzaW5nLgo+IAo+IFdoZW4gSSBkaXNjdXNzZWQgdGhlIHByZS1wYXJzZXIgd2l0aCB0
aGUgSFcgdGVhbSB0aGUgZmVlZGJhY2sgSSBnb3Qgd2FzIAo+IHRoYXQgdGhlIG9ubHkgd2F5IHRv
IG1ha2Ugc3VyZSB3ZSBkb24ndCByYWNlIHRoZSBtZW1vcnkgdXBkYXRlIGlzIHRvIAo+IGVpdGhl
ciBsZWF2ZSBlbm91Z2ggQ0wgb2Ygc3BhY2Ugb3IgdHVybiB0aGUgcGFyc2VyIG9mZiBsaWtlIHlv
dSBkaWQgCj4gYmVsb3cuIFRoYXQgZGlzY3Vzc2lvbiB3YXMgYWJvdXQgYWN0dWFsIHBoeXNpY2Fs
IG1lbW9yeSBhY2Nlc3MgdGhvdWdoIAo+IGFuZCBub3QgVExCLgo+IEFueXdheSwgdHVybmluZyBv
ZmYgdGhlIHBhcnNlciBhcm91bmQgdGhlIHBpcGUgY29udHJvbCwgaWYgaXQgZml4ZXMgdGhlIAo+
IHByb2JsZW0sIHNob3VsZG4ndCBiZSB0b28gYmFkIHNpbmNlIHRoZSBtYWluIHBlcmZvcm1hbmNl
IGFkdmFudGFnZSBvZiAKPiB0aGUgcGFyc2VyIGlzIGV4cGVjdGVkIGluc2lkZSB0aGUgdXNlciBi
YXRjaC4gVGhlIGFsdGVybmF0aXZlIHdvdWxkIAo+IHByb2JhYmx5IGJlIHRvIHN0b3AgaW52YWxp
ZGF0aW5nIHRoZSBUTEJzIGZyb20gd2l0aGluIHRoZSByaW5nIGFuZCAKPiBzd2l0Y2ggdG8gTU1J
TyBpbnZhbGlkYXRpb25zIHdoZW4gbGl0ZS1yZXN0b3JpbmcgYSBuZXcgcmVxdWVzdCBpbiB0aGUg
Cj4gcmluZyAodGhlIENTIHdpbGwgaW1wbGljaXRseSBzdG9wIHRoZSBwYXJzZXIgYW5kIGludmFs
aWRhdGUgZXZlcnl0aGluZyAKPiBvbiBhIGZ1bGwgY3R4IHN3aXRjaCkuCgpJIGFsc28gb25seSBv
YnNlcnZlIHRoZSBlZmZlY3Qgb24gcmNzMCBhdG0uIERvZXMgdGhhdCB0aWUgaW4gd2l0aCB0aGUK
cHJlcGFyc2VyIHRoZW9yeT8gaS5lLiB0aGF0IGVpdGhlciB0aGUgTUlfRkxVU0hfRFcgaXMgYSBz
dHJvbmcgYmFycmllcgpvciB0aGUgcHJlcGFyc2VyIGlzIHJjczAgb25seS4gKFN0cmljdGx5IHNw
ZWFraW5nIEkgaGF2ZW4ndCB5ZXQgcnVuIHRoZQppZ3RfY3NfdGxiIHRlc3Qgb24gdGdsL2JjczAg
c28gSSBhbSBiYXNpbmcgdGhlIGFib3ZlIG9mZiB0aGUgaWd0IHRlc3QKcmVzdWx0cyB0aGF0IHBh
c3Mgb24gYmNzMCBidXQgY29uc2lzdGVudGx5IGZhaWxlZCBvbiByY3MwLikKLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
