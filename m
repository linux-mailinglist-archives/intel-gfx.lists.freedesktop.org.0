Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A1232D10B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 11:43:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC946EA17;
	Thu,  4 Mar 2021 10:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3296EA17
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 10:43:08 +0000 (UTC)
IronPort-SDR: 2FxhZrAwrH/cB6jm1IPtoOroLWMywZ9lMO7x8upuaH+BDBKmA4rWsp9QieB/zmFXotVPDwc+eh
 ZK0SQcVQ8K/w==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="186738167"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="186738167"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 02:43:08 -0800
IronPort-SDR: MMqNzUtJrMZJX/zdZXXSx20byDOTCgwYXCCVR6S7SLPuYpyHOLSfN6ZBXaImdobxolw6kt8Em0
 PKikvL2JVWYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="435758630"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Mar 2021 02:43:07 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Mar 2021 10:43:06 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Thu, 4 Mar 2021 10:43:06 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915: Do
 intel_dpll_readout_hw_state() after encoder readout
Thread-Index: AQHXCrtR/F0Q3naSfECA74Bm7sabm6pzsMsA
Date: Thu, 4 Mar 2021 10:43:06 +0000
Message-ID: <3a3353e4f34b4e10b893a65ea96a1dac@intel.com>
References: <20210224144214.24803-1-ville.syrjala@linux.intel.com>
 <20210224144214.24803-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20210224144214.24803-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Do
 intel_dpll_readout_hw_state() after encoder readout
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBGZWJydWFyeSAyNCwgMjAyMSA0OjQyIFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAyLzZdIGRybS9pOTE1OiBEbyBpbnRlbF9kcGxsX3JlYWRvdXRfaHdfc3RhdGUoKQ0K
PiBhZnRlciBlbmNvZGVyIHJlYWRvdXQNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgY2xvY2sgcmVhZG91dCBmb3Ig
RERJIGVuY29kZXJzIG5lZWRzIHRvIG1vdmVkIGludG8gdGhlIGVuY29kZXJzLg0KPiBUbyB0aGF0
IGVuZCBpbnRlbF9kcGxsX3JlYWRvdXRfaHdfc3RhdGUoKSBuZWVkcyB0byBoYXBwZW4gYWZ0ZXIg
dGhlDQo+IGVuY29kZXIgcmVhZG91dCBhcyBvdGhlcndpc2UgaXQgY2FuJ3QgY29ycmVjdGx5IHBv
cHVsYXRlIHRoZSBQTEwNCj4gY3J0Y19tYXNrL2FjdGl2ZV9tYXNrIGJpdG1hc2tzLg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+
DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDQgKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+IGluZGV4IGQwZGE4ODc1MWM3Mi4uYjM0NjIwNTQ1ZDNiIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTM0NDQs
OCArMTM0NDQsNiBAQCBzdGF0aWMgdm9pZA0KPiBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3Rh
dGUoc3RydWN0IGRybV9kZXZpY2UgKmRldikNCj4gDQo+ICAJcmVhZG91dF9wbGFuZV9zdGF0ZShk
ZXZfcHJpdik7DQo+IA0KPiAtCWludGVsX2RwbGxfcmVhZG91dF9od19zdGF0ZShkZXZfcHJpdik7
DQo+IC0NCj4gIAlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyKGRldiwgZW5jb2Rlcikgew0KPiAgCQlw
aXBlID0gMDsNCj4gDQo+IEBAIC0xMzQ4MCw2ICsxMzQ3OCw4IEBAIHN0YXRpYyB2b2lkDQo+IGlu
dGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQ0KPiAg
CQkJICAgIHBpcGVfbmFtZShwaXBlKSk7DQo+ICAJfQ0KPiANCj4gKwlpbnRlbF9kcGxsX3JlYWRv
dXRfaHdfc3RhdGUoZGV2X3ByaXYpOw0KPiArDQo+ICAJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJf
YmVnaW4oZGV2LCAmY29ubl9pdGVyKTsNCj4gIAlmb3JfZWFjaF9pbnRlbF9jb25uZWN0b3JfaXRl
cihjb25uZWN0b3IsICZjb25uX2l0ZXIpIHsNCj4gIAkJaWYgKGNvbm5lY3Rvci0+Z2V0X2h3X3N0
YXRlKGNvbm5lY3RvcikpIHsNCj4gLS0NCj4gMi4yNi4yDQo+IA0KPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
DQo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
