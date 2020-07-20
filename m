Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C192272F1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 01:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFC389ED3;
	Mon, 20 Jul 2020 23:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D0289ED3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 23:34:07 +0000 (UTC)
IronPort-SDR: cLnroRAlqoQsVF11xJP3j8SvulAgj5qa7CwxYKek2i5xQMOq/fhxgH57i7xi1PauHc9CYE2ln/
 gkZLl/CX+qag==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="214693872"
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="214693872"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 16:34:05 -0700
IronPort-SDR: uZr0n8w0nnfAfaXrDYc2RqYpyPfmqQg1SWZUWNRSa7/KaQxwBDliUflWsvYPvksQuVmt4d0lpP
 mv6YcEOEXJZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="283681800"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga003.jf.intel.com with ESMTP; 20 Jul 2020 16:34:05 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 20 Jul 2020 16:34:05 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.66]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.164]) with mapi id 14.03.0439.000;
 Mon, 20 Jul 2020 16:34:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: Make sure TC-cold is blocked before
 enabling TC AUX power wells
Thread-Index: AQHWXu4NP/5XgR0dYEu8y8jQEBUIZ6kRlI6A
Date: Mon, 20 Jul 2020 23:34:04 +0000
Message-ID: <a0ed16b4c4b6f09627d9f1549c49c4eea93c46b1.camel@intel.com>
References: <20200720232952.16228-1-imre.deak@intel.com>
In-Reply-To: <20200720232952.16228-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <AB2ED70A24D4B7419C83C0AF997E542E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Make sure TC-cold is blocked
 before enabling TC AUX power wells
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTA3LTIxIGF0IDAyOjI5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBkZXBlbmRlbmN5IGJldHdlZW4gcG93ZXIgd2VsbHMgaXMgZGV0ZXJtaW5lZCBieSB0aGUgb3Jk
ZXJpbmcgb2YgdGhlDQo+IHBvd2VyIHdlbGwgbGlzdDogd2hlbiBlbmFibGluZyB0aGUgcG93ZXIg
d2VsbHMgZm9yIGEgZG9tYWluLCB0aGlzDQo+IGhhcHBlbnMgd2Fsa2luZyB0aGUgcG93ZXIgd2Vs
bCBsaXN0IGZvcndhcmQsIHdoaWxlIGRpc2FibGluZyB0aGVtDQo+IGhhcHBlbnMgaW4gdGhlIHJl
dmVyc2UgZGlyZWN0aW9uLiBBY2NvcmRpbmdseSBhIHBvd2VyIHdlbGwgb24gdGhlIGxpc3QNCj4g
bXVzdCBmb2xsb3cgYW55IG90aGVyIHBvd2VyIHdlbGwgaXQgZGVwZW5kcyBvbi4NCj4gDQo+IFNp
bmNlIHRoZSBUQyBBVVggcG93ZXIgd2VsbHMgZGVwZW5kIG9uIFRDLWNvbGQgYmVpbmcgYmxvY2tl
ZCwgbW92ZSB0aGUNCj4gVEMtY29sZCBvZmYgcG93ZXIgd2VsbCBiZWZvcmUgYWxsIEFVWCBwb3dl
ciB3ZWxscy4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCg0KPiBGaXhlczogM2MwMjkzNGIyNGUgKCJJbXBsZW1lbnQgVEMg
Y29sZCBzZXF1ZW5jZXMiKQ0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8DQo+IGpvc2Uu
c291emFAaW50ZWwuY29tDQo+ID4NCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDwNCj4gaW1y
ZS5kZWFrQGludGVsLmNvbQ0KPiA+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCAxMiArKysrKystLS0tLS0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBpbmRl
eCAwYzcxM2U4MzI3NGQuLmMyYWFmNjkxMWU3ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gQEAgLTQxNDYsNiAr
NDE0NiwxMiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjIHRnbF9w
b3dlcl93ZWxsc1tdID0gew0KPiAgCQkJLmhzdy5pZHggPSBUR0xfUFdfQ1RMX0lEWF9ERElfVEM2
LA0KPiAgCQl9LA0KPiAgCX0sDQo+ICsJew0KPiArCQkubmFtZSA9ICJUQyBjb2xkIG9mZiIsDQo+
ICsJCS5kb21haW5zID0gVEdMX1RDX0NPTERfT0ZGX1BPV0VSX0RPTUFJTlMsDQo+ICsJCS5vcHMg
PSAmdGdsX3RjX2NvbGRfb2ZmX29wcywNCj4gKwkJLmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAr
CX0sDQo+ICAJew0KPiAgCQkubmFtZSA9ICJBVVggQSIsDQo+ICAJCS5kb21haW5zID0gVEdMX0FV
WF9BX0lPX1BPV0VSX0RPTUFJTlMsDQo+IEBAIC00MzMyLDEyICs0MzM4LDYgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB0Z2xfcG93ZXJfd2VsbHNbXSA9IHsNCj4g
IAkJCS5oc3cuaXJxX3BpcGVfbWFzayA9IEJJVChQSVBFX0QpLA0KPiAgCQl9LA0KPiAgCX0sDQo+
IC0Jew0KPiAtCQkubmFtZSA9ICJUQyBjb2xkIG9mZiIsDQo+IC0JCS5kb21haW5zID0gVEdMX1RD
X0NPTERfT0ZGX1BPV0VSX0RPTUFJTlMsDQo+IC0JCS5vcHMgPSAmdGdsX3RjX2NvbGRfb2ZmX29w
cywNCj4gLQkJLmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAtCX0sDQo+ICB9Ow0KPiAgDQo+ICBz
dGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjIHJrbF9wb3dlcl93ZWxsc1td
ID0gew0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
