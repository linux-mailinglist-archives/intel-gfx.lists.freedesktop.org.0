Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B8910CCAD
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 17:20:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4DA06E85A;
	Thu, 28 Nov 2019 16:20:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8026E85A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 16:20:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19379004-1500050 for multiple; Thu, 28 Nov 2019 16:19:51 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191128161051.12753-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191128161051.12753-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157495798936.8489.15571641017234842307@skylake-alporthouse-com>
Date: Thu, 28 Nov 2019 16:19:49 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Report frequency as zero
 while GPU is sleeping
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yOCAxNjoxMDo1MSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFdlIHVzZWQgdG8gcmVw
b3J0IHRoZSBtaW5pbXVtIHBvc3NpYmxlIGZyZXF1ZW5jeSBhcyBib3RoIHJlcXVlc3RlZCBhbmQK
PiBhY3RpdmUgd2hpbGUgR1BVIHdhcyBpbiBzbGVlcCBzdGF0ZS4gVGhpcyB3YXMgYSBjb25zZXF1
ZW5jZSBvZiBzYW1wbGluZwo+IHRoZSB2YWx1ZSBmcm9tIHRoZSAiY3VycmVudCBmcmVxdWVuY3ki
IGZpZWxkIGluIG91ciBzb2Z0d2FyZSB0cmFja2luZy4KPiAKPiBUaGlzIHdhcyBzdHJpY3RseSBz
cGVha2luZyB3cm9uZywgYnV0IGdpdmVuIHRoYXQgdW50aWwgcmVjZW50bHkgdGhlCj4gY3VycmVu
dCBmcmVxdWVuY3kgaW4gc2xlZXBpbmcgc3RhdGUgdXNlZCB0byBiZSBlcXVhbCB0byBtaW5pbXVt
LCBpdCBkaWQKPiBub3Qgc3RhbmQgb3V0IHN1ZmZpY2llbnRseSB0byBiZSBub3RpY2VkIGFzIHN1
Y2guCj4gCj4gQWZ0ZXIgc29tZSByZWNlbnQgY2hhbmdlcyBoYXZlIG1hZGUgdGhlIGN1cnJlbnQg
ZnJlcXVlbmN5IGJlIHJlcG9ydGVkCj4gYXMgbGFzdCBhY3RpdmUgYmVmb3JlIEdQVSB3ZW50IHRv
IHNsZWVwLCBtZWFuaW5nIGJvdGggcmVxdWVzdGVkIGFuZCBhY3RpdmUKPiBmcmVxdWVuY2llcyBj
b3VsZCBlbmQgdXAgYmVpbmcgcmVwb3J0ZWQgYXQgdGhlaXIgbWF4aW11bSB2YWx1ZXMgZm9yIHRo
ZQo+IGR1cmF0aW9uIG9mIHRoZSBHUFUgaWRsZSBzdGF0ZSwgaXQgYmVjYW1lIG11Y2ggbW9yZSBv
YnZpb3VzIHRoYXQgdGhpcyBkb2VzCj4gbm90IG1ha2Ugc2Vuc2UuCj4gCj4gVG8gZml4IHRoaXMg
d2Ugd2lsbCBub3cgc2FtcGxlIHRoZSBmcmVxdWVuY3kgY291bnRlcnMgb25seSB3aGVuIHRoZSBH
UFUgaXMKPiBhd2FrZS4gQXMgYSBjb25zZXF1ZW5jZSByZXBvcnRlZCBmcmVxdWVuY2llcyBjb3Vs
ZCBiZSByZXBvcnRlZCBhcyBiZWxvdwo+IHRoZSBHUFUgcmVwb3J0ZWQgbWluaW11bSBidXQgdGhh
dCBzaG91bGQgYmUgbXVjaCBsZXNzIGNvbmZ1c2luZyB0aGF0IHRoZQo+IGN1cnJlbnQgc2l0dWF0
aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CgpIbW0uIDAvMCB3aGlsZSBvZmYsIHRoYXQgd2lsbCBiZSBhIGJpdCBvZiBhIHNo
b2NrLgoKSWRlYS9jb2Rld2lzZQpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CgpJJ2xsIGRvZ2Zvb2QgaXQgYSBiaXQgdG8gc2VlIGhvdyBtdWNoIGdl
dHRpbmcgdXNlZCB0byBpdCB3aWxsIHRha2UgOikKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcG11LmMgfCA0NCArKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYwo+IGluZGV4IDk1ZTgyNGE3OGQ0ZC4uYjU3NmEyYmU5ZjgxIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gQEAgLTM3OCwzMiArMzc4LDMyIEBAIGZyZXF1
ZW5jeV9zYW1wbGUoc3RydWN0IGludGVsX2d0ICpndCwgdW5zaWduZWQgaW50IHBlcmlvZF9ucykK
PiAgICAgICAgIHN0cnVjdCBpOTE1X3BtdSAqcG11ID0gJmk5MTUtPnBtdTsKPiAgICAgICAgIHN0
cnVjdCBpbnRlbF9ycHMgKnJwcyA9ICZndC0+cnBzOwo+ICAKPiArICAgICAgIGlmICghKHBtdS0+
ZW5hYmxlICYKPiArICAgICAgICAgICAgIChjb25maWdfZW5hYmxlZF9tYXNrKEk5MTVfUE1VX0FD
VFVBTF9GUkVRVUVOQ1kpIHwKPiArICAgICAgICAgICAgICBjb25maWdfZW5hYmxlZF9tYXNrKEk5
MTVfUE1VX1JFUVVFU1RFRF9GUkVRVUVOQ1kpKSkgfHwKPiArICAgICAgICAgICAhaW50ZWxfZ3Rf
cG1fZ2V0X2lmX2F3YWtlKGd0KSkKPiArICAgICAgICAgICAgICAgcmV0dXJuOwoKRndpdywgSSdk
IHB1dCB0aGlzIGFzIHR3byBpZigpcyBzaW5jZSB0aGUgbXVsdGlsaW5lIGZsYWdzIG1ha2VzIGl0
CmhhcmRlciB0byByZWFkLiBBbnkgY2hhbmNlIHdlIGNvdWxkIGRvIGEKCmlmICghZnJlcXVlbmN5
X3NhbXBsZV9lbmFibGVkKHBtdSkpCglyZXR1cm47CgovKiBSZXBvcnQgMC8wIChhY3R1YWwvcmVx
dWVzdGVkKSBmcmVxdWVuY3kgd2hpbGUgcGFya2VkICovCmlmICghaW50ZWxfZ3RfcG1fZ2V0X2lm
X2F3YWtlKGd0KSkKCXJldHVybjsKCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
