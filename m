Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53267EFCA7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 12:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9245D89CAD;
	Tue,  5 Nov 2019 11:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CFED89AC3;
 Tue,  5 Nov 2019 11:48:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19087718-1500050 for multiple; Tue, 05 Nov 2019 11:48:33 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87ftj2o89e.fsf@gaia.fi.intel.com>
References: <20191104201710.3778-1-chris@chris-wilson.co.uk>
 <87imnyo8u8.fsf@gaia.fi.intel.com>
 <157295394385.14950.10836757962075610612@skylake-alporthouse-com>
 <87ftj2o89e.fsf@gaia.fi.intel.com>
Message-ID: <157295451234.14950.6375748026103319770@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 05 Nov 2019 11:48:32 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Wait for both
 engines to complete before resubmitting
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTA1IDExOjQ2OjUzKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMTEtMDUgMTE6MzQ6MjMpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiAKPiA+PiA+IEFzIHRoZSBzY3JhdGNoIGJ1
ZiBpcyBzaGFyZWQgYmV0d2VlbiB0aGUgdHdvIHJlcXVlc3RzIG9uIGJvdGggZW5naW5lcywKPiA+
PiA+IHdlIG5lZWQgdG8gd2FpdCBmb3IgYm90aCB0byBmaW5pc2ggdXNpbmcgdGhlIGJ1ZmZlciBi
ZWZvcmUgd2UgcmVzZXQgaXQuCj4gPj4gPgo+ID4+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPj4gPiBDYzogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+PiA+IC0tLQo+ID4+ID4gIHRlc3RzL2k5MTUv
Z2VtX2V4ZWNfYmFsYW5jZXIuYyB8IDIgKy0KPiA+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+PiA+Cj4gPj4gPiBkaWZmIC0tZ2l0IGEvdGVzdHMv
aTkxNS9nZW1fZXhlY19iYWxhbmNlci5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxhbmNlci5j
Cj4gPj4gPiBpbmRleCBlNTJmNWRmOTUuLjcwYzQ1MjliNCAxMDA2NDQKPiA+PiA+IC0tLSBhL3Rl
c3RzL2k5MTUvZ2VtX2V4ZWNfYmFsYW5jZXIuYwo+ID4+ID4gKysrIGIvdGVzdHMvaTkxNS9nZW1f
ZXhlY19iYWxhbmNlci5jCj4gPj4gPiBAQCAtODQwLDcgKzg0MCw3IEBAIHN0YXRpYyB2b2lkIGJv
bmRlZF9zbGljZShpbnQgaTkxNSkKPiA+PiA+ICAgICAgICAgICAgICAgICAgICAgICBnZW1fZXhl
Y2J1ZihpOTE1LCAmZWIpOwo+ID4+ID4gICAgICAgICAgICAgICAgICAgICAgIGNsb3NlKGViLnJz
dmQyKTsKPiA+PiA+ICAKPiA+PiA+IC0gICAgICAgICAgICAgICAgICAgICBnZW1fc3luYyhpOTE1
LCBvYmpbMl0uaGFuZGxlKTsKPiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICBnZW1fc3luYyhp
OTE1LCBvYmpbMF0uaGFuZGxlKTsKPiA+PiAKPiA+PiBPaywgbGV0IG1lIHRyeSB0byBtYWtlIHNl
bnNlIG9mIGl0IGFsbC4gRmlyc3Qgb2ZmLCB0aGUgbmVlZCBmb3IKPiA+PiBvYmpbSUdUX1NQSU5f
U0NSQVRDSF0uaGFuZGxlIGdyb3dzLgo+ID4+IAo+ID4+IEJ1dCBhcyB0aGUgc2VtYXBob3JlIHdp
bGwgd2FpdCB0aGUgc3Bpbm5lciB0byBzdGFydCBhbmQgdGhlbiBlbmQgaXQuCj4gPj4gSXQgaXMg
bm90IGVub3VnaCB0byB3YWl0IHRoZSBzZW1hcGhvcmUgYmF0Y2ggdG8gc3luYy4gVGhhdCBpcyBj
bGVhci4KPiA+Cj4gPiBJdCBzaG91bGQgYmUgZW5vdWdoIHRvIHdhaXQgZm9yIHRoZSBzcGlubmVy
IGNvbXBsZXRpb24gdG8gYmUgc3VyZSB0aGF0Cj4gPiB0aGUgc2VtYXBob3JlIGJhdGNoIGlzIHBh
c3QgdGhlIHBvaW50IG9mIG5vIHJldHVybiAoYnV0IG5vdCBuZWNlc3NhcmlseQo+ID4gY29tcGxl
dGUgYXMgaXQgbWF5IGJlIHByZWVtcHRlZCBiZWZvcmUgd2UgbWFyayBpdCBhcyBjb21wbGV0ZSku
IFNvIGl0Cj4gPiB3b3VsZCBiZSBwb3NzaWJsZSBmb3IgdXMgdG8gc2VlIHRoZSBjb250ZXh0IHN0
aWxsIGluIGZsaWdodCBhbmQgcmVkdWNlCj4gPiB0aGUgcmFuZG9tbmVzcyBvZiBvdXIgc2VsZWN0
aW9uLgo+ID4gIAo+ID4+IEJ1dCBvbiBzeW5jaW5nIHRoZSBzY3JhdGNoOiB0aGUgb2JqWzFdLmhh
bmRsZSBpcyBjYXVzaW5nIHdyaXRlCj4gPj4gaGF6YXJkIHRvIG9ialswXSBzbyBpZiB3ZSB3YWl0
IG9ialswXSwgdGhlbiBpdCBpcyBpbXBsaWVkIHRoYXQKPiA+PiBvYmpbMV0uaGFuZGxlIGhhcyBm
aW5pc2hlZD8KPiA+Cj4gPiBZZXMuIG9ialsyXS5oYW5kbGUgaGFzIG9uZSBmZW5jZSAoZnJvbSB0
aGUgc3Bpbm5lciBiYXRjaCksIG9ialswXS5oYW5kbGUKPiA+IGhhcyB0d28gZmVuY2VzIChmcm9t
IGJvdGggYmF0Y2hlcyksIGxpa2V3aXNlIG9ialsxXS5oYW5kbGUuIFNvIGlmIHlvdQo+ID4gd2Fp
dCBvbiBlaXRoZXIgb2JqWzBdLmhhbmRsZSBvciBvYmpbMV0uaGFuZGxlLCB5b3UgZmx1c2ggYm90
aCBmZW5jZXMuCj4gCj4gV2UgbmVlZCB0byBnZXQgcmlkIG9mIHRoZSBhYnNvbHV0ZSBpbmRleGlu
ZyBpbnNpZGUgc3BpbiBoYW5kbGVzCj4gYXQgc29tZSBwb2ludC4gQnV0IG5vdCB0b2RheS4KClll
YWgsIHJpZ2h0IDotcAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
