Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C2B29345
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A53676E0A0;
	Fri, 24 May 2019 08:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05DD96E0A0;
 Fri, 24 May 2019 08:39:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 01:39:54 -0700
X-ExtLoop1: 1
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by fmsmga004.fm.intel.com with ESMTP; 24 May 2019 01:39:53 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.93]) by
 IRSMSX107.ger.corp.intel.com ([169.254.10.142]) with mapi id 14.03.0415.000;
 Fri, 24 May 2019 09:39:52 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [igt-dev] [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Heap
 allocate VLA structs
Thread-Index: AQHVEgmobu5Z+YqEJEqnDIqOgqxSpKZ54f4AgAABkAA=
Date: Fri, 24 May 2019 08:39:51 +0000
Message-ID: <fe72a49fc1796bc54a9a669164dbcdff35fa61a2.camel@intel.com>
References: <20190524072551.24429-1-chris@chris-wilson.co.uk>
 <b330aca7-2686-3c42-d17e-bdcf0d412b17@linux.intel.com>
 <155868683254.28319.251717788186809854@skylake-alporthouse-com>
In-Reply-To: <155868683254.28319.251717788186809854@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <FB7771F4B183F442AF62369AB68D7578@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] benchmarks/gem_wsim: Heap
 allocate VLA structs
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA1LTI0IGF0IDA5OjMzICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIwMTktMDUtMjQgMDk6MjA6NDcpDQo+ID4gT24gMjQv
MDUvMjAxOSAwODoyNSwgQ2hyaXMgV2lsc29uIHdyb3RlOg0KPiA+ID4gQXBwYXJlbnRseSBWTEEg
c3RydWN0cyAoZS5nLiBzdHJ1Y3QgeyBpbnQgYXJyYXlbY291bnRdIH0pIGlzIGEgZ2NjDQo+ID4g
PiBleHRlbnNpb24gdGhhdCBjbGFuZyByZWZ1c2VzIHRvIHN1cHBvcnQgYXMgaGFuZGxpbmcgbWVt
b3J5IGxheW91dCBpcyB0b28NCj4gPiA+IGRpZmZpY3VsdCBmb3IgaXQuDQo+ID4gPiANCj4gPiA+
IE1vdmUgdGhlIG9uLXN0YWNrIFZMQSB0byB0aGUgaGVhcC4NCj4gPiA+IA0KPiA+ID4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+ID4gPiBD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0K
PiA+ID4gICBiZW5jaG1hcmtzL2dlbV93c2ltLmMgfCAxNDYgKysrKysrKysrKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tDQo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA5NSBpbnNlcnRp
b25zKCspLCA1MSBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2JlbmNo
bWFya3MvZ2VtX3dzaW0uYyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYw0KPiA+ID4gaW5kZXggZTJm
ZmI5M2E5Li4wYTAwMzJiZmYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9iZW5jaG1hcmtzL2dlbV93c2lt
LmMNCj4gPiA+ICsrKyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYw0KPiA+ID4gQEAgLTE0NDEsNiAr
MTQ0MSw0OCBAQCBzZXRfY3R4X3NzZXUoc3RydWN0IGN0eCAqY3R4LCB1aW50NjRfdCBzbGljZV9t
YXNrKQ0KPiA+ID4gICAgICAgcmV0dXJuIHNsaWNlX21hc2s7DQo+ID4gPiAgIH0NCj4gPiA+ICAg
DQo+ID4gPiArc3RhdGljIHNpemVfdCBzaXplb2ZfbG9hZF9iYWxhbmNlKGludCBjb3VudCkNCj4g
PiA+ICt7DQo+ID4gPiArICAgICBzdHJ1Y3QgaTkxNV9jb250ZXh0X2VuZ2luZXNfbG9hZF9iYWxh
bmNlICpwdHI7DQo+ID4gPiArDQo+ID4gPiArICAgICBhc3NlcnQoc2l6ZW9mKHB0ci0+ZW5naW5l
c1tjb3VudF0pID09IGNvdW50ICogc2l6ZW9mKHB0ci0+ZW5naW5lc1swXSkpOw0KPiA+IA0KPiA+
IFRoaXMgc2VlbXMgd3JvbmcgLSBpcyBib3VuZCB0byB0cmlnZ2VyLg0KPiANCj4gV2h5IGRvZXMg
aXQgc2VlbSB3cm9uZz8gVGhhdCdzIHRoZSBjYWxjdWxhdGlvbiB1c2VkIHByZXZpb3VzbHksIGFu
ZCB0aGUNCj4gcHRyLT5lbmdpbmVzW10gd2FzIG1lYW50IHRvIGJlIHBhY2tlZCBpbiBvcmRlciBm
b3INCj4gc2l6ZW9mKHB0ci0+ZW5naW5lc1tjb3VudF0pID09IGNvdW50ICogc2l6ZW9mKHB0ci0+
ZW5naW5lc1swXSkuIEFueXdheSwNCj4gSSB0aHJldyBpdCBpbiB0aGVyZSB0byBjaGVjayBpZiB0
aGUgY2FsY3VsYXRpb24gd2FzIHNhbmUuDQo+IA0KPiA+ID4gKyAgICAgcmV0dXJuIHNpemVvZigq
cHRyKSArIHNpemVvZihwdHItPmVuZ2luZXNbY291bnRdKTsNCj4gPiANCj4gPiBTbyBzaXplIG9m
IG9mIGVuZ2luZSBuZWVkcyB0byBiZSBtdWx0aXBsaWVkIGJ5IGNvdW50Lg0KPiANCj4gKEp1c3Qg
bm90ZSB0aGlzIGlzIHRoZSB3aGF0IHRoZSBjdXJyZW50IFZMQSBldmFsdWF0ZXMgdG8gOikNCj4g
DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4gK3N0YXRpYyBzdHJ1Y3QgaTkxNV9jb250ZXh0X2Vu
Z2luZXNfbG9hZF9iYWxhbmNlICoNCj4gPiA+ICthbGxvY19sb2FkX2JhbGFuY2UoaW50IGNvdW50
KQ0KPiA+ID4gK3sNCj4gPiA+ICsgICAgIHJldHVybiBjYWxsb2MoMSwgc2l6ZW9mX2xvYWRfYmFs
YW5jZShjb3VudCkpOw0KPiA+IA0KPiA+IEhvdyBhYm91dCBhbGxvY2Egc28gY2xlYW51cCBpcyBz
aW1wbGVyPyBPciBpcyBhbGxvY2EgYWxzbyBvbiB0aGUgDQo+ID4gdW5wb3B1bGFyIGxpc3Q/DQo+
IA0KPiBJIGRvbid0IG1pbmQuIFdvdWxkIHNoYXZlIGEgZmV3IGxpbmVzIGluZGVlZCwgYnV0IHdl
IG5lZWQgdGhlIG1lbXNldHMNCj4gYmFjay4gI2RlZmluZSBhbGxvY2EwKCk/DQo+IA0KPiA+IE9y
IHBvc3NpYmx5IHdoYXQgU2ltb24gc3VnZ2VzdGVkLCBqdXN0IGEgbGFyZ2UgdGVtcG9yYXJ5IHN0
YWNrIGFycmF5cyANCj4gPiB3b3VsZCBiZSBlbm91Z2ggYW5kIGVhc2llc3QgZGlmZi4gSnVzdCB3
aXRoIGFuIGFzc2VydCB0aGF0IGl0IGZpdHMuDQo+IA0KPiBJIGRvbid0IHRoaW5rIHRoYXQgaXMg
YXMgY2xlYW4gZm9yIHRoZSBsb25nIHRlcm0uDQoNCkkgZG9uJ3QgdW5kZXJzdGFuZCB0aGUgbW90
aXZhdGlvbiBoZXJlLiBDYW4geW91IGVsYWJvcmF0ZT8NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
