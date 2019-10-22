Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2E0E0AFD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 19:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBCED6E486;
	Tue, 22 Oct 2019 17:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB776E486
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 17:52:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 10:52:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,217,1569308400"; d="scan'208";a="203714236"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Oct 2019 10:52:19 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 22 Oct 2019 10:52:19 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.15]) with mapi id 14.03.0439.000;
 Tue, 22 Oct 2019 10:52:18 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Add new CNL PCH ID seen on a CML
 platform
Thread-Index: AQHViL6X6QbVCnd52EyLmTdfsq3+U6dnZr8A
Date: Tue, 22 Oct 2019 17:52:18 +0000
Message-ID: <1cca971a271ea256ef3e2f7410453bf2341a7489.camel@intel.com>
References: <20191022095155.30991-1-imre.deak@intel.com>
In-Reply-To: <20191022095155.30991-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <DCAB8EB51C9DBB4DA14F60023117341C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add new CNL PCH ID seen on a CML
 platform
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
Cc: "cyrus.lien@canonical.com" <cyrus.lien@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTEwLTIyIGF0IDEyOjUxICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEF0
bSB3ZSBkb24ndCBkZXRlY3QgYSBQQ0ggd2l0aCBQQ0kgSUQgMHhBM0MxIHdoaWNoIHNob3dlZCB1
cCBub3cgb24gYQ0KPiBDTUwNCj4gcGxhdGZvcm0uIFdlIGRvbid0IGhhdmUgdGhlIG9mZmljaWFs
IGFzc2lnbm1lbnQgb2YgdGhlIFBDSCBQQ0kgSURzLA0KPiBidXQNCj4gdGhpcyBsb29rcyBsaWtl
IGEgQ05QIHdoaWNoIHdhcyBhbHJlYWR5IHVzZWQgb24gQ01MIHBsYXRmb3Jtcy4gTGV0J3MNCj4g
YWRkDQo+IHRoZSBuZXcgSUQtPlBDSCB0eXBlIG1hcHBpbmcgYWNjb3JkaW5nbHkuDQoNCkxvb2tz
IHJpZ2h0Li4uDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCg0KPiANCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjA1MQ0KPiBSZXBvcnRlZC1hbmQtdGVzdGVkLWJ5OiBD
eXJ1cyA8Y3lydXMubGllbkBjYW5vbmljYWwuY29tPg0KPiBDYzogQ3lydXMgPGN5cnVzLmxpZW5A
Y2Fub25pY2FsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIHwgMSAr
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCB8IDEgKw0KPiAgMiBmaWxlcyBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9wY2guYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5j
DQo+IGluZGV4IDEwMzVkM2Q0NmZkOC4uNDNmMjM4MjBkMDMyIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wY2guYw0KPiBAQCAtNjEsNiArNjEsNyBAQCBpbnRlbF9wY2hfdHlwZShjb25zdCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsIHVuc2lnbmVkIHNob3J0IGlkKQ0K
PiAgCQkvKiBLQlAgaXMgU1BUIGNvbXBhdGlibGUgKi8NCj4gIAkJcmV0dXJuIFBDSF9TUFQ7DQo+
ICAJY2FzZSBJTlRFTF9QQ0hfQ05QX0RFVklDRV9JRF9UWVBFOg0KPiArCWNhc2UgSU5URUxfUENI
X0NOUDJfREVWSUNFX0lEX1RZUEU6DQo+ICAJCURSTV9ERUJVR19LTVMoIkZvdW5kIENhbm5vbiBM
YWtlIFBDSCAoQ05QKVxuIik7DQo+ICAJCVdBUk5fT04oIUlTX0NBTk5PTkxBS0UoZGV2X3ByaXYp
ICYmDQo+ICFJU19DT0ZGRUVMQUtFKGRldl9wcml2KSk7DQo+ICAJCXJldHVybiBQQ0hfQ05QOw0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaA0KPiBpbmRleCBmNGRjMThjMzQyOTEuLjExMTVj
NmEwNTIyYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmgNCj4gQEAgLTQwLDYgKzQw
LDcgQEAgZW51bSBpbnRlbF9wY2ggew0KPiAgI2RlZmluZSBJTlRFTF9QQ0hfU1BUX0xQX0RFVklD
RV9JRF9UWVBFCQkweDlEMDANCj4gICNkZWZpbmUgSU5URUxfUENIX0tCUF9ERVZJQ0VfSURfVFlQ
RQkJMHhBMjgwDQo+ICAjZGVmaW5lIElOVEVMX1BDSF9DTlBfREVWSUNFX0lEX1RZUEUJCTB4QTMw
MA0KPiArI2RlZmluZSBJTlRFTF9QQ0hfQ05QMl9ERVZJQ0VfSURfVFlQRQkJMHhBMzgwDQo+ICAj
ZGVmaW5lIElOVEVMX1BDSF9DTlBfTFBfREVWSUNFX0lEX1RZUEUJCTB4OUQ4MA0KPiAgI2RlZmlu
ZSBJTlRFTF9QQ0hfQ01QX0RFVklDRV9JRF9UWVBFCQkweDAyODANCj4gICNkZWZpbmUgSU5URUxf
UENIX0NNUDJfREVWSUNFX0lEX1RZUEUJCTB4MDY4MA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
