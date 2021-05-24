Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B83F338F2AC
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 19:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3006E8DD;
	Mon, 24 May 2021 17:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B67DE6E8DD
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 17:59:37 +0000 (UTC)
IronPort-SDR: HEG9Nga16NjRCoIgrXblL57CIH9XFIQqDUBtunpQFPgvJUvSu+IcPvRv4ArQuDkso1LOZSuiai
 Ji44v5D3fWcg==
X-IronPort-AV: E=McAfee;i="6200,9189,9993"; a="287564503"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="287564503"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 10:59:34 -0700
IronPort-SDR: HSQrDtCzQyl2yXP5udlINZlsfKuD1EUOHbygxHTvQtyu1i3r2U8wo2WfKlTzPFB5DkUIyYMJoh
 Zv0qL4+zo9LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="614189821"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga005.jf.intel.com with ESMTP; 24 May 2021 10:59:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 24 May 2021 18:59:30 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 24 May 2021 10:59:29 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915/debugfs: Print remap info for
 DPT VMAs as well
Thread-Index: AQHXUMIthj3RJqMJkE65o05M1rOrBqrzYdiA
Date: Mon, 24 May 2021 17:59:28 +0000
Message-ID: <17c344c0eadfca0b36616e8cae4f39a77274265b.camel@intel.com>
References: <20210524172703.2113058-1-imre.deak@intel.com>
 <20210524172703.2113058-3-imre.deak@intel.com>
In-Reply-To: <20210524172703.2113058-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <6A3F24B4AC296145BECD3E411BA687D0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/debugfs: Print remap info for
 DPT VMAs as well
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

