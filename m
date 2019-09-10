Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 583BAAE27D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 05:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1310D8905E;
	Tue, 10 Sep 2019 03:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7135389017
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 03:14:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 20:14:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,487,1559545200"; d="scan'208";a="200193167"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 09 Sep 2019 20:14:43 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 9 Sep 2019 20:14:43 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 9 Sep 2019 20:14:42 -0700
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.99]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.16]) with mapi id 14.03.0439.000;
 Tue, 10 Sep 2019 08:44:39 +0530
From: "Sharma, Shashank" <shashank.sharma@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v5 05/11] drm/i915/dsb: Check DSB engine status.
Thread-Index: AQHVZW2YmzI6HfwFzkeMzDiO5DBWfqcjVccA///icQCAAQhTUA==
Date: Tue, 10 Sep 2019 03:14:38 +0000
Message-ID: <FF3DDC77922A8A4BB08A3BC48A1EA8CB8DFF3613@BGSMSX101.gar.corp.intel.com>
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-6-animesh.manna@intel.com>
 <01ce6461-6812-8e26-7132-b2a93ef76a36@intel.com>
 <67ef0867-b867-a4e5-6fde-550f7ad2c41c@intel.com>
In-Reply-To: <67ef0867-b867-a4e5-6fde-550f7ad2c41c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTYyOWRmNjYtYzgyYi00MmM5LTlhNjgtZTM5YjczYjhiNDdiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiOHlGQnFGdlc2YW5SR0ZuTE5qTzZlSmt5VTNDYzk4ZVRKc3NrNXIwMnU0dmhESVZUR0FjeTNMMkoydVhxckYwVSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 05/11] drm/i915/dsb: Check DSB engine
 status.
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
Cc: "Thierry, Michel" <michel.thierry@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gN
Cj4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgOSwgMjAxOSAxMDoyNyBQTQ0KPiBUbzogU2hhcm1h
LCBTaGFzaGFuayA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBUaGllcnJ5LCBNaWNoZWwgPG1pY2hlbC50aGllcnJ5
QGludGVsLmNvbT47IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsNCj4gVml2
aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRD
SCB2NSAwNS8xMV0gZHJtL2k5MTUvZHNiOiBDaGVjayBEU0IgZW5naW5lIHN0YXR1cy4NCj4gDQo+
IA0KPiANCj4gT24gOS85LzIwMTkgNjo0MyBQTSwgU2hhcm1hLCBTaGFzaGFuayB3cm90ZToNCj4g
Pg0KPiA+IE9uIDkvNy8yMDE5IDQ6MzcgUE0sIEFuaW1lc2ggTWFubmEgd3JvdGU6DQo+ID4+IEFz
IHBlciBic3BlYyBjaGVjayBmb3IgRFNCIHN0YXR1cyBiZWZvcmUgcHJvZ3JhbW1pbmcgYW55IG9m
IGl0cw0KPiA+PiByZWdpc3Rlci4gSW5saW5lIGZ1bmN0aW9uIGFkZGVkIHRvIGNoZWNrIHRoZSBk
c2Igc3RhdHVzLg0KPiA+Pg0KPiA+PiBDYzogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5
QGludGVsLmNvbT4NCj4gPj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQo+ID4+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4+IENj
OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+DQo+ID4+IFNpZ25l
ZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+PiAt
LS0NCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgOSAr
KysrKysrKysNCj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAg
IHwgNyArKysrKysrDQo+ID4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspDQo+
ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0K
PiA+PiBpbmRleCAwZjU1ZWQ2ODNkNDEuLjJjODQxNTUxOGM2NSAxMDA2NDQNCj4gPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4+IEBAIC0xNyw2ICsxNywx
NSBAQA0KPiA+PiAgICNkZWZpbmUgRFNCX0JZVEVfRU5fU0hJRlQgICAgICAgIDIwDQo+ID4+ICAg
I2RlZmluZSBEU0JfUkVHX1ZBTFVFX01BU0sgICAgICAgIDB4ZmZmZmYNCj4gPj4gICArc3RhdGlj
IGlubGluZSBib29sIGlzX2RzYl9idXN5KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gPj4gK3sN
Cj4gPj4gKyAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGNvbnRhaW5lcl9vZihkc2IsIHR5
cGVvZigqY3J0YyksIGRzYik7DQo+ID4+ICsgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+ID4+ICsgICAgZW51bSBwaXBlIHBp
cGUgPSBjcnRjLT5waXBlOw0KPiA+PiArDQo+ID4+ICsgICAgcmV0dXJuIERTQl9TVEFUVVMgJiBJ
OTE1X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOyB9DQo+ID4+ICsNCj4gPj4gICBzdHJ1
Y3QgaW50ZWxfZHNiICoNCj4gPj4gICBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjKQ0KPiA+PiAgIHsNCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgNCj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IDAw
NmNmZmQ1NmJlMi4uYTMwOTlmNzEyYWU2DQo+ID4+IDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gPj4gQEAgLTExNjc2LDQgKzExNjc2LDExIEBAIGVudW0gc2tsX3Bvd2Vy
X2dhdGUgew0KPiA+PiAgICNkZWZpbmUgUE9SVF9UWF9ERkxFWERQQ1NTUyhmaWEpICAgICAgICBf
TU1JT19GSUEoKGZpYSksIDB4MDA4OTQpDQo+ID4+ICAgI2RlZmluZSAgIERQX1BIWV9NT0RFX1NU
QVRVU19OT1RfU0FGRSh0Y19wb3J0KSAgICAgICAgKDEgPDwgKHRjX3BvcnQpKQ0KPiA+PiAgICsv
KiBUaGlzIHJlZ2lzdGVyIGNvbnRyb2xzIHRoZSBEaXNwbGF5IFN0YXRlIEJ1ZmZlciAoRFNCKSBl
bmdpbmVzLg0KPiA+PiAqLw0KPiA+PiArI2RlZmluZSBfRFNCU0xfSU5TVEFOQ0VfQkFTRSAgICAg
ICAgMHg3MEIwMA0KPiA+PiArI2RlZmluZSBEU0JTTF9JTlNUQU5DRShwaXBlLCBpZCkgICAgKF9E
U0JTTF9JTlNUQU5DRV9CQVNFICsgXA0KPiA+PiArICAgICAgICAgICAgICAgICAgICAgKHBpcGUp
ICogMHgxMDAwICsgKGlkKSAqIDEwMCkNCj4gPg0KPiA+IFdoeSBpcyBwaXBlIGluICgpID8NCj4g
DQo+IG1taW8gb2Zmc2V0IHBlciBEU0IgZGVwZW5kIG9uIHBpcGUgYW5kIGRzYi1pZCAoMyBEU0Ig
cGVyIHBpcGUuKSBvZmZzZXQgb2YgUElQRV9BDQo+IERTQjEtPiA3MEIwMCBvZmZzZXQgb2YgUElQ
RV9CIERTQjEtPiA3MUIwMCBhbmQgc28gb24uLi4NCj4gDQpUaGUgcXVlc3Rpb24gaGVyZSBpcyB3
aHkgaXMgdGhlICdwaXBlJyBpbiBicmFjZXMgPyB3aHkgaXMgaXQgJyhwaXBlKScsIGluc3RlYWQg
b2YgJ3BpcGUnLiBJIGRvbuKAmXQgc2VlIGEgcmVhc29uLiANCi0gU2hhc2hhbmsNCj4gUmVnYXJk
cywNCj4gQW5pbWVzaA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
