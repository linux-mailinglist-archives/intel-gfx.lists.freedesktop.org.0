Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 999A93ABE46
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 23:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EBEA6E047;
	Thu, 17 Jun 2021 21:39:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944326E047
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 21:39:36 +0000 (UTC)
IronPort-SDR: LRg7MACnlLIFy/CjOSeNLow+czRNc2HAVN0J3KoWXv65aPD8qyfWQXv6cga3CdVA8TB0U1ciSA
 F4F4cC+qHmBA==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="227975769"
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="227975769"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 14:39:36 -0700
IronPort-SDR: QZnkk78v0+PyuOjoDigU9v95Wl2bYHoGq0+9M5/jf85PLgJPOncpx7vs92iJaIStthToI4s3iO
 P7SdXSSebxJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,281,1616482800"; d="scan'208";a="422006228"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga002.jf.intel.com with ESMTP; 17 Jun 2021 14:39:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 14:39:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 17 Jun 2021 14:39:35 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Thu, 17 Jun 2021 14:39:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "keescook@chromium.org" <keescook@chromium.org>
Thread-Topic: [PATCH] drm/i915/display: Do not zero past infoframes.vsc
Thread-Index: AQHXY8BcGT953PO6i0Wh6GCy2Ii1r6sZMWwA
Date: Thu, 17 Jun 2021 21:39:35 +0000
Message-ID: <11498e1539b668ff6d6ce841b6db6aa70cf51180.camel@intel.com>
References: <20210617213301.1824728-1-keescook@chromium.org>
In-Reply-To: <20210617213301.1824728-1-keescook@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <172C0C34648AF04789BF25375C509C74@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Do not zero past
 infoframes.vsc
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTA2LTE3IGF0IDE0OjMzIC0wNzAwLCBLZWVzIENvb2sgd3JvdGU6DQo+IGlu
dGVsX2RwX3ZzY19zZHBfdW5wYWNrKCkgd2FzIHVzaW5nIGEgbWVtc2V0KCkgc2l6ZSAoMzYsIHN0
cnVjdCBkcF9zZHApDQo+IGxhcmdlciB0aGFuIHRoZSBkZXN0aW5hdGlvbiAoMjQsIHN0cnVjdCBk
cm1fZHBfdnNjX3NkcCksIGNsb2JiZXJpbmcNCj4gZmllbGRzIGluIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlIGFmdGVyIGluZm9mcmFtZXMudnNjLiBVc2UgdGhlIGFjdHVhbA0KPiB0YXJnZXQgc2l6
ZSBmb3IgdGhlIG1lbXNldCgpLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IEZpeGVzOiAxYjQwNGI3ZGJiMTAgKCJk
cm0vaTkxNS9kcDogUmVhZCBvdXQgRFAgU0RQcyIpDQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnDQo+IFNpZ25lZC1vZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDIgKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCA1YzkyMjIyODMw
NDQuLjZjYzAzYjllNDMyMSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiBAQCAtMjg2OCw3ICsyODY4LDcgQEAgc3RhdGljIGludCBpbnRlbF9kcF92c2Nf
c2RwX3VucGFjayhzdHJ1Y3QgZHJtX2RwX3ZzY19zZHAgKnZzYywNCj4gIAlpZiAoc2l6ZSA8IHNp
emVvZihzdHJ1Y3QgZHBfc2RwKSkNCj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+ICANCj4gLQltZW1z
ZXQodnNjLCAwLCBzaXplKTsNCj4gKwltZW1zZXQodnNjLCAwLCBzaXplb2YoKnZzYykpOw0KPiAg
DQo+ICAJaWYgKHNkcC0+c2RwX2hlYWRlci5IQjAgIT0gMCkNCj4gIAkJcmV0dXJuIC1FSU5WQUw7
DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
