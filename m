Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B16F053CD47
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 18:32:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B991112E49;
	Fri,  3 Jun 2022 16:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7176C1130BA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 16:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654273968; x=1685809968;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=D2Z/yU0r84BHasKs7DkSiTCoNXVo/k8MQwuYE9IJzPc=;
 b=AbbA1HWcUjKxndifo95Ae+Tc9acANZ5qmv/QgwAi57fnxXX1GO8dLB6K
 AdhCOwXUOQVP+AoQqQq+QHFuJWaIQCKDPbC0myjDc6Vm6MwpYM7oiHuzx
 9enjwXyXrKDLqOEhEdyS/8fUnhQ3v6A2Djsp8yzE3P31eg/ucXXLCnLsm
 daxJSfKavtZd2GdXmjV303vE5gpKBHvABzymeCvJZDih/c04txhcL31Bu
 cktXKlGxA1Rjylubr2X/LYNg7MSsT/rkaWm0IV7WK6VeJGSuxj48OUfTY
 8vJss15sXihXVphfvoqneHtbXOw8cjwo6Ra2fBATfZze4cGTDK0LnxusX A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10367"; a="263946799"
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="263946799"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 09:32:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,275,1647327600"; d="scan'208";a="721810114"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jun 2022 09:32:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 3 Jun 2022 09:32:44 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 3 Jun 2022 09:32:43 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 3 Jun 2022 09:32:43 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to check
 if headless sku
Thread-Index: AQHYdzLK8UjJiA9xg02ohQjugVdPQa0+FgmAgAAInwCAADdiAA==
Date: Fri, 3 Jun 2022 16:32:43 +0000
Message-ID: <0069e1028bfccf5f1c3f7b8d8a129c202f4cf764.camel@intel.com>
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
 <87k09xor2e.fsf@intel.com>
 <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
