Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8C3380653
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 11:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A096EE41;
	Fri, 14 May 2021 09:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4139B6EE41
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 09:35:37 +0000 (UTC)
IronPort-SDR: 2nfEhxq+WAt/g2V5o4OiFG2GuCBmizbi/E9fKhpKdVz2UO2lQpA7g4a8zEt/6L424LRKy0VBWI
 /SzakXBNHNTw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="200199062"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="200199062"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 02:35:36 -0700
IronPort-SDR: ioNSomDFxEOyjlzHeVeZ+h4hyvNfPdKCNd2LOR9bJSkcSMfIrfjYECyjrb9PDgRfoJmsEa0ow6
 OZYPefnFQNyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="393570854"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 14 May 2021 02:35:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 02:35:35 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 02:35:34 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 10:35:33 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 45/48] drm/i915/adl_p: Implement
 Wa_22011091694
Thread-Index: AQHXQ7H0d8r8ffM4YkGENG+r1ek1SKriwWzQ
Date: Fri, 14 May 2021 09:35:33 +0000
Message-ID: <b86b7b8d6b3a4a978e16e1b42289eabf@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-46-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-46-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 45/48] drm/i915/adl_p: Implement
 Wa_22011091694
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
IDQ1LzQ4XSBkcm0vaTkxNS9hZGxfcDogSW1wbGVtZW50DQo+IFdhXzIyMDExMDkxNjk0DQo+IA0K
PiBGcm9tOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
DQo+IEFkZGluZyBhIG5ldyBob29rIHRvIEFETC1QIGp1c3QgdG8gYXZvaWQgYW5vdGhlciBwbGF0
Zm9ybSBjaGVjayBpbg0KPiBnZW4xMmxwX2luaXRfY2xvY2tfZ2F0aW5nKCkgYnV0IGFsc28gb3Bl
biB0byBpdC4NCj4gDQo+IEJTcGVjOiA1NDM2OQ0KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4NCj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNh
QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IENsaW50b24gVGF5bG9yIDxDbGlu
dG9uLkEuVGF5bG9yQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWth
LmthaG9sYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIHwgIDMgKysrICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IHwgMTIg
KysrKysrKysrKystDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleCA0YzM1NmZhOTA1
NWYuLjZmZDEyNmI2NDcyNw0KPiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBA
IC00MTg1LDYgKzQxODUsOSBAQCBlbnVtIHsNCj4gICNkZWZpbmUgR0VOOV9DTEtHQVRFX0RJU180
CQlfTU1JTygweDQ2NTNDKQ0KPiAgI2RlZmluZSAgIEJYVF9HTUJVU19HQVRJTkdfRElTCQkoMSA8
PCAxNCkNCj4gDQo+ICsjZGVmaW5lIEdFTjlfQ0xLR0FURV9ESVNfNQkJX01NSU8oMHg0NjU0MCkN
Cj4gKyNkZWZpbmUgICBEUENFX0dBVElOR19ESVMJCVJFR19CSVQoMTcpDQo+ICsNCj4gICNkZWZp
bmUgX0NMS0dBVEVfRElTX1BTTF9BCQkweDQ2NTIwDQo+ICAjZGVmaW5lIF9DTEtHQVRFX0RJU19Q
U0xfQgkJMHg0NjUyNA0KPiAgI2RlZmluZSBfQ0xLR0FURV9ESVNfUFNMX0MJCTB4NDY1MjgNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGluZGV4IDM2ZGExN2UxYWEzYy4uMDEzYTVhZWY0YzI5
DQo+IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gQEAgLTczNzAsNiArNzM3MCwx
NCBAQCBzdGF0aWMgdm9pZCBnZW4xMmxwX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdA0KPiBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkJCQkgQ0xLUkVRX1BPTElDWV9NRU1fVVBfT1ZS
RCwgMCk7DQo+ICB9DQo+IA0KPiArc3RhdGljIHZvaWQgYWRscF9pbml0X2Nsb2NrX2dhdGluZyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpIHsNCj4gKwlnZW4xMmxwX2luaXRfY2xv
Y2tfZ2F0aW5nKGRldl9wcml2KTsNCj4gKw0KPiArCS8qIFdhXzIyMDExMDkxNjk0OmFkbHAgKi8N
Cj4gKwlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEdFTjlfQ0xLR0FURV9ESVNfNSwgMCwNCj4gRFBD
RV9HQVRJTkdfRElTKTsgfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBkZzFfaW5pdF9jbG9ja19nYXRp
bmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KSAgew0KPiAgCWdlbjEybHBfaW5p
dF9jbG9ja19nYXRpbmcoZGV2X3ByaXYpOw0KPiBAQCAtNzg0Nyw3ICs3ODU1LDkgQEAgc3RhdGlj
IHZvaWQgbm9wX2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikNCj4gICAqLw0KPiAgdm9pZCBpbnRlbF9pbml0X2Nsb2NrX2dhdGluZ19ob29rcyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpICB7DQo+IC0JaWYgKElTX0RHMShkZXZf
cHJpdikpDQo+ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkNCj4gKwkJZGV2X3ByaXYt
PmRpc3BsYXkuaW5pdF9jbG9ja19nYXRpbmcgPSBhZGxwX2luaXRfY2xvY2tfZ2F0aW5nOw0KPiAr
CWVsc2UgaWYgKElTX0RHMShkZXZfcHJpdikpDQo+ICAJCWRldl9wcml2LT5kaXNwbGF5LmluaXRf
Y2xvY2tfZ2F0aW5nID0gZGcxX2luaXRfY2xvY2tfZ2F0aW5nOw0KPiAgCWVsc2UgaWYgKElTX0dF
TihkZXZfcHJpdiwgMTIpKQ0KPiAgCQlkZXZfcHJpdi0+ZGlzcGxheS5pbml0X2Nsb2NrX2dhdGlu
ZyA9DQo+IGdlbjEybHBfaW5pdF9jbG9ja19nYXRpbmc7DQo+IC0tDQo+IDIuMjUuNA0KPiANCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
