Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A485738B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 23:23:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF376E326;
	Wed, 26 Jun 2019 21:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F3366E326
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 21:23:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 14:23:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="360887392"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga006.fm.intel.com with ESMTP; 26 Jun 2019 14:23:23 -0700
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 14:23:22 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX151.amr.corp.intel.com ([169.254.7.99]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 14:23:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 5/5] drm/i915/ehl: Enable DDI-D
Thread-Index: AQHVK7K0+ufBWNtpnU2wXcTPsUqcPKau6LWA
Date: Wed, 26 Jun 2019 21:23:22 +0000
Message-ID: <b610b6ff02d76de01b4ef67f33e55a7cdc3eeee4.camel@intel.com>
References: <20190626000352.31926-1-matthew.d.roper@intel.com>
 <20190626000352.31926-6-matthew.d.roper@intel.com>
In-Reply-To: <20190626000352.31926-6-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <204AB2180B392F48AD36DBC6D5E06B48@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 5/5] drm/i915/ehl: Enable DDI-D
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

T24gVHVlLCAyMDE5LTA2LTI1IGF0IDE3OjAzIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBF
SEwgaGFzIGZvdXIgRERJJ3MgKERESS1BIGFuZCBEREktRCBzaGFyZSBjb21ibyBQSFkgQSkuDQoN
ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCg0KPiANCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGFm
YmZlZjJmZmZkZS4uNTBhZDIxZGYyZjgwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTUxMjcsNiArMTUxMjcsNyBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikNCj4gIAkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfQSk7DQo+ICAJCWlu
dGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0IpOw0KPiAgCQlpbnRlbF9kZGlfaW5pdChkZXZf
cHJpdiwgUE9SVF9DKTsNCj4gKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBPUlRfRCk7DQo+
ICAJCWljbF9kc2lfaW5pdChkZXZfcHJpdik7DQo+ICAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKSB7DQo+ICAJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0EpOw0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
