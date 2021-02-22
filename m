Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5569A3214E9
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 12:17:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C296B89DBF;
	Mon, 22 Feb 2021 11:17:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7628F89DC7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 11:17:17 +0000 (UTC)
IronPort-SDR: SOSUo8nwj/gYWRZpIVyj20vfsMEO6Rn7uiq0VMUJgIHE+vppCLYW2t+MF8/hgW/S9GLAN5C/Nb
 3rLqPt+BeLdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="164244779"
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="164244779"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 03:17:16 -0800
IronPort-SDR: 3GiAJNh9Q5A1antouw7IHheaETU5tXX/dPYIYhaHy0yCPHpppR3zal84UfkWFdXyOYFMZbFgw8
 y1cKeKo3e6Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,197,1610438400"; d="scan'208";a="441350729"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 22 Feb 2021 03:17:15 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 03:17:13 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 03:17:12 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 11:17:11 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2] drm/i915/display: Allow PSR2 selective fetch to be
 enabled at run-time
Thread-Index: AQHW/yUGWBAhyofnTEC15nUnTW9N16pkGpkA
Date: Mon, 22 Feb 2021 11:17:11 +0000
Message-ID: <3912809aeb433b6cf9293f1e1da95ff4779f639c.camel@intel.com>
References: <20210209205036.351076-1-jose.souza@intel.com>
In-Reply-To: <20210209205036.351076-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <855E00C21B0CDF469BAAF24D502819C7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Allow PSR2 selective
 fetch to be enabled at run-time
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

