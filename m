Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEE8FE412
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 18:35:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FEA6E9E9;
	Fri, 15 Nov 2019 17:35:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BD546E0E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 17:35:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 09:35:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,309,1569308400"; d="scan'208";a="379993629"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga005.jf.intel.com with ESMTP; 15 Nov 2019 09:35:05 -0800
Received: from orsmsx106.amr.corp.intel.com ([169.254.1.150]) by
 ORSMSX108.amr.corp.intel.com ([169.254.2.82]) with mapi id 14.03.0439.000;
 Fri, 15 Nov 2019 09:35:05 -0800
From: "Hiatt, Don" <don.hiatt@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Summers, Stuart"
 <stuart.summers@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
Thread-Index: AQHVm1GWfjXO3xe0eUmHZYvGqmCEo6eM/1MAgAAB9oD//33g4A==
Date: Fri, 15 Nov 2019 17:35:04 +0000
Message-ID: <97654A90DB924C44A3AE6C902A3FEAC15F997F24@ORSMSX106.amr.corp.intel.com>
References: <20191115011112.25249-1-don.hiatt@intel.com>
 <20191115011112.25249-2-don.hiatt@intel.com>
 <5cebb6ef4b95c893ec53f68113439a3922ea8163.camel@intel.com>
 <157383839967.11997.12324024656389899848@skylake-alporthouse-com>
In-Reply-To: <157383839967.11997.12324024656389899848@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTM3ZWYxMmMtN2RjMS00YTZlLWEwMGUtOTRhMGIyNTY1MTA3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiazB2MXZWYXQ0NEJscFB0dU53dEFqR1gxelJtODRWS3F0cVwvMW8wQWlIbVp3WjIxMEFhU3pQbExoQXRzS0N1amMifQ==
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

SGkgU3R1YXJ0L0NocmlzLA0KDQo+IEZyb206IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPg0KPiBTZW50OiBGcmlkYXksIE5vdmVtYmVyIDE1LCAyMDE5IDk6MjAgQU0NCj4g
VG86IEhpYXR0LCBEb24gPGRvbi5oaWF0dEBpbnRlbC5jb20+OyBTdW1tZXJzLCBTdHVhcnQNCj4g
PHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSCAyLzJdIGRybS9pOTE1L2d1Yzog
U2tpcCBzdXNwZW5kL3Jlc3VtZSBHdUMNCj4gYWN0aW9uIG9uIHBsYXRmb3JtcyB3L28gR3VDIHN1
Ym1pc3Npb24NCj4gDQo+IFF1b3RpbmcgU3VtbWVycywgU3R1YXJ0ICgyMDE5LTExLTE1IDE3OjEy
OjU4KQ0KPiA+IE9uIFRodSwgMjAxOS0xMS0xNCBhdCAxNzoxMSAtMDgwMCwgZG9uLmhpYXR0QGlu
dGVsLmNvbSB3cm90ZToNCj4gPiA+IEZyb206IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNv
bT4NCj4gPiA+DQo+ID4gPiBPbiBzb21lIHBsYXRmb3JtcyAoZS5nLiBLQkwpIHRoYXQgZG8gbm90
IHN1cHBvcnQgR3VDIHN1Ym1pc3Npb24sIGJ1dA0KPiA+ID4gdGhlIHVzZXIgZW5hYmxlZCB0aGUg
R3VDIGNvbW11bmljYXRpb24gKGUuZyBmb3IgSHVDIGF1dGhlbnRpY2F0aW9uKQ0KPiA+ID4gY2Fs
bGluZyB0aGUgR3VDIEVYSVRfU19TVEFURSBhY3Rpb24gcmVzdWx0cyBpbiBsb3NlIG9mIGFiaWxp
dHkgdG8NCj4gPiA+IGVudGVyIFJDNi4gV2UgY2FuIHJlbW92ZSB0aGUgR3VDIHN1c3BlbmQvcmVz
dW1lIGVudGlyZWx5IGFzIHdlIGRvDQo+ID4gPiBub3QgbmVlZCB0byBzYXZlIHRoZSBHdUMgc3Vi
bWlzc2lvbiBzdGF0dXMuDQo+ID4gPg0KPiA+ID4gdjI6IERvIG5vdCBzdXNwZW5kL3Jlc3VtZSB0
aGUgR3VDIG9uIHBsYXRmb3JtcyB0aGF0IGRvIG5vdCBzdXBwb3J0DQo+ID4gPiAgICAgR3VjIFN1
Ym1pc3Npb24uDQo+ID4gPiB2MzogRml4IHR5cG8sIG1vdmUgc3VzcGVuZCBsb2dpYyB0byByZW1v
dmUgZ290by4NCj4gPiA+IHY0OiBVc2UgaW50ZWxfZ3VjX3N1Ym1pc3Npb25faXNfZW5hYmxlZCgp
IHRvIGNoZWNrIEd1QyBzdWJtaXNzaW9uDQo+ID4gPiAgICAgc3RhdHVzLg0KPiA+ID4NCj4gPiA+
IFNpZ25lZC1vZmYtYnk6IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4NCj4gPg0KPiA+
IEFueSByZWFzb24gbm90IHRvIGp1c3QgY29tYmluZSBib3RoIG9mIHRoZXNlIGludG8gYSBzaW5n
bGUgcGF0Y2g/DQo+IA0KPiBBbHNvIHBsZWFzZSByZW1lbWJlciB0byBpbmNsdWRlIHRoZSBidWd6
aWxsYSBsaW5rLCBhc2sgaWYgdGhlIHJlcG9ydGVyDQo+IHdhbnRzIHRvIGJlIGNyZWRpdGVkLCBh
bmQgbW9zdCBpbXBvcnRhbnQgb2YgYWxsIGEgRml4ZXM6IHNvIHdlIGNhbg0KPiBiYWNrcG9ydCBp
dCBjb3JyZWN0bHkuIElmIHRoZXJlIGlzIG5vIHNpbmd1bGFyIGNhdXNlLCBwb2ludCBhdCB0aGUN
Cj4gImd1Yy9odWMgZW5hYmxpbmcgYnkgZGVmYXVsdCIgcGF0Y2guDQo+IA0KPiBMYXN0IGJ1dCBu
b3QgbGVhc3QsIHRoaW5rIGFib3V0IGhvdyBkaWQgd2UgbWlzcyBpbiB0aGlzIENJIGFuZCBwcm92
aWRlDQo+IGEgVGVzdGNhc2U6IHRvIHZlcmlmeSB0aGF0IGl0IGlzIGZpeGVkIGFuZCBzdGF5cyBm
aXhlZC4NCj4gLUNocmlzDQoNCg0KSGkgU3R1YXJ0L0NocmlzLg0KDQpBY3R1YWxseSwgSSdsbCBq
dXN0IGNvbWJpbmUgdGhlbSBub3cuIEkgdGhpbmsgeW91ciBwb2ludCBpcyB2YWxpZCBhbmQgYmVp
bmcgYSBzaW5nbGUNCnBhdGNoIHdpbGwgbWFrZSBpdCBlYXNpZXIgdG8gYmFja3BvcnQgYW5kIHRy
YWNrIHdydCB0byBDaHJpcydzIGNvbW1lbnRzLg0KDQpUaGFua3MsDQoNCmRvbg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
