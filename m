Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4565490B3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 22:02:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B571E89FF7;
	Mon, 17 Jun 2019 20:02:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F17D89FF7
 for <Intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 20:02:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16932195-1500050 for multiple; Mon, 17 Jun 2019 21:01:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
 <20190617181236.7981-24-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190617181236.7981-24-tvrtko.ursulin@linux.intel.com>
Message-ID: <156080171882.7889.15606389303716351391@skylake-alporthouse-com>
Date: Mon, 17 Jun 2019 21:01:58 +0100
Subject: Re: [Intel-gfx] [RFC 23/33] drm/i915: Convert
 i915_gem_flush_ggtt_writes to intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNyAxOToxMjoyNikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IEhhdmluZyBpbnRyb2R1
Y2VkIHN0cnVjdCBpbnRlbF9ndCAobmFtZWQgdGhlIGFub255bW91cyBzdHJ1Y3R1cmUgaW4gaTkx
NSkKPiB3ZSBjYW4gc3RhcnQgdXNpbmcgaXQgdG8gY29tcGFydG1lbnRhbGl6ZSBvdXIgY29kZSBi
ZXR0ZXIuIEl0IG1ha2VzIG1vcmUKPiBzZW5zZSBsb2dpY2FsbHkgdG8gaGF2ZSB0aGUgY29kZSBp
bnRlcm5hbGx5IGxpa2UgdGhpcyBhbmQgaXQgd2lsbCBhbHNvCj4gaGVscCB3aXRoIGZ1dHVyZSBz
cGxpdCBiZXR3ZWVuIGd0IGFuZCBkaXNwbGF5IGluIGk5MTUuCj4gCj4gdjI6Cj4gICogS2VlcCBn
Z3R0IGZsdXNoIGJlZm9yZSBmYiBvYmogZmx1c2guIChDaHJpcykKPiAKPiBTaWduZWQtb2ZmLWJ5
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMgICAgfCAxMiArKystLS0KPiAg
Li4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jICAgIHwgIDMgKy0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAgICAgICAgIHwgNDEgKysrKysr
KysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oICAgICAg
ICAgICAgfCAgMiArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAg
ICAgICB8ICAyIC0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAg
ICAgIHwgNDAgLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dm1hLmMgICAgICAgICAgICAgICB8ICAzICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2dlbV9ndHQuYyB8ICAyICstCj4gIDggZmlsZXMgY2hhbmdlZCwgNTQgaW5zZXJ0
aW9ucygrKSwgNTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuYwo+IGluZGV4IGE0MDQ3YTU4NWM4Yi4uZjU4ZDQ1YWUxMGQwIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwo+IEBAIC0yMiw2
ICsyMiw3IEBACj4gICAqCj4gICAqLwo+ICAKPiArI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCj4g
ICNpbmNsdWRlICJpOTE1X2Rydi5oIgo+ICAjaW5jbHVkZSAiaTkxNV9nZW1fY2xmbHVzaC5oIgo+
ICAjaW5jbHVkZSAiaTkxNV9nZW1fY29udGV4dC5oIgo+IEBAIC0zNjcsNyArMzY4LDYgQEAgdm9p
ZAo+ICBpOTE1X2dlbV9vYmplY3RfZmx1c2hfd3JpdGVfZG9tYWluKHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNp
Z25lZCBpbnQgZmx1c2hfZG9tYWlucykKPiAgewo+IC0gICAgICAgc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKPiAgICAgICAgIHN0cnVj
dCBpOTE1X3ZtYSAqdm1hOwo+ICAKPiAgICAgICAgIGFzc2VydF9vYmplY3RfaGVsZChvYmopOwo+
IEBAIC0zNzcsMTcgKzM3NywxNyBAQCBpOTE1X2dlbV9vYmplY3RfZmx1c2hfd3JpdGVfZG9tYWlu
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gIAo+ICAgICAgICAgc3dpdGNoIChv
YmotPndyaXRlX2RvbWFpbikgewo+ICAgICAgICAgY2FzZSBJOTE1X0dFTV9ET01BSU5fR1RUOgo+
IC0gICAgICAgICAgICAgICBpOTE1X2dlbV9mbHVzaF9nZ3R0X3dyaXRlcyhkZXZfcHJpdik7Cj4g
LQo+IC0gICAgICAgICAgICAgICBpbnRlbF9mYl9vYmpfZmx1c2gob2JqLAo+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgZmJfd3JpdGVfb3JpZ2luKG9iaiwgSTkxNV9HRU1fRE9N
QUlOX0dUVCkpOwo+IC0KPiAgICAgICAgICAgICAgICAgZm9yX2VhY2hfZ2d0dF92bWEodm1hLCBv
YmopIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBpZiAodm1hLT5pb21hcCkKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ICAKPiArICAgICAgICAgICAgICAg
ICAgICAgICBpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRlcyh2bWEtPnZtLT5ndCk7Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgaTkxNV92bWFfdW5zZXRfZ2d0dF93cml0ZSh2bWEpOwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIGJyZWFrOwoKU28gd2Ugbm8gbG9uZ2VyIGZsdXNoIHdyaXRlcyBm
cm9tIHVzZXIgR0dUVCBtbWFwcywgbm9yIGNsZWFyIGFsbCB0aGUKZGlydHkgYml0cz8gQW5kIG5v
dyBkZXNwaXRlIHRoZSBtb3ZlIHRvIGJlIGd0IGNlbnRyaWMgd2UgZW5kIHVwIGFzc3VtaW5nCnRo
YXQgaXQgaXMgc3RpbGwgcmVhbGx5IGRldmljZSBjZW50cmljIChicmVha2luZyBhZnRlciBvbmUg
Z3QgZmx1c2gpLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
