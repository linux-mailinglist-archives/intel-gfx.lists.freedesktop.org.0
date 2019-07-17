Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9469A6C184
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 21:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B217B899DB;
	Wed, 17 Jul 2019 19:34:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 132A5899DB
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 19:34:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17379023-1500050 for multiple; Wed, 17 Jul 2019 20:34:36 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190717180624.20354-4-tvrtko.ursulin@linux.intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
 <20190717180624.20354-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <156339207446.25270.10768069224028061269@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 17 Jul 2019 20:34:34 +0100
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Fix and improve MCR selection
 logic
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxOTowNjoyMSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEEgY291cGxlIGlzc3Vl
cyB3ZXJlIHByZXNlbnQgaW4gdGhpcyBjb2RlOgo+IAo+IDEuCj4gZmxzKCkgdXNhZ2Ugd2FzIGlu
Y29ycmVjdCBjYXVzaW5nIG9mZiBieSBvbmUgaW4gc3Vic2xpY2UgbWFzayBsb29rdXAsCj4gd2hp
Y2ggaW4gb3RoZXIgd29yZHMgbWVhbnMgc3Vic2xpY2UgbWFzayBvZiBhbGwgemVyb2VzIGlzIGFs
d2F5cyB1c2VkCj4gKHN1YnNsaWNlIG1hc2sgb2YgYSBzbGljZSB3aGljaCBpcyBub3QgcHJlc2Vu
dCwgb3IgZXZlbiBvdXQgb2YgYm91bmRzCj4gYXJyYXkgYWNjZXNzKSwgcmVuZGVyaW5nIHRoZSBj
aGVja3MgaW4gd2FfaW5pdF9tY3IgZWl0aGVyIGZ1dGlsZSBvcgo+IHJhbmRvbS4KPiAKPiAyLgo+
IENvbmRpdGlvbiBpbiBXQVJOX09OIHdhcyBub3QgY29ycmVjdC4gSXQgaXMgZG9pbmcgYSBiaXR3
aXNlIGFuZCBvcGVyYXRpb24KPiBiZXR3ZWVuIGEgcG9zaXRpdmUgKHByZXNlbnQgc3Vic2xpY2Vz
KSBhbmQgbmVnYXRpdmUgbWFzayAoZGlzYWJsZWQgTDMKPiBiYW5rcykuCj4gCj4gVGhpcyBtZWFu
cyB0aGF0IHdpdGggY29ycmVjdGVkIGZscygpIHVzYWdlIHRoZSBhc3NlcnQgd291bGQgYWx3YXlz
Cj4gaW5jb3JyZWN0bHkgZmFpbC4KPiAKPiBXZSBjb3VsZCBmaXggdGhpcyBieSBpbnZlcnRpbmcg
dGhlIGZ1c2UgYml0cyBpbiB0aGUgY2hlY2ssIGJ1dCBpbnN0ZWFkIGRvCj4gb25lIGJldHRlciBh
bmQgaW1wcm92ZSB0aGUgY29kZSBzbyBpdCBub3Qgb25seSBhc3NlcnRzLCBidXQgZmluZHMgdGhl
Cj4gZmlyc3QgY29tbW9uIGluZGV4IGJldHdlZW4gdGhlIHR3byBtYXNrcyBhbmQgb25seSB3YXJu
cyBpZiBubyBzdWNoIGluZGV4Cj4gY2FuIGJlIGZvdW5kLgo+IAo+IHYyOgo+ICAqIFNpbXBsaWZ5
IGNoZWNrIGZvciBsb2dpYyBhbmQgcmVkYWJpbGl0eS4KPiAgKiBJbXByb3ZlIGNvbW1lbnRhcnkg
ZXhwbGFpbmluZyB3aGF0IGlzIHJlYWxseSBoYXBwZW5pbmcgaWUuIHdoYXQgdGhlCj4gICAgYXNz
ZXJ0IGlzIHJlYWxseSB0cnlpbmcgdG8gY2hlY2sgYW5kIHdoeS4KPiAKPiB2MzoKPiAgKiBGaW5k
IGZpcnN0IGNvbW1vbiBpbmRleCBpbnN0ZWFkIG9mIGp1c3QgYXNzZXJ0aW5nLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gRml4
ZXM6IGZlODY0Yjc2YzJhYiAoImRybS9pOTE1OiBJbXBsZW1lbnQgV2FQcm9ncmFtTWdzckZvckwz
QmFua1NwZWNpZmljTW1pb1JlYWRzIikKPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+ICMgdjEKCkl0J3Mgc3RpbGwgbWFnaWMgdG8gbWUsIGJ1dCBJ
IGNhbiBhdHRlc3QgdGhhdCBpdCBkb2VzIHdoYXQgeW91IHNheSwgYW5kCnNob3VsZCBiZSBubyB3
b3JzZSB0aGFuIGJlZm9yZSA6KQpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
