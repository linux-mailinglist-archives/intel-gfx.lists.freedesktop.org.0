Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF0F5E197
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 12:04:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D0989815;
	Wed,  3 Jul 2019 10:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B464689815
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 10:04:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17111221-1500050 for multiple; Wed, 03 Jul 2019 11:04:20 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1a0a1006-a3e2-e2e9-09db-a671dd00607e@intel.com>
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
 <1a0a1006-a3e2-e2e9-09db-a671dd00607e@intel.com>
Message-ID: <156214825838.2466.1964489544567293641@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 03 Jul 2019 11:04:18 +0100
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/i915/selftests: Common live
 setup/teardown
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDctMDMgMTA6NDg6MjgpCj4gT24gMDMvMDcvMjAx
OSAxMDoxNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gV2UgZnJlcXVlbnRseSwgYW5kIG5vdCBm
cmVxdWVudGx5IGVub3VnaCwgcmVtZW1iZXIgdG8gZmx1c2ggcmVzaWR1YWwKPiA+IG9wZW5hdGlv
bnMgYW5kIG9iamVjdHMgYXQgdGhlIGVuZCBvZiBhIGxpdmUgc3VidGVzdC4gVGhlIHB1cnBvc2Ug
aXMgdG8KPiAKPiBvcGVyYXRpb25zCj4gCj4gPiBjbGVhbnVwIGFmdGVyIGV2ZXJ5IHN1YnRlc3Qs
IGxlYXZpbmcgYSBjbGVhbiBzbGF0ZSBmb3IgdGhlIG5leHQgc3VidGVzdCwKPiA+IGFuZCBwZXJm
b3JtIGVhcmx5IGRldGVjdGlvbiBvZiBsZWFreSBzdGF0ZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogTWF0dGhl
dyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+IAo+IEEgdmFyaWFudCB3aXRoIHNlcGFy
YXRlIGFyZ3VtZW50cyBmb3IgZGF0YSBhbmQgaTkxNT8gTWVoLgoKTXkgZmlyc3QgYXR0ZW1wdCB3
YXMgdG8gdXNlCgpzdHJ1Y3QgaTkxNV9saXZlX2RhdGEgewoJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTU7Cn07CgpidXQgZm9yIHRoaXMgcGFzcyBldmVyeXRoaW5nIGlzIGJhc2ljYWxseSB1
c2luZyBpOTE1IGFzIHRoZSBkYXRhCnBhcmFtZXRlciwgc28gd2VudCB3aXRoIHRoYXQgZm9yIGEg
c21hbGxlciBwYXRjaC4KCkl0IG1heSBhbHNvIGJlIGludGVyZXN0aW5nIHRvIGEgZG8gYSBpOTE1
X21vY2tfc3VidGVzdHMoKSB0aGF0IGNyZWF0ZXMKYW5kIGRlc3Ryb3kgYSBtb2NrX2dlbV9kZXZp
Y2UgYXJvdW5kIGVhY2ggc3VidGVzdC4gSSBhbSBzdXJlIHdlIHdpbGwKc3RhcnQgdXNpbmcgc2V0
dXAvdGVhcmRvd24gbW9yZSBjcmVhdGl2ZWx5IGluIGZ1dHVyZSA6KQoKQWxzbyByZW1pbmQgbWUg
dG8gcGF5IGF0dGVudGlvbiB0byBrdW5pdCBhbmQgc2VlIGlmIHdlIGNhbiBoYXZlIGEgc21vb3Ro
CnRyYW5zaXRpb24gb3ZlciB0byBhIGNlbnRyYWwgZnJhbWV3b3JrLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
