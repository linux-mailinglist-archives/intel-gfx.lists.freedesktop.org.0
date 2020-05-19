Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4CF1D94A9
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 12:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED50A6E2EC;
	Tue, 19 May 2020 10:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A26516E2EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 10:47:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21241052-1500050 for multiple; Tue, 19 May 2020 11:46:56 +0100
MIME-Version: 1.0
In-Reply-To: <20200519104245.GV6112@intel.com>
References: <20200516132444.24007-1-chris@chris-wilson.co.uk>
 <20200516133102.32167-1-chris@chris-wilson.co.uk>
 <20200519104245.GV6112@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Message-ID: <158988521466.7442.3791653477981759222@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 19 May 2020 11:46:54 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Measure CS_TIMESTAMP
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDUtMTkgMTE6NDI6NDUpCj4gT24gU2F0LCBN
YXkgMTYsIDIwMjAgYXQgMDI6MzE6MDJQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
Q291bnQgdGhlIG51bWJlciBvZiBDU19USU1FU1RBTVAgdGlja3MgYW5kIGNoZWNrIHRoYXQgaXQg
bWF0Y2hlcyBvdXIKPiA+IGV4cGVjdGF0aW9ucy4KPiAKPiBMb29rcyBvayBmb3IgZXZlcnl0aGlu
ZyBleGNlcHQgZzR4L2lsay4gVGhvc2Ugd291bGQgbmVlZCBzb21ldGhpbmcKPiBsaWtlCj4gaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzM1NTk0NC8/c2VyaWVzPTc0MTQ1
JnJldj0xCj4gKyByZWFkIFRJTUVTVEFNUF9VRFcgaW5zdGVhZCBvZiBUSU1FU1RBTVAuCj4gCj4g
YncvY2wgc3RpbGwgbmVlZHMKPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0
Y2gvMzU1OTQ2Lz9zZXJpZXM9NzQxNDUmcmV2PTEKPiB0aG91Z2ggdGhlIHRlc3Qgc2VlbXMgYSBi
aXQgZmxha3kgb24gbXkgY2wuIFNvbWV0aW1lcyB0aGUgY3ljbGUgY291bnQKPiBjb21lcyB1cCBz
aG9ydC4gTmV2ZXIgc2VlbiBpdCBleGNlZWQgdGhlIGV4cGVjdGVkIHZhbHVlLCBidXQgaXQgY2Fu
IAo+IGNvbWUgdXAgc2lnbmlmaWNhbnRseSBzaG9ydC4gQW5kIGN1cmlvdXNseSBpdCBkb2VzIHNl
ZW0gdG8gaGF2ZSBhCj4gdGVuZGVuY3kgdG8gY29tZSBvdXQgYXMgcm91Z2hseSBzb21lIG5pY2Ug
ZnJhY3Rpb24gKHNlZW4gYXQgbGVhc3QKPiAxLzIgYW5kIDEvNCBxdWl0ZSBhIGZldyB0aW1lcyku
IER1bm5vIGlmIHRoZSB0aWNrIHJhdGUgYWN0dWFsbHkKPiBjaGFuZ2VzIGR1ZSB0byBzb21lIHVu
a25vd24gY2lyY3Vtc3RhbmNlcywgb3IgaWYgdGhlIGNvdW50ZXIganVzdAo+IHVwZGF0ZXMgc29t
ZWhvdyBsYXppbHkuIENlcnRhaW5seSBwb2xsaW5nIHRoZSBjb3VudGVyIG92ZXIgYSBsb25nZXIK
PiBwZXJpb2QgZG9lcyBzaG93IGl0IHRvIHRpY2sgYXQgdGhlIGV4cGVjdGVkIHJhdGUuCgpBbnkg
Z3Vlc3RpbWF0ZSBhdCBob3cgc2hvcnQgYSBwZXJpb2QgaXMgbG9uZyBlbm91Z2g/Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
