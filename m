Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA604CECF5
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 21:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86D5089F89;
	Mon,  7 Oct 2019 19:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E49089F61;
 Mon,  7 Oct 2019 19:45:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18756500-1500050 for multiple; Mon, 07 Oct 2019 20:45:29 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <d5687d58-f646-eb9a-5728-3ba3408c2789@linux.intel.com>
References: <20191007082756.5963-1-chris@chris-wilson.co.uk>
 <d5687d58-f646-eb9a-5728-3ba3408c2789@linux.intel.com>
Message-ID: <157047752759.5063.11453732519770956061@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 07 Oct 2019 20:45:27 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib/i915: Bump conservative
 threshold for ring size
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0wNyAxNzo1NjoyMCkKPiAKPiBPbiAwNy8x
MC8yMDE5IDA5OjI3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBhcmUgc3RpbGwgaGl0dGlu
ZyB0aGUgb2NjYXNpb25hbCBzdGFsbCB1cG9uIHN1Ym1pc3Npb24sIHNvIGJlIGV4dHJhCj4gPiBj
YXV0aW9uIGFuZCBsZWF2ZSBvbmUgbW9yZSBzcGFyZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICAgbGli
L2k5MTUvZ2VtX3JpbmcuYyB8IDQgKystLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvbGliL2k5MTUvZ2Vt
X3JpbmcuYyBiL2xpYi9pOTE1L2dlbV9yaW5nLmMKPiA+IGluZGV4IDI3MjI2NDY1OS4uOWYwOTll
ZGZmIDEwMDY0NAo+ID4gLS0tIGEvbGliL2k5MTUvZ2VtX3JpbmcuYwo+ID4gKysrIGIvbGliL2k5
MTUvZ2VtX3JpbmcuYwo+ID4gQEAgLTEwNCw3ICsxMDQsNyBAQCBfX2dlbV9tZWFzdXJlX3Jpbmdf
aW5mbGlnaHQoaW50IGZkLCB1bnNpZ25lZCBpbnQgZW5naW5lLCBlbnVtIG1lYXN1cmVfcmluZ19m
bGFncwo+ID4gICAgICAgfSB3aGlsZSAoMSk7Cj4gPiAgIAo+ID4gICAgICAgaWd0X2Fzc2VydF9l
cShfX2V4ZWNidWYoZmQsICZleGVjYnVmKSwgLUVJTlRSKTsKPiA+IC0gICAgIGlndF9hc3NlcnQo
Y291bnQgPiAxKTsKPiA+ICsgICAgIGlndF9hc3NlcnQoY291bnQgPiAyKTsKPiA+ICAgCj4gPiAg
ICAgICBtZW1zZXQoJml0diwgMCwgc2l6ZW9mKGl0dikpOwo+ID4gICAgICAgc2V0aXRpbWVyKElU
SU1FUl9SRUFMLCAmaXR2LCBOVUxMKTsKPiA+IEBAIC0xMjAsNyArMTIwLDcgQEAgX19nZW1fbWVh
c3VyZV9yaW5nX2luZmxpZ2h0KGludCBmZCwgdW5zaWduZWQgaW50IGVuZ2luZSwgZW51bSBtZWFz
dXJlX3JpbmdfZmxhZ3MKPiA+ICAgICAgIGdlbV9xdWllc2NlbnRfZ3B1KGZkKTsKPiA+ICAgCj4g
PiAgICAgICAvKiBCZSBjb25zZXJ2YXRpdmUgaW4gY2FzZSB3ZSBtdXN0IHdyYXAgbGF0ZXIgKi8K
PiA+IC0gICAgIHJldHVybiBjb3VudCAtIDE7Cj4gPiArICAgICByZXR1cm4gY291bnQgLSAyOwo+
ID4gICB9Cj4gPiAgIAo+ID4gICAvKioKPiA+IAo+IAo+IFdpbGwgb25lIG1ha2UgYSBkaWZmZXJl
bmNlPwoKSSdtIHdpbGxpbmcgdG8gZmluZCBvdXQhCgpBbGwgSSBhbSBnb2luZyBvbiBpcwoKcmNz
MAoqKiogV0VER0VEICoqKgoJQXdha2U/IDY2CglIYW5nY2hlY2s6IDExOTU5IG1zIGFnbwoJUmVz
ZXQgY291bnQ6IDAgKGdsb2JhbCA4KQoJUmVxdWVzdHM6CglNTUlPIGJhc2U6ICAweDAwMDAyMDAw
CglDQ0lEOiAweDAwMDAwMDAwCglSSU5HX1NUQVJUOiAweDAwMDAwMDAwCglSSU5HX0hFQUQ6ICAw
eDAwMDAwMDAwCglSSU5HX1RBSUw6ICAweDAwMDAwMDAwCglSSU5HX0NUTDogICAweDAwMDAwMDAw
CglSSU5HX01PREU6ICAweDAwMDAwMjAwIFtpZGxlXQoJUklOR19JTVI6IGZmZmZmZmZmCglBQ1RI
RDogIDB4MDAwMDAwMDBfMDAwMDAwMDAKCUJCQUREUjogMHgwMDAwMDAwMF8wMDAwMDAwMAoJRE1B
X0ZBRERSOiAweDAwMDAwMDAwXzAwMDAwMDAwCglJUEVJUjogMHgwMDAwMDAwMAoJSVBFSFI6IDB4
MDAwMDAwMDAKCQlFICAzOjEzOWNkISAgQCAxMjkxNG1zOiBnZW1fZWlvWzEzNDVdCgkJRSAgMzox
MzljZSEgIEAgMTI5MTRtczogZ2VtX2Vpb1sxMzQ1XQoJCUUgIDM6MTM5Y2YhICBAIDEyOTE0bXM6
IGdlbV9laW9bMTM0NV0KCQlFICAzOjEzOWQwISAgQCAxMjkxNG1zOiBnZW1fZWlvWzEzNDVdCgkJ
RSAgMzoxMzlkMSEgIEAgMTI5MTRtczogZ2VtX2Vpb1sxMzQ1XQoJCUUgIDM6MTM5ZDIhICBAIDEy
OTEzbXM6IGdlbV9laW9bMTM0NV0KCQlFICAzOjEzOWQzISAgQCAxMjkxM21zOiBnZW1fZWlvWzEz
NDVdCgkJLi4uc2tpcHBpbmcgMjUgZXhlY3V0aW5nIHJlcXVlc3RzLi4uCgkJRSAgMzoxMzllZCEg
IEAgMG1zOiBnZW1fZWlvWzEzNDVdCgp3aGljaCB0ZWxscyBtZSBpdCB3YXMgYmxvY2tlZCBpbiBz
dWJtaXNzaW9uIHVudGlsIGhhbmdjaGVjayBraWNrZWQgaW4KYW5kIGRlY2xhcmVkIHRoZSBzeXN0
ZW0gd2VkZ2VkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
