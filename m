Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 732DD4E2E9F
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 17:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FD010E3DC;
	Mon, 21 Mar 2022 16:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 144D710E3DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 16:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647881941; x=1679417941;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=b8FIiIY1lDB+19qjFiIcy1YTQ3JEWpwen5NhyI7VA48=;
 b=PBKEhrwMywkgjeIqnX3vC3XqJbaL95WC+hzO6exyHsq1RIINJZWX2gdd
 0FRtCN19eew8FmcUwy+nx5C3nC0p5llstgqew7nH+lnkn2KZFZXE9TsTq
 anLCcJxx9vo39U0ekl+KxgBA4D7/5SJvEa5PjbWD6zumsl0Ka9FyYy9zy
 pDLXDJqxz0hFC2qj8nHPQtX4vL27DVnqYh6fcFBQJ0XEZaBKGGyIWAmw+
 Ha8YJhBf4UHUYWr/pJAn8SpmHPvu3xlT2AJm63KuK5R7gaS919KTTCR2X
 TvK8WwsLGVoaXiG0zGZ4HNoOLoa2bVsXUFoPMzAv294VrNmpQRnzcDMWP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="344029360"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="344029360"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 09:58:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="518509710"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga006.jf.intel.com with ESMTP; 21 Mar 2022 09:58:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 21 Mar 2022 16:58:40 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Mon, 21 Mar 2022 09:58:39 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
Thread-Index: AQHYPRE2g0KZbOTwHUmwZbnaprhnf6zKhWAA
Date: Mon, 21 Mar 2022 16:58:39 +0000
Message-ID: <8b9377677dcc1b18cd9dc95757f49f8da7beb94c.camel@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <6F4BF6A070ED6349B7846EC18E81C0A7@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
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

