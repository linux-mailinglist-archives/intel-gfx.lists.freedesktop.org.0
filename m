Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37622D14F0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 19:08:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4151689BC0;
	Wed,  9 Oct 2019 17:08:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89F1489BC0
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 17:08:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18781031-1500050 for multiple; Wed, 09 Oct 2019 18:08:02 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191009100955.21477-2-chris@chris-wilson.co.uk>
 <20191009102622.32681-1-chris@chris-wilson.co.uk>
 <213d1f40-6199-e51c-2147-0b21d61f94e6@linux.intel.com>
 <157063677075.18808.5602717852570533021@skylake-alporthouse-com>
 <3c7b5663-c60d-f15d-6e12-0b0595da53b3@linux.intel.com>
In-Reply-To: <3c7b5663-c60d-f15d-6e12-0b0595da53b3@linux.intel.com>
Message-ID: <157064087936.18808.7336282004259273467@skylake-alporthouse-com>
Date: Wed, 09 Oct 2019 18:07:59 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: execlists->active is
 serialised by the tasklet
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0wOSAxNzozNzo0MikKPiAKPiBPbiAwOS8x
MC8yMDE5IDE2OjU5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTEwLTA5IDE2OjUzOjUzKQo+ID4+Cj4gPj4gT24gMDkvMTAvMjAxOSAxMToyNiwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiArc3RhdGljIGlubGluZSB2b2lkCj4gPj4+ICtleGVj
bGlzdHNfYWN0aXZlX2xvY2soc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0
cykKPiA+Pj4gK3sKPiA+Pj4gKyAgICAgdGFza2xldF9sb2NrKCZleGVjbGlzdHMtPnRhc2tsZXQp
Owo+ID4+PiArfQo+ID4+PiArCj4gPj4+ICtzdGF0aWMgaW5saW5lIHZvaWQKPiA+Pj4gK2V4ZWNs
aXN0c19hY3RpdmVfdW5sb2NrKHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlz
dHMpCj4gPj4+ICt7Cj4gPj4+ICsgICAgIHRhc2tsZXRfdW5sb2NrKCZleGVjbGlzdHMtPnRhc2ts
ZXQpOwo+ID4+PiArfQo+ID4+Cj4gPj4gQWZ0ZXIgd2Ugc3RvcCBwcmV2ZW50aW5nIHRoZSB0YXNr
bGV0IGZyb20gcnVubmluZyBzaG91bGQgd2UgbWF5YmUga2ljawo+ID4+IGtzb2Z0aXJxZD8gSSBh
bSB0aGlua2luZyBpZiBhIHRhc2tsZXQgZ2V0cyBzY2hlZHVsZWQgYW5kIHJhbiBkdXJpbmcgdXMK
PiA+PiBob2xkaW5nIHRoZSBsb2NrIGhlcmUsIGl0IHdvbid0IGxvc2UgdGhlICJzY2hlZHVsZWQi
IHN0YXR1cywgYnV0IG5vdAo+ID4+IHN1cmUgYXQgd2hhdCBuZXh0IG9wcG9ydHVuaXR5IGl0IHdv
dWxkIGdldCByZS1ydW4uCj4gPiAKPiA+IElmIHdlIGNhbGwgdGFza2xldF9zY2hlZHVsZSgpIHdo
aWxlIHdlIGhvbGQgdGFza2xldF9sb2NrLCBrc29mdGlycWQgKG9uCj4gPiBhbm90aGVyIHRocmVh
ZCwgaG1tLCB3ZSBuZWVkIGxvY2FsX2JoX2Rpc2FibGUoKSB0byBzdG9wIG91cnNlbHZlcwo+ID4g
ZW50ZXJpbmcgdGhlIHNvZnRpcnEgcHJvY2Vzc2luZyksIHRoZW4gdGhhdCB0YXNrbGV0X2FjdGlv
biB3aWxsIHNwaW4gb24KPiA+IHRhc2tsZXRfdHJ5bG9jay4KPiAKPiBJIGRvbid0IHNlZSBpdCBz
cGlubmluZywgSSBzZWUgaXQgdW5saW5raW5nIHRoZSB0YXNrbGV0IGlzIHRyeWxvY2sgZmFpbHMg
Cj4gYW5kIGdvaW5nIG9udG8gdGhlIG5leHQgb25lLiBTbyBldmVuIHdoYXQgSSBpbXBsaWVkIGJl
Zm9yZSBzZWVtcyB3cm9uZyAtIAo+IGl0IGRvZXNuJ3QgbG9vayBsaWtlIGl0IHdvdWxkIGdldCBy
ZS1ydW4gb24gbmV4dCB0YXNrbGV0IHByb2Nlc3NpbmcgcnVuLiAKPiBXaGVyZSBkbyB5b3Ugc2Vl
IHRoZSByZXRyeT8KCkl0IHB1dHMgaXQgYmFjayBvbnRvIHRoZSBsaXN0IG9mIHRhc2tldHMgdG8g
cnVuLiBUaGVuIHNlZXMgaXQgc3RpbGwgaGFzCnRhc2tsZXRzIHRvIHJ1biBhbmQgcmVzY2hlZHVs
ZXMgaXRzZWxmLgoKdGFza2xldF9hY3Rpb25fY29tbW9uOgoJMS4gc2V0cyBsaXN0IG9mIHBlbmRp
bmcgdGFza2xldHMgdG8gTlVMTAoJMi4gaXRlcmF0ZXMgb3ZlciBjdXJyZW50IGxpc3QKCTMuIGlm
IG5vdCBleGVjdXRlZCAodHJ5bG9jayBmYWlsZWQsIG9yIGRpc2FibGVkKSB0aGVuIGFwcGVuZHMK
CSAgIHRoZSB0YXNrbGV0IHRvIHRoZSBsaXN0IG9mIHBlbmRpbmcgZm9yIG5leHQgdGltZSwgYW5k
CgkgICByZS1yYWlzZXMgdGhlIHNvZnRpcnEsIHRoZXJlYnkgcmVzY2hlZHVsaW5nIHRoZQoJICAg
c29mdGlycS9rc29mdGlycWQuCgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
