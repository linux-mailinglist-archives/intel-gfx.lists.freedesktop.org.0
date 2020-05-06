Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 382641C6CBE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 11:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7979F6E4B0;
	Wed,  6 May 2020 09:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6CBA6E4B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 09:20:42 +0000 (UTC)
IronPort-SDR: JB10veSZybljZogQvvON/Trvhfsm2nF3v8AOuN2JMdbe4Go++q8+ZMhWWfy2kqeHBbZ6zB3AAj
 77MQA6VVUK9A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 02:20:42 -0700
IronPort-SDR: 5+qrIPT2M7b2nP3IcAVswyIX2stR1xHy1fHNpwd0O1eVakzAjPohoTR/FBWGDHWiCWVCo7+b3k
 ZpK8tj7a26Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="284551414"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga004.fm.intel.com with ESMTP; 06 May 2020 02:20:42 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.68]) by
 ORSMSX110.amr.corp.intel.com ([169.254.10.248]) with mapi id 14.03.0439.000;
 Wed, 6 May 2020 02:20:41 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 18/22] drm/i915/rkl: Handle comp
 master/slave relationships for PHYs
Thread-Index: AQHWImbE/ua2J55i606Ao6Pd0b0+Iqiayjcg
Date: Wed, 6 May 2020 09:20:41 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073482C1206@ORSMSX108.amr.corp.intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-19-matthew.d.roper@intel.com>
In-Reply-To: <20200504225227.464666-19-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGY2YjczNTEtZjg2MS00MGRhLWI0OWEtMmIyMThjNmRhMGEyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoic0dcL1FGVkN1V2tXQmRGVFwvK0E2RXZUdFh4VkNoWFwvaFdubjNWQTYxZmltQXNHSlhlS09veEtKUXJob3BlYWwwZCJ9
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 18/22] drm/i915/rkl: Handle comp
 master/slave relationships for PHYs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBNYXR0DQo+
