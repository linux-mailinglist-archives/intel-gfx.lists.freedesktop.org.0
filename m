Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AD46B035
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2019 22:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 298726E184;
	Tue, 16 Jul 2019 20:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15C876E184;
 Tue, 16 Jul 2019 20:05:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17351912-1500050 for multiple; Tue, 16 Jul 2019 21:05:49 +0100
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190716092154.GZ15868@phenom.ffwll.local>
References: <20190712080314.21018-1-chris@chris-wilson.co.uk>
 <20190712080314.21018-2-chris@chris-wilson.co.uk>
 <20190716092154.GZ15868@phenom.ffwll.local>
Message-ID: <156330754665.9436.11219275909809112187@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 16 Jul 2019 21:05:46 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] dma-buf: Relax the write-seqlock for
 reallocating the shared fence list
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA3LTE2IDEwOjIxOjU0KQo+IE9uIEZyaSwgSnVs
IDEyLCAyMDE5IGF0IDA5OjAzOjE0QU0gKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IEFz
IHRoZSBzZXQgb2Ygc2hhcmVkIGZlbmNlcyBpcyBub3QgYmVpbmcgY2hhbmdlZCBkdXJpbmcgcmVh
bGxvY2F0aW9uIG9mCj4gPiB0aGUgcmVzZXJ2YXRpb24gbGlzdCwgd2UgY2FuIHNraXAgdXBkYXRp
bmcgdGhlIHdyaXRlX3NlcWxvY2suCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmll
bC52ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiBDYzogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgo+IAo+IHNvdW5kcyBsZWdpdC4KPiAKPiBSZXZpZXdlZC1ieTogRGFuaWVs
IFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiAKPiBNb3JlIHNlcmlvdXNseSwgSSB0
aGluayBJIGNvbnZpbmNlZCBteXNlbGYgdGhhdCB3ZSBjYW50IHNlZSBhIG1lc3Mgb2Ygb2xkCj4g
YW5kIG5ldyBmZW5jZSBhcnJheXMgYW55d2hlcmUsIGV2ZW4gd2l0aG91dCB0aGUgc2VxbG9jayBy
ZXRyeSwgc28gSSB0aGluawo+IHdlIHNob3VsZCBiZSBhbGwgZ29vZC4KCkF5ZSwgdGhlIHZpZXcg
cmVtYWlucyBjb25zaXN0ZW50IHdoaWNoIGlzIGtleS4gVGhhbmtzIGZvciB0aGUgcmV2aWV3LApw
dXNoZWQgdG8gZHJtLW1pc2MtbmV4dC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
