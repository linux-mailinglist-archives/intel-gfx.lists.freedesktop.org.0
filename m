Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A02EF49CAF0
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 14:35:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F399D10E6E4;
	Wed, 26 Jan 2022 13:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F78B10E6E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 13:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643204155; x=1674740155;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+PZM1KM/IUF3frVUKPKCem+MNWgsei6zpmLH/f1aIHk=;
 b=JgiXMniYoUs2SB6DZWTlCEX/0rrhoY281fGIbG5Q7oQZjaGTUNyR8pJ7
 7EulaQuVgLzzgrZ8Wo39+l76zsRqeoEGpDo6SF91Rzv/5Mg5D9HHKUiNv
 uAKso2nnoSU8BQIsL5zMrgBx+akkoGLHr305ggpf8uyIfmmD1JMirxIBb
 8U8jxPUUjVxef608LYrswZmdOkKHUNYywyT9j/yGrpoZSP3pHme0Ofo/+
 X84noMbENKcXDbGdacb0Y63IztYZi4QuxEOZvi6weOhXC24hS3F2bjlh+
 5ki/4/puyWsjZcHW+LaUXrhyxzRnFjKv4I5KPBd1tWJZaYbSQeJfCpRwy g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="244147347"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="244147347"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 05:35:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="479882689"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga006.jf.intel.com with ESMTP; 26 Jan 2022 05:35:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 26 Jan 2022 13:35:52 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 26 Jan 2022 05:35:50 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/adlp: Fix TypeC PHY-ready status readout
Thread-Index: AQHYEqGheA21HPJYbUmvZh6yllNy96x11J6A
Date: Wed, 26 Jan 2022 13:35:50 +0000
Message-ID: <7208289f7ecfe5328aeffe6d4cd1ee468adfbc97.camel@intel.com>
References: <20220126104356.2022975-1-imre.deak@intel.com>
In-Reply-To: <20220126104356.2022975-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <AC37F23564368B48B148D3EA0D929ABC@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Fix TypeC PHY-ready status
 readout
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
Cc: "acelan.kao@canonical.com" <acelan.kao@canonical.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTAxLTI2IGF0IDEyOjQzICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBUQ1NTX0RESV9TVEFUVVMgcmVnaXN0ZXIgaXMgaW5kZXhlZCBieSB0Y19wb3J0IG5vdCBieSB0
aGUgRklBIHBvcnQNCj4gaW5kZXgsIGZpeCB0aGlzIHVwLiBUaGlzIG9ubHkgY2F1c2VkIGFuIGlz
c3VlIG9uIFRDIzMvNCBwb3J0cyBpbiBsZWdhY3kNCj4gbW9kZSwgYXMgaW4gYWxsIG90aGVyIGNh
c2VzIHRoZSB0d28gaW5kaWNlcyBlaXRoZXIgbWF0Y2ggKG9uIFRDIzEvMikgb3INCj4gdGhlIFRD
U1NfRERJX1NUQVRVU19SRUFEWSBmbGFnIGlzIHNldCByZWdhcmRsZXNzIG9mIHNvbWV0aGluZyBi
ZWluZw0KPiBjb25uZWN0ZWQgb3Igbm90IChvbiBUQyMxLzIvMy80IGluIGRwLWFsdCBhbmQgdGJ0
LWFsdCBtb2RlcykuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gUmVwb3J0ZWQtYW5kLXRlc3RlZC1ieTogQ2hpYS1M
aW4gS2FvIChBY2VMYW4pIDxhY2VsYW4ua2FvQGNhbm9uaWNhbC5jb20+DQo+IEZpeGVzOiA1NWNl
MzA2YzJhYTEgKCJkcm0vaTkxNS9hZGxfcDogSW1wbGVtZW50IFRDIHNlcXVlbmNlcyIpDQo+IENs
b3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy80
Njk4DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjE0Kw0KPiBTaWduZWQtb2ZmLWJ5
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgMyArKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3RjLmMNCj4gaW5kZXggNGVlZmU3YjBiYjI2My4uMzI5MTEyNGE5OWU1YSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtMzQ2
LDEwICszNDYsMTEgQEAgc3RhdGljIGJvb2wgaWNsX3RjX3BoeV9zdGF0dXNfY29tcGxldGUoc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICBzdGF0aWMgYm9vbCBhZGxfdGNf
cGh5X3N0YXR1c19jb21wbGV0ZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkN
Cj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3Bv
cnQtPmJhc2UuYmFzZS5kZXYpOw0KPiArCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9y
dF90b190YyhpOTE1LCBkaWdfcG9ydC0+YmFzZS5wb3J0KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOw0KPiAgCXUzMiB2YWw7DQo+ICANCj4gLQl2YWwg
PSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFRDU1NfRERJX1NUQVRVUyhkaWdfcG9ydC0+dGNf
cGh5X2ZpYV9pZHgpKTsNCj4gKwl2YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIFRDU1Nf
RERJX1NUQVRVUyh0Y19wb3J0KSk7DQo+ICAJaWYgKHZhbCA9PSAweGZmZmZmZmZmKSB7DQo+ICAJ
CWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+ICAJCQkgICAgIlBvcnQgJXM6IFBIWSBpbiBUQ0NP
TEQsIGFzc3VtaW5nIG5vdCBjb21wbGV0ZVxuIiwNCg0K
