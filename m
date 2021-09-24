Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3BE417C08
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 21:57:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2496E23B;
	Fri, 24 Sep 2021 19:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0096E23B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 19:57:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10117"; a="309710221"
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="309710221"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 12:57:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,320,1624345200"; d="scan'208";a="559797134"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga002.fm.intel.com with ESMTP; 24 Sep 2021 12:57:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 24 Sep 2021 20:57:52 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 24 Sep 2021 12:57:51 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 06/13] drm/i915/tc: Don't keep legacy TypeC ports in
 connected state w/o a sink
Thread-Index: AQHXrn7l/1lJs2Abz0m8vZGjNcDECqu0FtmA
Date: Fri, 24 Sep 2021 19:57:51 +0000
Message-ID: <6c88e7ff5d6f73d2cbdedc8aefc685531c9f8e6a.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-7-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <9FB52AF524AF744E8CACE0FFAF602420@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/tc: Don't keep legacy TypeC
 ports in connected state w/o a sink
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

T24gVHVlLCAyMDIxLTA5LTIxIGF0IDAzOjIzICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEEg
Zm9sbG93LXVwIHBhdGNoIHdpbGwgZGlzY29ubmVjdC9yZWNvbm5lY3QgUEhZcyBhcm91bmQgQVVY
IHRyYW5zZmVycw0KPiBhbmQgbW9kZXNldCBlbmFibGUvZGlzYWJsZXMuIFRvIHByZXBhcmUgZm9y
IHRoYXQgYW5kIG1ha2UgdGhpbmdzDQo+IGNvbnNpc3RlbnQgZm9yIGFsbCBUeXBlQyBtb2RlcyBz
dG9wIGNvbm5lY3RpbmcgdGhlIFBIWSBpbiBsZWdhY3kgbW9kZQ0KPiB3aXRob3V0IGEgc2luayBi
ZWluZyBjb25uZWN0ZWQuIFRoaXMgd2FzIGRvbmUgYmVmb3JlIHNpbmNlIGluIGxlZ2FjeQ0KPiBt
b2RlIHRoZSBQSFkgaXMgZGVkaWNhdGVkIHRvIGRpc3BsYXkgdXNhZ2UsIHNvIHRoZXJlIHdhcyBu
byBwb2ludCBpbg0KPiBkaXNjb25uZWN0aW5nIGl0LiBIb3dldmVyIGFmdGVyIHRoZSBmb2xsb3ct
dXAgY2hhbmdlcyB0aGUgVEMtY29sZA0KPiBibG9ja2luZyBwb3dlciBkb21haW5zIHdpbGwgYmUg
aGVsZCBhcyBsb25nIGFzIHRoZSBQSFkgaXMgaW4gdGhlDQo+IGNvbm5lY3RlZCBzdGF0ZSwgc28g
d2UnbGwgbmVlZCB0byBkaXNjb25uZWN0L3JlLWNvbm5lY3QgdGhlIFBIWSBpbiBhbGwNCj4gVHlw
ZUMgbW9kZXMgdG8gYWxsb3cgZm9yIHBvd2VyIHNhdmluZy4NCg0KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYt
Ynk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAxMiArLS0tLS0tLS0tLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMTEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDUxMWM0NmUzNmUyMzcuLmFh
NGMxZTVlMGMwMDIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Rj
LmMNCj4gQEAgLTUxMSw4ICs1MTEsNiBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcGh5X2Rpc2Nvbm5l
Y3Qoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICB7DQo+ICAJc3dpdGNo
IChkaWdfcG9ydC0+dGNfbW9kZSkgew0KPiAgCWNhc2UgVENfUE9SVF9MRUdBQ1k6DQo+IC0JCS8q
IE5vdGhpbmcgdG8gZG8sIHdlIG5ldmVyIGRpc2Nvbm5lY3QgZnJvbSBsZWdhY3kgbW9kZSAqLw0K
PiAtCQlicmVhazsNCj4gIAljYXNlIFRDX1BPUlRfRFBfQUxUOg0KPiAgCQl0Y19waHlfdGFrZV9v
d25lcnNoaXAoZGlnX3BvcnQsIGZhbHNlKTsNCj4gIAkJZGlnX3BvcnQtPnRjX21vZGUgPSBUQ19Q
T1JUX1RCVF9BTFQ7DQo+IEBAIC01ODAsOSArNTc4LDcgQEAgaW50ZWxfdGNfcG9ydF9nZXRfdGFy
Z2V0X21vZGUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAJaWYgKGxp
dmVfc3RhdHVzX21hc2spDQo+ICAJCXJldHVybiBmbHMobGl2ZV9zdGF0dXNfbWFzaykgLSAxOw0K
PiAgDQo+IC0JcmV0dXJuIHRjX3BoeV9zdGF0dXNfY29tcGxldGUoZGlnX3BvcnQpICYmDQo+IC0J
ICAgICAgIGRpZ19wb3J0LT50Y19sZWdhY3lfcG9ydCA/IFRDX1BPUlRfTEVHQUNZIDoNCj4gLQkJ
CQkJICBUQ19QT1JUX1RCVF9BTFQ7DQo+ICsJcmV0dXJuIFRDX1BPUlRfVEJUX0FMVDsNCj4gIH0N
Cj4gIA0KPiAgc3RhdGljIHZvaWQgaW50ZWxfdGNfcG9ydF9yZXNldF9tb2RlKHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiBAQCAtNjQzLDE0ICs2MzksOCBAQCB2b2lkIGlu
dGVsX3RjX3BvcnRfc2FuaXRpemUoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQp
DQo+ICAJCQkJICAgICJQb3J0ICVzOiBQSFkgZGlzY29ubmVjdGVkIHdpdGggJWQgYWN0aXZlIGxp
bmsocylcbiIsDQo+ICAJCQkJICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUsIGFjdGl2ZV9saW5r
cyk7DQo+ICAJCWludGVsX3RjX3BvcnRfbGlua19pbml0X3JlZmNvdW50KGRpZ19wb3J0LCBhY3Rp
dmVfbGlua3MpOw0KPiAtDQo+IC0JCWdvdG8gb3V0Ow0KPiAgCX0NCj4gIA0KPiAtCWlmIChkaWdf
cG9ydC0+dGNfbGVnYWN5X3BvcnQpDQo+IC0JCWljbF90Y19waHlfY29ubmVjdChkaWdfcG9ydCwg
MSk7DQo+IC0NCj4gLW91dDoNCj4gIAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUG9ydCAlczog
c2FuaXRpemUgbW9kZSAoJXMpXG4iLA0KPiAgCQkgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSwN
Cj4gIAkJICAgIHRjX3BvcnRfbW9kZV9uYW1lKGRpZ19wb3J0LT50Y19tb2RlKSk7DQoNCg==
