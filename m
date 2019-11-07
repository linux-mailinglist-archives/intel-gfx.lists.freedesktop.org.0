Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7210BF3A44
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 22:16:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A9526E52C;
	Thu,  7 Nov 2019 21:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A96996E52C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 21:16:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 13:16:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="214724503"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga002.jf.intel.com with ESMTP; 07 Nov 2019 13:16:04 -0800
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 fmsmsx104.amr.corp.intel.com ([169.254.3.133]) with mapi id 14.03.0439.000;
 Thu, 7 Nov 2019 13:16:04 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Split a setting of MSA to MST
 and SST
Thread-Index: AQHVlOjoa2CF6712NUOc/kN6OOIjgaeAvWmA
Date: Thu, 7 Nov 2019 21:16:03 +0000
Message-ID: <68185bc5724ff087943287a2a66540b421d9c2a7.camel@intel.com>
References: <20191106212636.502471-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20191106212636.502471-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <B4D38CC8B377124EB637A77AC15B643B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Split a setting of MSA to MST and
 SST
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

T24gV2VkLCAyMDE5LTExLTA2IGF0IDIzOjI2ICswMjAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IFRoZSBzZXR0aW5nIG9mIE1TQSBpcyBkb25lIGJ5IHRoZSBEREkgLnByZV9lbmFibGUoKSBo
b29rLiBBbmQgd2hlbiB3ZQ0KPiBhcmUNCj4gdXNpbmcgTVNULCB0aGUgTVNBIGlzIG9ubHkgc2V0
IHRvIGZpcnN0IG1zdCBzdHJlYW0gYnkgY2FsbGluZyBvZg0KPiBEREkgLnByZV9lYW5ibGUoKSBo
b29rLiBJdCByYWllcyBpc3N1ZXMgdG8gbm9uLWZpcnN0IG1zdCBzdHJlYW1zLg0KPiBXcm9uZyBN
U0Egb3IgbWlzc2VkIE1TQSBwYWNrZXRzIG1pZ2h0IHNob3cgc2NyYW1ibGVkIHNjcmVlbiBvciB3
cm9uZw0KPiBzY3JlZW4uDQo+IA0KPiBUaGlzIHNwbGl0cyBhIHNldHRpbmcgb2YgTVNBIHRvIE1T
VCBhbmQgU1NUIGNhc2VzLiBBbmQgSW4gdGhlIE1TVA0KPiBjYXNlIGl0DQo+IHdpbGwgY2FsbCBh
IHNldHRpbmcgb2YgTVNBIGFmdGVyIGFuIGFsbG9jYXRpbmcgb2YgVmlydHVhbCBDaGFubmVsDQo+
IGZyb20NCj4gTVNUIGVuY29kZXIgcHJlX2VuYWJsZSBjYWxsYmFjay4NCg0KUmV2aWV3ZWQtYnk6
IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6
IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiBC
dWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEy
MjEyDQo+IEZpeGVzOiAwYzA2ZmExNTYwMDYgKCJkcm0vaTkxNS9kcDogQWRkIHN1cHBvcnQgb2Yg
QlQuMjAyMCBDb2xvcmltZXRyeQ0KPiB0byBEUCBNU0EiKQ0KPiBGaXhlczogZDRhNDE1ZGNkYTM1
ICgiZHJtL2k5MTU6IEZpeCBNU1Qgb29wcyBkdWUgdG8gTVNBIGNoYW5nZXMiKQ0KPiBTaWduZWQt
b2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICB8IDEwICsr
KysrKy0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMg
fCAgMyArKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
IGluZGV4IGM5MTUyMWJjZjA2YS4uZWY0MWZhMGY3N2YwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTE3OTQsMTAgKzE3OTQsOCBAQCB2b2lk
IGludGVsX2RkaV9zZXRfZHBfbXNhKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLA0KPiAgCSAqIG9mIENvbG9yIEVuY29kaW5nIEZvcm1hdCBhbmQgQ29udGVudCBD
b2xvciBHYW11dF0gd2hpbGUNCj4gc2VuZGluZw0KPiAgCSAqIFlDQkNSIDQyMCwgSERSIEJULjIw
MjAgc2lnbmFscyB3ZSBzaG91bGQgcHJvZ3JhbSBNU0EgTUlTQzENCj4gZmllbGRzDQo+ICAJICog
d2hpY2ggaW5kaWNhdGUgVlNDIFNEUCBmb3IgdGhlIFBpeGVsIEVuY29kaW5nL0NvbG9yaW1ldHJ5
DQo+IEZvcm1hdC4NCj4gLQkgKg0KPiAtCSAqIEZJWE1FIE1TVCBkb2Vzbid0IHBhc3MgaW4gdGhl
IGNvbm5fc3RhdGUNCj4gIAkgKi8NCj4gLQlpZiAoY29ubl9zdGF0ZSAmJiBpbnRlbF9kcF9uZWVk
c192c2Nfc2RwKGNydGNfc3RhdGUsDQo+IGNvbm5fc3RhdGUpKQ0KPiArCWlmIChpbnRlbF9kcF9u
ZWVkc192c2Nfc2RwKGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpKQ0KPiAgCQl0ZW1wIHw9IERQX01T
QV9NSVNDX0NPTE9SX1ZTQ19TRFA7DQo+ICANCj4gIAlJOTE1X1dSSVRFKFRSQU5TX01TQV9NSVND
KGNwdV90cmFuc2NvZGVyKSwgdGVtcCk7DQo+IEBAIC0zNjA2LDcgKzM2MDQsMTEgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsDQo+ICAJZWxzZQ0KPiAgCQloc3dfZGRpX3ByZV9lbmFibGVfZHAoZW5jb2RlciwgY3J0
Y19zdGF0ZSwgY29ubl9zdGF0ZSk7DQo+ICANCj4gLQlpbnRlbF9kZGlfc2V0X2RwX21zYShjcnRj
X3N0YXRlLCBjb25uX3N0YXRlKTsNCj4gKwkvKiBNU1Qgd2lsbCBjYWxsIGEgc2V0dGluZyBvZiBN
U0EgYWZ0ZXIgYW4gYWxsb2NhdGluZyBvZg0KPiBWaXJ0dWFsIENoYW5uZWwNCj4gKwkgKiBmcm9t
IE1TVCBlbmNvZGVyIHByZV9lbmFibGUgY2FsbGJhY2suDQo+ICsJICovDQo+ICsJaWYgKCFpbnRl
bF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKQ0KPiArCQlp
bnRlbF9kZGlfc2V0X2RwX21zYShjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsNCj4gIH0NCj4gIA0K
PiAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFibGVfaGRtaShzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX21zdC5jDQo+IGluZGV4IDVlMjY3YzViNGMyMC4uY2I3N2Y4MDcyODIwIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gQEAgLTM0NSw2
ICszNDUsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9tc3RfcHJlX2VuYWJsZV9kcChzdHJ1Y3QNCj4g
aW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAkgKi8NCj4gIAlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA8IDEyIHx8ICFmaXJzdF9tc3Rfc3RyZWFtKQ0KPiAgCQlpbnRlbF9kZGlfZW5hYmxlX3Bp
cGVfY2xvY2socGlwZV9jb25maWcpOw0KPiArDQo+ICsJaW50ZWxfZGRpX3NldF9kcF9tc2EocGlw
ZV9jb25maWcsIGNvbm5fc3RhdGUpOw0KPiArDQo+ICB9DQo+ICANCj4gIHN0YXRpYyB2b2lkIGlu
dGVsX21zdF9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
