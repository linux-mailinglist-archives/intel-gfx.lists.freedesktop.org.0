Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9011810C7DC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 12:23:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA4B6E0A2;
	Thu, 28 Nov 2019 11:23:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 535106E0A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 11:23:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19374070-1500050 for multiple; Thu, 28 Nov 2019 11:22:35 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157493931574.7216.10717442059354531790@skylake-alporthouse-com>
References: <20191119113710.1162-1-abdiel.janulgue@linux.intel.com>
 <20191119113710.1162-4-abdiel.janulgue@linux.intel.com>
 <157493931574.7216.10717442059354531790@skylake-alporthouse-com>
Message-ID: <157494015316.7216.15062866722484380775@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 28 Nov 2019 11:22:33 +0000
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Add cpu fault handler for
 mmap_offset
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjggMTE6MDg6MzUpCj4gUXVvdGluZyBBYmRp
ZWwgSmFudWxndWUgKDIwMTktMTEtMTkgMTE6Mzc6MTApCj4gPiBGYXVsdCBoYW5kbGVyIHRvIGhh
bmRsZSBtaXNzaW5nIHBhZ2VzIGZvciBzaG1lbS1iYWNrZWQgb2JqZWN0cy4KPiA+IAo+ID4gdjI6
IGJhaWwgb3V0IG9mIGluc2VydGluZyBQVEVzIHdoZW4gZmFpbGluZyB0byBpbnNlcnQgdGhlCj4g
PiAgICAgZmF1bHQgYWRkcmVzcwo+ID4gdjM6IGhhcyBzdHJ1Y3QgcGFnZSBjaGVjawo+ID4gdjQ6
IEFkZCBzZWxmLXRlc3QgZm9yIHZhbGlkYXRpbmcgQ1BVIGZhdWx0IGhhbmRsZXIgdG8gZW5zdXJl
IFBURXMKPiA+ICAgICBhcmUgcmV2b2tlZCB3aGVuIGFuIG9iamVjdCBpcyB1bmJvdW5kLgo+ID4g
djU6IEFkZCBjb21tZW50IHdoZXJlIFBURXMgYXJlIHJldm9rZWQgKENocmlzKQo+ID4gCj4gPiBT
aWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRl
bC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRl
bC5jb20+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50
ZWwuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IAo+IFVoIG9oLCB0aGUgbW1hcCgpIGRvZXMgcmVtYWluIHZhbGlkIHBhc3QgYSBn
ZW1fY2xvc2UoKSAtLSB0aGUKPiB2bV9hcmVhX3N0cnVjdCBpcyBsYWNraW5nIGEgcmVmZXJlbmNl
IHRvIHRoZSBvYmplY3Q/CgpIbW0sIHRlc3QgaXMgbWlzbGVhZGluZyAtLSBtYXkganVzdCBiZSBh
IGNvaGVyZW5jeSBidWcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
