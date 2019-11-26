Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B84A109E2B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 13:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DAC389C69;
	Tue, 26 Nov 2019 12:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEF5989C69;
 Tue, 26 Nov 2019 12:41:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19343738-1500050 for multiple; Tue, 26 Nov 2019 12:41:36 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191126123103.20157-1-janusz.krzysztofik@linux.intel.com>
References: <20191126123103.20157-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <157477209022.15944.18429437370943141750@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 26 Nov 2019 12:41:30 +0000
Subject: Re: [Intel-gfx] [RESUBMIT PATCH v2] tests/prime_vgem: Skip
 basic-read/write subtests if no mappable GGTT
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SnVzdCBzL25vIG1hcHBhYmxlIEdHVFQvbm90IHN1cHBvcnRlZC8KClF1b3RpbmcgSmFudXN6IEty
enlzenRvZmlrICgyMDE5LTExLTI2IDEyOjMxOjAzKQo+IEFzIHdlJ3ZlIGFncmVlZCB0aGF0IHVz
aW5nIEk5MTVfR0VNX1BSRUFEL1BXUklURSBJT0NUTHMgb24gZG1hLWJ1Zgo+IG9iamVjdHMgZG9l
c24ndCBtYWtlIG11Y2ggc2Vuc2UsIHdlIGFyZSBub3QgZ29pbmcgdG8gZXh0ZW5kIHRoZWlyCj4g
aGFuZGxlcnMgaW4gdGhlIGk5MTUgZHJpdmVyIHdpdGggbmV3IHByb2Nlc3NpbmcgcGF0aHMgcmVx
dWlyZWQgZm9yIHRoZW0KPiB0byB3b3JrIGNvcnJlY3RseSB3aXRoIGRtYS1idWYgb2JqZWN0cyBv
biBmdXR1cmUgaGFyZHdhcmUgd2l0aCBubwo+IG1hcHBhYmxlIGFwZXJ0dXJlLiAgV2hlbiBydW5u
aW5nIG9uIHRoYXQga2luZCBvZiBoYXJkd2FyZSwganVzdCBza2lwCj4gc3VidGVzdHMgd2hpY2gg
dXNlIHRob3NlIElPQ1RMcy4KPiAKPiB2MjogRXhhbWluZSBwcmVhZC9wd3JpdGUgQUJJLCBub3Qg
bW1hcCBBQkkgKENocmlzKQo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8
amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiBDYzogRGFuaWVsIFZldHRlciA8
ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgoKSSBsaWtlIHRoaXMuIFdlIGFyZSBub3QgaGVyZSB0byBwcm92ZSBnZW1fcmVhZC9nZW1f
d3JpdGUKdGhlbXNlbHZlcyB3b3JrIChpZiB3ZSBoYXZlbid0IGRvbmUgdGhhdCBhbHJlYWR5LCB3
ZSd2ZSBsb3N0KSwgYnV0CndoZXRoZXIgdGhleSB3b3JrIGluIGNvbmp1bmN0aW9uIHdpdGggdGhl
IGRtYWJ1Zi4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KCkkgc3RpbGwgaGF2ZSBhIGJhZCBmZWVsaW5nIGFib3V0IGFueSBBUEkgY2hhbmdlIG5v
dCBhY2NvbXBhbmllZCBieSBhCnNlcGFyYXRlIHBhcmFtZXRlciB0byBpbmRpY2F0ZSB0aGUgY2hh
bmdlIChqdXN0IGZyb20gdGhlIGRpc2NvdmVyYWJpbGl0eQphc3BlY3Qgb2YgdGhlIEFQSSksIGJ1
dCBhcyBwcm92ZW4sIGFuIGludHJvc3BlY3Rpb24gQVBJIGlzIG5vdCByZXF1aXJlZApoZXJlLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
