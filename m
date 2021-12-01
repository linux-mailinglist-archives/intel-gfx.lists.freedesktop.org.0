Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE06E464B2A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 11:04:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD7AF6E8D5;
	Wed,  1 Dec 2021 10:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70F236E8A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 10:04:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="216444548"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="216444548"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 02:04:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="677206078"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2021 02:04:41 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 10:04:40 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 10:04:40 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/20] drm/i915/fbc: Flatten
 __intel_fbc_pre_update()
Thread-Index: AQHX4SesnH66jMsAq0WQYpSWD02xaawdc1rA
Date: Wed, 1 Dec 2021 10:04:40 +0000
Message-ID: <375432ed57e841fb985992c29bf1f1f8@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/20] drm/i915/fbc: Flatten
 __intel_fbc_pre_update()
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
IFtQQVRDSCAwOS8yMF0gZHJtL2k5MTUvZmJjOiBGbGF0dGVuDQo+IF9faW50ZWxfZmJjX3ByZV91
cGRhdGUoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gDQo+IFVzZSBhbiBlYXJseSByZXR1cm4gdG8gZmxhdHRlbiBtb3N0IG9m
IF9faW50ZWxfZmJjX3ByZV91cGRhdGUoKS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBN
aWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDQwICsrKysrKysrKysrKy0tLS0tLS0t
LS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGlu
ZGV4IGNmN2ZjMGRlNjA4MS4uMGJlZjNiOTQ4NjcwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gQEAgLTEyMjMsMjcgKzEyMjMsMjcgQEAgc3RhdGlj
IGJvb2wgX19pbnRlbF9mYmNfcHJlX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gIAlpbnRlbF9mYmNfdXBkYXRlX3N0YXRlX2NhY2hlKHN0YXRlLCBjcnRjLCBw
bGFuZSk7DQo+ICAJZmJjLT5mbGlwX3BlbmRpbmcgPSB0cnVlOw0KPiANCj4gLQlpZiAoIWludGVs
X2ZiY19jYW5fZmxpcF9udWtlKHN0YXRlLCBjcnRjLCBwbGFuZSkpIHsNCj4gLQkJaW50ZWxfZmJj
X2RlYWN0aXZhdGUoZmJjLCAidXBkYXRlIHBlbmRpbmciKTsNCj4gKwlpZiAoaW50ZWxfZmJjX2Nh
bl9mbGlwX251a2Uoc3RhdGUsIGNydGMsIHBsYW5lKSkNCj4gKwkJcmV0dXJuIG5lZWRfdmJsYW5r
X3dhaXQ7DQo+IA0KPiAtCQkvKg0KPiAtCQkgKiBEaXNwbGF5IFdBICMxMTk4OiBnbGsrDQo+IC0J
CSAqIE5lZWQgYW4gZXh0cmEgdmJsYW5rIHdhaXQgYmV0d2VlbiBGQkMgZGlzYWJsZSBhbmQgbW9z
dA0KPiBwbGFuZQ0KPiAtCQkgKiB1cGRhdGVzLiBCc3BlYyBzYXlzIHRoaXMgaXMgb25seSBuZWVk
ZWQgZm9yIHBsYW5lIGRpc2FibGUsIGJ1dA0KPiAtCQkgKiB0aGF0IGlzIG5vdCB0cnVlLiBUb3Vj
aGluZyBtb3N0IHBsYW5lIHJlZ2lzdGVycyB3aWxsIGNhdXNlIHRoZQ0KPiAtCQkgKiBjb3JydXB0
aW9uIHRvIGFwcGVhci4gQWxzbyBTS0wvZGVyaXZhdGl2ZXMgZG8gbm90IHNlZW0gdG8gYmUNCj4g
LQkJICogYWZmZWN0ZWQuDQo+IC0JCSAqDQo+IC0JCSAqIFRPRE86IGNvdWxkIG9wdGltaXplIHRo
aXMgYSBiaXQgYnkgc2FtcGxpbmcgdGhlIGZyYW1lDQo+IC0JCSAqIGNvdW50ZXIgd2hlbiB3ZSBk
aXNhYmxlIEZCQyAoaWYgaXQgd2FzIGFscmVhZHkgZG9uZSBlYXJsaWVyKQ0KPiAtCQkgKiBhbmQg
c2tpcHBpbmcgdGhlIGV4dHJhIHZibGFuayB3YWl0IGJlZm9yZSB0aGUgcGxhbmUgdXBkYXRlDQo+
IC0JCSAqIGlmIGF0IGxlYXN0IG9uZSBmcmFtZSBoYXMgYWxyZWFkeSBwYXNzZWQuDQo+IC0JCSAq
Lw0KPiAtCQlpZiAoZmJjLT5hY3RpdmF0ZWQgJiYNCj4gLQkJICAgIERJU1BMQVlfVkVSKGk5MTUp
ID49IDEwKQ0KPiAtCQkJbmVlZF92Ymxhbmtfd2FpdCA9IHRydWU7DQo+IC0JCWZiYy0+YWN0aXZh
dGVkID0gZmFsc2U7DQo+IC0JfQ0KPiArCWludGVsX2ZiY19kZWFjdGl2YXRlKGZiYywgInVwZGF0
ZSBwZW5kaW5nIik7DQo+ICsNCj4gKwkvKg0KPiArCSAqIERpc3BsYXkgV0EgIzExOTg6IGdsaysN
Cj4gKwkgKiBOZWVkIGFuIGV4dHJhIHZibGFuayB3YWl0IGJldHdlZW4gRkJDIGRpc2FibGUgYW5k
IG1vc3QgcGxhbmUNCj4gKwkgKiB1cGRhdGVzLiBCc3BlYyBzYXlzIHRoaXMgaXMgb25seSBuZWVk
ZWQgZm9yIHBsYW5lIGRpc2FibGUsIGJ1dA0KPiArCSAqIHRoYXQgaXMgbm90IHRydWUuIFRvdWNo
aW5nIG1vc3QgcGxhbmUgcmVnaXN0ZXJzIHdpbGwgY2F1c2UgdGhlDQo+ICsJICogY29ycnVwdGlv
biB0byBhcHBlYXIuIEFsc28gU0tML2Rlcml2YXRpdmVzIGRvIG5vdCBzZWVtIHRvIGJlDQo+ICsJ
ICogYWZmZWN0ZWQuDQo+ICsJICoNCj4gKwkgKiBUT0RPOiBjb3VsZCBvcHRpbWl6ZSB0aGlzIGEg
Yml0IGJ5IHNhbXBsaW5nIHRoZSBmcmFtZQ0KPiArCSAqIGNvdW50ZXIgd2hlbiB3ZSBkaXNhYmxl
IEZCQyAoaWYgaXQgd2FzIGFscmVhZHkgZG9uZSBlYXJsaWVyKQ0KPiArCSAqIGFuZCBza2lwcGlu
ZyB0aGUgZXh0cmEgdmJsYW5rIHdhaXQgYmVmb3JlIHRoZSBwbGFuZSB1cGRhdGUNCj4gKwkgKiBp
ZiBhdCBsZWFzdCBvbmUgZnJhbWUgaGFzIGFscmVhZHkgcGFzc2VkLg0KPiArCSAqLw0KPiArCWlm
IChmYmMtPmFjdGl2YXRlZCAmJiBESVNQTEFZX1ZFUihpOTE1KSA+PSAxMCkNCj4gKwkJbmVlZF92
Ymxhbmtfd2FpdCA9IHRydWU7DQo+ICsJZmJjLT5hY3RpdmF0ZWQgPSBmYWxzZTsNCj4gDQo+ICAJ
cmV0dXJuIG5lZWRfdmJsYW5rX3dhaXQ7DQo+ICB9DQo+IC0tDQo+IDIuMzIuMA0KDQo=
