Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8737517A1BF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 09:55:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70EC86E12B;
	Thu,  5 Mar 2020 08:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EFD6E12B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 08:55:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 00:55:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,517,1574150400"; d="scan'208";a="320146773"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by orsmga001.jf.intel.com with ESMTP; 05 Mar 2020 00:55:32 -0800
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Mar 2020 08:55:32 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Mar 2020 08:55:31 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Thu, 5 Mar 2020 08:55:31 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Sharma, Swati2" <swati2.sharma@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Decrease log level
Thread-Index: AQHV8NzSoXv7T7ZZ4kq0RwbdxsZSGKg5tSGA
Date: Thu, 5 Mar 2020 08:55:31 +0000
Message-ID: <08c5b5fb8abcd40b86b68365f67bec851ec6c6d6.camel@intel.com>
References: <20200302213807.6488-1-swati2.sharma@intel.com>
In-Reply-To: <20200302213807.6488-1-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <2D4D1AB95DCD414381CEC5276640AEBC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Decrease log level
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

T24gVHVlLCAyMDIwLTAzLTAzIGF0IDAzOjA4ICswNTMwLCBTd2F0aSBTaGFybWEgd3JvdGU6DQo+
IENvbnZlcnRpbmcgZXJyb3IgdG8gZGVidWcgcHJpbnQgaWYgc2luayBmYWlscyB0byBjb25maWd1
cmUgc2NyYW1ibGluZw0KPiBvcg0KPiBUTURTIGJpdCBjbG9jayByYXRpby4gSW4gdGhpcyBjYXNl
LCB3ZSBhcmUgdGltaW5nIG91dCB3aGlsZSBkaXNhYmxpbmcNCj4gdGhlIHNjcmFtYmxpbmcgYW5k
IHNldHRpbmcgdGhlIFNDREMgcmF0aW8sIGFzIHRoZXJlIGlzIG5vIHJlc3BvbnNlDQo+IHRvIHRo
ZSBJMkMgU0NEQyB3cml0ZSBmcm9tIHRoZSBzaW5rIGRldmljZS4gRXJyb3IgaXNuJ3QgZHVlIHRv
DQo+IHNvbWV0aGluZw0KPiB3cm9uZyBkb25lIGZyb20gZHJpdmVyIHNpZGUuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPg0KPiBTdWdn
ZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDUg
KysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
DQoNClJldmlld2VkLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5
QGludGVsLmNvbT4NCg0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jDQo+IGluZGV4IDI4NDIxOWRhN2RmOC4uNDU3Y2E4OGNkMjc3IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTM1NjQsOCArMzU2NCw5
IEBAIHN0YXRpYyB2b2lkIGludGVsX2VuYWJsZV9kZGlfaGRtaShzdHJ1Y3QNCj4gaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwNCj4gIAlpZiAoIWludGVsX2hkbWlfaGFuZGxlX3Npbmtfc2NyYW1ibGlu
ZyhlbmNvZGVyLCBjb25uZWN0b3IsDQo+ICAJCQkJCSAgICAgICBjcnRjX3N0YXRlLQ0KPiA+aGRt
aV9oaWdoX3RtZHNfY2xvY2tfcmF0aW8sDQo+ICAJCQkJCSAgICAgICBjcnRjX3N0YXRlLQ0KPiA+
aGRtaV9zY3JhbWJsaW5nKSkNCj4gLQkJRFJNX0VSUk9SKCJbQ09OTkVDVE9SOiVkOiVzXSBGYWls
ZWQgdG8gY29uZmlndXJlIHNpbmsNCj4gc2NyYW1ibGluZy9UTURTIGJpdCBjbG9jayByYXRpb1xu
IiwNCj4gLQkJCSAgY29ubmVjdG9yLT5iYXNlLmlkLCBjb25uZWN0b3ItPm5hbWUpOw0KPiArCQlE
Uk1fREVCVUdfS01TKCJbQ09OTkVDVE9SOiVkOiVzXSBGYWlsZWQgdG8gY29uZmlndXJlDQo+IHNp
bmsgIg0KPiArCQkJICAgICAgInNjcmFtYmxpbmcvVE1EUyBiaXQgY2xvY2sgcmF0aW9cbiIsDQo+
ICsJCQkgICAgICAgY29ubmVjdG9yLT5iYXNlLmlkLCBjb25uZWN0b3ItPm5hbWUpOw0KPiAgDQo+
ICAJLyogRGlzcGxheSBXQSAjMTE0Mzogc2tsLGtibCxjZmwgKi8NCj4gIAlpZiAoSVNfR0VOOV9C
QyhkZXZfcHJpdikpIHsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
