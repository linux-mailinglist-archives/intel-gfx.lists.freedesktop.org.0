Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA41339E58B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 19:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3616F6E96B;
	Mon,  7 Jun 2021 17:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384966E96B;
 Mon,  7 Jun 2021 17:34:12 +0000 (UTC)
IronPort-SDR: +riHn0zX7ZQ+FK5YX9aIIFn1A7URsLO6CelNXvs/+8nehh6JSpytBQdWtfowFwOk8MQghUdsLJ
 cKyPT3Wuyxaw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="185040613"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="185040613"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:34:11 -0700
IronPort-SDR: nLg2u/V/6gPiCqYZvcnJiVKIjK/BSODU1mYzBmCQYrXyHmXQLOz23kjfbDPbbk0DhDQwiD8wNr
 ElSKp16zfMCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="413106157"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2021 10:34:09 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 10:34:09 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 23:04:07 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Mon, 7 Jun 2021 23:04:06 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Harry Wentland <harry.wentland@amd.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Thread-Topic: [PATCH 02/21] drm: Add Plane Degamma Mode property
Thread-Index: AQHXVs8iz/BEHg6/IU6cOY8/4O80/6sD0+MAgAUBMgA=
Date: Mon, 7 Jun 2021 17:34:06 +0000
Message-ID: <152c3ac0e84e4bcdae832d8819179fce@intel.com>
References: <20210601105218.29185-1-uma.shankar@intel.com>
 <20210601105218.29185-3-uma.shankar@intel.com>
 <2154f1d1-2c86-ede7-4b23-acab93e3eb00@amd.com>
