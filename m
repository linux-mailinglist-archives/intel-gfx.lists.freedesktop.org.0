Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D42C115076
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 13:32:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C896E082;
	Fri,  6 Dec 2019 12:32:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126F56E082
 for <Intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 12:32:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19483970-1500050 for multiple; Fri, 06 Dec 2019 12:32:26 +0000
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191129105436.20100-1-tvrtko.ursulin@linux.intel.com>
References: <157495798936.8489.15571641017234842307@skylake-alporthouse-com>
 <20191129105436.20100-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157563554404.8823.10550311749695088810@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 06 Dec 2019 12:32:24 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/pmu: Report frequency as zero
 while GPU is sleeping
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yOSAxMDo1NDozNikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFdlIHVzZWQgdG8gcmVw
b3J0IHRoZSBtaW5pbXVtIHBvc3NpYmxlIGZyZXF1ZW5jeSBhcyBib3RoIHJlcXVlc3RlZCBhbmQK
PiBhY3RpdmUgd2hpbGUgR1BVIHdhcyBpbiBzbGVlcCBzdGF0ZS4gVGhpcyB3YXMgYSBjb25zZXF1
ZW5jZSBvZiBzYW1wbGluZwo+IHRoZSB2YWx1ZSBmcm9tIHRoZSAiY3VycmVudCBmcmVxdWVuY3ki
IGZpZWxkIGluIG91ciBzb2Z0d2FyZSB0cmFja2luZy4KPiAKPiBUaGlzIHdhcyBzdHJpY3RseSBz
cGVha2luZyB3cm9uZywgYnV0IGdpdmVuIHRoYXQgdW50aWwgcmVjZW50bHkgdGhlCj4gY3VycmVu
dCBmcmVxdWVuY3kgaW4gc2xlZXBpbmcgc3RhdGUgdXNlZCB0byBiZSBlcXVhbCB0byBtaW5pbXVt
LCBpdCBkaWQKPiBub3Qgc3RhbmQgb3V0IHN1ZmZpY2llbnRseSB0byBiZSBub3RpY2VkIGFzIHN1
Y2guCj4gCj4gQWZ0ZXIgc29tZSByZWNlbnQgY2hhbmdlcyBoYXZlIG1hZGUgdGhlIGN1cnJlbnQg
ZnJlcXVlbmN5IGJlIHJlcG9ydGVkCj4gYXMgbGFzdCBhY3RpdmUgYmVmb3JlIEdQVSB3ZW50IHRv
IHNsZWVwLCBtZWFuaW5nIGJvdGggcmVxdWVzdGVkIGFuZCBhY3RpdmUKPiBmcmVxdWVuY2llcyBj
b3VsZCBlbmQgdXAgYmVpbmcgcmVwb3J0ZWQgYXQgdGhlaXIgbWF4aW11bSB2YWx1ZXMgZm9yIHRo
ZQo+IGR1cmF0aW9uIG9mIHRoZSBHUFUgaWRsZSBzdGF0ZSwgaXQgYmVjYW1lIG11Y2ggbW9yZSBv
YnZpb3VzIHRoYXQgdGhpcyBkb2VzCj4gbm90IG1ha2Ugc2Vuc2UuCj4gCj4gVG8gZml4IHRoaXMg
d2Ugd2lsbCBub3cgc2FtcGxlIHRoZSBmcmVxdWVuY3kgY291bnRlcnMgb25seSB3aGVuIHRoZSBH
UFUgaXMKPiBhd2FrZS4gQXMgYSBjb25zZXF1ZW5jZSByZXBvcnRlZCBmcmVxdWVuY2llcyBjb3Vs
ZCBiZSByZXBvcnRlZCBhcyBiZWxvdwo+IHRoZSBHUFUgcmVwb3J0ZWQgbWluaW11bSBidXQgdGhh
dCBzaG91bGQgYmUgbXVjaCBsZXNzIGNvbmZ1c2luZyB0aGF0IHRoZQo+IGN1cnJlbnQgc2l0dWF0
aW9uLgo+IAo+IHYyOgo+ICAqIFNwbGl0IG91dCBlYXJseSBleGl0IGNvbmRpdGlvbnMgZm9yIHJl
YWRhYmlsaXR5LiAoQ2hyaXMpCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2
cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+CgpJJ20gaGFwcHkgaWYgeW91IGFyZSBoYXBweS4uLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
