Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D17B510A60A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254CD6E492;
	Tue, 26 Nov 2019 21:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE4D6E492
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 21:34:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 13:34:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="206702979"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga007.fm.intel.com with ESMTP; 26 Nov 2019 13:34:04 -0800
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 Nov 2019 13:34:03 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx162.amr.corp.intel.com ([169.254.5.105]) with mapi id 14.03.0439.000;
 Tue, 26 Nov 2019 13:34:03 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/3] drm/i915/ehl: Make icp_digital_port_connected()
 use phy instead of port
Thread-Index: AQHVpJ2M8ybGdeRLw02GmbEfK7DLHKeef1EA
Date: Tue, 26 Nov 2019 21:34:03 +0000
Message-ID: <088e9297f47a9e5000f0a7931c86470fe5316e88.camel@intel.com>
References: <20191126210732.407496-1-matthew.d.roper@intel.com>
 <20191126210732.407496-2-matthew.d.roper@intel.com>
In-Reply-To: <20191126210732.407496-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <7418ABA86FF92743907AF11E35E979AE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/ehl: Make
 icp_digital_port_connected() use phy instead of port
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTExLTI2IGF0IDEzOjA3IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBX
aGVuIGxvb2tpbmcgYXQgU0RFSVNSIHRvIGRldGVybWluZSB0aGUgY29ubmVjdGlvbiBzdGF0dXMg
b2YgY29tYm8NCj4gb3V0cHV0cywgd2Ugc2hvdWxkIHVzZSB0aGUgcGh5IGluZGV4IHJhdGhlciB0
aGFuIHRoZSBwb3J0IGluZGV4Lg0KPiBBbHRob3VnaCB0aGV5J3JlIHVzdWFsbHkgdGhlIHNhbWUg
dGhpbmcsIEVITCdzIERESS1EIChwb3J0IEQpIGlzDQo+IGF0dGFjaGVkIHRvIFBIWS1BIGFuZCBT
REVJU1IgZG9lc24ndCBldmVuIGhhdmUgYml0cyBmb3IgYSAiRCIgb3V0cHV0Lg0KPiBJdCdzIGFs
c28gcG9zc2libGUgdGhhdCBmdXR1cmUgcGxhdGZvcm1zIG1heSBtYXAgRERJcyAodGhlIGludGVy
bmFsDQo+IGRpc3BsYXkgZW5naW5lIHByb2dyYW1taW5nIHVuaXRzKSB0byBQSFlzICh0aGUgb3V0
cHV0IGhhbmRsaW5nIG9uIHRoZQ0KPiBJTw0KPiBzaWRlKSBpbiB3YXlzIHdoZXJlIHBvcnQhPXBo
eSwgc28gbGV0J3MgbG9vayBhdCB0aGUgUEhZIGluZGV4IGJ5DQo+IGRlZmF1bHQuDQoNClJldmll
d2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0K
PiANCj4gRml4ZXM6IDcxOWQyNDAwMjYwMiAoImRybS9pOTE1L2VobDogRW5hYmxlIERESS1EIikN
Cj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBD
YzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFNpZ25lZC1v
ZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTAgKysrKy0tLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggZGRmNWJh
ZDFiOTY5Li41OWM1ZmQ3YmYyN2QgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gQEAgLTU0NzcsMTQgKzU0NzcsMTIgQEAgc3RhdGljIGJvb2wgYnh0X2Rp
Z2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+
ICB9DQo+ICANCj4gIHN0YXRpYyBib29sIGljbF9jb21ib19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsDQo+IC0JCQkJICAgICBzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0DQo+ICppbnRlbF9kaWdfcG9ydCkNCj4gKwkJCQkgICAgIGVudW0gcGh5IHBo
eSkNCj4gIHsNCj4gLQllbnVtIHBvcnQgcG9ydCA9IGludGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7
DQo+IC0NCj4gLQlpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpICYmIHBvcnQgPT0gUE9SVF9DKQ0K
PiArCWlmIChIQVNfUENIX01DQyhkZXZfcHJpdikgJiYgcGh5ID09IFBIWV9DKQ0KPiAgCQlyZXR1
cm4gSTkxNV9SRUFEKFNERUlTUikgJg0KPiBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpOw0K
PiAgDQo+IC0JcmV0dXJuIEk5MTVfUkVBRChTREVJU1IpICYgU0RFX0RESV9IT1RQTFVHX0lDUChw
b3J0KTsNCj4gKwlyZXR1cm4gSTkxNV9SRUFEKFNERUlTUikgJiBTREVfRERJX0hPVFBMVUdfSUNQ
KHBoeSk7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyBib29sIGljcF9kaWdpdGFsX3BvcnRfY29ubmVj
dGVkKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyKQ0KPiBAQCAtNTQ5NCw3ICs1NDky
LDcgQEAgc3RhdGljIGJvb2wgaWNwX2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0DQo+IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ICAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19w
aHkoZGV2X3ByaXYsIGVuY29kZXItPnBvcnQpOw0KPiAgDQo+ICAJaWYgKGludGVsX3BoeV9pc19j
b21ibyhkZXZfcHJpdiwgcGh5KSkNCj4gLQkJcmV0dXJuIGljbF9jb21ib19wb3J0X2Nvbm5lY3Rl
ZChkZXZfcHJpdiwgZGlnX3BvcnQpOw0KPiArCQlyZXR1cm4gaWNsX2NvbWJvX3BvcnRfY29ubmVj
dGVkKGRldl9wcml2LCBwaHkpOw0KPiAgCWVsc2UgaWYgKGludGVsX3BoeV9pc190YyhkZXZfcHJp
diwgcGh5KSkNCj4gIAkJcmV0dXJuIGludGVsX3RjX3BvcnRfY29ubmVjdGVkKGRpZ19wb3J0KTsN
Cj4gIAllbHNlDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
