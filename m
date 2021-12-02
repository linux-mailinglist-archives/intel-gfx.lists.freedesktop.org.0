Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 705224664B0
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 14:46:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF2B6FBBF;
	Thu,  2 Dec 2021 13:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC936FBBF
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 13:46:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223942669"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="223942669"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 05:46:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="748112880"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 02 Dec 2021 05:46:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 05:46:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 05:46:30 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Thu, 2 Dec 2021 05:46:30 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v3 2/3] drm/i915/rpl-s: Add PCH Support for Raptor
 Lake S
Thread-Index: AQHX5p8b8wewBBLqjE+HTgVKLV1/VKwfvx4A
Date: Thu, 2 Dec 2021 13:46:30 +0000
Message-ID: <b564ad29dac10bbf0c482ba35e4c43976946c150.camel@intel.com>
References: <20211201103320.2211867-1-anusha.srivatsa@intel.com>
 <20211201103320.2211867-3-anusha.srivatsa@intel.com>
In-Reply-To: <20211201103320.2211867-3-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C007ED59244B3841921DB06B39900BB1@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3 2/3] drm/i915/rpl-s: Add PCH Support for Raptor
 Lake S
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTEyLTAxIGF0IDAyOjMzIC0wODAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
DQo+IEFkZCB0aGUgUENIIElEIGZvciBSUEwtUy4NCj4gDQo+IHYyOiBTZWxmIGNvbnRhaW5lZCBj
b21taXQgbWVzc2FnZSAoSmFuaSkNCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFN3YXRoaSBEaGFuYXZhbnRocmkgPHN3YXRo
aS5kaGFuYXZhbnRocmlAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0
c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcGNoLmMgfCAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bj
aC5oIHwgMSArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcGNoLmMNCj4gaW5kZXggZDFkNGI5N2I4NmY1Li5kYThmODJjMjM0MmYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jDQo+IEBAIC0xMjksNiArMTI5LDcgQEAg
aW50ZWxfcGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1
bnNpZ25lZCBzaG9ydCBpZCkNCj4gIAkJcmV0dXJuIFBDSF9KU1A7DQo+ICAJY2FzZSBJTlRFTF9Q
Q0hfQURQX0RFVklDRV9JRF9UWVBFOg0KPiAgCWNhc2UgSU5URUxfUENIX0FEUDJfREVWSUNFX0lE
X1RZUEU6DQo+ICsJY2FzZSBJTlRFTF9QQ0hfQURQM19ERVZJQ0VfSURfVFlQRToNCj4gIAkJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJGb3VuZCBBbGRlciBMYWtlIFBDSFxuIik7DQo+ICAJ
CWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpICYm
DQo+ICAJCQkgICAgIUlTX0FMREVSTEFLRV9QKGRldl9wcml2KSk7DQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BjaC5oDQo+IGluZGV4IDdjMGQ4M2QyOTJkYy4uNmJmZjc3NTIxMDk0IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wY2guaA0KPiBAQCAtNTcsNiArNTcsNyBAQCBlbnVtIGludGVsX3Bj
aCB7DQo+ICAjZGVmaW5lIElOVEVMX1BDSF9KU1AyX0RFVklDRV9JRF9UWVBFCQkweDM4ODANCj4g
ICNkZWZpbmUgSU5URUxfUENIX0FEUF9ERVZJQ0VfSURfVFlQRQkJMHg3QTgwDQo+ICAjZGVmaW5l
IElOVEVMX1BDSF9BRFAyX0RFVklDRV9JRF9UWVBFCQkweDUxODANCj4gKyNkZWZpbmUgSU5URUxf
UENIX0FEUDNfREVWSUNFX0lEX1RZUEUJCTB4N0EwMA0KPiAgI2RlZmluZSBJTlRFTF9QQ0hfUDJY
X0RFVklDRV9JRF9UWVBFCQkweDcxMDANCj4gICNkZWZpbmUgSU5URUxfUENIX1AzWF9ERVZJQ0Vf
SURfVFlQRQkJMHg3MDAwDQo+ICAjZGVmaW5lIElOVEVMX1BDSF9RRU1VX0RFVklDRV9JRF9UWVBF
CQkweDI5MDAgLyogcWVtdSBxMzUgaGFzIDI5MTggKi8NCg0K
