Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0190651C46B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 17:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4627610E382;
	Thu,  5 May 2022 15:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E094E10E24F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 15:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651766349; x=1683302349;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GH+NEpI+TLuRy/7nTUlrlOu67DUuXcPp/FAwxcNrngY=;
 b=Kk08mMP94aS3V7J/OasicaRoqNWrHKNJWn+zXfqMhMrargm2bLf00bfA
 L8ssNNZAcKRbJT1A7Cd71qo+MHKGb+aNEhaxgbmntOgejudKUrPjzS0ov
 Upsi0q/FjlEmG+5BxY7wOOSNJY5it+8MIsywAUk5+z4ZKifiDCJ0rv3gt
 Vs7uN8AtMjWZL7xF8zDWHSRz03K8SLNBjXi1JKIU/TOIO6YlZuuXJFUTB
 mq7c9iwRsYjvuraaSIvM7e4vR0TFMtkMz5hIu15u18zQCUYoTsj6+v05n
 etQcYRrSjKOLJ1JrCIE1S1ofbc1bbJTRadMBG8+WX1bg7VyqqrwsWovP/ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="268309217"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="268309217"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 08:57:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="537401145"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 05 May 2022 08:57:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 5 May 2022 08:57:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 5 May 2022 08:57:21 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Thu, 5 May 2022 08:57:20 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 01/12] drm/i915: Drop IPC from display 13 and
 newer