T24gTW9uLCAyMDIyLTAzLTIxIGF0IDEyOjQ5ICswMjAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5IHdy
b3RlOg0KPiBXZSBhcmUgY3VycmVudGx5IGdldHRpbmcgRklGTyB1bmRlcnJ1bnMsIGluIHBhcnRp
Y3VsYXINCj4gd2hlbiBQU1IyIGlzIGVuYWJsZWQuIFRoZXJlIHNlZW0gdG8gYmUgbm8gZXhpc3Rp
bmcgd29ya2Fyb3VuZA0KPiBvciBwYXRjaGVzLCB3aGljaCBjYW4gZml4IHRoYXQgaXNzdWUod2Vy
ZSBleHBlY3Rpbmcgc29tZSByZWNlbnQNCj4gc2VsZWN0aXZlIGZldGNoIHVwZGF0ZSBhbmQgREJ1
ZiBidy9TQUdWIGZpeGVzIHRvIGhlbHAsDQo+IHdoaWNoIHVuZm9ydHVuYXRlbHkgZGlkbid0KS4N
Cj4gQ3VycmVudCBpZGVhIGlzIHRoYXQgaXQgbG9va3MgbGlrZSBmb3Igc29tZSByZWFzb24gdGhl
DQo+IERCdWYgcHJlZmlsbCB0aW1lIGlzbid0IGVub3VnaCBvbmNlIHdlIGV4aXQgUFNSMiwgZGVz
cGl0ZSBpdHMNCj4gdGhlb3JldGljYWxseSBjb3JyZWN0Lg0KPiBTbyBidW1wIGl0IHVwIGEgYml0
IGJ5IDE1JShtaW5pbXVtIGV4cGVyaW1lbnRhbCBhbW91bnQgcmVxdWlyZWQNCj4gdG8gZ2V0IGl0
IHdvcmtpbmcpLCBpZiBQU1IyIGlzIGVuYWJsZWQuDQo+IEZvciBQU1IxIHRoZXJlIGlzIG5vIG5l
ZWQgaW4gdGhpcyBoYWNrLCBzbyB3ZSBsaW1pdCBpdCBvbmx5DQo+IHRvIFBTUjIgYW5kIEFsZGVy
bGFrZS4NCj4gDQo+IHYyOiAtIEFkZGVkIGNvbW1lbnQoSm9zZSBTb3V6YSkNCj4gICAgIC0gRml4
ZWQgMTUlIGNhbGN1bGF0aW9uKEpvc2UgU291emEpDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBTdGFu
aXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyNiArKysrKysr
KysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBpbmRleCA4
ODg4ZmRhOGI3MDEuLjkyZDU3ODY5OTgzYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiBAQCAtMjMyNSw2ICsyMzI1LDMyIEBAIGludCBpbnRl
bF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQ0KPiAgCQkJCQlkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEpKTsNCj4gIAl9DQo+
ICANCj4gKw0KPiArCS8qDQo+ICsJICogSEFDSy4gIFdlIGFyZSBnZXR0aW5nIEZJRk8gdW5kZXJy
dW5zLCBpbiBwYXJ0aWN1bGFyDQo+ICsJICogd2hlbiBQU1IyIGlzIGVuYWJsZWQuIFRoZXJlIHNl
ZW0gdG8gYmUgbm8gZXhpc3Rpbmcgd29ya2Fyb3VuZA0KPiArCSAqIG9yIHBhdGNoZXMgYXMgb2Yg
bm93Lg0KPiArCSAqIEN1cnJlbnQgaWRlYSBpcyB0aGF0IGl0IGxvb2tzIGxpa2UgZm9yIHNvbWUg
cmVhc29uIHRoZQ0KPiArCSAqIERCdWYgcHJlZmlsbCB0aW1lIGlzbid0IGVub3VnaCBvbmNlIHdl
IGV4aXQgUFNSMiwgZGVzcGl0ZSBpdHMNCj4gKwkgKiB0aGVvcmV0aWNhbGx5IGNvcnJlY3QuDQo+
ICsJICogU28gYnVtcCBpdCB1cCBhIGJpdCBieSAxNSUobWluaW11bSBleHBlcmltZW50YWwgYW1v
dW50IHJlcXVpcmVkDQo+ICsJICogdG8gZ2V0IGl0IHdvcmtpbmcpLCBpZiBQU1IyIGlzIGVuYWJs
ZWQuDQo+ICsJICogRm9yIFBTUjEgdGhlcmUgaXMgbm8gbmVlZCBpbiB0aGlzIGhhY2ssIHNvIHdl
IGxpbWl0IGl0IG9ubHkNCj4gKwkgKiB0byBQU1IyIGFuZCBBbGRlcmxha2UuDQo+ICsJICovDQo+
ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgew0KPiArCQlzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlcjsNCj4gKw0KPiArCQlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhfcHNy
KCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKSB7DQo+ICsJCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiArDQo+ICsJCQlpZiAoaW50ZWxfZHAt
PnBzci5wc3IyX2VuYWJsZWQpIHsNCg0KQWdhaW4sIHlvdSBjYW4ndCB1c2UgdGhpcywgUFNSIGNv
dWxkIGVuZCB1cCBkaXNhYmxlZCB3aGVuIHRoaXMgYXRvbWljIGNvbW1pdCBpdCBhcHBsaWVkLg0K
UGxlYXNlIHVzZSBpbnRlbF9jcnRjX3N0YXRlLmhhc19wc3IyLg0KDQoNCj4gKwkJCQltaW5fY2Rj
bGsgPSBESVZfUk9VTkRfVVAobWluX2NkY2xrICogMTE1LCAxMDApOw0KPiArCQkJCWJyZWFrOw0K
PiArCQkJfQ0KPiArCQl9DQo+ICsJfQ0KPiArDQo+ICAJaWYgKG1pbl9jZGNsayA+IGRldl9wcml2
LT5tYXhfY2RjbGtfZnJlcSkgew0KPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4g
IAkJCSAgICAicmVxdWlyZWQgY2RjbGsgKCVkIGtIeikgZXhjZWVkcyBtYXggKCVkIGtIeilcbiIs
DQoNCg==
