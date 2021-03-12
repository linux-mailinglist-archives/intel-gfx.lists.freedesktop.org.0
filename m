Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B5E338EF1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 14:38:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FDCE6E147;
	Fri, 12 Mar 2021 13:38:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14F36E147
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 13:38:02 +0000 (UTC)
IronPort-SDR: iwL4dXUR2htTZz3bo6KkEUmvBBAiogG30X8dWgcsvF6+QeJGzaD6sTHbAGYtUrg8YGl1Ru0EMk
 W0xYsVMDCQ9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188195586"
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="188195586"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 05:38:02 -0800
IronPort-SDR: 8I6B60vwzlqTYatNwjeeX6jjpomiZXo4tluX5IiA5Za7VdqsdXCSJOp6gj0riMPXN/OFcQGfy0
 oNF2xSwdbqrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,243,1610438400"; d="scan'208";a="448623908"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga001.jf.intel.com with ESMTP; 12 Mar 2021 05:38:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 13:38:00 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 12 Mar 2021 05:37:58 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display/psr: Add sink not reliable check to
 intel_psr_work()
Thread-Index: AQHXF0R1GNUd2bQR/kufcQmm+RycB6qA4fWA
Date: Fri, 12 Mar 2021 13:37:58 +0000
Message-ID: <85d3edee2ca1da2ed4cf09fe6451b6a079b2fd51.camel@intel.com>
References: <20210312133430.1478156-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210312133430.1478156-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <AD2CF3EA26A675459C499853E6E32044@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/psr: Add sink not reliable
 check to intel_psr_work()
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

T24gRnJpLCAyMDIxLTAzLTEyIGF0IDE1OjM0ICswMjAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IElmIHRoZSBzaW5rIHN0YXRlIGlzIG5vdCByZWxpYWJsZSwgaXQgZG9lcyBub3QgbmVlZCB0
byB3YWl0IGZvcg0KPiBQU1IgIklETEUgc3RhdGUiIGZvciByZS1lbmFibGluZyBQU1IuIEFuZCBp
dCBzaG91bGQgbm90IHRyeSB0byByZS1lbmFibGUNCj4gUFNSLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiAtLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMyArKysNCj4gwqAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggY2Q0MzQyODVlM2I3Li43ZjU1NTQwN2RlMDYg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAt
MTY4Niw2ICsxNjg2LDkgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX3dvcmsoc3RydWN0IHdvcmtf
c3RydWN0ICp3b3JrKQ0KPiDCoAlpZiAoUkVBRF9PTkNFKGludGVsX2RwLT5wc3IuaXJxX2F1eF9l
cnJvcikpDQo+IMKgCQlpbnRlbF9wc3JfaGFuZGxlX2lycShpbnRlbF9kcCk7DQo+IMKgDQo+IA0K
PiANCj4gDQo+ICsJaWYgKGludGVsX2RwLT5wc3Iuc2lua19ub3RfcmVsaWFibGUpDQo+ICsJCWdv
dG8gdW5sb2NrOw0KDQpJIGNhbid0IHRoaW5rIGFueSBzY2VuYXJpbyB0aGF0IHRoaXMgd2lsbCBo
aXQuDQpCZWZvcmUgc2V0IHNpbmtfbm90X3JlbGlhYmxlIFBTUiB3aWxsIGJlIGRpc2FibGVkIHNv
IGl0IHdpbGwgYmUgY2F1Z2h0IGluIHRoZSBmaXJzdCBjaGVjayBvZiBpbnRlbF9wc3Jfd29yaygp
Lg0KDQo+ICsNCj4gwqAJLyoNCj4gwqAJICogV2UgaGF2ZSB0byBtYWtlIHN1cmUgUFNSIGlzIHJl
YWR5IGZvciByZS1lbmFibGUNCj4gwqAJICogb3RoZXJ3aXNlIGl0IGtlZXBzIGRpc2FibGVkIHVu
dGlsIG5leHQgZnVsbCBlbmFibGUvZGlzYWJsZSBjeWNsZS4NCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
