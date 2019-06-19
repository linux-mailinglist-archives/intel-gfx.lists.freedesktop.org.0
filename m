Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BD84B144
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 07:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E046E28C;
	Wed, 19 Jun 2019 05:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F556E28C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 05:19:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 22:19:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,391,1557212400"; d="scan'208";a="186344284"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2019 22:19:21 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 18 Jun 2019 22:19:21 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 18 Jun 2019 22:19:21 -0700
Received: from bgsmsx110.gar.corp.intel.com ([169.254.11.133]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.110]) with mapi id 14.03.0439.000;
 Wed, 19 Jun 2019 10:49:17 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/ehl/dsi: Enable AFE over PPI
 strap
Thread-Index: AQHVJhBzgW2UfYT690aPrEfH92MBp6aib+Yg
Date: Wed, 19 Jun 2019 05:19:17 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B7FF42CDC@BGSMSX110.gar.corp.intel.com>
References: <20190618200000.15847-1-jose.souza@intel.com>
 <20190618200000.15847-2-jose.souza@intel.com>
In-Reply-To: <20190618200000.15847-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODA0YjI0MWMtNTIyYS00ZDcwLTg1Y2MtNjM2NmUyYjY3ZWQ2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJ2MDdhM2pXcGswa2Y2UnNzZmcyWk9QTHE3ZW1oNFZubXV4bDljUjdaTFZnV2JjR0NjRFJlN252N1crU25EZkRFIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/ehl/dsi: Enable AFE over PPI
 strap
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvc8OpDQo+IFJv
YmVydG8gZGUgU291emENCj4gU2VudDogV2VkbmVzZGF5LCBKdW5lIDE5LCAyMDE5IDE6MzAgQU0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5pa3VsYSwgSmFu
aSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
Mi8yXSBkcm0vaTkxNS9laGwvZHNpOiBFbmFibGUgQUZFIG92ZXIgUFBJIHN0cmFwDQo+IA0KPiBU
aGUgb3RoZXIgYWRkaXRpb25hbCBzdGVwIGluIHRoZSBEU0kgc2VxdXFlbmNlIGZvciBFSEwuDQo+
IA0KPiBCU3BlYzogMjA1OTcNCj4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+DQo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
LS0tDQpMb29rcyBnb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZh
bmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KDQpUaGFua3MuDQpWYW5kaXRhDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDggKysrKysrKysNCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgIHwgNCArKysrDQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aWNsX2RzaS5jDQo+IGluZGV4IGVlODU0MjhiMzA5Zi4uM2E2MDFjNzM5ZmM2IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBAQCAtNTQyLDYgKzU0MiwxNCBA
QCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfc2V0dXBfZHBoeV90aW1pbmdzKHN0cnVjdA0KPiBpbnRl
bF9lbmNvZGVyICplbmNvZGVyKQ0KPiAgCQkJSTkxNV9XUklURShEU0lfVEFfVElNSU5HX1BBUkFN
KHBvcnQpLCB0bXApOw0KPiAgCQl9DQo+ICAJfQ0KPiArDQo+ICsJaWYgKElTX0VMS0hBUlRMQUtF
KGRldl9wcml2KSkgew0KPiArCQlmb3JfZWFjaF9kc2lfcG9ydChwb3J0LCBpbnRlbF9kc2ktPnBv
cnRzKSB7DQo+ICsJCQl0bXAgPSBJOTE1X1JFQUQoSUNMX0RQSFlfQ0hLTihwb3J0KSk7DQo+ICsJ
CQl0bXAgfD0gSUNMX0RQSFlfQ0hLTl9BRkVfT1ZFUl9QUElfU1RSQVA7DQo+ICsJCQlJOTE1X1dS
SVRFKElDTF9EUEhZX0NIS04ocG9ydCksIHRtcCk7DQo+ICsJCX0NCj4gKwl9DQo+ICB9DQo+IA0K
PiAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2dhdGVfY2xvY2tzKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyKSBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggaW5kZXgNCj4gMWYyYzNlYmRmODdi
Li5kYzdiMzRjZjhiNDIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAtMTk5
Myw2ICsxOTkzLDEwIEBAIGVudW0gaTkxNV9wb3dlcl93ZWxsX2lkIHsNCj4gICNkZWZpbmUgICBO
X1NDQUxBUih4KQkJCSgoeCkgPDwgMjQpDQo+ICAjZGVmaW5lICAgTl9TQ0FMQVJfTUFTSwkJCSgw
eDdGIDw8IDI0KQ0KPiANCj4gKyNkZWZpbmUgX0lDTF9EUEhZX0NIS05fUkVHCQkJMHgxOTQNCj4g
KyNkZWZpbmUgSUNMX0RQSFlfQ0hLTihwb3J0KQ0KPiAJX01NSU8oX0lDTF9DT01CT1BIWShwb3J0
KSArIF9JQ0xfRFBIWV9DSEtOX1JFRykNCj4gKyNkZWZpbmUgICBJQ0xfRFBIWV9DSEtOX0FGRV9P
VkVSX1BQSV9TVFJBUAkoMSA8PCA3KQ0KPiArDQo+ICAjZGVmaW5lIE1HX1BIWV9QT1JUX0xOKGxu
LCBwb3J0LCBsbjBwMSwgbG4wcDIsIGxuMXAxKSBcDQo+ICAJX01NSU8oX1BPUlQoKHBvcnQpIC0g
UE9SVF9DLCBsbjBwMSwgbG4wcDIpICsgKGxuKSAqICgobG4xcDEpIC0gKGxuMHAxKSkpDQo+IA0K
PiAtLQ0KPiAyLjIyLjANCj4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
