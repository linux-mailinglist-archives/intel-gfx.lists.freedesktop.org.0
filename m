Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F23095F9F5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 16:22:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF6F6E356;
	Thu,  4 Jul 2019 14:22:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30A16E356
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 14:22:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17129732-1500050 for multiple; Thu, 04 Jul 2019 15:22:35 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <874l413mtb.fsf@gaia.fi.intel.com>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-2-chris@chris-wilson.co.uk>
 <877e8x3nzu.fsf@gaia.fi.intel.com>
 <156224894080.25091.9692052047615259807@skylake-alporthouse-com>
 <874l413mtb.fsf@gaia.fi.intel.com>
Message-ID: <156225015288.25091.10127088494946016784@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 04 Jul 2019 15:22:32 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Defer obj->base.resv fini
 until RCU callback
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA0IDE1OjE4OjQwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMDctMDQgMTQ6NTM6MDkpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiA+ICtzdGF0aWMgdm9pZCBzaG1lbV9yZWxl
YXNlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4gPj4gPiArewo+ID4+ID4gKyAg
ICAgZnB1dChvYmotPmJhc2UuZmlscCk7Cj4gPj4gCj4gPj4gV2UgbG9zZSB0aGUgY2hlY2sgZm9y
IGZpbHAgZXhpc3RlbmNlLiBCdXQgYXMgaW50ZXJuYWwKPiA+PiBvcHMgaGF2ZSB0aGVpciBvd24g
bWVjaGFuaWNzLCB3ZSBzaG91bGQgYWx3YXlzIGhhdmUgdGhlIGZpbHAuCj4gPgo+ID4gRXhhY3Rs
eS4gZHJtX2dlbV9vYmplY3Qgc2hvdWxkIG5vdCBoYXZlIGZpbHAgYW55bW9yZS4KPiAKPiAuLmZv
ciBpbnRlcm5hbCBvYmplY3RzLgoKSSBtZWFuIHRoZSBzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qgc2hv
dWxkIG5vdCBpbmNsdWRlIGEgc3RydWN0IGZpbGUgKmZpbHAKYW55bW9yZSBhcyBub3QgYWxsIHN1
YmNsYXNzZXMgYXJlIHNobWVtIGJhc2VkLiBBbmQgd2hlcmUgcGVvcGxlIHdhbnQgdG8KdXNlIGl0
LCBpdCByYWlzZXMgbW9yZSBxdWVzdGlvbnMgdGhhbiBhbnN3ZXJzLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
