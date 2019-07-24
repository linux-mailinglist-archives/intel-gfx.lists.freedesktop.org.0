Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE5273ED9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 22:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 801CC6E656;
	Wed, 24 Jul 2019 20:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5FE6E656
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 20:28:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 13:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,304,1559545200"; d="scan'208";a="174995764"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga006.jf.intel.com with ESMTP; 24 Jul 2019 13:27:59 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.137]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.116]) with mapi id 14.03.0439.000;
 Wed, 24 Jul 2019 13:27:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "pebolle@tiscali.nl" <pebolle@tiscali.nl>,
 "James.Bottomley@HansenPartnership.com"
 <James.Bottomley@HansenPartnership.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
Thread-Index: AQHVN8s6u18XhfEo0kuWcj/kjNqW06bGT1sAgAAD6QCAAADBAIAAGPCAgAAIRACAAANRAIAABuIAgAAHAoCAAANkgIAA9aWAgAACeQCABSUwAIAACPCAgAE98wCAAeSegIAAAIsAgArdJICAABICAA==
Date: Wed, 24 Jul 2019 20:27:59 +0000
Message-ID: <d084df248afc1943e06c50d391a775d117064743.camel@intel.com>
References: <1561834612.3071.6.camel@HansenPartnership.com>
 <156283735757.12757.8954391372130933707@skylake-alporthouse-com>
 <1562875878.2840.0.camel@HansenPartnership.com>
 <27a5b2ca8cfc79bf617387a363ea7192acc4e1f0.camel@intel.com>
 <1562876880.2840.12.camel@HansenPartnership.com>
 <1562882235.13723.1.camel@HansenPartnership.com>
 <dad073fb4b06cf0abb7ab702a9474b9c443186eb.camel@intel.com>
 <1562884722.15001.3.camel@HansenPartnership.com>
 <2c4edfabf49998eb5da3a6adcabc006eb64bfe90.camel@tiscali.nl>
 <55f4d1c242d684ca2742e8c14613d810a9ee9504.camel@intel.com>
 <1562888433.2915.0.camel@HansenPartnership.com>
 <1562941185.3398.1.camel@HansenPartnership.com>
 <68472c5f390731e170221809a12d88cb3bc6460e.camel@tiscali.nl>
 <143142cad4a946361a0bf285b6f1701c81096c7b.camel@intel.com>
 <595d9bc87bf47717c8675eb5b1a1cbb2bc463752.camel@tiscali.nl>
 <a10f009fc160f05077760ff59cd86a9c99006b39.camel@intel.com>
 <9ef8fc1ae2c3a9bad588899488a781333af4449a.camel@tiscali.nl>
 <1563398966.3438.5.camel@HansenPartnership.com>
 <b22cf290b089cb1174ec0fdeb15bdf2e90bf51dc.camel@tiscali.nl>
In-Reply-To: <b22cf290b089cb1174ec0fdeb15bdf2e90bf51dc.camel@tiscali.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.121.193.213]
Content-ID: <A7957F01B860F9449BFB02718FC3DA75@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] screen freeze with 5.2-rc6 Dell XPS-13 skylake i915
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgUGF1bA0KDQpXZSBmaXhlZCB0aGUgcGF0Y2ggaW5zdGVhZCBvZiByZXZlcnQgaXQsIGl0IGlz
IG1lcmdlZCBvbiBkcm0tdGlwIGFuZCBvbg0KaGlzIHdheSB0byBsaW51eC1zdGFibGUuDQoNCkh1
Z2UgdGhhbmtzIGFnYWluDQoNCk9uIFdlZCwgMjAxOS0wNy0yNCBhdCAyMToyMyArMDIwMCwgUGF1
bCBCb2xsZSB3cm90ZToNCj4gSGkgSm9zZSwNCj4gDQo+IEphbWVzIEJvdHRvbWxleSBzY2hyZWVm
IG9wIGRvIDE4LTA3LTIwMTkgb20gMDY6MjkgWyswOTAwXToNCj4gPiBPbiBXZWQsIDIwMTktMDct
MTcgYXQgMjM6MjcgKzAyMDAsIFBhdWwgQm9sbGUgd3JvdGU6DQo+ID4gPiBJJ3ZlIGp1c3QgcmVh
Y2hlZCBhIGRheSBvZiB1cHRpbWUgd2l0aCB5b3VyIHJldmVydC4gKFRoZSBwcm9wZXINCj4gPiA+
IHVwdGltZSBpcyBqdXN0IGEgZnJhY3Rpb24gb2YgYSBkYXksIHRoaXMgYmVpbmcgYSBsYXB0b3Au
KSBBbnlob3csDQo+ID4gPiBubw0KPiA+ID4gc2NyZWVuIGZyZWV6ZXMgb2NjdXJyZWQgZHVyaW5n
IHRoaXMgZGF5Lg0KPiA+IA0KPiA+IEknbSBhZnJhaWQgbXkgc3RhdHVzIGlzIHRoYXQgSSdtIGlu
IFRva3lvIGRvaW5nIGNvbmZlcmVuY2UNCj4gPiBwcmVzZW50YXRpb25zIChhbmQga2VybmVsIGRl
bW9zKSBzbyBJJ20gYSBiaXQgcmVsdWN0YW50IHRvIG1lc3MNCj4gPiB3aXRoIG15DQo+ID4gc2V0
dXAgdW50aWwgSSBmaW5pc2ggZXZlcnl0aGluZyBvbiBGcmlkYXksIGJ1dCBJIHdpbGwgdGVzdCBp
dCBhZnRlcg0KPiA+IHRoZW4sIHByb21pc2UuDQo+IA0KPiBCeSBub3cgSSdtIHRlc3RpbmcgdGhp
cyBmb3IgYSB3ZWVrIChjdXJyZW50bHkgb24gdG9wIG9mIDUuMi4yKS4gU3RpbGwNCj4gbm8NCj4g
ZnJlZXplcyB3aGF0c29ldmVyLiANCj4gDQo+IFNvIHdoYXQncyB0aGUgc3RhdHVzIG9mIHRoaXMg
cmV2ZXJ0PyBVbmxlc3MgdGhpcyBpcyBzb21ldGhpbmcgcHJldHR5DQo+IG9ic2N1cmUNCj4gdGhh
dCBmb3Igc29tZSBvZGQgcmVhc29uIG9ubHkgSmFtZXMgYW5kIEkgYXJlIGFibGUgdG8gaGl0IGl0
IHdvdWxkIGJlDQo+IG5pY2UgdG8NCj4gZ2V0IHRoaXMgaW50byBzdGFibGUgYmVmb3JlIHRoZSBt
YWluIGRpc3Ryb3Mgc3dpdGNoIG92ZXIgdG8gNS4yLnkuDQo+IA0KPiBUaGFua3MsDQo+IA0KPiAN
Cj4gUGF1bCBCb2xsZQ0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
