Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA76C3973FE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 15:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09CB26E03B;
	Tue,  1 Jun 2021 13:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B766E03B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 13:19:42 +0000 (UTC)
IronPort-SDR: WW7MbzZWRgDeuytSj8NNogTa+L5i6vjlnLx97KfkJB6ozJf/P13SJ877Gxxq/ZdPMaoDovYJzc
 /T4CrQT7KLhg==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="190657651"
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="190657651"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 06:19:40 -0700
IronPort-SDR: d3IX9llZLRkC1BU7d4jlhzZJOtD8/KDz+ANJw1+HTCX/+dpgf5IklD+yCneM0LZtrBnaXmJiTn
 pn9ohuL5RJ2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,240,1616482800"; d="scan'208";a="446958996"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jun 2021 06:19:39 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 1 Jun 2021 14:19:39 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2242.008;
 Tue, 1 Jun 2021 14:19:39 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/2] drm/i915: Disable PSR around cdclk changes
Thread-Index: AQHXVuRcPrnPg2krS0qSX5NmJooscqr/Im+g
Date: Tue, 1 Jun 2021 13:19:38 +0000
Message-ID: <f1cd97c765b84fa9b3ab7966cbd5ddfc@intel.com>
References: <20210601124749.89989-1-gwan-gyeong.mun@intel.com>
 <20210601124749.89989-2-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210601124749.89989-2-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Disable PSR around cdclk
 changes
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNdW4sIEd3YW4tZ3llb25nIDxn
d2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKdW5lIDEsIDIwMjEg
Mzo0OCBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU291
emEsIEpvc2UgPGpvc2Uuc291emFAaW50ZWwuY29tPjsgTGlzb3Zza2l5LCBTdGFuaXNsYXYNCj4g
PHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPjsgdmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb207IFJvcGVyLA0KPiBNYXR0aGV3IEQgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+OyBL
YWhvbGEsIE1pa2ENCj4gPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENI
IHYyIDIvMl0gZHJtL2k5MTU6IERpc2FibGUgUFNSIGFyb3VuZCBjZGNsayBjaGFuZ2VzDQo+IA0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQVVYIGxvZ2ljIGlzIG9mdGVuIGNsb2NrZWQgZnJvbSBjZGNsay4gRGlzYWJsZSBQU1Ig
dG8gbWFrZSBzdXJlIHRoZXJlIGFyZSBubw0KPiBodyBpbml0aWF0ZWQgQVVYIHRyYW5zYWN0aW9u
cyBpbiBmbGlnaHQgd2hpbGUgd2UgY2hhbmdlIHRoZSBjZGNsayBmcmVxdWVuY3kuDQo+IA0KPiBD
YzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KDQpS
ZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDEzICsrKysr
KysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4IDQ2NTZh
NmVkYzNiZS4uNjE4YTllMWUyYjBjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0yOCw2ICsyOCw3IEBADQo+ICAjaW5jbHVkZSAiaW50
ZWxfY2RjbGsuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kZS5oIg0KPiAgI2luY2x1ZGUgImludGVs
X2Rpc3BsYXlfdHlwZXMuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9wc3IuaCINCj4gICNpbmNsdWRl
ICJpbnRlbF9zaWRlYmFuZC5oIg0KPiANCj4gIC8qKg0KPiBAQCAtMTkwOCw2ICsxOTA5LDEyIEBA
IHN0YXRpYyB2b2lkIGludGVsX3NldF9jZGNsayhzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsDQo+IA0KPiAgCWludGVsX2R1bXBfY2RjbGtfY29uZmlnKGNkY2xrX2NvbmZpZywg
IkNoYW5naW5nIENEQ0xLIHRvIik7DQo+IA0KPiArCWZvcl9lYWNoX2ludGVsX2VuY29kZXJfd2l0
aF9wc3IoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpIHsNCj4gKwkJc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gKw0KPiArCQlpbnRlbF9wc3Jf
cGF1c2UoaW50ZWxfZHApOw0KPiArCX0NCj4gKw0KPiAgCS8qDQo+ICAJICogTG9jayBhdXgvZ21i
dXMgd2hpbGUgd2UgY2hhbmdlIGNkY2xrIGluIGNhc2UgdGhvc2UNCj4gIAkgKiBmdW5jdGlvbnMg
dXNlIGNkY2xrLiBOb3QgYWxsIHBsYXRmb3Jtcy9wb3J0cyBkbywgQEAgLTE5MzAsNg0KPiArMTkz
NywxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiAgCX0NCj4gIAltdXRleF91bmxvY2soJmRldl9wcml2LT5nbWJ1c19t
dXRleCk7DQo+IA0KPiArCWZvcl9lYWNoX2ludGVsX2VuY29kZXJfd2l0aF9wc3IoJmRldl9wcml2
LT5kcm0sIGVuY29kZXIpIHsNCj4gKwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190
b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gKw0KPiArCQlpbnRlbF9wc3JfcmVzdW1lKGludGVsX2Rw
KTsNCj4gKwl9DQo+ICsNCj4gIAlpZiAoZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sDQo+ICAJCSAg
ICAgaW50ZWxfY2RjbGtfY2hhbmdlZCgmZGV2X3ByaXYtPmNkY2xrLmh3LCBjZGNsa19jb25maWcp
LA0KPiAgCQkgICAgICJjZGNsayBzdGF0ZSBkb2Vzbid0IG1hdGNoIVxuIikpIHsNCj4gLS0NCj4g
Mi4zMS4xDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
