Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E861E0859
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B386989CB2;
	Mon, 25 May 2020 08:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4331F89CB2
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 08:00:36 +0000 (UTC)
IronPort-SDR: nhaLPnvSN4zWe++W7jyxV2Ou4C662TOVGLY0fWwNjOcZWpvJ2G4wGuRy+umQsi0dlXLpT6Z5LQ
 Lzo5b2uOxGJw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 01:00:35 -0700
IronPort-SDR: CSWBc6h4zMXqKThmCMfbvt0XNBVDlRT1Vus38fS4JLYPUFvT2IXK/rVYn2qUZU70BX09j9b5ol
 EaGptMA4886Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="256170598"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga008.fm.intel.com with ESMTP; 25 May 2020 01:00:34 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX153.ger.corp.intel.com (163.33.192.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 25 May 2020 09:00:33 +0100
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 May 2020 09:00:33 +0100
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Mon, 25 May 2020 09:00:33 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Vudum, Lakshminarayana"
 <lakshminarayana.vudum@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIENvbnNp?=
 =?utf-8?B?ZGVyIERCdWYgYmFuZHdpZHRoIHdoZW4gY2FsY3VsYXRpbmcgQ0RDTEsgKHJl?=
 =?utf-8?Q?v18)?=
Thread-Index: AQHWLzzWVtq0RL/yrkqgRfO1sNWvVaiyRqrbgAJS0QCAABX0AIADxr1R
Date: Mon, 25 May 2020 08:00:33 +0000
Message-ID: <d391e915b930423ea02677a0b0afed3e@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>,
 <159004412790.4443.16666170953617018239@emeril.freedesktop.org>
 <7805def3c6354f17bf7d57c416f000aa@intel.com>
 <159018481048.32320.7761007190791714467@build.alporthouse.com>,
 <159018952416.11139.8295799937981887072@build.alporthouse.com>
In-Reply-To: <159018952416.11139.8295799937981887072@build.alporthouse.com>
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

SSBoYXZlIHNlZW4gdGhvc2UgZmFpbHVyZXMgaW4gb3RoZXIgcGF0Y2hlcyBhcyB3ZWxsLCBpLmUg
YmVmb3JlIG15IHBhdGNoZXMgbGFuZGVkLg0KDQpCZXN0IFJlZ2FyZHMsDQoNCkxpc292c2tpeSBT
dGFuaXNsYXYNCg0KT3JnYW5pemF0aW9uOiBJbnRlbCBGaW5sYW5kIE95IC0gQklDIDAzNTc2MDYt
NCAtIFdlc3RlbmRpbmthdHUgNywgMDIxNjAgRXNwb28NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+DQpTZW50OiBTYXR1cmRheSwgTWF5IDIzLCAyMDIwIDI6MTg6NDQgQU0NClRvOiBM
aXNvdnNraXksIFN0YW5pc2xhdjsgVnVkdW0sIExha3NobWluYXJheWFuYTsgaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdICDinJcgRmkuQ0ku
SUdUOiBmYWlsdXJlIGZvciBDb25zaWRlciBEQnVmIGJhbmR3aWR0aCB3aGVuIGNhbGN1bGF0aW5n
IENEQ0xLIChyZXYxOCkNCg0KUXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMDUtMjIgMjM6MDA6
MTApDQo+IFF1b3RpbmcgTGlzb3Zza2l5LCBTdGFuaXNsYXYgKDIwMjAtMDUtMjEgMTA6MzU6NDIp
DQo+ID4gU2VlbXMgdG8gYmUgdW5yZWxhdGVkIGlzc3VlLiBUaGVyZSBzZWVtcyB0byBiZSBzb21l
IGxpc3QgY29ycnVwdGlvbiBoYXBwZW5pbmcgaW4gZHJtIGZiIG1hbmlwdWxhdGlvbiBjb2RlLg0K
PiA+IGlmIHRob3NlIHBhdGNoZXMgd291bGQgYmUgY2F1c2luZyB0aGF0IChsaWtlIHNvbWUgc2V2
ZXJlIG1lbSBjb3JydXB0aW9uKS0gaXQgd291bGQgaGFwcGVuIG11Y2ggbW9yZSBicm9hZGx5IHRo
YW4gc2luZ2xlIHRlc3QgYW5kIHNpbmdsZSBwbGF0Zm9ybS4gTW9yZW92ZXIgdGhlcmUgaXMgbm8g
ZGlyZWN0ICBjb25uZWN0aW9uIHRvIHRoZSBjaGFuZ2VzLg0KPg0KPiBUaGUgZmktZ2xrLWRzaSBm
YWlsdXJlIGluIG1vZHVsZSByZWxvYWQgaXMgYSByZXN1bHQgb2YgdGhpcyBzZXJpZXMuDQo+IFNv
bWVob3cgeW91IGhhdmUgYW5nZXJlZCB0aGUgaTkxNSBwbSBhcm91bmQgc25kX2hkYV9pbnRlbC4N
Cj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc3
MzMvZmktZ2xrLWRzaS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQoNCkNJIHNh
eXMgImRybS9pOTE1OiBBZGp1c3QgQ0RDTEsgYWNjb3JkaW5nbHkgdG8gb3VyIERCdWYgYncgbmVl
ZHMiIGlzIHRoZQ0KY3VscHJpdC4NCi1DaHJpcw0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