In-Reply-To: <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <ED7F9205B81FF944A5F8448BD9D59A11@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to
 check if headless sku
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA2LTAzIGF0IDEzOjE0ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyMi0wNi0wMyBhdCAxNTo0MyArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6
DQo+ID4gT24gRnJpLCAwMyBKdW4gMjAyMiwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gRXhwb3J0IGhlYWRsZXNzIHNrdSBiaXQgKGJpdCAx
MykgZnJvbSBvcHJlZ2lvbi0+aGVhZGVyLT5wY29uIGFzIGFuDQo+ID4gPiBpbnRlcmZhY2UgdG8g
Y2hlY2sgaWYgb3VyIGRldmljZSBpcyBoZWFkbGVzcyBjb25maWd1cmF0aW9uLg0KPiA+ID4gDQo+
ID4gPiBCc3BlYzogNTM0NDENCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5jIHwgMTIgKysrKysrKysrKysrDQo+ID4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oIHwgIDcgKysr
KysrKw0KPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gDQo+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJl
Z2lvbi5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdp
b24uYw0KPiA+ID4gaW5kZXggZjMxZThjM2Y4Y2UwLi5lYWIzZjJlNmI3ODYgMTAwNjQ0DQo+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMNCj4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uYw0K
PiA+ID4gQEAgLTUzLDYgKzUzLDggQEANCj4gPiA+ICAjZGVmaW5lIE1CT1hfQVNMRV9FWFQJCUJJ
VCg0KQkvKiBNYWlsYm94ICM1ICovDQo+ID4gPiAgI2RlZmluZSBNQk9YX0JBQ0tMSUdIVAkJQklU
KDUpCS8qIE1haWxib3ggIzINCj4gPiA+ICh2YWxpZCBmcm9tIHYzLngpICovDQo+ID4gPiAgDQo+
ID4gPiArI2RlZmluZSBQQ09OX0hFQURMRVNTX1NLVQlCSVQoMTMpDQo+ID4gDQo+ID4gSGVyZSB3
ZSBnbyBhZ2Fpbi4NCj4gPiANCj4gPiBXaGF0IGRvZXMgaGVhZGxlc3MgbWVhbiBoZXJlPyBUaGUg
c3BlYyBkb2VzIG5vdCBzYXkuIERvZXMgaXQgaGF2ZQ0KPiA+IGRpc3BsYXkgaGFyZHdhcmU/IEFw
cGFyZW50bHkgeWVzLCBzaW5jZSBvdGhlcndpc2Ugd2Ugd291bGRuJ3QgYmUNCj4gPiBoZXJlLg0K
PiANCj4gVGhpcyBpcyBmb3IgaHlicmlkIHNldHVwIHdpdGggc2V2ZXJhbCBkaXNwbGF5IGh3IGFu
ZCB0aGUgcGFuZWwgd29udCBiZQ0KPiBjb25uZWN0ZWQgaW50byBkZXZpY2UgZHJpdmVuIGJ5IGk5
MTUgZHJpdmVyLg0KPiANCj4gPiBXZSBoYXZlIElOVEVMX0RJU1BMQVlfRU5BQkxFRCgpIHdoaWNo
IHNob3VsZCBkbyB0aGUgcmlnaHQgdGhpbmcgd2hlbg0KPiA+IHlvdQ0KPiA+IGRvIGhhdmUgZGlz
cGxheSBoYXJkd2FyZSBhbmQgaGF2ZSBkb25lIG91dHB1dCBzZXR1cCBldGMuIGJ1dCB3YW50IHRv
DQo+ID4gZm9yY2UgdGhlbSBkaXNjb25uZWN0ZWQsIGkuZS4geW91IHRha2UgdGhlIGhhcmR3YXJl
IG92ZXIgcHJvcGVybHksDQo+ID4gYnV0DQo+ID4gcHV0IGl0IHRvIHNsZWVwIGZvciBwb3dlciBz
YXZpbmdzLg0KPiA+IA0KPiA+IE1heWJlIHdlIHNob3VsZCBib2x0IHRoaXMgb3ByZWdpb24gY2hl
Y2sgaW4gdGhhdCBtYWNybz8NCj4gPiANCj4gPiBNYXliZSB3ZSBuZWVkIHRvIHVzZSBJTlRFTF9E
SVNQTEFZX0VOQUJMRUQoKSBhbHNvIHRvIHByZXZlbnQgcG9sbGluZy4NCj4gDQo+IFRoYW5rIHlv
dSBmb3IgcG9pbnRpbmcgdGhpcyBvdXQuIEhBU19ESVNQTEFZIEkgYWxyZWFkeSBub3RpY2UgYW5k
IGl0J3MNCj4gbm90IHN1aXRhYmxlIGZvciB3aGF0IHdlIHdhbnQgaGVyZS4gSSB0aGluayBib2x0
aW5nIHRoaXMgY2hlY2sgaW50bw0KPiBJTlRFTF9ESVNQTEFZX0VOQUJMRUQgYXMgeW91IHN1Z2dl
c3RlZCBpcyBlbm91Z2guIFRoYXQgd2lsbCBwcmV2ZW50DQo+IHdha2luZyB1cCB0aGUgaHcgaW50
byBEMCBzdGF0ZSBmb3IgcG9sbGluZy4NCg0KQSBoZWFkbGVzcyBza3Ugc2hvdWxkIG5vdCBoYXZl
IGFueSBEREkgcG9ydHMgZW5hYmxlZCwgbXVjaCBlYXNpZXIgY2hlY2sgZm9yIHRoYXQuDQoNCj4g
DQo+ID4gDQo+ID4gSSBjZXJ0YWlubHkgd291bGQgbm90IHdhbnQgdG8gYWRkIGFub3RoZXIgbW9k
ZSB0aGF0J3Mgc2VwYXJhdGUgZnJvbQ0KPiA+IEhBU19ESVNQTEFZKCkgYW5kIElOVEVMX0RJU1BM
QVlfRU5BQkxFRCgpLg0KPiANCj4gTm8gbmVlZCBmb3IgdGhpcy4gSSB0aGluayB3ZSBjYW4gZ28g
d2l0aCBJTlRFTF9ESVNQTEFZX0VOQUJMRUQuDQo+ID4gDQo+ID4gPiArDQo+ID4gPiAgc3RydWN0
IG9wcmVnaW9uX2hlYWRlciB7DQo+ID4gPiAgCXU4IHNpZ25hdHVyZVsxNl07DQo+ID4gPiAgCXUz
MiBzaXplOw0KPiA+ID4gQEAgLTExMzUsNiArMTEzNywxNiBAQCBzdHJ1Y3QgZWRpZCAqaW50ZWxf
b3ByZWdpb25fZ2V0X2VkaWQoc3RydWN0DQo+ID4gPiBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nv
bm5lY3RvcikNCj4gPiA+ICAJcmV0dXJuIG5ld19lZGlkOw0KPiA+ID4gIH0NCj4gPiA+ICANCj4g
PiA+ICtib29sIGludGVsX29wcmVnaW9uX2hlYWRsZXNzX3NrdShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkNCj4gPiA+ICt7DQo+ID4gPiArCXN0cnVjdCBpbnRlbF9vcHJlZ2lvbiAqb3By
ZWdpb24gPSAmaTkxNS0+b3ByZWdpb247DQo+ID4gPiArDQo+ID4gPiArCWlmICghb3ByZWdpb24t
PmhlYWRlcikNCj4gPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiA+ICsNCj4gPiA+ICsJcmV0dXJu
IG9wcmVnaW9uLT5oZWFkZXItPnBjb24gJiBQQ09OX0hFQURMRVNTX1NLVTsNCj4gPiANCj4gPiBX
ZSBzaG91bGQgcHJvYmFibHkgc3RhcnQgY2hlY2tpbmcgZm9yIG9wcmVnaW9uIHZlcnNpb24gZm9y
IHRoaXMgc3R1ZmYNCj4gPiB0b28uDQo+ID4gDQo+IA0KPiBZZXMsIEkgd2lsbCBkbyB0aGlzIGNo
YW5nZS4NCj4gDQo+ID4gDQo+ID4gQlIsDQo+ID4gSmFuaS4NCj4gPiANCj4gPiA+ICt9DQo+ID4g
PiArDQo+ID4gPiAgdm9pZCBpbnRlbF9vcHJlZ2lvbl9yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkNCj4gPiA+ICB7DQo+ID4gPiAgCXN0cnVjdCBpbnRlbF9vcHJlZ2lvbiAq
b3ByZWdpb24gPSAmaTkxNS0+b3ByZWdpb247DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lvbi5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uaA0KPiA+ID4gaW5kZXggODJjYzBiYTM0
YWY3Li41YWQ5NmUxZDgyNzggMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmgNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uaA0KPiA+ID4gQEAgLTc2LDYgKzc2LDggQEAgaW50
IGludGVsX29wcmVnaW9uX25vdGlmeV9hZGFwdGVyKHN0cnVjdA0KPiA+ID4gZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsDQo+ID4gPiAgaW50IGludGVsX29wcmVnaW9uX2dldF9wYW5lbF90eXBl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiAqZGV2X3ByaXYpOw0KPiA+ID4gIHN0cnVj
dCBlZGlkICppbnRlbF9vcHJlZ2lvbl9nZXRfZWRpZChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+
ID4gPiAqY29ubmVjdG9yKTsNCj4gPiA+ICANCj4gPiA+ICtib29sIGludGVsX29wcmVnaW9uX2hl
YWRsZXNzX3NrdShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+ID4gPiArDQo+ID4g
PiAgI2Vsc2UgLyogQ09ORklHX0FDUEkqLw0KPiA+ID4gIA0KPiA+ID4gIHN0YXRpYyBpbmxpbmUg
aW50IGludGVsX29wcmVnaW9uX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiAq
ZGV2X3ByaXYpDQo+ID4gPiBAQCAtMTI3LDYgKzEyOSwxMSBAQCBpbnRlbF9vcHJlZ2lvbl9nZXRf
ZWRpZChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gPiAqY29ubmVjdG9yKQ0KPiA+ID4gIAly
ZXR1cm4gTlVMTDsNCj4gPiA+ICB9DQo+ID4gPiAgDQo+ID4gPiArYm9vbCBpbnRlbF9vcHJlZ2lv
bl9oZWFkbGVzc19za3Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gPiArew0K
PiA+ID4gKwlyZXR1cm4gZmFsc2U7DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4gICNlbmRpZiAv
KiBDT05GSUdfQUNQSSAqLw0KPiA+ID4gIA0KPiA+ID4gICNlbmRpZg0KPiANCg0K
