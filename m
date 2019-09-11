Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4780B0185
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 18:22:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B534C6EB4F;
	Wed, 11 Sep 2019 16:22:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CD966EB4E
 for <Intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 16:22:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18454225-1500050 for multiple; Wed, 11 Sep 2019 17:22:36 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190911160730.22687-1-tvrtko.ursulin@linux.intel.com>
References: <20190911160730.22687-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156821895518.4926.18011348413414116690@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Sep 2019 17:22:35 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Skip busyness sampling when
 and where not needed
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xMSAxNzowNzozMCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFNpbmNlIGQwYWE2OTRi
OTIzOSAoImRybS9pOTE1L3BtdTogQWx3YXlzIHNhbXBsZSBhbiBhY3RpdmUgcmluZ2J1ZmZlciIp
Cj4gdGhlIGNvc3Qgb2Ygc2FtcGxpbmcgdGhlIGVuZ2luZSBzdGF0ZSBvbiBleGVjbGlzdHMgcGxh
dGZvcm1zIGJlY2FtZSBhCj4gbGl0dGxlIGJpdCBoaWdoZXIgd2hlbiBib3RoIGVuZ2luZSBidXN5
bmVzcyBhbmQgb25lIG9mIHRoZSB3YWl0IHN0YXRlcyBhcmUKPiBiZWluZyBtb25pdG9yZWQuIChQ
cmV2aW91c2x5IHRoZSBidXN5bmVzcyBzYW1wbGluZyBvbiBsZWdhY3kgcGxhdGZvcm1zIHdhcwo+
IGRvbmUgdmlhIHNlcW5vIGNvbXBhcmlzb24gc28gdGhlcmUgd2FzIG5vIGNvc3Qgb2YgbW1pbyBy
ZWFkLikKPiAKPiBXZSBjYW4gYXZvaWQgdGhhdCBieSBza2lwcGluZyBidXN5bmVzcyBzYW1wbGlu
ZyB3aGVuIGVuZ2luZSBzdXBwb3J0cwo+IHNvZnR3YXJlIGJ1c3kgc3RhdHMgYW5kIHNvIGF2b2lk
IHRoZSBjb3N0IG9mIHBvdGVudGlhbCBtbWlvIHJlYWQgYW5kCj4gc2FtcGxlIGFjY3VtdWxhdGlv
bi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyB8IDQgKysrKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcG11LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gaW5k
ZXggOGUyNTFlNzE5MzkwLi42MjNhZDMyMzAzYTEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11
LmMKPiBAQCAtMTk0LDYgKzE5NCwxMCBAQCBlbmdpbmVzX3NhbXBsZShzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0LCB1bnNpZ25lZCBpbnQgcGVyaW9kX25zKQo+ICAgICAgICAgICAgICAgICBpZiAodmFsICYg
UklOR19XQUlUX1NFTUFQSE9SRSkKPiAgICAgICAgICAgICAgICAgICAgICAgICBhZGRfc2FtcGxl
KCZwbXUtPnNhbXBsZVtJOTE1X1NBTVBMRV9TRU1BXSwgcGVyaW9kX25zKTsKPiAgCj4gKyAgICAg
ICAgICAgICAgIC8qIE5vIG5lZWQgdG8gc2FtcGxlIHdoZW4gYnVzeSBzdGF0cyBhcmUgc3VwcG9y
dGVkLiAqLwo+ICsgICAgICAgICAgICAgICBpZiAoaW50ZWxfZW5naW5lX3N1cHBvcnRzX3N0YXRz
KGVuZ2luZSkpCj4gKyAgICAgICAgICAgICAgICAgICAgICAgZ290byBza2lwOwo+ICsKClJldmll
d2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkkgd2FzIHdv
cnJpZWQgd2Ugd2VyZSBkb3VibGUgYWNjb3VudGluZywgYnV0IGxhdGVyIG9uIHdlCmhhdmUKCmlm
IChpbnRlbF9lbmdpbmVfc3VwcG9ydHNfc3RhdHMoKSkKCXZhbCA9IGt0aW1lX3RvX25zKGludGVs
X2VuZ2luZV9nZXRfYnVzeV90aW1lKCkpOwplbHNlCgl2YWwgPSBlbmdpbmUtPnBtdS5zYW1wbGVb
c2FtcGxlXS5jdXI7CgpzbyBpbmRlZWQsIHRoaXMgaXMganVzdCB3YXN0ZWQgZWZmb3J0LgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
