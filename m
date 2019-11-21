Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2539B1052D6
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 14:23:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C946E0C8;
	Thu, 21 Nov 2019 13:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0226E0C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 13:23:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19285923-1500050 for multiple; Thu, 21 Nov 2019 13:23:37 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
 <20191112092854.869-15-chris@chris-wilson.co.uk>
 <ac7b3a9a-f3e7-740f-aa26-7d05987a0c00@intel.com>
In-Reply-To: <ac7b3a9a-f3e7-740f-aa26-7d05987a0c00@intel.com>
Message-ID: <157434261330.29262.17439436122489653120@skylake-alporthouse-com>
Date: Thu, 21 Nov 2019 13:23:33 +0000
Subject: Re: [Intel-gfx] [PATCH 15/27] drm/i915/gt: Expose engine->mmio_base
 via sysfs
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMS0yMSAxMzoxODo0NykKPiBPbiAxMi8x
MS8yMDE5IDExOjI4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBVc2UgdGhlIHBlci1lbmdpbmUg
c3lzZnMgZGlyZWN0b3J5IHRvIGxldCB1c2Vyc3BhY2UgZGlzY292ZXIgdGhlCj4gPiBtbWlvX2Jh
c2Ugb2YgZWFjaCBlbmdpbmUuIFByaW9yIHRvIHJlY2VudCBnZW5lcmF0aW9ucywgdGhlIHVzZXIK
PiA+IGFjY2Vzc2libGUgcmVnaXN0ZXJzIG9uIGVhY2ggZW5naW5lIGFyZSBhdCBhIGZpeGVkIG9m
ZnNldCByZWxhdGl2ZSB0bwo+ID4gZWFjaCBlbmdpbmUgLS0gYnV0IHJlcXVpcmUgYWJzb2x1dGUg
YWRkcmVzc2luZy4gQXMgdGhlIGFic29sdXRlIGFkZHJlc3MKPiA+IGRlcGVuZHMgb24gdGhlIGFj
dHVhbCBwaHlzaWNhbCBlbmdpbmUsIHRoaXMgaXMgbm90IGFsd2F5cyBwb3NzaWJsZSB0bwo+ID4g
ZGV0ZXJtaW5lIGZyb20gdXNlcnNwYWNlIChmb3IgZXhhbXBsZSBpY2wgbWF5IGV4cG9zZSB2Y3Mx
IG9yIHZjczIgYXMgdGhlCj4gPiBzZWNvbmQgdmNzIGVuZ2luZSkuIE1ha2UgdGhpcyBlYXN5IGZv
ciB1c2Vyc3BhY2UgdG8gZGlzY292ZXIgYnkKPiA+IHByb3ZpZGluZyB0aGUgbW1pb19iYXNlIGlu
IHN5c2ZzLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+IAo+IAo+IFNvdW5kcyBsaWtlIGEgZ29vZCBpZGVhIDoKPiAKPiAKPiBB
Y2tlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29t
Pgo+IAo+IAo+IEkgZ3Vlc3MgdGhpcyBiZWluZyB1bmRlciB1bnN0YWJsZSBtYWtlIHRoaXMgdW5z
dWl0YWJsZSB0byBleHBvc2UgdGhyb3VnaCAKPiBpOTE1X3F1ZXJ5PwoKSSBjb3VsZG4ndCBnYXRo
ZXIgZW5vdWdoIHN1cHBvcnQgZm9yIGEgSFcgaW5mbyBpOTE1X3F1ZXJ5IDooCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
