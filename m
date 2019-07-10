Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 715816416C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 08:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2A708999C;
	Wed, 10 Jul 2019 06:39:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 833918999C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 06:39:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17193767-1500050 for multiple; Wed, 10 Jul 2019 07:39:37 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190709210620.15805-1-tvrtko.ursulin@linux.intel.com>
 <20190709210620.15805-2-tvrtko.ursulin@linux.intel.com>
 <156270659276.11940.12155160842593062182@skylake-alporthouse-com>
 <53e16003-66d0-ecea-1ecf-7964d2d59227@linux.intel.com>
In-Reply-To: <53e16003-66d0-ecea-1ecf-7964d2d59227@linux.intel.com>
Message-ID: <156274077583.4452.13766454553424372044@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 07:39:35 +0100
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xMCAwNzoyMToxOSkKPiAKPiBPbiAwOS8w
Ny8yMDE5IDIyOjA5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTA5IDIyOjA2OjE3KQo+ID4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4KPiA+PiBmbHMgcmV0dXJucyBiaXQgcG9zaXRpb25z
IHN0YXJ0aW5nIGZyb20gb25lIGZvciB0aGUgbHNiIGFuZCB0aGUgTUNSCj4gPj4gcmVnaXN0ZXIg
ZXhwZWN0cyB6ZXJvIGJhc2VkIChzdWIpc2xpY2UgYWRkcmVzc2luZy4KPiA+Pgo+ID4+IEluY29y
cmVudCBNQ1IgcHJvZ3JhbW1pbmcgY2FuIGhhdmUgdGhlIGVmZmVjdCBvZiBkaXJlY3RpbmcgTU1J
TyByZWFkcyBvZgo+ID4+IHJlZ2lzdGVycyBpbiB0aGUgMHhiMTAwLTB4YjNmZiByYW5nZSB0byBp
bnZhbGlkIHN1YnNsaWNlIHJldHVybmluZyB6ZXJvZXMKPiA+PiBpbnN0ZWFkIG9mIGFjdHVhbCBj
b250ZW50Lgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPiA+PiBGaXhlczogMWU0MGQ0YWVhNTdiICgiZHJtL2k5MTUvY25s
OiBJbXBsZW1lbnQgV2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRz
IikKPiA+IAo+ID4gTWFrZXMgc2Vuc2UgdG8gbWUsIGp1c3QgZnJvbSBteSBtZWFncmUgdW5kZXJz
dGFuZGluZyBvZiBhcnJheXMKPiA+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiA+IAo+ID4+IC0tLQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCA5ICsrKysrKystLQo+ID4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gPj4gaW5kZXggYmRmMjc5ZmEzYjJlLi5l
ZTE1ZDE5MzQ0ODYgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYwo+ID4+IEBAIC05NzUsOSArOTc1LDE0IEBAIGNvbnN0IGNoYXIgKmk5MTVfY2Fj
aGVfbGV2ZWxfc3RyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpbnQgdHlwZSkKPiA+
PiAgIHUzMiBpbnRlbF9jYWxjdWxhdGVfbWNyX3Nfc3Nfc2VsZWN0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPiA+PiAgIHsKPiA+PiAgICAgICAgICBjb25zdCBzdHJ1Y3Qgc3Nl
dV9kZXZfaW5mbyAqc3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1Owo+ID4+ICsg
ICAgICAgdW5zaWduZWQgaW50IHNsaWNlID0gZmxzKHNzZXUtPnNsaWNlX21hc2spIC0gMTsKPiA+
IAo+ID4gSSdkIHZvdGUgZm9yIF9fZmxzKCkgaGVyZSBpbnN0ZWFkIG9mIGZscygpIC0gMS4KPiAK
PiBXaXRoIGZscygpIEkgZ2V0IHplcm8gc2xpY2UgbWFzayBjaGVjayBmb3IgZnJlZSwgaW4gdGhl
IGFycmF5IG91dCBvZiAKPiBib3VuZHMgY2hlY2sgYmVsb3cuCj4gCj4gPiAKPiA+PiArICAgICAg
IHVuc2lnbmVkIGludCBzdWJzbGljZTsKPiA+PiAgICAgICAgICB1MzIgbWNyX3Nfc3Nfc2VsZWN0
Owo+ID4+IC0gICAgICAgdTMyIHNsaWNlID0gZmxzKHNzZXUtPnNsaWNlX21hc2spOwo+ID4+IC0g
ICAgICAgdTMyIHN1YnNsaWNlID0gZmxzKHNzZXUtPnN1YnNsaWNlX21hc2tbc2xpY2VdKTsKPiA+
PiArCj4gPj4gKyAgICAgICBHRU1fQlVHX09OKHNsaWNlID49IEFSUkFZX1NJWkUoc3NldS0+c3Vi
c2xpY2VfbWFzaykpOwo+ID4+ICsgICAgICAgc3Vic2xpY2UgPSBmbHMoc3NldS0+c3Vic2xpY2Vf
bWFza1tzbGljZV0pOwo+ID4+ICsgICAgICAgR0VNX0JVR19PTighc3Vic2xpY2UpOwo+ID4+ICsg
ICAgICAgc3Vic2xpY2UtLTsKPiA+IAo+ID4gQW5kIEkgdGhpbmsgd2UncmUgYSBiaXQgbGF0ZSBv
biB0aGUgQlVHX09OIGhlcmUgKGl0J3Mgc2hvdWxkbid0IGNoYW5nZQo+ID4gYWZ0ZXIgcHJvYmlu
Zykgc28gY291bGQgYmUgaGFwcGlseSByZWR1Y2VkIHRvIF9fZmxzKCkuCj4gCj4gV2h5IGxhdGU/
IFRoaXMgb25lIGlzIG5vdCBjaGVja2luZyB0aGUgYXJyYXkgZm9yIG91dCBvZiBib3VuZHMsIGp1
c3QgaWYgCj4gemVybyBzdWJzbGljZSBtYXNrIGhhcHBlbnMgdG8gYmUgaW4gYSB2YWxpZCBzbG90
LiBUb28gcGFyYW5vaWQ/CgpKdXN0IHNheWluZyB0aGlzIHdvbid0IGNoYW5nZSBmcm9tIHNldHVw
IHdoZXJlIHdlIHNob3VsZCBoYXZlIHZhbGlkYXRlZApvdXIgSFcgZGlzY292ZXJ5LgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
