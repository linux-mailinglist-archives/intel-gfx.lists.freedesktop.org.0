Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C874410A2F1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 18:05:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D716E441;
	Tue, 26 Nov 2019 17:05:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83D96E441
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 17:05:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19347505-1500050 for multiple; Tue, 26 Nov 2019 17:05:14 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191126164712.2802694-1-chris@chris-wilson.co.uk>
 <5fa8398b-75df-6d61-92a2-681b54308fc6@linux.intel.com>
In-Reply-To: <5fa8398b-75df-6d61-92a2-681b54308fc6@linux.intel.com>
Message-ID: <157478790800.18552.17333038666230795992@skylake-alporthouse-com>
Date: Tue, 26 Nov 2019 17:05:08 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftest: If reconfigure_sseu is
 busy, try again
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNiAxNzowMDo1MykKPiAKPiBPbiAyNi8x
MS8yMDE5IDE2OjQ3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBGb2xsb3dpbmcgNThiNGMxYTA3
YWRhICgiZHJtL2k5MTU6IFJlZHVjZSBuZXN0ZWQgcHJlcGFyZV9yZW1vdGVfY29udGV4dCgpCj4g
PiB0byBhIHRyeWxvY2siKSwgd2UgcHVudCB0byB0aGUgY2FsbGVyIGlmIHRoZSBsb2NhbCBpbnRl
bF9jb250ZXh0Cj4gPiBoYXBwZW5zIHRvIGJlIGJ1c3kgYXMgd2UgdHJ5IHRvIHJld3JpdGUgdGhl
IHNzZXUgKGR1ZSB0byByZXRpcmluZyBpbgo+ID4gYW5vdGhlciB0aHJlYWQpLiBBcyB0aGUgaW50
ZXJsdWRlIHNob3VsZCBiZSBzaG9ydCwgc3BpbiB1bnRpbCB0aGUgbG9jawo+ID4gaXMgYXZhaWxh
YmxlLgo+ID4gCj4gPiBUaGUgcmVncmV0IGZvciB1c2luZyBtdXRleF90cnlsb2NrKCkgYW5kIG5v
dCBhbiBhdG9taWMgaW5zZXJ0aW9uIG9mIHRoZQo+ID4gYmFycmllciBpcyBncm93aW5nLi4uCj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4g
PiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
b250ZXh0LmMgfCA1ICsrKystCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKPiA+IGluZGV4IDJlYTQ3OTBmMzcyMS4u
NTcxY2M5OTY1NzdjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCj4gPiBAQCAtMTE5Nyw3ICsxMTk3LDEw
IEBAIF9fc3NldV90ZXN0KGNvbnN0IGNoYXIgKm5hbWUsCj4gPiAgICAgICBpZiAocmV0KQo+ID4g
ICAgICAgICAgICAgICBnb3RvIG91dF9wbTsKPiA+ICAgCj4gPiAtICAgICByZXQgPSBpbnRlbF9j
b250ZXh0X3JlY29uZmlndXJlX3NzZXUoY2UsIHNzZXUpOwo+ID4gKyAgICAgZG8gewo+ID4gKyAg
ICAgICAgICAgICByZXQgPSBpbnRlbF9jb250ZXh0X3JlY29uZmlndXJlX3NzZXUoY2UsIHNzZXUp
Owo+ID4gKyAgICAgICAgICAgICBjb25kX3Jlc2NoZWQoKTsKPiA+ICsgICAgIH0gd2hpbGUgKHJl
dCA9PSAtRUFHQUlOKTsKPiA+ICAgICAgIGlmIChyZXQpCj4gPiAgICAgICAgICAgICAgIGdvdG8g
b3V0X3NwaW47Cj4gPiAgIAo+ID4gCj4gCj4gSG0gSSBsb29rZWQgYXQgdGhlIHNlbGZ0ZXN0cywg
c2F3IGVycm9yIGlzIGNvcnJlY3RseSBwcm9wYWdhdGVkLCBhbmQgCj4gY29uY2x1ZGVkIGl0IHdp
bGwgYmUgZmluZS4gSSBtaXNzZWQgdGhlIHByb2JsZW0gc2VsZnRlc3RzIHdpbGwgbm90IAo+IGFj
dHVhbGx5IHJldHJ5LiBCdXQgd2FpdCwgY2FuIHdlIGV2ZW4gY291bnQgdGhhdCB1c2Vyc3BhY2Ug
d2lsbCBpZiBhbGwgCj4gb2YgYSBzdWRkZW4gY3R4LnNldF9wYXJhbSBzdGFydHMgcmV0dXJuaW5n
IC1FQUdBSU4gc3BvcmFkaWNhbGx5PyBGZWVscyAKPiBsaWtlIHdlIG1heSBuZWVkIHRvIHJldmVy
dC4KCldlIGludm9rZSB0aGUgcHJpbmNpcGxlIG9mIGRybUlvY3RsKCkgY2F0Y2hlcyAtRUFHQUlO
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
