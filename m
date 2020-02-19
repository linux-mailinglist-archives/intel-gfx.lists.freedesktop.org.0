Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C75AB1642CC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 12:00:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C08E6EB71;
	Wed, 19 Feb 2020 11:00:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 352216EB71
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 11:00:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 03:00:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,459,1574150400"; d="scan'208";a="283078816"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2020 03:00:44 -0800
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Feb 2020 03:00:44 -0800
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 FMSMSX161.amr.corp.intel.com (10.18.125.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 19 Feb 2020 03:00:44 -0800
Received: from BGSMSX107.gar.corp.intel.com ([169.254.9.58]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.142]) with mapi id 14.03.0439.000;
 Wed, 19 Feb 2020 16:30:41 +0530
From: "Laxminarayan Bharadiya, Pankaj"
 <pankaj.laxminarayan.bharadiya@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBkcm06?=
 =?utf-8?B?IEludHJvZHVjZSBzdHJ1Y3QgZHJtX2RldmljZSBiYXNlZCBXQVJOKiBhbmQg?=
 =?utf-8?Q?use_them_in_i915_(rev6)?=
Thread-Index: AQHV3GrQFt2ZmUKXg0yYt/wxUo4c8agiESMAgABcdBA=
Date: Wed, 19 Feb 2020 11:00:40 +0000
Message-ID: <E92BA18FDE0A5B43B7B3DA7FCA031286057681DA@BGSMSX107.gar.corp.intel.com>
References: <20200205173419.1695-1-pankaj.laxminarayan.bharadiya@intel.com>
 <158093792883.17318.129566537664332187@emeril.freedesktop.org>
 <87mu9evobn.fsf@intel.com>
In-Reply-To: <87mu9evobn.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm=3A_Introduce_struct_drm=5Fdevice_based_WARN*_and_use_them_in?=
 =?utf-8?q?_i915_=28rev6=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogMTkgRmVicnVhcnkgMjAyMCAxNjoy
NQ0KPiBUbzogUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz47IExh
eG1pbmFyYXlhbiBCaGFyYWRpeWEsDQo+IFBhbmthaiA8cGFua2FqLmxheG1pbmFyYXlhbi5iaGFy
YWRpeWFAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk
cm06IEludHJvZHVjZSBzdHJ1Y3QNCj4gZHJtX2RldmljZSBiYXNlZCBXQVJOKiBhbmQgdXNlIHRo
ZW0gaW4gaTkxNSAocmV2NikNCj4gDQo+IE9uIFdlZCwgMDUgRmViIDIwMjAsIFBhdGNod29yayA8
cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+IHdyb3RlOg0KPiA+ID09IFNlcmllcyBE
ZXRhaWxzID09DQo+ID4NCj4gPiBTZXJpZXM6IGRybTogSW50cm9kdWNlIHN0cnVjdCBkcm1fZGV2
aWNlIGJhc2VkIFdBUk4qIGFuZCB1c2UgdGhlbSBpbiBpOTE1DQo+IChyZXY2KQ0KPiA+IFVSTCAg
IDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MjAzNS8NCj4gPiBT
dGF0ZSA6IGZhaWx1cmUNCj4gPg0KPiA+ID09IFN1bW1hcnkgPT0NCj4gPg0KPiA+IEFwcGx5aW5n
OiBkcm0vaTkxNS9kaXNwbGF5L2NkY2xrOiBNYWtlIFdBUk4qIGRybSBzcGVjaWZpYyB3aGVyZQ0K
PiA+IGRybV9wcml2IHB0ciBpcyBhdmFpbGFibGUNCj4gPiBBcHBseWluZzogZHJtL2k5MTUvZGlz
cGxheS9kZGk6IE1ha2UgV0FSTiogZHJtIHNwZWNpZmljIHdoZXJlDQo+ID4gZHJtX2RldmljZSBw
dHIgaXMgYXZhaWxhYmxlDQo+ID4gQXBwbHlpbmc6IGRybS9pOTE1L2Rpc3BsYXkvZGlzcGxheTog
TWFrZSBXQVJOKiBkcm0gc3BlY2lmaWMgd2hlcmUNCj4gPiBkcm1fZGV2aWNlIHB0ciBpcyBhdmFp
bGFibGUgVXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLg0KPiA+
IE0JZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBGYWxs
aW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4NCj4gPiBBdXRvLW1l
cmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBB
cHBseWluZzogZHJtL2k5MTUvZGlzcGxheS9wb3dlcjogTWFrZSBXQVJOKiBkcm0gc3BlY2lmaWMg
d2hlcmUNCj4gPiBkcm1fcHJpdiBwdHIgaXMgYXZhaWxhYmxlIFVzaW5nIGluZGV4IGluZm8gdG8g
cmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4NCj4gPiBNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gRmFsbGluZyBiYWNrIHRvIHBhdGNoaW5n
IGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uDQo+ID4gQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gQ09ORkxJQ1QgKGNvbnRl
bnQpOiBNZXJnZSBjb25mbGljdCBpbg0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gZXJyb3I6IEZhaWxlZCB0byBtZXJnZSBpbiB0aGUg
Y2hhbmdlcy4NCj4gPiBoaW50OiBVc2UgJ2dpdCBhbSAtLXNob3ctY3VycmVudC1wYXRjaCcgdG8g
c2VlIHRoZSBmYWlsZWQgcGF0Y2ggUGF0Y2gNCj4gPiBmYWlsZWQgYXQgMDAwNCBkcm0vaTkxNS9k
aXNwbGF5L3Bvd2VyOiBNYWtlIFdBUk4qIGRybSBzcGVjaWZpYyB3aGVyZQ0KPiA+IGRybV9wcml2
IHB0ciBpcyBhdmFpbGFibGUgV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlzIHByb2JsZW0sIHJ1
biAiZ2l0IGFtIC0tDQo+IGNvbnRpbnVlIi4NCj4gPiBJZiB5b3UgcHJlZmVyIHRvIHNraXAgdGhp
cyBwYXRjaCwgcnVuICJnaXQgYW0gLS1za2lwIiBpbnN0ZWFkLg0KPiA+IFRvIHJlc3RvcmUgdGhl
IG9yaWdpbmFsIGJyYW5jaCBhbmQgc3RvcCBwYXRjaGluZywgcnVuICJnaXQgYW0gLS1hYm9ydCIu
DQo+IA0KPiBQYW5rYWosIHBsZWFzZSBkb24ndCBleHBlY3QgcGVvcGxlIHRvIHJlc3BvbmQgdG8g
eW91ciBwYXRjaGVzIGlmIHRoZXkgZG9uJ3QNCj4gYXBwbHkuLi4NCg0KWWVzLiBJIHVuZGVyc3Rh
bmQg8J+Yii4gIEkgd2FzIHdhaXRpbmcgZm9yIDUuNi1yYzEgbWlncmF0aW9uIGFuZCB0aGVuIGdv
dCBzdHVjayBpbiBvdGhlciBhY3Rpdml0eS4gV2lsbCByZWJhc2UgYW5kIHBvc3QgcGF0Y2hlcyAN
ClNvb24uIA0KDQpUaGFua3MsDQpQYW5rYWoNCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+
IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
