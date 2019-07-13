Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D79679A2
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF9796E3CB;
	Sat, 13 Jul 2019 10:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAF9E6E3CB
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 10:16:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17265802-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 11:16:18 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <20190713100016.8026-2-chris@chris-wilson.co.uk>
In-Reply-To: <20190713100016.8026-2-chris@chris-wilson.co.uk>
Message-ID: <156301297628.9436.7038104920593847140@skylake-alporthouse-com>
Date: Sat, 13 Jul 2019 11:16:16 +0100
Subject: Re: [Intel-gfx] [PATCH 02/11] drm/i915/uc: replace uc init/fini misc
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTMgMTE6MDA6MDcpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBU
aGUgIm1pc2MiIHRlcm1pbm9sb2d5IGRvZXNuJ3QgY2xlYXJseSBleHBsYWluIHdoYXQgd2UgaW50
ZW5kIHRvIGNvdmVyCj4gaW4gdGhpcyBwaGFzZS4gVGhlIG9ubHkgdGhpbmcgd2UgZG8gaW4gdGhl
cmUgYXBhcnQgZnJvbSBGVyBmZXRjaCBpcwo+IGluaXRpYWxpemluZyB0aGUgbG9nIHdvcmtxdWV1
ZSwgd2l0aCB0aGUgbGF0dGVyIGJlaW5nIHJlcXVpcmVkIG9ubHkgaW4KPiB0aGUgdmVyeSByYXJl
IGNhc2Ugd2hlcmUgd2UgZW5hYmxlIHRoZSBsb2cgcmVsYXkuIFRvIGNsZWFuIHRoaXMgdXAsIHdl
Cj4gY2FuIG1vdmUgdGhlIHdxIGluaXQgdG8gd2hlbiB0aGUgcmVsYXkgaXMgZW5hYmxlZCBhbmQg
cmVuYW1lIHRoZQo+IGZ1bmN0aW9uIHRvIGNsYXJpZnkgdGhhdCB0aGV5IG9ubHkgZmV0Y2gvcmVs
ZWFzZSB0aGUgYmxvYnMuCj4gCj4gdjI6IG9ubHkgY3JlYXRlIGxvZyB3cSB3aGVuIG5lZWRlZCAo
TWljaGFsKSwgcmV3b3JkIGNvbW1pdCBtc2cKPiBhY2NvcmRpbmdseQo+IAo+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
