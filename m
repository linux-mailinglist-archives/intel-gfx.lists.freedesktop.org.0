Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A98507DEAD
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 17:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F21F06E6D5;
	Thu,  1 Aug 2019 15:20:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 940066E6D5
 for <Intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 15:20:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17791817-1500050 for multiple; Thu, 01 Aug 2019 16:20:47 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <6e776f39-efba-08bc-e96d-188cc88ebcb4@linux.intel.com>
References: <20190801141732.31335-1-tvrtko.ursulin@linux.intel.com>
 <20190801141732.31335-5-tvrtko.ursulin@linux.intel.com>
 <156467129926.6045.16909307069650415218@skylake-alporthouse-com>
 <6e776f39-efba-08bc-e96d-188cc88ebcb4@linux.intel.com>
Message-ID: <156467284530.6045.16630954954029726609@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 01 Aug 2019 16:20:45 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/pmu: Support multiple GPUs
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAxNjoxMDoxNCkKPiAKPiBPbiAwMS8w
OC8yMDE5IDE1OjU0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXb3JrcyBmb3IgbWUsIEkgd29u
ZGVyIHdoYXQgUGV0ZXJaIHdpbGwgc2F5Li4uCj4gCj4gSW4gd2hhdCBzZW5zZT8KCkp1c3Qgd29u
ZGVyaW5nIGlmIGhlIGhhcyBhIHBsYW4gZm9yIGhvdHBsdWdnYWJsZSBwbXUgZGV2aWNlcy4gSSBj
YW4KY2VydGFpbmx5IGltYWdpbmUgaGlzIHN1cnByaXNlIGluIHRoZSBmdXR1cmUgd2hlbiBoZSBm
aW5kcyBhbiBhZGhvYwpzY2hlbWUgaW4gYSByYW5kb20gZHJpdmVyLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
