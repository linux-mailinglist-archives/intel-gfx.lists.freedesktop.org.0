Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D1D109DD8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 13:23:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1D066E317;
	Tue, 26 Nov 2019 12:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A3E6E32A
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 12:22:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19343381-1500050 for multiple; Tue, 26 Nov 2019 12:23:01 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191126065521.2331017-1-chris@chris-wilson.co.uk>
 <1895e03c-22d5-6536-74ed-bda6c498c2f0@linux.intel.com>
 <157477068734.15944.7173504291595694406@skylake-alporthouse-com>
In-Reply-To: <157477068734.15944.7173504291595694406@skylake-alporthouse-com>
Message-ID: <157477097514.15944.5772732259713182365@skylake-alporthouse-com>
Date: Tue, 26 Nov 2019 12:22:55 +0000
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjYgMTI6MTg6MDcpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0xMS0yNiAxMjoxNTo1OCkKPiA+IAo+ID4gT24gMjYvMTEvMjAxOSAw
Njo1NSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBPbiBjb250ZXh0IHJldGlyaW5nLCB3ZSBt
YXkgaW52b2tlIHRoZSBrZXJuZWxfY29udGV4dCB0byB1bnBpbiB0aGlzCj4gPiA+IGNvbnRleHQu
IEVsc2V3aGVyZSwgd2UgbWF5IHVzZSB0aGUga2VybmVsX2NvbnRleHQgdG8gbW9kaWZ5IHRoaXMK
PiA+ID4gY29udGV4dC4gVGhpcyBjdXJyZW50bHkgbGVhZHMgdG8gYW4gQUItQkEgbG9jayBpbnZl
cnNpb24sIHNvIHdlIG5lZWQgdG8KPiA+ID4gYmFjay1vZmYgZnJvbSB0aGUgY29udGVuZGVkIGxv
Y2ssIGFuZCByZXBlYXQuCj4gPiA+IAo+ID4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVk
ZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNzMyCj4gPiA+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiAtLS0KPiA+ID4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgfCA2ICsrLS0tLQo+ID4gPiAg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiA+IAo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4gPiA+IGluZGV4IGVl
OWQyYmNkMmMxMy4uNGZjYjk4Zjk2ZGE2IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4gPiA+IEBAIC0zMTAsMTAgKzMxMCw4IEBAIGludCBpbnRl
bF9jb250ZXh0X3ByZXBhcmVfcmVtb3RlX3JlcXVlc3Qoc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LAo+ID4gPiAgICAgICBHRU1fQlVHX09OKHJxLT5od19jb250ZXh0ID09IGNlKTsKPiA+ID4gICAK
PiA+ID4gICAgICAgaWYgKHJjdV9hY2Nlc3NfcG9pbnRlcihycS0+dGltZWxpbmUpICE9IHRsKSB7
IC8qIHRpbWVsaW5lIHNoYXJpbmchICovCj4gPiA+IC0gICAgICAgICAgICAgZXJyID0gbXV0ZXhf
bG9ja19pbnRlcnJ1cHRpYmxlX25lc3RlZCgmdGwtPm11dGV4LAo+ID4gPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgU0lOR0xFX0RFUFRIX05FU1RJ
TkcpOwo+ID4gPiAtICAgICAgICAgICAgIGlmIChlcnIpCj4gPiA+IC0gICAgICAgICAgICAgICAg
ICAgICByZXR1cm4gZXJyOwo+ID4gPiArICAgICAgICAgICAgIGlmICghbXV0ZXhfdHJ5bG9jaygm
dGwtPm11dGV4KSkKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUFHQUlOOwo+
ID4gPiAgIAo+ID4gPiAgICAgICAgICAgICAgIC8qIFF1ZXVlIHRoaXMgc3dpdGNoIGFmdGVyIGN1
cnJlbnQgYWN0aXZpdHkgYnkgdGhpcyBjb250ZXh0LiAqLwo+ID4gPiAgICAgICAgICAgICAgIGVy
ciA9IGk5MTVfYWN0aXZlX2ZlbmNlX3NldCgmdGwtPmxhc3RfcmVxdWVzdCwgcnEpOwo+ID4gPiAK
PiA+IAo+ID4gUGxlYXNlIGp1c3QgZHJvcCBhIHNob3J0IGNvbW1lbnQgYWJvdmUgdGhlIHRyeWxv
Y2sgc2luY2Ugd2l0aCBnaXQgYmxhbWUgCj4gPiBpdCBpcyBvZnRlbiB2ZXJ5IGhhcmQgdG8gZmlu
ZCB0aGUgY29tbWl0Lgo+IAo+IE9rLiBJJ20gc3RpbGwgaG9waW5nIHRvIGZpbmQgYW5vdGhlciB3
YXkgdG8gcHJvdmlkZSB0aGUgc2VyaWFsaXNhdGlvbgo+IGNsZWFubHksIGJ1dCB3aXRoIGVuZ2lu
ZV9yZXRpcmUoKSBiZWluZyBtb3JlIGFnZ3Jlc3NpdmUsIHRoZSByYXRlIG9mCj4gY29udGVudGlv
biBoYXMgaW5jcmVhc2VkIDooCgpIbW0uIFN0YXJpbmcgYXQgaTkxNV9hY3RpdmVfZmVuY2Vfc2V0
KCkuLi4gVGhhdCBjb3VsZCBiZSBtYWRlIHRvIGJlCmF0b21pYyB3aXRoIG9ubHkgYSBzbWFsbCBh
bW91bnQgb2YgaGFzc2xlLiAoQnkgc21hbGwsIEkgbWVhbiBieSB0aGUKdXN1YWwgUkNVIHN0YW5k
YXJkcy4pCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
