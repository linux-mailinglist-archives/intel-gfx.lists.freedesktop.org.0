Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53617B95C1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 18:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B057A6E09A;
	Fri, 20 Sep 2019 16:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3172C6E09A
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 16:35:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18562392-1500050 for multiple; Fri, 20 Sep 2019 17:35:51 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-12-chris@chris-wilson.co.uk>
 <ab3d61fb-19a8-eba0-d61b-6900e4e751f9@linux.intel.com>
In-Reply-To: <ab3d61fb-19a8-eba0-d61b-6900e4e751f9@linux.intel.com>
Message-ID: <156899734942.1196.15176789965520058157@skylake-alporthouse-com>
Date: Fri, 20 Sep 2019 17:35:49 +0100
Subject: Re: [Intel-gfx] [PATCH 12/21] drm/i915: Mark up address spaces that
 may need to allocate
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yMCAxNzoyMjo0MikKPiAKPiBPbiAwMi8w
OS8yMDE5IDA1OjAyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBTaW5jZSB3ZSBjYW5ub3QgYWxs
b2NhdGUgdW5kZXJuZWF0aCB0aGUgdm0tPm11dGV4IChpdCBpcyB1c2VkIGluIHRoZQo+ID4gZGly
ZWN0LXJlY2xhaW0gcGF0aHMpLCB3ZSBuZWVkIHRvIHNoaWZ0IHRoZSBhbGxvY2F0aW9ucyBvZmYg
aW50byBhCj4gPiBtdXRleGxlc3Mgd29ya2VyIHdpdGggZmVuY2UgcmVjdXJzaW9uIHByZXZlbnRp
b24uIFRvIGtub3cgd2hlbiB3ZSBuZWVkCj4gPiB0aGlzIHByb3RlY3Rpb24sIHdlIG1hcmsgdXAg
dGhlIGFkZHJlc3Mgc3BhY2VzIHRoYXQgZG8gYWxsb2NhdGUgYmVmb3JlCj4gPiBpbnNlcnRpb24u
Cj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
IHwgMyArKysKPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggfCAyICsr
Cj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPiBpbmRleCA5MDk1ZjAxNzE2MmUuLjU2ZDI3Y2YwOWEz
ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4gQEAgLTE1MDAs
NiArMTUwMCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuOF9wcGd0dF9jcmVhdGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
Z290byBlcnJfZnJlZV9wZDsKPiA+ICAgICAgIH0KPiA+ICAgCj4gPiArICAgICBwcGd0dC0+dm0u
YmluZF9hbGxvYyA9IEk5MTVfVk1BX0xPQ0FMX0JJTkQ7Cj4gCj4gU28gdGhpcyBpcyByZS11c2lu
ZyBJOTE1X1ZNQV9MT0NBTF9CSU5EIGFzIGEgdHJpY2s/IElzIGl0IGNsZWFyIGhvdyB0aGF0IAo+
IHdvcmtzIGZyb20gdGhlc2UgY2FsbCBzaXRlcz8gU2hvdWxkIGl0IGJlIGNhbGxlZCBiaW5kX2Fs
bG9jKnMqPyAKPiBiaW5kX2FsbG9jYXRlcz8gT3IgYmUgYSBib29sZWFuIHdoaWNoIGlzIGNvbnZl
cnRlZCB0byBhIHRyaWNrIGZsYWcgaW4gCj4gaTkxNV92bWFfYmluZCB3aGVyZSBhIGNvbW1lbnQg
Y2FuIGJlIHB1dCBleHBsYWluaW5nIHRoZSB0cmljaz8KCklzIGl0IGEgdHJpY2s/IFdlIG5lZWQg
dG8gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIHJlcXVlc3RzIGZvciBMT0NBTF9CSU5ELApHTE9CQUxf
QklORCwgTE9DQUxfQklORCB8IEdMT0JBTF9CSU5ELCBmb3IgZGlmZmVyZW50IHR5cGVzIG9mIHZt
LiBUaGVuIEkKaGF2ZSBhIHBsYW4gb24gdXNpbmcgdGhlIHdvcmtlciBmb3IgR0xPQkFMX0JJTkQg
b24gYnN3L2J4dCB0byBkZWZlciB0aGUKc3RvcF9tYWNoaW5lKCkuCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
