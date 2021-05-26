Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 484C9392184
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 22:33:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 558F56E844;
	Wed, 26 May 2021 20:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1FD26E844
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 20:33:32 +0000 (UTC)
IronPort-SDR: MuND9UpwMfrtiUm3jxNtnZV2w631yjVggdFtCxW+hjLVw841YsS9qJLCPw+VNwtjRt6i2U1v82
 /pMQZtJXiytA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="182220417"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="182220417"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 13:33:32 -0700
IronPort-SDR: JnCXXgG2Q7grRLG+YJWUFodD92VpBwdUnL5XeK6wyjghSmYANN5C7Ls2ws/cGqcASgsmFiv3PY
 RUnMBPuksviA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="397463938"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga003.jf.intel.com with ESMTP; 26 May 2021 13:33:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 13:33:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 13:33:30 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Wed, 26 May 2021 13:33:30 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/adl_p: Disable FIFO underrun
 recovery
Thread-Index: AQHXUlWjMCiA7a/l1EyszY8Zxu5pt6r2rmSA
Date: Wed, 26 May 2021 20:33:30 +0000
Message-ID: <64b34d6414ed31c9caa7a3e632b32734c8e8a4fc.camel@intel.com>
References: <20210526173600.27708-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210526173600.27708-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <6C180E73B7014A478029D24C9531A388@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/adl_p: Disable FIFO underrun
 recovery
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA1LTI2IGF0IDIwOjM1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIEZJRk8gdW5kZXJydW4gcmVjb3ZlcnkgbWVjaGFuaXNtIGhhcyBhIGJvYXRsb2Fk
IG9mIGNhc2VzDQo+IHdoZXJlIGl0IGNhbid0IGJlIHVzZWQuIFRoZSBkZXNjcmlwdGlvbiBpcyBh
bHNvIGEgYml0IGFtYmlndW91cw0KPiBhcyBpdCBkb2Vzbid0IHNwZWNpZnkgd2hldGhlciBwbGFu
ZSBkb3duc2NhbGluZyBuZWVkcyB0byBiZSBjb25zaWRlcmVkDQo+IG9yIGp1c3QgcGlwZSBkb3du
c2NhbGluZy4gV2UgbWF5IG5vdCBldmVuIGhhdmUgc3VmZmljaWVudCBzdGF0ZQ0KPiB0cmFja2lu
ZyB0byBkZWNpZGUgdGhpcyBvbiBkZW1hbmQsIHNvIGZvciBub3cganVzdCBkaXNhYmxlIHRoZQ0K
PiB3aG9sZSB0aGluZy4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTUgKysrKysrKysrKysrKysrDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICB8ICAxICsNCj4g
IDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggZDFlZTk1NTEyMjgyLi5h
MmYzZDI1NWE5MDYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+IEBAIC0yMjA4LDYgKzIyMDgsMjEgQEAgc3RhdGljIHZvaWQgaWNsX3Nl
dF9waXBlX2NoaWNrZW4oc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICAJICogYWNyb3NzIHBp
cGUNCj4gIAkgKi8NCj4gIAl0bXAgfD0gUElYRUxfUk9VTkRJTkdfVFJVTkNfRkJfUEFTU1RIUlU7
DQo+ICsNCj4gKwkvKg0KPiArCSAqICJUaGUgdW5kZXJydW4gcmVjb3ZlcnkgbWVjaGFuaXNtIHNo
b3VsZCBiZSBkaXNhYmxlZA0KPiArCSAqICB3aGVuIHRoZSBmb2xsb3dpbmcgaXMgZW5hYmxlZCBm
b3IgdGhpcyBwaXBlOg0KPiArCSAqICBXaURpDQo+ICsJICogIERvd25zY2FsaW5nICh0aGlzIGlu
Y2x1ZGVzIFlVVjQyMCBmdWxsYmxlbmQpDQo+ICsJICogIENPRw0KPiArCSAqICBEU0MNCj4gKwkg
KiAgUFNSMiINCj4gKwkgKg0KPiArCSAqIEZJWE1FOiBlbmFibGUgd2hlbmV2ZXIgcG9zc2libGUu
Li4NCj4gKwkgKi8NCj4gKwlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiArCQl0bXAg
fD0gVU5ERVJSVU5fUkVDT1ZFUllfRElTQUJMRTsNCj4gKw0KPiAgCWludGVsX2RlX3dyaXRlKGRl
dl9wcml2LCBQSVBFX0NISUNLRU4ocGlwZSksIHRtcCk7DQo+ICB9DQo+ICANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oDQo+IGluZGV4IDQ5NzliNDk2NWE4Mi4uZTRkNjMzNmRhYjcxIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTgzNjgsNiArODM2OCw3IEBAIGVudW0gew0K
PiAgI2RlZmluZSBfUElQRUNfQ0hJQ0tFTgkJCQkweDcyMDM4DQo+ICAjZGVmaW5lIFBJUEVfQ0hJ
Q0tFTihwaXBlKQkJCV9NTUlPX1BJUEUocGlwZSwgX1BJUEVBX0NISUNLRU4sXA0KPiAgCQkJCQkJ
CSAgIF9QSVBFQl9DSElDS0VOKQ0KPiArI2RlZmluZSAgIFVOREVSUlVOX1JFQ09WRVJZX0RJU0FC
TEUJCVJFR19CSVQoMzApDQo+ICAjZGVmaW5lICAgUElYRUxfUk9VTkRJTkdfVFJVTkNfRkJfUEFT
U1RIUlUgCSgxIDw8IDE1KQ0KPiAgI2RlZmluZSAgIFBFUl9QSVhFTF9BTFBIQV9CWVBBU1NfRU4J
CSgxIDw8IDcpDQo+ICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
