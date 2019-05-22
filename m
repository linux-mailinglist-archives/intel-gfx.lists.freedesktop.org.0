Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1AA25EF6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 10:05:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF1B897D0;
	Wed, 22 May 2019 08:05:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB05897D0
 for <Intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 08:05:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16636558-1500050 for multiple; Wed, 22 May 2019 09:05:13 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org, Marcin Owsiany <marcin@owsiany.pl>
References: <20190522075450.qtkysqijqgkrgzw5@beczulka>
In-Reply-To: <20190522075450.qtkysqijqgkrgzw5@beczulka>
Message-ID: <155851231212.23981.4860472054088585761@skylake-alporthouse-com>
Date: Wed, 22 May 2019 09:05:12 +0100
Subject: Re: [Intel-gfx] Getting "rcs0: reset request timeout" on 4.19.16
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

UXVvdGluZyBNYXJjaW4gT3dzaWFueSAoMjAxOS0wNS0yMiAwODo1NDo1MCkKPiBIZWxsbywKPiAK
PiBFdmVyeSBjb3VwbGUgb2Ygd2Vla3Mgb3Igc28gbXkgbGFwdG9wIGV4cGVyaWVuY2VzIHNvbWUg
Z3JhcGhpY3MtcmVsYXRlZAo+IGNyYXNoLiBTb21ldGltZXMgaXQncyBtb3JlIGZyZXF1ZW50IC0g
aGFwcGVuZWQgdHdpY2UgeWVzdGVyZGF5Lgo+IAo+IEknbSB3b25kZXJpbmcgd2hldGhlciB0aGlz
IGNvdWxkIGJlIGEgc2lnbiBvZiBhIGhhcmR3YXJlIGZhaWx1cmU/IE9yIGlzIHRoaXMKPiBzb21l
IHNvZnR3YXJlIGxvY2stdXA/ICBQbGVhc2UgZG8gbGV0IG1lIGtub3cgd2hldGhlciBJIGNhbiBk
byBhbnl0aGluZyB0byBoZWxwCj4gZGVidWcgdGhpcy4KCkl0IHN0YXJ0cyBhcyBhIHVzZXJzcGFj
ZSBoYW5nIHRoYXQgdGFrZXMgb3V0IHRoZSBHUFUuIFVwZGF0ZSBtZXNhIHRvCm9uZSBvZiB0aGUg
MTkueCBzdGFibGUgcmVsZWFzZXMuCgo+IEFzIHlvdSBjYW4gc2VlIGZyb20gdGhlIGxvZyBiZWxv
dywgc29tZXRpbWVzIHRoZXJlIGlzIGp1c3QgYSBzaW5nbGUKPiAiUmVzZXR0aW5nIHJjczAgZm9y
IGhhbmcgb24gcmNzMCIgZnJvbSB3aGljaCBpdCByZWNvdmVycywgd2hpbGUgYXQgb3RoZXIKPiB0
aW1lcyBpdCBpcyBmb2xsb3dlZCBieSAicmVzZXQgcmVxdWVzdCB0aW1lb3V0IiwgdG9nZXRoZXIg
d2l0aCBhbiBYCj4gc2VydmVyIGNyYXNoLgoKRmlsZSBhIHJlZ3Jlc3Npb24gcmVwb3J0IGFnYWlu
c3QgZGViaWFuLCBYIHNob3VsZCBub3QgY3Jhc2ggYW5kIGRpZCBub3QKdXNlIHRvIGNyYXNoIG92
ZXIgYSBtZXJlIHRlcm1pbmFsIEdQVSBoYW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
