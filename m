Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5863B954D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 19:14:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FCC889E7C;
	Thu,  1 Jul 2021 17:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB47889E7C
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 17:14:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="205571813"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="205571813"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 10:14:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="457744189"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jul 2021 10:14:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 1 Jul 2021 18:14:05 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Thu, 1 Jul 2021 10:14:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Auld, Matthew" <matthew.auld@intel.com>
Thread-Topic: [PATCH] drm/i915/display: check if compressed_llb was allocated
Thread-Index: AQHXblgMkLisDA2+i0O3Tup3/LZDEasu0sIA
Date: Thu, 1 Jul 2021 17:14:03 +0000
Message-ID: <8ab278470961d8729d9f1beccbd4d3bd27cda708.camel@intel.com>
References: <20210701090326.1056452-1-matthew.auld@intel.com>
In-Reply-To: <20210701090326.1056452-1-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <6269D3B981A79D46B09515415DBFA2DC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: check if compressed_llb
 was allocated
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

T24gVGh1LCAyMDIxLTA3LTAxIGF0IDEwOjAzICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6DQo+
IElmIHdlIGhpdCB0aGUgZXJyb3IgcGF0aCBoZXJlIHdlIHVuY29uZGl0aW9uYWxseSBjYWxsDQo+
IGk5MTVfZ2VtX3N0b2xlbl9yZW1vdmVfbm9kZSwgZXZlbiB0aG91Z2ggd2Ugb25seSBhbGxvY2F0
ZSB0aGUNCj4gY29tcHJlc3NlZF9sbGIgb24gb2xkZXIgcGxhdGZvcm1zLiBUaGVyZWZvcmUgd2Ug
c2hvdWxkIGZpcnN0IGNoZWNrIHRoYXQNCj4gd2UgYWN0dWFsbHkgYWxsb2NhdGVkIHRoZSBub2Rl
IGJlZm9yZSB0cnlpbmcgdG8gcmVtb3ZlIGl0Lg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFJlZmVyZW5jZXM6IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMzcwOQ0KPiBG
aXhlczogNDZiMmM0MGUwYWYzICgiZHJtL2k5MTUvZmJjOiBBbGxvY2F0ZSBsbGIgYmVmb3JlIGNm
YiIpDQo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMyArKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCA3ZGM3MmU0
YTQ2NTYuLjgyZWZmYjY0YTNiOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jDQo+IEBAIC01MTYsNyArNTE2LDggQEAgc3RhdGljIGludCBpbnRlbF9mYmNf
YWxsb2NfY2ZiKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAlyZXR1cm4g
MDsNCj4gIA0KPiAgZXJyX2xsYjoNCj4gLQlpOTE1X2dlbV9zdG9sZW5fcmVtb3ZlX25vZGUoZGV2
X3ByaXYsICZmYmMtPmNvbXByZXNzZWRfbGxiKTsNCj4gKwlpZiAoZHJtX21tX25vZGVfYWxsb2Nh
dGVkKCZmYmMtPmNvbXByZXNzZWRfbGxiKSkNCj4gKwkJaTkxNV9nZW1fc3RvbGVuX3JlbW92ZV9u
b2RlKGRldl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2xsYik7DQo+ICBlcnI6DQo+ICAJaWYgKGRy
bV9tbV9pbml0aWFsaXplZCgmZGV2X3ByaXYtPm1tLnN0b2xlbikpDQo+ICAJCWRybV9pbmZvX29u
Y2UoJmRldl9wcml2LT5kcm0sICJub3QgZW5vdWdoIHN0b2xlbiBzcGFjZSBmb3IgY29tcHJlc3Nl
ZCBidWZmZXIgKG5lZWQgJWQgbW9yZSBieXRlcyksIGRpc2FibGluZy4gSGludDogeW91IG1heSBi
ZSBhYmxlIHRvIGluY3JlYXNlIHN0b2xlbiBtZW1vcnkgc2l6ZSBpbiB0aGUgQklPUyB0byBhdm9p
ZCB0aGlzLlxuIiwgc2l6ZSk7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
