Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2BD2058A4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 19:32:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AEF66EA18;
	Tue, 23 Jun 2020 17:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC656EA0D
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2020 17:32:20 +0000 (UTC)
IronPort-SDR: BPLWx9C76/ukvKgrnfMr9hUhuJ0AJWUJl+qY+V2cryf8XgI/C9sGY7DO1LQ32EV1Sj1DfqkGqF
 YKhwgAByB8xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="162233123"
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="162233123"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 10:31:47 -0700
IronPort-SDR: ZdaCRHulXyWeY8YZTPDh5/YvsNWqEXQF3oCTW+3/FnRm/8rWt6j3gjOngAURUmEkmXF1PrF3oa
 OOfLz0oB94+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; d="scan'208";a="478818022"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga006.fm.intel.com with ESMTP; 23 Jun 2020 10:31:47 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 10:31:47 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.86]) with mapi id 14.03.0439.000;
 Tue, 23 Jun 2020 10:31:47 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/dp_mst: Enable VC payload allocation after
 transcoder is enabled
Thread-Index: AQHWSTezEysUOSAAaUaB5cBViRGF86jm66mA
Date: Tue, 23 Jun 2020 17:31:46 +0000
Message-ID: <0e9d806d5528e1752861a53dffc69b918f66d096.camel@intel.com>
References: <20200623082411.3889-1-imre.deak@intel.com>
In-Reply-To: <20200623082411.3889-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.140.152]
Content-ID: <BF864FCA1751E94DB9D13A45A697C20C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp_mst: Enable VC payload
 allocation after transcoder is enabled
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

T24gVHVlLCAyMDIwLTA2LTIzIGF0IDExOjI0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBzcGVjIHJlcXVpcmVzIGVuYWJsaW5nIHRoZSBNU1QgVmlydHVhbCBDaGFubmVsIHBheWxvYWQg
YWxsb2NhdGlvbg0KPiAtIGluIGEgc2VwZXJhdGUgc3RlcCAtIGFmdGVyIHRoZSB0cmFuc2NvZGVy
IGlzIGVuYWJsZWQsIGZvbGxvdyB0aGlzLg0KPiANCg0KSXMgdGhlIG5leHQgc3RlcCBidXQgaW5k
ZWVkIGEgZGlmZmVyZW50IHN0ZXAuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyAgICB8IDggKysrLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMgfCA4ICsrKysrKysrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggNzNkNmNjMjkyOTFhLi44ODRiNTA3YzVmNTUgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMTY1
Myw3ICsxNjUzLDYgQEAgdm9pZCBpbnRlbF9kZGlfZW5hYmxlX3RyYW5zY29kZXJfZnVuYyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9
IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gIAllbnVt
IHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsN
Cj4gLQl1MzIgY3RsOw0KPiAgDQo+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsN
Cj4gIAkJZW51bSB0cmFuc2NvZGVyIG1hc3Rlcl90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+bWFz
dGVyX3RyYW5zY29kZXI7DQo+IEBAIC0xNjcxLDEwICsxNjcwLDkgQEAgdm9pZCBpbnRlbF9kZGlf
ZW5hYmxlX3RyYW5zY29kZXJfZnVuYyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4g
IAkJCSAgICAgICBUUkFOU19ERElfRlVOQ19DVEwyKGNwdV90cmFuc2NvZGVyKSwgY3RsMik7DQo+
ICAJfQ0KPiAgDQo+IC0JY3RsID0gaW50ZWxfZGRpX3RyYW5zY29kZXJfZnVuY19yZWdfdmFsX2dl
dChlbmNvZGVyLCBjcnRjX3N0YXRlKTsNCj4gLQlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRj
X3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBfTVNUKSkNCj4gLQkJY3RsIHw9IFRSQU5TX0RESV9EUF9W
Q19QQVlMT0FEX0FMTE9DOw0KPiAtCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFOU19ERElf
RlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpLCBjdGwpOw0KPiArCWludGVsX2RlX3dyaXRlKGRldl9w
cml2LCBUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpLA0KPiArCQkgICAgICAgaW50
ZWxfZGRpX3RyYW5zY29kZXJfZnVuY19yZWdfdmFsX2dldChlbmNvZGVyLA0KPiArCQkJCQkJCSAg
ICAgY3J0Y19zdGF0ZSkpOw0KPiAgfQ0KPiAgDQo+ICAvKg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gaW5kZXggMGM4OTFiZGQxYWEwLi4zNDI2Y2U4
YmJiZDAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9t
c3QuYw0KPiBAQCAtNTM5LDYgKzUzOSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9lbmFibGVf
ZHAoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQgPSBpbnRlbF9tc3QtPnByaW1hcnk7DQo+ICAJc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCA9ICZpbnRlbF9kaWdfcG9ydC0+ZHA7DQo+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7
DQo+ICsJdTMyIHZhbDsNCj4gIA0KPiAgCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBwaXBl
X2NvbmZpZy0+aGFzX3BjaF9lbmNvZGVyKTsNCj4gIA0KPiBAQCAtNTQ2LDYgKzU0NywxMyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9tc3RfZW5hYmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiAgDQo+ICAJaW50ZWxfZGRpX2VuYWJsZV90cmFuc2NvZGVyX2Z1bmMoZW5jb2Rl
ciwgcGlwZV9jb25maWcpOw0KPiAgDQo+ICsJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwN
Cj4gKwkJCSAgICBUUkFOU19ERElfRlVOQ19DVEwocGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVy
KSk7DQo+ICsJdmFsIHw9IFRSQU5TX0RESV9EUF9WQ19QQVlMT0FEX0FMTE9DOw0KPiArCWludGVs
X2RlX3dyaXRlKGRldl9wcml2LA0KPiArCQkgICAgICAgVFJBTlNfRERJX0ZVTkNfQ1RMKHBpcGVf
Y29uZmlnLT5jcHVfdHJhbnNjb2RlciksDQo+ICsJCSAgICAgICB2YWwpOw0KPiArDQo+ICAJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJhY3RpdmUgbGlua3MgJWRcbiIsDQo+ICAJCSAgICBp
bnRlbF9kcC0+YWN0aXZlX21zdF9saW5rcyk7DQo+ICANCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
