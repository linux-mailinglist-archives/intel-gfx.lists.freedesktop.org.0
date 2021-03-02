Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C381F32A9F0
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 20:03:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4234689DC7;
	Tue,  2 Mar 2021 19:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03BE89DC7
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 19:03:03 +0000 (UTC)
IronPort-SDR: RUGrWB9NVmio268YWsugrrxS7hCA+gML2lKZOXIng68q0v/J4Kg68+6w2FlixtIW0c8Bn8FGBz
 fBk5V3ft8roQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="187008728"
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="187008728"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 11:02:31 -0800
IronPort-SDR: 7H+1Fyqcr34sKnutBPcw2HHiuwOazLkfrVrncek56t6Do8czwdZqzUja8rmnJK3IQxNiFAJjpO
 fJ0FIcyX+uDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,217,1610438400"; d="scan'208";a="406862287"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 02 Mar 2021 11:02:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Mar 2021 11:02:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 2 Mar 2021 11:02:31 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Tue, 2 Mar 2021 11:02:31 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Readout conn_state->max_bpc
Thread-Index: AQHXBHzxOWSaJiEwIkWDwabWkqeJEKpxqtmA
Date: Tue, 2 Mar 2021 19:02:31 +0000
Message-ID: <7d698e8e544db29aac15993d90a7d59a6f2f0fb1.camel@intel.com>
References: <20210216160035.4780-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210216160035.4780-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <2B39B1C911708749AC56277A54F5A143@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Readout conn_state->max_bpc
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
Cc: "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTAyLTE2IGF0IDE4OjAwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUG9wdWxhdGUgY29ubl9zdGF0ZS0+bWF4X2JwYyB3aXRoIHNvbWV0aGluZyBzZW5zaWJs
ZSBmcm9tIHRoZSBzdGFydC4NCj4gT3RoZXJ3aXNlIGl0J3MgcG9zc2libGUgdGhhdCB3ZSBnZXQg
dG8gY29tcHV0ZV9zaW5rX3BpcGVfYnBwKCkgd2l0aA0KPiBtYXhfYnBjPT0wLg0KPiANCj4gVGhl
IHNwZWNpZmljIHNjZW5hcmlvIGdvZXMgYXMgZm9sbG93czoNCj4gMS4gSW5pdGlhbCBjb25uZWN0
b3Igc3RhdGUgYWxsb2NhdGVkIHdpdGggbWF4X2JwYz09MA0KPiAyLiBUcmlnZ2VyIGEgbW9kZXNl
dCBvbiB0aGUgY3J0YyBmZWVkaW5nIHRoZSBjb25uZWN0b3IsIHdpdGhvdXQNCj4gwqDCoMKgYWN0
dWFsbHkgYWRkaW5nIHRoZSBjb25uZWN0b3IgdG8gdGhlIGNvbW1pdA0KPiAzLiBkcm1fYXRvbWlj
X2Nvbm5lY3Rvcl9jaGVjaygpIGlzIHNraXBwZWQgYmVjYXVzZSB0aGUNCj4gwqDCoMKgY29ubmVj
dG9yIGhhcyBub3QgeWV0IGJlZW4gYWRkZWQsIGhlbmNlIGNvbm5fc3RhdGUtPm1heF9icGMNCj4g
wqDCoMKgcmV0YWlucyBpdHMgY3VycmVudCB2YWx1ZQ0KPiA0LiBkcm1fYXRvbWljX2hlbHBlcl9j
aGVja19tb2Rlc2V0KCkgLT4NCj4gwqDCoMKgZHJtX2F0b21pY19hZGRfYWZmZWN0ZWRfY29ubmVj
dG9ycygpIC0+IHRoZSBjb25uZWN0b3INCj4gwqDCoMKgaXMgbm93IHBhcnQgb2YgdGhlIGNvbW1p
dA0KPiA1LiBjb21wdXRlX2Jhc2VsaW5lX3BpcGVfYnBwKCkgLT4gTUlTU0lOR19DQVNFKG1heF9i
cGM9PTApDQo+IA0KPiBOb3RlIHRoYXQgcGlwZV9icHAgaXRzZWxmIG1heSBub3QgYmUgcG9wdWxh
dGVkIG9uIHByZS1nNHggbWFjaGluZXMsDQo+IGluIHdoaWNoIGNhc2Ugd2UganVzdCBmYWxsIGJh
Y2sgdG8gbWF4X2JwYz09OCBhbmQgbGV0IC5jb21wdXRlX2NvbmZpZygpDQo+IGxpbWl0IHRoZSBy
ZXN1bHRpbmcgcGlwZV9icHAgZnVydGhlciBpZiBuZWNlc3NhcnkuDQoNClJldmlld2VkLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4NCj4gUmVwb3J0ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDI0ICsrKysrKysrKysr
KystLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBpbmRleCAwZGM1Y2IzNjY2N2EuLjRkNjNlNjhhNWVhMiAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTc5ODcsMTkg
Kzc5ODcsMjcgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF91cGRhdGVfY29ubmVjdG9yX2F0
b21pY19zdGF0ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQ0KPiDCoA0KPiANCj4gDQo+IA0KPiDC
oAlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9iZWdpbihkZXYsICZjb25uX2l0ZXIpOw0KPiDCoAlm
b3JfZWFjaF9pbnRlbF9jb25uZWN0b3JfaXRlcihjb25uZWN0b3IsICZjb25uX2l0ZXIpIHsNCj4g
LQkJaWYgKGNvbm5lY3Rvci0+YmFzZS5zdGF0ZS0+Y3J0YykNCj4gKwkJc3RydWN0IGRybV9jb25u
ZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUgPSBjb25uZWN0b3ItPmJhc2Uuc3RhdGU7DQo+ICsJCXN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0NCj4gKwkJCXRvX2ludGVsX2VuY29kZXIoY29u
bmVjdG9yLT5iYXNlLmVuY29kZXIpOw0KPiArDQo+ICsJCWlmIChjb25uX3N0YXRlLT5jcnRjKQ0K
PiDCoAkJCWRybV9jb25uZWN0b3JfcHV0KCZjb25uZWN0b3ItPmJhc2UpOw0KPiDCoA0KPiANCj4g
DQo+IA0KPiAtCQlpZiAoY29ubmVjdG9yLT5iYXNlLmVuY29kZXIpIHsNCj4gLQkJCWNvbm5lY3Rv
ci0+YmFzZS5zdGF0ZS0+YmVzdF9lbmNvZGVyID0NCj4gLQkJCQljb25uZWN0b3ItPmJhc2UuZW5j
b2RlcjsNCj4gLQkJCWNvbm5lY3Rvci0+YmFzZS5zdGF0ZS0+Y3J0YyA9DQo+IC0JCQkJY29ubmVj
dG9yLT5iYXNlLmVuY29kZXItPmNydGM7DQo+ICsJCWlmIChlbmNvZGVyKSB7DQo+ICsJCQlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YyA9DQo+ICsJCQkJdG9faW50ZWxfY3J0YyhlbmNvZGVyLT5iYXNl
LmNydGMpOw0KPiArCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUg
PQ0KPiArCQkJCXRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7DQo+ICsNCj4g
KwkJCWNvbm5fc3RhdGUtPmJlc3RfZW5jb2RlciA9ICZlbmNvZGVyLT5iYXNlOw0KPiArCQkJY29u
bl9zdGF0ZS0+Y3J0YyA9ICZjcnRjLT5iYXNlOw0KPiArCQkJY29ubl9zdGF0ZS0+bWF4X2JwYyA9
IChjcnRjX3N0YXRlLT5waXBlX2JwcCA/OiAyNCkgLyAzOw0KPiDCoA0KPiANCj4gDQo+IA0KPiDC
oAkJCWRybV9jb25uZWN0b3JfZ2V0KCZjb25uZWN0b3ItPmJhc2UpOw0KPiDCoAkJfSBlbHNlIHsN
Cj4gLQkJCWNvbm5lY3Rvci0+YmFzZS5zdGF0ZS0+YmVzdF9lbmNvZGVyID0gTlVMTDsNCj4gLQkJ
CWNvbm5lY3Rvci0+YmFzZS5zdGF0ZS0+Y3J0YyA9IE5VTEw7DQo+ICsJCQljb25uX3N0YXRlLT5i
ZXN0X2VuY29kZXIgPSBOVUxMOw0KPiArCQkJY29ubl9zdGF0ZS0+Y3J0YyA9IE5VTEw7DQo+IMKg
CQl9DQo+IMKgCX0NCj4gwqAJZHJtX2Nvbm5lY3Rvcl9saXN0X2l0ZXJfZW5kKCZjb25uX2l0ZXIp
Ow0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
