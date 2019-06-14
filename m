Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6E346431
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25995899F2;
	Fri, 14 Jun 2019 16:32:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B30899F2
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:32:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905196-1500050 for multiple; Fri, 14 Jun 2019 17:32:19 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-26-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190614151731.17608-26-tvrtko.ursulin@linux.intel.com>
Message-ID: <156052993763.7796.3552935312189324070@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 17:32:17 +0100
Subject: Re: [Intel-gfx] [RFC 25/31] drm/i915: Compartmentalize
 i915_gem_init_ggtt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjoxNzoyNSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENvbnRpbnVpbmcgb24g
dGhlIHRoZW1lIG9mIGJldHRlciBsb2dpY2FsIG9yZ2FuaXphdGlvbiBvZiBvdXIgY29kZSwgbWFr
ZQo+IHRoZSBmaXJzdCBzdGVwIHRvd2FyZHMgbWFraW5nIHRoZSBnZ3R0IGNvZGUgYmV0dGVyIGlz
b2xhdGVkIGZyb20gd2lkZXIKPiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZS4KPiAKPiB2MjoKPiAg
KiBCcmluZyB0aGUgaWNrbGUgb25pb24gdW53aW5kIGJhY2suIChDaHJpcykKPiAgKiBSZW5hbWUg
dG8gaTkxNV9pbml0X2dndHQuIChDaHJpcykKPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKQnV0IG5vdCBwYXNzaW5nIGd0PyBPciBp
cyB0aGF0IHN0aWxsIHdhaXRpbmcgb24gbW92aW5nIGdndHQgYW5kCmFsaWFzaW5nX3BwZ3R0Pwot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
