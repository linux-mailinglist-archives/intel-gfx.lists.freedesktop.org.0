Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 195B94BC20
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 16:57:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ECD66E3D3;
	Wed, 19 Jun 2019 14:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61ACC6E3D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 14:57:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16954506-1500050 for multiple; Wed, 19 Jun 2019 15:56:52 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <c467c41b-fc81-5ad6-e12f-b3ffc34ae448@linux.intel.com>
References: <20190619112341.9082-1-chris@chris-wilson.co.uk>
 <c467c41b-fc81-5ad6-e12f-b3ffc34ae448@linux.intel.com>
Message-ID: <156095621331.21217.2570744388023676419@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 19 Jun 2019 15:56:53 +0100
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/gtt: Defer address space
 cleanup to an RCU worker
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOSAxNTo1MToxOCkKPiAKPiBPbiAxOS8w
Ni8yMDE5IDEyOjIzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBFbmFibGUgUkNVIHByb3RlY3Rp
b24gb2YgaTkxNV9hZGRyZXNzX3NwYWNlIGFuZCBpdHMgcHBndHQgc3VwZXJjbGFzc2VzLAo+ID4g
YW5kIGRlZmVyIGl0cyBjbGVhbnVwIGludG8gYSB3b3JrZXIgZXhlY3V0ZWQgYWZ0ZXIgYW4gUkNV
IGdyYWNlIHBlcmlvZC4KPiA+IAo+ID4gSW4gdGhlIGZ1dHVyZSB3ZSB3aWxsIGJlIGFibGUgdG8g
dXNlIHRoZSBSQ1UgcHJvdGVjdGlvbiB0byByZWR1Y2UgdGhlCj4gPiBsb2NraW5nIGFyb3VuZCBW
TSBsb29rdXBzLCBidXQgdGhlIGltbWVkaWF0ZSBiZW5lZml0IGlzIGJlaW5nIGFibGUgdG8KPiA+
IGRlZmVyIHRoZSByZWxlYXNlIGludG8gYSBrd29ya2VyIChwcm9jZXNzIGNvbnRleHQpLiBUaGlz
IGlzIHJlcXVpcmVkIGFzCj4gPiB3ZSBtYXkgbmVlZCB0byBzbGVlcCB0byByZWFwIHRoZSBXQyBw
YWdlcyBzdGFzaGVkIGF3YXkgaW5zaWRlIHRoZSBwcGd0dC4KPiAKPiBJIGNhbid0IHNlZSB0aGF0
IGl0IGFkZHMgUkNVIHByb3RlY3Rpb24gYXBhcnQgZnJvbSB1c2luZyBxdWV1ZV9yY3Vfd29yayAK
PiBmb3Igc29tZSByZWFzb24uCgpUaGF0IHByb3ZpZGVzIHRoZSBSQ1Ugc2FmZSBmcmVlaW5nLCB5
ZXMuIE15IGludGVudGlvbmFsIGlzIHRvIHVzZSB0aGUKcmN1IHJlYWQgbG9jayBhcm91bmQgdGhl
IHZtIGxvb2t1cCArIGtyZWYgd2hlbiBkcm9wcGluZyB0aGUgc3RydWN0X211dGV4CnRoZXJlLgoK
PiBJdCBfc2VlbXNfIGxpa2UgaXQgY291bGQganVzdCBhcyB3ZWxsIHVzZSBub3JtYWwgCj4gZGVm
ZXJyZWQgd29ya2VyPyBSQ1UgbWF5IGhhdmUgYSBiZW5lZml0IG9mIGJlaW5nIHJlbGF4ZWQgaW4g
dGltaW5nIGllIHdlIAo+IGRvbid0IGNhcmUgaXQgaGFwcGVucyBpbW1lZGlhdGVseSwgYnV0IGFs
c28gZG9uJ3Qgd2FudCB0byBwdXQgc29tZSBtYWRlIAo+IHVwIHRpbWUgcGVyaW9kIGFnYWluc3Qg
aXQuIFNvIGl0J3MgYWxsIGFib3V0IG5hdHVyYWwgYmF0Y2hpbmcgb25seSBhdCAKPiB0aGlzIHBv
aW50PwoKQXQgdGhpcyBtb21lbnQsIHRvIGZpeCB1cCB0aGUgY3VycmVudCBidWcgYW5kIHRvIGFs
bG93IGk5MTVfYWN0aXZlIHRvIGJlCnN0cnVjdF9tdXRleC1sZXNzLCB3ZSBuZWVkIHRvIGRlZmVy
IHRoZSBpOTE1X3ZtX3JlbGVhc2UgYW5kCmdlbjhfcHBndHRfcmVsZWFzZSB0byBwcm9jZXNzIGNv
bnRleHQuIEhlbmNlIHVzaW5nIHRoZSB3b3JrZXIgY2FsbGJhY2sKYW5kIG5vdCB0aGUgcmVndWxh
ciBzb2Z0aXJxLWNvbnRleHQgcmN1IGNhbGxiYWNrLgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
