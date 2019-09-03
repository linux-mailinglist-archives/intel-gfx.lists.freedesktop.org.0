Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47781A766E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 23:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A864B8987A;
	Tue,  3 Sep 2019 21:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 867E18987A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 21:43:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 14:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="194487852"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 03 Sep 2019 14:43:54 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Sep 2019 14:43:54 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.219]) with mapi id 14.03.0439.000;
 Tue, 3 Sep 2019 14:43:54 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v3 6/7] drm/i915/tgl: add gen12 to stolen initialization
Thread-Index: AQHVXkvQPTNeVp+86EeJduPee0PUk6ca+h2A
Date: Tue, 3 Sep 2019 21:43:53 +0000
Message-ID: <28fbb9afcb0d679209d926ccc3dca327c9928aea.camel@intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-7-lucas.demarchi@intel.com>
In-Reply-To: <20190829092554.32198-7-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <365DDD230F0A0F4CB117D9D309A18D8C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 6/7] drm/i915/tgl: add gen12 to stolen
 initialization
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA4LTI5IGF0IDAyOjI1IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEFkZCBjYXNlIGZvciBnZW4gPT0gMTIgYW5kIGFkZCBNSVNTSU5HX0NBU0UoKSBmb3IgZnV0
dXJlIGdlbnMuIFdlDQo+IHdlcmUNCj4gYWxyZWFkeSBoYW5kbGluZyBnZW4xMiBhcyB0aGUgZGVm
YXVsdCwgc28gdGhpcyBkb2Vzbid0IGNoYW5nZSB0aGUNCj4gY3VycmVudCBiZWhhdmlvci4NCg0K
V2l0aDogQlNwZWM6IDE5NDgxIGFuZCA0NDk4MA0KDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IENRIFRhbmcg
PGNxLnRhbmdAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fc3RvbGVuLmMgfCA1ICsrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3N0b2xlbi5jDQo+IGluZGV4IGFhNTMzYjRhYjVmNS4uN2NlNTI1OWQ3M2Q2
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVu
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jDQo+
IEBAIC00MjUsOCArNDI1LDExIEBAIGludCBpOTE1X2dlbV9pbml0X3N0b2xlbihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYpDQo+ICAJCQliZHdfZ2V0X3N0b2xlbl9yZXNlcnZl
ZChkZXZfcHJpdiwNCj4gIAkJCQkJCSZyZXNlcnZlZF9iYXNlLA0KPiAmcmVzZXJ2ZWRfc2l6ZSk7
DQo+ICAJCWJyZWFrOw0KPiAtCWNhc2UgMTE6DQo+ICAJZGVmYXVsdDoNCj4gKwkJTUlTU0lOR19D
QVNFKElOVEVMX0dFTihkZXZfcHJpdikpOw0KPiArCQkvKiBmYWxsLXRocm91Z2ggKi8NCj4gKwlj
YXNlIDExOg0KPiArCWNhc2UgMTI6DQo+ICAJCWljbF9nZXRfc3RvbGVuX3Jlc2VydmVkKGRldl9w
cml2LCAmcmVzZXJ2ZWRfYmFzZSwNCj4gIAkJCQkJJnJlc2VydmVkX3NpemUpOw0KPiAgCQlicmVh
azsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
