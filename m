Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3287A449C7B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 20:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 422C66E8F7;
	Mon,  8 Nov 2021 19:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38AFE6E8F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 19:36:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="212342017"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="212342017"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 11:36:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="533435792"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 08 Nov 2021 11:36:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 11:36:45 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 11:36:43 -0800
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.012;
 Tue, 9 Nov 2021 01:06:41 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915: Do vrr push before sampling
 the freame counter
Thread-Index: AQHXxgKaVFBw44gzaE6msNcJ3KI7WKv6IVCA
Date: Mon, 8 Nov 2021 19:36:41 +0000
Message-ID: <23cfa70e122b46dc800eaee07345da99@intel.com>
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
 <20211020223339.669-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20211020223339.669-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Do vrr push before sampling
 the freame counter
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDIxLCAyMDIxIDQ6MDQgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5hdmFyZSwgTWFuYXNpIEQg
PG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRD
SCAyLzRdIGRybS9pOTE1OiBEbyB2cnIgcHVzaCBiZWZvcmUgc2FtcGxpbmcgdGhlIGZyZWFtZQ0K
PiBjb3VudGVyDQoNCk5pdDogdHlwbyBpbiBmcmFtZQ0KDQo+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBEbyB0aGUgdnJyIHB1c2gg
YmVmb3JlIHdlIHNhbXBsZSB0aGUgZnJhbWUgY291bnRlciB0byBrbm93IHdoZW4gdGhlIGNvbW1p
dCBoYXMNCj4gYmVlbiBsYXRjaGVkLiBEb2luZyB0aGVzZSBpbiB0aGUgd3Jvbmcgb3JkZXIgY291
bGQgbGVhZCB1cyB0byBjb21wbGV0ZSB0aGUgZmxpcA0KPiBiZWZvcmUgaXQgaGFzIGFjdHVhbGx5
IGhhcHBlbmVkLg0KPiANCj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jcnRjLmMgfCA2ICsrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3J0Yy5jDQo+IGluZGV4IDI1NGU2NzE0MWE3Ny4uMGY4YjQ4YjY5MTFjIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBAQCAtNTQyLDYg
KzU0Miw5IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfZW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlDQo+ICpuZXdfY3J0Y19zdGF0ZSkNCj4gDQo+ICAJdHJhY2VfaW50ZWxfcGlwZV91cGRhdGVf
ZW5kKGNydGMsIGVuZF92YmxfY291bnQsIHNjYW5saW5lX2VuZCk7DQo+IA0KPiArCS8qIFNlbmQg
VlJSIFB1c2ggdG8gdGVybWluYXRlIFZibGFuayAqLw0KPiArCWludGVsX3Zycl9zZW5kX3B1c2go
bmV3X2NydGNfc3RhdGUpOw0KPiArDQoNClRoaXMgbG9va3MgcmlnaHQgdG8gbWUuICBXZSBhcmUg
YXQgcmlzayBvZiBhcm1pbmcgdmJsYW5rIGJlZm9yZSB0aGUgcHVzaCwNCmkuZS4gYWN0dWFsIHZi
bGFuayB0ZXJtaW5hdGlvbi4NCg0KV2l0aCB0aGUgdHlwbyBmaXhlZDoNClJldmlld2VkLWJ5OiBV
bWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+ICAJLyoNCj4gIAkgKiBJbmNh
c2Ugb2YgbWlwaSBkc2kgY29tbWFuZCBtb2RlLCB3ZSBuZWVkIHRvIHNldCBmcmFtZSB1cGRhdGUN
Cj4gIAkgKiByZXF1ZXN0IGZvciBldmVyeSBjb21taXQuDQo+IEBAIC01NjgsOSArNTcxLDYgQEAg
dm9pZCBpbnRlbF9waXBlX3VwZGF0ZV9lbmQoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKm5l
d19jcnRjX3N0YXRlKQ0KPiANCj4gIAlsb2NhbF9pcnFfZW5hYmxlKCk7DQo+IA0KPiAtCS8qIFNl
bmQgVlJSIFB1c2ggdG8gdGVybWluYXRlIFZibGFuayAqLw0KPiAtCWludGVsX3Zycl9zZW5kX3B1
c2gobmV3X2NydGNfc3RhdGUpOw0KPiAtDQo+ICAJaWYgKGludGVsX3ZncHVfYWN0aXZlKGRldl9w
cml2KSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLS0NCj4gMi4zMi4wDQoNCg==
