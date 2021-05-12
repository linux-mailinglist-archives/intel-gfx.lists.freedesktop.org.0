Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F0D37EC9B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 00:35:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F25E6ECD4;
	Wed, 12 May 2021 22:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81D7C6ECD4
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 22:35:12 +0000 (UTC)
IronPort-SDR: inDiXKzMLrN1DPxeJkEOi48a6XYagrvAzuOGF6OglgUkCILhuUwovcYRt9zNR59UzHj1rdwRhI
 LjB6dMnz+d4A==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="186951953"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="186951953"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 15:35:11 -0700
IronPort-SDR: XokajqtNC7zXGqlai8rixtx0M9jzpD3CfJFOzQsJoOd8JPXRKa/zy/fevOi5yHeaLB3a1bd3vo
 gqPi7U3+6Zhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="622934717"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 12 May 2021 15:35:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 15:35:10 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 15:35:10 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Wed, 12 May 2021 15:35:10 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 44/48] drm/i915/adl_p: Add IPs stepping
 mapping
Thread-Index: AQHXQ7HyrB+7viT+5k6ximHI0gNs6qrgdqOw
Date: Wed, 12 May 2021 22:35:10 +0000
Message-ID: <ccbd172b86c04268a3dc0d41d39d704f@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-45-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-45-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 44/48] drm/i915/adl_p: Add IPs stepping
 mapping
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBNYXR0DQo+
IFJvcGVyDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDcsIDIwMjEgNzoyOCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCB2MyA0NC80OF0gZHJt
L2k5MTUvYWRsX3A6IEFkZCBJUHMgc3RlcHBpbmcNCj4gbWFwcGluZw0KPiANCj4gRnJvbTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IA0KPiBUaGlzIHdp
bGwgYWxsb3cgdXMgdG8gYmV0dGVyIGltcGxlbWVudCB3b3JrYXJvdW5kcy4NCj4gDQo+IENjOiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6
IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICB8ICA4ICsrKysrKysrDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zdGVwLmMgfCAxMiArKysrKysrKysrKy0NCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGluZGV4IDNmZTUxNGM1ZGUzMi4uYjU1NmVjY2M5YWQyDQo+IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gQEAgLTE1NTYsNiArMTU1NiwxNCBAQCBJ
U19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqaTkxNSwNCj4g
IAkoSVNfQUxERVJMQUtFX1MoX19pOTE1KSAmJiBcDQo+ICAJIElTX0dUX1NURVAoX19pOTE1LCBz
aW5jZSwgdW50aWwpKQ0KPiANCj4gKyNkZWZpbmUgSVNfQURMUF9ESVNQTEFZX1NURVAoX19pOTE1
LCBzaW5jZSwgdW50aWwpIFwNCj4gKwkoSVNfQUxERVJMQUtFX1AoX19pOTE1KSAmJiBcDQo+ICsJ
IElTX0RJU1BMQVlfU1RFUChfX2k5MTUsIHNpbmNlLCB1bnRpbCkpDQo+ICsNCj4gKyNkZWZpbmUg
SVNfQURMUF9HVF9TVEVQKF9faTkxNSwgc2luY2UsIHVudGlsKSBcDQo+ICsJKElTX0FMREVSTEFL
RV9QKF9faTkxNSkgJiYgXA0KPiArCSBJU19HVF9TVEVQKF9faTkxNSwgc2luY2UsIHVudGlsKSkN
Cj4gKw0KPiAgI2RlZmluZSBJU19MUChkZXZfcHJpdikJKElOVEVMX0lORk8oZGV2X3ByaXYpLT5p
c19scCkNCj4gICNkZWZpbmUgSVNfR0VOOV9MUChkZXZfcHJpdikJKElTX0dFTihkZXZfcHJpdiwg
OSkgJiYgSVNfTFAoZGV2X3ByaXYpKQ0KPiAgI2RlZmluZSBJU19HRU45X0JDKGRldl9wcml2KQko
SVNfR0VOKGRldl9wcml2LCA5KSAmJiAhSVNfTFAoZGV2X3ByaXYpKQ0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3RlcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfc3RlcC5jDQo+IGluZGV4IDRkNzE1NDdhNWI4My4uYmE5NDc5YTY3NTIxIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zdGVwLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc3RlcC5jDQo+IEBAIC00Nyw2ICs0NywxMyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IGludGVsX3N0ZXBfaW5mbw0KPiBhZGxzX3JldmlkX3N0ZXBfdGJsW10g
PSB7DQo+ICAJWzB4Q10gPSB7IC5ndF9zdGVwID0gU1RFUF9EMCwgLmRpc3BsYXlfc3RlcCA9IFNU
RVBfQzAgfSwgIH07DQo+IA0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9zdGVwX2luZm8g
YWRscF9yZXZpZF9zdGVwX3RibFtdID0gew0KPiArCVsweDBdID0geyAuZ3Rfc3RlcCA9IFNURVBf
QTAsIC5kaXNwbGF5X3N0ZXAgPSBTVEVQX0EwIH0sDQo+ICsJWzB4NF0gPSB7IC5ndF9zdGVwID0g
U1RFUF9CMCwgLmRpc3BsYXlfc3RlcCA9IFNURVBfQjAgfSwNCj4gKwlbMHg4XSA9IHsgLmd0X3N0
ZXAgPSBTVEVQX0MwLCAuZGlzcGxheV9zdGVwID0gU1RFUF9DMCB9LA0KPiArCVsweENdID0geyAu
Z3Rfc3RlcCA9IFNURVBfQzAsIC5kaXNwbGF5X3N0ZXAgPSBTVEVQX0QwIH0sIH07DQo+ICsNCj4g
IHZvaWQgaW50ZWxfc3RlcF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KSAgew0K
PiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9zdGVwX2luZm8gKnJldmlkcyA9IE5VTEw7IEBAIC01NCw3
ICs2MSwxMCBAQA0KPiB2b2lkIGludGVsX3N0ZXBfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkNCj4gIAlpbnQgcmV2aWQgPSBJTlRFTF9SRVZJRChpOTE1KTsNCj4gIAlzdHJ1Y3Qg
aW50ZWxfc3RlcF9pbmZvIHN0ZXAgPSB7fTsNCj4gDQo+IC0JaWYgKElTX0FMREVSTEFLRV9TKGk5
MTUpKSB7DQo+ICsJaWYgKElTX0FMREVSTEFLRV9QKGk5MTUpKSB7DQo+ICsJCXJldmlkcyA9IGFk
bHBfcmV2aWRfc3RlcF90Ymw7DQo+ICsJCXNpemUgPSBBUlJBWV9TSVpFKGFkbHBfcmV2aWRfc3Rl
cF90YmwpOw0KPiArCX0gZWxzZSBpZiAoSVNfQUxERVJMQUtFX1MoaTkxNSkpIHsNCj4gIAkJcmV2
aWRzID0gYWRsc19yZXZpZF9zdGVwX3RibDsNCj4gIAkJc2l6ZSA9IEFSUkFZX1NJWkUoYWRsc19y
ZXZpZF9zdGVwX3RibCk7DQo+ICAJfSBlbHNlIGlmIChJU19UR0xfVShpOTE1KSB8fCBJU19UR0xf
WShpOTE1KSkgew0KPiAtLQ0KPiAyLjI1LjQNCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
