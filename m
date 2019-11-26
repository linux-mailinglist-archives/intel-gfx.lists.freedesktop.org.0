Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CCA109DBB
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 13:18:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB9A89950;
	Tue, 26 Nov 2019 12:18:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B30989950
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 12:18:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19343324-1500050 for multiple; Tue, 26 Nov 2019 12:18:13 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191126065521.2331017-1-chris@chris-wilson.co.uk>
 <1895e03c-22d5-6536-74ed-bda6c498c2f0@linux.intel.com>
In-Reply-To: <1895e03c-22d5-6536-74ed-bda6c498c2f0@linux.intel.com>
Message-ID: <157477068734.15944.7173504291595694406@skylake-alporthouse-com>
Date: Tue, 26 Nov 2019 12:18:07 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reduce nested
 prepare_remote_context() to a trylock
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNiAxMjoxNTo1OCkKPiAKPiBPbiAyNi8x
MS8yMDE5IDA2OjU1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBPbiBjb250ZXh0IHJldGlyaW5n
LCB3ZSBtYXkgaW52b2tlIHRoZSBrZXJuZWxfY29udGV4dCB0byB1bnBpbiB0aGlzCj4gPiBjb250
ZXh0LiBFbHNld2hlcmUsIHdlIG1heSB1c2UgdGhlIGtlcm5lbF9jb250ZXh0IHRvIG1vZGlmeSB0
aGlzCj4gPiBjb250ZXh0LiBUaGlzIGN1cnJlbnRseSBsZWFkcyB0byBhbiBBQi1CQSBsb2NrIGlu
dmVyc2lvbiwgc28gd2UgbmVlZCB0bwo+ID4gYmFjay1vZmYgZnJvbSB0aGUgY29udGVuZGVkIGxv
Y2ssIGFuZCByZXBlYXQuCj4gPiAKPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0
b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE3MzIKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyB8IDYgKystLS0tCj4gPiAgIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKPiA+IGluZGV4IGVlOWQyYmNkMmMxMy4uNGZjYjk4
Zjk2ZGE2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMK
PiA+IEBAIC0zMTAsMTAgKzMxMCw4IEBAIGludCBpbnRlbF9jb250ZXh0X3ByZXBhcmVfcmVtb3Rl
X3JlcXVlc3Qoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+ID4gICAgICAgR0VNX0JVR19PTihy
cS0+aHdfY29udGV4dCA9PSBjZSk7Cj4gPiAgIAo+ID4gICAgICAgaWYgKHJjdV9hY2Nlc3NfcG9p
bnRlcihycS0+dGltZWxpbmUpICE9IHRsKSB7IC8qIHRpbWVsaW5lIHNoYXJpbmchICovCj4gPiAt
ICAgICAgICAgICAgIGVyciA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZV9uZXN0ZWQoJnRsLT5t
dXRleCwKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBTSU5HTEVfREVQVEhfTkVTVElORyk7Cj4gPiAtICAgICAgICAgICAgIGlmIChlcnIpCj4g
PiAtICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiA+ICsgICAgICAgICAgICAgaWYg
KCFtdXRleF90cnlsb2NrKCZ0bC0+bXV0ZXgpKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJl
dHVybiAtRUFHQUlOOwo+ID4gICAKPiA+ICAgICAgICAgICAgICAgLyogUXVldWUgdGhpcyBzd2l0
Y2ggYWZ0ZXIgY3VycmVudCBhY3Rpdml0eSBieSB0aGlzIGNvbnRleHQuICovCj4gPiAgICAgICAg
ICAgICAgIGVyciA9IGk5MTVfYWN0aXZlX2ZlbmNlX3NldCgmdGwtPmxhc3RfcmVxdWVzdCwgcnEp
Owo+ID4gCj4gCj4gUGxlYXNlIGp1c3QgZHJvcCBhIHNob3J0IGNvbW1lbnQgYWJvdmUgdGhlIHRy
eWxvY2sgc2luY2Ugd2l0aCBnaXQgYmxhbWUgCj4gaXQgaXMgb2Z0ZW4gdmVyeSBoYXJkIHRvIGZp
bmQgdGhlIGNvbW1pdC4KCk9rLiBJJ20gc3RpbGwgaG9waW5nIHRvIGZpbmQgYW5vdGhlciB3YXkg
dG8gcHJvdmlkZSB0aGUgc2VyaWFsaXNhdGlvbgpjbGVhbmx5LCBidXQgd2l0aCBlbmdpbmVfcmV0
aXJlKCkgYmVpbmcgbW9yZSBhZ2dyZXNzaXZlLCB0aGUgcmF0ZSBvZgpjb250ZW50aW9uIGhhcyBp
bmNyZWFzZWQgOigKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
