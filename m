Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 871C1103B6A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 14:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA766E5DB;
	Wed, 20 Nov 2019 13:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973BC6E5DB
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 13:29:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19272120-1500050 for multiple; Wed, 20 Nov 2019 13:29:26 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120093302.3723715-6-chris@chris-wilson.co.uk>
 <aa1f7967-6ff5-f341-b3bd-5ec0afe102b0@linux.intel.com>
 <157425477060.13839.10577920977636430794@skylake-alporthouse-com>
 <5eda82de-a7a3-d4d3-13ec-6ed4b70986b7@linux.intel.com>
In-Reply-To: <5eda82de-a7a3-d4d3-13ec-6ed4b70986b7@linux.intel.com>
Message-ID: <157425656356.13839.12546189239106395179@skylake-alporthouse-com>
Date: Wed, 20 Nov 2019 13:29:23 +0000
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/selftests: Force bonded
 submission to overlap
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMCAxMzoxODoyNykKPiAKPiBPbiAyMC8x
MS8yMDE5IDEyOjU5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTExLTIwIDEyOjU1OjQyKQo+ID4+Cj4gPj4gT24gMjAvMTEvMjAxOSAwOTozMiwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBCb25kZWQgcmVxdWVzdCBzdWJtaXNzaW9uIGlzIGRl
c2lnbmVkIHRvIGFsbG93IHJlcXVlc3RzIHRvIGV4ZWN1dGUgaW4KPiA+Pj4gcGFyYWxsZWwgYXMg
bGFpZCBvdXQgYnkgdGhlIHVzZXIuIElmIHRoZSBtYXN0ZXIgcmVxdWVzdCBpcyBhbHJlYWR5Cj4g
Pj4+IGZpbmlzaGVkIGJlZm9yZSBpdHMgYm9uZGVkIHBhaXIgaXMgc3VibWl0dGVkLCB0aGUgcGFp
ciB3ZXJlIG5vdCBkZXN0aW5lZAo+ID4+PiB0byBydW4gaW4gcGFyYWxsZWwgYW5kIHdlIGxvc2Ug
dGhlIGluZm9ybWF0aW9uIGFib3V0IHRoZSBtYXN0ZXIgZW5naW5lCj4gPj4+IHRvIGRpY3RhdGUg
c2VsZWN0aW9uIG9mIHRoZSBzZWNvbmRhcnkuIElmIHRoZSBzZWNvbmQgcmVxdWVzdCB3YXMKPiA+
Pj4gcmVxdWlyZWQgdG8gYmUgcnVuIG9uIGEgcGFydGljdWxhciBlbmdpbmUgaW4gYSB2aXJ0dWFs
IHNldCwgdGhhdCBzaG91bGQKPiA+Pj4gaGF2ZSBiZWVuIHNwZWNpZmllZCwgcmF0aGVyIHRoYW4g
bGVmdCB0byB0aGUgd2hpbXMgb2YgYSByYW5kb20KPiA+Pj4gdW5jb25uZWN0ZWQgcmVxdWVzdHMh
Cj4gPj4+Cj4gPj4+IEluIHRoZSBzZWxmdGVzdCwgSSBtYWRlIHRoZSBtaXN0YWtlIG9mIG5vdCBl
bnN1cmluZyB0aGUgbWFzdGVyIHdvdWxkCj4gPj4+IG92ZXJsYXAgd2l0aCBpdHMgYm9uZGVkIHBh
aXJzLCBtZWFuaW5nIHRoYXQgaXQgY291bGQgaW5kZWVkIGNvbXBsZXRlCj4gPj4+IGJlZm9yZSB3
ZSBzdWJtaXR0ZWQgdGhlIGJvbmRzLiBUaG9zZSBib25kcyB3ZXJlIHRoZW4gZnJlZSB0byBzZWxl
Y3QgYW55Cj4gPj4+IGF2YWlsYWJsZSBlbmdpbmUgaW4gdGhlaXIgdmlydHVhbCBzZXQsIGFuZCBu
b3QgdGhlIG9uZSBleHBlY3RlZCBieSB0aGUKPiA+Pj4gdGVzdC4KPiA+Pgo+ID4+IFRoZXJlIGlz
IGEgc3VibWl0IGF3YWl0IHdoaWNoIGVuc3VyZXMgbWFzdGVyIGlzIG5vdCBydW5uYWJsZSBiZWZv
cmUKPiA+PiBib25kZWQgcGFpcnMgYXJlIHN1Ym1pdHRlZC4gV2h5IHdhcyB0aGF0IG5vdCBlbm91
Z2g/IEFyZSB0aGUgc3BvcmFkaWMKPiA+PiB0ZXN0IGZhaWx1cmVzPwo+ID4gCj4gPiBPbmUgdGVz
dCBpcyB1c2luZyB0aGUgc3VibWl0X2F3YWl0LCB0aGUgb3RoZXIgZG9lcyBub3QuIEl0IHRha2Vz
IHRoZQo+ID4gYmFja2dyb3VuZCByZXRpcmUgd29ya2VyIHRvIHJ1biBhcyB3ZSBhcmUgc3VibWl0
dGluZyB0aGUgc2Vjb25kYXJpZXMuLi4KPiA+IEJ1dCBJIGhhdmUgbm90IG5vdGljZWQgdGhpcyBm
YWlsdXJlIGJlZm9yZSBob29raW5nIHVwIHJldGlyZW1lbnQgdG8KPiA+IHByb2Nlc3NfY3NiLiBI
b3dldmVyLCB0aGUgaXNzdWUgaXMgZGVmaW5pdGVseSBwcmVzZW50IGluIHRoZSBjdXJyZW50Cj4g
PiB0ZXN0Lgo+IAo+IFNvIHdoYXQgaGFwcGVucz8gSXMgdGhpcyBhbm90aGVyIGlzc3VlIGxpbWl0
ZWQgdG8gc2VsZnRlc3RzPyBCZWNhdXNlIEkgCj4gZG9uJ3Qgc2VlIHRoYXQgdUFQSSBpdHNlbGYg
Y2FuJ3QgYmUgdXNlZCBpbiB0aGlzIHdheS4KClNpbmNlIHRoZSBtYXN0ZXIgYmF0Y2ggaXMgYWxy
ZWFkeSBjb21wbGV0ZWQgJiBzaWduYWxlZCBieSB0aGUgdGltZSB3ZQpzdWJtaXQgdGhlIHNlY29u
ZGFyaWVzLCB0aGUgc3VibWl0LWZlbmNlIGlzIGEgZHVkIGFuZCB0aGUgc2Vjb25kYXJpZXMKYXJl
IG5vdCBjb25zdHJhaW5lZCBpbiB0aGVpciBlbmdpbmUgc2VsZWN0aW9uLgoKaTkxNV9yZXF1ZXN0
X2F3YWl0X2V4ZWN1dGlvbjoKCWlmICh0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9C
SVQsICZmZW5jZS0+ZmxhZ3MpKQoJCWNvbnRpbnVlOwoJZWxzZQoJCV9faTkxNV9yZXF1ZXN0X2F3
YWl0X2V4ZWN1dGlvbigpCgpOb3csIG91ciBjaG9pY2UgaXMgZWl0aGVyIHRvIGRyb3AgdGhlIGNo
ZWNrIG9uIHRoZSBzaWduYWxlZCBiaXQgKGFuZCBzbwp3ZSB3aWxsIGFwcGx5IHRoZSBib25kaW5n
IGNvbnN0cmFpbmVkIGZyb20gdGhlIGFscmVhZHkgZmluaXNoZWQgYmF0Y2gpCm9yIG5vdC4gR2l2
ZW4gdGhhdCB0aGUgbWFzdGVyIGlzIGFscmVhZHkgY29tcGxldGUsIEkgZmVlbCBqdXN0aWZpZWQg
aW4KdGhlIGN1cnJlbnQgZGVjaXNpb24gdG8gaWdub3JlIHRoZSBjb25zdHJhaW50IChzaW5jZSBl
cXVhbGx5IHRoZSBmZW5jZQpjb3VsZCBhbHJlYWR5IGhhdmUgYmVlbiByZXRpcmVkIGFuZCBzbyBj
b21wbGV0ZWx5IGluYWNjZXNzaWJsZSksIHNvIGNob3NlCnRvIGZpeCB0aGUgdGVzdCBpbnN0ZWFk
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
