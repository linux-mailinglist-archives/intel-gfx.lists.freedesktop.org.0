Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 518B1EBB6C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 01:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88C316E0E2;
	Fri,  1 Nov 2019 00:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03D36E0E2
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 00:26:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 17:26:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,253,1569308400"; d="scan'208";a="402065386"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga006.fm.intel.com with ESMTP; 31 Oct 2019 17:26:12 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 31 Oct 2019 17:26:11 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.194]) with mapi id 14.03.0439.000;
 Thu, 31 Oct 2019 17:26:11 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 2/5] drm/i915: add wrappers to get intel connector state
Thread-Index: AQHVjsDnMCPWCTXpNkmNAKcpC5g3O6d17cIA
Date: Fri, 1 Nov 2019 00:26:11 +0000
Message-ID: <de5cf843eaff41e18b6c4e655ae3a77034dbcf6d.camel@intel.com>
References: <20191030012448.14937-1-lucas.demarchi@intel.com>
 <20191030012448.14937-3-lucas.demarchi@intel.com>
In-Reply-To: <20191030012448.14937-3-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <92C35E94A1B0FD47AE51D6B541C70B83@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: add wrappers to get intel
 connector state
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

T24gVHVlLCAyMDE5LTEwLTI5IGF0IDE4OjI0IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IFdyYXAgZHJtX2F0b21pY19nZXRfb2xkX2Nvbm5lY3Rvcl9zdGF0ZSBzbyB3ZSBjYW4gZ2V0
IHRoZQ0KPiBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSBhbmQgbWFrZSBpdCBlYXNpZXIg
dG8gbWlncmF0ZSB0byBpbnRlbA0KPiB0eXBlcy4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICAu
Li4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgMTgNCj4gKysr
KysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmgNCj4gaW5kZXggNDAxODRlODIzYzg0Li5hNTUwYWJiNDhiM2MgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
DQo+IEBAIC0xNTI3LDYgKzE1MjcsMjQgQEAgaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0
ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCQkJCQkJICZjcnRj
LQ0KPiA+YmFzZSkpOw0KPiAgfQ0KPiAgDQo+ICtzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9k
aWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSAqDQo+ICtpbnRlbF9hdG9taWNfZ2V0X25ld19jb25uZWN0
b3Jfc3RhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICsJCQkJICAg
ICBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ICt7DQo+ICsJcmV0dXJuIHRv
X2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKA0KPiArCQkJZHJtX2F0b21pY19nZXRfbmV3
X2Nvbm5lY3Rvcl9zdGF0ZSgmc3RhdGUtDQo+ID5iYXNlLA0KPiArCQkJJmNvbm5lY3Rvci0+YmFz
ZSkpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nv
bm5lY3Rvcl9zdGF0ZSAqDQo+ICtpbnRlbF9hdG9taWNfZ2V0X29sZF9jb25uZWN0b3Jfc3RhdGUo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUsDQo+ICsJCQkJICAgICBzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpDQo+ICt7DQo+ICsJcmV0dXJuIHRvX2ludGVsX2Rp
Z2l0YWxfY29ubmVjdG9yX3N0YXRlKA0KPiArCQkJZHJtX2F0b21pY19nZXRfb2xkX2Nvbm5lY3Rv
cl9zdGF0ZSgmc3RhdGUtDQo+ID5iYXNlLA0KPiArCQkJJmNvbm5lY3Rvci0+YmFzZSkpOw0KPiAr
fQ0KPiArDQo+ICAvKiBpbnRlbF9kaXNwbGF5LmMgKi8NCj4gIHN0YXRpYyBpbmxpbmUgYm9vbA0K
PiAgaW50ZWxfY3J0Y19oYXNfdHlwZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