Thread-Index: AQHYX+orUiTiYm8IfEK4LRHkLeajuq0Psr0AgAE0oIA=
Date: Thu, 5 May 2022 15:57:20 +0000
Message-ID: <3df0b7296b8c41c0d4d2f139175a0f4a34190744.camel@intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <YnLxMP3Evf8KmA0K@intel.com>
In-Reply-To: <YnLxMP3Evf8KmA0K@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <745B249A72D6A74A8C27C175EE97EF33@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Drop IPC from display 13
 and newer
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIyLTA1LTA1IGF0IDAwOjMzICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgTWF5IDA0LCAyMDIyIGF0IDEyOjA3OjQ1UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gVGhpcyBmZWF0dXJlIGlzIHN1cHBvcnRlZCBmcm9tIGRp
c3BsYXkgOSB0byBkaXNwbGF5IDEyIGFuZCB3YXMNCj4gPiBpbmNvcnJlY3RseSBiZWluZyBhcHBs
aWVkIHRvIERHMiBhbmQgQWxkZXJsYWtlLVAuDQo+IA0KPiBUaGV5IGp1c3QgcmVuYW1lZCB0aGUg
cmVnaXN0ZXIgdG8gQVJCX0hQX0NUTC4NCg0KTWlzc2VkIHRoYXQsIHdpbGwgZml4IGl0Lg0KDQpU
aGFua3MNCg0KPiANCj4gPiANCj4gPiBXaGlsZSBhdCBpcyBhbHNvIHRha2luZyB0aGUgb3BvcnR1
bml0eSB0byBkcm9wIGl0IGZyb20NCj4gPiBpbnRlbF9kZXZpY2VfaW5mbyBzdHJ1Y3QgYXMgYSBk
aXNwbGF5IGNoZWNrIGlzIG1vcmUgc2ltcGxlDQo+ID4gYW5kIGxlc3MgcHJvbmUgdG8gYmUgbGVm
dCBlbmFibGVkIGluIGZ1dHVyZSBwbGF0Zm9ybXMuDQo+ID4gDQo+ID4gQlNwZWM6IDUwMDM5DQo+
ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAg
ICAgICAgfCAzICsrLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAg
ICAgIHwgMyAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
aCB8IDEgLQ0KPiA+ICAzIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBpbmRleCAyZGRkYzI3
YTFiMGVkLi42OTViMzVjZDZiNWU0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
DQo+ID4gQEAgLTEzNDQsNyArMTM0NCw4IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+ICAgKi8NCj4gPiAgI2RlZmluZSBORUVEU19DT01Q
QUNUX1BUKGRldl9wcml2KSAoSU5URUxfSU5GTyhkZXZfcHJpdiktPm5lZWRzX2NvbXBhY3RfcHQp
DQo+ID4gIA0KPiA+IC0jZGVmaW5lIEhBU19JUEMoZGV2X3ByaXYpCQkgKElOVEVMX0lORk8oZGV2
X3ByaXYpLT5kaXNwbGF5Lmhhc19pcGMpDQo+ID4gKyNkZWZpbmUgSEFTX0lQQyhkZXZfcHJpdikJ
CSAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDkgJiYgXA0KPiA+ICsJCQkJCSAgRElTUExBWV9W
RVIoZGV2X3ByaXYpIDw9IDEyKQ0KPiA+ICANCj4gPiAgI2RlZmluZSBIQVNfUkVHSU9OKGk5MTUs
IGkpIChJTlRFTF9JTkZPKGk5MTUpLT5tZW1vcnlfcmVnaW9ucyAmIChpKSkNCj4gPiAgI2RlZmlu
ZSBIQVNfTE1FTShpOTE1KSBIQVNfUkVHSU9OKGk5MTUsIFJFR0lPTl9MTUVNKQ0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYw0KPiA+IGluZGV4IDQ5ODcwOGIzMzkyNGYuLmM0ZjljODA1Y2ZmZDEg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gPiBAQCAtNjQ2LDcgKzY0Niw2
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gY2h2X2luZm8gPSB7DQo+
ID4gIAkuZGlzcGxheS5oYXNfZG1jID0gMSwgXA0KPiA+ICAJLmhhc19ndF91YyA9IDEsIFwNCj4g
PiAgCS5kaXNwbGF5Lmhhc19oZGNwID0gMSwgXA0KPiA+IC0JLmRpc3BsYXkuaGFzX2lwYyA9IDEs
IFwNCj4gPiAgCS5kaXNwbGF5Lmhhc19wc3IgPSAxLCBcDQo+ID4gIAkuZGlzcGxheS5oYXNfcHNy
X2h3X3RyYWNraW5nID0gMSwgXA0KPiA+ICAJLmRidWYuc2l6ZSA9IDg5NiAtIDQsIC8qIDQgYmxv
Y2tzIGZvciBieXBhc3MgcGF0aCBhbGxvY2F0aW9uICovIFwNCj4gPiBAQCAtNzEyLDcgKzcxMSw2
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gc2tsX2d0NF9pbmZvID0g
ew0KPiA+ICAJLmhhc19yZXNldF9lbmdpbmUgPSAxLCBcDQo+ID4gIAkuaGFzX3Nub29wID0gdHJ1
ZSwgXA0KPiA+ICAJLmhhc19jb2hlcmVudF9nZ3R0ID0gZmFsc2UsIFwNCj4gPiAtCS5kaXNwbGF5
Lmhhc19pcGMgPSAxLCBcDQo+ID4gIAlIU1dfUElQRV9PRkZTRVRTLCBcDQo+ID4gIAlJVkJfQ1VS
U09SX09GRlNFVFMsIFwNCj4gPiAgCUlWQl9DT0xPUlMsIFwNCj4gPiBAQCAtOTU1LDcgKzk1Myw2
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gYWRsX3NfaW5mbyA9IHsN
Cj4gPiAgCS5kaXNwbGF5Lmhhc19mcGdhX2RiZyA9IDEsCQkJCQkJXA0KPiA+ICAJLmRpc3BsYXku
aGFzX2hkY3AgPSAxLAkJCQkJCQlcDQo+ID4gIAkuZGlzcGxheS5oYXNfaG90cGx1ZyA9IDEsCQkJ
CQkJXA0KPiA+IC0JLmRpc3BsYXkuaGFzX2lwYyA9IDEsCQkJCQkJCVwNCj4gPiAgCS5kaXNwbGF5
Lmhhc19wc3IgPSAxLAkJCQkJCQlcDQo+ID4gIAkuZGlzcGxheS52ZXIgPSAxMywJCQkJCQkJXA0K
PiA+ICAJLmRpc3BsYXkucGlwZV9tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSB8IEJJ
VChQSVBFX0MpIHwgQklUKFBJUEVfRCksCVwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmgNCj4gPiBpbmRleCBlN2QyY2Y3ZDY1Yzg1Li5jOTY2MGI0MjgyZDllIDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+ID4g
QEAgLTE4MCw3ICsxODAsNiBAQCBlbnVtIGludGVsX3BwZ3R0X3R5cGUgew0KPiA+ICAJZnVuYyho
YXNfaGRjcCk7IFwNCj4gPiAgCWZ1bmMoaGFzX2hvdHBsdWcpOyBcDQo+ID4gIAlmdW5jKGhhc19o
dGkpOyBcDQo+ID4gLQlmdW5jKGhhc19pcGMpOyBcDQo+ID4gIAlmdW5jKGhhc19tb2R1bGFyX2Zp
YSk7IFwNCj4gPiAgCWZ1bmMoaGFzX292ZXJsYXkpOyBcDQo+ID4gIAlmdW5jKGhhc19wc3IpOyBc
DQo+ID4gLS0gDQo+ID4gMi4zNi4wDQo+IA0KDQo=
