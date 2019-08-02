Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B86F7FCF9
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 17:06:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8026EE9C;
	Fri,  2 Aug 2019 15:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B7036EE9C
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 15:06:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17820038-1500050 for multiple; Fri, 02 Aug 2019 16:06:01 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHOZVBrPNh2s8LmNOXcfSQG1U1DnjoJd0rr8ZfdfUNPetQ@mail.gmail.com>
References: <20190730205805.3733-1-chris@chris-wilson.co.uk>
 <CAM0jSHOZVBrPNh2s8LmNOXcfSQG1U1DnjoJd0rr8ZfdfUNPetQ@mail.gmail.com>
Message-ID: <156475835946.6598.281229222100210466@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 02 Aug 2019 16:05:59 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Report resv_obj allocation failure
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDIgMTY6MDA6MTgpCj4gT24gVHVlLCAzMCBK
dWwgMjAxOSBhdCAyMTo1OCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4KPiA+IFNpbmNlIGNvbW1pdCA2NGQ2YzUwMGEzODQgKCJkcm0vaTkxNTogR2Vu
ZXJhbGlzZSBHUFUgYWN0aXZpdHkKPiA+IHRyYWNraW5nIiksIHdlIGhhdmUgYmVlbiBwcmVwYXJl
ZCBmb3IgaTkxNV92bWFfbW92ZV90b19hY3RpdmUoKSB0byBmYWlsLgo+ID4gV2UgY2FuIHRha2Ug
YWR2YW50YWdlIG9mIHRoaXMgdG8gcmVwb3J0IHRoZSBmYWlsdXJlIGZvciBhbGxvY2F0aW5nIHRo
ZQo+ID4gc2hhcmVkLWZlbmNlIHNsb3QgaW4gdGhlIHJlc2VydmF0aW9uX29iamVjdC4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKVGhh
bmtzLiBPbmUgZGF5LCB3ZSBzaG91bGQgbGlmdCBldmVuIHRoZSByZXNlcnZhdGlvbiBhbGxvY2F0
aW9uIG91dCBvZgp0aGUgcmVzZXJ2YXRpb24gbG9jay4gKFRoYXQgd2lsbCBtYWtlIGl0IG1vdmUg
Y29udmVuaWVudCB0byB1c2UgdGhhdApsb2NrIGZyb20gaW5zaWRlIGZzLXJlY2xhaW0gcGF0aHMu
KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
