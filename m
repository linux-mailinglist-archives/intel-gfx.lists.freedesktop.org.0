Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0102D9548
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 10:33:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 879436E131;
	Mon, 14 Dec 2020 09:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6277B6E131
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 09:33:25 +0000 (UTC)
IronPort-SDR: uxLlUTUAYgTaELROSfZ+FrhVf/ekp1lXKvtcgTLQehzG7CbSvnLww1wQkd/+MlfXmdrpydz8IU
 J1jDxlxPhlmA==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="171170377"
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="171170377"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 01:33:24 -0800
IronPort-SDR: 3rprjGHI9RZcvjs8cx9tXlzLnq4RvntMnlXtQz/eiXN59UlY9osXOybIQeNIQOIj/uCSSt3Rhm
 /3RW0kAby74g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="381446086"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 14 Dec 2020 01:33:24 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 01:33:24 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 01:33:23 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Mon, 14 Dec 2020 09:33:21 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v5 2/6] drm/i915/display: Check plane damage clips
Thread-Index: AQHW0X9J/mAZyz/7hU6R11e7Z3Nlhan2VTmA
Date: Mon, 14 Dec 2020 09:33:21 +0000
Message-ID: <1b3330ee1344b388b80c07490844ae53db0dc01e.camel@intel.com>
References: <20201213183930.349592-1-jose.souza@intel.com>
 <20201213183930.349592-2-jose.souza@intel.com>
In-Reply-To: <20201213183930.349592-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <86DED2C356A0534F926170D5D6C0EEE7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 2/6] drm/i915/display: Check plane damage
 clips
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

T24gU3VuLCAyMDIwLTEyLTEzIGF0IDEwOjM5IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBDYWxsIHRoZSBmdW5jdGlvbiB0aGF0IHZhbGlkYXRlcyBldmVyeSBkYW1hZ2Ug
Y2xpcHMgb2YgZWFjaCBwbGFuZS4NCj4gQXMgaW4gY29tbWl0IDA5M2EzYTMwMDAwOSAoImRybS9p
OTE1OiBBZGQgcGxhbmUgZGFtYWdlIGNsaXBzDQo+IHByb3BlcnR5IikNCj4gdGhpcyBwcm9wZXJ0
eSB3YXMgb25seSBlbmFibGVkIGZvciBnZW4xMisgb25seSBjaGVja2luZyBpdCBmb3IgZ2VuMTIN
Cj4gdG9vLg0KPiANCj4gdjI6DQo+IC0gYWRkIGxvZ3MgdG8gdW5kZXJzcGFjZSB1bmRlcnN0YW5k
IHdoeSBjb21taXQgd2FzIHJlamVjdGVkDQo+IA0KPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2Fu
LWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDcgKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5jDQo+IGluZGV4IGI3ZTIwODgxNjA3NC4uY2I4NjJiYjhkNmZiIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gQEAg
LTI0OTIsNiArMjQ5MiwxMyBAQCBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVjayhzdHJ1Y3QNCj4g
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAlpZiAocmV0KQ0KPiAgCQlyZXR1cm4g
cmV0Ow0KPiAgDQo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsNCj4gKwkJcmV0
ID0gZHJtX2F0b21pY19oZWxwZXJfY2hlY2tfcGxhbmVfZGFtYWdlKGNydGNfc3RhdGUtDQo+ID51
YXBpLnN0YXRlLA0KPiArDQp3ZSBzaG91bGQgb25seSBleGNsdWRlIHRoZSBkYW1hZ2VkIGNsaXAg
d2hpY2ggaXMgb3V0c2lkZSBmYiBzcmMuDQp0aGVyZWZvcmUgaWYgdGhlcmUgaXMgYXQgbGVhc3Qg
b25lIGRhbWFnZSBjbGlwIGludGVyc2VjdCBmYiBzcmMgcmVjdCwNCndlIHNob3VsZCBoYW5kbGUg
dGhpcyBkYW1hZ2UgY2xpcCByZWdpb24uDQo+IAkJCQkJCQkgICAmcGxhbmVfc3RhdGUNCj4gLT51
YXBpKTsNCj4gKwkJaWYgKHJldCkNCj4gKwkJCXJldHVybiByZXQ7DQo+ICsJfQ0KPiArDQo+ICAJ
LyogSFcgb25seSBoYXMgOCBiaXRzIHBpeGVsIHByZWNpc2lvbiwgZGlzYWJsZSBwbGFuZSBpZg0K
PiBpbnZpc2libGUgKi8NCj4gIAlpZiAoIShwbGFuZV9zdGF0ZS0+aHcuYWxwaGEgPj4gOCkpDQo+
ICAJCXBsYW5lX3N0YXRlLT51YXBpLnZpc2libGUgPSBmYWxzZTsNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
