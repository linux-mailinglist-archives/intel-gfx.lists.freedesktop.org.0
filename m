Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D744B420
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 10:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5665C6E2BE;
	Wed, 19 Jun 2019 08:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3975F6E2BE
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 08:34:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16949372-1500050 for multiple; Wed, 19 Jun 2019 09:34:43 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190618202139.1481-1-chris@chris-wilson.co.uk>
 <94b19e73-a22b-4042-8196-c24399bf6734@linux.intel.com>
In-Reply-To: <94b19e73-a22b-4042-8196-c24399bf6734@linux.intel.com>
Message-ID: <156093328450.31375.11797196291405596980@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 09:34:44 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Prevent
 preemption
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOSAwNzozMjowNSkKPiAKPiBPbiAxOC8w
Ni8yMDE5IDIxOjIxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBJbiBvcmRlciB0byBwaW4gdGhl
IGVuZ2luZSBhcyBidXN5LCB3ZSBoYXZlIHRvIHByZXZlbnQgdGhlIGtlcm5lbCBmcm9tCj4gPiBl
eGVjdXRpbmcgb3RoZXIgaW5kZXBlbmRlbnQgd29yayBhaGVhZCBvZiBvdXIgcGx1Zywgc28gdGVs
bCB0aGUgc3Bpbm5lcgo+ID4gdG8gbm90IGFsbG93IHByZWVtcHRpb24uCj4gPiAKPiA+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0t
Cj4gPiAgIHRlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMgfCAzICsrLQo+ID4gICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jIGIvdGVzdHMvaTkxNS9nZW1fY3R4X2Vu
Z2luZXMuYwo+ID4gaW5kZXggM2VjYWRlNDE3Li5kNDdjYmRkN2MgMTAwNjQ0Cj4gPiAtLS0gYS90
ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jCj4gPiArKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhf
ZW5naW5lcy5jCj4gPiBAQCAtMjgzLDcgKzI4Myw4IEBAIHN0YXRpYyB2b2lkIGV4ZWN1dGVfb25l
KGludCBpOTE1KQo+ID4gICAKPiA+ICAgICAgICAgICAgICAgICAgICAgICBzcGluID0gaWd0X3Nw
aW5fbmV3KGk5MTUsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAuY3R4ID0gcGFyYW0uY3R4X2lkLAo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgLmVuZ2luZSA9IDApOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgLmVuZ2luZSA9IDAsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAuZmxhZ3MgPSBJR1RfU1BJTl9OT19QUkVFTVBUSU9OKTsKPiA+ICAg
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgaWd0X2RlYnVnKCJUZXN0aW5nIHdpdGggbWFwIG9m
ICVkIGVuZ2luZXNcbiIsIGkgKyAxKTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBtZW1zZXQo
JmVuZ2luZXMuZW5naW5lcywgLTEsIHNpemVvZihlbmdpbmVzLmVuZ2luZXMpKTsKPiA+IAo+IAo+
IFRoZSBuby1vcCBiYXRjaCBwcmVlbXB0cyB0aGUgc3Bpbm5lcj8gSG93IGRvZXMgdGhhdCBhZmZl
Y3QgdGhlIGJ1c3kgCj4gY2hlY2sgb24gdGhlIG5vLW9wIGJhdGNoPwoKV2UgYXJlIGNoZWNraW5n
IHRoZSBzZWNvbmQgYmF0Y2ggaW4gdGhlIHBpcGVsaW5lLCBleHBlY3RpbmcgaXQgdG8gYmUKYmxv
Y2tlZCBieSB0aGUgYWxyZWFkeSBleGVjdXRpbmcgc3Bpbm5lciBvbiB0aGUgZW5naW5lIG9mIGlu
dGVyZXN0LgpUaGVyZSBpcyBubyBkZXBlbmRlbmN5IGJldHdlZW4gdGhlIHR3byBiYXRjaGVzLCBq
dXN0IG9yZGVyIG9mCnN1Ym1pc3Npb24sIGhlbmNlIHRoZSBrZXJuZWwgZW5kcyB1cCBleGVjdXRp
bmcgdGhlIHNlY29uZCBuby1vcCBiYXRjaAphZnRlciB0aGUgZmlyc3QgYmF0Y2gncyB0aW1lc2xp
Y2UgZXhwaXJlZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
