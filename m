Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8BD289B82
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Oct 2020 00:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF9789DEA;
	Fri,  9 Oct 2020 22:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE37989DEA
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Oct 2020 22:05:26 +0000 (UTC)
IronPort-SDR: F4Cxx7NvGXm+G1USKYVSkCFt4ffUSsvW3kKmV/kYk/VTZ61YcMk098vJvYU0OdEXCzoYqeuDlq
 WlNdbosGnHTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="165603196"
X-IronPort-AV: E=Sophos;i="5.77,356,1596524400"; d="scan'208";a="165603196"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 15:05:25 -0700
IronPort-SDR: udENijbfstBxttIEJArj/pXWVhiG7RphNc32F9zWXK7408FU5WsxP5sICsz1d2xMyox0X2tqXJ
 7Tchn/QsEb9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,356,1596524400"; d="scan'208";a="329038815"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 09 Oct 2020 15:05:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 15:05:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 15:05:25 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Fri, 9 Oct 2020 15:05:24 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3Y1LDEvM10gZHJtL2k5MTUvZGlzcGxheTogSWdub3JlIElHTk9SRV9Q?=
 =?utf-8?B?U1IyX0hXX1RSQUNLSU5HIGZvciBwbGF0Zm9ybXMgd2l0aG91dCBzZWwgZmV0?=
 =?utf-8?Q?ch_(rev3)?=
Thread-Index: AQHWnbMQVcHhSwaHkEGAf2wSK2IkBqmQS36A
Date: Fri, 9 Oct 2020 22:05:24 +0000
Message-ID: <4df9cd74fc40531eb82682292012eb3b779751da.camel@intel.com>
References: <20201007195238.53955-1-jose.souza@intel.com>
 <160218954127.11033.16139346231678090939@emeril.freedesktop.org>
In-Reply-To: <160218954127.11033.16139346231678090939@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <E3266466A52957449080F744AC36AE8D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/3=5D_drm/i915/display=3A_Ignore_IGN?=
 =?utf-8?q?ORE=5FPSR2=5FHW=5FTRACKING_for_platforms_without_sel_fetch_=28r?=
 =?utf-8?q?ev3=29?=
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

