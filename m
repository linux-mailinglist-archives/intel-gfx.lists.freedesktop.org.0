Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D81E521FEA
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 23:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD81A89935;
	Fri, 17 May 2019 21:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FE8889935
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 21:52:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16594464-1500050 for multiple; Fri, 17 May 2019 22:52:38 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190517214028.14388-1-michal.wajdeczko@intel.com>
References: <20190517214028.14388-1-michal.wajdeczko@intel.com>
Message-ID: <155812995700.4652.2229049868155151039@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 22:52:37 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Don't try to check HuC status
 if it's not loaded
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTE3IDIyOjQwOjI4KQo+IElmIHdlIG5l
dmVyIGF0dGVtcHRlZCB0byBsb2FkIEh1QyBmaXJtd2FyZSwgb3Igd2UgYWxyZWFkeSB3ZWRnZWQK
PiBvciByZXNldCBHdUMvSHVDLCB0aGVuIHRoZXJlIGlzIG5vIHJlYXNvbiB0byB3YWtlIHVwIHRo
ZSBkZXZpY2UKPiB0byBjaGVjayBvbmUgYml0IGluIHRoZSByZWdpc3RlciB0aGF0IHdpbGwgYmUg
Zm9yIHN1cmUgY2xlYXJlZC4KPiAKPiBTdWdnZXN0ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1p
Y2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogVG9ueSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jIHwgMyArKysKPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfaHVjLmggfCA1ICsrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1
Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmMKPiBpbmRleCAxZmYxZmIwMTVl
NTguLjlkOTEwODllMmNkMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9odWMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Yy5jCj4gQEAgLTE2
Myw2ICsxNjMsOSBAQCBpbnQgaW50ZWxfaHVjX2NoZWNrX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfaHVj
ICpodWMpCj4gICAgICAgICBpZiAoIUhBU19IVUMoZGV2X3ByaXYpKQo+ICAgICAgICAgICAgICAg
ICByZXR1cm4gLUVOT0RFVjsKPiAgCj4gKyAgICAgICBpZiAoIWludGVsX2h1Y19pc19sb2FkZWQo
aHVjKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIDA7CgpKdXN0IHRvIHRocm93IG91dCBhbiBp
ZGVhLCAtRU5YSU8/CgpBIHN1YnRsZSBjaGFuZ2UgaW4gQUJJIHRoYXQgc2hvdWxkIGdvIHVubm90
aWNlZCBieSB0aGUgbWVkaWEgZHJpdmVyLCBidXQKaGVscHMgZGlmZmVyZW50aWF0ZSBjYXVzZSB3
aXRob3V0IGhhdmluZyB0byBkaWcgZGVlcGVyLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
