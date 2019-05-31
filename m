Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFD730A7D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 10:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED0248929C;
	Fri, 31 May 2019 08:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6157F8929C;
 Fri, 31 May 2019 08:40:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16744618-1500050 for multiple; Fri, 31 May 2019 09:39:51 +0100
MIME-Version: 1.0
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Petri Latvala <petri.latvala@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190531083338.3029-1-janusz.krzysztofik@linux.intel.com>
References: <20190531083338.3029-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <155929198791.27302.15269823628587927148@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 May 2019 09:39:47 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] lib/i915/gem_mman: Add a
 helper for obtaining mappable aperture version
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDUtMzEgMDk6MzM6MzgpCj4gRnJvbTog
SmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAaW50ZWwuY29tPgo+IAo+IElm
IGEgdGVzdCBjYWxscyBhIGZ1bmN0aW9uIHdoaWNoIGRlcGVuZHMgb24gYXZhaWxhYmlibGl0eSBv
ZiBhCj4gc3VwcG9ydGVkIG1hcHBhYmxlIGFwZXJ0dXJlLCBhbiBlcnJvciBtYXkgYmUgcmVwb3J0
ZWQgYnkgdGhlIGtlcm5lbCBvbgo+IHVuc3VwcG9ydGVkIGhhcmR3YXJlLiAgVGhhdCBtYXkgbmVn
YXRpdmVseSBhZmZlY3QgcmVzdWx0cyByZXBvcnRlZCBieSBhCj4gdGVzdCBmcmFtZXdvcmsgZXZl
biBpZiB0aGF0IHRlc3QgaWdub3JlcyB0aGUgZmFpbHVyZSBhbmQgc3VjY2VlZGVzLgo+IAo+IFRo
aXMgaGVscGVyIHdyYXBzIGFuIElPQ1RMIGNhbGwgd2hpY2ggcmV0dXJucyBhIHZlcnNpb24gbnVt
YmVyIG9mIGEKPiBtYXBwYWJsZSBhcGVydHVyZS4gIEl0IG1heSBiZSB1c2VkIGJ5IHRlc3RzIHdo
aWNoIG5lZWQgdG8gYWRqdXN0IHRoZWlyCj4gc2NvcGUgZGVwZW5kaW5nIG9uIGF2YWlsYWJpbGl0
eSBvZiBzcGVjaWZpYyB2ZXJzaW9uIG9mIG1hcHBhYmxlCj4gYXBlcnR1cmUuCj4gCj4gU2lnbmVk
LW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAaW50ZWwuY29t
Pgo+IENjOiBBbnRvbmlvIEFyZ2Vuemlhbm8gPGFudG9uaW8uYXJnZW56aWFub0BpbnRlbC5jb20+
Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IC0t
LQo+IENoYW5nZWxvZzoKPiB2MiAoaW50ZXJuYWwpIC0+IHYzOgo+IC0gbWFrZSB0aGUgY29kZSBs
ZXNzIG9ic3VjcmUsIG1vcmUgZXhwbGljaXQgKEFudG9uaW8pLAo+IC0gcmV3b3JkIHRoZSBoZWxw
ZXIgZG9jdW1lbnRhdGlvbiBhbmQgY29tbWl0IG1lc3NhZ2UuCj4gCj4gdjEgKGludGVybmFsKSAt
PiB2MiAoaW50ZXJuYWwpOgo+IC0gbWluaW1pemUgZnV0dXJlIHBvdGVudGlhbCBjb25mbGljdHMg
d2l0aCAKPiAgIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8yOTQwNTMv
P3Nlcmllcz01ODU1MSZyZXY9MQo+ICAgKG5vIHByb2dyZXNzIHdpdGggdGhhbiBvbmUgc28gbm90
IHdhaXRpbmcgZm9yIGl0IGFueSBsb25nZXIpOgo+ICAgLSBjb252ZXJ0IHRoZSBoZWxwZXIgdG8g
YSBkcm9wLWluIHJlcGxhY2VtZW50IG9mIHRoZSBvbmUgZnJvbSB0aGUKPiAgICAgYWJvdmUgbWVu
dGlvbmVkIHBhdGNoLCByZXR1cm5pbmcgbWFwcGFibGUgYXBlcnR1cmUgdmVyc2lvbiwgbm90Cj4g
ICAgIG9ubHkgaW5mb3JtYXRpb24gb24gaXRzIGF2YWlsYWJpbGl0eSwKPiAgIC0gZHJvcCBhbnkg
b3RoZXIgd3JhcHBlcnMsCj4gLSBkb2N1bWVudCB0aGUgaGVscGVyLAo+IC0gcmV3b3JkIGNvbW1p
dCBtZXNzYWdlLgo+IAo+ICBsaWIvaTkxNS9nZW1fbW1hbi5jIHwgMjIgKysrKysrKysrKysrKysr
KysrKysrKwo+ICBsaWIvaTkxNS9nZW1fbW1hbi5oIHwgIDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQs
IDIzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvbGliL2k5MTUvZ2VtX21tYW4uYyBi
L2xpYi9pOTE1L2dlbV9tbWFuLmMKPiBpbmRleCAzY2Y5YTZiYi4uM2EzZjNlNWMgMTAwNjQ0Cj4g
LS0tIGEvbGliL2k5MTUvZ2VtX21tYW4uYwo+ICsrKyBiL2xpYi9pOTE1L2dlbV9tbWFuLmMKPiBA
QCAtNDAsNiArNDAsMjggQEAKPiAgI2RlZmluZSBWRyh4KSBkbyB7fSB3aGlsZSAoMCkKPiAgI2Vu
ZGlmCj4gIAo+ICsvKioKPiArICogZ2VtX21tYXBfX2d0dF92ZXJzaW9uOgo+ICsgKiBAZmQ6IG9w
ZW4gaTkxNSBkcm0gZmlsZSBkZXNjcmlwdG9yCj4gKyAqCj4gKyAqIFRoaXMgZnVuY3Rpb25zIHdy
YXBzIHVwIGFuIElPQ1RMIHRvIG9idGFpbiBtYXBwYWJsZSBhcGVydHVyZSB2ZXJzaW9uLgo+ICsg
Kgo+ICsgKiBSZXR1cm5zOiBtYXBwYWJsZSBhcGVydHVyZSB2ZXJzaW9uLCAtMSBvbiBmYWlsdXJl
Lgo+ICsgKi8KPiAraW50IGdlbV9tbWFwX19ndHRfdmVyc2lvbihpbnQgZmQpCj4gK3sKPiArICAg
ICAgIGludCBndHRfdmVyc2lvbiwgcmV0Owo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X2dldHBh
cmFtIGdwID0gewo+ICsgICAgICAgICAgICAgICAucGFyYW0gPSBJOTE1X1BBUkFNX01NQVBfR1RU
X1ZFUlNJT04sCj4gKyAgICAgICAgICAgICAgIC52YWx1ZSA9ICZndHRfdmVyc2lvbiwKPiArICAg
ICAgIH07Cj4gKwo+ICsgICAgICAgcmV0ID0gaW9jdGwoZmQsIERSTV9JT0NUTF9JOTE1X0dFVFBB
UkFNLCAmZ3ApOwo+ICsgICAgICAgaWYgKHJldCA9PSAwKQo+ICsgICAgICAgICAgICAgICByZXQg
PSBndHRfdmVyc2lvbjsKPiArICAgICAgIHJldHVybiByZXQ7CgpNYXliZSB0aGUgYWN0dWFsIGVy
cm9yIHJldHVybmVkIGJ5IHRoZSBrZXJuZWwgYW5kIG5vdCBnbGliYyB3b3VsZCBiZQppbnRlcmVz
dGluZyBpbiB0aGUgZnV0dXJlPwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
