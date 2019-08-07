Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9AF84B4C
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 14:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE56F6E6BB;
	Wed,  7 Aug 2019 12:19:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67AD46E6BB;
 Wed,  7 Aug 2019 12:19:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17917724-1500050 for multiple; Wed, 07 Aug 2019 13:19:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
References: <20190806150134.104222-1-christian.koenig@amd.com>
 <20190806150134.104222-8-christian.koenig@amd.com>
 <156512144622.6198.5051468008483309313@skylake-alporthouse-com>
 <7fc516cd-bbd7-1829-1851-7d7deadb0468@gmail.com>
In-Reply-To: <7fc516cd-bbd7-1829-1851-7d7deadb0468@gmail.com>
Message-ID: <156518035127.6198.2346142882693144294@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 13:19:11 +0100
Subject: Re: [Intel-gfx] [PATCH 8/8] dma-buf: nuke reservation_object seq
 number
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA3IDEzOjA4OjM4KQo+IEFtIDA2LjA4
LjE5IHVtIDIxOjU3IHNjaHJpZWIgQ2hyaXMgV2lsc29uOgo+ID4gSWYgd2UgYWRkIHRvIHNoYXJl
ZC1saXN0IGR1cmluZyB0aGUgcmVhZCwgLi4uIEhtbSwgYWN0dWFsbHkgd2Ugc2hvdWxkCj4gPiBy
ZXR1cm4gbnVtX2xpc3QsIGkuZS4KPiA+Cj4gPiBkbyB7Cj4gPiAgICAgICAqbGlzdCA9IHJjdV9k
ZXJlZmVyZW5jZShvYmotPmZlbmNlKTsKPiA+ICAgICAgIG51bV9saXN0ID0gKmxpc3QgPyAoKmxp
c3QpLT5jb3VudCA6IDA7Cj4gPiAgICAgICBzbXBfcm1iKCk7Cj4gPiB9IHdoaWxlICguLi4pCj4g
Pgo+ID4gcmV0dXJuIG51bV9saXN0Lgo+ID4KPiA+IGFzIHRoZSByZWxhdGlvbnNoaXAgYmV0d2Vl
biB0aGUgY291bnQgYW5kIHRoZSBmZW5jZSBlbnRyaWVzIGlzIGFsc28KPiA+IGRldGVybWluZWQg
YnkgdGhlIG1iIGluIGFkZF9zaGFyZWRfZmVuY2UuCj4gCj4gSSd2ZSByZWFkIHRoYXQgbXVsdGlw
bGUgdGltZXMgbm93LCBidXQgY2FuJ3QgZm9sbG93LiBXaHkgc2hvdWxkIHdlIGRvIHRoaXM/Cj4g
Cj4gVGhlIG9ubHkgaW1wb3J0YW50IHRoaW5nIGlzIHRoYXQgdGhlIHJlYWRlcnMgc2VlIHRoZSBu
ZXcgZmVuY2UgYmVmb3JlIAo+IHRoZSBpbmNyZW1lbnQgb2YgdGhlIG51bWJlciBvZiBmZW5jZXMu
CgpFeGFjdGx5LiBXZSBvcmRlciB0aGUgc3RvcmUgc28gdGhhdCB0aGUgZmVuY2UgaXMgaW4gdGhl
IGxpc3QgYmVmb3JlIHdlCnVwZGF0ZSB0aGUgY291bnQgKHNvIHRoYXQgd2UgZG9uJ3QgcmVhZCBn
YXJiYWdlIGJlY2F1c2UgdGhlIGZlbmNlIGlzbid0CnRoZXJlIHlldCkuCgpCdXQgd2UgZG9uJ3Qg
aGF2ZSB0aGUgZXF1aXZhbGVudCBoZXJlIGZvciB0aGUgcmVhZCBvbmNlIHRoZSBybWIgaXMKcmVt
b3ZlZCBmcm9tIHRoZSBzZXFjb3VudF9yZWFkX2JlZ2luL2VuZCBsb29waW5nLiBXZSBuZWVkIHRv
IHNlZSB0aGUKdXBkYXRlIGluIHRoZSBzYW1lIG9yZGVyIGFzIHdhcyBzdG9yZWQsIGFuZCBvbmx5
IHVzZSB0aGUgY29oZXJlbnQKcG9ydGlvbiBvZiB0aGUgbGlzdC4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
