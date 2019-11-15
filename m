Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5228BFE3E4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 18:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59596E9E2;
	Fri, 15 Nov 2019 17:26:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B43E36E9E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 17:26:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 09:26:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="236142844"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2019 09:26:51 -0800
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 Nov 2019 09:26:51 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.150]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.26]) with mapi id 14.03.0439.000;
 Fri, 15 Nov 2019 09:26:50 -0800
From: "Hiatt, Don" <don.hiatt@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Summers, Stuart"
 <stuart.summers@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
Thread-Index: AQHVm1GWfjXO3xe0eUmHZYvGqmCEo6eM/1MAgAAB9oD//3upoA==
Date: Fri, 15 Nov 2019 17:26:50 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F997EE5@ORSMSX106.amr.corp.intel.com>
References: <20191115011112.25249-1-don.hiatt@intel.com>
 <20191115011112.25249-2-don.hiatt@intel.com>
 <5cebb6ef4b95c893ec53f68113439a3922ea8163.camel@intel.com>
 <157383839967.11997.12324024656389899848@skylake-alporthouse-com>
In-Reply-To: <157383839967.11997.12324024656389899848@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWQ1NzA5MjctMWRkYy00MDk5LWIxZjEtYTBiNDgzZGQ0ZWIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRXVPVjh0XC9lUDhhWTVTeWxcLzhGbWlrZFB3RkZNREpmQjM3MEJQdWp6ZDE5ekczdmhZNlExNkZvMEI2dnBJd0ZYIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

DQoNCj4gRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IFNl
bnQ6IEZyaWRheSwgTm92ZW1iZXIgMTUsIDIwMTkgOToyMCBBTQ0KPiBUbzogSGlhdHQsIERvbiA8
ZG9uLmhpYXR0QGludGVsLmNvbT47IFN1bW1lcnMsIFN0dWFydA0KPiA8c3R1YXJ0LnN1bW1lcnNA
aW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBS
ZTogW0ludGVsLWdmeF0gW1BBVENIIDIvMl0gZHJtL2k5MTUvZ3VjOiBTa2lwIHN1c3BlbmQvcmVz
dW1lIEd1Qw0KPiBhY3Rpb24gb24gcGxhdGZvcm1zIHcvbyBHdUMgc3VibWlzc2lvbg0KPiANCj4g
UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMTEtMTUgMTc6MTI6NTgpDQo+ID4gT24gVGh1
LCAyMDE5LTExLTE0IGF0IDE3OjExIC0wODAwLCBkb24uaGlhdHRAaW50ZWwuY29tIHdyb3RlOg0K
PiA+ID4gRnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPg0KPiA+ID4NCj4gPiA+
IE9uIHNvbWUgcGxhdGZvcm1zIChlLmcuIEtCTCkgdGhhdCBkbyBub3Qgc3VwcG9ydCBHdUMgc3Vi
bWlzc2lvbiwgYnV0DQo+ID4gPiB0aGUgdXNlciBlbmFibGVkIHRoZSBHdUMgY29tbXVuaWNhdGlv
biAoZS5nIGZvciBIdUMgYXV0aGVudGljYXRpb24pDQo+ID4gPiBjYWxsaW5nIHRoZSBHdUMgRVhJ
VF9TX1NUQVRFIGFjdGlvbiByZXN1bHRzIGluIGxvc2Ugb2YgYWJpbGl0eSB0bw0KPiA+ID4gZW50
ZXIgUkM2LiBXZSBjYW4gcmVtb3ZlIHRoZSBHdUMgc3VzcGVuZC9yZXN1bWUgZW50aXJlbHkgYXMg
d2UgZG8NCj4gPiA+IG5vdCBuZWVkIHRvIHNhdmUgdGhlIEd1QyBzdWJtaXNzaW9uIHN0YXR1cy4N
Cj4gPiA+DQo+ID4gPiB2MjogRG8gbm90IHN1c3BlbmQvcmVzdW1lIHRoZSBHdUMgb24gcGxhdGZv
cm1zIHRoYXQgZG8gbm90IHN1cHBvcnQNCj4gPiA+ICAgICBHdWMgU3VibWlzc2lvbi4NCj4gPiA+
IHYzOiBGaXggdHlwbywgbW92ZSBzdXNwZW5kIGxvZ2ljIHRvIHJlbW92ZSBnb3RvLg0KPiA+ID4g
djQ6IFVzZSBpbnRlbF9ndWNfc3VibWlzc2lvbl9pc19lbmFibGVkKCkgdG8gY2hlY2sgR3VDIHN1
Ym1pc3Npb24NCj4gPiA+ICAgICBzdGF0dXMuDQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTog
RG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPg0KPiA+DQo+ID4gQW55IHJlYXNvbiBub3Qg
dG8ganVzdCBjb21iaW5lIGJvdGggb2YgdGhlc2UgaW50byBhIHNpbmdsZSBwYXRjaD8NCj4gDQo+
IEFsc28gcGxlYXNlIHJlbWVtYmVyIHRvIGluY2x1ZGUgdGhlIGJ1Z3ppbGxhIGxpbmssIGFzayBp
ZiB0aGUgcmVwb3J0ZXINCj4gd2FudHMgdG8gYmUgY3JlZGl0ZWQsIGFuZCBtb3N0IGltcG9ydGFu
dCBvZiBhbGwgYSBGaXhlczogc28gd2UgY2FuDQo+IGJhY2twb3J0IGl0IGNvcnJlY3RseS4gSWYg
dGhlcmUgaXMgbm8gc2luZ3VsYXIgY2F1c2UsIHBvaW50IGF0IHRoZQ0KPiAiZ3VjL2h1YyBlbmFi
bGluZyBieSBkZWZhdWx0IiBwYXRjaC4NCj4gDQo+IExhc3QgYnV0IG5vdCBsZWFzdCwgdGhpbmsg
YWJvdXQgaG93IGRpZCB3ZSBtaXNzIGluIHRoaXMgQ0kgYW5kIHByb3ZpZGUNCj4gYSBUZXN0Y2Fz
ZTogdG8gdmVyaWZ5IHRoYXQgaXQgaXMgZml4ZWQgYW5kIHN0YXlzIGZpeGVkLg0KPiAtQ2hyaXMN
Cg0KV2lsbCBkbywgdGhhbmtzIENocmlzLg0KDQpkb24NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
