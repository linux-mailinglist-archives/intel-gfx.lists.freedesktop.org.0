Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1098BEFAD
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 12:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D34C66ECA6;
	Thu, 26 Sep 2019 10:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FE576ECA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 10:34:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18624946-1500050 for multiple; Thu, 26 Sep 2019 11:34:03 +0100
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190926100635.9416-6-michal.winiarski@intel.com>
References: <20190926100635.9416-1-michal.winiarski@intel.com>
 <20190926100635.9416-6-michal.winiarski@intel.com>
Message-ID: <156949404019.4979.12711962148464899454@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 11:34:00 +0100
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/execlists: Don't allocate
 scratch
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

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAxOS0wOS0yNiAxMTowNjozNSkKPiBXZSdyZSBu
byBsb25nZXIgdXNpbmcgaXQgb24gZXhlY2xpc3RzIHBsYXRmb3Jtcy4gVGhlcmUncyBubyBwb2lu
dCBpbgo+IGFsbG9jYXRpbmcgaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJz
a2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMgfCAyIC0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
LmMgICAgICAgIHwgNiArKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2NzLmMKPiBpbmRleCBmNDUxZDUwNzZiZGUuLmE0ZTVhY2VmZjY3OCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gQEAgLTY2OSw4ICs2NjksNiBAQCBz
dGF0aWMgaW50IG1lYXN1cmVfYnJlYWRjcnVtYl9kdyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCj4gICAgICAgICBzdHJ1Y3QgbWVhc3VyZV9icmVhZGNydW1iICpmcmFtZTsKPiAgICAg
ICAgIGludCBkdyA9IC1FTk9NRU07Cj4gIAo+IC0gICAgICAgR0VNX0JVR19PTighZW5naW5lLT5n
dC0+c2NyYXRjaCk7Cj4gLQo+ICAgICAgICAgZnJhbWUgPSBremFsbG9jKHNpemVvZigqZnJhbWUp
LCBHRlBfS0VSTkVMKTsKPiAgICAgICAgIGlmICghZnJhbWUpCj4gICAgICAgICAgICAgICAgIHJl
dHVybiAtRU5PTUVNOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+IGluZGV4IGVlZjli
ZGFlOGViYi4uZTEzNWE2NmI3MjQyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5j
Cj4gQEAgLTMyOSw2ICszMjksOSBAQCBzdGF0aWMgaW50IGludGVsX2d0X2luaXRfc2NyYXRjaChz
dHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25lZCBpbnQgc2l6ZSkKPiAgICAgICAgIHN0cnVjdCBp
OTE1X3ZtYSAqdm1hOwo+ICAgICAgICAgaW50IHJldDsKPiAgCj4gKyAgICAgICBpZiAoSEFTX0VY
RUNMSVNUUyhpOTE1KSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIDA7CgpQdXNoIHRoZSBkZWNp
c2lvbiB0byB0aGUgYmFja2VuZHMgdGhlbiwgYW5kCgppZiAoZ3QtPnNjcmF0Y2gpCglyZXR1cm47
Cgo+ICsKPiAgICAgICAgIG9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3RvbGVuKGk5MTUs
IHNpemUpOwo+ICAgICAgICAgaWYgKCFvYmopCj4gICAgICAgICAgICAgICAgIG9iaiA9IGk5MTVf
Z2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc2l6ZSk7Cj4gQEAgLTM1OCw2ICszNjEs
OSBAQCBzdGF0aWMgaW50IGludGVsX2d0X2luaXRfc2NyYXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0
LCB1bnNpZ25lZCBpbnQgc2l6ZSkKPiAgCj4gIHN0YXRpYyB2b2lkIGludGVsX2d0X2Zpbmlfc2Ny
YXRjaChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICB7Cj4gKyAgICAgICBpZiAoSEFTX0VYRUNMSVNU
UyhndC0+aTkxNSkpCj4gKyAgICAgICAgICAgICAgIHJldHVybjsKCk5vdCByZXF1aXJlZCwgYXMg
cmVsZWFzZSBOVUxMIGlzIGEgbm8tb3AuIEFmdGVyIHB1c2hpbmcgdGhlIGluaXQgdG8gdGhlCmJh
Y2tlbmRzLCB3ZSBrZWVwIHRoZSBjZW50cmFsIGZyZWUgYXQgdGhlIGVuZCwgYWdub3N0aWMgdG8g
d2hldGhlciBvciBub3QKd2UgbmVlZGVkIHRoZSBzY3JhdGNoLgoKPiArCj4gICAgICAgICBpOTE1
X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSgmZ3QtPnNjcmF0Y2gsIDApOwo+ICB9Cj4gIAo+IC0tIAo+
IDIuMjEuMAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
