Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A990277AA1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 22:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A57406E4A1;
	Thu, 24 Sep 2020 20:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31956E4A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 20:43:35 +0000 (UTC)
IronPort-SDR: j8Zr/1Jh/WZo3c3cPlCSukjpSyLIUzXj6KGAavu6hDFKggBFnaglt0chm210pSKJQerPldjlw4
 iV1WUszSBjkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="161411821"
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="161411821"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 13:43:34 -0700
IronPort-SDR: xvVSI0BPmLIWtnl0hps5lAS5SyarU1Z1bT3m8EWbaHWaHvDZjacegIBQnkZVBQ6Bub1mLJC+6L
 ckfcpz/xaa8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="292251284"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 24 Sep 2020 13:43:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 13:43:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 24 Sep 2020 13:43:33 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Thu, 24 Sep 2020 13:43:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Implement display WA #1142:kbl,
 cfl, cml
Thread-Index: AQHWkqup1hmv7rwC90WadmiH5BAh8ql4t6KA
Date: Thu, 24 Sep 2020 20:43:33 +0000
Message-ID: <1187052a52622a66b89267cc7573370419bcf832.camel@intel.com>
References: <20200924194810.10293-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200924194810.10293-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <050ABA00C134BF48A361F3127CB60D6E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement display WA #1142:kbl,
 cfl, cml
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

T24gVGh1LCAyMDIwLTA5LTI0IGF0IDIyOjQ4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBJbXBsZW1lbnQgZGlzcGxheSB3L2EgIzExNDIuIFRoaXMgc3VwcG9zZWRs
eSBmaXhlcyBzb21lIHVuZGVycnVucw0KPiB3aXRoIEZCQytWVGQuIEJzcGVjIHNheXMgd2Ugc2hv
dWxkIHVzZSB0aGUgc2FtZSBwcm9ncmFtbWluZyByZWdhcmRsZXNzDQo+IG9mIGNpcmN1bXN0YW5j
ZXMuIEFwcGFyZW50bHkgd2Ugc2hvdWxkIGZsaXAgdGhlIG1hZ2ljIGJpdHMgYmVmb3JlDQo+IHR1
cm5pbmcgb24gYW55IHBsYW5lcyBzbyBsZXQncyBwdXQgdGhpcyBpbnRvIHRoZSBlYXJseSB3L2Fz
Lg0KPiANCj4gQ2M6IExlZSBTaGF3biBDIDwNCj4gc2hhd24uYy5sZWVAaW50ZWwuY29tDQo+ID4N
Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDwNCj4gdmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20NCj4gPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIHwgOSArKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmggICAgICAgICAgICAgIHwgMyArKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gaW5kZXggNWE5ZDkzM2U0MjVhLi45ZDY0MTg3Y2ZkNTYgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xODY3
Nyw2ICsxODY3NywxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lYXJseV9kaXNwbGF5X3dhcyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJCWludGVsX2RlX3dyaXRlKGRldl9w
cml2LCBDSElDS0VOX1BBUjFfMSwNCj4gIAkJCSAgICAgICBpbnRlbF9kZV9yZWFkKGRldl9wcml2
LCBDSElDS0VOX1BBUjFfMSkgfCBGT1JDRV9BUkJfSURMRV9QTEFORVMpOw0KPiAgCX0NCj4gKw0K
PiArCWlmIChJU19LQUJZTEFLRShkZXZfcHJpdikgfHwgSVNfQ09GRkVFTEFLRShkZXZfcHJpdikg
fHwgSVNfQ09NRVRMQUtFKGRldl9wcml2KSkgew0KDQpXQSBtZW50aW9ucyB0aGF0IGl0IGlzIHJl
cXVpcmVkIG9ubHkgZm9yIEtCTCwgYnV0IGlmIExlZSBzYXlzIHRoYXQgdGhpcyBoZWxwcyB3aXRo
IGhpcyBDTUwgaXNzdWVzLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gKwkJLyogRGlzcGxheSBXQSAjMTE0MjprYmwsY2Zs
LGNtbCAqLw0KPiArCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIENISUNLRU5fUEFSMV8xLA0KPiAr
CQkJICAgICBLQkxfQVJCX0ZJTExfU1BBUkVfMjIsIEtCTF9BUkJfRklMTF9TUEFSRV8yMik7DQo+
ICsJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwgQ0hJQ0tFTl9NSVNDXzIsDQo+ICsJCQkgICAgIEtC
TF9BUkJfRklMTF9TUEFSRV8xMyB8IEtCTF9BUkJfRklMTF9TUEFSRV8xNCwNCj4gKwkJCSAgICAg
S0JMX0FSQl9GSUxMX1NQQVJFXzE0KTsNCj4gKwl9DQo+ICB9DQo+ICANCj4gIHN0YXRpYyB2b2lk
IGlieF9zYW5pdGl6ZV9wY2hfaGRtaV9wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IGQ4MDVkNGRhNjE4MS4uM2Y5
N2NjMGZjYmYxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTc4NjUsNiAr
Nzg2NSw3IEBAIGVudW0gew0KPiAgIyBkZWZpbmUgQ0hJQ0tFTjNfREdNR19ET05FX0ZJWF9ESVNB
QkxFCQkoMSA8PCAyKQ0KPiAgDQo+ICAjZGVmaW5lIENISUNLRU5fUEFSMV8xCQkJX01NSU8oMHg0
MjA4MCkNCj4gKyNkZWZpbmUgIEtCTF9BUkJfRklMTF9TUEFSRV8yMgkJUkVHX0JJVCgyMikNCj4g
ICNkZWZpbmUgIERJU19SQU1fQllQQVNTX1BTUjJfTUFOX1RSQUNLCSgxIDw8IDE2KQ0KPiAgI2Rl
ZmluZSAgU0tMX0RFX0NPTVBSRVNTRURfSEFTSF9NT0RFCSgxIDw8IDE1KQ0KPiAgI2RlZmluZSAg
RFBBX01BU0tfVkJMQU5LX1NSRAkJKDEgPDwgMTUpDQo+IEBAIC03ODc3LDYgKzc4NzgsOCBAQCBl
bnVtIHsNCj4gIA0KPiAgI2RlZmluZSBDSElDS0VOX01JU0NfMgkJX01NSU8oMHg0MjA4NCkNCj4g
ICNkZWZpbmUgIENOTF9DT01QX1BXUl9ET1dOCSgxIDw8IDIzKQ0KPiArI2RlZmluZSAgS0JMX0FS
Ql9GSUxMX1NQQVJFXzE0CVJFR19CSVQoMTQpDQo+ICsjZGVmaW5lICBLQkxfQVJCX0ZJTExfU1BB
UkVfMTMJUkVHX0JJVCgxMykNCj4gICNkZWZpbmUgIEdMS19DTDJfUFdSX0RPV04JKDEgPDwgMTIp
DQo+ICAjZGVmaW5lICBHTEtfQ0wxX1BXUl9ET1dOCSgxIDw8IDExKQ0KPiAgI2RlZmluZSAgR0xL
X0NMMF9QV1JfRE9XTgkoMSA8PCAxMCkNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
