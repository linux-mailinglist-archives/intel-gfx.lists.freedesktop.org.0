Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6259157387
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 23:22:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1974F6E326;
	Wed, 26 Jun 2019 21:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298A06E326
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 21:22:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 14:22:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="337347558"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga005.jf.intel.com with ESMTP; 26 Jun 2019 14:22:35 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 14:22:35 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx120.amr.corp.intel.com ([169.254.15.12]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 14:22:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 3/5] drm/i915/ehl: Don't program PHY_MISC on EHL PHY C
Thread-Index: AQHVK7KwNeIl6GrxQ0W87Vblri2kvqau6H0A
Date: Wed, 26 Jun 2019 21:22:34 +0000
Message-ID: <4a2a21eef8c24e648d925e894d513707be8bef71.camel@intel.com>
References: <20190626000352.31926-1-matthew.d.roper@intel.com>
 <20190626000352.31926-4-matthew.d.roper@intel.com>
In-Reply-To: <20190626000352.31926-4-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <7CE65BCEC50C2E42BC7A4625FD6836AE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 3/5] drm/i915/ehl: Don't program PHY_MISC
 on EHL PHY C
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

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDE3OjAzIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBB
bHRob3VnaCBFSEwgYWRkZWQgYSB0aGlyZCBjb21ibyBQSFksIG5vIFBIWV9NSVNDIHJlZ2lzdGVy
IHdhcyBhZGRlZA0KPiBmb3INCj4gUEhZIEMuICBUaGUgYnNwZWMgaW5kaWNhdGVzIHRoYXQgdGhl
cmUncyBubyBuZWVkIHRvIHByb2dyYW0gdGhlICJERQ0KPiB0bw0KPiBJTyBDb21wIFB3ciBEb3du
IiBzZXR0aW5nIGZvciB0aGlzIFBIWSB0aGF0IHdlIHVzdWFsbHkgbmVlZCB0byBzZXQgaW4NCj4g
UEhZX01JU0MuDQo+IA0KPiB2MjoNCj4gIC0gQWRkIElTX0VMS0hBUlRMQUtFKCkgZ3VhcmRzIHNp
bmNlIGZ1dHVyZSBwbGF0Zm9ybXMgdGhhdCBoYXZlIGEgUEhZDQo+IEMNCj4gICAgYXJlIGxpa2Vs
eSB0byByZWluc3RhdGUgdGhlIFBIWV9NSVNDIHJlZ2lzdGVyLiAgKEpvc2UpDQo+ICAtIFVzZSBn
b3RvJ3MgdG8gc2tpcCBQSFlfTUlTQyBwcm9ncmFtbWluZyAmIG1pbmltaXplIGNvZGUgZGVsdGFz
Lg0KPiAoSm9zZSkNCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBCc3BlYzogMzMxNDgNCj4gQ2M6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYyAgICB8IDI4DQo+ICsrKysrKysrKysrKysr
KysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29tYm9fcGh5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJv
X3BoeS5jDQo+IGluZGV4IDA3NWJhYjI1MDBlYi4uZDNkNTI0NDc2NWU2IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMNCj4gQEAgLTE4
Myw5ICsxODMsMTMgQEAgc3RhdGljIHZvaWQgY25sX2NvbWJvX3BoeXNfdW5pbml0KHN0cnVjdA0K
PiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIHN0YXRpYyBib29sIGljbF9jb21ib19w
aHlfZW5hYmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJCQkJICBl
bnVtIHBvcnQgcG9ydCkNCj4gIHsNCj4gLQlyZXR1cm4gIShJOTE1X1JFQUQoSUNMX1BIWV9NSVND
KHBvcnQpKSAmDQo+IC0JCSBJQ0xfUEhZX01JU0NfREVfSU9fQ09NUF9QV1JfRE9XTikgJiYNCj4g
LQkJKEk5MTVfUkVBRChJQ0xfUE9SVF9DT01QX0RXMChwb3J0KSkgJiBDT01QX0lOSVQpOw0KPiAr
CS8qIFRoZSBQSFkgQyBhZGRlZCBieSBFSEwgaGFzIG5vIFBIWV9NSVNDIHJlZ2lzdGVyICovDQo+
ICsJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSAmJiBwb3J0ID09IFBPUlRfQykNCj4gKwkJ
cmV0dXJuIEk5MTVfUkVBRChJQ0xfUE9SVF9DT01QX0RXMChwb3J0KSkgJiBDT01QX0lOSVQ7DQo+
ICsJZWxzZQ0KPiArCQlyZXR1cm4gIShJOTE1X1JFQUQoSUNMX1BIWV9NSVNDKHBvcnQpKSAmDQo+
ICsJCQkgSUNMX1BIWV9NSVNDX0RFX0lPX0NPTVBfUFdSX0RPV04pICYmDQo+ICsJCQkoSTkxNV9S
RUFEKElDTF9QT1JUX0NPTVBfRFcwKHBvcnQpKSAmDQo+IENPTVBfSU5JVCk7DQo+ICB9DQo+ICAN
Cj4gIHN0YXRpYyBib29sIGljbF9jb21ib19waHlfdmVyaWZ5X3N0YXRlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlDQo+ICpkZXZfcHJpdiwNCj4gQEAgLTI5OSw2ICszMDMsMTQgQEAgc3RhdGljIHZv
aWQgaWNsX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpDQo+ICAJCQljb250aW51ZTsNCj4gIAkJfQ0KPiAgDQo+ICsJCS8qDQo+ICsJCSAqIEFsdGhv
dWdoIEVITCBhZGRzIGEgY29tYm8gUEhZIEMsIHRoZXJlJ3Mgbm8gUEhZX01JU0MNCj4gKwkJICog
cmVnaXN0ZXIgZm9yIGl0IGFuZCBubyBuZWVkIHRvIHByb2dyYW0gdGhlDQo+ICsJCSAqIERFX0lP
X0NPTVBfUFdSX0RPV04gc2V0dGluZyBvbiBQSFkgQy4NCj4gKwkJICovDQo+ICsJCWlmIChJU19F
TEtIQVJUTEFLRShkZXZfcHJpdikgJiYgcG9ydCA9PSBQT1JUX0MpDQo+ICsJCQlnb3RvIHNraXBf
cGh5X21pc2M7DQo+ICsNCj4gIAkJLyoNCj4gIAkJICogRUhMJ3MgY29tYm8gUEhZIEEgY2FuIGJl
IGhvb2tlZCB1cCB0byBlaXRoZXIgYW4NCj4gZXh0ZXJuYWwNCj4gIAkJICogZGlzcGxheSAodmlh
IERESS1EKSBvciBhbiBpbnRlcm5hbCBkaXNwbGF5ICh2aWEgRERJLQ0KPiBBIG9yDQo+IEBAIC0z
MTMsNiArMzI1LDcgQEAgc3RhdGljIHZvaWQgaWNsX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3QNCj4g
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICAJCXZhbCAmPSB+SUNMX1BIWV9NSVNDX0RF
X0lPX0NPTVBfUFdSX0RPV047DQo+ICAJCUk5MTVfV1JJVEUoSUNMX1BIWV9NSVNDKHBvcnQpLCB2
YWwpOw0KPiAgDQo+ICtza2lwX3BoeV9taXNjOg0KPiAgCQljbmxfc2V0X3Byb2Ntb25fcmVmX3Zh
bHVlcyhkZXZfcHJpdiwgcG9ydCk7DQo+ICANCj4gIAkJaWYgKHBvcnQgPT0gUE9SVF9BKSB7DQo+
IEBAIC0zNDMsMTAgKzM1NiwxOSBAQCBzdGF0aWMgdm9pZCBpY2xfY29tYm9fcGh5c191bmluaXQo
c3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCQkJRFJNX1dBUk4oIlBv
cnQgJWMgY29tYm8gUEhZIEhXIHN0YXRlIGNoYW5nZWQNCj4gdW5leHBlY3RlZGx5XG4iLA0KPiAg
CQkJCSBwb3J0X25hbWUocG9ydCkpOw0KPiAgDQo+ICsJCS8qDQo+ICsJCSAqIEFsdGhvdWdoIEVI
TCBhZGRzIGEgY29tYm8gUEhZIEMsIHRoZXJlJ3Mgbm8gUEhZX01JU0MNCj4gKwkJICogcmVnaXN0
ZXIgZm9yIGl0IGFuZCBubyBuZWVkIHRvIHByb2dyYW0gdGhlDQo+ICsJCSAqIERFX0lPX0NPTVBf
UFdSX0RPV04gc2V0dGluZyBvbiBQSFkgQy4NCj4gKwkJICovDQo+ICsJCWlmIChJU19FTEtIQVJU
TEFLRShkZXZfcHJpdikgJiYgcG9ydCA9PSBQT1JUX0MpDQo+ICsJCQlnb3RvIHNraXBfcGh5X21p
c2M7DQo+ICsNCj4gIAkJdmFsID0gSTkxNV9SRUFEKElDTF9QSFlfTUlTQyhwb3J0KSk7DQo+ICAJ
CXZhbCB8PSBJQ0xfUEhZX01JU0NfREVfSU9fQ09NUF9QV1JfRE9XTjsNCj4gIAkJSTkxNV9XUklU
RShJQ0xfUEhZX01JU0MocG9ydCksIHZhbCk7DQo+ICANCj4gK3NraXBfcGh5X21pc2M6DQo+ICAJ
CXZhbCA9IEk5MTVfUkVBRChJQ0xfUE9SVF9DT01QX0RXMChwb3J0KSk7DQo+ICAJCXZhbCAmPSB+
Q09NUF9JTklUOw0KPiAgCQlJOTE1X1dSSVRFKElDTF9QT1JUX0NPTVBfRFcwKHBvcnQpLCB2YWwp
Ow0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
