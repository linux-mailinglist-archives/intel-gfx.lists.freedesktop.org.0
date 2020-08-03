Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E662323B0EC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Aug 2020 01:31:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485136E378;
	Mon,  3 Aug 2020 23:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47246E378
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 23:31:39 +0000 (UTC)
IronPort-SDR: SSqfmOgZDgQJhTGVVUg/Cr9RzsjqW0ks+FlZ53kjEG+6FbST5uaXvotUtpOSmjZLnA8Id42rGi
 3rbboui7YoCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="131790705"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="131790705"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 16:31:39 -0700
IronPort-SDR: ps3lX84twyUXlAZQgIDUvlYjRiInxnxmUzcZFrZA+T0DnGfFiqS7zZQeOiZZ7D0mWo63WScplH
 MyzvXusW9R5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="332241897"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 03 Aug 2020 16:31:38 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 3 Aug 2020 16:31:38 -0700
Received: from orsmsx109.amr.corp.intel.com (10.22.240.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 3 Aug 2020 16:31:38 -0700
Received: from orsmsx151.amr.corp.intel.com ([169.254.7.123]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.35]) with mapi id 14.03.0439.000;
 Mon, 3 Aug 2020 16:31:37 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 22/22] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
Thread-Index: AQHWYgL2yr+1YflUEkqFJT7vKi88r6knjmoA
Date: Mon, 3 Aug 2020 23:31:37 +0000
Message-ID: <b74c416a220331321552464c33bb06080dd99baa.camel@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-23-lucas.demarchi@intel.com>
In-Reply-To: <20200724213918.27424-23-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.135.198]
Content-ID: <A70C4F5781DE924EB1FBD3A58FBA731D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 22/22] drm/i915/dg1: Change DMC_DEBUG{1,
 2} registers
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

T24gRnJpLCAyMDIwLTA3LTI0IGF0IDE0OjM5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IEFuc2h1bWFuIEd1cHRhIDwNCj4gYW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tDQo+
ID4NCj4gDQo+IERHRlggZGV2aWNlcyBoYXZlIGRpZmZlcmVudCBETUNfREVCVUcqIGNvdW50ZXIg
TU1JTyBhZGRyZXNzDQo+IG9mZnNldC4gSW5jb3Jwb3JhdGUgdGhlc2UgY2hhbmdlcyBpbiBpOTE1
X3JlZy5oIGZvciBERzEgREM1L0RDNg0KPiBjb3VudGVyIGFuZCBoYW5kbGUgaTkxNV9kbWNfaW5m
byBhY2NvcmRpbmdseS4NCj4gDQo+IENjOiBVbWEgU2hhbmthciA8DQo+IHVtYS5zaGFua2FyQGlu
dGVsLmNvbQ0KPiA+DQo+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDwNCj4gYW5zaHVt
YW4uZ3VwdGFAaW50ZWwuY29tDQo+ID4NCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hp
IDwNCj4gbHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tDQo+ID4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIHwgOSArKysrKysrLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgICAgICAgICAg
fCAyICsrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RlYnVnZnMuYw0KPiBpbmRleCAzNjQ0NzUyY2M1ZWMuLmUzNTM2ZWRjYjM5NCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rl
YnVnZnMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfZGVidWdmcy5jDQo+IEBAIC01MTUsOCArNTE1LDEzIEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNf
aW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkNCj4gIAkJICAgQ1NSX1ZFUlNJ
T05fTUlOT1IoY3NyLT52ZXJzaW9uKSk7DQo+ICANCj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2
KSA+PSAxMikgew0KPiAtCQlkYzVfcmVnID0gVEdMX0RNQ19ERUJVR19EQzVfQ09VTlQ7DQo+IC0J
CWRjNl9yZWcgPSBUR0xfRE1DX0RFQlVHX0RDNl9DT1VOVDsNCj4gKwkJaWYgKElTX0RHMShkZXZf
cHJpdikpIHsNCj4gKwkJCWRjNV9yZWcgPSBERzFfRE1DX0RFQlVHX0RDNV9DT1VOVDsNCj4gKwkJ
fSBlbHNlIHsNCj4gKwkJCWRjNV9yZWcgPSBUR0xfRE1DX0RFQlVHX0RDNV9DT1VOVDsNCj4gKwkJ
CWRjNl9yZWcgPSBUR0xfRE1DX0RFQlVHX0RDNl9DT1VOVDsNCj4gKwkJfQ0KPiArDQo+ICAJCS8q
DQo+ICAJCSAqIE5PVEU6IERNQ19ERUJVRzMgaXMgYSBnZW5lcmFsIHB1cnBvc2UgcmVnLg0KPiAg
CQkgKiBBY2NvcmRpbmcgdG8gQi5TcGVjczo0OTE5NiBETUMgZi93IHJldXNlcyBEQzUvNiBjb3Vu
dGVyDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCA0ZTk1MzEyZWJhMjQuLjc4YmRj
ZTY3ZGEwOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC03NTQ5LDYgKzc1
NDksOCBAQCBlbnVtIHsNCj4gICNkZWZpbmUgQlhUX0NTUl9EQzNfREM1X0NPVU5UCV9NTUlPKDB4
ODAwMzgpDQo+ICAjZGVmaW5lIFRHTF9ETUNfREVCVUdfREM1X0NPVU5UCV9NTUlPKDB4MTAxMDg0
KQ0KPiAgI2RlZmluZSBUR0xfRE1DX0RFQlVHX0RDNl9DT1VOVAlfTU1JTygweDEwMTA4OCkNCj4g
KyNkZWZpbmUgREcxX0RNQ19ERUJVR19EQzVfQ09VTlQJX01NSU8oMHgxMzQxNTQpDQo+ICsjZGVm
aW5lIERHMV9ETUNfREVCVUdfREM2X0NPVU5UCV9NTUlPKDB4MTM0MTU4KQ0KDQpERzFfRE1DX0RF
QlVHX0RDNl9DT1VOVCBpcyBub3QgdXNlZCBhcyBERzEgZG8gbm90IHN1cHBvcnQgREM2Lg0KUmVt
b3ZpbmcgaXQ6DQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCg0KDQo+ICANCj4gICNkZWZpbmUgRE1DX0RFQlVHMwkJX01NSU8oMHgx
MDEwOTApDQo+ICANCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
