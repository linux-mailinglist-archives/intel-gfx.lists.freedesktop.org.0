Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E2A6B235
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 01:09:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B8B89C49;
	Tue, 16 Jul 2019 23:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C62B89C49
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jul 2019 23:09:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 16:09:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,272,1559545200"; d="scan'208";a="172686853"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga006.jf.intel.com with ESMTP; 16 Jul 2019 16:09:26 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 16 Jul 2019 16:09:26 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.65]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.173]) with mapi id 14.03.0439.000;
 Tue, 16 Jul 2019 16:09:26 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/22] drm/i915/tgl: Update north display
 hotplug detection to TGL connections
Thread-Index: AQHVORe7CFUXj6PQvEyTF99hHUHAT6bN5Kmw
Date: Tue, 16 Jul 2019 23:09:25 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734810267F@ORSMSX108.amr.corp.intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-6-lucas.demarchi@intel.com>
In-Reply-To: <20190713010940.17711-6-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGRjMDkwOTUtMWFiYi00OWM2LTk5MjctMjYyZDU2ZDRhYzI4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiXC9kRlYxWlFsV2RwUHd2MDVYVXhHait2MnNRQnJZNG5XZlwvMDRycEZYN0RUWlp0UzhWVkJvZ3N2V1wvcjRyR0FpSyJ9
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/22] drm/i915/tgl: Update north display
 hotplug detection to TGL connections
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IEludGVsLWdmeCBbbWFpbHRv
OmludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZ10gT24gQmVoYWxmIE9mDQo+
THVjYXMgRGUgTWFyY2hpDQo+U2VudDogRnJpZGF5LCBKdWx5IDEyLCAyMDE5IDY6MDkgUE0NCj5U
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPlN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwNS8yMl0gZHJtL2k5MTUvdGdsOiBVcGRhdGUgbm9ydGggZGlzcGxheSBob3RwbHVn
DQo+ZGV0ZWN0aW9uIHRvIFRHTCBjb25uZWN0aW9ucw0KPg0KPkZyb206IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPg0KPlRHTCBoYXMgMyBjb21ib3BoeXMg
YW5kIDYgVEMvVEJUIHBvcnRzLCBzbyBpdCBoYXMgMiBtb3JlIFRDL1RCVCBwb3J0cyB0aGFuIElD
TA0KPmFuZCB0aGUgUE9SVF9DIG9uIFRHTCBpcyBhIGNvbWJvcGh5Lg0KPlNvIGhlcmUgYWRkaW5n
IGEgbmV3IGhwZCBub3J0aCB0YWJsZSBhbmQgZnVuY3Rpb24gdG8gZGV0ZWN0IGxvbmcgcHVsc2Ug
Zm9yIFRHTC4NCj4NCj5TaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj5TaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51
c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCg0KPi0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jIHwgNTEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tDQo+ZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8IDEyICsrKysrKy0tDQo+IDIgZmlsZXMgY2hhbmdl
ZCwgNTYgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4NCj5kaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMNCj5pbmRleCBhN2E5MDY3NGRiODkuLjI1NmJkMmMwNzJjMSAxMDA2NDQNCj4tLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYw0KPkBAIC01Niw2ICs1Niw4IEBADQo+ICAqIGFuZCByZWxhdGVkIGZpbGVz
LCBidXQgdGhhdCB3aWxsIGJlIGRlc2NyaWJlZCBpbiBzZXBhcmF0ZSBjaGFwdGVycy4NCj4gICov
DQo+DQo+K3R5cGVkZWYgYm9vbCAoKmxvbmdfcHVsc2VfZGV0ZWN0X2Z1bmMpKGVudW0gaHBkX3Bp
biBwaW4sIHUzMiB2YWwpOw0KPisNCj4gc3RhdGljIGNvbnN0IHUzMiBocGRfaWxrW0hQRF9OVU1f
UElOU10gPSB7DQo+IAlbSFBEX1BPUlRfQV0gPSBERV9EUF9BX0hPVFBMVUcsDQo+IH07DQo+QEAg
LTEzMyw2ICsxMzUsMTUgQEAgc3RhdGljIGNvbnN0IHUzMiBocGRfZ2VuMTFbSFBEX05VTV9QSU5T
XSA9IHsNCj4gCVtIUERfUE9SVF9GXSA9IEdFTjExX1RDNF9IT1RQTFVHIHwgR0VOMTFfVEJUNF9I
T1RQTFVHICB9Ow0KPg0KPitzdGF0aWMgY29uc3QgdTMyIGhwZF9nZW4xMltIUERfTlVNX1BJTlNd
ID0gew0KPisJW0hQRF9QT1JUX0RdID0gR0VOMTFfVEMxX0hPVFBMVUcgfCBHRU4xMV9UQlQxX0hP
VFBMVUcsDQo+KwlbSFBEX1BPUlRfRV0gPSBHRU4xMV9UQzJfSE9UUExVRyB8IEdFTjExX1RCVDJf
SE9UUExVRywNCj4rCVtIUERfUE9SVF9GXSA9IEdFTjExX1RDM19IT1RQTFVHIHwgR0VOMTFfVEJU
M19IT1RQTFVHLA0KPisJW0hQRF9QT1JUX0ddID0gR0VOMTFfVEM0X0hPVFBMVUcgfCBHRU4xMV9U
QlQ0X0hPVFBMVUcsDQo+KwlbSFBEX1BPUlRfSF0gPSBHRU4xMl9UQzVfSE9UUExVRyB8IEdFTjEy
X1RCVDVfSE9UUExVRywNCj4rCVtIUERfUE9SVF9JXSA9IEdFTjEyX1RDNl9IT1RQTFVHIHwgR0VO
MTJfVEJUNl9IT1RQTFVHIH07DQo+Kw0KPiBzdGF0aWMgY29uc3QgdTMyIGhwZF9pY3BbSFBEX05V
TV9QSU5TXSA9IHsNCj4gCVtIUERfUE9SVF9BXSA9IFNERV9ERElBX0hPVFBMVUdfSUNQLA0KPiAJ
W0hQRF9QT1JUX0JdID0gU0RFX0RESUJfSE9UUExVR19JQ1AsDQo+QEAgLTE2NzYsNiArMTY4Nywy
NiBAQCBzdGF0aWMgYm9vbCBnZW4xMV9wb3J0X2hvdHBsdWdfbG9uZ19kZXRlY3QoZW51bQ0KPmhw
ZF9waW4gcGluLCB1MzIgdmFsKQ0KPiAJfQ0KPiB9DQo+DQo+K3N0YXRpYyBib29sIGdlbjEyX3Bv
cnRfaG90cGx1Z19sb25nX2RldGVjdChlbnVtIGhwZF9waW4gcGluLCB1MzIgdmFsKSB7DQo+Kwlz
d2l0Y2ggKHBpbikgew0KPisJY2FzZSBIUERfUE9SVF9EOg0KPisJCXJldHVybiB2YWwgJiBHRU4x
MV9IT1RQTFVHX0NUTF9MT05HX0RFVEVDVChQT1JUX1RDMSk7DQo+KwljYXNlIEhQRF9QT1JUX0U6
DQo+KwkJcmV0dXJuIHZhbCAmIEdFTjExX0hPVFBMVUdfQ1RMX0xPTkdfREVURUNUKFBPUlRfVEMy
KTsNCj4rCWNhc2UgSFBEX1BPUlRfRjoNCj4rCQlyZXR1cm4gdmFsICYgR0VOMTFfSE9UUExVR19D
VExfTE9OR19ERVRFQ1QoUE9SVF9UQzMpOw0KPisJY2FzZSBIUERfUE9SVF9HOg0KPisJCXJldHVy
biB2YWwgJiBHRU4xMV9IT1RQTFVHX0NUTF9MT05HX0RFVEVDVChQT1JUX1RDNCk7DQo+KwljYXNl
IEhQRF9QT1JUX0g6DQo+KwkJcmV0dXJuIHZhbCAmIEdFTjExX0hPVFBMVUdfQ1RMX0xPTkdfREVU
RUNUKFBPUlRfVEM1KTsNCj4rCWNhc2UgSFBEX1BPUlRfSToNCj4rCQlyZXR1cm4gdmFsICYgR0VO
MTFfSE9UUExVR19DVExfTE9OR19ERVRFQ1QoUE9SVF9UQzYpOw0KPisJZGVmYXVsdDoNCj4rCQly
ZXR1cm4gZmFsc2U7DQo+Kwl9DQo+K30NCj4rDQo+IHN0YXRpYyBib29sIGJ4dF9wb3J0X2hvdHBs
dWdfbG9uZ19kZXRlY3QoZW51bSBocGRfcGluIHBpbiwgdTMyIHZhbCkgIHsNCj4gCXN3aXRjaCAo
cGluKSB7DQo+QEAgLTI4NjksNiArMjkwMCwxNiBAQCBzdGF0aWMgdm9pZCBnZW4xMV9ocGRfaXJx
X2hhbmRsZXIoc3RydWN0DQo+ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBpaXIpDQo+
IAl1MzIgcGluX21hc2sgPSAwLCBsb25nX21hc2sgPSAwOw0KPiAJdTMyIHRyaWdnZXJfdGMgPSBp
aXIgJiBHRU4xMV9ERV9UQ19IT1RQTFVHX01BU0s7DQo+IAl1MzIgdHJpZ2dlcl90YnQgPSBpaXIg
JiBHRU4xMV9ERV9UQlRfSE9UUExVR19NQVNLOw0KPisJbG9uZ19wdWxzZV9kZXRlY3RfZnVuYyBs
b25nX3B1bHNlX2RldGVjdDsNCj4rCWNvbnN0IHUzMiAqaHBkOw0KPisNCj4rCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyKSB7DQo+KwkJbG9uZ19wdWxzZV9kZXRlY3QgPSBnZW4xMl9wb3J0
X2hvdHBsdWdfbG9uZ19kZXRlY3Q7DQo+KwkJaHBkID0gaHBkX2dlbjEyOw0KPisJfSBlbHNlIHsN
Cj4rCQlsb25nX3B1bHNlX2RldGVjdCA9IGdlbjExX3BvcnRfaG90cGx1Z19sb25nX2RldGVjdDsN
Cj4rCQlocGQgPSBocGRfZ2VuMTE7DQo+Kwl9DQo+DQo+IAlpZiAodHJpZ2dlcl90Yykgew0KPiAJ
CXUzMiBkaWdfaG90cGx1Z19yZWc7DQo+QEAgLTI4NzcsOCArMjkxOCw3IEBAIHN0YXRpYyB2b2lk
IGdlbjExX2hwZF9pcnFfaGFuZGxlcihzdHJ1Y3QNCj5kcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgdTMyIGlpcikNCj4gCQlJOTE1X1dSSVRFKEdFTjExX1RDX0hPVFBMVUdfQ1RMLCBkaWdfaG90
cGx1Z19yZWcpOw0KPg0KPiAJCWludGVsX2dldF9ocGRfcGlucyhkZXZfcHJpdiwgJnBpbl9tYXNr
LCAmbG9uZ19tYXNrLA0KPnRyaWdnZXJfdGMsDQo+LQkJCQkgICBkaWdfaG90cGx1Z19yZWcsIGhw
ZF9nZW4xMSwNCj4tCQkJCSAgIGdlbjExX3BvcnRfaG90cGx1Z19sb25nX2RldGVjdCk7DQo+KwkJ
CQkgICBkaWdfaG90cGx1Z19yZWcsIGhwZCwgbG9uZ19wdWxzZV9kZXRlY3QpOw0KPiAJfQ0KPg0K
PiAJaWYgKHRyaWdnZXJfdGJ0KSB7DQo+QEAgLTI4ODgsOCArMjkyOCw3IEBAIHN0YXRpYyB2b2lk
IGdlbjExX2hwZF9pcnFfaGFuZGxlcihzdHJ1Y3QNCj5kcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgdTMyIGlpcikNCj4gCQlJOTE1X1dSSVRFKEdFTjExX1RCVF9IT1RQTFVHX0NUTCwgZGlnX2hv
dHBsdWdfcmVnKTsNCj4NCj4gCQlpbnRlbF9nZXRfaHBkX3BpbnMoZGV2X3ByaXYsICZwaW5fbWFz
aywgJmxvbmdfbWFzaywNCj50cmlnZ2VyX3RidCwNCj4tCQkJCSAgIGRpZ19ob3RwbHVnX3JlZywg
aHBkX2dlbjExLA0KPi0JCQkJICAgZ2VuMTFfcG9ydF9ob3RwbHVnX2xvbmdfZGV0ZWN0KTsNCj4r
CQkJCSAgIGRpZ19ob3RwbHVnX3JlZywgaHBkLCBsb25nX3B1bHNlX2RldGVjdCk7DQo+IAl9DQo+
DQo+IAlpZiAocGluX21hc2spDQo+QEAgLTM5MTUsOSArMzk1NCwxMSBAQCBzdGF0aWMgdm9pZCBn
ZW4xMV9ocGRfZGV0ZWN0aW9uX3NldHVwKHN0cnVjdA0KPmRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KSAgc3RhdGljIHZvaWQgZ2VuMTFfaHBkX2lycV9zZXR1cChzdHJ1Y3QNCj5kcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikgIHsNCj4gCXUzMiBob3RwbHVnX2lycXMsIGVuYWJsZWRfaXJxczsN
Cj4rCWNvbnN0IHUzMiAqaHBkOw0KPiAJdTMyIHZhbDsNCj4NCj4tCWVuYWJsZWRfaXJxcyA9IGlu
dGVsX2hwZF9lbmFibGVkX2lycXMoZGV2X3ByaXYsIGhwZF9nZW4xMSk7DQo+KwlocGQgPSBJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDEyID8gaHBkX2dlbjEyIDogaHBkX2dlbjExOw0KPisJZW5hYmxl
ZF9pcnFzID0gaW50ZWxfaHBkX2VuYWJsZWRfaXJxcyhkZXZfcHJpdiwgaHBkKTsNCj4gCWhvdHBs
dWdfaXJxcyA9IEdFTjExX0RFX1RDX0hPVFBMVUdfTUFTSyB8DQo+R0VOMTFfREVfVEJUX0hPVFBM
VUdfTUFTSzsNCj4NCj4gCXZhbCA9IEk5MTVfUkVBRChHRU4xMV9ERV9IUERfSU1SKTsNCj5kaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgNCj5pbmRleCBmYmM1MTQ2YTU5MzEuLmZmNzAzYmFmMTA1ZiAxMDA2
NDQNCj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+KysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPkBAIC03NDcxLDIxICs3NDcxLDI5IEBAIGVudW0g
ew0KPiAjZGVmaW5lIEdFTjExX0RFX0hQRF9JTVIJCV9NTUlPKDB4NDQ0NzQpDQo+ICNkZWZpbmUg
R0VOMTFfREVfSFBEX0lJUgkJX01NSU8oMHg0NDQ3OCkNCj4gI2RlZmluZSBHRU4xMV9ERV9IUERf
SUVSCQlfTU1JTygweDQ0NDdjKQ0KPisjZGVmaW5lICBHRU4xMl9UQzZfSE9UUExVRwkJCSgxIDw8
IDIxKQ0KPisjZGVmaW5lICBHRU4xMl9UQzVfSE9UUExVRwkJCSgxIDw8IDIwKQ0KPiAjZGVmaW5l
ICBHRU4xMV9UQzRfSE9UUExVRwkJCSgxIDw8IDE5KQ0KPiAjZGVmaW5lICBHRU4xMV9UQzNfSE9U
UExVRwkJCSgxIDw8IDE4KQ0KPiAjZGVmaW5lICBHRU4xMV9UQzJfSE9UUExVRwkJCSgxIDw8IDE3
KQ0KPiAjZGVmaW5lICBHRU4xMV9UQzFfSE9UUExVRwkJCSgxIDw8IDE2KQ0KPiAjZGVmaW5lICBH
RU4xMV9UQ19IT1RQTFVHKHRjX3BvcnQpCQkoMSA8PCAoKHRjX3BvcnQpICsgMTYpKQ0KPi0jZGVm
aW5lICBHRU4xMV9ERV9UQ19IT1RQTFVHX01BU0sJCShHRU4xMV9UQzRfSE9UUExVRw0KPnwgXA0K
PisjZGVmaW5lICBHRU4xMV9ERV9UQ19IT1RQTFVHX01BU0sJCShHRU4xMl9UQzZfSE9UUExVRw0K
PnwgXA0KPisJCQkJCQkgR0VOMTJfVEM1X0hPVFBMVUcgfCBcDQo+KwkJCQkJCSBHRU4xMV9UQzRf
SE9UUExVRyB8IFwNCj4gCQkJCQkJIEdFTjExX1RDM19IT1RQTFVHIHwgXA0KPiAJCQkJCQkgR0VO
MTFfVEMyX0hPVFBMVUcgfCBcDQo+IAkJCQkJCSBHRU4xMV9UQzFfSE9UUExVRykNCj4rI2RlZmlu
ZSAgR0VOMTJfVEJUNl9IT1RQTFVHCQkJKDEgPDwgNSkNCj4rI2RlZmluZSAgR0VOMTJfVEJUNV9I
T1RQTFVHCQkJKDEgPDwgNCkNCj4gI2RlZmluZSAgR0VOMTFfVEJUNF9IT1RQTFVHCQkJKDEgPDwg
MykNCj4gI2RlZmluZSAgR0VOMTFfVEJUM19IT1RQTFVHCQkJKDEgPDwgMikNCj4gI2RlZmluZSAg
R0VOMTFfVEJUMl9IT1RQTFVHCQkJKDEgPDwgMSkNCj4gI2RlZmluZSAgR0VOMTFfVEJUMV9IT1RQ
TFVHCQkJKDEgPDwgMCkNCj4gI2RlZmluZSAgR0VOMTFfVEJUX0hPVFBMVUcodGNfcG9ydCkJCSgx
IDw8ICh0Y19wb3J0KSkNCj4tI2RlZmluZSAgR0VOMTFfREVfVEJUX0hPVFBMVUdfTUFTSw0KPgko
R0VOMTFfVEJUNF9IT1RQTFVHIHwgXA0KPisjZGVmaW5lICBHRU4xMV9ERV9UQlRfSE9UUExVR19N
QVNLDQo+CShHRU4xMl9UQlQ2X0hPVFBMVUcgfCBcDQo+KwkJCQkJCSBHRU4xMl9UQlQ1X0hPVFBM
VUcgfCBcDQo+KwkJCQkJCSBHRU4xMV9UQlQ0X0hPVFBMVUcgfCBcDQo+IAkJCQkJCSBHRU4xMV9U
QlQzX0hPVFBMVUcgfCBcDQo+IAkJCQkJCSBHRU4xMV9UQlQyX0hPVFBMVUcgfCBcDQo+IAkJCQkJ
CSBHRU4xMV9UQlQxX0hPVFBMVUcpDQo+LS0NCj4yLjIxLjANCj4NCj5fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QN
Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+aHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
