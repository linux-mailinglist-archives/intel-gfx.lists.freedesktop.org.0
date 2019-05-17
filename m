Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DF321EBA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD5989994;
	Fri, 17 May 2019 19:43:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 993C88997E;
 Fri, 17 May 2019 19:43:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16593753-1500050 for multiple; Fri, 17 May 2019 20:43:41 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190517112526.6738-20-tvrtko.ursulin@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-20-tvrtko.ursulin@linux.intel.com>
Message-ID: <155812221927.1890.13463422502098187829@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 20:43:39 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 19/25] gem_wsim: Command
 line switch for specifying low slice count workloads
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNyAxMjoyNToyMCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEEgbmV3IGNvbW1hbmQg
bGluZSBzd2l0Y2ggKCctcycpIGlzIGFkZGVkIHdoaWNoIHRvZ2dsZXMgdGhlIGxvdyBzbGljZQo+
IGNvdW50IG1vZGUgZm9yIHdvcmtsb2FkcyBmb2xsb3dpbmcgb24gdGhlIGNvbW1hbmQgbGluZS4K
PiAKPiBUaGlzIGVuYWJsZXMgZWFzeSBiZW5jaG1hcmtpbmcgb2YgdGhlIGVmZmVjdCBvZiBydW5u
aW5nIHRoZSBleGlzdGluZyBtZWRpYQo+IHdvcmtsb2FkcyBpbiBwYXJhbGxlbCBhZ2FpbnN0IGFu
b3RoZXIgY2xpZW50LiBGb3IgZXhhbXBsZToKPiAKPiAgIC4vZ2VtX3dzaW0gLW4gLi4uIC12IC1y
IDYwMCAtVyBtYXN0ZXIud3NpbSAtcyAtdyBtZWRpYV9ubjQ4MC53c2ltCj4gCj4gQWRkaW5nIG9y
IHJlbW92aW5nIHRoZSAnLXMnIHN3aXRjaCBiZWZvcmUgdGhlIHNlY29uZCB3b3JrbG9hZCBlbmFi
bGVzCj4gYW5hbHl6aW5nIHRoZSBjb3N0IG9mIGR5bmFtaWMgU1NFVSBzd2l0Y2hpbmcgaW1wYWN0
ZWQgdG8gdGhlIGZpcnN0Cj4gKG1hc3Rlcikgd29ya2xvYWQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkxvb2tzIHNpbXBsZSBl
bm91Z2gKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
