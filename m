Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DEEF987D
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 19:21:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42E4896E9;
	Tue, 12 Nov 2019 18:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D219C896E9;
 Tue, 12 Nov 2019 18:21:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19177814-1500050 for multiple; Tue, 12 Nov 2019 18:21:39 +0000
MIME-Version: 1.0
To: Antonio Argenziano <antonio.argenziano@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <75a2acf6-9301-4912-8b46-6e5e2654aadd@intel.com>
References: <20191112154757.7304-1-chris@chris-wilson.co.uk>
 <75a2acf6-9301-4912-8b46-6e5e2654aadd@intel.com>
Message-ID: <157358289793.28106.13889695970048334451@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 12 Nov 2019 18:21:37 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Mark up a few more tests that
 only target GGTT
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbnRvbmlvIEFyZ2Vuemlhbm8gKDIwMTktMTEtMTIgMTg6MTc6NDEpCj4gCj4gCj4g
T24gMTIvMTEvMTkgMDc6NDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IElmIGEgdGVzdCBpcyBv
bmx5IHRhcmdldGluZyB0aGUgR0dUVCBBUEkgYW5kIGl0cyBjb3JuZXIgY2FzZXMsIGl0IGNhbgo+
ID4gb25seSBydW4gaWYgd2UgaGF2ZSBhIG1hcHBhYmxlIGFwZXJ0dXJlLgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENj
OiBBbnRvbmlvIEFyZ2Vuemlhbm8gPGFudG9uaW8uYXJnZW56aWFub0BpbnRlbC5jb20+Cj4gPiAt
LS0KPiA+ICAgbGliL2k5MTUvZ2VtX21tYW4uYyAgICAgICAgICAgICB8IDE5ICsrKysrKysrKysr
KysrKysrKysKPiA+ICAgbGliL2k5MTUvZ2VtX21tYW4uaCAgICAgICAgICAgICB8ICAzICsrKwo+
ID4gICB0ZXN0cy9pOTE1L2dlbV9ndHRfY3B1X3RsYi5jICAgIHwgIDEgKwo+ID4gICB0ZXN0cy9p
OTE1L2dlbV9ndHRfaG9nLmMgICAgICAgIHwgIDEgKwo+ID4gICB0ZXN0cy9pOTE1L2dlbV9ndHRf
c3BlZWQuYyAgICAgIHwgIDIgKysKPiA+ICAgdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYyAgICAg
ICB8ICA1ICstLS0tCj4gPiAgIHRlc3RzL2k5MTUvZ2VtX3RpbGVkX3N3YXBwaW5nLmMgfCAgMSAr
Cj4gPiAgIDcgZmlsZXMgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkK
PiA+IAo+ID4gZGlmZiAtLWdpdCBhL2xpYi9pOTE1L2dlbV9tbWFuLmMgYi9saWIvaTkxNS9nZW1f
bW1hbi5jCj4gPiBpbmRleCAzY2Y5YTZiYmQuLjc2ZDBiZTgyZSAxMDA2NDQKPiA+IC0tLSBhL2xp
Yi9pOTE1L2dlbV9tbWFuLmMKPiA+ICsrKyBiL2xpYi9pOTE1L2dlbV9tbWFuLmMKPiA+IEBAIC0y
NTIsMyArMjUyLDIyIEBAIHZvaWQgKmdlbV9tbWFwX19jcHUoaW50IGZkLCB1aW50MzJfdCBoYW5k
bGUsIHVpbnQ2NF90IG9mZnNldCwgdWludDY0X3Qgc2l6ZSwgdW5zCj4gPiAgICAgICBpZ3RfYXNz
ZXJ0KHB0cik7Cj4gPiAgICAgICByZXR1cm4gcHRyOwo+ID4gICB9Cj4gPiArCj4gPiArYm9vbCBn
ZW1faGFzX2dndHQoaW50IGk5MTUpCj4gCj4gbml0OiBJIHdvdWxkIHB1dCBtYXBwaW5nIG9yIG1h
cCBvciBzb21ldGhpbmcgaW4gdGhlIG5hbWUgdG8gbWFrZSBpdCAKPiBjbGVhciB0aGF0IHRoZSBt
YXBwaW5nIGlzIG5vdCBhY2Nlc3NpYmxlIGJ1dCwgeW91ciBjYWxsIDopLgoKSSBjb3VsZCBnbyB3
aXRoIGhhc19nZ3R0X2FwZXJ0dXJlKCk/IE9yIGhhc19tYXBwYWJsZV9nZ3R0KCk/CkJvdGggaGF2
ZSB0aGVpciBtZXJpdHMuIExlYW5pbmcgdG93YXJkcyBoYXNfbWFwcGFibGVfZ2d0dC4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