IFJvcGVyDQo+IFNlbnQ6IFR1ZXNkYXksIE1heSA1LCAyMDIwIDQ6MjIgQU0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IERlIE1hcmNoaSwgTHVjYXMgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIHYyIDE4
LzIyXSBkcm0vaTkxNS9ya2w6IEhhbmRsZSBjb21wIG1hc3Rlci9zbGF2ZQ0KPiByZWxhdGlvbnNo
aXBzIGZvciBQSFlzDQo+IA0KPiBDZXJ0YWluIGNvbWJvIFBIWXMgYWN0IGFzIGEgY29tcGVuc2F0
aW9uIG1hc3RlciB0byBvdGhlciBQSFlzIGFuZCBuZWVkIHRvDQo+IGJlIGluaXRpYWxpemVkIHdp
dGggYSBzcGVjaWFsIGlyZWZnZW4gYml0IGluIHRoZSBQT1JUX0NPTVBfRFc4IHJlZ2lzdGVyLg0K
PiBQcmV2aW91c2x5IFBIWSBBIHdhcyB0aGUgb25seSBjb21wZW5zYXRpb24gbWFzdGVyIChmb3Ig
UEhZcyBCICYgQyksIGJ1dCBSS0wNCj4gYWRkcyBhIGZvdXJ0aCBQSFkgd2hpY2ggaXMgc2xhdmVk
IHRvIFBIWSBDIGluc3RlYWQuDQo+IA0KPiBCc3BlYzogNDkyOTENCj4gQ2M6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEu
c3dhcnVwQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hh
LnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb21ib19waHkuYyAgICB8IDI1ICsrKysrKysrKysrKysrKysrLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jDQo+IGluZGV4
IDQzZDg3ODRmNmZhMC4uNzdiMDRiYjNlYzYyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMNCj4gQEAgLTIzNCw2ICsyMzQsMjcgQEAg
c3RhdGljIGJvb2wgZWhsX3ZidF9kZGlfZF9wcmVzZW50KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2
YXRlICppOTE1KQ0KPiAgCXJldHVybiBmYWxzZTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCBw
aHlfaXNfbWFzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaHkN
Cj4gK3BoeSkgew0KPiArCS8qDQo+ICsJICogQ2VydGFpbiBQSFlzIGFyZSBjb25uZWN0ZWQgdG8g
Y29tcGVuc2F0aW9uIHJlc2lzdG9ycyBhbmQgYWN0DQo+ICsJICogYXMgbWFzdGVycyB0byBvdGhl
ciBQSFlzLg0KPiArCSAqDQo+ICsJICogSUNMLFRHTDoNCj4gKwkgKiAgIEEobWFzdGVyKSAtPiBC
KHNsYXZlKSwgQyhzbGF2ZSkNCj4gKwkgKiBSS0w6DQo+ICsJICogICBBKG1hc3RlcikgLT4gQihz
bGF2ZSkNCj4gKwkgKiAgIEMobWFzdGVyKSAtPiBEKHNsYXZlKQ0KPiArCSAqDQo+ICsJICogV2Ug
bXVzdCBzZXQgdGhlIElSRUZHRU4gYml0IGZvciBhbnkgUEhZIGFjdGluZyBhcyBhIG1hc3Rlcg0K
PiArCSAqIHRvIGFub3RoZXIgUEhZLg0KPiArCSAqLw0KPiArCWlmIChJU19ST0NLRVRMQUtFKGRl
dl9wcml2KSAmJiBwaHkgPT0gUEhZX0MpDQo+ICsJCXJldHVybiB0cnVlOw0KPiArDQo+ICsJcmV0
dXJuIHBoeSA9PSBQSFlfQTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIGJvb2wgaWNsX2NvbWJvX3Bo
eV92ZXJpZnlfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCQkJ
CSAgICAgICBlbnVtIHBoeSBwaHkpDQo+ICB7DQo+IEBAIC0yNDUsNyArMjY2LDcgQEAgc3RhdGlj
IGJvb2wgaWNsX2NvbWJvX3BoeV92ZXJpZnlfc3RhdGUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiANCj4gIAlyZXQgPSBjbmxfdmVyaWZ5X3Byb2Ntb25fcmVmX3ZhbHVl
cyhkZXZfcHJpdiwgcGh5KTsNCj4gDQo+IC0JaWYgKHBoeSA9PSBQSFlfQSkgew0KPiArCWlmIChw
aHlfaXNfbWFzdGVyKGRldl9wcml2LCBwaHkpKSB7DQo+ICAJCXJldCAmPSBjaGVja19waHlfcmVn
KGRldl9wcml2LCBwaHksDQo+IElDTF9QT1JUX0NPTVBfRFc4KHBoeSksDQo+ICAJCQkJICAgICBJ
UkVGR0VOLCBJUkVGR0VOKTsNCj4gDQo+IEBAIC0zNTYsNyArMzc3LDcgQEAgc3RhdGljIHZvaWQg
aWNsX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
DQo+ICBza2lwX3BoeV9taXNjOg0KPiAgCQljbmxfc2V0X3Byb2Ntb25fcmVmX3ZhbHVlcyhkZXZf
cHJpdiwgcGh5KTsNCj4gDQo+IC0JCWlmIChwaHkgPT0gUEhZX0EpIHsNCj4gKwkJaWYgKHBoeV9p
c19tYXN0ZXIoZGV2X3ByaXYsIHBoeSkpIHsNCj4gIAkJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2
X3ByaXYsDQo+IElDTF9QT1JUX0NPTVBfRFc4KHBoeSkpOw0KPiAgCQkJdmFsIHw9IElSRUZHRU47
DQo+ICAJCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgSUNMX1BPUlRfQ09NUF9EVzgocGh5KSwN
Cj4gdmFsKTsNCj4gLS0NCj4gMi4yNC4xDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
