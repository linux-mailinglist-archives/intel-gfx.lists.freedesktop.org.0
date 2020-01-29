Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5D314D437
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 00:59:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01CD56E4FF;
	Wed, 29 Jan 2020 23:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E502F6E4FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 23:59:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20053599-1500050 for multiple; Wed, 29 Jan 2020 23:59:01 +0000
MIME-Version: 1.0
To: "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <90fcddaaa6ad112eb4790616b39c8ac4b743460e.camel@intel.com>
References: <20200129232345.84512-1-jose.souza@intel.com>
 <158034081430.14720.1142522476870394698@skylake-alporthouse-com>
 <90fcddaaa6ad112eb4790616b39c8ac4b743460e.camel@intel.com>
Message-ID: <158034234049.14720.16465394057765431137@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 29 Jan 2020 23:59:00 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix preallocated barrier list
 append
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBTb3V6YSwgSm9zZSAoMjAyMC0wMS0yOSAyMzo1MzoyMSkKPiBPbiBXZWQsIDIwMjAt
MDEtMjkgYXQgMjM6MzMgKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFF1b3RpbmcgSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSAoMjAyMC0wMS0yOSAyMzoyMzo0NSkKPiA+ID4gT25seSB0aGUg
Zmlyc3QgYW5kIHRoZSBsYXN0IG5vZGVzIHdlcmUgYmVpbmcgYWRkZWQgdG8KPiA+ID4gcmVmLT5w
cmVhbGxvY2F0ZWRfYmFycmllcnMuCj4gPiA+IAo+ID4gPiBJJ20gbm90IGZhbWlsaWFyIHdpdGgg
dGhpcyBwYXJ0IG9mIHRoZSBjb2RlIGJ1dCBpZiB0aGF0IGlzIHRoZQo+ID4gPiBleHBlY3RlZCBi
ZWhhdmlvciBpdCBpcyBsZWFraW5nIHRoZSBub2RlcyBpbiBiZXR3ZWVuLgo+ID4gPiAKPiA+ID4g
UmVuYW1pbmcgdmFyaWFibGVzIHRvIG1ha2UgaXQgbW9yZSBlYXN5IHRvIHJlYWQuCj4gPiA+IAo+
ID4gPiBGaXhlczogODQxMzUwMjIzODE2ICgiZHJtL2k5MTUvZ3Q6IERyb3AgbXV0ZXggc2VyaWFs
aXNhdGlvbiBiZXR3ZWVuCj4gPiA+IGNvbnRleHQgcGluL3VucGluIikKPiA+ID4gQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiBDYzogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gPiA+
IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyB8IDE5ICsrKysr
KysrKystLS0tLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA5
IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfYWN0aXZlLmMKPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2
ZS5jCj4gPiA+IGluZGV4IDlkNjgzMDg4NWQyZS4uM2QyZTdjZjU1ZTUyIDEwMDY0NAo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKPiA+ID4gQEAgLTYwNyw3ICs2MDcsNyBAQCBp
bnQKPiA+ID4gaTkxNV9hY3RpdmVfYWNxdWlyZV9wcmVhbGxvY2F0ZV9iYXJyaWVyKHN0cnVjdCBp
OTE1X2FjdGl2ZSAqcmVmLAo+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MKPiA+ID4gKmVuZ2luZSkKPiA+ID4gIHsK
PiA+ID4gICAgICAgICBpbnRlbF9lbmdpbmVfbWFza190IHRtcCwgbWFzayA9IGVuZ2luZS0+bWFz
azsKPiA+ID4gLSAgICAgICBzdHJ1Y3QgbGxpc3Rfbm9kZSAqcG9zID0gTlVMTCwgKm5leHQ7Cj4g
PiA+ICsgICAgICAgc3RydWN0IGxsaXN0X25vZGUgKmZpcnN0ID0gTlVMTCwgKmxhc3QgPSBOVUxM
Owo+ID4gCj4gPiBsYXN0IGNhbm5vdCBiZSBOVUxMIGF0IHRoZSBlbmQuCj4gCj4gbGFzdCB3aWxs
IGJlIHNldCBpbiB0aGUgZmlyc3QgaXRlcmF0aW9uIGFuZCBpdCB3aWxsIGFsd2F5cyBpbnRlcmF0
ZSBhdAo+IGxlYXN0IG9uY2UgYmVjYXVzZSB0aGUgbWFzayB3aWxsIGF0IGxlYXN0IG1hdGNoIHdp
dGggdGhlIGVuZ2luZSBpbgo+IGk5MTVfYWN0aXZlX2FjcXVpcmVfcHJlYWxsb2NhdGVfYmFycmll
cigpIHBhcmFtZXRlci4KCkkgbWVhbnQgdG8gc2F5IGxhc3QgY2Fubm90IGJlIHVuc2V0IGF0IHRo
ZSBlbmQsIHNvIGluaXRpYWxpc2luZyBpdCBpcwpzaWxseS4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
