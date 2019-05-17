Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF6121E2A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9615489973;
	Fri, 17 May 2019 19:23:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2ED589970;
 Fri, 17 May 2019 19:23:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16593566-1500050 for multiple; Fri, 17 May 2019 20:23:08 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190517112526.6738-5-tvrtko.ursulin@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-5-tvrtko.ursulin@linux.intel.com>
Message-ID: <155812098617.1890.12763505821413498371@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 20:23:06 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 04/25] trace.pl: Virtual engine support
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNyAxMjoyNTowNSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEFkZCB2aXJ0dWFsL3F1
ZXVlIHRpbWVsaW5lcyB0byBib3RoIHN0ZG91dCBhbmQgSFRNTCBvdXRwdXQuCj4gCj4gQSBuZXcg
dGltZWxpbmUgaXMgY3JlYXRlZCBmb3IgZWFjaCBxdWV1ZS92aXJ0dWFsIGVuZ2luZSB0byBkaXNw
bGF5Cj4gYXNzb2NpYXRlZCByZXF1ZXN0cyBpbiBxdWV1ZWQgYW5kIHJ1bm5hYmxlIHN0YXRlcy4g
T25jZSByZXF1ZXN0cyBhcmUKPiBzdWJtaXR0ZWQgdG8gYSByZWFsIGVuZ2luZSBmb3IgZXhlY3V0
aW5nIHRoZXkgc2hvdyB1cCBvbiB0aGUgcGh5c2ljYWwKPiBlbmdpbmUgdGltZWxpbmUuCj4gCj4g
U2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpNYXliZSBhbiB1
bmZhaXIgY29tbWVudCwgYnV0IGxvb2tzIGp1c3QgYXMgdW50aWR5IGFzIGlmIEkgaGFkIGhhY2tl
ZCBpdAppbiA7KQoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgpUaG91Z2ggdGhhdCdzIHJlYWxseSBqdXN0IGEgZ2xhbmNlIGFuZCB0cnlpbmcgdG8g
Zm9sbG93IHRoZSBmbG93LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
