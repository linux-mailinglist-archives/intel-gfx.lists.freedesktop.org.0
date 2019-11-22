Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C32361072E3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 14:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 213296E2D5;
	Fri, 22 Nov 2019 13:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B3956E2D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 13:14:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19301223-1500050 for multiple; Fri, 22 Nov 2019 13:14:40 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191122112152.660743-1-chris@chris-wilson.co.uk>
 <20191122112152.660743-2-chris@chris-wilson.co.uk>
 <70521c9b-0118-4d56-22fd-3fe8bea5424c@linux.intel.com>
 <157442814042.2524.14421308033601241707@skylake-alporthouse-com>
 <157442843457.2524.369151875676223850@skylake-alporthouse-com>
In-Reply-To: <157442843457.2524.369151875676223850@skylake-alporthouse-com>
Message-ID: <157442847736.2524.10176174733734608411@skylake-alporthouse-com>
Date: Fri, 22 Nov 2019 13:14:37 +0000
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/selftests: Flush the active
 callbacks
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjIgMTM6MTM6NTQpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMTEtMjIgMTM6MDk6MDApCj4gPiBXZSBjb21wbGV0ZSB0aGUgc3luYyBi
ZWZvcmUgdGhlIGludGVycnVwdCBoYW5kbGVyJ3MgaXJxIHdvcmsgaGFzCj4gPiBmaW5pc2hlZCBl
eGVjdXRpbmcgdGhlIGNhbGxiYWNrIHRvIG1hcmsgdGhlIGJhcnJpZXIgYXMgY29tcGxldGVkLgo+
ID4gU28gd2hlbiB3ZSBsb29rIGF0IHdoZXRoZXIgdGhlIGVuZ2luZSBpcyBwYXJrZWQgb3Igbm90
LCB3ZSBzZWUgdGhlIHN0YXRlCj4gPiBiZWZvcmUgdGhlIHJlcXVlc3QgaGFzIGZpbmlzaGVkIHBy
b2Nlc3NpbmcgYW5kIGZpbmQgaXQgc3RpbGwgYWN0aXZlLgo+IAo+IE5vdGUgdG8gc2VsZiwgaXQg
ZG9lcyBub3QgYmVsb25nIGluc2lkZSBpOTE1X3JlcXVlc3RfcmV0aXJlKCkgYXMgd2UKPiB0YWtl
IGEgcmVmZXJlbmNlIHRvIHRoZSByZXF1ZXN0IGluIHRoZSBicmVhZGNydW1iIGhhbmRsZXIuIEkg
aGF2ZSBhc2tlZAo+IG15c2VsZiB0aGF0IG1vcmUgdGhhbiBvbmNlIGFuZCBJIGtlZXAgZm9yZ2V0
dGluZyB0aGUgYW5zd2VyLgoKUGx1cyB0aGVyZSdzIHRoYXQgd2hvbGUgc2VyaWFsaXNhdGlvbiBk
YW5jZSB3ZSBkbyB3aXRoIHRoZSBpcnEgaGFuZGxlcgp0byBtYWtlIHN1cmUgd2UncmUgb24gdGhl
IHJpZ2h0IHNpZGUgb2YgdGhlIHJlZmVyZW5jZSBiYXJyaWVyLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
