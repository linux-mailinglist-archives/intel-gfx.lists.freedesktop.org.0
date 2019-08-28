Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE3BA0B20
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 22:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A406C89E9E;
	Wed, 28 Aug 2019 20:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81AA289E9E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 20:11:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 13:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="192713531"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 28 Aug 2019 13:11:53 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 13:11:53 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.135]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 13:11:53 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "jason@jlekstrand.net" <jason@jlekstrand.net>, "daniel.vetter@ffwll.ch"
 <daniel.vetter@ffwll.ch>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
Thread-Index: AQHVV3mqz9dp+m3qSUCZtIUHXAtboKcE6KeAgAARkQCAARxlgIAAF8SAgAHW14CACXrWAA==
Date: Wed, 28 Aug 2019 20:11:53 +0000
Message-ID: <e01a7b6890346444f3fa3f78cca1a2315412a37a.camel@intel.com>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
 <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
In-Reply-To: <CAOFGe97==LTH0pUh2idtA0SqQLf=+Tq90h0cBVwhv4gkHLq-7Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <999C460168152F46ABBD30BEDEA2FCBF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: "Vetter, Daniel" <daniel.vetter@intel.com>,
 "kenneth@whitecape.org" <kenneth@whitecape.org>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KDQpQdXNoaW5nIHRoaXMgb25lIGluIGEgZmV3IG1pbnV0ZXMuDQoNCk9uIFRodSwgMjAxOS0w
