Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D369A9876C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 00:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FFC06E9D0;
	Wed, 21 Aug 2019 22:36:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E436E9D0
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 22:36:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18219983-1500050 for multiple; Wed, 21 Aug 2019 23:36:10 +0100
MIME-Version: 1.0
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190820230544.170010-8-stuart.summers@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
 <20190820230544.170010-8-stuart.summers@intel.com>
Message-ID: <156642696880.20466.4671731770490212833@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 23:36:08 +0100
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915: Use subslice stride to set
 subslices for a given slice
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0yMSAwMDowNTo0MCkKPiBBZGQgYSBzdWJz
bGljZSBzdHJpZGUgY2FsY3VsYXRpb24gd2hlbiBzZXR0aW5nIHN1YnNsaWNlcy4gVGhpcwo+IGFs
aWducyBtb3JlIGNsb3NlbHkgd2l0aCB0aGUgdXNlcnNwYWNlIGV4cGVjdGF0aW9uIG9mIHRoZSBz
dWJzbGljZQo+IG1hc2sgc3RydWN0dXJlLgo+IAo+IHYyOiBVc2UgbG9jYWwgdmFyaWFibGUgZm9y
IHN1YnNsaWNlX21hc2sgb24gSFNXIGFuZAo+ICAgICBjbGVhbiB1cCBhIGZldyBvdGhlciBzdWJz
bGljZV9tYXNrIGxvY2FsIHZhcmlhYmxlCj4gICAgIGNoYW5nZXMKPiB2MzogQWRkIEdFTV9CVUdf
T04gZm9yIHNzX3N0cmlkZSB0byBwcmV2ZW50IGFycmF5IG92ZXJmbG93IChDaHJpcykKPiAgICAg
U3BsaXQgbWFpbiBzZXQgZnVuY3Rpb24gYW5kIHJlZmFjdG9ycyBpbiBpbnRlbF9kZXZpY2VfaW5m
by5jCj4gICAgIGludG8gc2VwYXJhdGUgcGF0Y2hlcyAoQ2hyaXMpCj4gCj4gU2lnbmVkLW9mZi1i
eTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIHwgMTIgKysrKysrKysrKy0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaCB8ICAyICstCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfc3NldS5jCj4gaW5kZXggNzlhOWI1ZjE4NmY5Li41ZDUzN2VjOTdmY2MgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCj4gQEAgLTMxLDkgKzMxLDE3IEBA
IGludGVsX3NzZXVfc3Vic2xpY2VfdG90YWwoY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNz
ZXUpCj4gIH0KPiAgCj4gIHZvaWQgaW50ZWxfc3NldV9zZXRfc3Vic2xpY2VzKHN0cnVjdCBzc2V1
X2Rldl9pbmZvICpzc2V1LCBpbnQgc2xpY2UsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgdTggc3NfbWFzaykKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgc3NfbWFz
aykKPiAgewo+IC0gICAgICAgc3NldS0+c3Vic2xpY2VfbWFza1tpXSA9IHNzX21hc2sgJiAweGZm
Owo+ICsgICAgICAgaW50IGksIG9mZnNldDsKPiArCj4gKyAgICAgICBHRU1fQlVHX09OKHNzZXUt
PnNzX3N0cmlkZSA+IDMyKTsKPiArCj4gKyAgICAgICBvZmZzZXQgPSBzbGljZSAqIHNzZXUtPnNz
X3N0cmlkZTsKPiArCj4gKyAgICAgICBmb3IgKGkgPSAwOyBpIDwgc3NldS0+c3Nfc3RyaWRlOyBp
KyspCgpZb3UgYXJlIHNheWluZyB0aGF0IGkgY2FuIGJlIGEgbWF4aW11bSBvZiAzMiwgYW5kCnUz
MiA+PiAoOCAqIDMyKSBpcyBsZWdhbD8KCj4gKyAgICAgICAgICAgICAgIHNzZXUtPnN1YnNsaWNl
X21hc2tbb2Zmc2V0ICsgaV0gPQo+ICsgICAgICAgICAgICAgICAgICAgICAgIChzc19tYXNrID4+
IChCSVRTX1BFUl9CWVRFICogaSkpICYgMHhmZjsKClRoZSAweGZmIGlzLCBhbmQgd2FzLCBzdXBl
cmZsdW91cy4gU2hydWcuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
