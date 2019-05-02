Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE53711B82
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EB41896B0;
	Thu,  2 May 2019 14:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86E508967B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:33:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16430224-1500050 for multiple; Thu, 02 May 2019 15:33:37 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-3-chris@chris-wilson.co.uk>
 <2aec6c87-7142-4756-b4ed-db9ff6e057d7@linux.intel.com>
 <155680523278.9023.7792263043329338669@skylake-alporthouse-com>
 <d9f738e1-52a9-ef72-374c-c42dbbedcbbb@linux.intel.com>
 <155680686989.9023.6629699137280028848@skylake-alporthouse-com>
 <b15679f8-dc34-93d0-fe59-7690acc24a20@linux.intel.com>
In-Reply-To: <b15679f8-dc34-93d0-fe59-7690acc24a20@linux.intel.com>
Message-ID: <155680761506.9023.8560373253046209331@skylake-alporthouse-com>
Date: Thu, 02 May 2019 15:33:35 +0100
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915/execlists: Flush the tasklet
 on parking
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMiAxNToyNDoxNikKPiAKPiBPbiAwMi8w
NS8yMDE5IDE1OjIxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTAyIDE1OjE0OjA4KQo+ID4+Cj4gPj4gT24gMDIvMDUvMjAxOSAxNDo1Mywg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1
LTAyIDE0OjQ4OjE4KQo+ID4+Pj4KPiA+Pj4+IE9uIDAxLzA1LzIwMTkgMTI6NDUsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiBUaWR5IHVwIHRoZSBjbGVhbnVwIHNlcXVlbmNlIGJ5IGFsd2F5
cyBlbnN1cmUgdGhhdCB0aGUgdGFza2xldCBpcwo+ID4+Pj4+IGZsdXNoZWQgb24gcGFya2luZyAo
YmVmb3JlIHdlIGNsZWFudXApLiBUaGUgcGFya2luZyBwcm92aWRlcyBhCj4gPj4+Pj4gY29udmVu
aWVudCBwb2ludCB0byBlbnN1cmUgdGhhdCB0aGUgYmFja2VuZCBpcyB0cnVseSBpZGxlLgo+ID4+
Pj4+Cj4gPj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gPj4+Pj4gLS0tCj4gPj4+Pj4gICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jICAgICAgICAgfCA3ICsrKysrKy0KPiA+Pj4+PiAgICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8IDEgKwo+ID4+Pj4+ICAgICAyIGZpbGVz
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4+Pj4+Cj4gPj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+Pj4+PiBpbmRleCA4NTFlNjJkZGNiODcu
LjdiZTU0Yjg2OGQ4ZSAxMDA2NDQKPiA+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+ID4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCj4gPj4+Pj4gQEAgLTIzMzEsNiArMjMzMSwxMSBAQCBzdGF0aWMgaW50IGdlbjhfaW5p
dF9yY3NfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiA+Pj4+PiAgICAgICAgIHJl
dHVybiBpOTE1X2dlbV9yZW5kZXJfc3RhdGVfZW1pdChycSk7Cj4gPj4+Pj4gICAgIH0KPiA+Pj4+
PiAgICAgCj4gPj4+Pj4gK3N0YXRpYyB2b2lkIGV4ZWNsaXN0c19wYXJrKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKPiA+Pj4+PiArewo+ID4+Pj4+ICsgICAgIHRhc2tsZXRfa2lsbCgm
ZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7Cj4gPj4+Pgo+ID4+Pj4gSXNuJ3QgaXQgYWN0dWFs
bHkgYSBwcm9ibGVtIGlmIHRhc2tsZXQgaXMgc2NoZWR1bGVkIGFuZCB1bnN0YXJ0ZWQsIG9yCj4g
Pj4+PiBldmVuIGluIHByb2dyZXNzIGF0IHRoZSBwb2ludCBvZiBlbmdpbmUgZ2V0dGluZyBwYXJr
ZWQ/Cj4gPj4+Cj4gPj4+IFRoYXQgd291bGQgYmUgYSBicm9rZW4gZHJpdmVyLiA6fAo+ID4+Pgo+
ID4+PiBXZSBtdXN0IGJlIHF1aXRlIHN1cmUgdGhhdCBlbmdpbmUgaXNuJ3QgZ29pbmcgdG8gc2Vu
ZCBhbiBpbnRlcnJ1cHQgYXMgd2UKPiA+Pj4gYXJlIGp1c3QgYWJvdXQgdG8gZHJvcCB0aGUgd2Fr
ZXJlZiB3ZSBuZWVkIHRvIHNlcnZpY2UgdGhhdCBpbnRlcnJ1cHQuCj4gPj4+Cj4gPj4+IHRhc2ts
ZXRfa2lsbCgpCj4gPj4+IEdFTV9CVUdfT04oZW5naW5lLT5leGVjbGlzdHMuYWN0aXZlKTsKPiA+
Pgo+ID4+IE9yIGluc3RlYWQgb2YgYm90aDoKPiA+Pgo+ID4+IC8qIFRhc2tsZXQgbXVzdCBub3Qg
YmUgcnVubmluZyBvciBzY2hlZHVsZWQgYXQgdGhpcyBwb2ludC4gKi8KPiA+PiBHRU1fQlVHX09O
KGVuZ2luZS0+ZXhlY2xpc3RzLnRhc2tsZXQuc3RhdGUpOwo+ID4gCj4gPiBUaGVyZSdzIHRoZSBk
aWxlbW1hIHRoYXQgd2Ugc3RhcnQgcGFya2luZyBiYXNlZCBvbiByZXRpcmVtZW50IG5vdAo+ID4g
ZmluYWwgQ1MgZXZlbnQuCj4gCj4gQnV0IGVuZ2luZS0+cGFyaygpIGlzIGNhbGxlZCBvbmNlIHRo
ZSBsYXN0IGVuZ2luZSBwbSByZWZlcmVuY2UgaXMgCj4gZHJvcHBlZC4gQXJlIHdlIGRyb3BwaW5n
IHRoZSBsYXN0IHJlZmVyZW5jZSB3aXRoIGEgQ1MgZXZlbnQgcGVuZGluZz8KClBvdGVudGlhbGx5
IHdlIGFyZS4KCmk5MTVfcmVxdWVzdF9yZXRpcmUoKSAtPiBjb250ZXh0LT5leGl0KCkgLT4gZW5n
aW5lLT5wYXJrKCkKCkF0IG5vIHBvaW50IGFsb25nIHRoYXQgY2hhaW4gZG8gd2UgYWN0dWFsbHkg
Y2hlY2sgd2UgaGF2ZSBmbHVzaGVkIHRoZQpiYWNrZW5kLiBUaGUgdGFza2xldF9raWxsKCkgd291
bGQgZmx1c2ggaWYgdGhlIGludGVycnVwdCBoYWQgYWxyZWFkeQpiZWVuIHNlbnQsIGJ1dCB0aGF0
J3Mgbm90IHZlcnkgc3RyaWN0LgoKT2ggd2VsbCwgeW91J3ZlIHRhbGtlZCBtZSBpbnRvIHRvIHJl
LWFkZGluZyB0aGUgd2FpdCBsb29wIGhlcmUuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