T24gVHVlLCAyMDIxLTAyLTA5IGF0IDEyOjUwIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBSaWdodCBub3cgQ0kgaXMgYmxhY2tsaXN0aW5nIG1vZHVsZSByZWxvYWQsIHNv
IHdlIG5lZWQgdG8gYmUgYWJsZSB0bw0KPiBlbmFibGUgUFNSMiBzZWxlY3RpdmUgZmV0Y2ggaW4g
cnVuIHRpbWUgdG8gdGVzdCB0aGlzIGZlYXR1cmUgYmVmb3JlDQo+IGVuYWJsZSBpdCBieSBkZWZh
dWx0Lg0KPiBDaGFuZ2VzIGluIElHVCB3aWxsIGFsc28gYmUgbmVlZGVkLg0KPiANCj4gdjI6DQo+
IC0gRml4ZWQgaGFuZGxpbmcgb2YgSTkxNV9QU1JfREVCVUdfRU5BQkxFX1NFTF9GRVRDSCBpbg0K
PiBpbnRlbF9wc3JfZGVidWdfc2V0KCkNCj4gDQo+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4t
Z3llb25nLm11bkBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDEgKw0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDggKysr
KystLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IGViYWE5ZDBlZDM3Ni4uNTc3ZjQ3YWE2YjNlIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaA0KPiBAQCAtMTQyNSw2ICsxNDI1LDcgQEAgc3RydWN0IGludGVsX3BzciB7DQo+IMKg
I2RlZmluZSBJOTE1X1BTUl9ERUJVR19ESVNBQkxFwqDCoMKgwqDCoMKgwqDCoMKgMHgwMQ0KPiDC
oCNkZWZpbmUgSTkxNV9QU1JfREVCVUdfRU5BQkxFwqDCoMKgwqDCoMKgwqDCoMKgwqAweDAyDQo+
IMKgI2RlZmluZSBJOTE1X1BTUl9ERUJVR19GT1JDRV9QU1IxwqDCoMKgwqDCoMKgMHgwMw0KPiAr
I2RlZmluZSBJOTE1X1BTUl9ERUJVR19FTkFCTEVfU0VMX0ZFVENIwqDCoMKgwqDCoMKgwqDCoDB4
NA0KPiDCoCNkZWZpbmUgSTkxNV9QU1JfREVCVUdfSVJRwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAweDEwDQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqB1MzIgZGVidWc7DQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBiZjIxNGQwZTJkZWMuLjQz
ZTllMzYyMzgyYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IEBAIC02ODQsNyArNjg0LDggQEAgc3RhdGljIGJvb2wNCj4gaW50ZWxfcHNyMl9zZWxf
ZmV0Y2hfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOw0KPiDCoMKgwqDCoMKgwqDCoMKgaW50
IGk7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGlmICghZGV2X3ByaXYtPnBhcmFtcy5lbmFibGVf
cHNyMl9zZWxfZmV0Y2gpIHsNCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFkZXZfcHJpdi0+cGFyYW1z
LmVuYWJsZV9wc3IyX3NlbF9mZXRjaCAmJg0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxf
ZHAtPnBzci5kZWJ1ZyAhPSBJOTE1X1BTUl9ERUJVR19FTkFCTEVfU0VMX0ZFVENIKSB7DQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0s
DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAiUFNSMiBzZWwgZmV0Y2ggbm90IGVuYWJsZWQsIGRpc2FibGVkIGJ5DQo+IHBhcmFtZXRlclxu
Iik7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiBA
QCAtMTQ0OCw3ICsxNDQ5LDggQEAgdm9pZCBpbnRlbF9wc3JfdXBkYXRlKHN0cnVjdCBpbnRlbF9k
cA0KPiAqaW50ZWxfZHAsDQo+IMKgwqDCoMKgwqDCoMKgwqBlbmFibGUgPSBjcnRjX3N0YXRlLT5o
YXNfcHNyOw0KPiDCoMKgwqDCoMKgwqDCoMKgcHNyMl9lbmFibGUgPSBjcnRjX3N0YXRlLT5oYXNf
cHNyMjsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaWYgKGVuYWJsZSA9PSBwc3ItPmVuYWJsZWQg
JiYgcHNyMl9lbmFibGUgPT0gcHNyLQ0KPiA+cHNyMl9lbmFibGVkKSB7DQo+ICvCoMKgwqDCoMKg
wqDCoGlmIChlbmFibGUgPT0gcHNyLT5lbmFibGVkICYmIHBzcjJfZW5hYmxlID09IHBzci0NCj4g
PnBzcjJfZW5hYmxlZCAmJg0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0+ZW5h
YmxlX3BzcjJfc2VsX2ZldGNoID09IHBzci0NCj4gPnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQpIHsN
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBGb3JjZSBhIFBTUiBleGl0IHdo
ZW4gZW5hYmxpbmcgQ1JDIHRvIGF2b2lkIENSQw0KPiB0aW1lb3V0cyAqLw0KPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRlLT5jcmNfZW5hYmxlZCAmJiBwc3It
PmVuYWJsZWQpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHBzcl9mb3JjZV9od190cmFja2luZ19leGl0KGludGVsX2RwKTsNCj4gQEAgLTE2MzcsNyAr
MTYzOSw3IEBAIGludCBpbnRlbF9wc3JfZGVidWdfc2V0KHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50
ZWxfZHAsIHU2NCB2YWwpDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0Ow0KPiDCoA0KPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKHZhbCAmIH4oSTkxNV9QU1JfREVCVUdfSVJRIHwgSTkxNV9QU1JfREVC
VUdfTU9ERV9NQVNLKSB8fA0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgbW9kZSA+IEk5MTVfUFNS
X0RFQlVHX0ZPUkNFX1BTUjEpIHsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIG1vZGUgPiBJOTE1
X1BTUl9ERUJVR19FTkFCTEVfU0VMX0ZFVENIKSB7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJJbnZhbGlkIGRlYnVnIG1hc2sN
Cj4gJWxseFxuIiwgdmFsKTsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gLUVJTlZBTDsNCj4gwqDCoMKgwqDCoMKgwqDCoH0NCg0KTG9va3MgZ29vZCB0byBtZS4NClJl
dmlld2VkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQoN
Cg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
