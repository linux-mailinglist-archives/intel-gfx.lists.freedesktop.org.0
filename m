Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3AC8C53A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 02:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F76B6E123;
	Wed, 14 Aug 2019 00:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 737776E123
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 00:43:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 17:43:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="184039494"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2019 17:43:47 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 13 Aug 2019 17:43:46 -0700
Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
 FMSMSX157.amr.corp.intel.com (10.18.116.73) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 13 Aug 2019 17:43:46 -0700
Received: from shsmsx104.ccr.corp.intel.com ([169.254.5.112]) by
 shsmsx102.ccr.corp.intel.com ([169.254.2.19]) with mapi id 14.03.0439.000;
 Wed, 14 Aug 2019 08:43:44 +0800
From: "Yang, Dong" <dong.yang@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Remove i915 ggtt WA since GT E
Thread-Index: AQHVULZ5Tx+ucn8DJkqNOWNtg0o9s6b4grmAgAFOaCA=
Date: Wed, 14 Aug 2019 00:43:44 +0000
Message-ID: <CFEFE6A4B6B19549BBA2CEC86E99FAA0361A0793@SHSMSX104.ccr.corp.intel.com>
References: <20190812023616.6194-1-dong.yang@intel.com>
 <156570039130.5501.3990807001128210261@jlahtine-desk.ger.corp.intel.com>
In-Reply-To: <156570039130.5501.3990807001128210261@jlahtine-desk.ger.corp.intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTMxOTczMTEtOTY0Ni00Nzc1LTliNGUtZTI4NThjZDM2ZGNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidU9sVktYNkEzZmd1bXU0N3Iwd2dqZUxZXC90NXdhQkNLTE02elZ3SWdGZEdrY1pYQldib3NUUHBJZ2FZOFJCcWsifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove i915 ggtt WA since GT E
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

Y29tbWVudHMgdXBkYXRlZCwgcGxlYXNlIHJldmlldyBhZ2Fpbi4NCg0KLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCkZyb206IEpvb25hcyBMYWh0aW5lbiBbbWFpbHRvOmpvb25hcy5sYWh0aW5l
bkBsaW51eC5pbnRlbC5jb21dIA0KU2VudDogVHVlc2RheSwgQXVndXN0IDEzLCAyMDE5IDg6NDcg
UE0NClRvOiBZYW5nLCBEb25nIDxkb25nLnlhbmdAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KQ2M6IFlhbmdAZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTog
W0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNTogUmVtb3ZlIGk5MTUgZ2d0dCBXQSBzaW5jZSBH
VCBFDQoNClF1b3RpbmcgRG9uZyBZYW5nICgyMDE5LTA4LTEyIDA1OjM2OjE2KQ0KPiBGcm9tOiAi
WWFuZywgRG9uZyIgPGRvbmcueWFuZ0BpbnRlbC5jb20+DQo+IA0KPiBUaGUgQVBMIGFscmVhZHkg
Zml4ZWQgdGhpcyBidWcgc2luY2UgR1QgRSwgYnVnIGV4aXN0IGZyb20NCj4gMCB0byBELCBhcHBs
eSBXQSBhY2NvcmRpbmcgR1Qgc3RlcHBpbmcuDQoNCiJCcm94dG9uIHN0ZXBwaW5ncyBzdGFydGlu
ZyBmcm9tIEUwIGhhdmUgZml4ZWQgdGhlIGJ1Zy4iDQoNCj4gU2lnbmVkLW9mZi1ieTogWWFuZywg
RG9uZyA8ZG9uZy55YW5nQGludGVsLmNvbT4NCg0KWW91IHByb2JhYmx5IHdhbnQgdG8gdXNlICIi
IGhlcmUgdG9vLiBPciBqdXN0IHN3YXAgb3JkZXIuDQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIHwgNCArKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCANCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGlu
ZGV4IDVmM2U1YzEzZmJhYS4uZWUzODRjMjgxNzRhIA0KPiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oDQo+IEBAIC0yMTQxLDYgKzIxNDEsOCBAQCBJU19TVUJQTEFURk9STShjb25zdCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gICNkZWZpbmUgQlhUX1JFVklEX0IwICAg
ICAgICAgICAweDMNCj4gICNkZWZpbmUgQlhUX1JFVklEX0JfTEFTVCAgICAgICAweDgNCj4gICNk
ZWZpbmUgQlhUX1JFVklEX0MwICAgICAgICAgICAweDkNCj4gKyNkZWZpbmUgQlhUX1JFVklEX0Qw
ICAgICAgICAgICAweEMNCg0KI2RlZmluZSBCWFRfUkVWSURfRF9MQVNUCTB4Qw0KDQo+ICsjZGVm
aW5lIEJYVF9SRVZJRF9FMCAgICAgICAgICAgMHhEDQo+ICANCj4gICNkZWZpbmUgSVNfQlhUX1JF
VklEKGRldl9wcml2LCBzaW5jZSwgdW50aWwpIFwNCj4gICAgICAgICAoSVNfQlJPWFRPTihkZXZf
cHJpdikgJiYgSVNfUkVWSUQoZGV2X3ByaXYsIHNpbmNlLCB1bnRpbCkpIEBAIA0KPiAtMjM1Nyw3
ICsyMzU5LDcgQEAgc3RhdGljIGlubGluZSBib29sIA0KPiBpbnRlbF9zY2Fub3V0X25lZWRzX3Z0
ZF93YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpICBzdGF0aWMgDQo+IGlubGlu
ZSBib29sICBpbnRlbF9nZ3R0X3VwZGF0ZV9uZWVkc192dGRfd2Eoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgDQo+ICpkZXZfcHJpdikgIHsNCj4gLSAgICAgICByZXR1cm4gSVNfQlJPWFRPTihkZXZf
cHJpdikgJiYgaW50ZWxfdnRkX2FjdGl2ZSgpOw0KPiArICAgICAgIHJldHVybiByZXR1cm4gSVNf
QlhUX1JFVklEKGRldl9wcml2LCAwLCBCWFRfUkVWSURfRDApICYmIA0KPiArIGludGVsX3Z0ZF9h
Y3RpdmUoKTsNCg0KCXJldHVybiBJU19CWFRfUkVWSUQoZGV2X3ByaXYsIDAsIEJYVF9SRVZJRF9E
X0xBU1QpICYmDQoJICAgICAgIGludGVsX3Z0ZF9hY3RpdmUoKTsNCg0KUmVnYXJkcywgSm9vbmFz
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
