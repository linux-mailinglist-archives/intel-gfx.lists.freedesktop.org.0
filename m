Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BF5F07F1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 22:13:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2AE26E144;
	Tue,  5 Nov 2019 21:13:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43E086E144;
 Tue,  5 Nov 2019 21:13:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19094675-1500050 for multiple; Tue, 05 Nov 2019 21:13:39 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAKMK7uFW7PqFjcci4SdLGMoSK6gqMK-gPU0OHpoJFjVZJnYT=w@mail.gmail.com>
References: <20191105193829.11599-1-daniel.vetter@ffwll.ch>
 <157298628160.18566.1185169568557179711@skylake-alporthouse-com>
 <CAKMK7uFW7PqFjcci4SdLGMoSK6gqMK-gPU0OHpoJFjVZJnYT=w@mail.gmail.com>
Message-ID: <157298841686.18566.729698423669886628@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 05 Nov 2019 21:13:36 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't select BROKEN
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA1IDIwOjU4OjI1KQo+IE9uIFR1ZSwgTm92
IDUsIDIwMTkgYXQgOTozOCBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4gd3JvdGU6Cj4gPgo+ID4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA1IDE5OjM4
OjI5KQo+ID4gPiBJdCdzIGJyb2tlbi4KPiA+ID4KPiA+ID4gUmVwb3J0ZWQtYnk6IFN0ZXBoZW4g
Um90aHdlbGwgPHNmckBjYW5iLmF1dWcub3JnLmF1Pgo+ID4gPiBSZWZlcmVuY2VzOiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1Ob3ZlbWJlci8y
NDI2MjUuaHRtbAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+IE5vdGU6IFByb2JhYmx5IGJlc3QgdG8gYXBw
bHkgdGhpcyBkaXJlY3RseSBvbnRvIGRybS1uZXh0IHRvIGF2b2lkCj4gPiA+IGhhdmluZyBkcm0t
bmV4dCBkcm9wcGVkIGZyb20gbGludXgtbmV4dCB1bnRpbCB0aGUgbmV4dCBwdWxsIHJlcXVlc3Qu
Cj4gPiA+IC1EYW5pZWwKPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29u
ZmlnLmRlYnVnIHwgMSAtCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+ID4g
Pgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKPiA+ID4gaW5kZXggZWYxMjNlYjI5
MTY4Li5kMmJhOGY3ZTVlNTAgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L0tjb25maWcuZGVidWcKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5k
ZWJ1Zwo+ID4gPiBAQCAtNDQsNyArNDQsNiBAQCBjb25maWcgRFJNX0k5MTVfREVCVUcKPiA+ID4g
ICAgICAgICBzZWxlY3QgRFJNX0k5MTVfU0VMRlRFU1QKPiA+ID4gICAgICAgICBzZWxlY3QgRFJN
X0k5MTVfREVCVUdfUlVOVElNRV9QTQo+ID4gPiAgICAgICAgIHNlbGVjdCBEUk1fSTkxNV9ERUJV
R19NTUlPCj4gPiA+IC0gICAgICAgc2VsZWN0IEJST0tFTiAjIGZvciBwcm90b3R5cGUgdUFQSQo+
ID4KPiA+IFlvdSBoYXZlIHRvIHJlcGxhY2UgaXQgd2l0aCBhbm90aGVyIHNlY3JldCBib29sIGFz
IHlvdSBjYW5ub3Qgb3RoZXJ3aXNlCj4gPiBlbmFibGUgQ09ORklHX0JST0tFTiBpbiAuY29uZmln
Lgo+IAo+IE9yIHRoaXM6Cj4gCj4gZGlmZiAtLWdpdCBhL2luaXQvS2NvbmZpZyBiL2luaXQvS2Nv
bmZpZwo+IGluZGV4IGI0ZGFhZDJiYWMyMy4uNGRiZWExYjllNmJiIDEwMDY0NAo+IC0tLSBhL2lu
aXQvS2NvbmZpZwo+ICsrKyBiL2luaXQvS2NvbmZpZwo+IEBAIC03NSw2ICs3NSw3IEBAIG1lbnUg
IkdlbmVyYWwgc2V0dXAiCj4gCj4gIGNvbmZpZyBCUk9LRU4KPiAgICAgICAgIGJvb2wKPiArICAg
ICAgIGRlZmF1bHQgeQo+IAo+ICBjb25maWcgQlJPS0VOX09OX1NNUAo+ICAgICAgICAgYm9vbAo+
IAo+IEVpdGhlciB3YXkgaXQgbmVlZHMgdG8gYmUgaW4gdG9waWMvY29yZS1mb3ItQ0ksIG5vdCBp
biBhbnkgb2ZmaWNpYWwKPiB0cmVlLiBCZWNhdXNlIGlmIHlvdSBhbGxvdyBhdXRvYnVpbGRlcnMg
dG8gZW5hYmxlIENPTkZJR19CUk9LRU4sIG5vCj4gbWF0dGVyIGhvdyB3ZWxsIGhpZGRlbiwgdGhl
eSdsbCBhbGwgYnJlYWsuIFlvdSBjYW4gYWxzbyBqdXN0IHJldmVydCBteQo+IHBhdGNoIHRoYXQg
RGF2ZSBwdXNoZWQgdG8gZHJtLW5leHQgKHRvIGdldCB1cyBiYWNrIGludG8gdGhlIGxpbnV4LW5l
eHQKPiBjbHViKS4KCkZ3aXcsIEkgdGhpbmsgdGhlIHJldmVydCBpbiBjb3JlLWZvci1DSSBpcyBy
ZWFzb25hYmxlLCBhcyB0aGF0IGdpdmVzCmRldnMgdGhlIGFiaWxpdHkgdG8gdG9nZ2xlIG9uIHRo
ZSBoaWRkZW4gbWVudXMsIHdoaWxlIGF0IHRoZSBzYW1lIHRpbWUKcmVxdWlyaW5nIHRoZW0gdG8g
aGF2ZSB0aGUgbWluaW1hbCBkZWJ1ZyBzZXR1cC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
