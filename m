Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF42998784
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 00:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A286EA43;
	Wed, 21 Aug 2019 22:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71CB6EA43
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 22:49:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18220042-1500050 for multiple; Wed, 21 Aug 2019 23:49:37 +0100
MIME-Version: 1.0
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190820230544.170010-12-stuart.summers@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
 <20190820230544.170010-12-stuart.summers@intel.com>
Message-ID: <156642777498.20466.10452165343968166975@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 23:49:35 +0100
Subject: Re: [Intel-gfx] [PATCH 11/11] drm/i915: Expand subslice mask
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0yMSAwMDowNTo0NCkKPiBDdXJyZW50bHks
IHRoZSBzdWJzbGljZV9tYXNrIHJ1bnRpbWUgcGFyYW1ldGVyIGlzIHN0b3JlZCBhcyBhbgo+IGFy
cmF5IG9mIHN1YnNsaWNlcyBwZXIgc2xpY2UuIEV4cGFuZCB0aGUgc3Vic2xpY2UgbWFzayBhcnJh
eSB0bwo+IGJldHRlciBtYXRjaCB3aGF0IGlzIHByZXNlbnRlZCB0byB1c2Vyc3BhY2UgdGhyb3Vn
aCB0aGUKPiBJOTE1X1FVRVJZX1RPUE9MT0dZX0lORk8gaW9jdGwuIFRoZSBpbmRleCBpbnRvIHRo
aXMgYXJyYXkgaXMKPiB0aGVuIGNhbGN1bGF0ZWQ6Cj4gICBzbGljZSAqIHN1YnNsaWNlIHN0cmlk
ZSArIHN1YnNsaWNlIGluZGV4IC8gOAo+IAo+IHYyOiBGaXggMzItYml0IGJ1aWxkCj4gdjM6IFVz
ZSBuZXcgaGVscGVyIGZ1bmN0aW9uIGluIFNTRVUgd29ya2Fyb3VuZCB3YXJuaW5nIG1lc3NhZ2UK
PiAKPiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMgICAgICAg
IHwgMjcgKysrKysrKysrKysrKysrKysrKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3NzZXUuaCAgICAgICAgfCAgNSArKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMgfCAgNSArKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jICAgICAgICAgfCAgNSArKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgICAgfCAgOCArKystLS0KPiAgNSBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNl
cnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
c3NldS5jCj4gaW5kZXggNWQ1MzdlYzk3ZmNjLi5lYWUxYzdiMjA2ODggMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jCj4gQEAgLTMwLDYgKzMwLDMxIEBAIGludGVsX3NzZXVf
c3Vic2xpY2VfdG90YWwoY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUpCj4gICAgICAg
ICByZXR1cm4gdG90YWw7Cj4gIH0KPiAgCj4gK3UzMiBpbnRlbF9zc2V1X2dldF9zdWJzbGljZXMo
Y29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUsIHU4IHNsaWNlKQo+ICt7Cj4gKyAgICAg
ICBpbnQgaSwgb2Zmc2V0ID0gc2xpY2UgKiBzc2V1LT5zc19zdHJpZGU7Cj4gKyAgICAgICB1MzIg
bWFzayA9IDA7Cj4gKwo+ICsgICAgICAgaWYgKHNsaWNlID49IHNzZXUtPm1heF9zbGljZXMpIHsK
PiArICAgICAgICAgICAgICAgRFJNX0VSUk9SKCIlczogaW52YWxpZCBzbGljZSAlZCwgbWF4OiAl
ZFxuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgIF9fZnVuY19fLCBzbGljZSwgc3NldS0+
bWF4X3NsaWNlcyk7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiAwOwo+ICsgICAgICAgfQoKVGhh
dCdzIGEgcHJvZ3JhbW1lciBlcnJvciwgd2Ugb25seSBuZWVkIGl0IGR1cmluZyBkZXZlbG9wbWVu
dC4gSSBhbSBhCnByb3BvbmVudCBvZiBtYWtpbmcgaXQgZXhwbG9kZSBhcyBlYXJseSBhcyBwb3Nz
aWJsZSBhbmQgbWFrZSBwZW9wbGUgZml4Cml0IHJhdGhlciB0aGFuIGlnbm9yZSBpdC4KCj4gKyAg
ICAgICBpZiAoc3NldS0+c3Nfc3RyaWRlID4gc2l6ZW9mKG1hc2spKSB7Cj4gKyAgICAgICAgICAg
ICAgIERSTV9FUlJPUigiJXM6IGludmFsaWQgc3Vic2xpY2Ugc3RyaWRlICVkLCBtYXg6ICV1XG4i
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgX19mdW5jX18sIHNzZXUtPnNzX3N0cmlkZSwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgKHVuc2lnbmVkIGludClzaXplb2YobWFzaykpOwo+
ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKPiArICAgICAgIH0KClB1dCB0aGUgYXNzZXJ0aW9u
IGluIHRoZSBjb25zdHJ1Y3RvciAoc2V0X3NzZXVfaW5mbyBvciB3aGF0ZXZlciBpdCB3YXMKY2Fs
bGVkKQoKPiArCj4gKyAgICAgICBmb3IgKGkgPSAwOyBpIDwgc3NldS0+c3Nfc3RyaWRlOyBpKysp
Cj4gKyAgICAgICAgICAgICAgIG1hc2sgfD0gKHUzMilzc2V1LT5zdWJzbGljZV9tYXNrW29mZnNl
dCArIGldIDw8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaSAqIEJJVFNfUEVSX0JZVEU7CgpP
dGhlcndpc2UsIHRoZSBhY3R1YWwgY29udmVyc2lvbnMgbG9vayBmYWlybHkgc3RyYWlnaHRmb3J3
YXJkLApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
