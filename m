Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DF044051D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 23:53:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E6106EA85;
	Fri, 29 Oct 2021 21:53:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41856EA85
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 21:53:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="211530306"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="211530306"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 14:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="499080863"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 29 Oct 2021 14:53:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 14:53:08 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 14:53:08 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 14:53:08 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 07/16] drm/i915: Stop using group access when
 progrmming icl combo phy TX
Thread-Index: AQHXuvPE/wGfH1zVnkypla1BlYmefavrH/IA
Date: Fri, 29 Oct 2021 21:53:07 +0000
Message-ID: <e535dea541d1b435ad578e179d32c0db1c3620c0.camel@intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006204937.30774-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <A40B55966235B24BA00C601C00D42FEE@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/16] drm/i915: Stop using group access
 when progrmming icl combo phy TX
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

T24gV2VkLCAyMDIxLTEwLTA2IGF0IDIzOjQ5ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUHJvZ3JhbSBlYWNoIFRYIGxhbmUgaW5kaXZpZHVhbGx5IHNvIHRoYXQgd2UgY2FuIHN0
YXJ0IHRvIHVzZSBwZXItbGFuZQ0KPiBkcml2ZSBzZXR0aW5ncy4NCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDI4ICsrKysr
KysrKysrKysrLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyks
IDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jDQo+IGluZGV4IGQwNmM3NjY5NGEwOC4uYWE3ODljYWJjNTViIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTEwNjgsMTQgKzEwNjgs
MTYgQEAgc3RhdGljIHZvaWQgaWNsX2RkaV9jb21ib192c3dpbmdfcHJvZ3JhbShzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgSUNMX1BP
UlRfVFhfRFc1X0dSUChwaHkpLCB2YWwpOw0KPiAgDQo+ICAJLyogUHJvZ3JhbSBQT1JUX1RYX0RX
MiAqLw0KPiAtCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIElDTF9QT1JUX1RYX0RXMl9M
TigwLCBwaHkpKTsNCj4gLQl2YWwgJj0gfihTV0lOR19TRUxfTE9XRVJfTUFTSyB8IFNXSU5HX1NF
TF9VUFBFUl9NQVNLIHwNCj4gLQkJIFJDT01QX1NDQUxBUl9NQVNLKTsNCj4gLQl2YWwgfD0gU1dJ
TkdfU0VMX1VQUEVSKHRyYW5zLT5lbnRyaWVzW2xldmVsXS5pY2wuZHcyX3N3aW5nX3NlbCk7DQo+
IC0JdmFsIHw9IFNXSU5HX1NFTF9MT1dFUih0cmFucy0+ZW50cmllc1tsZXZlbF0uaWNsLmR3Ml9z
d2luZ19zZWwpOw0KPiAtCS8qIFByb2dyYW0gUmNvbXAgc2NhbGFyIGZvciBldmVyeSB0YWJsZSBl
bnRyeSAqLw0KPiAtCXZhbCB8PSBSQ09NUF9TQ0FMQVIoMHg5OCk7DQo+IC0JaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIElDTF9QT1JUX1RYX0RXMl9HUlAocGh5KSwgdmFsKTsNCj4gKwlmb3IgKGxu
ID0gMDsgbG4gPCA0OyBsbisrKSB7DQo+ICsJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IElDTF9QT1JUX1RYX0RXMl9MTihsbiwgcGh5KSk7DQo+ICsJCXZhbCAmPSB+KFNXSU5HX1NFTF9M
T1dFUl9NQVNLIHwgU1dJTkdfU0VMX1VQUEVSX01BU0sgfA0KPiArCQkJIFJDT01QX1NDQUxBUl9N
QVNLKTsNCj4gKwkJdmFsIHw9IFNXSU5HX1NFTF9VUFBFUih0cmFucy0+ZW50cmllc1tsZXZlbF0u
aWNsLmR3Ml9zd2luZ19zZWwpOw0KPiArCQl2YWwgfD0gU1dJTkdfU0VMX0xPV0VSKHRyYW5zLT5l
bnRyaWVzW2xldmVsXS5pY2wuZHcyX3N3aW5nX3NlbCk7DQo+ICsJCS8qIFByb2dyYW0gUmNvbXAg
c2NhbGFyIGZvciBldmVyeSB0YWJsZSBlbnRyeSAqLw0KPiArCQl2YWwgfD0gUkNPTVBfU0NBTEFS
KDB4OTgpOw0KPiArCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgSUNMX1BPUlRfVFhfRFcyX0xO
KGxuLCBwaHkpLCB2YWwpOw0KPiArCX0NCj4gIA0KPiAgCS8qIFByb2dyYW0gUE9SVF9UWF9EVzQg
Ki8NCj4gIAkvKiBXZSBjYW5ub3Qgd3JpdGUgdG8gR1JQLiBJdCB3b3VsZCBvdmVyd3JpdGUgaW5k
aXZpZHVhbCBsb2FkZ2VuLiAqLw0KPiBAQCAtMTA5MCwxMCArMTA5MiwxMiBAQCBzdGF0aWMgdm9p
ZCBpY2xfZGRpX2NvbWJvX3Zzd2luZ19wcm9ncmFtKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLA0KPiAgCX0NCj4gIA0KPiAgCS8qIFByb2dyYW0gUE9SVF9UWF9EVzcgKi8NCj4gLQl2YWwg
PSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBJQ0xfUE9SVF9UWF9EVzdfTE4oMCwgcGh5KSk7DQo+
IC0JdmFsICY9IH5OX1NDQUxBUl9NQVNLOw0KPiAtCXZhbCB8PSBOX1NDQUxBUih0cmFucy0+ZW50
cmllc1tsZXZlbF0uaWNsLmR3N19uX3NjYWxhcik7DQo+IC0JaW50ZWxfZGVfd3JpdGUoZGV2X3By
aXYsIElDTF9QT1JUX1RYX0RXN19HUlAocGh5KSwgdmFsKTsNCj4gKwlmb3IgKGxuID0gMDsgbG4g
PCA0OyBsbisrKSB7DQo+ICsJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIElDTF9QT1JU
X1RYX0RXN19MTihsbiwgcGh5KSk7DQo+ICsJCXZhbCAmPSB+Tl9TQ0FMQVJfTUFTSzsNCj4gKwkJ
dmFsIHw9IE5fU0NBTEFSKHRyYW5zLT5lbnRyaWVzW2xldmVsXS5pY2wuZHc3X25fc2NhbGFyKTsN
Cj4gKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIElDTF9QT1JUX1RYX0RXN19MTihsbiwgcGh5
KSwgdmFsKTsNCj4gKwl9DQo+ICB9DQoNCk1pc3NpbmcgRFNJIGNvbnZlcnNpb24gYnV0IGZyb20g
d2hhdCBJIHVuZGVyc3Rvb2QgdGhpcyBjb252ZXJzaW9uIGZyb20gZ3JvdXAgdG8gbGFuZSBpcyB0
byBzdXBwb3J0IERQIDIuMCBzbyB3ZSBjYW4ga2VlcCB0aGUgZ3JvdXAgd3JpdGUgZm9yIERTSS4N
Cg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KDQo+ICANCj4gIHN0YXRpYyB2b2lkIGljbF9jb21ib19waHlfc2V0X3NpZ25hbF9sZXZl
bHMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQoNCg==
