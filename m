Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F9710C080
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 00:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 736386E5CC;
	Wed, 27 Nov 2019 23:06:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2088C6E5CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 23:06:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 15:06:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="409169866"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga005.fm.intel.com with ESMTP; 27 Nov 2019 15:06:25 -0800
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 15:06:25 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.120]) with mapi id 14.03.0439.000;
 Wed, 27 Nov 2019 15:06:25 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/7] drm/i915: Clean up arguments to
 nv12/scaler w/a funcs
Thread-Index: AQHVpVXA8YYTRiR/TU6XQq7nn1u6gKegKgQA
Date: Wed, 27 Nov 2019 23:06:24 +0000
Message-ID: <1de73b54384cb894d8f02fb47409e291e7c700aa.camel@intel.com>
References: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
 <20191127190556.1574-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20191127190556.1574-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <9C1FBA9E78A14B47A10A6CC1D8AF88FE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Clean up arguments to
 nv12/scaler w/a funcs
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

T24gV2VkLCAyMDE5LTExLTI3IGF0IDIxOjA1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRG9uJ3QgcGFzcyB0aGUgcmVkdW5kYW50IGRldl9wcml2IHRvIG5lZWRzX252MTJfd2Eo
KSBhbmQNCj4gbmVlZHNfc2NhbGVyY2xrX3dhKCkuDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDI2ICsr
KysrKysrKysrLS0tLS0tLQ0KPiAtLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMo
KyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggNTNkYzMxMGE1ZjZkLi5kNTU5YjdhZTExNTEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IEBAIC02MDM3LDkgKzYwMzcsMTAgQEAgc3RhdGljIGJvb2wgaHN3X3Bvc3RfdXBkYXRlX2Vu
YWJsZV9pcHMoY29uc3QNCj4gc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3MNCj4g
IAlyZXR1cm4gIW9sZF9jcnRjX3N0YXRlLT5pcHNfZW5hYmxlZDsNCj4gIH0NCj4gIA0KPiAtc3Rh
dGljIGJvb2wgbmVlZHNfbnYxMl93YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
DQo+IC0JCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAr
c3RhdGljIGJvb2wgbmVlZHNfbnYxMl93YShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkNCj4gIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGNfc3RhdGUtDQo+ID51YXBpLmNydGMtPmRldik7DQo+ICsNCj4gIAlpZiAo
IWNydGNfc3RhdGUtPm52MTJfcGxhbmVzKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICANCj4gQEAg
LTYwNTAsOSArNjA1MSwxMCBAQCBzdGF0aWMgYm9vbCBuZWVkc19udjEyX3dhKHN0cnVjdA0KPiBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAlyZXR1cm4gZmFsc2U7DQo+ICB9DQo+ICAN
Cj4gLXN0YXRpYyBib29sIG5lZWRzX3NjYWxlcmNsa193YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsDQo+IC0JCQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gKmNydGNfc3RhdGUpDQo+ICtzdGF0aWMgYm9vbCBuZWVkc19zY2FsZXJjbGtfd2EoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ICB7DQo+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLQ0KPiA+dWFw
aS5jcnRjLT5kZXYpOw0KPiArDQo+ICAJLyogV2FfMjAwNjYwNDMxMjppY2wgKi8NCj4gIAlpZiAo
Y3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl91c2VycyA+IDAgJiYNCj4gSVNfSUNFTEFL
RShkZXZfcHJpdikpDQo+ICAJCXJldHVybiB0cnVlOw0KPiBAQCAtNjA5MywxMiArNjA5NSwxMiBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfY3J0
Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUpDQo+ICAJCQlpbnRlbF9wb3N0X2VuYWJsZV9wcmltYXJ5
KCZjcnRjLT5iYXNlLA0KPiBwaXBlX2NvbmZpZyk7DQo+ICAJfQ0KPiAgDQo+IC0JaWYgKG5lZWRz
X252MTJfd2EoZGV2X3ByaXYsIG9sZF9jcnRjX3N0YXRlKSAmJg0KPiAtCSAgICAhbmVlZHNfbnYx
Ml93YShkZXZfcHJpdiwgcGlwZV9jb25maWcpKQ0KPiArCWlmIChuZWVkc19udjEyX3dhKG9sZF9j
cnRjX3N0YXRlKSAmJg0KPiArCSAgICAhbmVlZHNfbnYxMl93YShwaXBlX2NvbmZpZykpDQo+ICAJ
CXNrbF93YV84MjcoZGV2X3ByaXYsIGNydGMtPnBpcGUsIGZhbHNlKTsNCj4gIA0KPiAtCWlmIChu
ZWVkc19zY2FsZXJjbGtfd2EoZGV2X3ByaXYsIG9sZF9jcnRjX3N0YXRlKSAmJg0KPiAtCSAgICAh
bmVlZHNfc2NhbGVyY2xrX3dhKGRldl9wcml2LCBwaXBlX2NvbmZpZykpDQo+ICsJaWYgKG5lZWRz
X3NjYWxlcmNsa193YShvbGRfY3J0Y19zdGF0ZSkgJiYNCj4gKwkgICAgIW5lZWRzX3NjYWxlcmNs
a193YShwaXBlX2NvbmZpZykpDQo+ICAJCWljbF93YV9zY2FsZXJjbGtnYXRpbmcoZGV2X3ByaXYs
IGNydGMtPnBpcGUsIGZhbHNlKTsNCj4gIH0NCj4gIA0KPiBAQCAtNjEzNSwxMyArNjEzNywxMyBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9jcnRj
X3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwNCj4gIAl9DQo+ICANCj4gIAkvKiBEaXNwbGF5IFdBIDgy
NyAqLw0KPiAtCWlmICghbmVlZHNfbnYxMl93YShkZXZfcHJpdiwgb2xkX2NydGNfc3RhdGUpICYm
DQo+IC0JICAgIG5lZWRzX252MTJfd2EoZGV2X3ByaXYsIHBpcGVfY29uZmlnKSkNCj4gKwlpZiAo
IW5lZWRzX252MTJfd2Eob2xkX2NydGNfc3RhdGUpICYmDQo+ICsJICAgIG5lZWRzX252MTJfd2Eo
cGlwZV9jb25maWcpKQ0KPiAgCQlza2xfd2FfODI3KGRldl9wcml2LCBjcnRjLT5waXBlLCB0cnVl
KTsNCj4gIA0KPiAgCS8qIFdhXzIwMDY2MDQzMTI6aWNsICovDQo+IC0JaWYgKCFuZWVkc19zY2Fs
ZXJjbGtfd2EoZGV2X3ByaXYsIG9sZF9jcnRjX3N0YXRlKSAmJg0KPiAtCSAgICBuZWVkc19zY2Fs
ZXJjbGtfd2EoZGV2X3ByaXYsIHBpcGVfY29uZmlnKSkNCj4gKwlpZiAoIW5lZWRzX3NjYWxlcmNs
a193YShvbGRfY3J0Y19zdGF0ZSkgJiYNCj4gKwkgICAgbmVlZHNfc2NhbGVyY2xrX3dhKHBpcGVf
Y29uZmlnKSkNCj4gIAkJaWNsX3dhX3NjYWxlcmNsa2dhdGluZyhkZXZfcHJpdiwgY3J0Yy0+cGlw
ZSwgdHJ1ZSk7DQo+ICANCj4gIAkvKg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