T24gTW9uLCAyMDIxLTA1LTI0IGF0IDIwOjI3ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFNp
bWlsYXJseSB0byBHR1RUIFZNQXMsIERQVCBWTUFzIGNhbiBiZSBhbHNvIGEgcmVtYXBwZWQgb3Ig
cm90YXRlZCB2aWV3DQo+IG9mIHRoZSBtYXBwZWQgb2JqZWN0LCBzbyBtYWtlIHN1cmUgd2UgZGVi
dWcgcHJpbnQgdGhlIGRldGFpbHMgZm9yIHRoZXNlDQo+IHZpZXdzIGFzIHdlbGwgYmVzaWRlcyB0
aGUgbm9ybWFsIHZpZXcuDQo+IA0KPiBXaGlsZSBhdCBpdCBhbHNvIGZpeCB0aGUgZGVidWcgcHJp
bnQgZm9yIHRoZSBWTUEgdHlwZSBvZiBEUFQgVk1Bcy4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2Zm
LWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAxNyArKysrKysrKysrKysrKy0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuaCAgICAgfCAgNSArKysrKw0KPiAgMiBmaWxlcyBj
aGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kZWJ1Z2ZzLmMNCj4gaW5kZXggOGRkMzc0NjkxMTAyMS4uNmQ1YzZlYTAyZmFi
NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMNCj4gQEAgLTEyNCw2ICsx
MjQsMTcgQEAgc3RyaW5naWZ5X3BhZ2Vfc2l6ZXModW5zaWduZWQgaW50IHBhZ2Vfc2l6ZXMsIGNo
YXIgKmJ1Ziwgc2l6ZV90IGxlbikNCj4gIAl9DQo+ICB9DQo+ICANCj4gK3N0YXRpYyBjb25zdCBj
aGFyICpzdHJpbmdpZnlfdm1hX3R5cGUoY29uc3Qgc3RydWN0IGk5MTVfdm1hICp2bWEpDQo+ICt7
DQo+ICsJaWYgKGk5MTVfdm1hX2lzX2dndHQodm1hKSkNCj4gKwkgICAgICAgcmV0dXJuICJnZ3R0
IjsNCj4gKw0KPiArCWlmIChpOTE1X3ZtYV9pc19kcHQodm1hKSkNCj4gKwkJcmV0dXJuICJkcHQi
Ow0KPiArDQo+ICsJcmV0dXJuICJwcGd0dCI7DQo+ICt9DQo+ICsNCj4gIHZvaWQNCj4gIGk5MTVf
ZGVidWdmc19kZXNjcmliZV9vYmooc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqKQ0KPiAgew0KPiBAQCAtMTU2LDExICsxNjcsMTEgQEAgaTkxNV9kZWJ1
Z2ZzX2Rlc2NyaWJlX29iaihzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmopDQo+ICAJCWlmIChpOTE1X3ZtYV9pc19waW5uZWQodm1hKSkNCj4gIAkJCXBp
bl9jb3VudCsrOw0KPiAgDQo+IC0JCXNlcV9wcmludGYobSwgIiAoJXNndHQgb2Zmc2V0OiAlMDhs
bHgsIHNpemU6ICUwOGxseCwgcGFnZXM6ICVzIiwNCj4gLQkJCSAgIGk5MTVfdm1hX2lzX2dndHQo
dm1hKSA/ICJnIiA6ICJwcCIsDQo+ICsJCXNlcV9wcmludGYobSwgIiAoJXMgb2Zmc2V0OiAlMDhs
bHgsIHNpemU6ICUwOGxseCwgcGFnZXM6ICVzIiwNCj4gKwkJCSAgIHN0cmluZ2lmeV92bWFfdHlw
ZSh2bWEpLA0KPiAgCQkJICAgdm1hLT5ub2RlLnN0YXJ0LCB2bWEtPm5vZGUuc2l6ZSwNCj4gIAkJ
CSAgIHN0cmluZ2lmeV9wYWdlX3NpemVzKHZtYS0+cGFnZV9zaXplcy5ndHQsIE5VTEwsIDApKTsN
Cj4gLQkJaWYgKGk5MTVfdm1hX2lzX2dndHQodm1hKSkgew0KPiArCQlpZiAoaTkxNV92bWFfaXNf
Z2d0dCh2bWEpIHx8IGk5MTVfdm1hX2lzX2RwdCh2bWEpKSB7DQo+ICAJCQlzd2l0Y2ggKHZtYS0+
Z2d0dF92aWV3LnR5cGUpIHsNCj4gIAkJCWNhc2UgSTkxNV9HR1RUX1ZJRVdfTk9STUFMOg0KPiAg
CQkJCXNlcV9wdXRzKG0sICIsIG5vcm1hbCIpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV92bWEuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmgNCj4g
aW5kZXggMmExMDhlNjZjZDQ5NS4uZGM2OTI2ZDg5NjI2NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3ZtYS5oDQo+IEBAIC02OCw2ICs2OCwxMSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV92
bWFfaXNfZ2d0dChjb25zdCBzdHJ1Y3QgaTkxNV92bWEgKnZtYSkNCj4gIAlyZXR1cm4gdGVzdF9i
aXQoSTkxNV9WTUFfR0dUVF9CSVQsIF9faTkxNV92bWFfZmxhZ3Modm1hKSk7DQo+ICB9DQo+ICAN
Cj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X3ZtYV9pc19kcHQoY29uc3Qgc3RydWN0IGk5MTVf
dm1hICp2bWEpDQo+ICt7DQo+ICsJcmV0dXJuIGk5MTVfaXNfZHB0KHZtYS0+dm0pOw0KPiArfQ0K
PiArDQo+ICBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV92bWFfaGFzX2dndHRfd3JpdGUoY29uc3Qg
c3RydWN0IGk5MTVfdm1hICp2bWEpDQo+ICB7DQo+ICAJcmV0dXJuIHRlc3RfYml0KEk5MTVfVk1B
X0dHVFRfV1JJVEVfQklULCBfX2k5MTVfdm1hX2ZsYWdzKHZtYSkpOw0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
