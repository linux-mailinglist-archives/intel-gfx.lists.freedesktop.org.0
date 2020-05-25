Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B4F1E0885
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20E189301;
	Mon, 25 May 2020 08:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 159E389301
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 08:14:04 +0000 (UTC)
IronPort-SDR: 1vokcPdHqa20MkqWkMA+8FOwq4X7+tbC0KPna+5vxJALVLt8UcGDyOy02WAtOcnEcnANoLNCTM
 7cG3FWzHwEcw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 01:14:03 -0700
IronPort-SDR: 6qYkwA/lhvZhx//3OigIOWd0kcvfI1hdrRbEBHHBUHI3qcYlFwRP3L4eDIH63wrXJtHqTHXA2l
 6WCVwWz83XZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="467896379"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga005.fm.intel.com with ESMTP; 25 May 2020 01:14:02 -0700
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 25 May 2020 09:14:01 +0100
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 May 2020 09:14:01 +0100
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Mon, 25 May 2020 09:14:01 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Vudum, Lakshminarayana"
 <lakshminarayana.vudum@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIENvbnNp?=
 =?utf-8?B?ZGVyIERCdWYgYmFuZHdpZHRoIHdoZW4gY2FsY3VsYXRpbmcgQ0RDTEsgKHJl?=
 =?utf-8?Q?v18)?=
Thread-Index: AQHWLzzWVtq0RL/yrkqgRfO1sNWvVaiyRqrbgAJS0QCAABX0AIADxr1R///wkgCAABEN7v//8KGAgAARmWI=
Date: Mon, 25 May 2020 08:14:01 +0000
Message-ID: <30e993160acf476c8f23cd3f7724d79a@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>,
 <159004412790.4443.16666170953617018239@emeril.freedesktop.org>
 <7805def3c6354f17bf7d57c416f000aa@intel.com>
 <159018481048.32320.7761007190791714467@build.alporthouse.com>,
 <159018952416.11139.8295799937981887072@build.alporthouse.com>
 <d391e915b930423ea02677a0b0afed3e@intel.com>,
 <159039381690.30979.6896983521245965877@build.alporthouse.com>
 <6799a66c1078481bb56de1fd43616ccb@intel.com>,
 <159039417743.30979.16731581606519579212@build.alporthouse.com>
In-Reply-To: <159039417743.30979.16731581606519579212@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK_=28rev18=29?=
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

VGhhdCBvbmUgaXMgZGlmZmVyZW50IHBhdGNoIGFuZCBtb3Jlb3ZlciBjb3VsZCBiZSBldmVuIHdv
bid0IGZpeC4NCklmIHdlIGZhaWwgdG8gZGlzYWJsZSBxZ3YgcG9pbnRzIC0gd2UgZmFpbC4gQ291
bGQgcmVtb3ZlIHRoZSBtZXNzYWdlIHRob3VnaA0KaWYgaXQgZmxvb2RzIHRoZSBsb2dzIHRvbyBt
dWNoLg0KDQpCZXN0IFJlZ2FyZHMsDQoNCkxpc292c2tpeSBTdGFuaXNsYXYNCg0KT3JnYW5pemF0
aW9uOiBJbnRlbCBGaW5sYW5kIE95IC0gQklDIDAzNTc2MDYtNCAtIFdlc3RlbmRpbmthdHUgNywg
MDIxNjAgRXNwb28NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQpTZW50OiBNb25k
YXksIE1heSAyNSwgMjAyMCAxMTowOTozNyBBTQ0KVG86IExpc292c2tpeSwgU3RhbmlzbGF2OyBW
dWR1bSwgTGFrc2htaW5hcmF5YW5hOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpT
dWJqZWN0OiBSZTogW0ludGVsLWdmeF0gIOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIENvbnNp
ZGVyIERCdWYgYmFuZHdpZHRoIHdoZW4gY2FsY3VsYXRpbmcgQ0RDTEsgKHJldjE4KQ0KDQpRdW90
aW5nIExpc292c2tpeSwgU3RhbmlzbGF2ICgyMDIwLTA1LTI1IDA5OjA3OjAzKQ0KPiBPaywgbGV0
cyBjaGVjayAtIGluIHdvcnN0IGNhc2UgSSBqdXN0IG5lZWQgdG8gZmluZCBhIEdMSyBtYWNoaW5l
IGFuZCBiaXNlY3QuDQoNCkFsc28gdGhlcmUgaXMgaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8xOTE5IG9uDQppY2wuDQotQ2hyaXMNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
