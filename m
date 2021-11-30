Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4287463533
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 14:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 061946EC17;
	Tue, 30 Nov 2021 13:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA6B6EC17
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 13:16:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="223439442"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="223439442"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 05:16:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="477109534"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga002.jf.intel.com with ESMTP; 30 Nov 2021 05:16:56 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 13:16:55 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Tue, 30 Nov 2021 13:16:55 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/20] drm/i915/fbc: Eliminate racy
 intel_fbc_is_active() usage
Thread-Index: AQHX4SebbFqLUzWfwEKNLDaQI/h+SKwcFqHA
Date: Tue, 30 Nov 2021 13:16:55 +0000
Message-ID: <3f41ebbd0fa8436c9839a89876b65aad@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/20] drm/i915/fbc: Eliminate racy
 intel_fbc_is_active() usage
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyNCwgMjAyMSAxOjM3IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwMS8yMF0gZHJtL2k5MTUvZmJjOiBFbGltaW5hdGUgcmFjeQ0KPiBpbnRlbF9mYmNf
aXNfYWN0aXZlKCkgdXNhZ2UNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgaWxrIGZiYyB3YXRlcm1hcmsgY29tcHV0
YXRpb24gdXNlcyBpbnRlbF9mYmNfaXNfYWN0aXZlKCkgd2hpY2ggaXMgcmFjeSBzaW5jZQ0KPiB3
ZSBkb24ndCBrbm93IHdoZXRoZXIgRkJDIHdpbGwgYmUgZW5hYmxlZCBvciBub3QgYXQgc29tZSBw
b2ludC4gU28gbGV0J3MganVzdA0KPiBhc3N1bWUgaXQgd2lsbCBiZSBpZiBib3RoIEhBU19GQkMo
KSBhbmQgdGhlIG1vZHBhcmFtIGFncmVlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgOSArKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMNCj4gaW5kZXggMDFmYTNmYWMxYjU3Li4xOGZiZGQyMDRhOTMgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYw0KPiBAQCAtMzM2OSwxMyArMzM2OSw4IEBAIHN0YXRpYyB2b2lkIGlsa193
bV9tZXJnZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsDQo+ICAJfQ0KPiAN
Cj4gIAkvKiBJTEs6IExQMisgbXVzdCBiZSBkaXNhYmxlZCB3aGVuIEZCQyBXTSBpcyBkaXNhYmxl
ZCBidXQgRkJDIGVuYWJsZWQNCj4gKi8NCj4gLQkvKg0KPiAtCSAqIEZJWE1FIHRoaXMgaXMgcmFj
eS4gRkJDIG1pZ2h0IGdldCBlbmFibGVkIGxhdGVyLg0KPiAtCSAqIFdoYXQgd2Ugc2hvdWxkIGNo
ZWNrIGhlcmUgaXMgd2hldGhlciBGQkMgY2FuIGJlDQo+IC0JICogZW5hYmxlZCBzb21ldGltZSBs
YXRlci4NCj4gLQkgKi8NCj4gLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDUgJiYgIW1l
cmdlZC0+ZmJjX3dtX2VuYWJsZWQgJiYNCj4gLQkgICAgaW50ZWxfZmJjX2lzX2FjdGl2ZSgmZGV2
X3ByaXYtPmZiYykpIHsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDUgJiYgSEFT
X0ZCQyhkZXZfcHJpdikgJiYNCj4gKwkgICAgZGV2X3ByaXYtPnBhcmFtcy5lbmFibGVfZmJjICYm
ICFtZXJnZWQtPmZiY193bV9lbmFibGVkKSB7DQo+ICAJCWZvciAobGV2ZWwgPSAyOyBsZXZlbCA8
PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsNCj4gIAkJCXN0cnVjdCBpbnRlbF93bV9sZXZlbCAqd20g
PSAmbWVyZ2VkLT53bVtsZXZlbF07DQo+IA0KPiAtLQ0KPiAyLjMyLjANCg0K
