Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F2776112
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 10:43:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59FF96E8A6;
	Fri, 26 Jul 2019 08:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA12D6E8A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 08:43:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17621004-1500050 for multiple; Fri, 26 Jul 2019 09:43:36 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-4-chris@chris-wilson.co.uk>
 <af76214d-41e9-f986-61ba-6d5100da9330@linux.intel.com>
In-Reply-To: <af76214d-41e9-f986-61ba-6d5100da9330@linux.intel.com>
Message-ID: <156413061514.30723.6983243553746244857@skylake-alporthouse-com>
Date: Fri, 26 Jul 2019 09:43:35 +0100
Subject: Re: [Intel-gfx] [PATCH 04/23] drm/i915: Push the ring creation
 flags to the backend
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yNCAxMjoxMTo1NCkKPiAKPiBPbiAyMy8w
Ny8yMDE5IDE5OjM4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBQdXNoIHRoZSByaW5nIGNyZWF0
aW9uIGZsYWdzIGZyb20gdGhlIG91dGVyIEdFTSBjb250ZXh0IHRvIHRoZSBpbm5lcgo+ID4gaW50
ZWxfY290bmV4dCB0byBhdm9pZCBhbiB1bnNpZ2h0bHkgYmFjay1yZWZlcmVuY2UgZnJvbSBpbnNp
ZGUgdGhlCj4gPiBiYWNrZW5kLgo+IAo+IFNvcnJ5IEkgZmluZCB0aGlzIHF1aXRlIHVnbHkuIFBh
c3NpbmcgaW4gaW50ZWdlcnMgaW4gcG9pbnRlcnMgZmlsZWQgYW5kIAo+IGNhc3RpbmcgYmFjayBh
bmQgZm9ydGguCgpCdXQgYmV0dGVyIHRoYW4gYSB1bmlvbiwgc2luY2Ugb25jZSB0aGUgaW50ZWxf
Y29udGV4dCBpcyBhY3RpdmUsIHRoZQpyaW5nIGlzIGFsd2F5cyBhIHJpbmcuCgo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+IGluZGV4IDZkMzkxMTQ2OTgwMS4uZTIzN2JjZWNm
YTFmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMK
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gPiBAQCAtMzI4
LDEwICszMjgsMTQgQEAgc3RhdGljIHZvaWQgcHJpbnRfY29udGV4dF9zdGF0cyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sCj4gPiAgIAo+ID4gICAgICAgICAgICAgICBmb3JfZWFjaF9nZW1fZW5naW5lKGNl
LAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfZ2VtX2NvbnRleHRf
bG9ja19lbmdpbmVzKGN0eCksIGl0KSB7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgaWYgKGNl
LT5zdGF0ZSkKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBlcl9maWxlX3N0YXRz
KDAsIGNlLT5zdGF0ZS0+b2JqLCAma3N0YXRzKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICBp
ZiAoY2UtPnJpbmcpCj4gPiArICAgICAgICAgICAgICAgICAgICAgaW50ZWxfY29udGV4dF9sb2Nr
X3Bpbm5lZChjZSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgaWYgKGludGVsX2NvbnRleHRf
aXNfcGlubmVkKGNlKSkgewo+IAo+IEFuZCB0aGVzZSBodW5rcyBkbyBub3Qgc2VlbSB0byBiZWxv
bmcgdG8gdGhpcyBwYXRjaC4KClRoZW4geW91IGFyZSBtaXN0YWtlbi4gVGhlIGJ1ZyBpcyBvbGRl
ciwgYnV0IGl0IGdldHMgdHJpZ2dlcmVkIGJ5IHRoaXMKcGF0Y2guCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
