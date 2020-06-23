Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A97A2057B7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 18:46:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D476EA09;
	Tue, 23 Jun 2020 16:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D6BA6EA09
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 16:46:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21592722-1500050 for multiple; Tue, 23 Jun 2020 17:46:38 +0100
MIME-Version: 1.0
In-Reply-To: <84641356-2c26-6208-e165-3cb6a143ca2c@shipmail.org>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <1712fc5b-9b1e-0632-13c0-e0bc2c1d889d@shipmail.org>
 <e05ef872-8659-2a11-5c89-c42cf080905b@shipmail.org>
 <159292086189.10607.10450244252436195167@build.alporthouse.com>
 <3ea271d6-3101-62e0-8fb6-d433ba78ff17@shipmail.org>
 <159292905802.3967.14570193627723429860@build.alporthouse.com>
 <84641356-2c26-6208-e165-3cb6a143ca2c@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Message-ID: <159293079303.3967.6837309052965660392@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 23 Jun 2020 17:46:33 +0100
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA2LTIzIDE3OjI5OjQ2KQo+
IAo+IE9uIDYvMjMvMjAgNjoxNyBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBU
aG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA2LTIzIDE2OjA5OjA4KQo+ID4+IFlvdSBj
YW4ndCB0YWtlIHRoZSBkbWFfcmVzdl9sb2NrIGluc2lkZSBhIGZlbmNlIGNyaXRpY2FsIHNlY3Rp
b24uCj4gPiBJIG11Y2ggcHJlZmVyIHRoZSBhbHRlcm5hdGl2ZSBpbnRlcnByZXRhdGlvbiwgeW91
IGNhbid0IHdhaXQgaW5zaWRlIGEKPiA+IGRtYV9yZXN2X2xvY2suCj4gPiAtQ2hyaXMKPiAKPiBJ
IHJlc3BlY3QgeW91ciBwb2ludCBvZiB2aWV3LCBhdGhvdWdoIEkgbmVlZCB0byB0aGluayB3ZSBu
ZWVkIHRvIGZvY3VzIAo+IG9uIHdoYXQgd2UgaGF2ZSB0byBkbyBpbiB0aGUgaTkxNSBkcml2ZXIu
CgpXaGlsZSBhaW1pbmcgZm9yIHNtYWxsIHN0ZXBzLCBlYWNoIGltcHJvdmluZyB1cG9uIHRoZSBs
YXN0LgoKQXQgdGhlIGVuZCBvZiB0aGUgZGF5LCB3aGV0aGVyIGl0J3MgYW4gd3dfbXV0ZXggZXhj
bHVzaXZlIGxvY2sgb3IgYQpmZW5jZSBzaGFyZWQgbG9jaywgaXQncyBhbGwgc3RlcHMgaW4gdGhl
IHBpcGVsaW5lLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
