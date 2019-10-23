Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F984E21C0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 19:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9796E138;
	Wed, 23 Oct 2019 17:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEF9C6E138
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 17:29:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 10:29:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="188322132"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga007.jf.intel.com with ESMTP; 23 Oct 2019 10:29:50 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 23 Oct 2019 10:29:50 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.18]) with mapi id 14.03.0439.000;
 Wed, 23 Oct 2019 10:29:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Ap, 
 Kamal" <kamal.ap@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Making loglevel of PSR2/SU logs same.
Thread-Index: AQHViXqK81Mwv4CEzUG82m30Aqx6r6do8VSA
Date: Wed, 23 Oct 2019 17:29:50 +0000
Message-ID: <18f6460de2d258426a57eba8721d8955fdc4ee1e.camel@intel.com>
References: <1571819128-3264-1-git-send-email-kamal.ap@intel.com>
In-Reply-To: <1571819128-3264-1-git-send-email-kamal.ap@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <C49504C8E9BD9E45AE655D73309EDEA8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Making loglevel of PSR2/SU logs
 same.
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

T24gV2VkLCAyMDE5LTEwLTIzIGF0IDEzOjU1ICswNTMwLCBrYW1hbC5hcEBpbnRlbC5jb20gd3Jv
dGU6DQo+IEZyb206ICJBcCBLYW1hbCIgPGthbWFsLmFwQGludGVsLmNvbT4NCj4gDQo+ICdMaW5r
IENSQyBlcnJvcicgd2lsbCBub3cgaGF2ZSBzYW1lIGVycm9yIGxldmVsIGFzDQo+IG90aGVyIFBT
UjIgZXJyb3JzIGxpa2UgJ1JGQiBzdG9yYWdlIGVycm9yJyBhbmQNCj4gJ1ZTQyBTRFAgdW5jb3Jy
ZWN0YWJsZSBlcnJvcicuDQoNClllYWggdGhpcyBzaG91bGQgYWxzbyBiZSBhIGRlYnVnIG1lc3Nh
Z2UuDQpXaWxsIHB1c2ggaXQgYXMgc29vbiBhcyB3ZSBnZXQgYSBzaGFyZHMgcmVzdWx0Lg0KDQpS
ZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEFwIEthbWFsIDxrYW1hbC5hcEBpbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIgKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDUwZjIy
YWJjZDMwZS4uYTZhOTkyNzI5Y2Y1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE0MzcsNyArMTQzNyw3IEBAIHZvaWQgaW50ZWxfcHNyX3No
b3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+ICAJaWYgKHZhbCAmIERQ
X1BTUl9WU0NfU0RQX1VOQ09SUkVDVEFCTEVfRVJST1IpDQo+ICAJCURSTV9ERUJVR19LTVMoIlBT
UiBWU0MgU0RQIHVuY29ycmVjdGFibGUgZXJyb3IsDQo+IGRpc2FibGluZyBQU1JcbiIpOw0KPiAg
CWlmICh2YWwgJiBEUF9QU1JfTElOS19DUkNfRVJST1IpDQo+IC0JCURSTV9FUlJPUigiUFNSIExp
bmsgQ1JDIGVycm9yLCBkaXNhYmxpbmcgUFNSXG4iKTsNCj4gKwkJRFJNX0RFQlVHX0tNUygiUFNS
IExpbmsgQ1JDIGVycm9yLCBkaXNhYmxpbmcgUFNSXG4iKTsNCj4gIA0KPiAgCWlmICh2YWwgJiB+
ZXJyb3JzKQ0KPiAgCQlEUk1fRVJST1IoIlBTUl9FUlJPUl9TVEFUVVMgdW5oYW5kbGVkIGVycm9y
cyAleFxuIiwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
