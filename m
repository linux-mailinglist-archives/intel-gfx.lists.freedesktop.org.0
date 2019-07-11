Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C598E65339
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 10:32:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC15F6E07F;
	Thu, 11 Jul 2019 08:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8C0F6E15F
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 08:32:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 01:32:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="171169592"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga006.jf.intel.com with ESMTP; 11 Jul 2019 01:32:16 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jul 2019 01:32:16 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jul 2019 01:32:15 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.155]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.194]) with mapi id 14.03.0439.000;
 Thu, 11 Jul 2019 14:02:13 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, "Lisovskiy,
 Stanislav" <stanislav.lisovskiy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix wrong escape clock divisor init for GLK
Thread-Index: AQHVNym718WYOW7u00qCr5/YucKW4KbDjl4AgAGF86A=
Date: Thu, 11 Jul 2019 08:32:12 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B8090DE43@BGSMSX108.gar.corp.intel.com>
References: <20190710141257.1062-1-stanislav.lisovskiy@intel.com>
 <ab8278e1-2270-9207-9b16-a0d0f9821ca8@linux.intel.com>
In-Reply-To: <ab8278e1-2270-9207-9b16-a0d0f9821ca8@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWVkNGZjNGUtZmJhNi00ZDlkLTgzNWItYzQ0ZWIyNzk5MmUwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJ2ZzlkbXJvSWhWRVRjYVhZWXRlbWNqRUYwOHJ5Y2pJRDBKNENMTmt6K1c1b1wvUXVKYnhxRGtCeGRZaFhjNFRTTCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wrong escape clock divisor
 init for GLK
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwg
SnVseSAxMCwgMjAxOSA4OjA0IFBNDQo+IFRvOiBMaXNvdnNraXksIFN0YW5pc2xhdiA8c3Rhbmlz
bGF2Lmxpc292c2tpeUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBDYzogUGVyZXMsIE1hcnRpbiA8bWFydGluLnBlcmVzQGludGVsLmNvbT47IHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tOw0KPiBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5l
bkBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47DQo+IEt1
bGthcm5pLCBWYW5kaXRhIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCj4gU3ViamVjdDog
UmU6IFtQQVRDSF0gZHJtL2k5MTU6IEZpeCB3cm9uZyBlc2NhcGUgY2xvY2sgZGl2aXNvciBpbml0
IGZvciBHTEsNCj4gDQo+IE9wIDEwLTA3LTIwMTkgb20gMTY6MTIgc2NocmVlZiBTdGFuaXNsYXYg
TGlzb3Zza2l5Og0KPiA+IEFjY29yZGluZyB0byBCc3BlYyBjbG9jayBkaXZpc29yIHJlZ2lzdGVy
cyBpbiBHZW1pbmlMYWtlIHNob3VsZCBiZQ0KPiA+IGluaXRpYWxpemVkIGJ5IHNoaWZ0aW5nIDEo
PDwpIHRvIGFtb3VudCBvZiBjb3JyZXNwb25kZW50IGRpdmlzb3IuDQo+ID4gV2hpbGUgaTkxNSB3
YXMgd3JpdGluZyBhbGwgdGhpcyB0aW1lIHRoYXQgdmFsdWUgYXMgaXMuDQo+ID4NCj4gPiBTdXJw
cmlzaW5nbHkgdGhhdCBpdCBieSBhY2NpZGVudCB3b3JrZWQsIHVudGlsIHdlIG1ldCBzb21lIGlz
c3VlcyB3aXRoDQo+ID4gTWljcm90ZWNoIEV0YWIuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBT
dGFuaXNsYXYuTGlzb3Zza2l5QGludGVsLmNvbQ0KPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3Mu
ZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg4MjYNCj4gPiAtLS0NCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5jIHwgNCArKy0tDQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMNCj4gPiBpbmRl
eCA5OWNjM2UyZTljMmMuLmYwMTZhNzc2YTM5ZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMNCj4gPiBAQCAtMzk2LDggKzM5Niw4IEBAIHN0
YXRpYyB2b2lkIGdsa19kc2lfcHJvZ3JhbV9lc2NfY2xvY2soc3RydWN0DQo+IGRybV9kZXZpY2Ug
KmRldiwNCj4gPiAgCWVsc2UNCj4gPiAgCQl0eGVzYzJfZGl2ID0gMTA7DQo+ID4NCj4gPiAtCUk5
MTVfV1JJVEUoTUlQSU9fVFhFU0NfQ0xLX0RJVjEsIHR4ZXNjMV9kaXYgJg0KPiBHTEtfVFhfRVND
X0NMS19ESVYxX01BU0spOw0KPiA+IC0JSTkxNV9XUklURShNSVBJT19UWEVTQ19DTEtfRElWMiwg
dHhlc2MyX2RpdiAmDQo+IEdMS19UWF9FU0NfQ0xLX0RJVjJfTUFTSyk7DQo+ID4gKwlJOTE1X1dS
SVRFKE1JUElPX1RYRVNDX0NMS19ESVYxLCAoMSA8PCAodHhlc2MxX2RpdiAtIDEpKSAmDQo+IEdM
S19UWF9FU0NfQ0xLX0RJVjFfTUFTSyk7DQo+ID4gKwlJOTE1X1dSSVRFKE1JUElPX1RYRVNDX0NM
S19ESVYyLCAoMSA8PCAodHhlc2MyX2RpdiAtIDEpKSAmDQo+ID4gK0dMS19UWF9FU0NfQ0xLX0RJ
VjJfTUFTSyk7DQo+ID4gIH0NClRoZSBjb2RlIGNoYW5nZSBsb29rcyBnb29kIHRvIG1lLiBXaXRo
IE1hYXJ0ZW4ncyBjb21tZW50IGZpeGVkLA0KDQpSZXZpZXdlZC1ieTogVmFuZGl0YSBLdWxrYXJu
aSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQoNClJlZ2FyZHMsDQpWYW5kaXRhDQo+ID4N
Cj4gPiAgLyogUHJvZ3JhbSBCWFQgTWlwaSBjbG9ja3MgYW5kIGRpdmlkZXJzICovDQo+IA0KPiBN
aXNzaW5nIGEgZml4ZXMgdGFnPw0KPiANCj4gZmluZCB0aGUgb3JpZ2luYWwgY29tbWl0IHRoYXQg
aW50cm9kdWNlZCB0aGlzLCB0aGVuIHJ1biBkaW0gZml4ZXMgJGNvbW1pdGlkLg0KPiANCj4gQ2hl
ZXJzLA0KPiANCj4gTWFhcnRlbg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
