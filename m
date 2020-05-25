Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B14911E0870
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:07:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F315E6E059;
	Mon, 25 May 2020 08:07:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E456D6E059
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 08:07:05 +0000 (UTC)
IronPort-SDR: pUChf40Xj6BKfTUKlhjllklwDxsveXA4bYS9VrhYy/6ZRepaJMgp3/WGMOZFlWmyxjKR5ppCmn
 D9xIwnv1c7Pw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 01:07:05 -0700
IronPort-SDR: VsJtVNJ+iivcqZw4Ru/OJ+RQYuqNEMgtremNUH4Go3227piLiGnjqFzLIqNT/n5+VhSiiQjMsu
 W64sJyieABIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="413441532"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by orsmga004.jf.intel.com with ESMTP; 25 May 2020 01:07:04 -0700
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 25 May 2020 09:07:03 +0100
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 May 2020 09:07:03 +0100
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Mon, 25 May 2020 09:07:03 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Vudum, Lakshminarayana"
 <lakshminarayana.vudum@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIENvbnNp?=
 =?utf-8?B?ZGVyIERCdWYgYmFuZHdpZHRoIHdoZW4gY2FsY3VsYXRpbmcgQ0RDTEsgKHJl?=
 =?utf-8?Q?v18)?=
Thread-Index: AQHWLzzWVtq0RL/yrkqgRfO1sNWvVaiyRqrbgAJS0QCAABX0AIADxr1R///wkgCAABEN7g==
Date: Mon, 25 May 2020 08:07:03 +0000
Message-ID: <6799a66c1078481bb56de1fd43616ccb@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>,
 <159004412790.4443.16666170953617018239@emeril.freedesktop.org>
 <7805def3c6354f17bf7d57c416f000aa@intel.com>
 <159018481048.32320.7761007190791714467@build.alporthouse.com>,
 <159018952416.11139.8295799937981887072@build.alporthouse.com>
 <d391e915b930423ea02677a0b0afed3e@intel.com>,
 <159039381690.30979.6896983521245965877@build.alporthouse.com>
In-Reply-To: <159039381690.30979.6896983521245965877@build.alporthouse.com>
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

T2ssIGxldHMgY2hlY2sgLSBpbiB3b3JzdCBjYXNlIEkganVzdCBuZWVkIHRvIGZpbmQgYSBHTEsg
bWFjaGluZSBhbmQgYmlzZWN0Lg0KDQpCZXN0IFJlZ2FyZHMsDQoNCkxpc292c2tpeSBTdGFuaXNs
YXYNCg0KT3JnYW5pemF0aW9uOiBJbnRlbCBGaW5sYW5kIE95IC0gQklDIDAzNTc2MDYtNCAtIFdl
c3RlbmRpbmthdHUgNywgMDIxNjAgRXNwb28NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+DQpTZW50OiBNb25kYXksIE1heSAyNSwgMjAyMCAxMTowMzozNiBBTQ0KVG86IExpc292c2tp
eSwgU3RhbmlzbGF2OyBWdWR1bSwgTGFrc2htaW5hcmF5YW5hOyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gIOKclyBGaS5DSS5JR1Q6IGZh
aWx1cmUgZm9yIENvbnNpZGVyIERCdWYgYmFuZHdpZHRoIHdoZW4gY2FsY3VsYXRpbmcgQ0RDTEsg
KHJldjE4KQ0KDQpRdW90aW5nIExpc292c2tpeSwgU3RhbmlzbGF2ICgyMDIwLTA1LTI1IDA5OjAw
OjMzKQ0KPiBJIGhhdmUgc2VlbiB0aG9zZSBmYWlsdXJlcyBpbiBvdGhlciBwYXRjaGVzIGFzIHdl
bGwsIGkuZSBiZWZvcmUgbXkgcGF0Y2hlcyBsYW5kZWQuDQoNCkxvb2sgYWdhaW4uIENJIGlzIHZl
cnkgY2xlYXIsIGFzIGlzIHRoZSBiaXNlY3QgYW5kIHJldmVydC4NCi1DaHJpcw0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
