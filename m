Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D4038082F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 13:11:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5DA6E0CB;
	Fri, 14 May 2021 11:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FEB36E0CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 11:11:27 +0000 (UTC)
IronPort-SDR: AjbbtsfNlA9gwl+rz3laA3qzSeDU1xMa6AmUZNDIC35f7eIrCr3WkQja4RmmVG6aXFiOxxSTpK
 qHxkpxZXSeCw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="261396350"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="261396350"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 04:11:24 -0700
IronPort-SDR: M+Nv9Fhzj/IlTluDfTo4C9PcUyUEB9AyNFBBJKw44pxgOU5Ulj4zTaUGhniau6GsS3MwTfwjZR
 vYEbSmTop08Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="392645856"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 14 May 2021 04:11:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 04:11:24 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 04:11:23 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 12:11:21 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 46/48] drm/i915/display/adl_p: Implement
 Wa_22011320316
Thread-Index: AQHXQ7H85mZMW1lrXkyBfiNdDLRss6ri3CuA
Date: Fri, 14 May 2021 11:11:21 +0000
Message-ID: <f09801332bd2470398a43b8441b6e3f3@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-47-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-47-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 46/48] drm/i915/display/adl_p: Implement
 Wa_22011320316
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIE1hdHQNCj4gUm9w
ZXINCj4gU2VudDogU2F0dXJkYXksIE1heSA4LCAyMDIxIDU6MjggQU0NCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIHYz
IDQ2LzQ4XSBkcm0vaTkxNS9kaXNwbGF5L2FkbF9wOiBJbXBsZW1lbnQNCj4gV2FfMjIwMTEzMjAz
MTYNCj4gDQo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiANCj4gSW1wbGVtZW50YXRpb24gZGV0YWlscyBhcmUgaW4gdGhlIEhTRCAyMjAxMTMy
MDMxNiwgcmVxdWlyaW5nIENEIGNsb2NrIHRvIGJlDQo+IGF0IGxlYXN0IDMwN01IeiB0byBtYWtl
IERDIHN0YXRlcyB0byB3b3JrLg0KPiANCj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+DQo+IENjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBDbGludG9uIFRheWxvciA8Q2xpbnRvbi5B
LlRheWxvckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhv
bGFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jIHwgMjEgKysrKysrKysrKysrKysrKysrKystDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMjAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCBjOWYxNDg0ZjM4MTEuLjQ2
NTZhNmVkYzNiZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYw0KPiBAQCAtMTI1Myw2ICsxMjUzLDIxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfY2RjbGtfdmFscw0KPiBya2xfY2RjbGtfdGFibGVbXSA9IHsNCj4gIAl7fQ0KPiAgfTsNCj4g
DQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3ZhbHMgYWRscF9hX3N0ZXBfY2Rj
bGtfdGFibGVbXSA9IHsNCj4gKwl7IC5yZWZjbGsgPSAxOTIwMCwgLmNkY2xrID0gMzA3MjAwLCAu
ZGl2aWRlciA9IDIsIC5yYXRpbyA9IDMyIH0sDQo+ICsJeyAucmVmY2xrID0gMTkyMDAsIC5jZGNs
ayA9IDU1NjgwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA1OCB9LA0KPiArCXsgLnJlZmNsayA9
IDE5MjAwLCAuY2RjbGsgPSA2NTI4MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gNjggfSwNCj4g
Kw0KPiArCXsgLnJlZmNsayA9IDI0MDAwLCAuY2RjbGsgPSAzMTIwMDAsIC5kaXZpZGVyID0gMiwg
LnJhdGlvID0gMjYgfSwNCj4gKwl7IC5yZWZjbGsgPSAyNDAwMCwgLmNkY2xrID0gNTUyMDAwLCAu
ZGl2aWRlciA9IDIsIC5yYXRpbyA9IDQ2IH0sDQo+ICsJeyAucmVmY2xrID0gMjQ0MDAsIC5jZGNs
ayA9IDY0ODAwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA1NCB9LA0KPiArDQo+ICsJeyAucmVm
Y2xrID0gMzg0MDAsIC5jZGNsayA9IDMwNzIwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSAxNiB9
LA0KPiArCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA1NTY4MDAsIC5kaXZpZGVyID0gMiwg
LnJhdGlvID0gMjkgfSwNCj4gKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gNjUyODAwLCAu
ZGl2aWRlciA9IDIsIC5yYXRpbyA9IDM0IH0sDQo+ICsJe30NCj4gK307DQo+ICsNCj4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfdmFscyBhZGxwX2NkY2xrX3RhYmxlW10gPSB7DQo+
ICAJeyAucmVmY2xrID0gMTkyMDAsIC5jZGNsayA9IDE3MjgwMCwgLmRpdmlkZXIgPSAzLCAucmF0
aW8gPSAyNyB9LA0KPiAgCXsgLnJlZmNsayA9IDE5MjAwLCAuY2RjbGsgPSAxOTIwMDAsIC5kaXZp
ZGVyID0gMiwgLnJhdGlvID0gMjAgfSwgQEAgLQ0KPiAyODAxLDcgKzI4MTYsMTEgQEAgdm9pZCBp
bnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJp
dikNCj4gIAkJZGV2X3ByaXYtPmRpc3BsYXkuYndfY2FsY19taW5fY2RjbGsgPQ0KPiBza2xfYndf
Y2FsY19taW5fY2RjbGs7DQo+ICAJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNs
ayA9DQo+IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7DQo+ICAJCWRldl9wcml2LT5kaXNwbGF5LmNh
bGNfdm9sdGFnZV9sZXZlbCA9IHRnbF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7DQo+IC0JCWRldl9wcml2
LT5jZGNsay50YWJsZSA9IGFkbHBfY2RjbGtfdGFibGU7DQo+ICsJCS8qIFdhXzIyMDExMzIwMzE2
OmFkbHBbYTBdICovDQo+ICsJCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RF
UF9BMCwgU1RFUF9BMCkpDQo+ICsJCQlkZXZfcHJpdi0+Y2RjbGsudGFibGUgPSBhZGxwX2Ffc3Rl
cF9jZGNsa190YWJsZTsNCj4gKwkJZWxzZQ0KPiArCQkJZGV2X3ByaXYtPmNkY2xrLnRhYmxlID0g
YWRscF9jZGNsa190YWJsZTsNCj4gIAl9IGVsc2UgaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYp
KSB7DQo+ICAJCWRldl9wcml2LT5kaXNwbGF5LnNldF9jZGNsayA9IGJ4dF9zZXRfY2RjbGs7DQo+
ICAJCWRldl9wcml2LT5kaXNwbGF5LmJ3X2NhbGNfbWluX2NkY2xrID0NCj4gc2tsX2J3X2NhbGNf
bWluX2NkY2xrOw0KPiAtLQ0KPiAyLjI1LjQNCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
