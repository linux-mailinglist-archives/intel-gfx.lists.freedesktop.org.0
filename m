Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE934B989
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:18:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4BC6E3C7;
	Wed, 19 Jun 2019 13:18:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE7A6E3C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:18:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16953356-1500050 for multiple; Wed, 19 Jun 2019 14:17:59 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87fto57m7l.fsf@gaia.fi.intel.com>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
 <20190618074153.16055-4-chris@chris-wilson.co.uk>
 <87fto57m7l.fsf@gaia.fi.intel.com>
Message-ID: <156095028093.21217.1582566208853649388@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 19 Jun 2019 14:18:00 +0100
Subject: Re: [Intel-gfx] [PATCH 04/26] drm/i915: Flush the
 execution-callbacks on retiring
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE5IDE0OjEyOjQ2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJbiB0aGUgdW5saWtl
bHkgY2FzZSB0aGUgcmVxdWVzdCBjb21wbGV0ZXMgd2hpbGUgd2UgcmVnYXJkIGl0IGFzIG5vdCBl
dmVuCj4gPiBleGVjdXRpbmcgb24gdGhlIEdQVSAoc2VlIHRoZSBuZXh0IHBhdGNoISksIHdlIGhh
dmUgdG8gZmx1c2ggYW55IHBlbmRpbmcKPiA+IGV4ZWN1dGlvbiBjYWxsYmFja3MgYXQgcmV0aXJl
bWVudCBhbmQgZW5zdXJlIHRoYXQgd2UgZG8gbm90IGFkZCBhbnkKPiA+IG1vcmUuCj4gPgo+IAo+
IEkgZGlkIHNlZSB0aGUgbmV4dCBwYXRjaC4gTG9va2VkIGxpa2UgYSBtb3VudGFpbi4KPiAKPiBX
ZWxsIHdlIGRvbid0IGxvc2Ugd2FybmluZ3MgYW5kIHdlIHNob3VsZCBuZXZlciBzZWUKPiBhIHBy
ZWNvbXBsZXRlZCByZXF1ZXN0IHdpdGggY3VycmVudCBjb2RlYmFzZSBzbywKClRoYXQgaXMgdmVy
eSB0cnVlLiBJIGhhZCBhIGxpdHRsZSBmcmVhayBvdXQgd2hlbiBJIGZvdW5kIHRoZSByYWNlLCBh
bmQKYmVsaWV2ZWQgYSBzaWdoIG9mIHJlbGllZiBvbiByZWFsaXNpbmcgaXQgb25seSBhZmZlY3Rl
ZCB0aGUgbmV4dCBwYXRoLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
