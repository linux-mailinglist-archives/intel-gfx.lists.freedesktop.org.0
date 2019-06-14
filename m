Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D885465C2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 19:30:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AF3989AAD;
	Fri, 14 Jun 2019 17:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F9A089AAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 17:30:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905867-1500050 for multiple; Fri, 14 Jun 2019 18:30:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190614164350.30415-1-mika.kuoppala@linux.intel.com>
 <20190614164350.30415-9-mika.kuoppala@linux.intel.com>
In-Reply-To: <20190614164350.30415-9-mika.kuoppala@linux.intel.com>
Message-ID: <156053342096.7796.18338517391513040834@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 18:30:20 +0100
Subject: Re: [Intel-gfx] [PATCH 09/10] drm/i915/gtt: Tear down setup and
 cleanup macros for page dma
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE0IDE3OjQzOjQ5KQo+IFdlIGRvbid0IHVz
ZSBjb21tb24gY29kZXBhdGhzIHRvIHNldHVwIGFuZCBjbGVhbnVwIHBhZ2UKPiBkaXJlY3Rvcmll
cyB2cyBwYWdlIHRhYmxlcy4gU28gdGhlaXIgc2V0dXAgYW5kIGNsZWFudXAgbWFjcm9zCj4gYXJl
IG9mIG5vIHVzZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KCkFuZCBJIGhhZCBqdXN0IGFib3V0IGdvdCB1c2VkIHRvIHB4
IQoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
