Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA82170B5E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 23:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A3789DB0;
	Wed, 26 Feb 2020 22:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1132989DB0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 22:19:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 14:19:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="317568783"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga001.jf.intel.com with ESMTP; 26 Feb 2020 14:19:54 -0800
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Feb 2020 14:19:53 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.53]) with mapi id 14.03.0439.000;
 Wed, 26 Feb 2020 14:19:53 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tgl: Allow DC5/DC6 entry while PG2 is active
Thread-Index: AQHV6EQoXpNZgwAcN06QoNT6JgJERagum4uA
Date: Wed, 26 Feb 2020 22:19:52 +0000
Message-ID: <aedc17580c809c06bd70cb1446047fb826dadb80.camel@intel.com>
References: <20200220231843.3127468-1-matthew.d.roper@intel.com>
In-Reply-To: <20200220231843.3127468-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.234]
Content-ID: <419F742916683943B7DDBFCD7D71097F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Allow DC5/DC6 entry while PG2
 is active
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

T24gVGh1LCAyMDIwLTAyLTIwIGF0IDE1OjE4IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBnZW4xMiwgd2Ugbm8gbG9uZ2VyIG5lZWQgdG8gZGlzYWJsZSBEQzUvREM2IHdoZW4gd2hlbiBQ
RzIgaXMgaW4NCj4gdXNlDQo+ICh3aGljaCB0cmFuc2xhdGVzIHRvIGNhc2VzIHdoZXJlIHdlJ3Jl
IHVzaW5nIFZEU0Mgb24gcGlwZSBBKS4NCj4gDQo+IEJzcGVjOiA0OTE5Mw0KDQpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gQ2M6
IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBDYzogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyAgIHwgMTYgKysrKysrKysr
KystLS0NCj4gLS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmggICB8ICAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGluZGV4IDhiYTY4ZWM2ZGMyNC4uMWQyMWE4NTBl
OTMzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuYw0KPiBAQCAtOTI2LDEwICs5MjYsMTYgQEAgdm9pZA0KPiBpbnRlbF9k
aXNwbGF5X3Bvd2VyX3NldF90YXJnZXRfZGNfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUN
Cj4gKmRldl9wcml2LA0KPiAgDQo+ICBzdGF0aWMgdm9pZCBhc3NlcnRfY2FuX2VuYWJsZV9kYzUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgew0KPiAtCWJvb2wgcGcyX2Vu
YWJsZWQgPQ0KPiBpbnRlbF9kaXNwbGF5X3Bvd2VyX3dlbGxfaXNfZW5hYmxlZChkZXZfcHJpdiwN
Cj4gLQkJCQkJU0tMX0RJU1BfUFdfMik7DQo+ICsJZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQgaGln
aF9wZzsNCj4gIA0KPiAtCVdBUk5fT05DRShwZzJfZW5hYmxlZCwgIlBHMiBub3QgZGlzYWJsZWQg
dG8gZW5hYmxlIERDNS5cbiIpOw0KPiArCS8qIFBvd2VyIHdlbGxzIGF0IHRoaXMgbGV2ZWwgYW5k
IGFib3ZlIG11c3QgYmUgZGlzYWJsZWQgZm9yIERDNQ0KPiBlbnRyeSAqLw0KPiArCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDEyKQ0KPiArCQloaWdoX3BnID0gVEdMX0RJU1BfUFdfMzsNCj4g
KwllbHNlDQo+ICsJCWhpZ2hfcGcgPSBTS0xfRElTUF9QV18yOw0KPiArDQo+ICsJV0FSTl9PTkNF
KGludGVsX2Rpc3BsYXlfcG93ZXJfd2VsbF9pc19lbmFibGVkKGRldl9wcml2LA0KPiBoaWdoX3Bn
KSwNCj4gKwkJICAiUG93ZXIgd2VsbHMgYWJvdmUgcGxhdGZvcm0ncyBEQzUgbGltaXQgc3RpbGwN
Cj4gZW5hYmxlZC5cbiIpOw0KPiAgDQo+ICAJV0FSTl9PTkNFKChpbnRlbF9kZV9yZWFkKGRldl9w
cml2LCBEQ19TVEFURV9FTikgJg0KPiBEQ19TVEFURV9FTl9VUFRPX0RDNSksDQo+ICAJCSAgIkRD
NSBhbHJlYWR5IHByb2dyYW1tZWQgdG8gYmUgZW5hYmxlZC5cbiIpOw0KPiBAQCAtMjcxMiw3ICsy
NzE4LDcgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChzdHJ1Y3QNCj4gZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fSU5JVCkpDQo+ICAN
Cj4gICNkZWZpbmUgVEdMX0RJU1BMQVlfRENfT0ZGX1BPV0VSX0RPTUFJTlMgKAkJXA0KPiAtCVRH
TF9QV18yX1BPV0VSX0RPTUFJTlMgfAkJCVwNCj4gKwlUR0xfUFdfM19QT1dFUl9ET01BSU5TIHwJ
CQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fTU9ERVNFVCkgfAkJCVwNCj4gIAlCSVRfVUxM
KFBPV0VSX0RPTUFJTl9BVVhfQSkgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhf
QikgfAkJCVwNCj4gQEAgLTM5MDgsNyArMzkxNCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkx
NV9wb3dlcl93ZWxsX2Rlc2MNCj4gdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCS5uYW1lID0g
InBvd2VyIHdlbGwgMyIsDQo+ICAJCS5kb21haW5zID0gVEdMX1BXXzNfUE9XRVJfRE9NQUlOUywN
Cj4gIAkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsDQo+IC0JCS5pZCA9IERJU1BfUFdfSURf
Tk9ORSwNCj4gKwkJLmlkID0gVEdMX0RJU1BfUFdfMywNCj4gIAkJew0KPiAgCQkJLmhzdy5yZWdz
ID0gJmhzd19wb3dlcl93ZWxsX3JlZ3MsDQo+ICAJCQkuaHN3LmlkeCA9IElDTF9QV19DVExfSURY
X1BXXzMsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcG93ZXIuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5oDQo+IGluZGV4IDYwMWUwMDBmZmQwZC4uZGE2NGE1ZWRhZTdhIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuaA0KPiBAQCAtMTAwLDYgKzEwMCw3IEBAIGVudW0gaTkxNV9wb3dlcl93ZWxsX2lkIHsN
Cj4gIAlTS0xfRElTUF9QV19NSVNDX0lPLA0KPiAgCVNLTF9ESVNQX1BXXzEsDQo+ICAJU0tMX0RJ
U1BfUFdfMiwNCj4gKwlUR0xfRElTUF9QV18zLA0KPiAgCVNLTF9ESVNQX0RDX09GRiwNCj4gIH07
DQo+ICANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
