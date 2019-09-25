Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393CBBDD05
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 13:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882336EB9E;
	Wed, 25 Sep 2019 11:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 110BE6EB9E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 11:24:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18610739-1500050 for multiple; Wed, 25 Sep 2019 12:24:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-13-chris@chris-wilson.co.uk>
 <c034c53b-9cb6-0e4b-16c2-4f8239fd3f82@linux.intel.com>
 <156941023434.4979.9785714133344007307@skylake-alporthouse-com>
In-Reply-To: <156941023434.4979.9785714133344007307@skylake-alporthouse-com>
Message-ID: <156941064846.4979.4962798584225051716@skylake-alporthouse-com>
Date: Wed, 25 Sep 2019 12:24:08 +0100
Subject: Re: [Intel-gfx] [PATCH 12/27] drm/i915: Move request runtime
 management onto gt
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMjUgMTI6MTc6MTQpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wOS0yNSAxMTo1Nzo1MykKPiA+IAo+ID4gSSBhbSBzdGlsbCBzbGln
aHRseSB1bmVhc3kgYWJvdXQgaGF2aW5nIHJlcXVlc3RzLCB3aGljaCBJIHNlZSBhcyBhIEdFTSAK
PiA+IGNvbmNlcHQsIGJlIHJldGlyZWQgZnJvbSBHVCwgYnV0IG9rYXksIGl0J3Mgbm90IHRoZSBt
b3N0IGltcG9ydGFudCBpc3N1ZSAKPiA+IGF0IHRoZSBtb21lbnQuCj4gCj4gcmVxdWVzdHMgYXJl
IG5vdCBhIEdFTSBjb25jZXB0LCB0aGV5IGJlbG9uZyBpbiBzY2hlZC8gOikKCk92ZXJhbGwgdGhv
dWdoLCB0aGUgY29tcGFydG1lbnRhbGlzYXRpb24gaXMgaW50ZWxfZ3QgYmFzZWQuIE91cgp0aW1l
bGluZXMgYW5kIHRoZWlyIHBvd2VybWFuYWdlbWVudCBpcyBhc3NvY2lhdGVkIHdpdGggdGhlIGd0
LCBzbyB0aGF0J3MKd2hlcmUgaXQgZmVlbHMgbmVjZXNzYXJ5IHRvIHByb3ZpZGUgdGhlIGJhY2tn
cm91bmQgY2xlYW51cC4gSWYgd2UgZHJvcAp0aGUgdGltZWxpbmUtPmd0LCB0aGVuIEkgdGhpbmsg
aXQncyB0aW1lIGZvciBhIG5ldyBob21lPwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
