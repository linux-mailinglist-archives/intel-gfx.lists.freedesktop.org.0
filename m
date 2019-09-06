Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83994ABF46
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 20:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029906E10F;
	Fri,  6 Sep 2019 18:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F886E10F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 18:18:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18402429-1500050 for multiple; Fri, 06 Sep 2019 19:18:57 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <3835b0af-734f-4bd5-538e-7a46b6227ffa@linux.intel.com>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-10-chris@chris-wilson.co.uk>
 <20190805170844.GC19007@intel.intel>
 <3835b0af-734f-4bd5-538e-7a46b6227ffa@linux.intel.com>
Message-ID: <156779393479.2967.9156170377080701772@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 06 Sep 2019 19:18:54 +0100
Subject: Re: [Intel-gfx] [PATCH 09/17] drm/i915: Push the ring creation
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0wMiAxNDo1OToxNikKPiAKPiBPbiAwNS8w
OC8yMDE5IDE4OjA4LCBBbmRpIFNoeXRpIHdyb3RlOgo+ID4gSGkgQ2hyaXMsCj4gPiAKPiA+IE9u
IFR1ZSwgSnVsIDMwLCAyMDE5IGF0IDAyOjMwOjI3UE0gKzAxMDAsIENocmlzIFdpbHNvbiB3cm90
ZToKPiA+PiBQdXNoIHRoZSByaW5nIGNyZWF0aW9uIGZsYWdzIGZyb20gdGhlIG91dGVyIEdFTSBj
b250ZXh0IHRvIHRoZSBpbm5lcgo+ID4+IGludGVsX2NvdG5leHQgdG8gYXZvaWQgYW4gdW5zaWdo
dGx5IGJhY2stcmVmZXJlbmNlIGZyb20gaW5zaWRlIHRoZQo+ID4+IGJhY2tlbmQuCj4gPj4KPiA+
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+IAo+ID4gbG9va3MgbmljZSEKPiA+IAo+ID4gUmV2aWV3ZWQtYnk6IEFuZGkgU2h5dGkgPGFu
ZGkuc2h5dGlAaW50ZWwuY29tPgo+IAo+IEkgd2lzaCBteSBjb21wbGFpbnRzIG9uIHRoaXMgcGF0
Y2ggd2VyZW4ndCBqdXN0IGlnbm9yZWQuCgpZb3Ugd2FudGVkIGEgdW5pb24gZm9yIGEgb25lLW9m
ZiB2YWx1ZSwgYW5kIEkgZGlzYWdyZWVkIGFzIGltbyBpdApvdmVyZm9ybWFsaXNlZCB0aGUgcGFy
YW1ldGVyIHBhc3NpbmcgYW5kIG1hZGUgaXQgbG9vayBsaWtlIHBlcnNpc3RlbnQKc3RhdGUuCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
