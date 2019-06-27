Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D63D58AF3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 21:30:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3CE6E4BB;
	Thu, 27 Jun 2019 19:30:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3B876E4BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 19:30:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 12:30:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="173240849"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 27 Jun 2019 12:30:28 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 27 Jun 2019 12:30:28 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.43]) with mapi id 14.03.0439.000;
 Thu, 27 Jun 2019 12:30:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 12/28] drm/i915/tgl: Add TRANSCODER_A_VDSC power domain
Thread-Index: AQHVK38h+QFljM/7oUaSKECJcVCBs6awW0cAgAAAn4A=
Date: Thu, 27 Jun 2019 19:30:27 +0000
Message-ID: <caa5fcb163176090d5aab8b501a806e7ec603ef4.camel@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
 <20190625175437.14840-13-lucas.demarchi@intel.com>
 <c4b390a80e43f115937263fb7d3314a1312cf7eb.camel@intel.com>
In-Reply-To: <c4b390a80e43f115937263fb7d3314a1312cf7eb.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <6AD18D3C3212334192380ECC38E5F831@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/28] drm/i915/tgl: Add TRANSCODER_A_VDSC
 power domain
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

T24gVGh1LCAyMDE5LTA2LTI3IGF0IDEyOjI4IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBPbiBUdWUsIDIwMTktMDYtMjUgYXQgMTA6NTQgLTA3MDAsIEx1Y2FzIERlIE1h
cmNoaSB3cm90ZToNCj4gPiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gPiANCj4gPiBPbiBUR0wgdGhlIHNwZWNpYWwgRURQIHRyYW5zY29kZXIg
aXMgZ29uZSBhbmQgaXQgc2hvdWxkIGJlIGhhbmRsZWQNCj4gPiBieQ0KPiA+IHRyYW5zY29kZXIg
QS4gQWRkIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0FfVkRTQyB0byBtYWtlIHRoaXMNCj4gPiBk
aXN0aW5jdGlvbiBjbGVhciBhbmQgdXBkYXRlIHZkc2MgY29kZSBwYXRoLg0KPiA+IA0KPiA+IENj
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
IHwgIDIgKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmggfCAgMSArDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dmRzYy5jICAgICAgICAgIHwgMTEgKysrKysrKysNCj4gPiAtLS0NCj4gPiAgMyBmaWxlcyBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMN
Cj4gPiBpbmRleCAwYzdkNGEzNjNkZWIuLjE1NTgyODQxZmVmYyAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+
ID4gQEAgLTU4LDYgKzU4LDggQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW5fc3RyKHN0cnVj
dA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4gIAkJcmV0dXJuICJUUkFOU0NPREVS
X0VEUCI7DQo+ID4gIAljYXNlIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFNDOg0KPiA+
ICAJCXJldHVybiAiVFJBTlNDT0RFUl9FRFBfVkRTQyI7DQo+ID4gKwljYXNlIFBPV0VSX0RPTUFJ
Tl9UUkFOU0NPREVSX0FfVkRTQzoNCj4gPiArCQlyZXR1cm4gIlRSQU5TQ09ERVJfQV9WRFNDIjsN
Cj4gPiAgCWNhc2UgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRFNJX0E6DQo+ID4gIAkJcmV0dXJu
ICJUUkFOU0NPREVSX0RTSV9BIjsNCj4gPiAgCWNhc2UgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJf
RFNJX0M6DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuaA0KPiA+IGluZGV4IDc5MjYyYTViY2ViNC4uNzc2MWI0OTM2MDhh
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Bvd2VyLmgNCj4gPiBAQCAtMjksNiArMjksNyBAQCBlbnVtIGludGVsX2Rpc3Bs
YXlfcG93ZXJfZG9tYWluIHsNCj4gPiAgCVBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0QsDQo+ID4g
IAlQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9FRFAsDQo+ID4gIAlQT1dFUl9ET01BSU5fVFJBTlND
T0RFUl9FRFBfVkRTQywNCj4gPiArCVBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0FfVkRTQywNCj4g
PiAgCVBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0RTSV9BLA0KPiA+ICAJUE9XRVJfRE9NQUlOX1RS
QU5TQ09ERVJfRFNJX0MsDQo+ID4gIAlQT1dFUl9ET01BSU5fUE9SVF9ERElfQV9MQU5FUywNCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+ID4gaW5k
ZXggZmZlYzgwN2I4OTYwLi4wYzc1YjQwOGQ2YmEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiA+IEBAIC00NTksMTYgKzQ1OSwyMSBAQCBp
bnQgaW50ZWxfZHBfY29tcHV0ZV9kc2NfcGFyYW1zKHN0cnVjdA0KPiA+IGludGVsX2RwDQo+ID4g
KmludGVsX2RwLA0KPiA+ICBlbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9tYWluDQo+ID4gIGlu
dGVsX2RzY19wb3dlcl9kb21haW4oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpDQo+ID4gIHsNCj4gPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoY3J0Y19zdGF0ZS0NCj4gPiA+IGJhc2Uuc3RhdGUtPmRldik7DQo+ID4gIAllbnVt
IHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsN
Cj4gPiAgDQo+ID4gIAkvKg0KPiA+IC0JICogT24gSUNMIFZEU0Mvam9pbmluZyBmb3IgZURQIHRy
YW5zY29kZXIgdXNlcyBhIHNlcGFyYXRlIHBvd2VyDQo+ID4gd2VsbCBQVzINCj4gPiAtCSAqIFRo
aXMgcmVxdWlyZXMgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZEU0MgcG93ZXIgZG9tYWlu
Lg0KPiA+ICsJICogT24gSUNMKyBWRFNDL2pvaW5pbmcgZm9yIGVEUC9BIHRyYW5zY29kZXIgdXNl
cyBhIHNlcGFyYXRlDQo+ID4gcG93ZXIgd2VsbA0KPiA+ICsJICogUFcyLiBUaGlzIHJlcXVpcmVz
DQo+ID4gKwkgKg0KPiA+IFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFNDL1BPV0VSX0RP
TUFJTl9UUkFOU0NPREVSX0FfVkRTQw0KPiA+IHBvd2VyDQo+ID4gKwkgKiBkb21haW4uDQo+ID4g
IAkgKiBGb3IgYW55IG90aGVyIHRyYW5zY29kZXIsIFZEU0Mvam9pbmluZyB1c2VzIHRoZSBwb3dl
ciB3ZWxsDQo+ID4gYXNzb2NpYXRlZA0KPiA+ICAJICogd2l0aCB0aGUgcGlwZS90cmFuc2NvZGVy
IGluIHVzZS4gSGVuY2UgYW5vdGhlciByZWZlcmVuY2Ugb24NCj4gPiB0aGUNCj4gPiAgCSAqIHRy
YW5zY29kZXIgcG93ZXIgZG9tYWluIHdpbGwgc3VmZmljZS4NCj4gPiAgCSAqLw0KPiA+IC0JaWYg
KGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQKQ0KPiA+ICsJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIgJiYgY3B1X3RyYW5zY29kZXIgPT0NCj4gPiBUUkFOU0NPREVSX0EpDQo+
ID4gKwkJcmV0dXJuIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0FfVkRTQzsNCj4gPiArCWVsc2Ug
aWYgKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQKQ0KPiA+ICAJCXJldHVybiBQT1dF
Ul9ET01BSU5fVFJBTlNDT0RFUl9FRFBfVkRTQzsNCj4gPiAgCWVsc2UNCj4gPiAgCQlyZXR1cm4g
UE9XRVJfRE9NQUlOX1RSQU5TQ09ERVIoY3B1X3RyYW5zY29kZXIpOw0KPiANCj4gVGhpcyBpcyBt
aXNzaW5nIHRoZSBjaGFuZ2UgYWRkaW5nIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFND
IHRvDQo+IFRHTF9QV18yX1BPV0VSX0RPTUFJTlMuDQoNCg0KKiBUUkFOU0NPREVSX0FfVkRTQyAq
DQpNaXNzaW5nIHRoZSBjaGFuZ2UgYWRkaW5nIFRSQU5TQ09ERVJfQV9WRFNDIHRvIFRHTF9QV18y
X1BPV0VSX0RPTUFJTlMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
