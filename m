Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8DE2538EE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 22:11:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524AE6E41A;
	Wed, 26 Aug 2020 20:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72AFD6E41A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 20:11:30 +0000 (UTC)
IronPort-SDR: IsqCCDJPlbPcHMci6VSuS/jH5KLYR6Iy7cVRb/4L2AtPjuAoXhWfVvRLLwd/D3CY8Mic99Z08e
 /z31WTNRClVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="136444721"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="136444721"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 13:11:30 -0700
IronPort-SDR: Z6kmL8RuT5bZGp5kycvyrpDxmJ72SDSaDpSxzT1wAq+3RcZYeBvx2UlCmM0J3dVMXCl5lufoKH
 pCrEwdL/PJVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="403174587"
Received: from fmsmsx603-2.cps.intel.com (HELO fmsmsx603.amr.corp.intel.com)
 ([10.18.84.213])
 by fmsmga001.fm.intel.com with ESMTP; 26 Aug 2020 13:11:29 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 13:10:18 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 13:10:18 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.136]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.232]) with mapi id 14.03.0439.000;
 Wed, 26 Aug 2020 13:10:18 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v2 3/3] drm/i915/ehl: Update voltage swing table
Thread-Index: AQHWew9NQkbRdkZI00iygKjWevV+LqlJ5JIAgAFlO4A=
Date: Wed, 26 Aug 2020 20:10:18 +0000
Message-ID: <5cf340507085774cb27ce14d30ab48901f11a784.camel@intel.com>
References: <20200825184343.63253-1-jose.souza@intel.com>
 <20200825184343.63253-3-jose.souza@intel.com>
 <20200825225422.GJ3934000@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200825225422.GJ3934000@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.240.12]
Content-ID: <B85633FED80000459E14725F1FD90EDD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/ehl: Update voltage swing
 table
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTA4LTI1IGF0IDE1OjU0IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBUdWUsIEF1ZyAyNSwgMjAyMCBhdCAxMTo0Mzo0M0FNIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIHdyb3RlOg0KPiA+IFVwZGF0ZSB3aXRoIGxhdGVzdCB0dW5uaW5nIGluIHRoZSB0YWJs
ZS4NCj4gPiANCj4gPiBCU3BlYzogMjEyNTcNCj4gPiBDYzogTWF0dCBSb3BlciA8DQo+ID4gbWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbQ0KPiA+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDwNCj4gPiBqb3NlLnNvdXphQGludGVsLmNvbQ0KPiA+ID4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDEyICsr
KysrKy0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Yw0KPiA+IGluZGV4IDY5OTUxMTg3MjI5MC4uYzdlNjRlMjBhNzcyIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gQEAgLTU3MiwxNCArNTcy
LDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgZWhsX2NvbWJvX3Bo
eV9kZGlfdHJhbnNsYXRpb25zX2RwW10gPSB7DQo+ID4gIAkJCQkJCS8qIE5UIG1WIFRyYW5zIG1W
IGRiICAgICovDQo+ID4gIAl7IDB4QSwgMHgzMywgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiAzNTAg
ICAzNTAgICAgICAwLjAgICAqLw0KPiA+ICAJeyAweEEsIDB4NDcsIDB4MzYsIDB4MDAsIDB4MDkg
fSwJLyogMzUwICAgNTAwICAgICAgMy4xICAgKi8NCj4gPiAtCXsgMHhDLCAweDY0LCAweDMwLCAw
eDAwLCAweDBGIH0sCS8qIDM1MCAgIDcwMCAgICAgIDYuMCAgICovDQo+ID4gLQl7IDB4NiwgMHg3
RiwgMHgyQywgMHgwMCwgMHgxMyB9LAkvKiAzNTAgICA5MDAgICAgICA4LjIgICAqLw0KPiA+ICsJ
eyAweEMsIDB4NjQsIDB4MzQsIDB4MDAsIDB4MEIgfSwJLyogMzUwICAgNzAwICAgICAgNi4wICAg
Ki8NCj4gPiArCXsgMHg2LCAweDdGLCAweDMwLCAweDAwLCAweDBGIH0sCS8qIDM1MCAgIDkwMCAg
ICAgIDguMiAgICovDQo+ID4gIAl7IDB4QSwgMHg0NiwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA1
MDAgICA1MDAgICAgICAwLjAgICAqLw0KPiA+IC0JeyAweEMsIDB4NjQsIDB4MzYsIDB4MDAsIDB4
MDkgfSwJLyogNTAwICAgNzAwICAgICAgMi45ICAgKi8NCj4gPiAtCXsgMHg2LCAweDdGLCAweDMw
LCAweDAwLCAweDBGIH0sCS8qIDUwMCAgIDkwMCAgICAgIDUuMSAgICovDQo+ID4gKwl7IDB4Qywg
MHg2NCwgMHgzOCwgMHgwMCwgMHgwNyB9LAkvKiA1MDAgICA3MDAgICAgICAyLjkgICAqLw0KPiA+
ICsJeyAweDYsIDB4N0YsIDB4MzIsIDB4MDAsIDB4MEQgfSwJLyogNTAwICAgOTAwICAgICAgNS4x
ICAgKi8NCj4gPiAgCXsgMHhDLCAweDYxLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDY1MCAgIDcw
MCAgICAgIDAuNiAgICovDQo+ID4gLQl7IDB4NiwgMHg3RiwgMHgzNywgMHgwMCwgMHgwOCB9LAkv
KiA2MDAgICA5MDAgICAgICAzLjUgICAqLw0KPiA+IC0JeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAs
IDB4MDAgfSwJLyogOTAwICAgOTAwICAgICAgMC4wICAgKi8NCj4gPiArCXsgMHg2LCAweDdGLCAw
eDM3LCAweDAwLCAweDA3IH0sCS8qIDYwMCAgIDkwMCAgICAgIDMuNSAgICovDQo+ID4gKwl7IDB4
NiwgMHg3RiwgMHgzOCwgMHgwMCwgMHgwMCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLw0K
PiANCj4gSSB0aGluayBpdCBnb3QgbWlzc2VkIGF0IHRoZSBib3R0b20gb2YgbXkgbGFzdCByZXNw
b25zZSwgYnV0IEkgc2VlDQo+IHNsaWdodGx5IGRpZmZlcmVudCB2YWx1ZXMgZm9yIHRoZSBsYXN0
IHR3byByb3dzIGhlcmUgaW4gdGhlIEVITCB0YWJsZS4NCj4gU3BlY2lmaWNhbGx5IHRoZSB0aGly
ZCBjb2x1bW4gKGN1cnNvciBjb2VmZiBkdzQpIC0tIEkgc2VlIDB4MzggYW5kIDB4M0YNCj4gYXMg
dGhlIGxhc3QgdHdvIHZhbHVlcz8NCg0KT3BzLCBteSBiYWQuIEZpeGluZyBpdA0KDQo+IA0KPiAN
Cj4gTWF0dA0KPiANCj4gPiAgfTsNCj4gPiAgDQo+ID4gIHN0cnVjdCBpY2xfbWdfcGh5X2RkaV9i
dWZfdHJhbnMgew0KPiA+IC0tIA0KPiA+IDIuMjguMA0KPiA+IA0KPiANCj4gDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
