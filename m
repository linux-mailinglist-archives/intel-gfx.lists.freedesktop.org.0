Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E153D9A32A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 00:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D91656EB29;
	Thu, 22 Aug 2019 22:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F3D6EB29
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 22:43:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18232921-1500050 for multiple; Thu, 22 Aug 2019 23:43:38 +0100
MIME-Version: 1.0
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190822183213.132380-8-stuart.summers@intel.com>
References: <20190822183213.132380-1-stuart.summers@intel.com>
 <20190822183213.132380-8-stuart.summers@intel.com>
Message-ID: <156651381612.31031.2933433108620945966@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 22 Aug 2019 23:43:36 +0100
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0yMiAxOTozMjowOSkKPiBBZGQgYSBzdWJz
bGljZSBzdHJpZGUgY2FsY3VsYXRpb24gd2hlbiBzZXR0aW5nIHN1YnNsaWNlcy4gVGhpcwo+IGFs
aWducyBtb3JlIGNsb3NlbHkgd2l0aCB0aGUgdXNlcnNwYWNlIGV4cGVjdGF0aW9uIG9mIHRoZSBz
dWJzbGljZQo+IG1hc2sgc3RydWN0dXJlLgo+IAo+IHYyOiBVc2UgbG9jYWwgdmFyaWFibGUgZm9y
IHN1YnNsaWNlX21hc2sgb24gSFNXIGFuZAo+ICAgICBjbGVhbiB1cCBhIGZldyBvdGhlciBzdWJz
bGljZV9tYXNrIGxvY2FsIHZhcmlhYmxlCj4gICAgIGNoYW5nZXMKPiB2MzogQWRkIEdFTV9CVUdf
T04gZm9yIHNzX3N0cmlkZSB0byBwcmV2ZW50IGFycmF5IG92ZXJmbG93IChDaHJpcykKPiAgICAg
U3BsaXQgbWFpbiBzZXQgZnVuY3Rpb24gYW5kIHJlZmFjdG9ycyBpbiBpbnRlbF9kZXZpY2VfaW5m
by5jCj4gICAgIGludG8gc2VwYXJhdGUgcGF0Y2hlcyAoQ2hyaXMpCj4gdjQ6IFJlZHVjZSBzc19z
dHJpZGUgc2l6ZSBjaGVjayB3aGVuIHNldHRpbmcgc3Vic2xpY2VzIHBlciBzbGljZQo+ICAgICBi
YXNlZCBvbiBhY3R1YWwgZXhwZWN0ZWQgbWF4IHN0cmlkZSAoQ2hyaXMpCj4gICAgIE1vdmUgdGhh
dCBHRU1fQlVHX09OIGNoZWNrIGZvciB0aGUgc3Nfc3RyaWRlIG91dCB0byB0aGUgcGF0Y2gKPiAg
ICAgd2hpY2ggYWRkcyB0aGUgc3Nfc3RyaWRlCj4gCj4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1
bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfc3NldS5jIHwgOCArKysrKystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9zc2V1LmggfCAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9zc2V1LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMK
PiBpbmRleCAzYTVkYjBkYmFjNzIuLmEwZDMyMjcwMjQ4YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9zc2V1LmMKPiBAQCAtMzMsOSArMzMsMTMgQEAgaW50ZWxfc3NldV9zdWJzbGlj
ZV90b3RhbChjb25zdCBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAqc3NldSkKPiAgfQo+ICAKPiAgdm9p
ZCBpbnRlbF9zc2V1X3NldF9zdWJzbGljZXMoc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUsIGlu
dCBzbGljZSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1OCBzc19tYXNrKQo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiBzc19tYXNrKQo+ICB7Cj4gLSAgICAgICBz
c2V1LT5zdWJzbGljZV9tYXNrW3NsaWNlXSA9IHNzX21hc2s7Cj4gKyAgICAgICBpbnQgaSwgb2Zm
c2V0ID0gc2xpY2UgKiBzc2V1LT5zc19zdHJpZGU7Cj4gKwo+ICsgICAgICAgZm9yIChpID0gMDsg
aSA8IHNzZXUtPnNzX3N0cmlkZTsgaSsrKQo+ICsgICAgICAgICAgICAgICBzc2V1LT5zdWJzbGlj
ZV9tYXNrW29mZnNldCArIGldID0KPiArICAgICAgICAgICAgICAgICAgICAgICAoc3NfbWFzayA+
PiAoQklUU19QRVJfQllURSAqIGkpKSAmIDB4ZmY7CgpJcyBpdCBub3QKCgltZW1jcHkoJnNzZXUt
PnN1YmxpY2VfbWFza1tvZmZzZXRdLCAmc3NfbWFzaywgc3NldS0+c3Nfc3RyaWRlKTsKPwotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
