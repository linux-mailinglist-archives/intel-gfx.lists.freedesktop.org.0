Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 995887D7FD
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 10:46:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6F616E3EC;
	Thu,  1 Aug 2019 08:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3116E3EC
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 08:46:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17781190-1500050 for multiple; Thu, 01 Aug 2019 09:46:40 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-4-chris@chris-wilson.co.uk>
 <af76214d-41e9-f986-61ba-6d5100da9330@linux.intel.com>
 <156413061514.30723.6983243553746244857@skylake-alporthouse-com>
 <6d68ecac-4d6a-6b87-5ea9-c0bd2ba8335e@linux.intel.com>
 <156447952867.6373.9286619293752854474@skylake-alporthouse-com>
 <32108668-b421-7b9f-ede1-19a87e2c0717@linux.intel.com>
In-Reply-To: <32108668-b421-7b9f-ede1-19a87e2c0717@linux.intel.com>
Message-ID: <156464919740.2512.3727698929330921367@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 09:46:37 +0100
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAwOTo0MjoxNSkKPiAKPiBPbiAzMC8w
Ny8yMDE5IDEwOjM4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTI5IDEzOjU5OjIyKQo+ID4+Cj4gPj4gT24gMjYvMDcvMjAxOSAwOTo0Mywg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTI0IDEyOjExOjU0KQo+ID4+Pj4KPiA+Pj4+IE9uIDIzLzA3LzIwMTkgMTk6MzgsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiBQdXNoIHRoZSByaW5nIGNyZWF0aW9uIGZsYWdzIGZyb20gdGhl
IG91dGVyIEdFTSBjb250ZXh0IHRvIHRoZSBpbm5lcgo+ID4+Pj4+IGludGVsX2NvdG5leHQgdG8g
YXZvaWQgYW4gdW5zaWdodGx5IGJhY2stcmVmZXJlbmNlIGZyb20gaW5zaWRlIHRoZQo+ID4+Pj4+
IGJhY2tlbmQuCj4gPj4+Pgo+ID4+Pj4gU29ycnkgSSBmaW5kIHRoaXMgcXVpdGUgdWdseS4gUGFz
c2luZyBpbiBpbnRlZ2VycyBpbiBwb2ludGVycyBmaWxlZCBhbmQKPiA+Pj4+IGNhc3RpbmcgYmFj
ayBhbmQgZm9ydGguCj4gPj4+Cj4gPj4+IEJ1dCBiZXR0ZXIgdGhhbiBhIHVuaW9uLCBzaW5jZSBv
bmNlIHRoZSBpbnRlbF9jb250ZXh0IGlzIGFjdGl2ZSwgdGhlCj4gPj4+IHJpbmcgaXMgYWx3YXlz
IGEgcmluZy4KPiA+Pgo+ID4+IFVubGVzcyBpdCBpcyB1NjQgc2l6ZS4gSSBhbSBub3QgYnV5aW5n
IGl0LiA6KQo+ID4gCj4gPiBXZSBkb24ndCBuZWVkIHU2NCBzaXplPyBJIGRvbid0IHVuZGVyc3Rh
bmQgd2hhdCB5b3UgbWVhbi4KPiAKPiBJIGNvbXBsYWluZWQgYWJvdXQgdmVyeSB1bm9idmlvdXMg
YW5kIHF1ZXN0aW9uYWJsZSBoYWNrIG9mIHBhc3NpbmcgdGhlIAo+IHNpemUgaW4gdGhlIHBvaW50
ZXIgZmllbGQgYW5kIHlvdSBzYWlkIGl0IGlzIGJldHRlciB0aGFuIGFuIHVuaW9uLiBGb3IgCj4g
bWUgdW5pb24gY2VydGFpbmx5IHJhdGVzIHdheSBoaWdoZXIgdGhhbiB0aGUgY2FzaW5nIGhhY2sg
d2l0aCBhIG1hY3JvLgoKV2Ugc3RvcmUgdmFsdWVzIGluc2lkZSBwb2ludGVyIHNsb3RzIGFsbCB0
aGUgdGltZSwgc29tZXRpbWVzIGV2ZW4gbWVtb3J5CmFkZHJlc3Nlcy4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
