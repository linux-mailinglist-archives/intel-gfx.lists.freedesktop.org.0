Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B44E440FEBD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 19:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367236E02F;
	Fri, 17 Sep 2021 17:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE1C36E02F
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 17:41:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="219656209"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="219656209"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 10:40:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="554734615"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2021 10:40:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 10:40:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 17 Sep 2021 10:40:46 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 17 Sep 2021 10:40:46 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915: Check SFC fusing before recording/dumping
 SFC_DONE
Thread-Index: AQHXq97HQF0pWw3hE0q/KHszJr6pWquo9XKA
Date: Fri, 17 Sep 2021 17:40:46 +0000
Message-ID: <3973f58e9377fe4b6efa353d217bc275f0dc4e14.camel@intel.com>
References: <20210917161203.812251-1-matthew.d.roper@intel.com>
 <20210917161203.812251-3-matthew.d.roper@intel.com>
In-Reply-To: <20210917161203.812251-3-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <052476FAB7A64044802AE5BFA842F256@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Check SFC fusing before
 recording/dumping SFC_DONE
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

T24gRnJpLCAyMDIxLTA5LTE3IGF0IDA5OjEyIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBYZV9IUCBhbmQgYmV5b25kIHRoZSBTRkMgdW5pdCBtYXkgYmUgZnVzZWQgb2ZmLCBldmVuIGlm
IHRoZQ0KPiBjb3JyZXNwb25kaW5nIG1lZGlhIGVuZ2luZXMgYXJlIHByZXNlbnQuICBDaGVjayB0
aGUgU0ZDLXNwZWNpZmljIGZ1c2luZw0KPiBiZWZvcmUgdHJ5aW5nIHRvIGR1bXAgdGhlIFNGQ19E
T05FIGluc3RhbmNlcy4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9ncHVfZXJyb3IuYyB8IDYgKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJv
ci5jDQo+IGluZGV4IGI5ZjY2ZGJkNDZiYi4uMmEyZDc2NDNiNTUxIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMNCj4gQEAgLTc1Myw3ICs3NTMsOCBAQCBzdGF0aWMg
dm9pZCBlcnJfcHJpbnRfZ3Qoc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqbSwNCj4g
IAkJCSAqIG9ubHkgZXhpc3RzIGlmIHRoZSBjb3JyZXNwb25kaW5nIFZDUyBlbmdpbmUgaXMNCj4g
IAkJCSAqIHByZXNlbnQuDQo+ICAJCQkgKi8NCj4gLQkJCWlmICghSEFTX0VOR0lORShndC0+X2d0
LCBfVkNTKGkgKiAyKSkpDQo+ICsJCQlpZiAoKGd0LT5fZ3QtPmluZm8uc2ZjX21hc2sgJiBCSVQo
aSkpID09IDAgfHwNCj4gKwkJCSAgICAhSEFTX0VOR0lORShndC0+X2d0LCBfVkNTKGkgKiAyKSkp
DQo+ICAJCQkJY29udGludWU7DQo+ICANCj4gIAkJCWVycl9wcmludGYobSwgIiAgU0ZDX0RPTkVb
JWRdOiAweCUwOHhcbiIsIGksDQo+IEBAIC0xNjMyLDcgKzE2MzMsOCBAQCBzdGF0aWMgdm9pZCBn
dF9yZWNvcmRfcmVncyhzdHJ1Y3QgaW50ZWxfZ3RfY29yZWR1bXAgKmd0KQ0KPiAgCQkJICogb25s
eSBleGlzdHMgaWYgdGhlIGNvcnJlc3BvbmRpbmcgVkNTIGVuZ2luZSBpcw0KPiAgCQkJICogcHJl
c2VudC4NCj4gIAkJCSAqLw0KPiAtCQkJaWYgKCFIQVNfRU5HSU5FKGd0LT5fZ3QsIF9WQ1MoaSAq
IDIpKSkNCj4gKwkJCWlmICgoZ3QtPl9ndC0+aW5mby5zZmNfbWFzayAmIEJJVChpKSkgPT0gMCB8
fA0KPiArCQkJICAgICFIQVNfRU5HSU5FKGd0LT5fZ3QsIF9WQ1MoaSAqIDIpKSkNCj4gIAkJCQlj
b250aW51ZTsNCj4gIA0KPiAgCQkJZ3QtPnNmY19kb25lW2ldID0NCg0K
