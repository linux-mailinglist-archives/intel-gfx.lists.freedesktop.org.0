Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 979EB30B1E3
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 22:09:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0239D6E87F;
	Mon,  1 Feb 2021 21:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E126E87F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 21:09:00 +0000 (UTC)
IronPort-SDR: DQL4maduAhWE6mvYChZoBizMAmqK+h2wf7U0JTom3EpH2V6kKxGodu8tv5WRbV21ri4o6Hf4Cr
 Y1cTRiUibhmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="160519365"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="160519365"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 13:08:59 -0800
IronPort-SDR: BuJIsxD/OMxCWaIhkMO0vFLo75ePYvtstvhN/LqV47TtXA/sI0LedIAFgDrJIBCDJkkS263FF/
 QdqnYbRYEltA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="479294647"
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137])
 by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2021 13:08:58 -0800
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 pgsmsx602.gar.corp.intel.com (10.108.199.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 2 Feb 2021 05:08:57 +0800
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.1713.004;
 Tue, 2 Feb 2021 05:08:57 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IENsZWFuIHVw?=
 =?utf-8?Q?_the_DDI_clock_routing_mess?=
Thread-Index: AQHW+NmlRQftfaAKxkO7T2KLpgYiBapDyyvA
Date: Mon, 1 Feb 2021 21:08:57 +0000
Message-ID: <c41c660836a84e26aae62f3fccc30d87@intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
 <161221033182.18680.6990863242267144359@emeril.freedesktop.org>
 <YBhl02N9b8V3fMmo@intel.com>
In-Reply-To: <YBhl02N9b8V3fMmo@intel.com>
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
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_the_DDI_clock_routing_mess?=
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

UmUtcmVwb3J0ZWQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiANClNlbnQ6IE1vbmRheSwg
RmVicnVhcnkgMSwgMjAyMSAxMjozNCBQTQ0KVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCkNjOiBWdWR1bSwgTGFrc2htaW5hcmF5YW5hIDxsYWtzaG1pbmFyYXlhbmEudnVkdW1A
aW50ZWwuY29tPg0KU3ViamVjdDogUmU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9p
OTE1OiBDbGVhbiB1cCB0aGUgRERJIGNsb2NrIHJvdXRpbmcgbWVzcw0KDQpPbiBNb24sIEZlYiAw
MSwgMjAyMSBhdCAwODoxMjoxMVBNIC0wMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+ID09IFNlcmll
cyBEZXRhaWxzID09DQo+IA0KPiBTZXJpZXM6IGRybS9pOTE1OiBDbGVhbiB1cCB0aGUgRERJIGNs
b2NrIHJvdXRpbmcgbWVzcw0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9zZXJpZXMvODY1NDQvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPiANCj4gPT0gU3VtbWFyeSA9
PQ0KPiANCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fOTcxMyAtPiBQYXRjaHdv
cmtfMTk1NTYgDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0NCj4gDQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPiANCj4gICAqKkZBSUxVUkUqKg0K
PiANCj4gICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTk1
NTYgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+
ICAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3
aXRoIHRoZSBjaGFuZ2VzDQo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTk1NTYsIHBsZWFz
ZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhp
cyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4g
Q0kuDQo+IA0KPiAgIEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9y
Zy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE5NTU2L2luZGV4Lmh0bWwNCj4gDQo+IFBvc3NpYmxl
IG5ldyBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUg
dW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29y
a18xOTU1NjoNCj4gDQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUg
cmVncmVzc2lvbnMgIyMjIw0KPiANCj4gICAqIGlndEBrbXNfY2hhbWVsaXVtQGNvbW1vbi1ocGQt
YWZ0ZXItc3VzcGVuZDoNCj4gICAgIC0gZmktaWNsLXUyOiAgICAgICAgICBbUEFTU11bMV0gLT4g
W0RNRVNHLVdBUk5dWzJdDQo+ICAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9DSV9EUk1fOTcxMy9maS1pY2wtdTIvaWd0QGttc19jaGFtZWxpdW1AY29tbW9u
LWhwZC1hZnRlci1zdXNwZW5kLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTk1NTYvZmktaWNsLXUyL2lndA0KPiBA
a21zX2NoYW1lbGl1bUBjb21tb24taHBkLWFmdGVyLXN1c3BlbmQuaHRtbA0KDQo8Mz4gWzE1My42
OTE3NzRdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIEZhaWxlZCB0byByZWFkIERQ
Q0QgcmVnaXN0ZXIgMHg5Mg0KDQpTZWVtcyB0byBiZQ0KaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8yODY4DQpleGNlcHQgbm90IHlldCB0cmFja2VkIGZv
ciBpY2wuDQoNClRoYXQgcmVnaXN0ZXIgc2VlbXMgdG8gYmUgcmVsYXRlZCB0byB0aGUgSERNSSAy
LjEgUENPTiBzdHVmZi4NCg0KLS0NClZpbGxlIFN5cmrDpGzDpA0KSW50ZWwNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