T24gVGh1LCAyMDIwLTEwLTA4IGF0IDIwOjM5ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBh
dGNoIERldGFpbHMNCj4gU2VyaWVzOiBzZXJpZXMgc3RhcnRpbmcgd2l0aCBbdjUsMS8zXSBkcm0v
aTkxNS9kaXNwbGF5OiBJZ25vcmUgSUdOT1JFX1BTUjJfSFdfVFJBQ0tJTkcgZm9yIHBsYXRmb3Jt
cyB3aXRob3V0IHNlbCBmZXRjaCAocmV2MykgVVJMOg0KPiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzgyNDUzLyBTdGF0ZTogc3VjY2VzcyBEZXRhaWxzOiBodHRwczov
L2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODY1OS9pbmRleC5o
dG1sIA0KPiBDSSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV85MTEzX2Z1bGwgLT4gUGF0
Y2h3b3JrXzE4NjU5X2Z1bGxTdW1tYXJ5U1VDQ0VTUw0KPiBObyByZWdyZXNzaW9ucyBmb3VuZC4N
Cg0KUHVzaGVkIHRvIGRpbnEsIHRoYW5rcyBmb3IgdGhlIHJldmlld3MgUm9kcmlnbywgVmlsbGUg
YW5kIEdHLg0KDQo+IEtub3duIGlzc3Vlc0hlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBh
dGNod29ya18xODY1OV9mdWxsIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoNCj4gSUdUIGNo
YW5nZXNJc3N1ZXMgaGl0ICogaWd0QGdlbV9leGVjX2d0dGZpbGxAZW5naW5lc0ByY3MwOnNoYXJk
LWdsazogUEFTUyAtPiBETUVTRy1XQVJOIChpOTE1IzExOCAvIGk5MTUjOTUpDQo+IMKgKiBpZ3RA
Z2VtX2h1Y19jb3B5QGh1Yy1jb3B5OnNoYXJkLXRnbGI6IFBBU1MgLT4gU0tJUCAoaTkxNSMyMTkw
KQ0KPiDCoCogaWd0QGk5MTVfcG1fZGNAZGM2LXBzcjpzaGFyZC1za2w6IFBBU1MgLT4gRkFJTCAo
aTkxNSM0NTQpDQo+IMKgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1ibG9ja2luZy13Zi12YmxhbmtA
YS1lZHAxOnNoYXJkLXNrbDogUEFTUyAtPiBETUVTRy1XQVJOIChpOTE1IzE5ODIpICs0IHNpbWls
YXIgaXNzdWVzDQo+IMKgKiBpZ3RAa21zX2ZsaXBAZmxpcC12cy1zdXNwZW5kLWludGVycnVwdGli
bGVAYS1kcDE6c2hhcmQta2JsOiBQQVNTIC0+IERNRVNHLVdBUk4gKGk5MTUjMTgwKSArMyBzaW1p
bGFyIGlzc3Vlcw0KPiDCoCogaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZEBhLWRwMTpzaGFy
ZC1rYmw6IFBBU1MgLT4gSU5DT01QTEVURSAoaTkxNSMxNTUpDQo+IMKgKiBpZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQGZiYy1zdHJpZGVjaGFuZ2U6c2hhcmQtdGdsYjogUEFTUyAtPiBETUVT
Ry1XQVJOIChpOTE1IzE5ODIpICs0IHNpbWlsYXIgaXNzdWVzc2hhcmQtZ2xrOiBQQVNTIC0+IERN
RVNHLVdBUk4NCj4gKGk5MTUjMTk4MikNCj4gwqAqIGlndEBrbXNfaGRyQGJwYy1zd2l0Y2gtZHBt
czpzaGFyZC1za2w6IFBBU1MgLT4gRkFJTCAoaTkxNSMxMTg4KSArMSBzaW1pbGFyIGlzc3VlDQo+
IMKgKiBpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQHN1c3BlbmQtcmVhZC1jcmMtcGlwZS1jOnNoYXJk
LXNrbDogUEFTUyAtPiBJTkNPTVBMRVRFIChpOTE1IzE5OCkNCj4gwqAqIGlndEBrbXNfcGxhbmVf
YWxwaGFfYmxlbmRAcGlwZS1jLWNvdmVyYWdlLTdlZmM6c2hhcmQtc2tsOiBQQVNTIC0+IEZBSUwg
KGZkbyMxMDgxNDUgLyBpOTE1IzI2NSkNCj4gwqAqIGlndEBrbXNfcHNyQHBzcjJfY3Vyc29yX3Bs
YW5lX21vdmU6c2hhcmQtaWNsYjogUEFTUyAtPiBTS0lQIChmZG8jMTA5NDQxKSArMiBzaW1pbGFy
IGlzc3Vlcw0KPiDCoCogaWd0QGttc19zZXRtb2RlQGJhc2ljOnNoYXJkLWdsazogUEFTUyAtPiBG
QUlMIChpOTE1IzMxKQ0KPiDCoCogaWd0QHBlcmZAcG9sbGluZy1wYXJhbWV0ZXJpemVkOnNoYXJk
LXNrbDogUEFTUyAtPiBGQUlMIChpOTE1IzE1NDIpDQo+IMKgKiBpZ3RAc3lzZnNfaGVhcnRiZWF0
X2ludGVydmFsQG1peGVkQHZjczA6c2hhcmQtc2tsOiBQQVNTIC0+IEZBSUwgKGk5MTUjMTczMSkN
Cj4gUG9zc2libGUgZml4ZXMgKiB7aWd0QGdlbV9leGVjX2NhcHR1cmVAcGlAcmNzMH06c2hhcmQt
c2tsOiBJTkNPTVBMRVRFIC0+IFBBU1NzaGFyZC1nbGs6IElOQ09NUExFVEUgLT4gUEFTUw0KPiDC
oCogaWd0QGk5MTVfcG1fZGNAZGM2LXBzcjpzaGFyZC1pY2xiOiBGQUlMIChpOTE1IzE4OTkpIC0+
IFBBU1MNCj4gwqAqIGlndEBpOTE1X3BtX3JwbUBzeXN0ZW0tc3VzcGVuZDpzaGFyZC1za2w6IElO
Q09NUExFVEUgKGk5MTUjMTUxKSAtPiBQQVNTDQo+IMKgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
QGd0X2hlYXJ0YmVhdDpzaGFyZC1za2w6IERNRVNHLUZBSUwgKGk5MTUjNTQxKSAtPiBQQVNTDQo+
IMKgKiB7aWd0QGttc19hc3luY19mbGlwc0BhbHRlcm5hdGUtc3luYy1hc3luYy1mbGlwfTpzaGFy
ZC1rYmw6IEZBSUwgKGk5MTUjMjUyMSkgLT4gUEFTUw0KPiDCoCoge2lndEBrbXNfYXN5bmNfZmxp
cHNAYXN5bmMtZmxpcC13aXRoLXBhZ2UtZmxpcC1ldmVudHN9OnNoYXJkLWdsazogRkFJTCAoaTkx
NSMyNTIxKSAtPiBQQVNTDQo+IMKgKiBpZ3RAa21zX2N1cnNvcl9lZGdlX3dhbGtAcGlwZS1iLTEy
OHgxMjgtYm90dG9tLWVkZ2U6c2hhcmQtZ2xrOiBETUVTRy1XQVJOIChpOTE1IzE5ODIpIC0+IFBB
U1MNCj4gwqAqIGlndEBrbXNfZmxpcF90aWxpbmdAZmxpcC1jaGFuZ2VzLXRpbGluZzpzaGFyZC1z
a2w6IEZBSUwgKGk5MTUjNjk5KSAtPiBQQVNTDQo+IMKgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3Ry
YWNraW5nQGZiYy1mYXJmcm9tZmVuY2U6c2hhcmQtZ2xrOiBGQUlMIChpOTE1IzQ5KSAtPiBQQVNT
DQo+IMKgKiBpZ3RAa21zX2Zyb250YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1jdXIt
aW5kZmItZHJhdy1yZW5kZXI6c2hhcmQtc2tsOiBGQUlMIChpOTE1IzQ5KSAtPiBQQVNTDQo+IMKg
KiBpZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYy1jb25zdGFudC1hbHBoYS1taW46c2hh
cmQtc2tsOiBGQUlMIChmZG8jMTA4MTQ1IC8gaTkxNSMyNjUpIC0+IFBBU1MgKzEgc2ltaWxhciBp
c3N1ZQ0KPiDCoCogaWd0QGttc19wbGFuZV9jdXJzb3JAcGlwZS1jLW92ZXJsYXktc2l6ZS0yNTY6
c2hhcmQtc2tsOiBETUVTRy1XQVJOIChpOTE1IzE5ODIpIC0+IFBBU1MgKzIgc2ltaWxhciBpc3N1
ZXMNCj4gwqAqIGlndEBrbXNfcHNyQHBzcjJfc3ByaXRlX3JlbmRlcjpzaGFyZC1pY2xiOiBTS0lQ
IChmZG8jMTA5NDQxKSAtPiBQQVNTICsxIHNpbWlsYXIgaXNzdWUNCj4gwqAqIGlndEBwcmltZV92
Z2VtQHN5bmNAcmNzMDpzaGFyZC1pY2xiOiBJTkNPTVBMRVRFIChpOTE1IzQwOSkgLT4gUEFTUw0K
PiB7bmFtZX06IFRoaXMgZWxlbWVudCBpcyBzdXBwcmVzc2VkLiBUaGlzIG1lYW5zIGl0IGlzIGln
bm9yZWQgd2hlbiBjb21wdXRpbmcNCj4gwqB0aGUgc3RhdHVzIG9mIHRoZSBkaWZmZXJlbmNlIChT
VUNDRVNTLCBXQVJOSU5HLCBvciBGQUlMVVJFKS4NCj4gUGFydGljaXBhdGluZyBob3N0cyAoMTEg
LT4gMTEpTm8gY2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzDQo+IEJ1aWxkIGNoYW5nZXMg
KiBMaW51eDogQ0lfRFJNXzkxMTMgLT4gUGF0Y2h3b3JrXzE4NjU5DQo+IENJLTIwMTkwNTI5OiAy
MDE5MDUyOQ0KPiDCoENJX0RSTV85MTEzOiA0MTJmZjE1ZjJiOWE5N2JkMGFiMzJmNTYyZWNiN2Vm
Yzg0ODM3ODgxIEAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+
IMKgSUdUXzU4MDU6IDljZTUwZmZlZDg5YTQ2ZmExYmM5OGVlMmNmZTIyNzFjNDk4MDEwNzkgQCBn
aXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy94b3JnL2FwcC9pbnRlbC1ncHUtdG9vbHMNCj4g
wqBQYXRjaHdvcmtfMTg2NTk6IDg4MTcyZDA2OGRjOTlmODJiOTNlZWVjZGFmODhiNDgwZDhhYTY0
NTIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gwqBwaWds
aXRfNDUwOTogZmRjNWE0Y2ExMTEyNGFiODQxM2M3OTg4ODk2ZWVjNGM5NzMzNjY5NCBAIGdpdDov
L2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3BpZ2xpdA0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
