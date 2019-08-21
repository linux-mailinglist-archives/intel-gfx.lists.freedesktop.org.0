Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F280D996CC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 160AC6E046;
	Thu, 22 Aug 2019 14:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E41426EB0D
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:36:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 16:32:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,414,1559545200"; d="scan'208";a="169585495"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga007.jf.intel.com with ESMTP; 21 Aug 2019 16:32:56 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.251]) by
 FMSMSX108.amr.corp.intel.com ([169.254.9.191]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 16:32:56 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH 09/11] drm/i915: Refactor instdone loops on new
 subslice functions
Thread-Index: AQHVWHOwdV1OjqCIxky/oxW6OwuInqcGte8A
Date: Wed, 21 Aug 2019 23:32:55 +0000
Message-ID: <1566430370.128584.13.camel@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
 <20190820230544.170010-10-stuart.summers@intel.com>
 <156642819393.20466.11132905257582857588@skylake-alporthouse-com>
In-Reply-To: <156642819393.20466.11132905257582857588@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.23.184.90]
Content-ID: <4483024FDFE8B745817E6966310DF627@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915: Refactor instdone loops on
 new subslice functions
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTA4LTIxIGF0IDIzOjU2ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgU3R1YXJ0IFN1bW1lcnMgKDIwMTktMDgtMjEgMDA6MDU6NDIpDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaA0KPiA+IGluZGV4
IGE4MmNlYTk1YzJmMi4uOTliZWUwNmNkYmRiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgNCj4gPiBAQCAtNTc2LDIwICs1NzYsMTkg
QEAgaW50ZWxfZW5naW5lX2lzX3ZpcnR1YWwoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBlbmdpbmUtPmZsYWdzICYg
STkxNV9FTkdJTkVfSVNfVklSVFVBTDsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+IC0jZGVmaW5lIGlu
c3Rkb25lX3NsaWNlX21hc2soZGV2X3ByaXZfXykgXA0KPiA+IC3CoMKgwqDCoMKgwqDCoChJU19H
RU4oZGV2X3ByaXZfXywgNykgPyBcDQo+ID4gLcKgwqDCoMKgwqDCoMKgwqAxIDogUlVOVElNRV9J
TkZPKGRldl9wcml2X18pLT5zc2V1LnNsaWNlX21hc2spDQo+ID4gLQ0KPiA+IC0jZGVmaW5lIGlu
c3Rkb25lX3N1YnNsaWNlX21hc2soZGV2X3ByaXZfXykgXA0KPiA+IC3CoMKgwqDCoMKgwqDCoChJ
U19HRU4oZGV2X3ByaXZfXywgNykgPyBcDQo+ID4gLcKgwqDCoMKgwqDCoMKgwqAxIDogUlVOVElN
RV9JTkZPKGRldl9wcml2X18pLT5zc2V1LnN1YnNsaWNlX21hc2tbMF0pDQo+ID4gLQ0KPiA+IC0j
ZGVmaW5lIGZvcl9lYWNoX2luc3Rkb25lX3NsaWNlX3N1YnNsaWNlKGRldl9wcml2X18sIHNsaWNl
X18sDQo+ID4gc3Vic2xpY2VfXykgXA0KPiA+IC3CoMKgwqDCoMKgwqDCoGZvciAoKHNsaWNlX18p
ID0gMCwgKHN1YnNsaWNlX18pID0gMDsgXA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAo
c2xpY2VfXykgPCBJOTE1X01BWF9TTElDRVM7IFwNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgKHN1YnNsaWNlX18pID0gKChzdWJzbGljZV9fKSArIDEpIDwgSTkxNV9NQVhfU1VCU0xJQ0VT
DQo+ID4gPyAoc3Vic2xpY2VfXykgKyAxIDogMCwgXA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgKHNsaWNlX18pICs9ICgoc3Vic2xpY2VfXykgPT0gMCkpIFwNCj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaWYoKEJJVChzbGljZV9fKSAmDQo+ID4g
aW5zdGRvbmVfc2xpY2VfbWFzayhkZXZfcHJpdl9fKSkgJiYgXA0KPiA+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoQklUKHN1YnNsaWNlX18p
ICYNCj4gPiBpbnN0ZG9uZV9zdWJzbGljZV9tYXNrKGRldl9wcml2X18pKSkNCj4gPiAtDQo+ID4g
KyNkZWZpbmUgaW5zdGRvbmVfaGFzX3NsaWNlKGRldl9wcml2X19fLCBzc2V1X19fLCBzbGljZV9f
XykgXA0KPiA+ICvCoMKgwqDCoMKgwqDCoCgoSVNfR0VOKGRldl9wcml2X19fLCA3KSA/IDEgOiAo
KHNzZXVfX18pLT5zbGljZV9tYXNrKSkgJiBcDQo+ID4gK8KgwqDCoMKgwqDCoMKgQklUKHNsaWNl
X19fKSkNCj4gDQo+IMKgwqDCoMKgwqDCoMKgKChJU19HRU4oZGV2X3ByaXZfX18sIDcpID8gMSA6
IFwNCj4gwqDCoMKgwqDCoMKgwqAoKHNzZXVfX18pLT5zbGljZV9tYXNrKSkgJiBCSVQoc2xpY2Vf
X18pKQ0KPiANCj4gVGhhdCBzcGxpdCBpcyBtYXJnaW5hbGx5IGVhc2llciB0byByZWFkDQoNCk1h
a2VzIHNlbnNlLCBhbmQgSSBhZ3JlZSB3aGF0IEkgaGF2ZSBpcyBhIGxpdHRsZSB1Z2x5Li4uIEkn
bGwgY2hhbmdlIGluDQp0aGUgbmV4dCByZXZpc2lvbi4NCg0KPiANCj4gU28gbXVjaCBmb3IgaG9w
aW5nIHRoZSBnZW43IHNwZWNpYWwgY2FzZSBqdXN0IGRpc2FwcGVhcnMuDQo+IA0KPiA+ICsjZGVm
aW5lIGluc3Rkb25lX2hhc19zdWJzbGljZShkZXZfcHJpdl9fLCBzc2V1X18sIHNsaWNlX18sDQo+
ID4gc3Vic2xpY2VfXykgXA0KPiA+ICvCoMKgwqDCoMKgwqDCoChJU19HRU4oZGV2X3ByaXZfXywg
NykgPyAoMSAmIEJJVChzdWJzbGljZV9fKSkgOiBcDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqBpbnRl
bF9zc2V1X2hhc19zdWJzbGljZShzc2V1X18sIDAsIHN1YnNsaWNlX18pKQ0KPiA+ICsNCj4gPiAr
I2RlZmluZSBmb3JfZWFjaF9pbnN0ZG9uZV9zbGljZV9zdWJzbGljZShkZXZfcHJpdl8sIHNzZXVf
LCBzbGljZV8sDQo+ID4gc3Vic2xpY2VfKSBcDQo+ID4gK8KgwqDCoMKgwqDCoMKgZm9yICgoc2xp
Y2VfKSA9IDAsIChzdWJzbGljZV8pID0gMDsgKHNsaWNlXykgPA0KPiA+IEk5MTVfTUFYX1NMSUNF
UzsgXA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoc3Vic2xpY2VfKSA9ICgoc3Vic2xp
Y2VfKSArIDEpICUgSTkxNV9NQVhfU1VCU0xJQ0VTLA0KPiA+IFwNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgKHNsaWNlXykgKz0gKChzdWJzbGljZV8pID09IDApKSBcDQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZvcl9lYWNoX2lmKChpbnN0ZG9uZV9oYXNfc2xpY2Uo
ZGV2X3ByaXZfLCBzc2V1XywNCj4gPiBzbGljZV8pKSAmJiBcDQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChpbnN0ZG9uZV9oYXNfc3Vi
c2xpY2UoZGV2X3ByaXZfLA0KPiA+IHNzZXVfLCBzbGljZV8sIFwNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Vic2xpY2VfKSkpDQo+IA0KPiBUaGF0
IHdhcyBsZXNzIGNvbnZvbHV0ZWQgdGhhbiBJIHdhcyBleHBlY3RpbmcgZnJvbSBwcmV2aW91cyBz
a2ltcy4NCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPg0KDQpUaGFua3MhDQoNCi1TdHVhcnQNCg0KPiAtQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