OC0yMiBhdCAxNDoyNSAtMDUwMCwgSmFzb24gRWtzdHJhbmQgd3JvdGU6DQo+IEFja2VkLWJ5OiBK
YXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+DQo+IA0KPiBPbiBXZWQsIEF1ZyAy
MSwgMjAxOSBhdCAxMDoyMCBBTSBEYW5pZWwgVmV0dGVyIDwNCj4gZGFuaWVsLnZldHRlckBmZnds
bC5jaD4gd3JvdGU6DQo+ID4gT24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMzo1NSBQTSBWaWxsZSBT
eXJqw6Rsw6QNCj4gPiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+
ID4NCj4gPiA+IE9uIFR1ZSwgQXVnIDIwLCAyMDE5IGF0IDAxOjU3OjQ0UE0gLTA3MDAsIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8NCj4gPiB3cm90ZToNCj4gPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4g
T24gOC8yMC8xOSAxMjo1NCBQTSwgRGFuaWVsIFZldHRlciB3cm90ZToNCj4gPiA+ID4gPiBUaGUg
Y3B1IChkZSl0aWxlciBodyBpcyBnb25lLCB0aGlzIHN0b3BwZWQgYmVpbmcgdXNlZnVsLiBQbHVz
DQo+ID4gaXQgbmV2ZXINCj4gPiA+ID4gPiBzdXBwb3J0ZWQgYW55IG9mIHRoZSBmYW5jeSBuZXcg
dGlsaW5nIGZvcm1hdHMsIHdoaWNoIG1lYW5zDQo+ID4gdXNlcnNwYWNlDQo+ID4gPiA+ID4gYWxz
byBzdG9wcGVkIHVzaW5nIHRoZSBtYWdpYyBzaWRlLWNoYW5uZWwgdGhpcyBwcm92aWRlcy4NCj4g
PiA+ID4gPg0KPiA+ID4gPiA+IFRoaXMgd291bGQgdG90YWxseSBicmVhayBhIGxvdCBvZiB0aGUg
aWd0cywgYnV0IHRoZXkncmUNCj4gPiBhbHJlYWR5IGJyb2tlbg0KPiA+ID4gPiA+IGZvciB0aGUg
c2FtZSByZWFzb25zIGFzIHVzZXJzcGFjZSBvbiBnZW4xMiB3b3VsZCBiZS4NCj4gPiA+ID4gPg0K
PiA+ID4gPiA+IHYyOiBMb29rIGF0IGdndHQtPm51bV9mZW5jZXMgaW5zdGVhZCwgdGhhdCBhbHNv
IGF2b2lkcyB0aGUNCj4gPiBuZWVkIGZvciBhDQo+ID4gPiA+ID4gY29tbWVudCAoQ2hyaXMpLiBU
aGlzIGFsc28gbWVhbnMgdGhhdCBnZW4xMiBzdXBwb3J0IHJlYWxseQ0KPiA+IG5lZWRzIHRvDQo+
ID4gPiA+ID4gbWFrZSBzdXJlIG51bV9mZW5jZXMgaXMgc2V0IHRvIDAuIFRoZXJlIGlzIGEgcGF0
Y2ggZm9yIHRoYXQsDQo+ID4gYnV0IGl0DQo+ID4gPiA+ID4gY2hlY2tzIGZvciBIQVNfTUFQUEFC
TEVfQVBFUlRVUkUsIHdoaWNoIEknbSBub3Qgc3VyZSBpcyB0aGUNCj4gPiByaWdodA0KPiA+ID4g
PiA+IHRoaW5nIHJlYWxseS4gQWRkaW5nIHJlbGV2YW50IHBlb3BsZS4NCj4gPiA+ID4gPg0KPiA+
ID4gPg0KPiA+ID4gPiBXZSdkIG9idmlvdXNseSBuZWVkIHRvIG1ha2UgdGhhdCBzZXR0aW5nIGZv
ciBhbGwgZ2VuMTIrLA0KPiA+IGJlY2F1c2UgVEdMDQo+ID4gPiA+IGRvZXMgaGF2ZSBtYXBwYWJs
ZSBhcGVydHVyZS4NCj4gPiA+ID4NCj4gPiA+ID4gQXBhcnQgZnJvbSB0aGUgdGlsaW5nIGlvY3Rs
LCB0aGUgb25seSBwbGFjZSBJIHNlZSB3aGVyZSB3ZSBzZXQNCj4gPiB0aWxpbmcgaXMNCj4gPiA+
ID4gaW50ZWxfYWxsb2NfaW5pdGlhbF9wbGFuZV9vYmooKSwgY2FuIHRoZSB1c2VycyBvZiB0aGF0
IG9iamVjdA0KPiA+IGhhbmRsZSB0aGUNCj4gPiA+ID4gbGFjayBvZiBmZW5jZXMgZ3JhY2VmdWxs
eT8NCj4gPiA+DQo+ID4gPiBHZW40KyBkaXNwbGF5IGVuZ2luZSBoYXMgaXRzIG93biB0aWxpbmcg
Y29udHJvbHMgYW5kIGRvZXNuJ3QgY2FyZQ0KPiA+IGFib3V0DQo+ID4gPiBmZW5jZXMuIFNvIHdl
IHNob3VsZCBiZSBhYmxlIHRvIGxlYXZlIHRoZSBvYmogdGlsaW5nIHNldCB0byBOT05FLg0KPiA+
ID4NCj4gPiA+IEhtbS4gQWN0dWFsbHkgSSB0aGluayB3ZSBzaG91bGQgcmVqZWN0IHRpbGVkIGZy
YW1lYnVmZmVycyBpbiB0aGUNCj4gPiBCSU9TDQo+ID4gPiBmYiB0YWtlb3ZlciBiZWNhdXNlIGZi
ZGV2IG5lZWRzIGEgbGluZWFyIHZpZXcgZm9yIHRoZSBtZW1vcnkuIE5vDQo+ID4gY2FuDQo+ID4g
PiBkbyB3aXRob3V0IHRoZSBmZW5jZS4NCj4gPiANCj4gPiBZZWFoIEkgdGhpbmsgdGhpcyBpcyBq
dXN0IG1vcmUgZmFsbG91dCBmcm9tICJubyBtb3JlIGZlbmNlcyBpbiB0aGUNCj4gPiBodyIuDQo+
ID4gLURhbmllbA0KPiA+IA0KPiA+ID4NCj4gPiA+ID4gV2hlbiBJIHdyb3RlIHRoZSBudW1fZmVu
Y2VzPTAgcGF0Y2ggSSB3YXMNCj4gPiA+ID4gZXhwZWN0aW5nIGRpc3BsYXkgdG8gYmUgdW5hdmFp
bGFibGUsIHNvIEkgZGlkbid0IHJlYWxseSBsb29rIGF0DQo+ID4gdGhhdA0KPiA+ID4gPiBwYXJ0
IG9mIHRoZSBjb2RlLg0KPiA+ID4gPg0KPiA+ID4gPiBJdCdkIGFsc28gYmUgbmljZSB0byBiZSBt
b3JlIGV4cGxpY2l0IHdpdGggZmVuY2luZyBzaW5jZSB3ZQ0KPiA+IHNlZW0gdG8NCj4gPiA+ID4g
b2Z0ZW4gY2FsbCBpOTE1X3ZtYV9waW5faW9tYXAsIHdoaWNoIGltcGxpY2l0bHkgYXBwbGllcyBh
IGZlbmNlDQo+ID4gaWYNCj4gPiA+ID4gbmVlZGVkLCBvbiBvYmplY3RzIHRoYXQgY2FuJ3QgYmUg
dGlsZWQgb3IgaGF2ZSBoYWQgYSBmZW5jZQ0KPiA+IGFzc2lnbmVkIGENCj4gPiA+ID4gZmV3IGxp
bmVzIGJlZm9yZS4gVGhpcyBpcyBtb3JlIGEgbmljZSB0byBoYXZlIHRvdWdoLCBwb3NzaWJseQ0K
PiA+IHRvZ2V0aGVyDQo+ID4gPiA+IHdpdGggYSBzcGxpdCBvZiB0aGUgIm1hcHBhYmxlIiBhbmQg
ImZlbmNlYWJsZSIgYXR0cmlidXRlcyBvZg0KPiA+IHRoZSB2bWEuDQo+ID4gPiA+DQo+ID4gPiA+
IERhbmllbGUNCj4gPiA+ID4NCj4gPiA+ID4gPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4NCj4gPiA+ID4gPiBDYzogU3R1YXJ0IFN1
bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4NCj4gPiA+ID4gPiBDYzogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPiA+ID4gPiA+IENjOiBLZW5uZXRoIEdyYXVu
a2UgPGtlbm5ldGhAd2hpdGVjYXBlLm9yZz4NCj4gPiA+ID4gPiBDYzogSmFzb24gRWtzdHJhbmQg
PGphc29uQGpsZWtzdHJhbmQubmV0Pg0KPiA+ID4gPiA+IENjOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4NCj4gPiA+ID4gPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+ID4gPiA+ID4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMgfCA3ICsrKysrKysN
Cj4gPiA+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4gPiA+ID4gPg0K
PiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dGlsaW5nLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90aWxpbmcu
Yw0KPiA+ID4gPiA+IGluZGV4IGNhMGMyZjQ1MTc0Mi4uZTVkMWFlOGQ0ZGJhIDEwMDY0NA0KPiA+
ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90aWxpbmcuYw0K
PiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90aWxpbmcu
Yw0KPiA+ID4gPiA+IEBAIC0zMTMsMTAgKzMxMywxNCBAQCBpbnQNCj4gPiA+ID4gPiAgIGk5MTVf
Z2VtX3NldF90aWxpbmdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZA0KPiA+ICpk
YXRhLA0KPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZp
bGUpDQo+ID4gPiA+ID4gICB7DQo+ID4gPiA+ID4gKyAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsNCj4gPiA+ID4gPiAgICAgc3RydWN0IGRybV9pOTE1
X2dlbV9zZXRfdGlsaW5nICphcmdzID0gZGF0YTsNCj4gPiA+ID4gPiAgICAgc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iajsNCj4gPiA+ID4gPiAgICAgaW50IGVycjsNCj4gPiA+ID4gPg0K
PiA+ID4gPiA+ICsgICBpZiAoIWRldl9wcml2LT5nZ3R0Lm51bV9mZW5jZXMpDQo+ID4gPiA+ID4g
KyAgICAgICAgICAgcmV0dXJuIC1FT1BOT1RTVVBQOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiAg
ICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1cChmaWxlLCBhcmdzLT5oYW5kbGUpOw0KPiA+
ID4gPiA+ICAgICBpZiAoIW9iaikNCj4gPiA+ID4gPiAgICAgICAgICAgICByZXR1cm4gLUVOT0VO
VDsNCj4gPiA+ID4gPiBAQCAtNDAyLDYgKzQwNiw5IEBAIGk5MTVfZ2VtX2dldF90aWxpbmdfaW9j
dGwoc3RydWN0DQo+ID4gZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLA0KPiA+ID4gPiA+ICAg
ICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOw0KPiA+ID4gPiA+ICAgICBpbnQgZXJy
ID0gLUVOT0VOVDsNCj4gPiA+ID4gPg0KPiA+ID4gPiA+ICsgICBpZiAoIWRldl9wcml2LT5nZ3R0
Lm51bV9mZW5jZXMpDQo+ID4gPiA+ID4gKyAgICAgICAgICAgcmV0dXJuIC1FT1BOT1RTVVBQOw0K
PiA+ID4gPiA+ICsNCj4gPiA+ID4gPiAgICAgcmN1X3JlYWRfbG9jaygpOw0KPiA+ID4gPiA+ICAg
ICBvYmogPSBpOTE1X2dlbV9vYmplY3RfbG9va3VwX3JjdShmaWxlLCBhcmdzLT5oYW5kbGUpOw0K
PiA+ID4gPiA+ICAgICBpZiAob2JqKSB7DQo+ID4gPiA+ID4NCj4gPiA+ID4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiA+ID4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdA0KPiA+ID4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4g
PiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4DQo+ID4gPg0KPiA+ID4gLS0NCj4gPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+ID4gSW50ZWwN
Cj4gPiANCj4gPiANCj4gPiANCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
