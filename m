Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8973935F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 19:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CDB689CF9;
	Fri,  7 Jun 2019 17:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E75F289CF9
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 17:36:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 10:36:17 -0700
X-ExtLoop1: 1
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2019 10:36:17 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 7 Jun 2019 10:36:17 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.248]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.137]) with mapi id 14.03.0415.000;
 Fri, 7 Jun 2019 10:36:16 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 01/23] drm/i915/icl: Add support to read
 out the TBT PLL HW state
Thread-Index: AQHVGuYY4iAl8F+Hc0iO3O/rPOylEKaQ7o+A
Date: Fri, 7 Jun 2019 17:36:16 +0000
Message-ID: <d128a80a94bb60955814846829ff06a0e3c8d20a.camel@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
 <20190604145826.16424-2-imre.deak@intel.com>
In-Reply-To: <20190604145826.16424-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.212]
Content-ID: <163D38694C361F499C982027C5D4DBA7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915/icl: Add support to read out
 the TBT PLL HW state
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA2LTA0IGF0IDE3OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCBzdXBwb3J0IHRvIHJlYWQgb3V0IHRoZSBUQlQgUExMIEhXIHN0YXRlLg0KDQpSZXZpZXdlZC1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+
IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCj4gQ2M6
IFBhdWxvIFphbm9uaSA8cGF1bG8uci56YW5vbmlAaW50ZWwuY29tPg0KPiBDYzogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kaXNwbGF5LmMgfCAxMSArKysrKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZmM0N2VkMDI0N2M1Li4yNjQ3NDc4OGI3YjIgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTk4NTksMTMgKzk4NTks
MjAgQEAgc3RhdGljIHZvaWQgaWNlbGFrZV9nZXRfZGRpX3BsbChzdHJ1Y3QNCj4gZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJZW51bSBpbnRlbF9kcGxsX2lkIGlkOw0KPiAgCXUzMiB0
ZW1wOw0KPiAgDQo+IC0JLyogVE9ETzogVEJUIHBsbCBub3QgaW1wbGVtZW50ZWQuICovDQo+ICAJ
aWYgKGludGVsX3BvcnRfaXNfY29tYm9waHkoZGV2X3ByaXYsIHBvcnQpKSB7DQo+ICAJCXRlbXAg
PSBJOTE1X1JFQUQoRFBDTEtBX0NGR0NSMF9JQ0wpICYNCj4gIAkJICAgICAgIERQQ0xLQV9DRkdD
UjBfRERJX0NMS19TRUxfTUFTSyhwb3J0KTsNCj4gIAkJaWQgPSB0ZW1wID4+IERQQ0xLQV9DRkdD
UjBfRERJX0NMS19TRUxfU0hJRlQocG9ydCk7DQo+ICAJfSBlbHNlIGlmIChpbnRlbF9wb3J0X2lz
X3RjKGRldl9wcml2LCBwb3J0KSkgew0KPiAtCQlpZCA9IGljbF90Y19wb3J0X3RvX3BsbF9pZChp
bnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LA0KPiBwb3J0KSk7DQo+ICsJCXUzMiBjbGtfc2VsID0g
STkxNV9SRUFEKERESV9DTEtfU0VMKHBvcnQpKSAmDQo+IERESV9DTEtfU0VMX01BU0s7DQo+ICsN
Cj4gKwkJaWYgKGNsa19zZWwgPT0gRERJX0NMS19TRUxfTUcpIHsNCj4gKwkJCWlkID0NCj4gaWNs
X3RjX3BvcnRfdG9fcGxsX2lkKGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsDQo+ICsJCQkJCQkJ
CSAgICBwb3INCj4gdCkpOw0KPiArCQl9IGVsc2Ugew0KPiArCQkJV0FSTl9PTihjbGtfc2VsIDwg
RERJX0NMS19TRUxfVEJUXzE2Mik7DQo+ICsJCQlpZCA9IERQTExfSURfSUNMX1RCVFBMTDsNCj4g
KwkJfQ0KPiAgCX0gZWxzZSB7DQo+ICAJCVdBUk4oMSwgIkludmFsaWQgcG9ydCAleFxuIiwgcG9y
dCk7DQo+ICAJCXJldHVybjsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
