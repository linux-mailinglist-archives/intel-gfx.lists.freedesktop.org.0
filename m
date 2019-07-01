Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5325BD43
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 15:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8081A8982D;
	Mon,  1 Jul 2019 13:48:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B75018982D
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 13:48:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17085787-1500050 for multiple; Mon, 01 Jul 2019 14:48:34 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190701100502.15639-1-chris@chris-wilson.co.uk>
 <op.z381a2faxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z381a2faxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156198891091.1583.1294682271205072502@skylake-alporthouse-com>
Date: Mon, 01 Jul 2019 14:48:30 +0100
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915/guc: Avoid reclaim locks
 during reset
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTAxIDEzOjM2OjI4KQo+IE9uIE1vbiwg
MDEgSnVsIDIwMTkgMTI6MDQ6NTEgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBEdXJpbmcgcmVzZXQsIHdlIG11c3QgYmUgdmVy
eSBzZWxlY3RpdmUgaW4gd2hpY2ggbG9ja3Mgd2UgdGFrZSBhcyBtb3N0Cj4gPiBhcmUgdGFpbnRl
ZCBieSBiZWluZyBoZWxkIGFjcm9zcyBhIHdhaXQgb3IgcmVjbGFpbSAoa21hbGxvYykgd2hpY2gK
PiA+IGltcGxpY2l0bHkgd2FpdHMuIEluc2lkZSB0aGUgZ3VjIHJlc2V0IHBhdGgsIHdlIHJlc2V0
IHRoZSBBRFMgdG8gc2FuZQo+ID4gZGVmYXVsdHMsIGJ1dCBtdXN0IGtlZXAgaXQgcGlubmVkIGZy
b20gaW5pdGlhbGlzYXRpb24gdG8gYXZvaWQgaGF2aW5nIHRvCj4gPiBwaW4gaXQgZHVyaW5nIHJl
c2V0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+ID4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+Cj4gCj4gUmV2aWV3ZWQtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1p
Y2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IAo+IGJ1dCBJJ20gbGl0dGxlIHdvcnJpZWQgYWJv
dXQgbGVhdmluZyBzdGFsZSBndWMtPmFkc19ibG9iIGJlbG93Ogo+IAo+ID4gQEAgLTE4Myw3ICsx
ODMsNyBAQCBpbnQgaW50ZWxfZ3VjX2Fkc19jcmVhdGUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+
ID4gdm9pZCBpbnRlbF9ndWNfYWRzX2Rlc3Ryb3koc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+ID4g
IHsKPiA+IC0gICAgIGk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNlKCZndWMtPmFkc192bWEsIDAp
Owo+ID4gKyAgICAgaTkxNV92bWFfdW5waW5fYW5kX3JlbGVhc2UoJmd1Yy0+YWRzX3ZtYSwgSTkx
NV9WTUFfUkVMRUFTRV9NQVApOwo+ID4gIH0KPiAKPiBtYXliZSB0aGVyZSBpcyBhIHdheSB0byBn
ZXQgcHRyIHJpZ2h0IGZyb20gdGhlIHBpbm5lZC9tYXBwZWQgdm1hCj4gd2l0aG91dCBpbnRyb2R1
Y2luZyBleHRyYSBzZXBhcmF0ZSBmaWVsZCB0aGF0IG1pZ2h0IGdvIG91dCBvZiBzeW5jID8KCllv
dSBtZWFuIHRoZSB2YWRkcj8gSSBsb29rIGF0IGl0IGFzIHlvdXIgdG9rZW4gb2Ygb3duZXJzaGlw
OiB0aGlzIGlzIHRoZQphZGRyZXNzIEkgcGlubmVkLiBXaGlsZSB5b3Ugb3duIHRoYXQgcGluLCBp
dCBpcyBub3QgYWxsb3dlZCB0byBjaGFuZ2UuCgpJIGV4cGVjdCwgSWYgd2UgZXZlciBzdGFydCB3
YW50aW5nIHNlcGFyYXRlIGNvbmN1cnJlbnQgdmlld3Mgb2YgdGhlCm9iamVjdCwgdGhlIHJldHVy
biBmcm9tIHBpbl9tYXAgd2lsbCBiZSBpdHMgb3duIGxpdHRsZSByZWZjb3VudCAtLSBvcgpzaW1w
bHkgbm90IGJlIGNhY2hlZC4gU28gdG8gcmVtaW5kIG15c2VsZiwgdGhlIGNhY2hlIGlzIGJlY2F1
c2Ugdm1hcCBpcwpzbG93IGFuZCB3ZSB1c2UgaXQgZnJlcXVlbnRseSBmb3IgY21kcGFyc2luZy4K
ClNvIHdlIGNvdWxkIGp1c3QgdHJhbnNmZXIgb3duZXJzaGlwIG9mIHRoZSBtYXAgZW50aXJlbHkg
dG8gdGhlIGNhbGxlcgphbmQgbGVhdmUgaXQgdG8gdXRpbGl0aWVzIGxpa2UgdGhlIGJ1ZmZlciBj
YWNoZSB0byByZXRhaW4gdGhlIG1hcC4gSQpkb24ndCB0aGluayB3ZSBhY3R1YWxseSBoYXZlIGNv
bmN1cnJlbnQgdXNlcnMgb2YgdGhlIG1hcHMsIGJ1dCBJCndvdWxkbid0IGJldCBvbiBpdC4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
