Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 370C5DEDB0
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 15:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E1A891A1;
	Mon, 21 Oct 2019 13:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4256A88FC1
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 13:35:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18913212-1500050 for multiple; Mon, 21 Oct 2019 14:35:17 +0100
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191021104811.25663-4-abdiel.janulgue@linux.intel.com>
References: <20191021104811.25663-1-abdiel.janulgue@linux.intel.com>
 <20191021104811.25663-4-abdiel.janulgue@linux.intel.com>
Message-ID: <157166491547.29536.1978879286617090513@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 21 Oct 2019 14:35:15 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTAtMjEgMTE6NDg6MTApCj4gK2ludAo+ICtp
OTE1X2dlbV9tbWFwX2R1bWIoc3RydWN0IGRybV9maWxlICpmaWxlLAo+ICsgICAgICAgICAgICAg
ICAgIHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gKyAgICAgICAgICAgICAgICAgdTMyIGhhbmRs
ZSwKPiArICAgICAgICAgICAgICAgICB1NjQgKm9mZnNldCkKPiArewo+ICsgICAgICAgcmV0dXJu
IF9fYXNzaWduX2dlbV9vYmplY3RfbW1hcF9kYXRhKGZpbGUsIGhhbmRsZSwgSTkxNV9NTUFQX1RZ
UEVfV0MsCgpJdCBzdGlsbCBuZWVkcyB0byBkbyBib290X2NwdV9oYXMoUEFUKSwgYnV0IGl0IGxv
b2tzIGxpa2UKa21zX2Zyb250YnVmZmVyIGlzIG5vdCBkb2luZyBlbm91Z2ggZGlydHlmYiBmb3Ig
aXRzIGR1bWIgYnVmZmVyIHVzYWdlLgpCYWQgSUdUIChpdCdzIGVpdGhlciBhIGJ1ZyBpbiB0aGUg
dGVzdCBmb3Igbm90IGFkaGVyaW5nIHRvIHRoZSB1YWJpCmZvciBkdW1iIGJ1ZmZlcnMsIG9yIHdl
IGhhdmUgc29tZSB0cmFja2luZyBidWcgaW50ZWxfZnJvbnRidWZmZXIpLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
