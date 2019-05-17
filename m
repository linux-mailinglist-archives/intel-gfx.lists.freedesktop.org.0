Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D6321E1F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4529C89973;
	Fri, 17 May 2019 19:21:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04A7289970;
 Fri, 17 May 2019 19:21:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16593550-1500050 for multiple; Fri, 17 May 2019 20:20:58 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190517112526.6738-3-tvrtko.ursulin@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <155812085634.1890.3714005121262386142@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 20:20:56 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 02/25] trace.pl: Ignore signaling on
 non i915 fences
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNyAxMjoyNTowMykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IGdlbV93c2ltIHVzZXMg
dGhlIHN3X2ZlbmNlIHRpbWVsaW5lIGFuZCBjb25mdXNlcyB0aGUgc2NyaXB0LgoKc3dfc3luYwoK
SG93IGRvZXMgdGhpcyBmYXJlIHdpdGggY2xmbHVzaCBmZW5jZXMgKHdoaWNoIGFyZSAuZHJpdmVy
PSJpOTE1IikgYW5kCmFsbCBvZiB0aGUgZnV0dXJlIC5kcml2ZXI9Imk5MTUiIGZlbmNlcz8KCkxv
b2tzIGxpa2Ugd2UgYXJlIHN0aWxsIHByb25lIHRvIGhpdHRpbmcgdGhhdCBkaWUuIChTaG91bGQg
ZGllIHByZXR0eQpxdWljayBvbiAhbGxjKQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
