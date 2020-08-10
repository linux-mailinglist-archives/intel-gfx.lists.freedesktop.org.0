Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C892407E2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Aug 2020 16:53:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2936E443;
	Mon, 10 Aug 2020 14:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F28B6E443
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Aug 2020 14:53:40 +0000 (UTC)
IronPort-SDR: 6TY/soSaLrNioXDdTdPsdNxLp9wMtjzZ8LeXyA9w8iLPyyxvWkl0oB536c5gC2KCanXxw4c6RI
 LxFte+bQVRVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9708"; a="215062824"
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="215062824"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 07:53:39 -0700
IronPort-SDR: rFA1n3hqKW2jw3NgAGX9ZKg+zOlWJsQ657uIfYc1v5y5GhWDtqZ8DzCyc3QP4NKKbBJUjjUxS3
 sqt0wjUL+Wzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,457,1589266800"; d="scan'208";a="334254132"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga007.jf.intel.com with ESMTP; 10 Aug 2020 07:53:39 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 10 Aug 2020 15:53:38 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Mon, 10 Aug 2020 15:53:38 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 2/2] drm/i915/display: Implement WA
 1408330847
Thread-Index: AQHWU+8RUCw08gMpaUOxbtcKeUMOEakxk26A
Date: Mon, 10 Aug 2020 14:53:38 +0000
Message-ID: <e960c45f259802d8d1ba8b20459d8394e0f37edd.camel@intel.com>
References: <20200706234337.124814-1-jose.souza@intel.com>
 <20200706234337.124814-2-jose.souza@intel.com>
In-Reply-To: <20200706234337.124814-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.162]
Content-ID: <C482FA00C99E1141A2EB3676A81321F5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/display: Implement WA
 1408330847
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

