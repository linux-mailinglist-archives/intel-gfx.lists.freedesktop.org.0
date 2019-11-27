Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BF810B0D1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 15:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40256E593;
	Wed, 27 Nov 2019 14:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4BC089954
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 14:04:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19360248-1500050 for multiple; Wed, 27 Nov 2019 14:04:19 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191127111742.3271036-1-chris@chris-wilson.co.uk>
 <b834e9b3-9654-12bd-09ef-cf7d13101a0f@linux.intel.com>
In-Reply-To: <b834e9b3-9654-12bd-09ef-cf7d13101a0f@linux.intel.com>
Message-ID: <157486345282.18552.10939932504954999490@skylake-alporthouse-com>
Date: Wed, 27 Nov 2019 14:04:12 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Copy across scheduler behaviour
 flags across submit fences
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNyAxMzo0NjoxNCkKPiAKPiBPbiAyNy8x
MS8yMDE5IDExOjE3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSB3YW50IHRoZSBib25kZWQg
cmVxdWVzdCB0byBoYXZlIHRoZSBzYW1lIHNjaGVkdWxlciBwcm9wZXJ0aWVzIGFzIGl0cwo+ID4g
bWFzdGVyIHNvIHRoYXQgaXQgaXMgcGxhY2VkIGF0IHRoZSBzYW1lIGRlcHRoIGluIHRoZSBxdWV1
ZS4gRm9yIGV4YW1wbGUsCj4gPiBjb25zaWRlciB3ZSBoYXZlIHJlcXVlc3RzIEEsIEIgYW5kIEIn
LCB3aGVyZSBCICYgQicgYXJlIGEgYm9uZGVkIHBhaXIgdG8KPiA+IHJ1biBpbiBwYXJhbGxlbCBv
biB0d28gZW5naW5lcy4KPiA+IAo+ID4gICAgICAgQSAtPiBCCj4gPiAgICAgICAgICAgICAgICAg
ICAgXC0gQicKPiA+IAo+ID4gQiB3aWxsIHJ1biBhZnRlciBBIGFuZCBzbyBtYXkgYmUgc2NoZWR1
bGVkIG9uIGFuIGlkbGUgZW5naW5lIGFuZCB3YWl0IG9uCj4gPiBBIHVzaW5nIGEgc2VtYXBob3Jl
LiBCJyBzZWVzIEIgYmVpbmcgZXhlY3V0ZWQgYW5kIHNvIGVudGVycyB0aGUgcXVldWUgb24KPiA+
IHRoZSBzYW1lIGVuZ2luZSBhcyBBLiBBcyBCJyBkaWQgbm90IGluaGVyaXQgdGhlIHNlbWFwaG9y
ZS1jaGFpbiBmcm9tIEIsCj4gPiBpdCBtYXkgaGF2ZSBoaWdoZXIgcHJlY2VkZW5jZSB0aGFuIEEg
YW5kIHNvIHByZWVtcHRzIGV4ZWN1dGlvbi4gSG93ZXZlciwKPiA+IEInIHRoZW4gc2l0cyBvbiBh
IHNlbWFwaG9yZSB3YWl0aW5nIGZvciBCLCB3aG8gaXMgd2FpdGluZyBmb3IgQSwgd2hvIGlzCj4g
PiBibG9ja2VkIGJ5IEIuCj4gPiAKPiA+IEVyZ28gQicgbmVlZHMgdG8gaW5oZXJpdCB0aGUgc2No
ZWR1bGVyIHByb3BlcnRpZXMgZnJvbSBCIChpLmUuIHRoZQo+ID4gc2VtYXBob3JlIGNoYWluKSBz
byB0aGF0IGl0IGlzIHNjaGVkdWxlZCB3aXRoIHRoZSBzYW1lIHByaW9yaXR5IGFzIEIgYW5kCj4g
PiB3aWxsIG5vdCBiZSBleGVjdXRlZCBhaGVhZCBvZiBCcyBkZXBlbmRlbmNpZXMuCj4gPiAKPiA+
IEZ1cnRoZXJtb3JlLCB0byBwcmV2ZW50IHRoZSBwcmlvcml0aWVzIGNoYW5naW5nIHZpYSB0aGUg
ZXhwb3NlIGZlbmNlIG9uCj4gPiBCJywgd2UgbmVlZCB0byBjb3VwbGUgaW4gdGhlIGRlcGVuZGVu
Y2llcyBmb3IgUEkuIFRoaXMgcmVxdWlyZXMgdXMgdG8KPiA+IHJlbGF4IG91ciBzYW5pdHktY2hl
Y2tzIHRoYXQgZGVwZW5kZW5jaWVzIGFyZSBzdHJpY3RseSBpbiBvcmRlci4KPiAKPiBHb29kIGNh
dGNoLCB0aGlzIG5lZWRlZCBzb21lIGRlZXAgdGhpbmtpbmchIEFuZCBpdCBsb29rcyBva2F5LCBl
dmVuIAo+IHRob3VnaCBpZGVhbGx5IHdlIHdvdWxkIGJlIGFibGUgdG8gZml4IGl0IG5vdCB0byBz
aWduYWwgdGhlIHN1Ym1pdCBmZW5jZSAKPiB1bnRpbCBzZW1hcGhvcmUgd2FzIGNvbXBsZXRlZC4g
QnV0IGZvciB0aGF0IEkgdGhpbmsgd2Ugd291bGQgbmVlZCB0byAKPiBlbWl0IGEgcmVxdWVzdCB3
aGlsZSBlbWl0dGluZyBhIHJlcXVlc3QsIHNvIHRoYXQgdGhlIHNlbWFwaG9yZSB3YWl0IAo+IHdv
dWxkIGJlIGluIGl0cyBvd24uCgpBdCBhIHB1c2ggd2UgY291bGQgYWRkIGFuIE1JX1VTRVJfSU5U
RVJSVVBUIGFmdGVyIHRoZSBpbml0aWFsIGJyZWFkY3J1bWIKYW5kIGNvdXBsZSB0aGUgc3VibWl0
IGZlbmNlIGludG8gdGhhdC4gVGhhdCB3b3VsZCBiZSB2aXJ0dWFsbHkKZXF1aXZhbGVudCB0byBl
bWl0dGluZyBhIHNlcGFyYXRlIHJlcXVlc3QgZm9yIHNlbWFwaG9yZXMuIFNvbWV0aGluZyB0bwpw
b25kZXIgb3Zlci4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
