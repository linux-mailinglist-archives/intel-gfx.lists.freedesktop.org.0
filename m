Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBCB262EE4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 15:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB196E0BE;
	Wed,  9 Sep 2020 13:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 986FB6E0BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Sep 2020 13:06:14 +0000 (UTC)
IronPort-SDR: sQygCle9vBRSYpN5Nt2ZqOwtK+pKuq7cgRjmCRSszhyrHUp+B6YIy1oxlRK5mt+JfY6EjWIIjC
 IrNhpkb9rBSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="159282888"
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="159282888"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 06:06:13 -0700
IronPort-SDR: /M1tOGUkxBdePNeSnR6qom9Mv2fwDRLc4NjhcvALmJxVIQaMHf09Nzd6RUZHkRuZu3bXF7xvB0
 DMMGmoG1D6PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="328900492"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga004.fm.intel.com with ESMTP; 09 Sep 2020 06:06:13 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 9 Sep 2020 06:06:13 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 9 Sep 2020 06:06:13 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.233]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.17]) with mapi id 14.03.0439.000;
 Wed, 9 Sep 2020 06:06:12 -0700
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Thread-Topic: [PATCH] drm/i915/pll: Centralize PLL_ENABLE register lookup
Thread-Index: AQHWhjtoY6otO2Y7/ECPaqcwGozKq6lgvNyA
Date: Wed, 9 Sep 2020 13:06:11 +0000
Message-ID: <7ADF1857-9888-4116-A255-108BFCCCC412@intel.com>
References: <20200908233955.11311-1-anusha.srivatsa@intel.com>
In-Reply-To: <20200908233955.11311-1-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.212.195.203]
Content-ID: <2D08684BF7624849B0EF4738A704AA27@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pll: Centralize PLL_ENABLE
 register lookup
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

