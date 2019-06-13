Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CEC43719
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 16:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E37F389A8B;
	Thu, 13 Jun 2019 14:08:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7959E89A8B
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 14:08:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16889592-1500050 for multiple; Thu, 13 Jun 2019 15:08:38 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-21-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190613133539.12620-21-tvrtko.ursulin@linux.intel.com>
Message-ID: <156043491632.17012.905658932195637345@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 15:08:36 +0100
Subject: Re: [Intel-gfx] [RFC 20/28] drm/i915: Compartmentalize
 i915_gem_suspend/restore_gtt_mappings
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNDozNTozMSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEhhdmluZyBtYWRlIHN0
YXJ0IHRvIGJldHRlciBjb2RlIGNvbXBhcnRtZW50YWxpemF0aW9uIGJ5IGludHJvZHVjaW5nCj4g
c3RydWN0IGludGVsX2d0LCBjb250aW51ZSB0aGUgdGhlbWUgZWxzZXdoZXJlIGluIGNvZGUgYnkg
bWFraW5nIGZ1bmN0aW9ucwo+IHRha2UgcGFyYW1ldGVycyB0YWtlIHdoYXQgbG9naWNhbGx5IG1h
a2VzIG1vc3Qgc2Vuc2UgZm9yIHRoZW0gaW5zdGVhZCBvZgo+IHRoZSBnbG9iYWwgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUuCgpTbyBJIGFtIGRlYmF0aW5nIHdoZXRoZXIgdGhpcyBpcyBiZXR0ZXIg
b2ZmIGFzIHBhcnQgb2YgaTkxNV9nZ3R0IGFuZCBub3QKaTkxNV9hZGRyZXNzX3NwYWNlLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
