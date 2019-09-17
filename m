Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 080B5B5850
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 00:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2036ED8A;
	Tue, 17 Sep 2019 22:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDDC16ED8A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 22:59:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 15:59:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,518,1559545200"; d="scan'208";a="189074392"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga003.jf.intel.com with ESMTP; 17 Sep 2019 15:59:15 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Sep 2019 15:59:15 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.247]) with mapi id 14.03.0439.000;
 Tue, 17 Sep 2019 15:59:15 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "lucas.de.marchi@gmail.com" <lucas.de.marchi@gmail.com>
Thread-Topic: [Intel-gfx] [PATCH 04/14] drm/i915/tgl: Fix driver crash when
 update_active_dpll is called
Thread-Index: AQHVaoNBVqZmewoQeUudD4ClWn9ns6crLMaAgAXKmQA=
Date: Tue, 17 Sep 2019 22:59:14 +0000
Message-ID: <ee6f51813958ed42b8426c515d3cc7b684f9ad70.camel@intel.com>
References: <20190913223251.354877-1-jose.souza@intel.com>
 <20190913223251.354877-5-jose.souza@intel.com>
 <CAKi4VAKxwwnpT8J_4FwrgKDEaEgzZacy_H+20dCDDQ4VYUF5aA@mail.gmail.com>
