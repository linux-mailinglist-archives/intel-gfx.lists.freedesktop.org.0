Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D8945B5A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 13:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884A78922E;
	Fri, 14 Jun 2019 11:24:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17598922E;
 Fri, 14 Jun 2019 11:24:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 04:24:57 -0700
X-ExtLoop1: 1
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga002.jf.intel.com with ESMTP; 14 Jun 2019 04:24:56 -0700
Received: from irsmsx111.ger.corp.intel.com (10.108.20.4) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 14 Jun 2019 12:24:54 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 irsmsx111.ger.corp.intel.com ([169.254.2.195]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 12:24:55 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Latvala, Petri" <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t v2 2/4] gitlab-ci: add libatomic to
 docker images
Thread-Index: AQHVIe94YjXm5ALQREq/FcnrxAfvBKaa22EAgAAXoQA=
Date: Fri, 14 Jun 2019 11:24:53 +0000
Message-ID: <99d089607f34ec04bbb57eec314dba00cc213927.camel@intel.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <d23e7d953526d4f2e569d375523829f21091255d.1560433744.git.guillaume.tucker@collabora.com>
 <20190614100034.GN22949@platvala-desk.ger.corp.intel.com>
In-Reply-To: <20190614100034.GN22949@platvala-desk.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <EFC7F81A0FAA794E8768BEDD6BA74E0C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 2/4] gitlab-ci: add
 libatomic to docker images
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA2LTE0IGF0IDEzOjAwICswMzAwLCBQZXRyaSBMYXR2YWxhIHdyb3RlOg0K
PiBPbiBUaHUsIEp1biAxMywgMjAxOSBhdCAwMjo1MzoyMFBNICswMTAwLCBHdWlsbGF1bWUgVHVj
a2VyIHdyb3RlOg0KPiA+IEFkZCBsaWJhdG9taWMgdG8gdGhlIEZlZG9yYSBkb2NrZXIgaW1hZ2Ug
c28gaXQgY2FuIGxpbmsgYmluYXJpZXMgdGhhdA0KPiA+IHVzZSBfX2F0b21pY18qIGZ1bmN0aW9u
cy4gIEFsc28gZXhwbGljaXRseSBhZGQgbGliYXRvbWljMSB0byBEZWJpYW4NCj4gPiBkb2NrZXIg
aW1hZ2VzIGV2ZW4gdGhvdWdoIGl0J3MgYWxyZWFkeSBpbnN0YWxsZWQgYXMgYSBkZXBlbmRlbmN5
Lg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50
dWNrZXJAY29sbGFib3JhLmNvbT4NCj4gPiAtLS0NCj4gPiAgRG9ja2VyZmlsZS5kZWJpYW4gICAg
ICAgfCAxICsNCj4gPiAgRG9ja2VyZmlsZS5kZWJpYW4tYXJtNjQgfCAxICsNCj4gPiAgRG9ja2Vy
ZmlsZS5kZWJpYW4tYXJtaGYgfCAxICsNCj4gPiAgRG9ja2VyZmlsZS5mZWRvcmEgICAgICAgfCAy
ICstDQo+ID4gIDQgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZGViaWFuIGIvRG9ja2VyZmlsZS5k
ZWJpYW4NCj4gPiBpbmRleCBiOWMzYmUzOTQ1ZTAuLmQyMzU5MTg1MGM0ZSAxMDA2NDQNCj4gPiAt
LS0gYS9Eb2NrZXJmaWxlLmRlYmlhbg0KPiA+ICsrKyBiL0RvY2tlcmZpbGUuZGViaWFuDQo+ID4g
QEAgLTYsNiArNiw3IEBAIFJVTiBhcHQtZ2V0IGluc3RhbGwgLXkgXA0KPiA+ICAJCQlmbGV4IFwN
Cj4gPiAgCQkJYmlzb24gXA0KPiA+ICAJCQlwa2ctY29uZmlnIFwNCj4gPiArCQkJbGliYXRvbWlj
MSBcDQo+ID4gIAkJCWxpYnBjaWFjY2Vzcy1kZXYgXA0KPiA+ICAJCQlsaWJrbW9kLWRldiBcDQo+
ID4gIAkJCWxpYnByb2Nwcy1kZXYgXA0KPiA+IGRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmRlYmlh
bi1hcm02NCBiL0RvY2tlcmZpbGUuZGViaWFuLWFybTY0DQo+ID4gaW5kZXggN2IzYTNjN2NhODAz
Li4wMDNiYjIyYjMyMTUgMTAwNjQ0DQo+ID4gLS0tIGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJtNjQN
Cj4gPiArKysgYi9Eb2NrZXJmaWxlLmRlYmlhbi1hcm02NA0KPiA+IEBAIC01LDYgKzUsNyBAQCBS
VU4gYXB0LWdldCBpbnN0YWxsIC15IFwNCj4gPiAgCQkJZmxleCBcDQo+ID4gIAkJCWJpc29uIFwN
Cj4gPiAgCQkJcGtnLWNvbmZpZyBcDQo+ID4gKwkJCWxpYmF0b21pYzEgXA0KPiA+ICAJCQl4MTFw
cm90by1kcmkyLWRldiBcDQo+ID4gIAkJCXB5dGhvbi1kb2N1dGlscyBcDQo+ID4gIAkJCXZhbGdy
aW5kIFwNCj4gPiBkaWZmIC0tZ2l0IGEvRG9ja2VyZmlsZS5kZWJpYW4tYXJtaGYgYi9Eb2NrZXJm
aWxlLmRlYmlhbi1hcm1oZg0KPiA+IGluZGV4IGM2N2ExZTJhY2Y2YS4uMzEzOTkyN2MxOTNhIDEw
MDY0NA0KPiA+IC0tLSBhL0RvY2tlcmZpbGUuZGViaWFuLWFybWhmDQo+ID4gKysrIGIvRG9ja2Vy
ZmlsZS5kZWJpYW4tYXJtaGYNCj4gPiBAQCAtNSw2ICs1LDcgQEAgUlVOIGFwdC1nZXQgaW5zdGFs
bCAteSBcDQo+ID4gIAkJCWZsZXggXA0KPiA+ICAJCQliaXNvbiBcDQo+ID4gIAkJCXBrZy1jb25m
aWcgXA0KPiA+ICsJCQlsaWJhdG9taWMxIFwNCj4gDQo+IGxpYmF0b21pYzEgaXMgdGhlIHJ1bnRp
bWUgbGliLCBmb3IgbGlua2luZyB5b3UgbmVlZCB0aGUgcGFja2FnZSB0aGF0DQo+IGNvbnRhaW5z
IGxpYmF0b21pYy5zby4gVGhhdCBpcyAqcXVpY2sgc2VhcmNoKg0KPiBsaWJnY2MtJHZlcnNpb24t
ZGV2LiBUaGVyZSBkb2Vzbid0IHNlZW0gdG8gYmUgYSBnZW5lcmljIG1ldGFwYWNrYWdlDQo+IGZv
ciAidGhlIGxhdGVzdCBsaWJnY2MtZGV2Iiwgb3RoZXIgdGhhbi4uLiAnZ2NjJy4NCj4gDQo+IFNp
bmNlIERlYmlhbiBpcyBhY3RpbmcgYSBiaXQgc3Blc2h1bCBoZXJlIEknZCBqdXN0IGRyb3AgdGhl
IGV4cGxpY2l0DQo+IGxpYmF0b21pYyBpbnN0YWxsYXRpb24uDQoNCkhtbSwgSSBzZWUgdGhlIC5z
byBpbiBsaWJhdG9taWMx4oCmDQoNCmh0dHBzOi8vcGFja2FnZXMuZGViaWFuLm9yZy9qZXNzaWUv
YW1kNjQvbGliYXRvbWljMS9maWxlbGlzdA0KDQo+IA0KPiANCj4gPiAgCQkJeDExcHJvdG8tZHJp
Mi1kZXYgXA0KPiA+ICAJCQlweXRob24tZG9jdXRpbHMgXA0KPiA+ICAJCQl2YWxncmluZCBcDQo+
ID4gZGlmZiAtLWdpdCBhL0RvY2tlcmZpbGUuZmVkb3JhIGIvRG9ja2VyZmlsZS5mZWRvcmENCj4g
PiBpbmRleCA2Njg2ZTU4NzYxM2QuLmM4NGI0MTJiMDcyMyAxMDA2NDQNCj4gPiAtLS0gYS9Eb2Nr
ZXJmaWxlLmZlZG9yYQ0KPiA+ICsrKyBiL0RvY2tlcmZpbGUuZmVkb3JhDQo+ID4gQEAgLTEsNyAr
MSw3IEBADQo+ID4gIEZST00gZmVkb3JhOjMwDQo+ID4gIA0KPiA+ICBSVU4gZG5mIGluc3RhbGwg
LXkgXA0KPiA+IC0JZ2NjIGZsZXggYmlzb24gbWVzb24gbmluamEtYnVpbGQgeGRvdG9vbCBcDQo+
ID4gKwlnY2MgZmxleCBiaXNvbiBsaWJhdG9taWMgbWVzb24gbmluamEtYnVpbGQgeGRvdG9vbCBc
DQo+IA0KPiBQb3NzaWJseSB0aGUgc2FtZSBjb21tZW50IG9uIGZlZG9yYSBidXQgSSdtIG5vdCBh
d2FyZSBvZiBob3cgdGhleQ0KPiBzcGxpdCB0aGVpciBnY2MgcGFja2FnZS4gQW55d2F5LCB0aGUg
ZmlsZSB0byBjaGVjayBmb3IgaXMNCj4gJ2xpYmF0b21pYy5zbycuDQo+IA0KPiANCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
