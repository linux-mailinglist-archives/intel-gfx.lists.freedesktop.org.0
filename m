Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF9437110
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 11:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C750089819;
	Thu,  6 Jun 2019 09:59:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02CC189819
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 09:59:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16811178-1500050 for multiple; Thu, 06 Jun 2019 10:59:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
 <20190606093639.9372-11-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190606093639.9372-11-tvrtko.ursulin@linux.intel.com>
Message-ID: <155981515195.19464.8866885572020367483@skylake-alporthouse-com>
Date: Thu, 06 Jun 2019 10:59:11 +0100
Subject: Re: [Intel-gfx] [PATCH 10/21] drm/i915: Move scheduler caps init to
 i915_gem_init
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0wNiAxMDozNjoyOCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFRoaXMgc3RlcCBpcyBt
b3JlIGFib3V0IHRoZSBHRU0gYW5kIGxlc3MgYWJvdXQgdGhlIGhhcmR3YXJlIHNvIG1vdmUgaXQg
dG8KPiB0aGUgbW9yZSBhcHByb3ByaWF0ZSBwbGFjZS4KCkp1c3QgaGFwcGVucyB0byBiZSB0aGUg
d3JvbmcgcGxhY2UuIEl0IG5lZWRzIHRvIGJlIHJlc2V0IGFmdGVyIHdlCnJlc3RhcnQgdGhlIEhX
IGFzIHRoZSBjYXBhYmlsaXRpZXMgZG8gY2hhbmdlIGZvbGxvd2luZyB3ZWRnaW5nLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
