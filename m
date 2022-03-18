Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 566B34DD9AC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 13:21:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2EB10E09B;
	Fri, 18 Mar 2022 12:21:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A086D10E09B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 12:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647606076; x=1679142076;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=D04/WVIGJtuuPXdC3qdsrs3X/TI9m3e8k+tjw6RAd3w=;
 b=Vuc+AaJb+sJyqCoNKdrzssS7x7gjYJ0j+BOc94uY2GT1jCdwQJ93ZNzH
 XJTtpODKnmIwNanxVPaCx0Wol/pSH1jIeqXjr6Y5T1YOG8OU1dKL6nQVo
 pKN02Ohb1eZ/bhcpbaKVb3XFYbdTjB/DtTSjFWZU1qRlQb3VH0r+/uMtf
 GWVartGSApi4lMj/8V0/l0iVo8VYYbziMoWq+yR1k4aeAtW1lgie1tVm+
 zAoVSCHS5RS0OkmxMfCtaq2QhqKQVtYRKckjxDd5V/N/cH5T27CUn9zTk
 nl2Us8JyEgAkFkr3D+FfO5bscpsccBjTDeik/VWD7OvkgnA42S618otCP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="237736818"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="237736818"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 05:21:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="513828197"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga002.jf.intel.com with ESMTP; 18 Mar 2022 05:21:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 18 Mar 2022 12:21:11 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Fri, 18 Mar 2022 05:21:10 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
Thread-Index: AQHYOqVt9C5fyYbzJ0256azdo8/uyazFhaqA
Date: Fri, 18 Mar 2022 12:21:10 +0000
Message-ID: <530cc6962b181ee01e9c00a38190ab27e5940215.camel@intel.com>
References: <20220318085226.7348-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220318085226.7348-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <72B3B9A80F66BA40B4D4EC7A256EA42F@intel.com>
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

T24gRnJpLCAyMDIyLTAzLTE4IGF0IDEwOjUyICswMjAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5IHdy
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
bGFrZS4NCg0KSXQgdGhpcyB3b3JrYXJvdW5kIG1lYW50IHRvIGJlIHBlcm1hbmVudD8gSWYgeWVz
IHdlIHNob3VsZCBmaWxlIGEgSFNEIGFuZCBnZXQgaGFyZHdhcmUgZm9sa3MgZmVlZGJhY2suDQoN
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY2RjbGsuYyB8IDEzICsrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBp
bnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jDQo+IGluZGV4IDg4ODhmZGE4YjcwMS4uMDk1Yjc5OTUwNzg4IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0yMzI1LDYgKzIz
MjUsMTkgQEAgaW50IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJCQkJCWRldl9wcml2LT5tYXhfY2RjbGtf
ZnJlcSkpOw0KPiAgCX0NCj4gIA0KDQpQbGVhc2UgYWRkIHNvbWUgY29tbWVudCBpbiB0aGUgY29k
ZSBhYm91dCB0aGlzIHdvcmthcm91bmQuDQoNCg0KPiArCWlmIChJU19BTERFUkxBS0VfUChkZXZf
cHJpdikpIHsNCj4gKwkJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ICsNCj4gKwkJ
Zm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikg
ew0KPiArCQkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNv
ZGVyKTsNCj4gKw0KPiArCQkJaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQoNCllv
dSBzaG91bGQgY2hlY2sgdGhlIGhhc19wc3IyIGluIHRoZSBjcnRjX3N0YXRlLCBQU1IyIGNvdWxk
IGJlIGRpc2FibGVkIHdoZW4gdGhpcyBzdGF0ZSBpcyBjb21taXR0ZWQuDQoNCj4gKwkJCQltaW5f
Y2RjbGsgPSBESVZfUk9VTkRfVVAobWluX2NkY2xrICogMTAwLCA4NSk7DQoNClRoaXMgaXMgbm90
IGluY3JlYXNpbmcgYnkgMTUlLg0KDQptaW5fY2RjbGsgPSA1MDANCjUwMCAqIDEwMCA9IDUwMDAw
DQo1MDAwMCAvIDg1ID0gNTg4LjIzNTI5NDExOA0KDQpXaGlsZSAxNSUgb2YgNTAwIGlzIDc1Lg0K
DQpBbHNvIGlmIHRoZXJlIGlzIHR3byBDUlRDcyB3aXRoIFBTUjIgZW5hYmxlZCB5b3Ugd2lsbCBi
dW1wIG1pbl9jZGNsayB0d2ljZS4NCg0KPiArCQkJCWJyZWFrOw0KPiArCQkJfQ0KPiArCQl9DQo+
ICsJfQ0KPiArDQo+ICAJaWYgKG1pbl9jZGNsayA+IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkg
ew0KPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gIAkJCSAgICAicmVxdWlyZWQg
Y2RjbGsgKCVkIGtIeikgZXhjZWVkcyBtYXggKCVkIGtIeilcbiIsDQoNCg==
