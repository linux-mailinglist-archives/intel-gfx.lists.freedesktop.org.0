Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B47BC2CBDD8
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 14:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E4B6EA4E;
	Wed,  2 Dec 2020 13:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C044C6EA28
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 13:09:42 +0000 (UTC)
IronPort-SDR: 4yEQ8BCg6xje908BFT7VHFWykQh0nUITnVV3kQcASJnW9eDx9kDVwDXQMk8pNe1sz+RBDi1eo3
 Trde52AqXXUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="160068257"
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; d="scan'208";a="160068257"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 05:09:38 -0800
IronPort-SDR: O35EX3lebOhE6F4OoRRto9HHI5Zij+RNKzUyf9Xn/gr4xNfzW4rA/eRHi8HTERbv5OOMfqEjBO
 3SFfql7borRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,386,1599548400"; d="scan'208";a="316095793"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga007.fm.intel.com with ESMTP; 02 Dec 2020 05:09:38 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Dec 2020 05:09:37 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Dec 2020 05:09:36 -0800
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Wed, 2 Dec 2020 18:39:34 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v6 0/2] Re-enable FBC on TGL
Thread-Index: AQHWyBAMHU2bZA5oOUONtAiPWsyWIqniM/eAgAGUX2A=
Date: Wed, 2 Dec 2020 13:09:34 +0000
Message-ID: <2ea42ef4e7274832b81c2c3c6791c944@intel.com>
References: <20201201190406.1752-1-uma.shankar@intel.com>
 <589b1215583ae4dc934021c17d3488b7fee32cdb.camel@intel.com>
In-Reply-To: <589b1215583ae4dc934021c17d3488b7fee32cdb.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v6 0/2] Re-enable FBC on TGL
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291emEsIEpvc2UgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDIsIDIwMjAg
MTI6MDEgQU0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20NCj4gU3ViamVjdDogUmU6IFt2NiAwLzJdIFJlLWVuYWJsZSBGQkMgb24gVEdMDQo+
IA0KPiBMR1RNLCB0aGFua3MgZm9yIGRvaW5nIHRoZSBjaGFuZ2VzLg0KDQpQdXNoZWQgdGhlIHNl
cmllcyB0byBkaW5xLg0KVGhhbmtzIEpvc2UgYW5kIFZpbGxlIGZvciB0aGUgcmV2aWV3IGFuZCBm
ZWVkYmFjay4NCg0KUmVnYXJkcywNClVtYSBTaGFua2FyDQoNCj4gT24gV2VkLCAyMDIwLTEyLTAy
IGF0IDAwOjM0ICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4gPiBGQkMgd2FzIGRpc2FibGVk
IG9uIFRHTCBkdWUgdG8gcmFuZG9tIHVuZGVycnVucy4gSXQgaGFzIGJlZW4NCj4gPiBkZXRlcm1p
bmVkIHRoYXQgRkJDIHdpbGwgbm90IHdvcmsgcmVsaWFibHkgd2l0aCBQU1IyLg0KPiA+IFRoaXMg
c2VyaWVzIHJlLWVuYWJsZXMgZmJjIGFsb25nIHdpdGggdGFraW5nIGNhcmUgb2YgdGhlDQo+ID4g
UFNSMiBsaW1pdGF0aW9ucyBmb3IgVEdMLg0KPiA+DQo+ID4gQnNwZWM6IDUwNDIyIEhTRDogMTQw
MTAyNjAwMDINCj4gPg0KPiA+IHYyOiBBZGRyZXNzZWQgcmV2aWV3IGNvbW1lbnRzIGFuZCBhZGRl
ZCBic3BlYyBsaW5rcw0KPiA+DQo+ID4gdjM6IEFkZHJlc3NlZCBWaWxsZSdzIHJldmlldyBjb21t
ZW50cw0KPiA+DQo+ID4gdjQ6IENoYW5nZSB0aGUgV0EgYXMgcGVyIEpvc2UncyByZWNvbW1lbmRh
dGlvbi4NCj4gPg0KPiA+IHY1OiBBZGRyZXNzZWQgSm9zZSdzIHJldmlldyBjb21tZW50cy4NCj4g
Pg0KPiA+IHY2OiBBZGRlZCBKb3NlIGFuZCBWaWxsZSBSQidzLiBGaXhlZCBhIG1pbm9yIHJldmll
dyBjb21tZW50Lg0KPiA+DQo+ID4gVW1hIFNoYW5rYXIgKDIpOg0KPiA+IMKgwqBkcm0vaTkxNS9k
aXNwbGF5L3RnbDogRGlzYWJsZSBGQkMgd2l0aCBQU1IyDQo+ID4gwqDCoFJldmVydCAiZHJtL2k5
MTUvZGlzcGxheS9mYmM6IERpc2FibGUgZmJjIGJ5IGRlZmF1bHQgb24gVEdMIg0KPiA+DQo+ID4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMTkgKysrKysrKysr
KysrLS0tLS0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAg
ICB8ICAxICsNCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkNCj4gPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
