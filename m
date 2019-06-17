Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C351490A8
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 21:57:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5718889B97;
	Mon, 17 Jun 2019 19:57:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 571A689B97
 for <Intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 19:57:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16932162-1500050 for multiple; Mon, 17 Jun 2019 20:57:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
 <20190617181236.7981-9-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190617181236.7981-9-tvrtko.ursulin@linux.intel.com>
Message-ID: <156080145049.7889.17163304169210411070@skylake-alporthouse-com>
Date: Mon, 17 Jun 2019 20:57:30 +0100
Subject: Re: [Intel-gfx] [RFC 08/33] drm/i915: Use intel_uncore_rmw in
 intel_gt_init_swizzling
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNyAxOToxMjoxMSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFR3byBlYXN5IG9wcG9y
dHVuaXRpZXMgdG8gY29tcGFjdCB0aGUgY29kZSBieSB1c2luZyB0aGUgZXhpc3RpbmcgaGVscGVy
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Cj4gU3VnZ2VzdGVkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIHwg
OSArKy0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVu
Y2VfcmVnLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYwo+IGlu
ZGV4IGRkMDk3OTBjNDIwZC4uYmNhYzM1OWVjNjYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKPiBAQCAtODQ0LDE3ICs4NDQsMTIgQEAgdm9pZCBpbnRl
bF9ndF9pbml0X3N3aXp6bGluZyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICAgICAgICAgICAgIGk5
MTUtPm1tLmJpdF82X3N3aXp6bGVfeCA9PSBJOTE1X0JJVF82X1NXSVpaTEVfTk9ORSkKPiAgICAg
ICAgICAgICAgICAgcmV0dXJuOwo+ICAKPiAtICAgICAgIGludGVsX3VuY29yZV93cml0ZSh1bmNv
cmUsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgRElTUF9BUkJfQ1RMLAo+IC0gICAgICAg
ICAgICAgICAgICAgICAgICAgIGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgRElTUF9BUkJfQ1RM
KSB8Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgRElTUF9USUxFX1NVUkZBQ0VfU1dJWlpM
SU5HKTsKPiArICAgICAgIGludGVsX3VuY29yZV9ybXcodW5jb3JlLCBESVNQX0FSQl9DVEwsIDAs
IERJU1BfVElMRV9TVVJGQUNFX1NXSVpaTElORyk7Cj4gIAo+ICAgICAgICAgaWYgKElTX0dFTihp
OTE1LCA1KSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICAKPiAtICAgICAgIGludGVsX3Vu
Y29yZV93cml0ZSh1bmNvcmUsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgVElMRUNUTCwK
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFRJ
TEVDVEwpIHwgVElMRUNUTF9TV1pDVEwpOwo+ICsgICAgICAgaW50ZWxfdW5jb3JlX3Jtdyh1bmNv
cmUsIFRJTEVDVEwsIDAsIFRJTEVDVExfU1daQ1RMKTsKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
