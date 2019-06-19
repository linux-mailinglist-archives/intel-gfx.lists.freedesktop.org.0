Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2F54BDEB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 18:20:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 575FD88089;
	Wed, 19 Jun 2019 16:20:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F8D88089
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 16:20:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16955845-1500050 for multiple; Wed, 19 Jun 2019 17:20:37 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
 <20190619132459.25351-4-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190619132459.25351-4-tvrtko.ursulin@linux.intel.com>
Message-ID: <156096123851.21217.8694292920489744044@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 17:20:38 +0100
Subject: Re: [Intel-gfx] [PATCH 03/33] drm/i915: Move intel_gt
 initialization to a separate file
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOSAxNDoyNDoyOSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEFzIGl0IHdpbGwgZ3Jv
dyBpbiBhIGZvbGxvd2luZyBwYXRjaCBtYWtlIGEgbmV3IGhvbWUgZm9yIGl0Lgo+IAo+IHYyOgo+
ICAqIENvbnZlcnQgbW9ja19nZW1fZGV2aWNlIGFzIHdlbGwuIChDaHJpcykKPiAKPiB2MzoKPiAg
KiBSZW5hbWUgdG8gaW50ZWxfZ3RfaW5pdF9lYXJseSBhbmQgbW92ZSBjYWxsIHNpdGUgdG8gaTkx
NV9kcnYuYy4gKENocmlzKQo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmln
by52aXZpQGludGVsLmNvbT4gIyB2Mgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgICAgfCAgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0LmMgICAgICAgICAgICAgICB8IDE1ICsrKysrKysrKysrKysrKwo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oICAgICAgICAgICAgICAgfCAxNCArKysrKysrKysr
KysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgICAg
fCAgMyArKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAg
ICAgIHwgIDQgLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1f
ZGV2aWNlLmMgfCAgNiArKy0tLS0KPiAgNiBmaWxlcyBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3QuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3QuaAo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gaW5kZXggOTEzNTVjMmVh
OGE1Li4xOWY4YjY3NDU3NzIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+IEBAIC03NCw2ICs3
NCw3IEBAIGd0LXkgKz0gXAo+ICAgICAgICAgZ3QvaW50ZWxfY29udGV4dC5vIFwKPiAgICAgICAg
IGd0L2ludGVsX2VuZ2luZV9jcy5vIFwKPiAgICAgICAgIGd0L2ludGVsX2VuZ2luZV9wbS5vIFwK
PiArICAgICAgIGd0L2ludGVsX2d0Lm8gXAo+ICAgICAgICAgZ3QvaW50ZWxfZ3RfcG0ubyBcCj4g
ICAgICAgICBndC9pbnRlbF9oYW5nY2hlY2subyBcCj4gICAgICAgICBndC9pbnRlbF9scmMubyBc
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwMDAuLjI5YTBmMGEzMjU0OQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCj4gQEAgLTAsMCArMSwxNSBAQAo+ICsv
Kgo+ICsgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCj4gKyAqCj4gKyAqIENvcHlyaWdo
dCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgImludGVs
X2d0LmgiCj4gKwo+ICt2b2lkIGludGVsX2d0X2luaXRfZWFybHkoc3RydWN0IGludGVsX2d0ICpn
dCkKPiArewo+ICsgICAgICAgSU5JVF9MSVNUX0hFQUQoJmd0LT5hY3RpdmVfcmluZ3MpOwo+ICsg
ICAgICAgSU5JVF9MSVNUX0hFQUQoJmd0LT5jbG9zZWRfdm1hKTsKPiArCj4gKyAgICAgICBzcGlu
X2xvY2tfaW5pdCgmZ3QtPmNsb3NlZF9sb2NrKTsKPiArfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3QuaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5kMTUz
ZTdmYjRjMDgKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3QuaAo+IEBAIC0wLDAgKzEsMTQgQEAKPiArLyoKPiArICogU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IE1JVAo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3Jh
dGlvbgo+ICsgKi8KPiArCj4gKyNpZm5kZWYgX19JTlRFTF9HVF9fCj4gKyNkZWZpbmUgX19JTlRF
TF9HVF9fCj4gKwo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfdHlwZXMuaCIKCkluc2lkZSBndC8g
d2UgZG9uJ3QgbmVlZCB0byB1c2UgdGhlIGd0LyBwcmVmaXggZm9yIGluY2x1ZGVzLgoKUmV2aWV3
ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
