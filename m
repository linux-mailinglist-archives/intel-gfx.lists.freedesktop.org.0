Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5294341686A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 01:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FE806E123;
	Thu, 23 Sep 2021 23:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7601F6E123
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 23:18:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="246424731"
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="246424731"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 16:18:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,318,1624345200"; d="scan'208";a="514302131"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by fmsmga008.fm.intel.com with ESMTP; 23 Sep 2021 16:18:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 24 Sep 2021 00:18:32 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 23 Sep 2021 16:18:31 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 02/13] drm/i915/adlp/tc: Fix PHY connected check for
 Thunderbolt mode
Thread-Index: AQHXrn7iWo6HIVnaBEGpdhzgSDcT+6uyvJQA
Date: Thu, 23 Sep 2021 23:18:30 +0000
Message-ID: <6f82ecb6ff1d3ce8606b8cfadd0605677d44125b.camel@intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <20210921002313.1132357-3-imre.deak@intel.com>
In-Reply-To: <20210921002313.1132357-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <64BDA974472D3648AED4BFB94515E406@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/adlp/tc: Fix PHY connected
 check for Thunderbolt mode
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

T24gVHVlLCAyMDIxLTA5LTIxIGF0IDAzOjIzICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IEFETC1QIHRoZSBQSFkgcmVhZHkgKGFrYSBzdGF0dXMgY29tcGxldGUgb24gb3RoZXIgcGxhdGZv
cm1zKSBmbGFnIGlzDQo+IGFsd2F5cyBzZXQsIGJlc2lkZXMgd2hlbiBhIERQLWFsdCwgbGVnYWN5
IHNpbmsgaXMgY29ubmVjdGVkIGFsc28gd2hlbiBhDQo+IFRCVCBzaW5rIGlzIGNvbm5lY3RlZCBv
ciBub3RoaW5nIGlzIGNvbm5lY3RlZC4gU28gYXNzdW1lIHRoZSBQSFkgdG8gYmUNCj4gY29ubmVj
dGVkIHdoZW4gYm90aCB0aGUgVEJUIGxpdmUgc3RhdHVzIGFuZCBQSFkgcmVhZHkgZmxhZ3MgYXJl
IHNldC4NCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8IDQgKysr
Kw0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCAzZmZlY2U1NjhlZDk4Li43ZGMzNjk2
MDg1YzcxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+
IEBAIC01MDksNiArNTA5LDEwIEBAIHN0YXRpYyBib29sIGljbF90Y19waHlfaXNfY29ubmVjdGVk
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgCQlyZXR1cm4gZGlnX3Bv
cnQtPnRjX21vZGUgPT0gVENfUE9SVF9UQlRfQUxUOw0KPiAgCX0NCj4gIA0KPiArCS8qIE9uIEFE
TC1QIHRoZSBQSFkgY29tcGxldGUgZmxhZyBpcyBzZXQgaW4gVEJUIG1vZGUgYXMgd2VsbC4gKi8N
Cj4gKwlpZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkgJiYgZGlnX3BvcnQtPnRjX21vZGUgPT0gVENf
UE9SVF9UQlRfQUxUKQ0KPiArCQlyZXR1cm4gdHJ1ZTsNCg0KSSBkb24ndCBoYXZlIGhhcmR3YXJl
IHRvIHRlc3QoTXkgYWRsLXAgZG8gbm90IGhhdmUgVEMgcG9ydHMgZW5hYmxlZCkgYnV0IGlmIHBo
eSBjb21wbGV0ZS9yZWFkeSBpcyBzZXQgaW4gVEJUIG1vZGUsIHRoaXMgY2hhbmdlIG1ha2VzIHNl
bnNlLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQoNCj4gKw0KPiAgCWlmICghdGNfcGh5X2lzX293bmVkKGRpZ19wb3J0KSkgew0K
PiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUG9ydCAlczogUEhZIG5vdCBvd25lZFxuIiwN
Cj4gIAkJCSAgICBkaWdfcG9ydC0+dGNfcG9ydF9uYW1lKTsNCg0K
