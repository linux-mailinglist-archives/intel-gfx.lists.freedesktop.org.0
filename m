Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AFB434A04
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 13:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE5E6E249;
	Wed, 20 Oct 2021 11:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440486E249
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 11:28:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="215922476"
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="215922476"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 04:28:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="527019747"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 20 Oct 2021 04:28:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 20 Oct 2021 04:28:43 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 20 Oct 2021 04:28:41 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2242.012;
 Wed, 20 Oct 2021 12:28:40 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Sripada, Radhakrishna"
 <radhakrishna.sripada@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/display: Add warn_on in intel_psr_pause()
Thread-Index: AQHXxUmYoVLZzkwzQ0iEiHtTKDnJp6vbv1Nw
Date: Wed, 20 Oct 2021 11:28:40 +0000
Message-ID: <4fc7f6074d764db5b3b8787c71de6d9e@intel.com>
References: <20211020003558.222198-1-jose.souza@intel.com>
 <20211020003558.222198-2-jose.souza@intel.com>
In-Reply-To: <20211020003558.222198-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add warn_on in
 intel_psr_pause()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291emEsIEpvc2UgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMjAsIDIwMjEg
MzozNiBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkNCj4gPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT47IFNyaXBhZGEsIFJhZGhha3Jpc2huYQ0KPiA8cmFkaGFr
cmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPjsgU291emEsIEpvc2UgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgd2Fybl9v
biBpbiBpbnRlbF9wc3JfcGF1c2UoKQ0KPiANCj4gUmlnaHQgbm93IHRoZSBvbmx5IHVzZXIgb2Yg
cHNyX3BhdXNlL3Jlc3VtZSBpcyBpbnRlbF9jZGNsayBidXQgYWRkaXRpb25hbCB1c2Vycw0KPiB3
aWxsIGJlIGFkZGVkIGluIHRoZSBmdXR1cmUgYW5kIHdlIG1heSBuZWVkIGRvIHJlZmVyZW5jZSBj
b3VudGluZyBmb3IgUFNSDQo+IHBhdXNlIGFuZCByZXN1bWUsIGZvciBub3cgb25seSBhZGRpbmcg
YSB3YXJuX29uIHNvIHRoaXMgY2FzZXMgZG8gbm90IGdvDQo+IHVubm90aWNlZC4NCj4gDQo+IENj
OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBDYzogSm91bmkgSG9nYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gQ2M6IFJhZGhha3Jpc2huYSBTcmlwYWRh
IDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQpGb3IgdGhlIHRpbWUg
YmVpbmcsIHRoZSB3YXJuX29uIHNlZW1zIGEgdmFsaWQgYWRkaXRpb24gdG8gcmVtaW5kIHVzIGFi
b3V0IHRoZXNlIGNhc2VzLg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgfCA0ICsrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA3
YTIwNWZkNTAyM2JiLi40OWMyZGZiZDQwNTU0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTEzNDYsNiArMTM0Niw3IEBAIHZvaWQgaW50ZWxf
cHNyX2Rpc2FibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gICAqLw0KPiAgdm9pZCBp
bnRlbF9wc3JfcGF1c2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4gKwlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gIAlz
dHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gDQo+ICAJaWYgKCFDQU5f
UFNSKGludGVsX2RwKSkNCj4gQEAgLTEzNTgsNiArMTM1OSw5IEBAIHZvaWQgaW50ZWxfcHNyX3Bh
dXNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCXJldHVybjsNCj4gIAl9DQo+IA0K
PiArCS8qIElmIHdlIGV2ZXIgaGl0IHRoaXMsIHdlIHdpbGwgbmVlZCB0byBhZGQgcmVmY291bnQg
dG8gcGF1c2UvcmVzdW1lICovDQo+ICsJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIHBzci0+
cGF1c2VkKTsNCj4gKw0KPiAgCWludGVsX3Bzcl9leGl0KGludGVsX2RwKTsNCj4gIAlpbnRlbF9w
c3Jfd2FpdF9leGl0X2xvY2tlZChpbnRlbF9kcCk7DQo+ICAJcHNyLT5wYXVzZWQgPSB0cnVlOw0K
PiAtLQ0KPiAyLjMzLjENCg0K
