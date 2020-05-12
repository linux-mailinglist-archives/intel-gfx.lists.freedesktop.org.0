Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8091CFFE7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 22:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3696E986;
	Tue, 12 May 2020 20:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B65B56E986
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 20:55:24 +0000 (UTC)
IronPort-SDR: cAG2HC1T0LTyKqtj/VN7dQkmFaijAxm/GEUYAYpW/sPfur+F/lh6ud79h8saJ4Yez53oCqsCYR
 AqwKa9eAk8yw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 13:55:23 -0700
IronPort-SDR: ShhGn4xB6TyBmbPSX3u4azZZdh5ltdrMErFyE2iYN1+ShHeIAQfcA810kc8dJs6a8d+YpHGyZe
 RsJagjuuC5CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,385,1583222400"; d="scan'208";a="463891863"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga006.fm.intel.com with ESMTP; 12 May 2020 13:55:23 -0700
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 12 May 2020 13:55:23 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.85]) by
 fmsmsx162.amr.corp.intel.com ([169.254.5.185]) with mapi id 14.03.0439.000;
 Tue, 12 May 2020 13:55:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/ehl: Restrict w/a 1607087056 for
 EHL/JSL
Thread-Index: AQHWKIfmYiiXeq3yRk2GHhKRxU3edqilZC0A
Date: Tue, 12 May 2020 20:55:22 +0000
Message-ID: <a93c5dee638073f6e6f1f2865d1afb4904a5f033.camel@intel.com>
References: <20200512180050.6785-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200512180050.6785-1-swathi.dhanavanthri@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.68.42]
Content-ID: <D9373F1200FECB4E9E66A0D70AA6FFA4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Restrict w/a 1607087056 for
 EHL/JSL
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

T24gVHVlLCAyMDIwLTA1LTEyIGF0IDExOjAwIC0wNzAwLCBTd2F0aGkgRGhhbmF2YW50aHJpIHdy
b3RlOg0KPiBUaGlzIHcvYSBpcyBmaXhlZCBpbiBCMCBzdGVwcGluZyBhbmQgbmVlZHMgdG8gYmUg
cmVzdHJpY3RlZCBmb3INCj4gQTAgc3RlcHBpbmcgb25seS4NCj4gQnNwZWM6IDMzNDUxDQo+IA0K
DQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+DQoNCj4gU2lnbmVkLW9mZi1ieTogU3dhdGhpIERoYW5hdmFudGhyaSA8c3dhdGhpLmRoYW5h
dmFudGhyaUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYyB8IDExICsrKysrKystLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oICAgICAgICAgICAgIHwgIDUgKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBpbmRleCBhYTkwZTZiN2ExMTguLjkwYTJi
OWUzOTliMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jDQo+IEBAIC05MTcsMTAgKzkxNywxMyBAQCBpY2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQ0K
PiAgCQkgICAgR0FNVF9DSEtOX0JJVF9SRUcsDQo+ICAJCSAgICBHQU1UX0NIS05fRElTQUJMRV9M
M19DT0hfUElQRSk7DQo+ICANCj4gLQkvKiBXYV8xNjA3MDg3MDU2OmljbCAqLw0KPiAtCXdhX3dy
aXRlX29yKHdhbCwNCj4gLQkJICAgIFNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSwNCj4gLQkJICAg
IEwzX0NMS0dBVEVfRElTIHwgTDNfQ1IyWF9DTEtHQVRFX0RJUyk7DQo+ICsJLyogV2FfMTYwNzA4
NzA1NjppY2wsZWhsLGpzbCAqLw0KPiArCWlmIChJU19JQ0VMQUtFKGk5MTUpIHx8DQo+ICsJICAg
IElTX0VITF9SRVZJRChpOTE1LCBFSExfUkVWSURfQTAsIEVITF9SRVZJRF9BMCkpIHsNCj4gKwkJ
d2Ffd3JpdGVfb3Iod2FsLA0KPiArCQkJICAgIFNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURSwNCj4g
KwkJCSAgICBMM19DTEtHQVRFX0RJUyB8IEwzX0NSMlhfQ0xLR0FURV9ESVMpOw0KPiArCX0NCj4g
IH0NCj4gIA0KPiAgc3RhdGljIHZvaWQNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGluZGV4
IDg2NTZmMWUwZDk3Zi4uOThkYzhjZGYyYzM4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgNCj4gQEAgLTE1MTcsNiArMTUxNywxMSBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gICNkZWZpbmUgSVNfSUNMX1JFVklEKHAsIHNpbmNl
LCB1bnRpbCkgXA0KPiAgCShJU19JQ0VMQUtFKHApICYmIElTX1JFVklEKHAsIHNpbmNlLCB1bnRp
bCkpDQo+ICANCj4gKyNkZWZpbmUgRUhMX1JFVklEX0EwICAgICAgICAgICAgMHgwDQo+ICsNCj4g
KyNkZWZpbmUgSVNfRUhMX1JFVklEKHAsIHNpbmNlLCB1bnRpbCkgXA0KPiArCShJU19FTEtIQVJU
TEFLRShwKSAmJiBJU19SRVZJRChwLCBzaW5jZSwgdW50aWwpKQ0KPiArDQo+ICAjZGVmaW5lIFRH
TF9SRVZJRF9BMAkJMHgwDQo+ICAjZGVmaW5lIFRHTF9SRVZJRF9CMAkJMHgxDQo+ICAjZGVmaW5l
IFRHTF9SRVZJRF9DMAkJMHgyDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
