Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB25750537
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 11:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0612F899D5;
	Mon, 24 Jun 2019 09:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B15899D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 09:11:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17002524-1500050 for multiple; Mon, 24 Jun 2019 10:11:35 +0100
MIME-Version: 1.0
To: Zhenyu Wang <zhenyuw@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190624090231.GP9684@zhen-hp.sh.intel.com>
References: <20190621191313.27709-1-chris@chris-wilson.co.uk>
 <20190624090231.GP9684@zhen-hp.sh.intel.com>
Message-ID: <156136749185.15678.3512674415398186417@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 24 Jun 2019 10:11:31 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Disable preemption
 under GVT
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBaaGVueXUgV2FuZyAoMjAxOS0wNi0yNCAxMDowMjozMSkKPiBPbiAyMDE5LjA2LjIx
IDIwOjEzOjEzICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBQcmVlbXB0LXRvLWJ1c3kg
dXNlcyBhIEdQVSBzZW1hcGhvcmUgdG8gZW5mb3JjZSBhbiBpZGxlLWJhcnJpZXIgYWNyb3NzCj4g
PiBwcmVlbXB0aW9uLCBidXQgbWVkaWF0ZWQgZ3Z0IGRvZXMgbm90IGZ1bGx5IHN1cHBvcnQgc2Vt
YXBob3Jlcy4KPiA+Cj4gCj4gQ3VycmVudCBsb29rcyBzZW1hcGhvcmUgaXMgc3RpbGwgdXNlZCBm
cm9tIGVtaXRfZmluaV9icmVhZGNydW1iIHdoaWNoCj4gY2F1c2VkIGd2dCBlcnJvciwgZ3Z0IG1h
eSBzdXBwb3J0IG1lbW9yeSBiYXNlZCBzZW1hcGhvcmUgYnV0IG5vdCBmb3IKPiByZWcgYmFzZWQu
CgpBbHJlYWR5IHJlc2VudCBwYXRjaCB0byBhdm9pZCB0aGUgZW1pc3Npb24gYXMgd2VsbCwgYXMg
SSBndWVzc2VkIHRoYXQKZXZlbiB1c2luZyBhIG5vLW9wIHNlbWFwaG9yZSBtaWdodCBiZSBwcm9i
bGVtYXRpYyA6KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
