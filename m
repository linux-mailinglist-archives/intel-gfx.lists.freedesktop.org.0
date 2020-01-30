Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1902114E095
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:13:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F0C6FA10;
	Thu, 30 Jan 2020 18:13:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32EA06FA10
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 18:13:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 10:13:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,382,1574150400"; d="scan'208";a="224199131"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jan 2020 10:13:15 -0800
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Jan 2020 10:13:15 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.91]) with mapi id 14.03.0439.000;
 Thu, 30 Jan 2020 10:13:15 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/9] drm/i915/dsb: Replace HAS_DSB check
 with dsb->cmd_buf check
Thread-Index: AQHV1tDU8ouLW1tomUeQIKoHt2ASQagECloA
Date: Thu, 30 Jan 2020 18:13:15 +0000
Message-ID: <db28322f94782e13905cac3ccdaaef9e3cb665b7.camel@intel.com>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.250]
Content-ID: <08C395F960642546889E344819EA7BBA@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/dsb: Replace HAS_DSB check
 with dsb->cmd_buf check
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

T24gV2VkLCAyMDIwLTAxLTI5IGF0IDIwOjIwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UgbWF5IHdhbnQgdG8gbm90IHVzZSB0aGUgRFNCIGV2ZW4gaWYgdGhlIHBsYXRmb3Jt
IGhhcyBvbmUuDQo+IFNvIHJlcGxhY2UgdGhlIEhBU19EU0IgY2hlY2sgaW4gdGhlIF9wdXQoKSB3
aXRoIGEgY21kX2J1ZiBjaGVjaw0KPiB0aGF0IHdpbGwgd29yayBpbiBlaXRoZXIgY2FzZS4NCg0K
UmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMgfCAzICstLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAy
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RzYi5jDQo+IGluZGV4IDlkZDE4MTQ0YTY2NC4uMTI3NzZmMDlmMjI3IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTE2MCw5ICsxNjAsOCBA
QCBpbnRlbF9kc2JfZ2V0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgdm9pZCBpbnRlbF9k
c2JfcHV0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IGNvbnRhaW5lcl9vZihkc2IsIHR5cGVvZigqY3J0YyksDQo+IGRzYik7DQo+IC0J
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsN
Cj4gIA0KPiAtCWlmICghSEFTX0RTQihpOTE1KSkNCj4gKwlpZiAoIWRzYi0+Y21kX2J1ZikNCj4g
IAkJcmV0dXJuOw0KPiAgDQo+ICAJaWYgKFdBUk5fT04oZHNiLT5yZWZjb3VudCA9PSAwKSkNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
