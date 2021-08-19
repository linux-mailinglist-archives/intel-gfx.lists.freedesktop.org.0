Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F973F1EEA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 19:19:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880CC89623;
	Thu, 19 Aug 2021 17:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD1289623
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 17:19:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="216337508"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="216337508"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 10:19:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="424699782"
Received: from kmsmsx601.gar.corp.intel.com ([172.21.219.141])
 by orsmga003.jf.intel.com with ESMTP; 19 Aug 2021 10:19:53 -0700
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 kmsmsx601.gar.corp.intel.com (172.21.219.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 20 Aug 2021 01:19:53 +0800
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2242.010;
 Fri, 20 Aug 2021 01:19:52 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?= <thomas.hellstrom@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5?=
 =?utf-8?B?MTU6IERpdGNoIHRoZSBpOTE1X2dlbV93d19jdHggbG9vcCBtZW1iZXIgKHJl?=
 =?utf-8?Q?v2)?=
Thread-Index: AQHXlP/Y1rHDdsVRhkWERoB3/YIAAKt7D1+A
Date: Thu, 19 Aug 2021 17:19:52 +0000
Message-ID: <688c69878a034af69a70b9030ce01c6f@intel.com>
References: <20210816171444.105469-1-thomas.hellstrom@linux.intel.com>
 <162922127945.22607.17222314422938085017@emeril.freedesktop.org>
 <CAM0jSHPVop9CsydR-7SFYxinUz0-M21WKQ3Muj017RoQA49PKw@mail.gmail.com>
In-Reply-To: <CAM0jSHPVop9CsydR-7SFYxinUz0-M21WKQ3Muj017RoQA49PKw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Ditch_the_i915=5Fgem=5Fww=5Fctx_loop_member_=28rev2=29?=
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

UmUtcmVwb3J0ZWQuDQpCdWcgZmlsZWQgZm9yIHRoZSByZWdyZXNzaW9uLg0KIzQwMDkgaWd0QGtt
c19hdG9taWNfdHJhbnNpdGlvbkBwbGFuZS10b2dnbGUtbW9kZXNldC10cmFuc2l0aW9uIC0gaW5j
b21wbGV0ZSAtIE5vIHdhcm5pbmdzL2Vycm9ycw0KDQpMYWtzaG1pLg0KLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCkZyb206IE1hdHRoZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21h
aWwuY29tPiANClNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMTksIDIwMjEgNjo0MCBBTQ0KVG86IElu
dGVsIEdyYXBoaWNzIERldmVsb3BtZW50IDxpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Pg0KQ2M6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNv
bT47IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5j
b20+DQpTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Ig
ZHJtL2k5MTU6IERpdGNoIHRoZSBpOTE1X2dlbV93d19jdHggbG9vcCBtZW1iZXIgKHJldjIpDQoN
Ck9uIFR1ZSwgMTcgQXVnIDIwMjEgYXQgMTg6MjgsIFBhdGNod29yaw0KPHBhdGNod29ya0BlbWVy
aWwuZnJlZWRlc2t0b3Aub3JnPiB3cm90ZToNCj4NCj4gUGF0Y2ggRGV0YWlscw0KPiBTZXJpZXM6
ZHJtL2k5MTU6IERpdGNoIHRoZSBpOTE1X2dlbV93d19jdHggbG9vcCBtZW1iZXIgKHJldjIpIA0K
PiBVUkw6aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85MzcxMS8NCj4g
U3RhdGU6ZmFpbHVyZQ0KPiBEZXRhaWxzOmh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzIwODM0L2luZGV4DQo+IC5odG1sDQo+DQo+IENJIEJ1ZyBMb2cg
LSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzEwNDkwX2Z1bGwgLT4gUGF0Y2h3b3JrXzIwODM0X2Z1bGwN
Cj4NCj4gU3VtbWFyeQ0KPg0KPiBGQUlMVVJFDQo+DQo+IFNlcmlvdXMgdW5rbm93biBjaGFuZ2Vz
IGNvbWluZyB3aXRoIFBhdGNod29ya18yMDgzNF9mdWxsIGFic29sdXRlbHkgDQo+IG5lZWQgdG8g
YmUgdmVyaWZpZWQgbWFudWFsbHkuDQo+DQo+IElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hh
bmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcyANCj4gaW50cm9kdWNlZCBp
biBQYXRjaHdvcmtfMjA4MzRfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIA0K
PiBhbGxvdyB0aGVtIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2ls
bCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPg0KPiBQb3NzaWJsZSBuZXcgaXNzdWVz
DQo+DQo+IEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5nZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGlu
dHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzIwODM0X2Z1bGw6DQo+DQo+IElHVCBjaGFuZ2VzDQo+DQo+
IFBvc3NpYmxlIHJlZ3Jlc3Npb25zDQo+DQo+IGlndEBrbXNfYXRvbWljX3RyYW5zaXRpb25AcGxh
bmUtdG9nZ2xlLW1vZGVzZXQtdHJhbnNpdGlvbjoNCj4NCj4gc2hhcmQtdGdsYjogUEFTUyAtPiBJ
TkNPTVBMRVRFDQoNCkxha3NobWksIHRoaXMgZmFpbHVyZSBpcyB1bnJlbGF0ZWQuDQo=
