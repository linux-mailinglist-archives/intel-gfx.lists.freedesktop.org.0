Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CBF30207D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 03:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7004F89885;
	Mon, 25 Jan 2021 02:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44B1D89885
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 02:36:22 +0000 (UTC)
IronPort-SDR: d0juSwUD7hfbr4A3/WS+DpnoOM4dV+9kZEwt7cuMCBjGKfQrkNjL4rOZwBZ2urKSzazZhArFGh
 lEqYggqTl12w==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="159427231"
X-IronPort-AV: E=Sophos;i="5.79,372,1602572400"; d="scan'208";a="159427231"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2021 18:36:21 -0800
IronPort-SDR: BKNu4LdGj2FaMLssi02afq4r4+LaKo4pqHkkZ+TASwXbgeN7r05rmO65et6oVX1klUcFGYXzgp
 9LgZiSfbwfGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,372,1602572400"; d="scan'208";a="360997427"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jan 2021 18:36:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 24 Jan 2021 18:36:21 -0800
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 24 Jan 2021 18:36:20 -0800
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.1713.004;
 Mon, 25 Jan 2021 10:36:18 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IFN0YXJ0IGRp?=
 =?utf-8?B?c2FibGluZyBwcmVhZC9wd3JpdGUgaW9jdGwncyBmb3IgZnV0dXJlIHBsYXRm?=
 =?utf-8?Q?orms?=
Thread-Index: AQHW8qxNk1hElJ5/g0OA6h3cRvi7R6o3oFIQ
Date: Mon, 25 Jan 2021 02:36:18 +0000
Message-ID: <a2aa6cd4a23042b7928b3dbfd62582fb@intel.com>
References: <cover.1611354210.git.ashutosh.dixit@intel.com>
 <161140710276.14872.6409167556041120710@emeril.freedesktop.org>
 <87a6sxlwl3.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87a6sxlwl3.wl-ashutosh.dixit@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Start_disabling_pread/pwrite_ioctl=27s_for_future_plat?=
 =?utf-8?q?forms?=
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

UmUtcmVwb3J0ZWQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBEaXhpdCwg
QXNodXRvc2ggPGFzaHV0b3NoLmRpeGl0QGludGVsLmNvbT4gDQpTZW50OiBTdW5kYXksIEphbnVh
cnkgMjQsIDIwMjEgMzo1NSBQTQ0KVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5jb20+
DQpTdWJqZWN0OiBSZTog4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IFN0YXJ0
IGRpc2FibGluZyBwcmVhZC9wd3JpdGUgaW9jdGwncyBmb3IgZnV0dXJlIHBsYXRmb3Jtcw0KDQpP
biBTYXQsIDIzIEphbiAyMDIxIDA1OjA1OjAyIC0wODAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+DQo+
IFsxICA8dGV4dC9wbGFpbjsgdXRmLTggKDdiaXQpPl0NCj4gWzIgIDx0ZXh0L2h0bWw7IHV0Zi04
ICg3Yml0KT5dDQo+IFByb2plY3QgTGlzdCAtIFBhdGNod29yaw0KPg0KPiBQYXRjaCBEZXRhaWxz
DQo+DQo+ICBTZXJpZXM6ICBkcm0vaTkxNTogU3RhcnQgZGlzYWJsaW5nIHByZWFkL3B3cml0ZSBp
b2N0bCdzIGZvciBmdXR1cmUgDQo+IHBsYXRmb3Jtcw0KPiAgVVJMOiAgaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84NjE5OS8NCj4gIFN0YXRlOiAgZmFpbHVyZQ0KPiAg
RGV0YWlsczogIA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xOTQ3MC9pbmRleC5odG1sDQo+DQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20g
Q0lfRFJNXzk2NzFfZnVsbCAtPiBQYXRjaHdvcmtfMTk0NzBfZnVsbA0KPg0KPiBTdW1tYXJ5DQo+
DQo+IEZBSUxVUkUNCj4NCj4gU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0
Y2h3b3JrXzE5NDcwX2Z1bGwgYWJzb2x1dGVseSANCj4gbmVlZCB0byBiZSB2ZXJpZmllZCBtYW51
YWxseS4NCj4NCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGlu
ZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzIA0KPiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xOTQ3
MF9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gDQo+IGFsbG93IHRoZW0gdG8g
ZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBw
b3NpdGl2ZXMgaW4gQ0kuDQo+DQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4NCj4gSGVyZSBhcmUg
dGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRj
aHdvcmtfMTk0NzBfZnVsbDoNCj4NCj4gSUdUIGNoYW5nZXMNCj4NCj4gUG9zc2libGUgcmVncmVz
c2lvbnMNCj4NCj4gKiBpZ3RAa21zX3NlcXVlbmNlQHF1ZXVlLWJ1c3k6DQo+DQo+ICAqIHNoYXJk
LXNrbDogUEFTUyAtPiBGQUlMDQoNClRoaXMgaXMgYSB1bnJlbGF0ZWQgZmFpbHVyZSBhbmQgYSBm
YWxzZSBwb3NpdGl2ZSwgdGhlIHBhdGNoIHNob3VsZCBub3QgaGF2ZSBhbnkgZWZmZWN0IG9uIHRo
aXMgcGxhdGZvcm0uDQoNClNlZWluZyBhIGZldyBpZ3RAa21zX3NlcXVlbmNlIGJ1Z3MgaW4gZ2l0
bGFiIGJ1dCBtYXliZSB0aGUgc2lnbmF0dXJlIGZvciB0aGlzIG9uZSBpcyBhIGxpdHRsZSBkaWZm
ZXJlbnQuIFRoYW5rcy4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
