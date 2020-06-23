Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57500204EB9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 12:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E646E1D2;
	Tue, 23 Jun 2020 10:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 785156E1D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 10:03:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21587136-1500050 for multiple; Tue, 23 Jun 2020 11:03:37 +0100
MIME-Version: 1.0
In-Reply-To: <2c65a714-cf5a-fae6-5342-b514351d03a5@shipmail.org>
References: <20200622095921.15530-1-chris@chris-wilson.co.uk>
 <20200622095921.15530-7-chris@chris-wilson.co.uk>
 <2c65a714-cf5a-fae6-5342-b514351d03a5@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Message-ID: <159290661156.6856.12185315246799210214@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 23 Jun 2020 11:03:31 +0100
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/gem: Acquire all vma/objects
 under reservation_ww_class
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA2LTIzIDEwOjMzOjIwKQo+
IEhpLCBDaHJpcyEKPiAKPiBPbiA2LzIyLzIwIDExOjU5IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6
Cj4gPiBJbiBvcmRlciB0byBhY3R1YWxseSBoYW5kbGUgZXZpY3Rpb24gYW5kIHdoYXQgbm90LCB3
ZSBuZWVkIHRvIHByb2Nlc3MKPiA+IGFsbCB0aGUgb2JqZWN0cyB0b2dldGhlciB1bmRlciBhIGNv
bW1vbiBsb2NrLCByZXNlcnZhdGlvbl93d19jbGFzcy4gQXMKPiA+IHN1Y2gsIGRvIGEgbWVtb3J5
IHJlc2VydmF0aW9uIHBhc3MgYWZ0ZXIgbG9va2luZyB1cCB0aGUgb2JqZWN0L3ZtYSwKPiA+IHdo
aWNoIHRoZW4gZmVlZHMgaW50byB0aGUgcmVzdCBvZiBleGVjYnVmIFtyZWxvY2F0aW9uLCBjbWRw
YXJzaW5nLAo+ID4gZmx1c2hpbmcgYW5kIG9mYyBleGVjdXRpb25dLgo+ID4KPiA+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4g
PiAgIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDkxICsr
KysrKysrKysrKysrLS0tLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDcwIGluc2VydGlvbnMoKyks
IDIxIGRlbGV0aW9ucygtKQo+ID4KPiBXaGljaCB0cmVlIGlzIHRoaXMgYWdhaW5zdD8gVGhlIHNl
cmllcyBkb2Vzbid0IGFwcGx5IGNsZWFubHkgYWdhaW5zdCAKPiBkcm0tdGlwPwoKSXQncyBjb250
aW51aW5nIG9uIGZyb20gdGhlIHNjaGVkdWxlciBwYXRjaGVzLCB0aGUgYnVnIGZpeGVzIGFuZCB0
aGUKaXJpcy1kZWZlcnJlZC1mZW5jZSB3b3JrLiBJIHRob3VnaHQgdGhyb3dpbmcgYWxsIG9mIHRo
b3NlIG9sZCBwYXRjaGVzCmludG8gdGhlIHBpbGUgd291bGQgaGF2ZSBiZWVuIGRpc3RyYWN0aW5n
LgoKPiAuLi4KPiAKPiA+ICtzdGF0aWMgaW50IGViX3Jlc2VydmVfbW0oc3RydWN0IGk5MTVfZXhl
Y2J1ZmZlciAqZWIpCj4gPiArewo+ID4gKyAgICAgY29uc3QgdTY0IGlkeCA9IGViLT5jb250ZXh0
LT50aW1lbGluZS0+ZmVuY2VfY29udGV4dDsKPiA+ICsgICAgIHN0cnVjdCB3d19hY3F1aXJlX2N0
eCBhY3F1aXJlOwo+ID4gKyAgICAgc3RydWN0IGViX3ZtYSAqZXY7Cj4gPiArICAgICBpbnQgZXJy
Owo+ID4gKwo+ID4gKyAgICAgZWItPm1tX2ZlbmNlID0gX19kbWFfZmVuY2VfY3JlYXRlX3Byb3h5
KDAsIDApOwo+ID4gKyAgICAgaWYgKCFlYi0+bW1fZmVuY2UpCj4gPiArICAgICAgICAgICAgIHJl
dHVybiAtRU5PTUVNOwo+IAo+IFdoZXJlIGFyZSB0aGUgcHJveHkgZmVuY2UgZnVuY3Rpb25zIGRl
ZmluZWQ/CgpJbiBkbWEtZmVuY2UtcHJveHkuYyA7KQotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