In-Reply-To: <2154f1d1-2c86-ede7-4b23-acab93e3eb00@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/21] drm: Add Plane Degamma Mode property
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
Cc: "Cyr, Aric" <Aric.Cyr@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSGFycnkgV2VudGxhbmQg
PGhhcnJ5LndlbnRsYW5kQGFtZC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSnVuZSA0LCAyMDIxIDEx
OjU0IFBNDQo+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGRyaS0NCj4gZGV2ZWxAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiBNb2RlbSwgQmhhbnVwcmFrYXNoIDxiaGFudXByYWthc2gubW9kZW1AaW50
ZWwuY29tPjsgQ3lyLCBBcmljDQo+IDxBcmljLkN5ckBhbWQuY29tPg0KPiBTdWJqZWN0OiBSZTog
W1BBVENIIDAyLzIxXSBkcm06IEFkZCBQbGFuZSBEZWdhbW1hIE1vZGUgcHJvcGVydHkNCj4gDQo+
IE9uIDIwMjEtMDYtMDEgNjo1MSBhLm0uLCBVbWEgU2hhbmthciB3cm90ZToNCj4gPiBBZGQgUGxh
bmUgRGVnYW1tYSBNb2RlIGFzIGFuIGVudW0gcHJvcGVydHkuIENyZWF0ZSBhIGhlbHBlciBmdW5j
dGlvbg0KPiA+IGZvciBhbGwgcGxhbmUgY29sb3IgbWFuYWdlbWVudCBmZWF0dXJlcy4NCj4gPg0K
PiA+IFRoaXMgaXMgYW4gZW51bSBwcm9wZXJ0eSB3aXRoIHZhbHVlcyBhcyBibG9iX2lkJ3MgYW5k
IGV4cG9zZXMgdGhlDQo+ID4gdmFyaW91cyBnYW1tYSBtb2RlcyBzdXBwb3J0ZWQgYW5kIHRoZSBs
dXQgcmFuZ2VzLiBHZXR0aW5nIHRoZSBibG9iIGlkDQo+ID4gaW4gdXNlcnNwYWNlLCB1c2VyIGNh
biBnZXQgdGhlIG1vZGUgc3VwcG9ydGVkIGFuZCBhbHNvIHRoZSByYW5nZSBvZg0KPiA+IGdhbW1h
IG1vZGUgc3VwcG9ydGVkIHdpdGggbnVtYmVyIG9mIGx1dCBjb2VmZmljaWVudHMuIEl0IGNhbiB0
aGVuIHNldA0KPiA+IG9uZSBvZiB0aGUgbW9kZXMgdXNpbmcgdGhpcyBlbnVtIHByb3BlcnR5Lg0K
PiA+DQo+ID4gTHV0IHZhbHVlcyB3aWxsIGJlIHNlbnQgdGhyb3VnaCBzZXBhcmF0ZSBHQU1NQV9M
VVQgYmxvYiBwcm9wZXJ0eS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIERvY3VtZW50YXRpb24vZ3B1L2Ry
bS1rbXMucnN0ICAgICAgICAgICAgIHwgOTAgKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pYy5jICAgICAgICAgICAgICB8ICAxICsNCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2RybV9hdG9taWNfc3RhdGVfaGVscGVyLmMgfCAgMiArDQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyAgICAgICAgIHwgIDQgKw0KPiA+ICBkcml2ZXJz
L2dwdS9kcm0vZHJtX2NvbG9yX21nbXQuYyAgICAgICAgICB8IDkzICsrKysrKysrKysrKysrKysr
KysrKystDQo+ID4gIGluY2x1ZGUvZHJtL2RybV9tb2RlX29iamVjdC5oICAgICAgICAgICAgIHwg
IDIgKy0NCj4gPiAgaW5jbHVkZS9kcm0vZHJtX3BsYW5lLmggICAgICAgICAgICAgICAgICAgfCAy
MyArKysrKysNCj4gPiAgNyBmaWxlcyBjaGFuZ2VkLCAyMTIgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9kcm0ta21z
LnJzdA0KPiA+IGIvRG9jdW1lbnRhdGlvbi9ncHUvZHJtLWttcy5yc3QgaW5kZXggODdlNTAyM2Uz
ZjU1Li43NTJiZTU0NWU3ZDcNCj4gPiAxMDA2NDQNCj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2dw
dS9kcm0ta21zLnJzdA0KPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZ3B1L2RybS1rbXMucnN0DQo+
ID4gQEAgLTUxNCw5ICs1MTQsOTkgQEAgRGFtYWdlIFRyYWNraW5nIFByb3BlcnRpZXMgIENvbG9y
IE1hbmFnZW1lbnQNCj4gPiBQcm9wZXJ0aWVzDQo+ID4gIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiA+DQo+ID4gK0JlbG93IGlzIGhvdyBhIHR5cGljYWwgaGFyZHdhcmUgcGlwZWxpbmUg
Zm9yIGNvbG9yIHdpbGwgbG9vayBsaWtlOg0KPiA+ICsNCj4gPiArLi4ga2VybmVsLXJlbmRlcjo6
IERPVA0KPiA+ICsgICA6YWx0OiBEaXNwbGF5IENvbG9yIFBpcGVsaW5lDQo+ID4gKyAgIDpjYXB0
aW9uOiBEaXNwbGF5IENvbG9yIFBpcGVsaW5lIE92ZXJ2aWV3DQo+ID4gKw0KPiA+ICsgICBkaWdy
YXBoICJLTVMiIHsNCj4gPiArICAgICAgbm9kZSBbc2hhcGU9Ym94XQ0KPiA+ICsNCj4gPiArICAg
ICAgc3ViZ3JhcGggY2x1c3Rlcl9zdGF0aWMgew0KPiA+ICsgICAgICAgICAgc3R5bGU9ZGFzaGVk
DQo+ID4gKyAgICAgICAgICBsYWJlbD0iRGlzcGxheSBDb2xvciBIYXJkd2FyZSBCbG9ja3MiDQo+
ID4gKw0KPiA+ICsgICAgICAgICAgbm9kZSBbYmdjb2xvcj1ncmV5IHN0eWxlPWZpbGxlZF0NCj4g
PiArICAgICAgICAgICJQbGFuZSBEZWdhbW1hIEEiIC0+ICJQbGFuZSBDU0MvQ1RNIEEiDQo+ID4g
KyAgICAgICAgICAiUGxhbmUgQ1NDL0NUTSBBIiAtPiAiUGxhbmUgR2FtbWEgQSINCj4gPiArICAg
ICAgICAgICJQaXBlIEJsZW5kZXIiIFtjb2xvcj1saWdodGJsdWUsc3R5bGU9ZmlsbGVkLCB3aWR0
aD01LjI1LCBoZWlnaHQ9MC43NV07DQo+ID4gKyAgICAgICAgICAiUGxhbmUgR2FtbWEgQSIgLT4g
IlBpcGUgQmxlbmRlciINCj4gPiArCSAgIlBpcGUgQmxlbmRlciIgLT4gIlBpcGUgRGVHYW1tYSIN
Cj4gPiArICAgICAgICAgICJQaXBlIERlR2FtbWEiIC0+ICJQaXBlIENTQy9DVE0iDQo+ID4gKyAg
ICAgICAgICAiUGlwZSBDU0MvQ1RNIiAtPiAiUGlwZSBHYW1tYSINCj4gPiArICAgICAgICAgICJQ
aXBlIEdhbW1hIiAtPiAiUGlwZSBPdXRwdXQiDQo+ID4gKyAgICAgIH0NCj4gPiArDQo+IA0KPiBJ
dCBtaWdodCBiZSB3b3J0aHdoaWxlIHRvIGFsc28gaGlnaGxpZ2h0IHRoZSBZQ2JDciBjb2VmZmlj
aWVudCBtYXRyaXggaW4gdGhlIHBpcGVsaW5lLA0KPiBiZXR3ZWVuIHRoZSBGQiBhbmQgUGxhbmUg
ZGVnYW1tYSwgaS5lLg0KPiAgIFlDYkNyIGNvZWZmaWNpZW50cyA+IHBsYW5lIGRlZ2FtbWEgPiBj
c2MgPiAuLi4NCj4gDQo+IE9uZSBwcm9ibGVtIHdpdGggdGhpcyB2aWV3IGlzIHRoYXQgbm90IGFs
bCBIVyB3aWxsIHN1cHBvcnQgYWxsIChvciBhbnkpIG9mIHRoZXNlIENNDQo+IGJsb2NrcyBvbiBh
bGwgcGxhbmVzLiBGb3IgZXhhbXBsZSwgb24gQU1EIEhXIGN1cnNvcnMgYXJlIHZlcnkgZGlmZmVy
ZW50IGZyb20gb3RoZXINCj4gcGxhbmVzIGFuZCBkb24ndCByZWFsbHkgaGF2ZSBmdWxsIENNIHN1
cHBvcnQuDQo+IA0KPiA+ICsgICAgICBzdWJncmFwaCBjbHVzdGVyX3N0YXRpYyB7DQo+ID4gKyAg
ICAgICAgICBzdHlsZT1kYXNoZWQNCj4gPiArDQo+ID4gKyAgICAgICAgICBub2RlIFtzaGFwZT1i
b3hdDQo+ID4gKyAgICAgICAgICAiUGxhbmUgRGVnYW1tYSBCIiAtPiAiUGxhbmUgQ1NDL0NUTSBC
Ig0KPiA+ICsgICAgICAgICAgIlBsYW5lIENTQy9DVE0gQiIgLT4gIlBsYW5lIEdhbW1hIEIiDQo+
ID4gKyAgICAgICAgICAiUGxhbmUgR2FtbWEgQiIgLT4gIlBpcGUgQmxlbmRlciINCj4gPiArICAg
ICAgfQ0KPiA+ICsNCj4gPiArICAgICAgc3ViZ3JhcGggY2x1c3Rlcl9zdGF0aWMgew0KPiA+ICsg
ICAgICAgICAgc3R5bGU9ZGFzaGVkDQo+ID4gKw0KPiA+ICsgICAgICAgICAgbm9kZSBbc2hhcGU9
Ym94XQ0KPiA+ICsgICAgICAgICAgIlBsYW5lIERlZ2FtbWEgQyIgLT4gIlBsYW5lIENTQy9DVE0g
QyINCj4gPiArICAgICAgICAgICJQbGFuZSBDU0MvQ1RNIEMiIC0+ICJQbGFuZSBHYW1tYSBDIg0K
PiA+ICsgICAgICAgICAgIlBsYW5lIEdhbW1hIEMiIC0+ICJQaXBlIEJsZW5kZXIiDQo+ID4gKyAg
ICAgIH0NCj4gPiArDQo+ID4gKyAgICAgIHN1YmdyYXBoIGNsdXN0ZXJfZmIgew0KPiA+ICsgICAg
ICAgICAgc3R5bGU9ZGFzaGVkDQo+ID4gKyAgICAgICAgICBsYWJlbD0iUkFNIg0KPiA+ICsNCj4g
PiArICAgICAgICAgIG5vZGUgW3NoYXBlPWJveCB3aWR0aD0xLjcgaGVpZ2h0PTAuMl0NCj4gPiAr
DQo+ID4gKyAgICAgICAgICAiRkIgMSIgLT4gIlBsYW5lIERlZ2FtbWEgQSINCj4gPiArICAgICAg
ICAgICJGQiAyIiAtPiAiUGxhbmUgRGVnYW1tYSBCIg0KPiA+ICsgICAgICAgICAgIkZCIDMiIC0+
ICJQbGFuZSBEZWdhbW1hIEMiDQo+ID4gKyAgICAgIH0NCj4gPiArICAgfQ0KPiA+ICsNCj4gPiAr
SW4gcmVhbCB3b3JsZCB1c2VjYXNlcywNCj4gPiArDQo+ID4gKzEuIFBsYW5lIERlZ2FtbWEgY2Fu
IGJlIHVzZWQgdG8gbGluZWFyaXplIGEgbm9uIGxpbmVhciBnYW1tYSBlbmNvZGVkDQo+ID4gK2Zy
YW1lYnVmZmVyLiBUaGlzIGlzIG5lZWRlZCB0byBkbyBhbnkgbGluZWFyIG1hdGggbGlrZSBjb2xv
ciBzcGFjZQ0KPiA+ICtjb252ZXJzaW9uLiBGb3IgZXgsIGxpbmVhcml6ZSBmcmFtZXMgZW5jb2Rl
ZCBpbiBTUkdCIG9yIGJ5IEhEUiBjdXJ2ZS4NCj4gPiArDQo+ID4gKzIuIExhdGVyIFBsYW5lIENU
TSBibG9jayBjYW4gY29udmVydCB0aGUgY29udGVudCB0byBzb21lIGRpZmZlcmVudA0KPiA+ICtj
b2xvcnNwYWNlLiBGb3IgZXgsIFNSR0IgdG8gQlQyMDIwIGV0Yy4NCj4gPiArDQo+ID4gKzMuIFBs
YW5lIEdhbW1hIGJsb2NrIGNhbiBiZSB1c2VkIGxhdGVyIHRvIHJlLWFwcGx5IHRoZSBub24tbGlu
ZWFyDQo+ID4gK2N1cnZlLiBUaGlzIGNhbiBhbHNvIGJlIHVzZWQgdG8gYXBwbHkgVG9uZSBNYXBw
aW5nIGZvciBIRFIgdXNlY2FzZXMuDQo+ID4gKw0KPiANCj4gVGhpcyB3b3VsZCBtZWFuIHlvdSdy
ZSBibGVuZGluZyBpbiBnYW1tYSBzcGFjZSB3aGljaCBpcyBsaWtlbHkgbm90IHdoYXQgbW9zdA0K
PiBjb21wb3NpdG9ycyBleHBlY3QuIFRoZXJlIGFyZSBudW1lcm91cyBhcnRpY2xlcyB0aGF0IGRl
c2NyaWJlIHdoeSBibGVuZGluZyBpbg0KPiBnYW1tYSBzcGFjZSBpcyBwcm9ibGVtYXRpYywgc3Vj
aCBhcyBbMV0NCj4gDQo+IFsxXSBodHRwczovL25pbmVkZWdyZWVzYmVsb3cuY29tL3Bob3RvZ3Jh
cGh5L2xpbmVhci1nYW1tYS1ibHVyLW5vcm1hbC0NCj4gYmxlbmQuaHRtbA0KPiANCj4gVG8gYmxl
bmQgaW4gbGluZWFyIHNwYWNlIHRoaXMgc2hvdWxkIGJlIGNvbmZpZ3VyZWQgdG8gZG8NCj4gDQo+
ICAgUGxhbmUgRGVnYW1tYSA+IFBsYW5lIENUTSA+IENSVEMgR2FtbWENCj4gDQo+IEkgdGhpbmsg
aXQgd291bGQgYWxzbyBiZSBnb29kIGlmIHdlIG1vdmVkIGF3YXkgZnJvbSBjYWxsaW5nIHRoaXMg
Z2FtbWEuIEl0J3MgcmVhbGx5DQo+IG9ubHkgZ2FtbWEgZm9yIGxlZ2FjeSBTRFIgc2NlbmFyaW9z
LiBGb3IgSERSIGNhc2VzIEkgd291bGQgbmV2ZXIgZXhwZWN0IHRoZXNlIHRvDQo+IHVzZSBnYW1t
YSBhbmQgZXZlbiB0aG91Z2ggdGhlIHNSR0IgdHJhbnNmZXIgZnVuY3Rpb24gaXMgYmFzZWQgb24g
Z2FtbWENCj4gZnVuY3Rpb25zIGl0J3MgY29tcGxpY2F0ZWQgWzJdLg0KPiANCj4gWzJdIGh0dHBz
Oi8vZW4ud2lraXBlZGlhLm9yZy93aWtpL1NSR0INCj4gDQo+IEEgYmV0dGVyIHdheSB0byBkZXNj
cmliZSB0aGVzZSB3b3VsZCBiZSBhcyAidHJhbnNmZXIgZnVuY3Rpb24iIGFuZCAiaW52ZXJzZSB0
cmFuc2Zlcg0KPiBmdW5jdGlvbi4iIFRoZSBzcGFjZSBhdCB2YXJpb3VzIHN0YWdlcyBjb3VsZCB0
aGVuIGJlIGRlc2NyaWJlZCBhcyBsaW5lYXIgb3Igbm9uLQ0KPiBsaW5lYXIsIHNwZWNpZmljYWxs
eSBQUSwgSExHLCBzUkdCLCBCVDcwOSwgb3IgdXNpbmcgYW5vdGhlciB0cmFuc2ZlciBmdW5jdGlv
bi4NCg0KWWVhaCBJIGp1c3Qga2VwdCB0aGUgbmFtaW5nIGJhc2VkIG9uIHdoYXQgd2UgaGFkIGZv
ciBjcnRjIHRvIGF2b2lkIGFtYmlndWl0eS4gQnV0IHllcywgd2UNCmNhbiByZW5hbWUgdGhlc2Ug
dG8gaGF2ZSB0aGVtIG5hbWVkIGdlbmVyaWNhbGx5LCBhcyBnYW1tYSBsdXQgYWN0dWFsbHkgY2Fu
IGJlIHVzZWQgZm9yDQpUb25lIG1hcHBpbmcgYXMgd2VsbCBhbmQgaXRzIG5vdCBqdXN0IG1lYW50
IGZvciBhcHBseWluZyBhIGZpeGVkIG5vbiBsaW5lciBjdXJ2ZSBvbmx5LiBIb3dldmVyDQpuYW1p
bmcgYmFzZWQgb24gdHJhbnNmZXIgZnVuY3Rpb24gaXMgYWxzbyBub3Qgb3B0aW11bSBhcyBUb25l
IG1hcHBpbmcgaXMgbm90IHJlbGF0ZWQgdG8gdHJhbnNmZXINCmZ1bmN0aW9uLiBNYXkgYmUgd2Ug
Y2FuIG5hbWUgdGhlbSBhczoNCmxpbmVhcl9sdXQgYW5kIG5sX3RvbmVfbWFwcGVyX2x1dC4NCg0K
T3RoZXIgaWRlYXMgZm9yIG5hbWVzIGFyZSB3ZWxjb21lLg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5r
YXINCg0KDQo+IEhhcnJ5DQo+IA0KPiA+ICtBbGwgdGhlIGxheWVycyBvciBmcmFtZWJ1ZmZlcnMg
bmVlZCB0byBiZSBjb252ZXJ0ZWQgdG8gc2FtZSBjb2xvcg0KPiA+ICtzcGFjZSBhbmQgZm9ybWF0
IGJlZm9yZSBibGVuZGluZy4gVGhlIHBsYW5lIGNvbG9yIGhhcmR3YXJlIGJsb2NrcyBjYW4NCj4g
PiAraGVscCB3aXRoIHRoaXMuIE9uY2UgdGhlIERhdGEgaXMgYmxlbmRlZCwgc2ltaWxhciBjb2xv
ciBwcm9jZXNzaW5nDQo+ID4gK2NhbiBiZSBkb25lIG9uIGJsZW5kZWQgb3V0cHV0IHVzaW5nIHBp
cGUgY29sb3IgaGFyZHdhcmUgYmxvY2tzLg0KPiA+ICsNCj4gPiArRFJNIFByb3BlcnRpZXMgaGF2
ZSBiZWVuIGNyZWF0ZWQgdG8gZGVmaW5lIGFuZCBleHBvc2UgYWxsIHRoZXNlDQo+ID4gK2hhcmR3
YXJlIGJsb2NrcyB0byB1c2Vyc3BhY2UuIEEgdXNlcnNwYWNlIGFwcGxpY2F0aW9uIChjb21wb3Np
dG9yIG9yDQo+ID4gK2FueSBjb2xvciBhcHApIGNhbiB1c2UgdGhlc2UgaW50ZXJmYWNlcyBhbmQg
ZGVmaW5lIHBvbGljaWVzIHRvDQo+ID4gK2VmZmljaWVudGx5IHVzZSB0aGUgZGlzcGxheSBoYXJk
d2FyZSBmb3Igc3VjaCBjb2xvciBvcGVyYXRpb25zLg0KPiA+ICsNCj4gPiArUGlwZSBDb2xvciBN
YW5hZ2VtZW50IFByb3BlcnRpZXMNCj4gPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQo+ID4gKw0KPiA+ICAuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2RybV9jb2xv
cl9tZ210LmMNCj4gPiAgICAgOmRvYzogb3ZlcnZpZXcNCj4gPg0KPiA+ICtQbGFuZSBDb2xvciBN
YW5hZ2VtZW50IFByb3BlcnRpZXMNCj4gPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQo+ID4gKw0KPiA+ICsuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2RybV9jb2xv
cl9tZ210LmMNCj4gPiArICAgOmRvYzogUGxhbmUgQ29sb3IgUHJvcGVydGllcw0KPiA+ICsNCj4g
PiArLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9kcm1fY29sb3JfbWdtdC5jDQo+ID4g
KyAgIDpkb2M6IGV4cG9ydA0KPiA+ICsNCj4gPiAgVGlsZSBHcm91cCBQcm9wZXJ0eQ0KPiA+ICAt
LS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2RybV9hdG9taWMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWMuYyBpbmRleCBh
OGJiYjAyMTY4NGIuLjg4OTJkMDM2MDJmNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vZHJtX2F0b21pYy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWMuYw0K
PiA+IEBAIC03MDgsNiArNzA4LDcgQEAgc3RhdGljIHZvaWQgZHJtX2F0b21pY19wbGFuZV9wcmlu
dF9zdGF0ZShzdHJ1Y3QNCj4gZHJtX3ByaW50ZXIgKnAsDQo+ID4gIAkJICAgZHJtX2dldF9jb2xv
cl9lbmNvZGluZ19uYW1lKHN0YXRlLT5jb2xvcl9lbmNvZGluZykpOw0KPiA+ICAJZHJtX3ByaW50
ZihwLCAiXHRjb2xvci1yYW5nZT0lc1xuIiwNCj4gPiAgCQkgICBkcm1fZ2V0X2NvbG9yX3Jhbmdl
X25hbWUoc3RhdGUtPmNvbG9yX3JhbmdlKSk7DQo+ID4gKwlkcm1fcHJpbnRmKHAsICJcdGNvbG9y
X21nbXRfY2hhbmdlZD0lZFxuIiwNCj4gPiArc3RhdGUtPmNvbG9yX21nbXRfY2hhbmdlZCk7DQo+
ID4NCj4gPiAgCWlmIChwbGFuZS0+ZnVuY3MtPmF0b21pY19wcmludF9zdGF0ZSkNCj4gPiAgCQlw
bGFuZS0+ZnVuY3MtPmF0b21pY19wcmludF9zdGF0ZShwLCBzdGF0ZSk7IGRpZmYgLS1naXQNCj4g
PiBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3N0YXRlX2hlbHBlci5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuYw0KPiA+IGluZGV4IGRkY2Y1YzJj
OGU2YS4uZjI2YjAzODUzNzExIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
YXRvbWljX3N0YXRlX2hlbHBlci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9t
aWNfc3RhdGVfaGVscGVyLmMNCj4gPiBAQCAtMzExLDYgKzMxMSw4IEBAIHZvaWQgX19kcm1fYXRv
bWljX2hlbHBlcl9wbGFuZV9kdXBsaWNhdGVfc3RhdGUoc3RydWN0DQo+IGRybV9wbGFuZSAqcGxh
bmUsDQo+ID4gIAlzdGF0ZS0+ZmVuY2UgPSBOVUxMOw0KPiA+ICAJc3RhdGUtPmNvbW1pdCA9IE5V
TEw7DQo+ID4gIAlzdGF0ZS0+ZmJfZGFtYWdlX2NsaXBzID0gTlVMTDsNCj4gPiArDQo+ID4gKwlz
dGF0ZS0+Y29sb3JfbWdtdF9jaGFuZ2VkID0gZmFsc2U7DQo+ID4gIH0NCj4gPiAgRVhQT1JUX1NZ
TUJPTChfX2RybV9hdG9taWNfaGVscGVyX3BsYW5lX2R1cGxpY2F0ZV9zdGF0ZSk7DQo+ID4NCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfdWFwaS5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMNCj4gPiBpbmRleCA0MzhlOTU4NWIyMjUu
LjQwZmEwNWZhMzNkYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21p
Y191YXBpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY191YXBpLmMNCj4g
PiBAQCAtNTk1LDYgKzU5NSw4IEBAIHN0YXRpYyBpbnQgZHJtX2F0b21pY19wbGFuZV9zZXRfcHJv
cGVydHkoc3RydWN0DQo+IGRybV9wbGFuZSAqcGxhbmUsDQo+ID4gIAkJc3RhdGUtPmNvbG9yX2Vu
Y29kaW5nID0gdmFsOw0KPiA+ICAJfSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBwbGFuZS0+Y29sb3Jf
cmFuZ2VfcHJvcGVydHkpIHsNCj4gPiAgCQlzdGF0ZS0+Y29sb3JfcmFuZ2UgPSB2YWw7DQo+ID4g
Kwl9IGVsc2UgaWYgKHByb3BlcnR5ID09IHBsYW5lLT5kZWdhbW1hX21vZGVfcHJvcGVydHkpIHsN
Cj4gPiArCQlzdGF0ZS0+ZGVnYW1tYV9tb2RlID0gdmFsOw0KPiA+ICAJfSBlbHNlIGlmIChwcm9w
ZXJ0eSA9PSBjb25maWctPnByb3BfZmJfZGFtYWdlX2NsaXBzKSB7DQo+ID4gIAkJcmV0ID0gZHJt
X2F0b21pY19yZXBsYWNlX3Byb3BlcnR5X2Jsb2JfZnJvbV9pZChkZXYsDQo+ID4gIAkJCQkJJnN0
YXRlLT5mYl9kYW1hZ2VfY2xpcHMsDQo+ID4gQEAgLTY2MSw2ICs2NjMsOCBAQCBkcm1fYXRvbWlj
X3BsYW5lX2dldF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX3BsYW5lDQo+ICpwbGFuZSwNCj4gPiAgCQkq
dmFsID0gc3RhdGUtPmNvbG9yX2VuY29kaW5nOw0KPiA+ICAJfSBlbHNlIGlmIChwcm9wZXJ0eSA9
PSBwbGFuZS0+Y29sb3JfcmFuZ2VfcHJvcGVydHkpIHsNCj4gPiAgCQkqdmFsID0gc3RhdGUtPmNv
bG9yX3JhbmdlOw0KPiA+ICsJfSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBwbGFuZS0+ZGVnYW1tYV9t
b2RlX3Byb3BlcnR5KSB7DQo+ID4gKwkJKnZhbCA9IHN0YXRlLT5kZWdhbW1hX21vZGU7DQo+ID4g
IAl9IGVsc2UgaWYgKHByb3BlcnR5ID09IGNvbmZpZy0+cHJvcF9mYl9kYW1hZ2VfY2xpcHMpIHsN
Cj4gPiAgCQkqdmFsID0gKHN0YXRlLT5mYl9kYW1hZ2VfY2xpcHMpID8NCj4gPiAgCQkJc3RhdGUt
PmZiX2RhbWFnZV9jbGlwcy0+YmFzZS5pZCA6IDA7IGRpZmYgLS1naXQNCj4gPiBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fY29sb3JfbWdtdC5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb2xvcl9tZ210
LmMNCj4gPiBpbmRleCBiYjE0ZjQ4OGM4ZjYuLjA4NWVkMGQwZGIwMCAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vZHJtX2NvbG9yX21nbXQuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1fY29sb3JfbWdtdC5jDQo+ID4gQEAgLTM0LDggKzM0LDggQEANCj4gPiAgLyoqDQo+
ID4gICAqIERPQzogb3ZlcnZpZXcNCj4gPiAgICoNCj4gPiAtICogQ29sb3IgbWFuYWdlbWVudCBv
ciBjb2xvciBzcGFjZSBhZGp1c3RtZW50cyBpcyBzdXBwb3J0ZWQgdGhyb3VnaCBhDQo+ID4gc2V0
IG9mIDUNCj4gPiAtICogcHJvcGVydGllcyBvbiB0aGUgJmRybV9jcnRjIG9iamVjdC4gVGhleSBh
cmUgc2V0IHVwIGJ5IGNhbGxpbmcNCj4gPiArICogUGlwZSBDb2xvciBtYW5hZ2VtZW50IG9yIGNv
bG9yIHNwYWNlIGFkanVzdG1lbnRzIGlzIHN1cHBvcnRlZA0KPiA+ICsgdGhyb3VnaCBhDQo+ID4g
KyAqIHNldCBvZiA1IHByb3BlcnRpZXMgb24gdGhlICZkcm1fY3J0YyBvYmplY3QuIFRoZXkgYXJl
IHNldCB1cCBieQ0KPiA+ICsgY2FsbGluZw0KPiA+ICAgKiBkcm1fY3J0Y19lbmFibGVfY29sb3Jf
bWdtdCgpLg0KPiA+ICAgKg0KPiA+ICAgKiAiREVHQU1NQV9MVVTigJ06DQo+ID4gQEAgLTU4NCw2
ICs1ODQsOTUgQEAgaW50IGRybV9wbGFuZV9jcmVhdGVfY29sb3JfcHJvcGVydGllcyhzdHJ1Y3QN
Cj4gPiBkcm1fcGxhbmUgKnBsYW5lLCAgfQ0KPiA+IEVYUE9SVF9TWU1CT0woZHJtX3BsYW5lX2Ny
ZWF0ZV9jb2xvcl9wcm9wZXJ0aWVzKTsNCj4gPg0KPiA+ICsvKioNCj4gPiArICogRE9DOiBQbGFu
ZSBDb2xvciBQcm9wZXJ0aWVzDQo+ID4gKyAqDQo+ID4gKyAqIFBsYW5lIENvbG9yIG1hbmFnZW1l
bnQgb3IgY29sb3Igc3BhY2UgYWRqdXN0bWVudHMgaXMgc3VwcG9ydGVkDQo+ID4gKyAqIHRocm91
Z2ggYSBzZXQgb2YgNSBwcm9wZXJ0aWVzIG9uIHRoZSAmZHJtX3BsYW5lIG9iamVjdC4NCj4gPiAr
ICoNCj4gPiArICogZGVnYW1tYV9tb2RlX3Byb3BlcnR5Og0KPiA+ICsgKiAgICAgQmxvYiBwcm9w
ZXJ0eSB3aGljaCBhZHZlcnRpemVzIHRoZSBwb3NzaWJsZSBkZWdhbW1hIG1vZGVzIGFuZA0KPiA+
ICsgKiAgICAgbHV0IHJhbmdlcyBzdXBwb3J0ZWQgYnkgdGhlIHBsYXRmb3JtLiBUaGlzICBhbGxv
d3MgdXNlcnNwYWNlDQo+ID4gKyAqICAgICB0byBxdWVyeSBhbmQgZ2V0IHRoZSBwbGFuZSBkZWdh
bW1hIGNvbG9yIGNhcHMgYW5kIGNob29zZSB0aGUNCj4gPiArICogICAgIGFwcHJvcHJpYXRlIGRl
Z2FtbWEgbW9kZSBhbmQgY3JlYXRlIGx1dCB2YWx1ZXMgYWNjb3JkaW5nbHkNCj4gPiArICoNCj4g
PiArICovDQo+ID4gK2ludCBkcm1fcGxhbmVfY3JlYXRlX2NvbG9yX21nbXRfcHJvcGVydGllcyhz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPiA+ICsJCQkJCSAgIHN0cnVjdCBkcm1fcGxhbmUgKnBs
YW5lLA0KPiA+ICsJCQkJCSAgIGludCBudW1fdmFsdWVzKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3Qg
ZHJtX3Byb3BlcnR5ICpwcm9wOw0KPiA+ICsNCj4gPiArCXByb3AgPSBkcm1fcHJvcGVydHlfY3Jl
YXRlKGRldiwgRFJNX01PREVfUFJPUF9FTlVNLA0KPiA+ICsJCQkJICAgIlBMQU5FX0RFR0FNTUFf
TU9ERSIsIG51bV92YWx1ZXMpOw0KPiA+ICsJaWYgKCFwcm9wKQ0KPiA+ICsJCXJldHVybiAtRU5P
TUVNOw0KPiA+ICsNCj4gPiArCXBsYW5lLT5kZWdhbW1hX21vZGVfcHJvcGVydHkgPSBwcm9wOw0K
PiA+ICsNCj4gPiArCXJldHVybiAwOw0KPiA+ICt9DQo+ID4gK0VYUE9SVF9TWU1CT0woZHJtX3Bs
YW5lX2NyZWF0ZV9jb2xvcl9tZ210X3Byb3BlcnRpZXMpOw0KPiA+ICsNCj4gPiArdm9pZCBkcm1f
cGxhbmVfYXR0YWNoX2RlZ2FtbWFfcHJvcGVydGllcyhzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSkg
ew0KPiA+ICsJaWYgKCFwbGFuZS0+ZGVnYW1tYV9tb2RlX3Byb3BlcnR5KQ0KPiA+ICsJCXJldHVy
bjsNCj4gPiArDQo+ID4gKwlkcm1fb2JqZWN0X2F0dGFjaF9wcm9wZXJ0eSgmcGxhbmUtPmJhc2Us
DQo+ID4gKwkJCQkgICBwbGFuZS0+ZGVnYW1tYV9tb2RlX3Byb3BlcnR5LCAwKTsgfQ0KPiA+ICtF
WFBPUlRfU1lNQk9MKGRybV9wbGFuZV9hdHRhY2hfZGVnYW1tYV9wcm9wZXJ0aWVzKTsNCj4gPiAr
DQo+ID4gK2ludCBkcm1fcGxhbmVfY29sb3JfYWRkX2dhbW1hX2RlZ2FtbWFfbW9kZV9yYW5nZShz
dHJ1Y3QgZHJtX3BsYW5lDQo+ICpwbGFuZSwNCj4gPiArCQkJCQkJIGNvbnN0IGNoYXIgKm5hbWUs
DQo+ID4gKwkJCQkJCSBjb25zdCBzdHJ1Y3QgZHJtX2NvbG9yX2x1dF9yYW5nZQ0KPiAqcmFuZ2Vz
LA0KPiA+ICsJCQkJCQkgc2l6ZV90IGxlbmd0aCwgZW51bSBsdXRfdHlwZSB0eXBlKQ0KPiB7DQo+
ID4gKwlzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2I7DQo+ID4gKwlzdHJ1Y3QgZHJtX3By
b3BlcnR5ICpwcm9wID0gTlVMTDsNCj4gPiArCWludCBudW1fcmFuZ2VzID0gbGVuZ3RoIC8gc2l6
ZW9mKHJhbmdlc1swXSk7DQo+ID4gKwlpbnQgaSwgcmV0LCBudW1fdHlwZXNfMDsNCj4gPiArDQo+
ID4gKwlpZiAodHlwZSA9PSBMVVRfVFlQRV9ERUdBTU1BKQ0KPiA+ICsJCXByb3AgPSBwbGFuZS0+
ZGVnYW1tYV9tb2RlX3Byb3BlcnR5Ow0KPiA+ICsNCj4gPiArCWlmICghcHJvcCkNCj4gPiArCQly
ZXR1cm4gLUVJTlZBTDsNCj4gPiArDQo+ID4gKwlpZiAobGVuZ3RoID09IDAgJiYgbmFtZSkNCj4g
PiArCQlyZXR1cm4gZHJtX3Byb3BlcnR5X2FkZF9lbnVtKHByb3AsIDAsIG5hbWUpOw0KPiA+ICsN
Cj4gPiArCWlmIChXQVJOX09OKGxlbmd0aCA9PSAwIHx8IGxlbmd0aCAlIHNpemVvZihyYW5nZXNb
MF0pICE9IDApKQ0KPiA+ICsJCXJldHVybiAtRUlOVkFMOw0KPiA+ICsJbnVtX3R5cGVzXzAgPSBo
d2VpZ2h0OChyYW5nZXNbMF0uZmxhZ3MgJiAoRFJNX01PREVfTFVUX0dBTU1BIHwNCj4gPiArCQkJ
ICAgICAgIERSTV9NT0RFX0xVVF9ERUdBTU1BKSk7DQo+ID4gKwlpZiAobnVtX3R5cGVzXzAgPT0g
MCkNCj4gPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiArDQo+ID4gKwlmb3IgKGkgPSAxOyBpIDwg
bnVtX3JhbmdlczsgaSsrKSB7DQo+ID4gKwkJaW50IG51bV90eXBlcyA9IGh3ZWlnaHQ4KHJhbmdl
c1tpXS5mbGFncyAmDQo+IChEUk1fTU9ERV9MVVRfR0FNTUEgfA0KPiA+ICsJCQkJCSBEUk1fTU9E
RV9MVVRfREVHQU1NQSkpOw0KPiA+ICsNCj4gPiArCQkvKiBlaXRoZXIgYWxsIHJhbmdlcyBoYXZl
IERFR0FNTUF8R0FNTUEgb3Igbm9uZSBoYXZlIGl0ICovDQo+ID4gKwkJaWYgKG51bV90eXBlc18w
ICE9IG51bV90eXBlcykNCj4gPiArCQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwl9DQo+ID4gKw0K
PiA+ICsJYmxvYiA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfYmxvYihwbGFuZS0+ZGV2LCBsZW5ndGgs
IHJhbmdlcyk7DQo+ID4gKwlpZiAoSVNfRVJSKGJsb2IpKQ0KPiA+ICsJCXJldHVybiBQVFJfRVJS
KGJsb2IpOw0KPiA+ICsNCj4gPiArCXJldCA9IGRybV9wcm9wZXJ0eV9hZGRfZW51bShwcm9wLCBi
bG9iLT5iYXNlLmlkLCBuYW1lKTsNCj4gPiArCWlmIChyZXQpIHsNCj4gPiArCQlkcm1fcHJvcGVy
dHlfYmxvYl9wdXQoYmxvYik7DQo+ID4gKwkJcmV0dXJuIHJldDsNCj4gPiArCX0NCj4gPiArDQo+
ID4gKwlyZXR1cm4gMDsNCj4gPiArfQ0KPiA+ICtFWFBPUlRfU1lNQk9MKGRybV9wbGFuZV9jb2xv
cl9hZGRfZ2FtbWFfZGVnYW1tYV9tb2RlX3JhbmdlKTsNCj4gPiArDQo+ID4gIC8qKg0KPiA+ICAg
KiBkcm1fY29sb3JfbHV0X2NoZWNrIC0gY2hlY2sgdmFsaWRpdHkgb2YgbG9va3VwIHRhYmxlDQo+
ID4gICAqIEBsdXQ6IHByb3BlcnR5IGJsb2IgY29udGFpbmluZyBMVVQgdG8gY2hlY2sgZGlmZiAt
LWdpdA0KPiA+IGEvaW5jbHVkZS9kcm0vZHJtX21vZGVfb2JqZWN0LmggYi9pbmNsdWRlL2RybS9k
cm1fbW9kZV9vYmplY3QuaCBpbmRleA0KPiA+IGMzNGEzZTgwMzBlMS4uZDQxMjhjN2RhYTA4IDEw
MDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9tb2RlX29iamVjdC5oDQo+ID4gKysrIGIv
aW5jbHVkZS9kcm0vZHJtX21vZGVfb2JqZWN0LmgNCj4gPiBAQCAtNjAsNyArNjAsNyBAQCBzdHJ1
Y3QgZHJtX21vZGVfb2JqZWN0IHsNCj4gPiAgCXZvaWQgKCpmcmVlX2NiKShzdHJ1Y3Qga3JlZiAq
a3JlZik7DQo+ID4gIH07DQo+ID4NCj4gPiAtI2RlZmluZSBEUk1fT0JKRUNUX01BWF9QUk9QRVJU
WSAyNA0KPiA+ICsjZGVmaW5lIERSTV9PQkpFQ1RfTUFYX1BST1BFUlRZIDI2DQo+ID4gIC8qKg0K
PiA+ICAgKiBzdHJ1Y3QgZHJtX29iamVjdF9wcm9wZXJ0aWVzIC0gcHJvcGVydHkgdHJhY2tpbmcg
Zm9yICZkcm1fbW9kZV9vYmplY3QNCj4gPiAgICovDQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
ZHJtL2RybV9wbGFuZS5oIGIvaW5jbHVkZS9kcm0vZHJtX3BsYW5lLmggaW5kZXgNCj4gPiAxMjk0
NjEwZTg0ZjQuLmU0NzZhNTkzOWY4ZSAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1f
cGxhbmUuaA0KPiA+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9wbGFuZS5oDQo+ID4gQEAgLTIzNiw2
ICsyMzYsMTUgQEAgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSB7DQo+ID4NCj4gPiAgCS8qKiBAc3Rh
dGU6IGJhY2twb2ludGVyIHRvIGdsb2JhbCBkcm1fYXRvbWljX3N0YXRlICovDQo+ID4gIAlzdHJ1
Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGU7DQo+ID4gKw0KPiA+ICsJLyoqDQo+ID4gKwkgKiBA
ZGVnYW1tYV9tb2RlOiBUaGlzIGlzIGEgYmxvYl9pZCBhbmQgZXhwb3NlcyB0aGUgcGxhdGZvcm0g
Y2FwYWJpbGl0aWVzDQo+ID4gKwkgKiB3cnQgdG8gdmFyaW91cyBnYW1tYSBtb2RlcyBhbmQgdGhl
IHJlc3BlY3RpdmUgbHV0IHJhbmdlcy4gVGhpcyBhbHNvDQo+ID4gKwkgKiBoZWxwcyB1c2VyIHNl
bGVjdCBhIGRlZ2FtbWEgbW9kZSBhbW9uZ3N0IHRoZSBzdXBwb3J0ZWQgb25lcy4NCj4gPiArCSAq
Lw0KPiA+ICsJdTMyIGRlZ2FtbWFfbW9kZTsNCj4gPiArDQo+ID4gKwl1OCBjb2xvcl9tZ210X2No
YW5nZWQgOiAxOw0KPiA+ICB9Ow0KPiA+DQo+ID4gIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRybV9y
ZWN0DQo+ID4gQEAgLTc0Nyw2ICs3NTYsMTIgQEAgc3RydWN0IGRybV9wbGFuZSB7DQo+ID4gIAkg
KiBzY2FsaW5nLg0KPiA+ICAJICovDQo+ID4gIAlzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpzY2FsaW5n
X2ZpbHRlcl9wcm9wZXJ0eTsNCj4gPiArDQo+ID4gKwkvKioNCj4gPiArCSAqIEBkZWdhbW1hX21v
ZGVfcHJvcGVydHk6IE9wdGlvbmFsIFBsYW5lIHByb3BlcnR5IHRvIHNldCB0aGUgTFVUDQo+ID4g
KwkgKiB1c2VkIHRvIGNvbnZlcnQgdGhlIGZyYW1lYnVmZmVyJ3MgY29sb3JzIHRvIGxpbmVhciBn
YW1tYS4NCj4gPiArCSAqLw0KPiA+ICsJc3RydWN0IGRybV9wcm9wZXJ0eSAqZGVnYW1tYV9tb2Rl
X3Byb3BlcnR5Ow0KPiA+ICB9Ow0KPiA+DQo+ID4gICNkZWZpbmUgb2JqX3RvX3BsYW5lKHgpIGNv
bnRhaW5lcl9vZih4LCBzdHJ1Y3QgZHJtX3BsYW5lLCBiYXNlKSBAQA0KPiA+IC04MzgsNiArODUz
LDE0IEBAIHZvaWQgZHJtX3BsYW5lX2ZvcmNlX2Rpc2FibGUoc3RydWN0IGRybV9wbGFuZQ0KPiA+
ICpwbGFuZSk7ICBpbnQgZHJtX21vZGVfcGxhbmVfc2V0X29ial9wcm9wKHN0cnVjdCBkcm1fcGxh
bmUgKnBsYW5lLA0KPiA+ICAJCQkJICAgICAgIHN0cnVjdCBkcm1fcHJvcGVydHkgKnByb3BlcnR5
LA0KPiA+ICAJCQkJICAgICAgIHVpbnQ2NF90IHZhbHVlKTsNCj4gPiAraW50IGRybV9wbGFuZV9j
cmVhdGVfY29sb3JfbWdtdF9wcm9wZXJ0aWVzKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ID4g
KwkJCQkJICAgc3RydWN0IGRybV9wbGFuZSAqcGxhbmUsDQo+ID4gKwkJCQkJICAgaW50IG51bV92
YWx1ZXMpOw0KPiA+ICt2b2lkIGRybV9wbGFuZV9hdHRhY2hfZGVnYW1tYV9wcm9wZXJ0aWVzKHN0
cnVjdCBkcm1fcGxhbmUgKnBsYW5lKTsNCj4gPiAraW50IGRybV9wbGFuZV9jb2xvcl9hZGRfZ2Ft
bWFfZGVnYW1tYV9tb2RlX3JhbmdlKHN0cnVjdCBkcm1fcGxhbmUNCj4gKnBsYW5lLA0KPiA+ICsJ
CQkJCQkgY29uc3QgY2hhciAqbmFtZSwNCj4gPiArCQkJCQkJIGNvbnN0IHN0cnVjdCBkcm1fY29s
b3JfbHV0X3JhbmdlDQo+ICpyYW5nZXMsDQo+ID4gKwkJCQkJCSBzaXplX3QgbGVuZ3RoLCBlbnVt
IGx1dF90eXBlIHR5cGUpOw0KPiA+DQo+ID4gIC8qKg0KPiA+ICAgKiBkcm1fcGxhbmVfZmluZCAt
IGZpbmQgYSAmZHJtX3BsYW5lDQo+ID4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
