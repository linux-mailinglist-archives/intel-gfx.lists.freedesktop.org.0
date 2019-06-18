Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA434A0D1
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 14:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC766E157;
	Tue, 18 Jun 2019 12:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB48E6E157;
 Tue, 18 Jun 2019 12:31:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16940035-1500050 for multiple; Tue, 18 Jun 2019 13:31:31 +0100
MIME-Version: 1.0
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190614203615.12639-49-daniel.vetter@ffwll.ch>
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-49-daniel.vetter@ffwll.ch>
Message-ID: <156086109226.31375.13709018371564539675@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Jun 2019 13:31:32 +0100
Subject: Re: [Intel-gfx] [PATCH 48/59] drm/vgem: Ditch attach trickery in
 the fence ioctl
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA2LTE0IDIxOjM2OjA0KQo+IEl0IGxvb2tzIGxp
a2UgdGhpcyB3YXMgZG9uZSBwdXJlbHkgdG8gZ2V0IGEgY29uc2lzdGVudCBwbGFjZSB0byBsb29r
Cj4gdXAgdGhlIHJlc2VydmF0aW9uIG9iamVjdCBwb2ludGVyLiBXaXRoIHRoZSBkcm1fcHJpbWUu
YyBoZWxwZXIgY29kZQo+IG5vdyBhbHNvIHNldHRpbmcgZ2VtX29iamVjdC0+cmVzdiBmb3IgaW1w
b3J0ZWQgb2JqZWN0cyB3ZSBjYW4ganVzdCB1c2UKPiB0aGF0IHBvaW50ZXIgZGlyZWN0bHksIGlu
c3RlYWQgb2YgZmlyc3QgZW5zdXJpbmcgYSBkbWEtYnVmIGV4aXN0cy4KCk9oLiBjb21taXQgMWJh
NjI3MTQ4ZWY1ICgiZHJtOiBBZGQgcmVzZXJ2YXRpb25fb2JqZWN0IHRvIGRybV9nZW1fb2JqZWN0
IikKZW1iZWRkZWQgYSByZXNlcnZhdGlvbl9vYmplY3QgaW50byB0aGUgc3RydWN0LiBJIHdhcyB3
b25kZXJpbmcgd2hhdCBvbgplYXJ0aCBJIHdhcyBkb2luZyBpZiB0aGUgY29kZSBzaG91bGQgaGF2
ZSBiZWVuIHNvIHNpbXBsZS4KClJlZmVyZW5jZXM6IDFiYTYyNzE0OGVmNSAoImRybTogQWRkIHJl
c2VydmF0aW9uX29iamVjdCB0byBkcm1fZ2VtX29iamVjdCIpCj4gU2lnbmVkLW9mZi1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KClF1aWNrIGxlYXZlIGJlZm9yZSBJIHN0
YXJ0IHJhbnRpbmcgYWJvdXQgdGhlIGhvcnJvcnMgb2YKcmVzZXJ2YXRpb25fb2JqZWN0LgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
