Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A59AE212F43
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 00:06:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5156E5A1;
	Thu,  2 Jul 2020 22:06:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D96A56E5A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 22:06:38 +0000 (UTC)
IronPort-SDR: dR/TZ18d2mUT5ETr4FpkEXhyEzr0C8JyjZa7N4nwHDYospxRHZgZ974w69qAzJ6wghNWy6G2K/
 NX21/nl7FtDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="148573542"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="148573542"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 15:06:38 -0700
IronPort-SDR: 342vVc+ccoTCLjOvPqgZfmXKYGfpo7qiuZAEFfYVnThbFIRxRmtnfRdlGLLEZ9oxT9jCXN2lm6
 UPzogCqoCJmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="296029257"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 02 Jul 2020 15:06:38 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Jul 2020 15:06:37 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 2 Jul 2020 15:06:37 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.60]) with mapi id 14.03.0439.000;
 Thu, 2 Jul 2020 15:06:37 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915/fbc: Enable fbc on i865
Thread-Index: AQHWUIbRx6ghZlFdIEWJ1iE6brOOt6j1TtyA
Date: Thu, 2 Jul 2020 22:06:35 +0000
Message-ID: <c79df199abb509c56c5c57ae2ecba2defd665348.camel@intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
 <20200702153723.24327-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20200702153723.24327-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <C2257FBC358FE246A0F4B45543AB697F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/fbc: Enable fbc on i865
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

T24gVGh1LCAyMDIwLTA3LTAyIGF0IDE4OjM3ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVW5saWtlIGFsbCB0aGUgb3RoZXIgcHJlLXNuYiBkZXNrdG9wIHBsYXRmb3JtcyBpODY1
IGFjdHVhbGx5DQo+IHN1cHBvcnRzIEZCQy4gTGV0J3MgZW5hYmxlIGl0Lg0KPiANCj4gUXVvdGUg
ZnJvbSB0aGUgc3BlYzoNCj4gIkRldlNERyBwcm92aWRlcyB0aGUgc2FtZSBSdW4tTGVuZ3RoIEVu
Y29kZWQgRnJhbWUgQnVmZmVyDQo+ICBDb21wcmVzc2lvbiAoUkxFRkJDKSBmdW5jdGlvbiBhcyBl
eGlzdHMgaW4gRGV2TUdNLiINCj4gDQo+IEFzIGk4NjUgb25seSBoYXMgdGhlIG9uZSBwaXBlIHdl
IHdhbnQgdG8gc2tpcCBtYXNzYWdpbmcgdGhlDQo+IHBsYW5lPC0+cGlwZSBhc3NpZ25tZW50IGFp
bWVkIGF0IGdldHRpbmcgRkJDK0xWRFMgd29ya2luZyBvbg0KPiB0aGUgbW9iaWxlIHBsYXRmb3Jt
cy4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMgICAgICAgICAgICAgIHwgMSArDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggODRlMmExN2I1ZWNiLi42NTNmNjYxN2Q1OWEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IEBAIC0xNjMzMiw3ICsxNjMzMiw4IEBAIGludGVsX3ByaW1hcnlfcGxhbmVfY3JlYXRlKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUpDQo+ICAJICog
T24gZ2VuMi8zIG9ubHkgcGxhbmUgQSBjYW4gZG8gRkJDLCBidXQgdGhlIHBhbmVsIGZpdHRlciBh
bmQgTFZEUw0KPiAgCSAqIHBvcnQgaXMgaG9va2VkIHRvIHBpcGUgQi4gSGVuY2Ugd2Ugd2FudCBw
bGFuZSBBIGZlZWRpbmcgcGlwZSBCLg0KPiAgCSAqLw0KPiAtCWlmIChIQVNfRkJDKGRldl9wcml2
KSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpIDwgNCkNCj4gKwlpZiAoSEFTX0ZCQyhkZXZfcHJpdikg
JiYgSU5URUxfR0VOKGRldl9wcml2KSA8IDQgJiYNCj4gKwkgICAgSU5URUxfTlVNX1BJUEVTKGRl
dl9wcml2KSA9PSAyKQ0KPiAgCQlwbGFuZS0+aTl4eF9wbGFuZSA9IChlbnVtIGk5eHhfcGxhbmVf
aWQpICFwaXBlOw0KPiAgCWVsc2UNCj4gIAkJcGxhbmUtPmk5eHhfcGxhbmUgPSAoZW51bSBpOXh4
X3BsYW5lX2lkKSBwaXBlOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gaW5kZXggZTVmZGYx
N2NkOWNkLi4wYmUzYjY2Y2U2NjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiBA
QCAtMjE3LDYgKzIxNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8g
aTg1eF9pbmZvID0gew0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBp
ODY1Z19pbmZvID0gew0KPiAgCUk4NDVfRkVBVFVSRVMsDQo+ICAJUExBVEZPUk0oSU5URUxfSTg2
NUcpLA0KPiArCS5kaXNwbGF5Lmhhc19mYmMgPSAxLA0KPiAgfTsNCj4gIA0KPiAgI2RlZmluZSBH
RU4zX0ZFQVRVUkVTIFwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
