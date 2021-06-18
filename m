Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC963AD426
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 23:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 331FF6EAAD;
	Fri, 18 Jun 2021 21:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9349D6EAAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 21:07:53 +0000 (UTC)
IronPort-SDR: 0CJfDk3igSvomKKjwclKhFpREzYVioJrMpSiyPFB4IIda8+5x3VxiOKUrowzVSWU931lverg6Z
 WPrFxngPZODA==
X-IronPort-AV: E=McAfee;i="6200,9189,10019"; a="228154454"
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="228154454"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 14:07:53 -0700
IronPort-SDR: p9uwsmoqdyD4ul/Na/dvNFg8V4b/TjIvdTCzI+DS2CpUTZKXrzyp/UkYDpqhO9oq082R6ZmQJX
 Ir4obaiFBiiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,284,1616482800"; d="scan'208";a="453280278"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jun 2021 14:07:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 18 Jun 2021 14:07:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 18 Jun 2021 14:07:52 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Fri, 18 Jun 2021 14:07:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 9/9] drm/i915/fbc: Allocate llb before cfb
Thread-Index: AQHXXicXeDCypuezMEmk2ll9mXsJ2qsaxhgA
Date: Fri, 18 Jun 2021 21:07:52 +0000
Message-ID: <15e5b32977cd5341c19524438473135596cf2b46.camel@intel.com>
References: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
 <20210610183237.3920-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20210610183237.3920-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <77BBF998539C9141A9E266435F7A7CBF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/fbc: Allocate llb before cfb
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

d2hvbGUgc2VyaWVzIGlzDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQoNCk9uIFRodSwgMjAyMS0wNi0xMCBhdCAyMTozMiArMDMwMCwg
VmlsbGUgU3lyamFsYSB3cm90ZToNCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFNpbmNlIHRoZSBsbGIgYWxsb2NhdGlvbiBoYXMg
YSBmaXhlZCBzaXplLCBsZXQncyBncmFiIGl0IGJlZm9yZQ0KPiB0aGUgcG90ZW50aWFsbHkgdmFy
aWFibGUgc2l6ZWQgY2ZiLiBUaGF0IHNob3VsZCBhdm9pZCBzb21lIGFsbG9jYXRpb24NCj4gZmFp
bHVyZSBjYXNlcyBvbmNlIHdlIGFsbG93IGRpZmZlcmVudCBjb21wcmVzc2lvbiByYXRpb3MgZm9y
IEZCQzEuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMgfCAxOCArKysrKysrKystLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggYjZiZmI0NDM5YThiLi43ZGM3MmU0YTQ2
NTYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBA
QCAtNDkyLDYgKzQ5MiwxMyBAQCBzdGF0aWMgaW50IGludGVsX2ZiY19hbGxvY19jZmIoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+
ZHJtLA0KPiAgCQkgICAgZHJtX21tX25vZGVfYWxsb2NhdGVkKCZmYmMtPmNvbXByZXNzZWRfbGxi
KSk7DQo+ICANCj4gKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgNSAmJiAhSVNfRzRYKGRl
dl9wcml2KSkgew0KPiArCQlyZXQgPSBpOTE1X2dlbV9zdG9sZW5faW5zZXJ0X25vZGUoZGV2X3By
aXYsICZmYmMtPmNvbXByZXNzZWRfbGxiLA0KPiArCQkJCQkJICA0MDk2LCA0MDk2KTsNCj4gKwkJ
aWYgKHJldCkNCj4gKwkJCWdvdG8gZXJyOw0KPiArCX0NCj4gKw0KPiAgCXJldCA9IGZpbmRfY29t
cHJlc3Npb25fbGltaXQoZGV2X3ByaXYsIHNpemUsIGZiX2NwcCk7DQo+ICAJaWYgKCFyZXQpDQo+
ICAJCWdvdG8gZXJyX2xsYjsNCj4gQEAgLTUwMiwyMiArNTA5LDE1IEBAIHN0YXRpYyBpbnQgaW50
ZWxfZmJjX2FsbG9jX2NmYihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAN
Cj4gIAlmYmMtPmxpbWl0ID0gcmV0Ow0KPiAgDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA8IDUgJiYgIUlTX0c0WChkZXZfcHJpdikpIHsNCj4gLQkJcmV0ID0gaTkxNV9nZW1fc3RvbGVu
X2luc2VydF9ub2RlKGRldl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2xsYiwNCj4gLQkJCQkJCSAg
NDA5NiwgNDA5Nik7DQo+IC0JCWlmIChyZXQpDQo+IC0JCQlnb3RvIGVycl9mYjsNCj4gLQl9DQo+
IC0NCj4gIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gIAkJICAgICJyZXNlcnZlZCAl
bGx1IGJ5dGVzIG9mIGNvbnRpZ3VvdXMgc3RvbGVuIHNwYWNlIGZvciBGQkMsIGxpbWl0OiAlZFxu
IiwNCj4gIAkJICAgIGZiYy0+Y29tcHJlc3NlZF9mYi5zaXplLCBmYmMtPmxpbWl0KTsNCj4gIA0K
PiAgCXJldHVybiAwOw0KPiAgDQo+IC1lcnJfZmI6DQo+IC0JaTkxNV9nZW1fc3RvbGVuX3JlbW92
ZV9ub2RlKGRldl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2ZiKTsNCj4gIGVycl9sbGI6DQo+ICsJ
aTkxNV9nZW1fc3RvbGVuX3JlbW92ZV9ub2RlKGRldl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2xs
Yik7DQo+ICtlcnI6DQo+ICAJaWYgKGRybV9tbV9pbml0aWFsaXplZCgmZGV2X3ByaXYtPm1tLnN0
b2xlbikpDQo+ICAJCWRybV9pbmZvX29uY2UoJmRldl9wcml2LT5kcm0sICJub3QgZW5vdWdoIHN0
b2xlbiBzcGFjZSBmb3IgY29tcHJlc3NlZCBidWZmZXIgKG5lZWQgJWQgbW9yZSBieXRlcyksIGRp
c2FibGluZy4gSGludDogeW91IG1heSBiZSBhYmxlIHRvIGluY3JlYXNlIHN0b2xlbiBtZW1vcnkg
c2l6ZSBpbiB0aGUgQklPUyB0byBhdm9pZCB0aGlzLlxuIiwgc2l6ZSk7DQo+ICAJcmV0dXJuIC1F
Tk9TUEM7DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
