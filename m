Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E4A3B2AB1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 10:48:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B0BC6EAA1;
	Thu, 24 Jun 2021 08:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C9D6EA4A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 08:48:46 +0000 (UTC)
IronPort-SDR: bl+1GaiwgunLWZslDq+UbDUxiuXURHR5GW4JEeVGD3a3Mlktw4adSR4U2vHsdGLEe/zQ/3mSCi
 XHRX66gtYDyA==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="194728621"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="194728621"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 01:48:44 -0700
IronPort-SDR: J2e1bp1heFQF96XLOwox6ot6bsd82kbqT+tsMguU4cFjPUTs/hc5avQgTjLsTohuyNKwsyplkn
 Lnxgj8bNTefQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="487680711"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 24 Jun 2021 01:48:44 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 24 Jun 2021 01:48:43 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 24 Jun 2021 14:18:41 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Thu, 24 Jun 2021 14:18:41 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [V3] drm/i915/display: Fix state mismatch in drm infoframe
Thread-Index: AQHXOAl7S3TfGXOCY0OLgLy1bqv01qsjOs4g
Date: Thu, 24 Jun 2021 08:48:41 +0000
Message-ID: <e3301e08f15b416a8c206071d495e3f5@intel.com>
References: <20210423141609.28568-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20210423141609.28568-1-bhanuprakash.modem@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [V3] drm/i915/display: Fix state mismatch in drm
 infoframe
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTW9kZW0sIEJoYW51cHJh
a2FzaCA8YmhhbnVwcmFrYXNoLm1vZGVtQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBBcHJp
bCAyMywgMjAyMSA3OjQ2IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBNb2RlbSwgQmhhbnVwcmFrYXNoIDxiaGFudXByYWthc2gubW9kZW1AaW50ZWwuY29t
PjsgU2hhbmthciwgVW1hDQo+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbVjNdIGRybS9p
OTE1L2Rpc3BsYXk6IEZpeCBzdGF0ZSBtaXNtYXRjaCBpbiBkcm0gaW5mb2ZyYW1lDQo+IA0KPiBX
aGlsZSByZWFkaW5nIHRoZSBTRFAgaW5mb2ZyYW1lLCB3ZSBhcmUgZ2V0dGluZyBmaWx0ZXJlZCB3
aXRoIHRoZSBlbmNvZGVyIHR5cGUNCj4gSU5URUxfT1VUUFVUX0RESSB3aGljaCBjYXVzZXMgdGhl
IGluZm9mcmFtZSBtaXNtYXRjaC4gVGhpcyBwYXRjaCB3aWxsIGRyb3ANCj4gZW5jb2Rlci0+dHlw
ZSBjaGVjayBhcyB3ZSBjYW4gbWFzayBpbmRpdmlkdWFsIGluZm9mcmFtZSB0eXBlLg0KDQpJdCB3
aWxsIGJlIGdvb2QgdG8gbWVudGlvbiB0aGF0IGlzc3VlIGhhcHBlbnMgd2l0aCBlRFAuIFdpdGgg
dGhhdCBhZGRlZCwNCg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+DQoNCj4gWzEwMjUuNjA2NTU2XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9S
KiBtaXNtYXRjaCBpbiBkcm0gaW5mb2ZyYW1lDQo+IFsxMDI1LjYwNzg2NV0gaTkxNSAwMDAwOjAw
OjAyLjA6IFtkcm1dICpFUlJPUiogZXhwZWN0ZWQ6DQo+IFsxMDI1LjYwNzg3OV0gaTkxNSAwMDAw
OjAwOjAyLjA6IEhETUkgaW5mb2ZyYW1lOiBEeW5hbWljIFJhbmdlIGFuZCBNYXN0ZXJpbmcsDQo+
IHZlcnNpb24gMSwgbGVuZ3RoIDI2IFsxMDI1LjYwNzg4OV0gaTkxNSAwMDAwOjAwOjAyLjA6IGxl
bmd0aDogMjYgWzEwMjUuNjA3ODk4XSBpOTE1DQo+IDAwMDA6MDA6MDIuMDogbWV0YWRhdGEgdHlw
ZTogMCBbMTAyNS42MDgyOTJdIGk5MTUgMDAwMDowMDowMi4wOiBlb3RmOiAyDQo+IFsxMDI1LjYw
ODMwMl0gaTkxNSAwMDAwOjAwOjAyLjA6IHhbMF06IDM1NDAwIFsxMDI1LjYwODMxMl0gaTkxNSAw
MDAwOjAwOjAyLjA6DQo+IHlbMF06IDE0NTk5IFsxMDI1LjYwOTExNV0gaTkxNSAwMDAwOjAwOjAy
LjA6IHhbMV06IDg1MDAgWzEwMjUuNjA5OTQ3XSBpOTE1DQo+IDAwMDA6MDA6MDIuMDogeVsxXTog
Mzk4NTAgWzEwMjUuNjA5OTU5XSBpOTE1IDAwMDA6MDA6MDIuMDogeFsyXTogNjU1MA0KPiBbMTAy
NS42MDk5NzBdIGk5MTUgMDAwMDowMDowMi4wOiB5WzJdOiAyMzAwIFsxMDI1LjYwOTk4MF0gaTkx
NSAwMDAwOjAwOjAyLjA6DQo+IHdoaXRlIHBvaW50IHg6IDE1NjM0IFsxMDI1LjYwOTk4OV0gaTkx
NSAwMDAwOjAwOjAyLjA6IHdoaXRlIHBvaW50IHk6IDE2NDUwDQo+IFsxMDI1LjYxMDM4MV0gaTkx
NSAwMDAwOjAwOjAyLjA6IG1heF9kaXNwbGF5X21hc3RlcmluZ19sdW1pbmFuY2U6IDEwMDANCj4g
WzEwMjUuNjEwMzkyXSBpOTE1IDAwMDA6MDA6MDIuMDogbWluX2Rpc3BsYXlfbWFzdGVyaW5nX2x1
bWluYW5jZTogNTAwDQo+IFsxMDI1LjYxMDQwMV0gaTkxNSAwMDAwOjAwOjAyLjA6IG1heF9jbGw6
IDUwMCBbMTAyNS42MTA4MTZdIGk5MTUgMDAwMDowMDowMi4wOg0KPiBtYXhfZmFsbDogMTAwMCBb
MTAyNS42MTI0NTddIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIGZvdW5kOg0KPiBb
MTAyNS42MTQzNTRdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLSBbMTAyNS42
MTYyNDRdIHBpcGUgc3RhdGUgZG9lc24ndA0KPiBtYXRjaCENCj4gWzEwMjUuNjE3NjQwXSBXQVJO
SU5HOiBDUFU6IDYgUElEOiAyMTE0IGF0DQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jOjkzMzINCj4gaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKzB4MTRkNC8w
eDE3YzAgW2k5MTVdDQo+IA0KPiBWMjoNCj4gKiBEcm9wIGVuY29kZXItPnR5cGUgY2hlY2sNCj4g
DQo+IFYzOg0KPiAqIFJlbW92ZSBpbnRlcm5hbCByZXZpZXdzDQo+IA0KPiBDYzogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEJoYW51cHJha2FzaCBN
b2RlbSA8YmhhbnVwcmFrYXNoLm1vZGVtQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAzIC0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+IGluZGV4IDRhZDEyZGRlNTkzOC4uMjgwYjBiNWVlNzBlIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC0zMDE0LDkgKzMwMTQsNiBA
QCB2b2lkIGludGVsX3JlYWRfZHBfc2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0K
PiAgCQkgICAgICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICAJCSAg
ICAgICB1bnNpZ25lZCBpbnQgdHlwZSkNCj4gIHsNCj4gLQlpZiAoZW5jb2Rlci0+dHlwZSAhPSBJ
TlRFTF9PVVRQVVRfRERJKQ0KPiAtCQlyZXR1cm47DQo+IC0NCj4gIAlzd2l0Y2ggKHR5cGUpIHsN
Cj4gIAljYXNlIERQX1NEUF9WU0M6DQo+ICAJCWludGVsX3JlYWRfZHBfdnNjX3NkcChlbmNvZGVy
LCBjcnRjX3N0YXRlLA0KPiAtLQ0KPiAyLjIwLjENCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
