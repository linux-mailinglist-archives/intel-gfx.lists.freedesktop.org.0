Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 073437CCAD
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 21:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCA7B6E2EF;
	Wed, 31 Jul 2019 19:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A64156E2EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 19:22:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17767373-1500050 for multiple; Wed, 31 Jul 2019 20:22:12 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190731174833.22080-4-michal.wajdeczko@intel.com>
References: <20190731174833.22080-1-michal.wajdeczko@intel.com>
 <20190731174833.22080-4-michal.wajdeczko@intel.com>
Message-ID: <156460093108.15787.14007775314704799666@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 20:22:11 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/wopcm: Don't fail on WOPCM
 partitioning failure
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTMxIDE4OjQ4OjMzKQo+IFdlIGRvbid0
IGhhdmUgdG8gaW1tZWRpYXRlbHkgZmFpbCBvbiBXT1BDTSBwYXJ0aXRpb25pbmcsIHdlIGNhbiB3
YWl0Cj4gdW50aWwgd2Ugd2lsbCBzdGFydCBwcm9ncmFtbWluZyBXT1BDTSByZWdpc3RlcnMuIFRo
aXMgc2hvdWxkIGdpdmUgdXMKPiBtb3JlIG9wdGlvbnMgaWYgd2UgZGVjaWRlIHRvIHJlc3RvcmUg
ZmFsbGJhY2sgaW4gY2FzZSBvZiBHdUMgZmFpbHVyZXMuCj4gCj4gdjI6IHJlYmFzZWQKPiAKPiBT
aWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNv
bT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpG
YWlyIHJhdGlvbmFsZSwKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
