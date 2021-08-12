Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7193EA81A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 17:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B2926E42A;
	Thu, 12 Aug 2021 15:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2F436E42A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 15:56:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="194967869"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="194967869"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 08:56:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="676815217"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 12 Aug 2021 08:56:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 08:56:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 08:56:34 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Thu, 12 Aug 2021 08:56:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "tjaalton@ubuntu.com" <tjaalton@ubuntu.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915: Implement Wa_1508744258
Thread-Index: AQHXdD45obOdhfGD8EmYDUeHQ+Vv66tv4OaAgAAysYCAAJ/dgA==
Date: Thu, 12 Aug 2021 15:56:33 +0000
Message-ID: <8f1f972e969fc316eeed501cbfba3aafbc941635.camel@intel.com>
References: <20210708211827.288601-1-jose.souza@intel.com>
 <20210708211827.288601-2-jose.souza@intel.com>
 <a33d19b3-8ee0-2923-ab18-85bf65454b8a@ubuntu.com>
 <b4d84d43-a11d-2607-49ee-e1109f781435@ubuntu.com>
In-Reply-To: <b4d84d43-a11d-2607-49ee-e1109f781435@ubuntu.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <6EFD3826A8F9A6439DA355524018B280@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Implement Wa_1508744258
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

T24gVGh1LCAyMDIxLTA4LTEyIGF0IDA5OjI5ICswMzAwLCBUaW1vIEFhbHRvbmVuIHdyb3RlOg0K
PiBPbiAxMi44LjIwMjEgNi4yNywgVGltbyBBYWx0b25lbiB3cm90ZToNCj4gPiBPbiA5LjcuMjAy
MSAwLjE4LCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOg0KPiA+ID4gU2FtZSBiaXQgd2Fz
IHJlcXVpcmVkIGZvciBXYV8xNDAxMjEzMTIyNyBpbiBERzEgbm93IGl0IGlzIGFsc28NCj4gPiA+
IHJlcXVpcmVkIGFzIFdhXzE1MDg3NDQyNTggdG8gVEdMLCBSS0wsIERHMSwgQURMLVMgYW5kIEFE
TC1QLg0KPiA+ID4gDQo+ID4gPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5A
aW50ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA3ICsrKysrKysNCj4gPiA+IMKgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgDQo+ID4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gPiA+IGluZGV4IGU1ZTNm
ODIwMDc0YTkuLmMzNDYyMjllMmJlMDAgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+ID4gPiBAQCAtNjcwLDYgKzY3MCwxMyBA
QCBzdGF0aWMgdm9pZCBnZW4xMl9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgDQo+ID4gPiBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBG
Rl9NT0RFMl9HU19USU1FUl9NQVNLLA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEZG
X01PREUyX0dTX1RJTUVSXzIyNCwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwKTsN
Cj4gPiA+ICsNCj4gPiA+ICvCoMKgwqAgLyoNCj4gPiA+ICvCoMKgwqDCoCAqIFdhXzE0MDEyMTMx
MjI3OmRnMQ0KPiA+ID4gK8KgwqDCoMKgICogV2FfMTUwODc0NDI1ODp0Z2wscmtsLGRnMSxhZGwt
cyxhZGwtcA0KPiA+ID4gK8KgwqDCoMKgICovDQo+ID4gPiArwqDCoMKgIHdhX21hc2tlZF9lbih3
YWwsIEdFTjdfQ09NTU9OX1NMSUNFX0NISUNLRU4xLA0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBHRU45X1JIV09fT1BUSU1JWkFUSU9OX0RJU0FCTEUpOw0KPiA+ID4gwqAgfQ0KPiA+
ID4gwqAgc3RhdGljIHZvaWQgZGcxX2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSwNCj4gPiA+IA0KPiA+IA0KPiA+IEhpLCBJIGRvbid0IHNlZSB0aGlz
IChvciBwYXRjaGVzIDMsIDQpIGluIGRybS1pbnRlbC1uZXh0LCBhcmUgdGhleSBub3QgDQo+ID4g
bmVlZGVkIGFueW1vcmU/DQo+IA0KPiBidXQgaXMgaW4gZHJtLWludGVsLWd0LW5leHQuLg0KDQpZ
ZXAsIGRpc3BsYXkgY29kZSBjYW4gZ28gdG8gZHJtLWludGVsLW5leHQgYW5kIGd0IGNvZGUgZ29l
cyB0byBkcm0taW50ZWwtZ3QtbmV4dA0KDQo+IA0KPiANCg0K