DQoNCj4gT24gU2VwIDgsIDIwMjAsIGF0IDQ6MzkgUE0sIFNyaXZhdHNhLCBBbnVzaGEgPGFudXNo
YS5zcml2YXRzYUBpbnRlbC5jb20+IHdyb3RlOg0KPiANCj4gV2UgY3VycmVudHkgY2hlY2sgZm9y
IHBsYXRmb3JtIGF0IG11bHRpcGxlIHBhcnRzIGluIHRoZSBkcml2ZXINCj4gdG8gZ3JhYiB0aGUg
Y29ycmVjdCBQTEwuIExldCB1cyBiZWdpbiB0byBjZW50cmFsaXplIGl0IHRocm91Z2ggYQ0KPiBo
ZWxwZXIgZnVuY3Rpb24uDQo+IA0KPiB2Mjogcy9pbnRlbF9nZXRfcGxsX2VuYWJsZV9yZWcoKS9p
bnRlbF9jb21ib19wbGxfZW5hYmxlX3JlZygpIChWaWxsZSkNCj4gDQo+IHYzOiBDbGVhbiB1cCBj
b21ib19wbGxfZGlzYWJsZSgpIChSb2RyaWdvKQ0KPiANCj4gU3VnZ2VzdGVkLWJ5OiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51
c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9k
cmlnby52aXZpQGludGVsLmNvbT4NCj4gLS0tDQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDI5ICsrKysrKysrKysrLS0tLS0tLS0NCj4gMSBmaWxlIGNo
YW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiBpbmRleCBjOTAxM2Y4
Zjc2NmYuLjQ0MWI2ZjUyZTgwOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiBAQCAtMTQ3LDYgKzE0NywxOCBAQCB2b2lkIGFzc2Vy
dF9zaGFyZWRfZHBsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+IAkJCXBs
bC0+aW5mby0+bmFtZSwgb25vZmYoc3RhdGUpLCBvbm9mZihjdXJfc3RhdGUpKTsNCj4gfQ0KPiAN
Cj4gK3N0YXRpYw0KPiAraTkxNV9yZWdfdCBpbnRlbF9jb21ib19wbGxfZW5hYmxlX3JlZyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICsJCQkJICAgIHN0cnVjdCBpbnRlbF9z
aGFyZWRfZHBsbCAqcGxsKQ0KPiArew0KPiArDQo+ICsJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9w
cml2KSAmJiAocGxsLT5pbmZvLT5pZCA9PSBEUExMX0lEX0VITF9EUExMNCkpDQo+ICsJCQlyZXR1
cm4gTUdfUExMX0VOQUJMRSgwKTsNCj4gKw0KPiArCXJldHVybiBDTkxfRFBMTF9FTkFCTEUocGxs
LT5pbmZvLT5pZCk7DQo+ICsNCj4gKw0KPiArfQ0KPiAvKioNCj4gICogaW50ZWxfcHJlcGFyZV9z
aGFyZWRfZHBsbCAtIGNhbGwgYSBkcGxsJ3MgcHJlcGFyZSBob29rDQo+ICAqIEBjcnRjX3N0YXRl
OiBDUlRDLCBhbmQgaXRzIHN0YXRlLCB3aGljaCBoYXMgYSBzaGFyZWQgZHBsbA0KPiBAQCAtMzg0
MiwxMiArMzg1NCw3IEBAIHN0YXRpYyBib29sIGNvbWJvX3BsbF9nZXRfaHdfc3RhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAJCQkJICAgc3RydWN0IGludGVsX3NoYXJl
ZF9kcGxsICpwbGwsDQo+IAkJCQkgICBzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZSAqaHdfc3Rh
dGUpDQo+IHsNCj4gLQlpOTE1X3JlZ190IGVuYWJsZV9yZWcgPSBDTkxfRFBMTF9FTkFCTEUocGxs
LT5pbmZvLT5pZCk7DQo+IC0NCj4gLQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmDQo+
IC0JICAgIHBsbC0+aW5mby0+aWQgPT0gRFBMTF9JRF9FSExfRFBMTDQpIHsNCj4gLQkJZW5hYmxl
X3JlZyA9IE1HX1BMTF9FTkFCTEUoMCk7DQo+IC0JfQ0KPiArCWk5MTVfcmVnX3QgZW5hYmxlX3Jl
ZyA9IGludGVsX2NvbWJvX3BsbF9lbmFibGVfcmVnKGRldl9wcml2LCBwbGwpOw0KPiANCj4gCXJl
dHVybiBpY2xfcGxsX2dldF9od19zdGF0ZShkZXZfcHJpdiwgcGxsLCBod19zdGF0ZSwgZW5hYmxl
X3JlZyk7DQo+IH0NCj4gQEAgLTQwNDUsMTEgKzQwNTIsMTAgQEAgc3RhdGljIHZvaWQgaWNsX3Bs
bF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiBzdGF0aWMgdm9p
ZCBjb21ib19wbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4g
CQkJICAgICBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCkNCj4gew0KPiAtCWk5MTVfcmVn
X3QgZW5hYmxlX3JlZyA9IENOTF9EUExMX0VOQUJMRShwbGwtPmluZm8tPmlkKTsNCj4gKwlpOTE1
X3JlZ190IGVuYWJsZV9yZWcgPSBpbnRlbF9jb21ib19wbGxfZW5hYmxlX3JlZyhkZXZfcHJpdiwg
cGxsKTsNCj4gDQo+IAlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmDQo+IAkgICAgcGxs
LT5pbmZvLT5pZCA9PSBEUExMX0lEX0VITF9EUExMNCkgew0KPiAtCQllbmFibGVfcmVnID0gTUdf
UExMX0VOQUJMRSgwKTsNCj4gDQo+IAkJLyoNCj4gCQkgKiBXZSBuZWVkIHRvIGRpc2FibGUgREMg
c3RhdGVzIHdoZW4gdGhpcyBEUExMIGlzIGVuYWJsZWQuDQo+IEBAIC00MTU3LDE5ICs0MTYzLDE4
IEBAIHN0YXRpYyB2b2lkIGljbF9wbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsDQo+IHN0YXRpYyB2b2lkIGNvbWJvX3BsbF9kaXNhYmxlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwNCj4gCQkJICAgICAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxs
ICpwbGwpDQo+IHsNCj4gLQlpOTE1X3JlZ190IGVuYWJsZV9yZWcgPSBDTkxfRFBMTF9FTkFCTEUo
cGxsLT5pbmZvLT5pZCk7DQo+ICsJaTkxNV9yZWdfdCBlbmFibGVfcmVnID0gaW50ZWxfY29tYm9f
cGxsX2VuYWJsZV9yZWcoZGV2X3ByaXYsIHBsbCk7DQo+ICsNCj4gKwlpY2xfcGxsX2Rpc2FibGUo
ZGV2X3ByaXYsIHBsbCwgZW5hYmxlX3JlZyk7DQo+IA0KPiAJaWYgKElTX0VMS0hBUlRMQUtFKGRl
dl9wcml2KSAmJg0KPiAJICAgIHBsbC0+aW5mby0+aWQgPT0gRFBMTF9JRF9FSExfRFBMTDQpIHsN
Cj4gLQkJZW5hYmxlX3JlZyA9IE1HX1BMTF9FTkFCTEUoMCk7DQo+IC0JCWljbF9wbGxfZGlzYWJs
ZShkZXZfcHJpdiwgcGxsLCBlbmFibGVfcmVnKTsNCj4gDQo+IAkJaW50ZWxfZGlzcGxheV9wb3dl
cl9wdXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9EUExMX0RDX09GRiwNCj4gCQkJCQlwbGwtPndh
a2VyZWYpOw0KPiAJCXJldHVybjsNCg0KdGhpcyByZXR1cm4gY2FuIGFsc28gYmUgcmVtb3ZlZA0K
DQo+IAl9DQo+IA0KPiAtCWljbF9wbGxfZGlzYWJsZShkZXZfcHJpdiwgcGxsLCBlbmFibGVfcmVn
KTsNCj4gfQ0KPiANCj4gc3RhdGljIHZvaWQgdGJ0X3BsbF9kaXNhYmxlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwNCj4gLS0gDQo+IDIuMjUuMA0KPiANCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
