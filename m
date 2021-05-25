Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 213983907BB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 19:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C35D6EA8D;
	Tue, 25 May 2021 17:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489C66EA8D
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 17:31:08 +0000 (UTC)
IronPort-SDR: 9x5ZGLMQcinYifdMxg0djtkGGjrWOH0W/Ezclald/TXu96RfQlcNzZYNDUAV1opnfKbOBlimCj
 rUFcDUdNXgpg==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="202290407"
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="202290407"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2021 10:31:06 -0700
IronPort-SDR: 5MOn45MjBGNTsZJPuI9mCpE6onVz3Pt4/0J+587e9GY9X/eMgbPyE0CqvU71NXWz/lxvcsaumg
 02NTuqAOcvkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,328,1613462400"; d="scan'208";a="396934994"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 25 May 2021 10:31:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 25 May 2021 10:31:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 25 May 2021 10:31:05 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Tue, 25 May 2021 10:31:05 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 5/5] drm/i915/display/adl_p: Disable PSR2
Thread-Index: AQHXUOYKlUHP4SxwOkaBsLF477iPXKr0fHuAgABvewA=
Date: Tue, 25 May 2021 17:31:04 +0000
Message-ID: <2106acfeb01334e5ad3f13a1676fcb5162c26f88.camel@intel.com>
References: <20210524214805.259692-1-jose.souza@intel.com>
 <20210524214805.259692-5-jose.souza@intel.com> <877djnccbm.fsf@intel.com>
In-Reply-To: <877djnccbm.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <D5CEAE403831084EB4DDCEA1AC0BBA83@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/display/adl_p: Disable PSR2
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

T24gVHVlLCAyMDIxLTA1LTI1IGF0IDEzOjU1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAyNCBNYXkgMjAyMSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOg0KPiA+IFdlIGFyZSBtaXNzaW5nIHRoZSBpbXBsZW1lbnRhdGlvbiBv
ZiBzb21lIHdvcmthcm91bmRzIHRvIGVuYWJsZWQgUFNSMg0KPiA+IGluIEFsZGVybGFrZSBQLCBz
byB0byBhdm9pZCBhbnkgQ0kgcmVwb3J0IG9mIGlzc3VlcyBhcm91bmQgUFNSMg0KPiA+IGRpc2Fi
bGluZyBpdCB1bnRpbCBhbGwgUFNSMiB3b3JrYXJvdW5kcyBhcmUgaW1wbGVtZW50ZWQuDQo+ID4g
DQo+ID4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDEwICsrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMo
KykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
PiBpbmRleCBjNTcyMTA4NjIyMDYuLjQ2YmQ3NzY2OWVhZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC03NjUsNiArNzY1LDE2IEBA
IHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ID4gIAkJcmV0dXJuIGZhbHNlOw0KPiA+ICAJfQ0KPiA+ICANCj4gPiArCS8qDQo+
ID4gKwkgKiBXZSBhcmUgbWlzc2luZyB0aGUgaW1wbGVtZW50YXRpb24gb2Ygc29tZSB3b3JrYXJv
dW5kcyB0byBlbmFibGVkIFBTUjINCj4gPiArCSAqIGFsc28gV2luZG93cyB0ZWFtIGZvdW5kIGlz
c3VlcyBpbiB0aGlzIHN0ZXBwaW5nIHRoYXQgYXJlIGNhdXNpbmcNCj4gPiArCSAqIGlzc3VlcyBp
biBtb3N0IFBTUjIgcGFuZWxzLg0KPiANCj4gInRoaXMgc3RlcHBpbmciPw0KPiANCj4gTWF5YmUg
anVzdCBzYXkgd2UgbmVlZCB0byBpbXBsZW1lbnQgY2VydGFpbiB3b3JrYXJvdW5kcyBiZWZvcmUg
ZW5hYmxpbmcNCj4gUFNSMj8NCj4gDQoNCkZpeGVkIGFuZCBwdXNoZWQuDQoNCj4gQlIsDQo+IEph
bmkuDQo+IA0KPiANCj4gPiArCSAqLw0KPiA+ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2
KSkgew0KPiA+ICsJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiUFNSMiBpcyBtaXNzaW5n
IHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB3b3JrYXJvdW5kc1xuIik7DQo+ID4gKwkJcmV0dXJuIGZh
bHNlOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgCWlmICghdHJhbnNjb2Rlcl9oYXNfcHNyMihkZXZf
cHJpdiwgY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpKSB7DQo+ID4gIAkJZHJtX2RiZ19rbXMo
JmRldl9wcml2LT5kcm0sDQo+ID4gIAkJCSAgICAiUFNSMiBub3Qgc3VwcG9ydGVkIGluIHRyYW5z
Y29kZXIgJXNcbiIsDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
