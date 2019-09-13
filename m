Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0921B2896
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Sep 2019 00:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B48266F49A;
	Fri, 13 Sep 2019 22:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532DF6F49A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 22:44:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 15:44:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="190458955"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga006.jf.intel.com with ESMTP; 13 Sep 2019 15:44:28 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Sep 2019 15:44:28 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.133]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.227]) with mapi id 14.03.0439.000;
 Fri, 13 Sep 2019 15:44:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/tgl: Add missing ddi clock
 select during DP init sequence
Thread-Index: AQHVaSCh7SIMD/4QRE6mhRZ1j+sVDKcqrK+A
Date: Fri, 13 Sep 2019 22:44:28 +0000
Message-ID: <e37e5050f0c4eb9adc7253bf00488d9fac048e13.camel@intel.com>
References: <20190912011016.8353-1-jose.souza@intel.com>
In-Reply-To: <20190912011016.8353-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <DC75527C0A67B84DAED0FC4807F57579@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/tgl: Add missing ddi clock
 select during DP init sequence
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
Cc: "Taylor@freedesktop.org" <Taylor@freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgd2FzIHN1cGVyc2VkZSBieSANCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjY2OTUvDQoNCk9uIFdlZCwgMjAxOS0wOS0xMSBhdCAxODoxMCAtMDcw
MCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gRnJvbTogIlRheWxvciwgQ2xpbnRv
biBBIiA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+DQo+IA0KPiBTdGVwIDQuYiB3YXMgY29t
cGxldGUgbWlzc2VkIGJlY2F1c2UgaXQgaXMgb25seSByZXF1aXJlZCB0byBUQyBhbmQNCj4gVEJU
Lg0KPiANCj4gQnNwZWM6IDQ5MTkwDQo+IFNpZ25lZC1vZmYtYnk6IFRheWxvciwgQ2xpbnRvbiBB
IDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNSArKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGluZGV4IDNlNjM5NDEzOTk2NC4uODE3OTJhMDRlMGFh
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAg
LTMyMjQsMTEgKzMyMjQsMTQgQEAgc3RhdGljIHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2RwKHN0
cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCWludGVsX2VkcF9wYW5lbF9vbihp
bnRlbF9kcCk7DQo+ICANCj4gIAkvKg0KPiAtCSAqIDEuYiwgMy4gYW5kIDQuIGlzIGRvbmUgYmVm
b3JlIHRnbF9kZGlfcHJlX2VuYWJsZV9kcCgpIGJ5Og0KPiArCSAqIDEuYiwgMy4gYW5kIDQuYSBp
cyBkb25lIGJlZm9yZSB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoKSBieToNCj4gIAkgKiBoYXN3ZWxs
X2NydGNfZW5hYmxlKCktPmludGVsX2VuY29kZXJzX3ByZV9wbGxfZW5hYmxlKCkgYW5kDQo+ICAJ
ICogaGFzd2VsbF9jcnRjX2VuYWJsZSgpLT5pbnRlbF9lbmFibGVfc2hhcmVkX2RwbGwoKQ0KPiAg
CSAqLw0KPiAgDQo+ICsJLyogNC5iICovDQo+ICsJaW50ZWxfZGRpX2Nsa19zZWxlY3QoZW5jb2Rl
ciwgY3J0Y19zdGF0ZSk7DQo+ICsNCj4gIAkvKiA1LiAqLw0KPiAgCWlmICghaW50ZWxfcGh5X2lz
X3RjKGRldl9wcml2LCBwaHkpIHx8DQo+ICAJICAgIGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BP
UlRfVEJUX0FMVCkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
