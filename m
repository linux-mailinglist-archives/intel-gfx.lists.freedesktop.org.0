Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 753431F212D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 23:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC5989EA6;
	Mon,  8 Jun 2020 21:05:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A26789EA6
 for <Intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 21:05:31 +0000 (UTC)
IronPort-SDR: 3GeFjab8NS2KsaToPThq4jc/vUUkmSTCMyRa5sdQAyE1HmabTL2uLbaeWZ6LowNo+99wcsokmP
 rY6RYVOVkU/w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 14:05:30 -0700
IronPort-SDR: 3TrJMlomiQthFyYmRID4tc9wKxRf1gWSRnBMeZDgViHRdD/mlXxeAfFjpK3ix1dy+E3UMhxdSw
 iauQ4+q8G94Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="418179398"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 08 Jun 2020 14:05:30 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jun 2020 14:05:30 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.40]) with mapi id 14.03.0439.000;
 Mon, 8 Jun 2020 14:05:30 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tc: fix the reset of ln0
Thread-Index: AQHWPdXK1olPceotmUKbR4+CTZ9IIajPp7gAgAADbYA=
Date: Mon, 8 Jun 2020 21:05:29 +0000
Message-ID: <5c975d8148a37edcd0627035d079aabb148f374b.camel@intel.com>
References: <20200608204537.28468-1-khaled.almahallawy@intel.com>
 <f45396c86bf9f0409a26ab543f253289db1acc3d.camel@intel.com>
In-Reply-To: <f45396c86bf9f0409a26ab543f253289db1acc3d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.72.168]
Content-ID: <FB39ABB76DE68B42A6B4899EC25715F4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tc: fix the reset of ln0
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

T24gTW9uLCAyMDIwLTA2LTA4IGF0IDEzOjU0IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBPbiBNb24sIDIwMjAtMDYtMDggYXQgMTM6NDUgLTA3MDAsIEtoYWxlZCBBbG1h
aGFsbGF3eSB3cm90ZToNCj4gPiBTZXR0aW5nIGxuMCBzaW1pbGFyIHRvIGxuMQ0KPiANCg0KSHVt
IGd1ZXNzIHdvdWxkIGdvb2QgdG8gaGF2ZSBhIEZpeGVzIHRhZyB0byB0aGUgcGF0Y2ggYWRkaW5n
IHRoZSBsaW5lIGZpeGVkLg0KDQo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogS2hhbGVkIEFs
bWFoYWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMiArLQ0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBpbmRleCA5NmVhYTRiMzlj
NjguLjFjMGMzNjk1NzNlNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPiA+IEBAIC0zMDI1LDcgKzMwMjUsNyBAQCBpY2xfcHJvZ3JhbV9tZ19k
cF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LA0KPiA+ICAJ
CWxuMSA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIE1HX0RQX01PREUoMSwgdGNfcG9ydCkpOw0K
PiA+ICAJfQ0KPiA+ICANCj4gPiAtCWxuMCAmPSB+KE1HX0RQX01PREVfQ0ZHX0RQX1gxX01PREUg
fCBNR19EUF9NT0RFX0NGR19EUF9YMV9NT0RFKTsNCj4gPiArCWxuMCAmPSB+KE1HX0RQX01PREVf
Q0ZHX0RQX1gxX01PREUgfCBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RFKTsNCj4gPiAgCWxuMSAm
PSB+KE1HX0RQX01PREVfQ0ZHX0RQX1gxX01PREUgfCBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RF
KTsNCj4gPiAgDQo+ID4gIAkvKiBEUFBBVEMgKi8NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
