Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D42D0EBB72
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 01:43:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46426F6A7;
	Fri,  1 Nov 2019 00:43:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF35F6F6A7
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 00:43:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 17:43:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,253,1569308400"; d="scan'208";a="194509427"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 31 Oct 2019 17:43:29 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 31 Oct 2019 17:43:29 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.114]) with mapi id 14.03.0439.000;
 Thu, 31 Oct 2019 17:43:29 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 0/5] tgl: MST support
Thread-Index: AQHVjsDnTnyYk1U3K06b9yZfrHlVRad18pcA
Date: Fri, 1 Nov 2019 00:43:28 +0000
Message-ID: <4ec4df6aa34ead6619d5173038c216f7e7301909.camel@intel.com>
References: <20191030012448.14937-1-lucas.demarchi@intel.com>
In-Reply-To: <20191030012448.14937-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <6E753E9C3BF6D546AF42B0F4B1B041B8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/5] tgl: MST support
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBwbGFuIHRvIGRlYnVnIE1TVCB3aXRoIHRoaXMgcGF0Y2hlcyBuZXh0IHdlZWsgYnV0IEkgZ3Vl
c3MgYXQgbGVhc3QNCnRoZSA0IGZpcnN0IHBhdGNoZXMgY2FuIGJlIG1lcmdlZC4gVGhlIDV0aCB0
b28gaWYgc29tZW9uZSBlbHNlIHJldmlld3MNCml0LCB0aGUgc2VsZWN0aW9uIG9mIHRoZSBtYXN0
ZXIgdHJhbnNjb2RlciB3YXMgdGVzdGVkIGJ5IG1lIGFuZCBMdWNhcw0KYW5kIHRoZSBwcm9ibGVt
IGluIG5vdCBpbiBhbnkgb2YgdGhpcyBwYXRjaGVzLg0KDQoNCk9uIFR1ZSwgMjAxOS0xMC0yOSBh
dCAxODoyNCAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOg0KPiBBZGRpdGlvbmFsIGNvZGUg
dG8gc3VwcG9ydCBtb3JlIHRoYW4gb25lIGRpc3BsYXkgd2hlbiB1c2luZyBNU1Qgd2l0aA0KPiBU
R0wuIEl0J3Mgc3RpbGwgV0lQISBGcm9tIHdoYXQgSSBjb3VsZCBjaGVjayBvbiBteSB0ZXN0cyB3
ZSBhcmUNCj4gY29ycmVjdGx5DQo+IHRyYWNraW5nIHRoZSBtYXN0ZXIgdHJhbnNjb2RlciBhbmQg
c2V0dGluZyBpdCBhY2NvcmRpbmdseSBvbg0KPiBUUkFOU19ERElfRlVOQ19DVEwgYW5kIERQX1RQ
X0NUTC4NCj4gDQo+IEkgdHJpZWQgYWxzbyBzZXR0aW5nIE1TVCBtb2RlIG9uIHRoZSBzbGF2ZSdz
IERQX1RQX0NUTC4gSSBjb3VsZCBnZXQNCj4gdGhlDQo+IHNlY29uZCBkaXNwbGF5IHRvIHNob3cg
dXAgc29tZSB0aW1lcyBhbmQgd2UgZG9uJ3QgZ2V0IHN0dWNrIG9uDQo+ICJ0aW1lb3V0DQo+IHdh
aXRpbmcgZm9yIEFDVCIgZXJyb3IgbWVzc2FnZS4gIFRoaXMgaXMgbm90IGFjY29yZGluZyB0byB0
aGUgc3BlYw0KPiB0aG91Z2gsIGFuZCBpdCBzdGlsbCBkb2Vzbid0IHdvcmsgbW9zdCBvZiB0aGUg
dGltZS4gU28uLi4gSSBkaWRuJ3QNCj4gYWRkDQo+IGl0IGhlcmUuDQo+IA0KPiBJIGd1ZXNzIG5v
dyBJIG5lZWQgYW5vdGhlciBwYWlyIG9mIGV5ZXMgdG8gY2hlY2sgd2hhdCBJJ20gZG9pbmcgd3Jv
bmcNCj4gc2luY2UgY29udGludWluZyB0byBzdGFyZSBhdCB0aGUgc3BlYyBhbmQgY29kZSBpc24n
dCBoZWxwaW5nLiBKb3PDqSwNCj4gSW1yZT8NCj4gDQo+IEpvc8OpIFJvYmVydG8gZGUgU291emEg
KDIpOg0KPiAgIGRybS9pOTE1OiBBZGQgZm9yX2VhY2hfbmV3X2ludGVsX2Nvbm5lY3Rvcl9pbl9z
dGF0ZSgpDQo+ICAgZHJtL2k5MTUvdGdsOiBTZWxlY3QgbWFzdGVyIHRyYW5zY29kZXIgaW4gRFAg
TVNUDQo+IA0KPiBMdWNhcyBEZSBNYXJjaGkgKDMpOg0KPiAgIGRybS9pOTE1OiBhZGQgd3JhcHBl
cnMgdG8gZ2V0IGludGVsIGNvbm5lY3RvciBzdGF0ZQ0KPiAgIGRybS9pOTE1L3RnbDogZG8gbm90
IGVuYWJsZSB0cmFuc2NvZGVyIGNsb2NrIHR3aWNlIG9uIE1TVA0KPiAgIGRybS9pOTE1OiBhdm9p
ZCByZWFkaW5nIERQX1RQX0NUTCB0d2ljZQ0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICA1NCArKystLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAxNiArKw0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwgICA4ICsNCj4gIC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyMSArKysNCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgICB8IDE1OQ0KPiArKysrKysrKysrKysr
KysrKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmggICB8
ICAgMiArDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDIzNiBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlv
bnMoLSkNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
