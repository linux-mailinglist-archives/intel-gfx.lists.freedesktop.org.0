Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B17FBF5C8
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 17:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F8A26ED79;
	Thu, 26 Sep 2019 15:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B22C6ED79
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 15:23:04 +0000 (UTC)
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iDVbh-00027N-Aa; Thu, 26 Sep 2019 17:23:01 +0200
Date: Thu, 26 Sep 2019 17:23:01 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190926152301.4fqxnkel5ilzefo7@linutronix.de>
References: <20190926142538.9386-1-chris@chris-wilson.co.uk>
 <c05826c8-b589-52b2-441f-89906c11638a@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c05826c8-b589-52b2-441f-89906c11638a@linux.intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Delegate our irq handler to a
 thread
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
Cc: Clark Williams <williams@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOS0yNiAxNTo1NzowNyBbKzAxMDBdLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiAy
LiBXaGF0IGFib3V0IG91ciB0YXNrbGV0cyAtIHdpdGggdGhyZWFkZWQgaXJxcyB3ZSBkb24ndCBu
ZWVkIHRoZW0gYW55IG1vcmUsCj4gcmlnaHQ/IFNvIGluIHRoaXMgY2FzZSB0aGV5IGp1c3QgYWRk
IGFkZGl0aW9uYWwgbGF0ZW5jeS4KCklmIHlvdSBlbnF1ZXVlIC8gc2NoZWR1bGUgdGFza2xldHMg
ZnJvbSB5b3VyIHRocmVhZGVkIGhhbmRsZXIgdGhlbiB0aGlzCndpbGwgd2FrZSB1cCBrc29mdGly
cWQgYW5kIHBlcmZvcm0gdGhlIHdvcmsgdGhlcmUgKGJhc2VkIG9uIG15IG1lbW9yeSBvZgp0aGUg
Y29kZSkuCgo+IFJlZ2FyZHMsCj4gCj4gVHZydGtvCgpTZWJhc3RpYW4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
