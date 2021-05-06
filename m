Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 455D03752C8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 13:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A736E128;
	Thu,  6 May 2021 11:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58BA16E128
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 11:11:05 +0000 (UTC)
IronPort-SDR: Y8xYov/ymAUOn5fLxDSMJe2fPOiBhB/GB24TjIp0uJBIedI/Ixg1v1QKtnko3TEnkr1KoCeHDd
 1oiextIxEjTw==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="185574262"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="185574262"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 04:11:04 -0700
IronPort-SDR: YNzwdTAvud4JnlwcvIDGYeNYIoyceBcZ7Jn6sIn+Se5j7E2iClq8vgygp25+0+uosy9bv5iNYl
 ngkuixwZymIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459237822"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 04:11:03 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 6 May 2021 12:11:03 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Thu, 6 May 2021 12:11:03 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/11] drm/i915/adl_p: Require a minimum of 8
 tiles stride for DPT FBs
Thread-Index: AQHXMUY3nlziZQrQJEqxPdjdmXCoE6q2FY2AgCBYwTA=
Date: Thu, 6 May 2021 11:11:02 +0000
Message-ID: <322ea392270c499ba41b7805646520a5@intel.com>
References: <20210414155208.3161335-1-imre.deak@intel.com>
 <20210414155208.3161335-11-imre.deak@intel.com>
 <20210415221233.GB3262868@ideak-desk.fi.intel.com>
In-Reply-To: <20210415221233.GB3262868@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915/adl_p: Require a minimum of
 8 tiles stride for DPT FBs
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBGcmlkYXksIEFwcmlsIDE2LCAyMDIxIDE6MTMgQU0NCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRD
SCAxMC8xMV0gZHJtL2k5MTUvYWRsX3A6IFJlcXVpcmUgYSBtaW5pbXVtIG9mDQo+IDggdGlsZXMg
c3RyaWRlIGZvciBEUFQgRkJzDQo+IA0KPiBPbiBXZWQsIEFwciAxNCwgMjAyMSBhdCAwNjo1Mjow
N1BNICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+ID4gVGhlIHNwZWNpZmljYXRpb24gb25seSBy
ZXF1aXJlcyBEUFQgRkIgc3RyaWRlcyB0byBiZSBQT1QgYWxpZ25lZCwgYnV0DQo+ID4gdGhlcmUg
c2VlbXMgdG8gYmUgYWxzbyBhIG1pbmltdW0gb2YgOCBzdHJpZGUgdGlsZSByZXF1aXJlbWVudC4N
Cj4gPiBTY2FubmluZyBvdXQgRkJzIHdpdGggPCA4IHN0cmlkZSB0aWxlcyB3aWxsIHJlc3VsdCBp
biBwaXBlIGZhdWx0cw0KPiA+IChldmVuIHRob3VnaCB0aGUgc3RyaWRlIGlzIFBPVCBhbGlnbmVk
KS4NCj4gDQo+IFRoaXMgaXMgbm93IGNvbmZpcm1lZCBpbiBic3BlYyAoaW5kZXggNTMzOTMpLg0K
PiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+
ID4gQWNrZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIuYyB8
IDYgKysrKystDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmIu
Yw0KPiA+IGluZGV4IGJkODYyZjc3NzYyYTIuLjJlZTEwZWNlMjdjNTcgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jDQo+ID4gQEAgLTYwOSw3ICs2MDks
MTEgQEAgcGxhbmVfdmlld19kc3Rfc3RyaWRlX3RpbGVzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9m
cmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSwNCj4gPiAgCQkJICAgIHVuc2lnbmVkIGlu
dCBwaXRjaF90aWxlcykNCj4gPiAgew0KPiA+ICAJaWYgKGludGVsX2ZiX25lZWRzX3BvdF9zdHJp
ZGVfcmVtYXAoZmIpKQ0KPiA+IC0JCXJldHVybiByb3VuZHVwX3Bvd19vZl90d28ocGl0Y2hfdGls
ZXMpOw0KPiA+ICsJCS8qDQo+ID4gKwkJICogQURMX1AsIHRoZSBvbmx5IHBsYXRmb3JtIG5lZWRp
bmcgYSBQT1Qgc3RyaWRlIGhhcyBhDQo+IG1pbmltdW0NCj4gPiArCQkgKiBvZiA4IHN0cmlkZSB0
aWxlcy4NCj4gPiArCQkgKi8NCj4gPiArCQlyZXR1cm4gcm91bmR1cF9wb3dfb2ZfdHdvKG1heChw
aXRjaF90aWxlcywgOHUpKTsNCj4gPiAgCWVsc2UNCj4gPiAgCQlyZXR1cm4gcGl0Y2hfdGlsZXM7
DQo+ID4gIH0NCj4gPiAtLQ0KPiA+IDIuMjcuMA0KPiA+DQo+ID4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
DQo+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
