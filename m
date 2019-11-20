Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E474103A88
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 13:59:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354F66E580;
	Wed, 20 Nov 2019 12:59:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A636E580
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 12:59:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19271695-1500050 for multiple; Wed, 20 Nov 2019 12:59:33 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120093302.3723715-6-chris@chris-wilson.co.uk>
 <aa1f7967-6ff5-f341-b3bd-5ec0afe102b0@linux.intel.com>
In-Reply-To: <aa1f7967-6ff5-f341-b3bd-5ec0afe102b0@linux.intel.com>
Message-ID: <157425477060.13839.10577920977636430794@skylake-alporthouse-com>
Date: Wed, 20 Nov 2019 12:59:30 +0000
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMCAxMjo1NTo0MikKPiAKPiBPbiAyMC8x
MS8yMDE5IDA5OjMyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBCb25kZWQgcmVxdWVzdCBzdWJt
aXNzaW9uIGlzIGRlc2lnbmVkIHRvIGFsbG93IHJlcXVlc3RzIHRvIGV4ZWN1dGUgaW4KPiA+IHBh
cmFsbGVsIGFzIGxhaWQgb3V0IGJ5IHRoZSB1c2VyLiBJZiB0aGUgbWFzdGVyIHJlcXVlc3QgaXMg
YWxyZWFkeQo+ID4gZmluaXNoZWQgYmVmb3JlIGl0cyBib25kZWQgcGFpciBpcyBzdWJtaXR0ZWQs
IHRoZSBwYWlyIHdlcmUgbm90IGRlc3RpbmVkCj4gPiB0byBydW4gaW4gcGFyYWxsZWwgYW5kIHdl
IGxvc2UgdGhlIGluZm9ybWF0aW9uIGFib3V0IHRoZSBtYXN0ZXIgZW5naW5lCj4gPiB0byBkaWN0
YXRlIHNlbGVjdGlvbiBvZiB0aGUgc2Vjb25kYXJ5LiBJZiB0aGUgc2Vjb25kIHJlcXVlc3Qgd2Fz
Cj4gPiByZXF1aXJlZCB0byBiZSBydW4gb24gYSBwYXJ0aWN1bGFyIGVuZ2luZSBpbiBhIHZpcnR1
YWwgc2V0LCB0aGF0IHNob3VsZAo+ID4gaGF2ZSBiZWVuIHNwZWNpZmllZCwgcmF0aGVyIHRoYW4g
bGVmdCB0byB0aGUgd2hpbXMgb2YgYSByYW5kb20KPiA+IHVuY29ubmVjdGVkIHJlcXVlc3RzIQo+
ID4gCj4gPiBJbiB0aGUgc2VsZnRlc3QsIEkgbWFkZSB0aGUgbWlzdGFrZSBvZiBub3QgZW5zdXJp
bmcgdGhlIG1hc3RlciB3b3VsZAo+ID4gb3ZlcmxhcCB3aXRoIGl0cyBib25kZWQgcGFpcnMsIG1l
YW5pbmcgdGhhdCBpdCBjb3VsZCBpbmRlZWQgY29tcGxldGUKPiA+IGJlZm9yZSB3ZSBzdWJtaXR0
ZWQgdGhlIGJvbmRzLiBUaG9zZSBib25kcyB3ZXJlIHRoZW4gZnJlZSB0byBzZWxlY3QgYW55Cj4g
PiBhdmFpbGFibGUgZW5naW5lIGluIHRoZWlyIHZpcnR1YWwgc2V0LCBhbmQgbm90IHRoZSBvbmUg
ZXhwZWN0ZWQgYnkgdGhlCj4gPiB0ZXN0Lgo+IAo+IFRoZXJlIGlzIGEgc3VibWl0IGF3YWl0IHdo
aWNoIGVuc3VyZXMgbWFzdGVyIGlzIG5vdCBydW5uYWJsZSBiZWZvcmUgCj4gYm9uZGVkIHBhaXJz
IGFyZSBzdWJtaXR0ZWQuIFdoeSB3YXMgdGhhdCBub3QgZW5vdWdoPyBBcmUgdGhlIHNwb3JhZGlj
IAo+IHRlc3QgZmFpbHVyZXM/CgpPbmUgdGVzdCBpcyB1c2luZyB0aGUgc3VibWl0X2F3YWl0LCB0
aGUgb3RoZXIgZG9lcyBub3QuIEl0IHRha2VzIHRoZQpiYWNrZ3JvdW5kIHJldGlyZSB3b3JrZXIg
dG8gcnVuIGFzIHdlIGFyZSBzdWJtaXR0aW5nIHRoZSBzZWNvbmRhcmllcy4uLgpCdXQgSSBoYXZl
IG5vdCBub3RpY2VkIHRoaXMgZmFpbHVyZSBiZWZvcmUgaG9va2luZyB1cCByZXRpcmVtZW50IHRv
CnByb2Nlc3NfY3NiLiBIb3dldmVyLCB0aGUgaXNzdWUgaXMgZGVmaW5pdGVseSBwcmVzZW50IGlu
IHRoZSBjdXJyZW50CnRlc3QuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
