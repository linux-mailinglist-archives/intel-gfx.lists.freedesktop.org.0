Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 903C263D1B
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 23:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B16586E061;
	Tue,  9 Jul 2019 21:10:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0904C6E061
 for <Intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 21:10:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17190799-1500050 for multiple; Tue, 09 Jul 2019 22:09:55 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
 <20190709210620.15805-2-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190709210620.15805-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <156270659276.11940.12155160842593062182@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 22:09:52 +0100
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Fix GEN8_MCR_SELECTOR
 programming
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wOSAyMjowNjoxNykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IGZscyByZXR1cm5zIGJp
dCBwb3NpdGlvbnMgc3RhcnRpbmcgZnJvbSBvbmUgZm9yIHRoZSBsc2IgYW5kIHRoZSBNQ1IKPiBy
ZWdpc3RlciBleHBlY3RzIHplcm8gYmFzZWQgKHN1YilzbGljZSBhZGRyZXNzaW5nLgo+IAo+IElu
Y29ycmVudCBNQ1IgcHJvZ3JhbW1pbmcgY2FuIGhhdmUgdGhlIGVmZmVjdCBvZiBkaXJlY3Rpbmcg
TU1JTyByZWFkcyBvZgo+IHJlZ2lzdGVycyBpbiB0aGUgMHhiMTAwLTB4YjNmZiByYW5nZSB0byBp
bnZhbGlkIHN1YnNsaWNlIHJldHVybmluZyB6ZXJvZXMKPiBpbnN0ZWFkIG9mIGFjdHVhbCBjb250
ZW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4gRml4ZXM6IDFlNDBkNGFlYTU3YiAoImRybS9pOTE1L2NubDogSW1wbGVtZW50
IFdhUHJvZ3JhbU1nc3JGb3JDb3JyZWN0U2xpY2VTcGVjaWZpY01taW9SZWFkcyIpCgpNYWtlcyBz
ZW5zZSB0byBtZSwganVzdCBmcm9tIG15IG1lYWdyZSB1bmRlcnN0YW5kaW5nIG9mIGFycmF5cwpS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyB8IDkgKysrKysr
Ky0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiBpbmRleCBiZGYy
NzlmYTNiMmUuLmVlMTVkMTkzNDQ4NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jCj4gQEAgLTk3NSw5ICs5NzUsMTQgQEAgY29uc3QgY2hhciAqaTkxNV9j
YWNoZV9sZXZlbF9zdHIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludCB0eXBlKQo+
ICB1MzIgaW50ZWxfY2FsY3VsYXRlX21jcl9zX3NzX3NlbGVjdChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCj4gIHsKPiAgICAgICAgIGNvbnN0IHN0cnVjdCBzc2V1X2Rldl9pbmZv
ICpzc2V1ID0gJlJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPnNzZXU7Cj4gKyAgICAgICB1bnNpZ25l
ZCBpbnQgc2xpY2UgPSBmbHMoc3NldS0+c2xpY2VfbWFzaykgLSAxOwoKSSdkIHZvdGUgZm9yIF9f
ZmxzKCkgaGVyZSBpbnN0ZWFkIG9mIGZscygpIC0gMS4KCj4gKyAgICAgICB1bnNpZ25lZCBpbnQg
c3Vic2xpY2U7Cj4gICAgICAgICB1MzIgbWNyX3Nfc3Nfc2VsZWN0Owo+IC0gICAgICAgdTMyIHNs
aWNlID0gZmxzKHNzZXUtPnNsaWNlX21hc2spOwo+IC0gICAgICAgdTMyIHN1YnNsaWNlID0gZmxz
KHNzZXUtPnN1YnNsaWNlX21hc2tbc2xpY2VdKTsKPiArCj4gKyAgICAgICBHRU1fQlVHX09OKHNs
aWNlID49IEFSUkFZX1NJWkUoc3NldS0+c3Vic2xpY2VfbWFzaykpOwo+ICsgICAgICAgc3Vic2xp
Y2UgPSBmbHMoc3NldS0+c3Vic2xpY2VfbWFza1tzbGljZV0pOwo+ICsgICAgICAgR0VNX0JVR19P
Tighc3Vic2xpY2UpOwo+ICsgICAgICAgc3Vic2xpY2UtLTsKCkFuZCBJIHRoaW5rIHdlJ3JlIGEg
Yml0IGxhdGUgb24gdGhlIEJVR19PTiBoZXJlIChpdCdzIHNob3VsZG4ndCBjaGFuZ2UKYWZ0ZXIg
cHJvYmluZykgc28gY291bGQgYmUgaGFwcGlseSByZWR1Y2VkIHRvIF9fZmxzKCkuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