T24gTW9uLCAyMDIwLTA3LTA2IGF0IDE2OjQzIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBGcm9tIHRoZSAzIFdBcyBmb3IgUFNSMiBtYW4gdHJhY2svc2VsZWN0aXZlIGZl
dGNoIHRoaXMgaXMgb25seSBvbmUNCj4gbmVlZGVkIHdoZW4gZG9pbmcgc2luZ2xlIGZ1bGwgZnJh
bWVzIGF0IGV2ZXJ5IGZsaXAuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTkgKysrKysrKysrKysrKysrKystLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8ICAxICsNCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBkMzBhMzU2MGI3OTQu
LjJiMDA0ZWU5NjE5YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IEBAIC01NTMsMTMgKzU1MywyMSBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVf
cHNyMihzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCQl2YWwgfD0gRURQX1BTUjJf
RkFTVF9XQUtFKDcpOw0KPiAgCX0NCj4gIA0KPiAtCWlmIChkZXZfcHJpdi0+cHNyLnBzcjJfc2Vs
X2ZldGNoX2VuYWJsZWQpDQo+ICsJaWYgKGRldl9wcml2LT5wc3IucHNyMl9zZWxfZmV0Y2hfZW5h
YmxlZCkgew0KPiArCQkvKiBXQSAxNDA4MzMwODQ3ICovDQo+ICsJCWlmIChJU19UR0xfUkVWSUQo
ZGV2X3ByaXYsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklEX0EwKQ0KPiB8fA0KPiArCQkgICAgSVNf
UktMX1JFVklEKGRldl9wcml2LCBSS0xfUkVWSURfQTAsIFJLTF9SRVZJRF9BMCkpDQo+ICsJCQlp
bnRlbF9kZV9ybXcoZGV2X3ByaXYsIENISUNLRU5fUEFSMV8xLA0KPiArCQkJCSAgICAgRElTX1JB
TV9CWVBBU1NfUFNSMl9NQU5fVFJBQ0ssDQo+ICsJCQkJICAgICBESVNfUkFNX0JZUEFTU19QU1Iy
X01BTl9UUkFDSyk7DQo+ICsNCj4gIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsDQo+ICAJCQkg
ICAgICAgUFNSMl9NQU5fVFJLX0NUTChkZXZfcHJpdi0NCj4gPnBzci50cmFuc2NvZGVyKSwNCj4g
IAkJCSAgICAgICBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRSk7DQo+IC0JZWxzZSBpZiAoSEFTX1BT
UjJfU0VMX0ZFVENIKGRldl9wcml2KSkNCj4gKwl9IGVsc2UgaWYgKEhBU19QU1IyX1NFTF9GRVRD
SChkZXZfcHJpdikpIHsNCj4gIAkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsDQo+ICAJCQkgICAg
ICAgUFNSMl9NQU5fVFJLX0NUTChkZXZfcHJpdi0NCj4gPnBzci50cmFuc2NvZGVyKSwgMCk7DQo+
ICsJfQ0KPiAgDQo+ICAJLyoNCj4gIAkgKiBQU1IyIEhXIGlzIGluY29ycmVjdGx5IHVzaW5nIEVE
UF9QU1JfVFAxX1RQM19TRUwgYW5kIEJTcGVjDQo+IGlzDQo+IEBAIC0xMDk5LDYgKzExMDcsMTMg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKHN0cnVjdA0KPiBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ICAJCQkJICAgIHBzcl9zdGF0dXNfbWFzaywgMjAwMCkpDQo+ICAJCWRy
bV9lcnIoJmRldl9wcml2LT5kcm0sICJUaW1lZCBvdXQgd2FpdGluZyBQU1IgaWRsZQ0KPiBzdGF0
ZVxuIik7DQo+ICANCj4gKwkvKiBXQSAxNDA4MzMwODQ3ICovDQo+ICsJaWYgKGRldl9wcml2LT5w
c3IucHNyMl9zZWxfZmV0Y2hfZW5hYmxlZCAmJg0KPiArCSAgICAoSVNfVEdMX1JFVklEKGRldl9w
cml2LCBUR0xfUkVWSURfQTAsIFRHTF9SRVZJRF9BMCkgfHwNCj4gKwkgICAgIElTX1JLTF9SRVZJ
RChkZXZfcHJpdiwgUktMX1JFVklEX0EwLCBSS0xfUkVWSURfQTApKSkNCj4gKwkJaW50ZWxfZGVf
cm13KGRldl9wcml2LCBDSElDS0VOX1BBUjFfMSwNCj4gKwkJCSAgICAgRElTX1JBTV9CWVBBU1Nf
UFNSMl9NQU5fVFJBQ0ssIDApOw0KPiArDQo+ICAJLyogRGlzYWJsZSBQU1Igb24gU2luayAqLw0K
PiAgCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VOX0NGRywgMCk7
DQo+ICANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IDViZWU0ZTIxMjg2Ni4u
ZDI5YThjYzc3NmQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTc4NTcs
NiArNzg1Nyw3IEBAIGVudW0gew0KPiAgIyBkZWZpbmUgQ0hJQ0tFTjNfREdNR19ET05FX0ZJWF9E
SVNBQkxFCQkoMSA8PCAyKQ0KPiAgDQo+ICAjZGVmaW5lIENISUNLRU5fUEFSMV8xCQkJX01NSU8o
MHg0MjA4MCkNCj4gKyNkZWZpbmUgIERJU19SQU1fQllQQVNTX1BTUjJfTUFOX1RSQUNLCSgxIDw8
IDE2KQ0KPiAgI2RlZmluZSAgU0tMX0RFX0NPTVBSRVNTRURfSEFTSF9NT0RFCSgxIDw8IDE1KQ0K
PiAgI2RlZmluZSAgRFBBX01BU0tfVkJMQU5LX1NSRAkJKDEgPDwgMTUpDQo+ICAjZGVmaW5lICBG
T1JDRV9BUkJfSURMRV9QTEFORVMJCSgxIDw8IDE0KQ0KUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25n
IE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
