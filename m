Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED57863C6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 021916E83B;
	Thu,  8 Aug 2019 13:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D716E846
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:59:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17931584-1500050 for multiple; Thu, 08 Aug 2019 14:59:03 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87imr7himj.fsf@gaia.fi.intel.com>
References: <20190807083702.16349-1-chris@chris-wilson.co.uk>
 <20190807083702.16349-3-chris@chris-wilson.co.uk>
 <87r25x819j.fsf@gaia.fi.intel.com>
 <156519144382.6198.4063420370429090061@skylake-alporthouse-com>
 <87imr7himj.fsf@gaia.fi.intel.com>
Message-ID: <156527274060.22627.14643269765160502250@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 08 Aug 2019 14:59:00 +0100
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Defer final intel_wakeref_put
 to process context
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA4IDE0OjQ5OjQwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMDgtMDcgMTY6MDQ6NTYpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiA+ICAgICAgIGlmIChmbGFncyAmIEk5MTVf
V0FJVF9MT0NLRUQpIHsKPiA+PiA+IC0gICAgICAgICAgICAgaW50IGVycjsKPiA+PiA+IC0KPiA+
PiA+ICAgICAgICAgICAgICAgbG9ja2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+ZHJtLnN0cnVjdF9t
dXRleCk7Cj4gPj4gPiAgCj4gPj4gPiAtICAgICAgICAgICAgIGVyciA9IHdhaXRfZm9yX2VuZ2lu
ZXMoJmk5MTUtPmd0KTsKPiA+PiA+IC0gICAgICAgICAgICAgaWYgKGVycikKPiA+PiA+IC0gICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gZXJyOwo+ID4+ID4gLQo+ID4+IAo+ID4+IEhtbSB3aGVy
ZSBkb2VzIHRoZSBpbXBsaWNpdCB3YWl0IGZvciBpZGxlIGNvbWUgZnJvbSBub3c/Cj4gPgo+ID4g
SW5zdGVhZCBvZiBoYXZpbmcgdGhlIHdhaXQgaGVyZSwgd2UgbW92ZWQgaXQgaW50byB0aGUgZW5n
aW5lL2d0IHBtCj4gPiB0cmFja2luZyBhbmQgYWRkZWQgYW4gaW50ZWxfZ3RfcG1fd2FpdF9mb3Jf
aWRsZSgpLgo+IAo+IEkgc2VlIHRoYXQgd2UgZG8gd2FpdCBvbiBzd2l0Y2hpbmcgdG8ga2VybmVs
IGNvbnRleHQuIEhvd2V2ZXIKPiBzdGlsbCBmYWlsaW5nIHRvIGdyYXNwIHRoZSB3YXkgd2UgZW5k
IHVwIHdhaXRpbmcgb24gKGltcGxpY2l0PykKPiByZWxlYXNpbmcgb2YgdGhlIGd0IHBtIChhbmQg
d2hlcmUpCgpJbnNpZGUgdGhlIHN3aXRjaC10by1rZXJuZWwgY29udGV4dCwgd2UgY2FsbCBpbnRl
bF9ndF9wbV93YWl0X2Zvcl9pZGxlKCkKd2hpY2ggd2FpdHMgZm9yIHRoZSBpbnRlbF93YWtlcmVm
LmNvdW50IHRvIGhpdCAwIGFuZCBmb3IgdGhlIHdha2VyZWYgdG8KYmUgcmVsZWFzZWQgKHRoYXQn
cyB0aGUgd2FrZV91cF92YXIoKSBpbnNpZGUKX19fX2ludGVsX3dha2VyZWZfcHV0X2xhc3QpLiB3
YWl0X2Zvcl9pZGxlIGlzIHRoZW4ganVzdAoKaW50IGludGVsX3dha2VyZWZfd2FpdF9mb3JfaWRs
ZShzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YpCnsKICAgICAgICByZXR1cm4gd2FpdF92YXJfZXZl
bnRfa2lsbGFibGUoJndmLT53YWtlcmVmLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAhaW50ZWxfd2FrZXJlZl9pc19hY3RpdmUod2YpKTsKfQoKSW5zdGVhZCBvZiBpOTE1
X2dlbV93YWl0X2Zvcl9pZGxlKCkgZW5zdXJpbmcgdGhhdCB0aGUgcG0gaXMgaWRsZWQsIHdlJ3Zl
CmxpZnRlZCB0aGF0IHRvIHRoZSB0d28gY2FsbGVycyB0aGF0IGNhcmVkLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
