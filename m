Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3B98FF7D
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 11:55:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38486E2B0;
	Fri, 16 Aug 2019 09:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE176E2B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 09:55:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18160682-1500050 for multiple; Fri, 16 Aug 2019 10:55:12 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190816094754.26492-1-mika.kuoppala@linux.intel.com>
References: <156587846595.5838.15496642378834924864@skylake-alporthouse-com>
 <20190816094754.26492-1-mika.kuoppala@linux.intel.com>
Message-ID: <156594931046.11610.9788952225884955064@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 16 Aug 2019 10:55:10 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Fold gen8 insertions into one
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTE2IDEwOjQ3OjU0KQo+IEFzIHdlIGdpdmUg
cGFnZSBkaXJlY3RvcnkgcG9pbnRlciAobHZsIDMpIHN0cnVjdHVyZQo+IGZvciBwdGUgaW5zZXJ0
aW9uLCB3ZSBjYW4gZm9sZCBib3RoIHZlcnNpb25zIGludG8KPiBvbmUgZnVuY3Rpb24gYnkgdGVh
Y2hpbmcgaXQgdG8gZ2V0IHBkcCByZWdhcmRsZXNzCj4gb2YgdG9wIGxldmVsLgo+IAo+IHYyOiBu
YW1pbmcgYW5kIGFzc2VydHMgKENocmlzKQo+IAo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
