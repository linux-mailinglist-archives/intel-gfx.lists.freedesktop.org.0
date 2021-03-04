Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBBA32D103
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 11:42:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A864D6EA15;
	Thu,  4 Mar 2021 10:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 241E86EA15
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 10:42:19 +0000 (UTC)
IronPort-SDR: /nCqIcjyktQn3tTTgJUXOjoCiEYsIh9QHo9algvCrSwFQ3J1JFfoLOuNBFlr7URhOf8LRg7283
 6aKj370Vi3Xg==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="184980121"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="184980121"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 02:42:18 -0800
IronPort-SDR: AROwak1gvn8I8KEPc2NdmfbpyDJx4kTMqAexFfFQClW2+7TXWnDOH0vQMWD/Jw07mGiw3SdTNI
 CjSjuoFcIOJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="384396804"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga002.jf.intel.com with ESMTP; 04 Mar 2021 02:42:17 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 4 Mar 2021 10:42:17 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Thu, 4 Mar 2021 10:42:17 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/6] drm/i915: Call primary encoder's
 .get_config() from MST .get_config()
Thread-Index: AQHXCrtRfugPN1esGUqR6NZBPgW4DKpzsGtw
Date: Thu, 4 Mar 2021 10:42:16 +0000
Message-ID: <249c116ad21f43ff997adcd05669e380@intel.com>
References: <20210224144214.24803-1-ville.syrjala@linux.intel.com>
 <20210224144214.24803-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20210224144214.24803-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Call primary encoder's
 .get_config() from MST .get_config()
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
IFtQQVRDSCAxLzZdIGRybS9pOTE1OiBDYWxsIHByaW1hcnkgZW5jb2RlcidzDQo+IC5nZXRfY29u
ZmlnKCkgZnJvbSBNU1QgLmdldF9jb25maWcoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFN0b3AgYXNzdW1pbmcgaW50
ZWxfZGRpX2dldF9jb25maWcoKSBpcyBhbGwgd2UgbmVlZCBmcm9tIHRoZSBwcmltYXJ5DQo+IGVu
Y29kZXIsIGFuZCBpbnN0ZWFkIGNhbGwgaXQgdmlhIHRoZSAuZ2V0X2NvbmZpZygpIHZmdW5jLiBU
aGlzIHdpbGwgYWxsb3cNCj4gY3VzdG9taXplZCAuZ2V0X2NvbmZpZygpIGZvciB0aGUgcHJpbWFy
eSwgd2hpY2ggSSBwbGFuIHRvIHVzZSB0byBoYW5kbGUgdGhlDQo+IGRpZmZlcmVuY2VzIGluIHRo
ZSBjbG9jayByZWFkb3V0IGJldHdlZW4gdmFyaW91cyBwbGF0Zm9ybXMuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
DQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAyICst
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRl
eCA4ZTMxNjE0NmI2ZDEuLjkwNjg2MGFkOGViOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IEBAIC01OTEsNyArNTkxLDcgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZHBfbXN0X2VuY19nZXRfY29uZmlnKHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLA0KPiAgCXN0cnVjdCBpbnRlbF9kcF9tc3RfZW5jb2RlciAqaW50ZWxfbXN0ID0g
ZW5jX3RvX21zdChlbmNvZGVyKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCA9IGludGVsX21zdC0+cHJpbWFyeTsNCj4gDQo+IC0JaW50ZWxfZGRpX2dldF9jb25maWco
JmRpZ19wb3J0LT5iYXNlLCBwaXBlX2NvbmZpZyk7DQo+ICsJZGlnX3BvcnQtPmJhc2UuZ2V0X2Nv
bmZpZygmZGlnX3BvcnQtPmJhc2UsIHBpcGVfY29uZmlnKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMg
Ym9vbCBpbnRlbF9kcF9tc3RfaW5pdGlhbF9mYXN0c2V0X2NoZWNrKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyDQo+ICplbmNvZGVyLA0KPiAtLQ0KPiAyLjI2LjINCj4gDQo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QN
Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