In-Reply-To: <CAKi4VAKxwwnpT8J_4FwrgKDEaEgzZacy_H+20dCDDQ4VYUF5aA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <0ACDC9C4A28FAC45AEAF69C367213489@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/14] drm/i915/tgl: Fix driver crash when
 update_active_dpll is called
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA5LTEzIGF0IDIzOjMyIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIEZyaSwgU2VwIDEzLCAyMDE5IGF0IDM6MzMgUE0gSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YQ0KPiA8am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEZyb206ICJUYXlsb3IsIENs
aW50b24gQSIgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPg0KPiA+IA0KPiA+IFRHTCBQTEwg
ZnVuY3Rpb24gdGFibGUgZG9lc24ndCBpbmNsdWRlIGFuZCB1cGRhdGVfYWN0aXZlX3BsbA0KPiA+
IGZ1bmN0aW9uLg0KPiA+IFRoZSBkcml2ZXIgYXR0ZW1wdHMgdG8gbWFrZSBhIGNhbGwgdG8gdGhp
cyBmdW5jdGlvbiBhbmQgY3Jhc2hlcw0KPiA+IGR1cmluZw0KPiA+IFBMTCBjaGFuZ2VzLg0KPiAN
Cj4gdGhlIGNyYXNoIHdvdWxkIG9ubHkgb2NjdXIgaWYgdGhlIHBvcnQgd2FzIGluaXRpYWxpemVk
LiBUaGUgb3JkZXJpbmcNCj4gaW4gdGhpcyBzZXJpZXMgbWVhbnMgdGhpcyBpcw0KPiBub3QgYSAi
Zml4IiBidXQgcmF0aGVyIGZpbmlzaGluZyB0aGUgaW1wbGVtZW50YXRpb24gZm9yIFRDIHBvcnRz
DQo+IGJlZm9yZSBpbml0aWFsaXppbmcgdGhlbS4gU28gd2UgbWF5DQo+IHdhbnQgdG8gYWRqdXN0
IHRoZSBjb21taXQgbWVzc2FnZSBhY2NvcmRpbmdseS4gVGhlIHJlYXNvbiB3ZSBtaXNzZWQNCj4g
dGhhdCBmb3IgVEdMIGlzIHRoYXQgaXRzIG5lZWQgY2FtZQ0KPiBpbiBwYXJhbGxlbCB0byB0aGUg
VEdMIHN1cHBvcnQgaGl0dGluZyB1cHN0cmVhbS4NCj4gDQoNCk9rYXkgd2lsbCBjaGFuZ2UgY29t
bWl0IG1lc3NhZ2UgYW5kIGRlc2NyaXB0aW9uIHRvOg0KDQpkcm0vaTkxNS90Z2wvcGxsOiBTZXQg
dXBkYXRlX2FjdGl2ZV9kcGxsDQoNCkNvbW1pdCAyNGE3YmZlMGMyZDcgKCJkcm0vaTkxNTogS2Vl
cCB0aGUgVHlwZUMgcG9ydCBtb2RlIGZpeGVkIHdoZW4gdGhlDQpwb3J0IGlzIGFjdGl2ZSIpIGFk
ZGVkIHRoaXMgbmV3IGhvb2sgd2hpbGUgaW4gcGFyYWxsZWwgVEdMIHVwc3RyZWFtIHdhcw0KaGFw
cGVuaW5nIGFuZCB0aGlzIHdhcyBtaXNzZWQuDQpXaXRob3V0IHRoaXMgZHJpdmVyIHdpbGwgY3Jh
c2ggd2hlbiBUQyBEREkgaXMgYWRkZWQgYW5kIGRyaXZlciBpcw0KcHJlcGFyaW5nIHRvIGRvIGEg
ZnVsbCBtb2Rlc2V0Lg0KDQpTb3VuZHMgZ29vZD8NCg0KDQo+IE15IG5pdCB3aXRoIHRoaXMgaG9v
ayBpcyB0aGF0IGB1cGRhdGVfYWN0aXZlX2RwbGxgIGlzIGV4Y2x1c2l2ZWx5DQo+IHVzZWQNCj4g
YnkgKlRDKiBwb3J0cyBvbiBnZW4gMTErIGFuZA0KPiBhKSBpdCdzICBub3QgY2xlYXIgYWJvdXQg
dGhhdCBmcm9tIHRoZSBuYW1lIGFuZC9vciBiKSBpZiBpdCdzIGdlbmVyaWMNCj4gaXQgc2hvdWxk
IG5vdCBjcmFzaCB3aGVuIGl0J3MgbWlzc2luZy4NCj4gDQo+IEkgdGhpbmsgSW1yZSBoYWQgYSBw
YXRjaCB0byBhZGRyZXNzIGl0LCBhdCBsZWFzdCByZW5hbWluZyB0aGUgaG9vaywgSQ0KPiBkb24n
dCByZW1lbWJlci4gK0ltcmUuDQoNCldlbGwgd2UgY2FuIGRvIHRoYXQgb24gdG9wIG9yIGluIElt
cmUgc2VyaWVzIG5vdCBwbGFuaW5nIHRvIGFkZHJlc3MNCnRoaXMgaW4gaGVyZS4NCg0KPiANCj4g
THVjYXMgRGUgTWFyY2hpDQoNCkBDbGludA0KDQpMb29rcyBsaWtlIGdpdCBzZW5kLWVtYWlsIGRv
bid0IGxpa2UgIiwiIGluIHRoZSBuYW1lIGFuZCByZXBsYWNlcyB5b3VyDQplbWFpbCBhZGRyZXNz
IHRvIFRheWxvckBmcmVlZGVza3RvcC5vcmcgc28gSSdtIGdvaW5nIHRvIHJlcGxhY2UgeW91cg0K
c2lnbmVkLW9mZi1ieSB0byAiQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRl
bC5jb20+IiBvciBkbw0KeW91IHByZWZlciBzb21ldGhpbmcgZWxzZT8NCg0KPiANCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBUYXlsb3IsIENsaW50b24gQSA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9t
Z3IuYyB8IDEgKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMN
Cj4gPiBpbmRleCA5ODI4OGVkZjg4ZjAuLjg0ZTczNGQ0NDgyOCAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gPiBAQCAtMzQ3
OSw2ICszNDc5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX21ncg0KPiA+IHRn
bF9wbGxfbWdyID0gew0KPiA+ICAgICAgICAgLmRwbGxfaW5mbyA9IHRnbF9wbGxzLA0KPiA+ICAg
ICAgICAgLmdldF9kcGxscyA9IGljbF9nZXRfZHBsbHMsDQo+ID4gICAgICAgICAucHV0X2RwbGxz
ID0gaWNsX3B1dF9kcGxscywNCj4gPiArICAgICAgIC51cGRhdGVfYWN0aXZlX2RwbGwgPSBpY2xf
dXBkYXRlX2FjdGl2ZV9kcGxsLA0KPiA+ICAgICAgICAgLmR1bXBfaHdfc3RhdGUgPSBpY2xfZHVt
cF9od19zdGF0ZSwNCj4gPiAgfTsNCj4gPiANCj4gPiAtLQ0KPiA+IDIuMjMuMA0KPiA+IA0KPiA+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA0KPiANCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
