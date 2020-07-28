Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AA6230F7D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 18:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8E8A6E0D8;
	Tue, 28 Jul 2020 16:35:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5196E0D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 16:35:34 +0000 (UTC)
IronPort-SDR: 68ex6BvTRO13QNFqylZbHhox5I9JRz9FpLc2RjbYoVQanAAEXukpiNt7ZxdMX8mHE1eU+hfRrX
 Z8fa1Xob6GnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="130818538"
X-IronPort-AV: E=Sophos;i="5.75,406,1589266800"; d="scan'208";a="130818538"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 09:35:23 -0700
IronPort-SDR: uW5z/xn1YIpwh2OefYZo8lbR+udi77ckZShg1lIR03e12ycf25Y3dV2geuQYvbjWhg1Bwsj+YX
 +rVSBlskSvQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,406,1589266800"; d="scan'208";a="320449997"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga008.jf.intel.com with ESMTP; 28 Jul 2020 09:35:22 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jul 2020 09:35:22 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.138]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.64]) with mapi id 14.03.0439.000;
 Tue, 28 Jul 2020 09:35:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 01/22] drm/i915/dg1: Initialize RAWCLK
 properly
Thread-Index: AQHWYgLv9zY1B7KaOUGC97kLuhbEqqkdrBgA
Date: Tue, 28 Jul 2020 16:35:21 +0000
Message-ID: <c0e1808cc1d59d73ed695c4b568e3da70929d477.camel@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-2-lucas.demarchi@intel.com>
In-Reply-To: <20200724213918.27424-2-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.116.17]
Content-ID: <81665F95A510C54F8A45A3564C8BF05A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 01/22] drm/i915/dg1: Initialize RAWCLK
 properly
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

T24gRnJpLCAyMDIwLTA3LTI0IGF0IDE0OjM4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IE1hdHQgUm9wZXIgPA0KPiBtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tDQo+ID4N
Cj4gDQo+IERHMSBhbHdheXMgdXNlcyBhIDM4LjQgTUh6IHJhd2NsayByYXRoZXIgdGhhbiB0aGUg
MTkuMi8yNCBNSHoNCj4gZnJlcXVlbmNpZXMgb24gQ05QKy4gIE5vdGUgdGhhdCByZWdpc3RlciBi
aXRzIGFzc29jaWF0ZWQgd2l0aCB0aGlzDQo+IGZyZXF1ZW5jeSBjb25mdXNpbmdseSB1c2UgMzcg
Zm9yIHRoZSBkaXZpZGVyIGZpZWxkIHJhdGhlciB0aGFuIDM4IGFzIHlvdQ0KPiBtaWdodCBleHBl
Y3QuDQo+IA0KPiBGb3Igc2ltcGxpY2l0eSwgbGV0J3MganVzdCBhc3N1bWUgdGhhdCB0aGlzIDM4
LjQgTUh6IGZyZXF1ZW5jeSB3aWxsIGhvbGQNCj4gdHJ1ZSBmb3Igb3RoZXIgZnV0dXJlIHBsYXRm
b3JtcyB3aXRoICJmYWtlIiBQQ0ggc291dGggZGlzcGxheXMgYW5kIHRoYXQNCj4gdGhlIENOUC1z
dHlsZSBiZWhhdmlvciB3aWxsIHJlbWFpbiBmb3Igb3RoZXIgcGxhdGZvcm1zIHdpdGggYSByZWFs
IFBDSC4NCj4gDQo+IEJzcGVjOiA0OTk1MA0KPiBCc3BlYzogNDkzMDkNCg0KUmV2aWV3ZWQtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IENjOiBB
ZGl0eWEgU3dhcnVwIDwNCj4gYWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20NCj4gPg0KPiBDYzogQ2xp
bnRvbiBUYXlsb3IgPA0KPiBDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbQ0KPiA+DQo+IENjOiBM
dWNhcyBEZSBNYXJjaGkgPA0KPiBsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20NCj4gPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDwNCj4gbWF0dGhldy5kLnJvcGVyQGludGVsLmNvbQ0KPiA+
DQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8DQo+IGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbQ0KPiA+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5jIHwgMTYgKysrKysrKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggOWQ2Y2FjYmRiNjkxLi43NzIyODMxMzQ2YmEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4g
QEAgLTI2ODAsNiArMjY4MCwxOCBAQCB2b2lkIGludGVsX3VwZGF0ZV9jZGNsayhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJCQkgICAgICAgRElWX1JPVU5EX1VQKGRldl9w
cml2LT5jZGNsay5ody5jZGNsaywgMTAwMCkpOw0KPiAgfQ0KPiAgDQo+ICtzdGF0aWMgaW50IGRn
MV9yYXdjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiArew0KPiArCS8q
DQo+ICsJICogREcxIGFsd2F5cyB1c2VzIGEgMzguNCBNSHogcmF3Y2xrLiAgVGhlIGJzcGVjIHRl
bGxzIHVzDQo+ICsJICogIlByb2dyYW0gTnVtZXJhdG9yPTIsIERlbm9taW5hdG9yPTQsIERpdmlk
ZXI9MzcgZGVjaW1hbC4iDQo+ICsJICovDQo+ICsJSTkxNV9XUklURShQQ0hfUkFXQ0xLX0ZSRVEs
DQo+ICsJCSAgIENOUF9SQVdDTEtfREVOKDQpIHwgQ05QX1JBV0NMS19ESVYoMzcpIHwgSUNQX1JB
V0NMS19OVU0oMikpOw0KPiArDQo+ICsJcmV0dXJuIDM4NDAwOw0KPiArfQ0KPiArDQo+ICBzdGF0
aWMgaW50IGNucF9yYXdjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAg
ew0KPiAgCXUzMiByYXdjbGs7DQo+IEBAIC0yNzg4LDcgKzI4MDAsOSBAQCB1MzIgaW50ZWxfcmVh
ZF9yYXdjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgew0KPiAgCXUz
MiBmcmVxOw0KPiAgDQo+IC0JaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfQ05Q
KQ0KPiArCWlmIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPj0gUENIX0RHMSkNCj4gKwkJZnJl
cSA9IGRnMV9yYXdjbGsoZGV2X3ByaXYpOw0KPiArCWVsc2UgaWYgKElOVEVMX1BDSF9UWVBFKGRl
dl9wcml2KSA+PSBQQ0hfQ05QKQ0KPiAgCQlmcmVxID0gY25wX3Jhd2NsayhkZXZfcHJpdik7DQo+
ICAJZWxzZSBpZiAoSEFTX1BDSF9TUExJVChkZXZfcHJpdikpDQo+ICAJCWZyZXEgPSBwY2hfcmF3
Y2xrKGRldl9wcml2KTsNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
