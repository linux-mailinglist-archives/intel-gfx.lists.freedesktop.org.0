Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6C1322BC4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 14:56:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46BB06E442;
	Tue, 23 Feb 2021 13:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910F06E442
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 13:56:17 +0000 (UTC)
IronPort-SDR: uexKLt9k1SLeJ6lMJ3OULYXGhG5SHP4A3RqHkAU9ofS8QTFhCnynT3drLrWtsCmvsH1E0dm/Lb
 BYLxQlU7GINA==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="181370822"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="181370822"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 05:56:17 -0800
IronPort-SDR: L19Ob8B7aeefY8BL5Ckhc1VhVI+qgdoRvxVuIm4nmDkzuEA1Qj+jiXe0hDhdpn2lsohIfI5iTr
 0JvyjAzuvZog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="583216521"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2021 05:56:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 13:56:14 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Tue, 23 Feb 2021 05:56:13 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl+: Sanitize the DDI LANES/IO and AUX power
 domain names
Thread-Index: AQHXCV5BUoAt4Kd7u0Sgw4NlMoPDTqpmSyUA
Date: Tue, 23 Feb 2021 13:56:12 +0000
Message-ID: <9312b3b5383cf8aa96f7565fd96699b8a83ad7fa.camel@intel.com>
References: <20210222210400.940158-1-imre.deak@intel.com>
In-Reply-To: <20210222210400.940158-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <D88C7B475826154A8A6BA9F73B998271@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl+: Sanitize the DDI LANES/IO
 and AUX power domain names
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

T24gTW9uLCAyMDIxLTAyLTIyIGF0IDIzOjA0ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IElu
IEJzcGVjIHRoZSBUR0wgVHlwZUMgcG9ydHMgYXJlIFRDMS02LCB0aGUgQVVYIHBvd2VyIHdlbGwg
cmVxdWVzdCBmbGFncw0KPiBhcmUgVVNCQzEtNi9UQlQxLTYsIHNvIGZvciBjbGFyaXR5IHVzZSB0
aGVzZSBuYW1lcyBpbiB0aGUgcG9ydCBwb3dlcg0KPiBkb21haW4gbmFtZXMgaW5zdGVhZCBvZiB0
aGUgRC1JIHRlcm1pbm9sb2d5ICh3aGljaCBCc3BlYyB1c2VzIG9ubHkgZm9yDQo+IHRoZSBJQ0wg
VHlwZUMgcG9ydHMpLg0KPiANCj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UuDQo+IA0KPiBDYzogU291
emEgSm9zZSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Bvd2VyLmMgICAgfCAyMTIgKysrKysrKystLS0tLS0tLS0tDQo+ICAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggICAgfCAgMzIgKysrDQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDEzMCBpbnNlcnRpb25zKCspLCAxMTQgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYw0KPiBpbmRleCBmMDBjMTc1MGZlYmQuLjdlMGVhYTg3MjM1MCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4g
QEAgLTI4ODYsMjQgKzI4ODYsMjQgQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfbWFza19pbl9z
ZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJQklUX1VMTChQT1dFUl9ET01B
SU5fUElQRV9CKSB8CQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfQikg
fAkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BJUEVfQl9QQU5FTF9GSVRURVIpIHwJXA0K
PiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0RfTEFORVMpIHwJXA0KPiAtCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0VfTEFORVMpIHwJXA0KPiAtCUJJVF9VTEwoUE9XRVJf
RE9NQUlOX1BPUlRfRERJX0ZfTEFORVMpIHwJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BP
UlRfRERJX0dfTEFORVMpIHwJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0hf
TEFORVMpIHwJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0lfTEFORVMpIHwJ
XA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9EKSB8CQkJXA0KPiAtCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX0FVWF9FKSB8CQkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9GKSB8
CQkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9HKSB8CQkJXA0KPiAtCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX0FVWF9IKSB8CQkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9J
KSB8CQkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9EX1RCVCkgfAkJXA0KPiAtCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9FX1RCVCkgfAkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX0FVWF9GX1RCVCkgfAkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9HX1RCVCkg
fAkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9IX1RCVCkgfAkJXA0KPiAtCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX0FVWF9JX1RCVCkgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlO
X1BPUlRfRERJX0xBTkVTX1RDMSkgfAlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9E
RElfTEFORVNfVEMyKSB8CVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9MQU5F
U19UQzMpIHwJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0xBTkVTX1RDNCkg
fAlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfTEFORVNfVEM1KSB8CVwNCj4g
KwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9MQU5FU19UQzYpIHwJXA0KPiArCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX0FVWF9VU0JDMSkgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlO
X0FVWF9VU0JDMikgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9VU0JDMykgfAkJ
XA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9VU0JDNCkgfAkJXA0KPiArCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX0FVWF9VU0JDNSkgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FV
WF9VU0JDNikgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9UQlQxKSB8CQlcDQo+
ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDIpIHwJCVwNCj4gKwlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9BVVhfVEJUMykgfAkJXA0KPiArCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9UQlQ0
KSB8CQlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDUpIHwJCVwNCj4gKwlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJUNikgfAkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlO
X1ZHQSkgfAkJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJTykgfAkJCVwNCj4gIAlC
SVRfVUxMKFBPV0VSX0RPTUFJTl9JTklUKSkNCj4gQEAgLTI5MjEsMTggKzI5MjEsMTIgQEAgaW50
ZWxfZGlzcGxheV9wb3dlcl9wdXRfbWFza19pbl9zZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUsDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0MpIHwJCQlcDQo+ICAJQklUX1VM
TChQT1dFUl9ET01BSU5fSU5JVCkpDQo+ICANCj4gDQo+IC0jZGVmaW5lIFRHTF9ERElfSU9fRF9U
QzFfUE9XRVJfRE9NQUlOUyAoCVwNCj4gLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9E
X0lPKSkNCj4gLSNkZWZpbmUgVEdMX0RESV9JT19FX1RDMl9QT1dFUl9ET01BSU5TICgJXA0KPiAt
CUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0VfSU8pKQ0KPiAtI2RlZmluZSBUR0xfRERJ
X0lPX0ZfVEMzX1BPV0VSX0RPTUFJTlMgKAlcDQo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fUE9S
VF9ERElfRl9JTykpDQo+IC0jZGVmaW5lIFRHTF9ERElfSU9fR19UQzRfUE9XRVJfRE9NQUlOUyAo
CVwNCj4gLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9HX0lPKSkNCj4gLSNkZWZpbmUg
VEdMX0RESV9JT19IX1RDNV9QT1dFUl9ET01BSU5TICgJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX1BPUlRfRERJX0hfSU8pKQ0KPiAtI2RlZmluZSBUR0xfRERJX0lPX0lfVEM2X1BPV0VSX0RP
TUFJTlMgKAlcDQo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfSV9JTykpDQo+ICsj
ZGVmaW5lIFRHTF9ERElfSU9fVEMxX1BPV0VSX0RPTUFJTlMJQklUX1VMTChQT1dFUl9ET01BSU5f
UE9SVF9ERElfSU9fVEMxKQ0KPiArI2RlZmluZSBUR0xfRERJX0lPX1RDMl9QT1dFUl9ET01BSU5T
CUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0lPX1RDMikNCj4gKyNkZWZpbmUgVEdMX0RE
SV9JT19UQzNfUE9XRVJfRE9NQUlOUwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RESV9JT19U
QzMpDQo+ICsjZGVmaW5lIFRHTF9ERElfSU9fVEM0X1BPV0VSX0RPTUFJTlMJQklUX1VMTChQT1dF
Ul9ET01BSU5fUE9SVF9ERElfSU9fVEM0KQ0KPiArI2RlZmluZSBUR0xfRERJX0lPX1RDNV9QT1dF
Ul9ET01BSU5TCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0lPX1RDNSkNCj4gKyNkZWZp
bmUgVEdMX0RESV9JT19UQzZfUE9XRVJfRE9NQUlOUwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JU
X0RESV9JT19UQzYpDQo+ICANCj4gDQo+ICAjZGVmaW5lIFRHTF9BVVhfQV9JT19QT1dFUl9ET01B
SU5TICgJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfSU9fQSkgfAlcDQo+IEBAIC0y
OTQxLDQ0ICsyOTM1LDM0IEBAIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X21hc2tfaW5fc2V0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FV
WF9CKSkNCj4gICNkZWZpbmUgVEdMX0FVWF9DX0lPX1BPV0VSX0RPTUFJTlMgKAkJXA0KPiAgCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9DKSkNCj4gLSNkZWZpbmUgVEdMX0FVWF9EX1RDMV9JT19Q
T1dFUl9ET01BSU5TICgJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9EKSkNCj4gLSNk
ZWZpbmUgVEdMX0FVWF9FX1RDMl9JT19QT1dFUl9ET01BSU5TICgJXA0KPiAtCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX0FVWF9FKSkNCj4gLSNkZWZpbmUgVEdMX0FVWF9GX1RDM19JT19QT1dFUl9ET01B
SU5TICgJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9GKSkNCj4gLSNkZWZpbmUgVEdM
X0FVWF9HX1RDNF9JT19QT1dFUl9ET01BSU5TICgJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlO
X0FVWF9HKSkNCj4gLSNkZWZpbmUgVEdMX0FVWF9IX1RDNV9JT19QT1dFUl9ET01BSU5TICgJXA0K
PiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9IKSkNCj4gLSNkZWZpbmUgVEdMX0FVWF9JX1RD
Nl9JT19QT1dFUl9ET01BSU5TICgJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9JKSkN
Cj4gLSNkZWZpbmUgVEdMX0FVWF9EX1RCVDFfSU9fUE9XRVJfRE9NQUlOUyAoCVwNCj4gLQlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9BVVhfRF9UQlQpKQ0KPiAtI2RlZmluZSBUR0xfQVVYX0VfVEJUMl9J
T19QT1dFUl9ET01BSU5TICgJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9FX1RCVCkp
DQo+IC0jZGVmaW5lIFRHTF9BVVhfRl9UQlQzX0lPX1BPV0VSX0RPTUFJTlMgKAlcDQo+IC0JQklU
X1VMTChQT1dFUl9ET01BSU5fQVVYX0ZfVEJUKSkNCj4gLSNkZWZpbmUgVEdMX0FVWF9HX1RCVDRf
SU9fUE9XRVJfRE9NQUlOUyAoCVwNCj4gLQlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfR19UQlQp
KQ0KPiAtI2RlZmluZSBUR0xfQVVYX0hfVEJUNV9JT19QT1dFUl9ET01BSU5TICgJXA0KPiAtCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9IX1RCVCkpDQo+IC0jZGVmaW5lIFRHTF9BVVhfSV9UQlQ2
X0lPX1BPV0VSX0RPTUFJTlMgKAlcDQo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0lfVEJU
KSkNCj4gKw0KPiArI2RlZmluZSBUR0xfQVVYX0lPX1VTQkMxX1BPV0VSX0RPTUFJTlMJQklUX1VM
TChQT1dFUl9ET01BSU5fQVVYX1VTQkMxKQ0KPiArI2RlZmluZSBUR0xfQVVYX0lPX1VTQkMyX1BP
V0VSX0RPTUFJTlMJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1VTQkMyKQ0KPiArI2RlZmluZSBU
R0xfQVVYX0lPX1VTQkMzX1BPV0VSX0RPTUFJTlMJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1VT
QkMzKQ0KPiArI2RlZmluZSBUR0xfQVVYX0lPX1VTQkM0X1BPV0VSX0RPTUFJTlMJQklUX1VMTChQ
T1dFUl9ET01BSU5fQVVYX1VTQkM0KQ0KPiArI2RlZmluZSBUR0xfQVVYX0lPX1VTQkM1X1BPV0VS
X0RPTUFJTlMJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1VTQkM1KQ0KPiArI2RlZmluZSBUR0xf
QVVYX0lPX1VTQkM2X1BPV0VSX0RPTUFJTlMJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1VTQkM2
KQ0KPiArDQo+ICsjZGVmaW5lIFRHTF9BVVhfSU9fVEJUMV9QT1dFUl9ET01BSU5TCUJJVF9VTEwo
UE9XRVJfRE9NQUlOX0FVWF9UQlQxKQ0KPiArI2RlZmluZSBUR0xfQVVYX0lPX1RCVDJfUE9XRVJf
RE9NQUlOUwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJUMikNCj4gKyNkZWZpbmUgVEdMX0FV
WF9JT19UQlQzX1BPV0VSX0RPTUFJTlMJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDMpDQo+
ICsjZGVmaW5lIFRHTF9BVVhfSU9fVEJUNF9QT1dFUl9ET01BSU5TCUJJVF9VTEwoUE9XRVJfRE9N
QUlOX0FVWF9UQlQ0KQ0KPiArI2RlZmluZSBUR0xfQVVYX0lPX1RCVDVfUE9XRVJfRE9NQUlOUwlC
SVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJUNSkNCj4gKyNkZWZpbmUgVEdMX0FVWF9JT19UQlQ2
X1BPV0VSX0RPTUFJTlMJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDYpDQo+ICANCj4gDQo+
ICAjZGVmaW5lIFRHTF9UQ19DT0xEX09GRl9QT1dFUl9ET01BSU5TICgJCVwNCj4gLQlCSVRfVUxM
KFBPV0VSX0RPTUFJTl9BVVhfRCkJfAlcDQo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0Up
CXwJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9GKQl8CVwNCj4gLQlCSVRfVUxMKFBP
V0VSX0RPTUFJTl9BVVhfRykJfAlcDQo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0gpCXwJ
XA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9JKQl8CVwNCj4gLQlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9BVVhfRF9UQlQpCXwJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9FX1RC
VCkJfAlcDQo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0ZfVEJUKQl8CVwNCj4gLQlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9BVVhfR19UQlQpCXwJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlO
X0FVWF9IX1RCVCkJfAlcDQo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX0lfVEJUKQl8CVwN
Cj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVVNCQzEpCXwJXA0KPiArCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX0FVWF9VU0JDMikJfAlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1VT
QkMzKQl8CVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVVNCQzQpCXwJXA0KPiArCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9VU0JDNSkJfAlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01B
SU5fQVVYX1VTQkM2KQl8CVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJUMSkgfAlc
DQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDIpIHwJXA0KPiArCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX0FVWF9UQlQzKSB8CVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVEJU
NCkgfAlcDQo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fQVVYX1RCVDUpIHwJXA0KPiArCUJJVF9V
TEwoUE9XRVJfRE9NQUlOX0FVWF9UQlQ2KSB8CVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9U
Q19DT0xEX09GRikpDQo+ICANCj4gDQo+ICAjZGVmaW5lIFJLTF9QV180X1BPV0VSX0RPTUFJTlMg
KAkJCVwNCj4gQEAgLTI5OTQsMTAgKzI5NzgsMTAgQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRf
bWFza19pbl9zZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJQklUX1VMTChQ
T1dFUl9ET01BSU5fQVVESU8pIHwJCQlcDQo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fVkdBKSB8
CQkJXA0KPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfQikgfAkJXA0KPiAtCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0RfTEFORVMpIHwJXA0KPiAtCUJJVF9VTEwoUE9X
RVJfRE9NQUlOX1BPUlRfRERJX0VfTEFORVMpIHwJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlO
X0FVWF9EKSB8CQkJXA0KPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0FVWF9FKSB8CQkJXA0KPiAr
CUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0xBTkVTX1RDMSkgfAlcDQo+ICsJQklUX1VM
TChQT1dFUl9ET01BSU5fUE9SVF9ERElfTEFORVNfVEMyKSB8CVwNCj4gKwlCSVRfVUxMKFBPV0VS
X0RPTUFJTl9BVVhfVVNCQzEpIHwJCVwNCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVVhfVVNC
QzIpIHwJCVwNCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9JTklUKSkNCj4gIA0KPiANCj4gIC8q
DQo+IEBAIC00MTQ1LDggKzQxMjksOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJf
d2VsbF9kZXNjIHRnbF9wb3dlcl93ZWxsc1tdID0gew0KPiAgCQl9DQo+ICAJfSwNCj4gIAl7DQo+
IC0JCS5uYW1lID0gIkRESSBEIFRDMSBJTyIsDQo+IC0JCS5kb21haW5zID0gVEdMX0RESV9JT19E
X1RDMV9QT1dFUl9ET01BSU5TLA0KPiArCQkubmFtZSA9ICJEREkgSU8gVEMxIiwNCj4gKwkJLmRv
bWFpbnMgPSBUR0xfRERJX0lPX1RDMV9QT1dFUl9ET01BSU5TLA0KPiAgCQkub3BzID0gJmhzd19w
b3dlcl93ZWxsX29wcywNCj4gIAkJLmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAgCQl7DQo+IEBA
IC00MTU1LDggKzQxMzksOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9k
ZXNjIHRnbF9wb3dlcl93ZWxsc1tdID0gew0KPiAgCQl9LA0KPiAgCX0sDQo+ICAJew0KPiAtCQku
bmFtZSA9ICJEREkgRSBUQzIgSU8iLA0KPiAtCQkuZG9tYWlucyA9IFRHTF9ERElfSU9fRV9UQzJf
UE9XRVJfRE9NQUlOUywNCj4gKwkJLm5hbWUgPSAiRERJIElPIFRDMiIsDQo+ICsJCS5kb21haW5z
ID0gVEdMX0RESV9JT19UQzJfUE9XRVJfRE9NQUlOUywNCj4gIAkJLm9wcyA9ICZoc3dfcG93ZXJf
d2VsbF9vcHMsDQo+ICAJCS5pZCA9IERJU1BfUFdfSURfTk9ORSwNCj4gIAkJew0KPiBAQCAtNDE2
NSw4ICs0MTQ5LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB0
Z2xfcG93ZXJfd2VsbHNbXSA9IHsNCj4gIAkJfSwNCj4gIAl9LA0KPiAgCXsNCj4gLQkJLm5hbWUg
PSAiRERJIEYgVEMzIElPIiwNCj4gLQkJLmRvbWFpbnMgPSBUR0xfRERJX0lPX0ZfVEMzX1BPV0VS
X0RPTUFJTlMsDQo+ICsJCS5uYW1lID0gIkRESSBJTyBUQzMiLA0KPiArCQkuZG9tYWlucyA9IFRH
TF9ERElfSU9fVEMzX1BPV0VSX0RPTUFJTlMsDQo+ICAJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxf
b3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+ICAJCXsNCj4gQEAgLTQxNzUsOCAr
NDE1OSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bv
d2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+ICAJfSwNCj4gIAl7DQo+IC0JCS5uYW1lID0gIkRE
SSBHIFRDNCBJTyIsDQo+IC0JCS5kb21haW5zID0gVEdMX0RESV9JT19HX1RDNF9QT1dFUl9ET01B
SU5TLA0KPiArCQkubmFtZSA9ICJEREkgSU8gVEM0IiwNCj4gKwkJLmRvbWFpbnMgPSBUR0xfRERJ
X0lPX1RDNF9QT1dFUl9ET01BSU5TLA0KPiAgCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywN
Cj4gIAkJLmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAgCQl7DQo+IEBAIC00MTg1LDggKzQxNjks
OCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjIHRnbF9wb3dlcl93
ZWxsc1tdID0gew0KPiAgCQl9LA0KPiAgCX0sDQo+ICAJew0KPiAtCQkubmFtZSA9ICJEREkgSCBU
QzUgSU8iLA0KPiAtCQkuZG9tYWlucyA9IFRHTF9ERElfSU9fSF9UQzVfUE9XRVJfRE9NQUlOUywN
Cj4gKwkJLm5hbWUgPSAiRERJIElPIFRDNSIsDQo+ICsJCS5kb21haW5zID0gVEdMX0RESV9JT19U
QzVfUE9XRVJfRE9NQUlOUywNCj4gIAkJLm9wcyA9ICZoc3dfcG93ZXJfd2VsbF9vcHMsDQo+ICAJ
CS5pZCA9IERJU1BfUFdfSURfTk9ORSwNCj4gIAkJew0KPiBAQCAtNDE5NSw4ICs0MTc5LDggQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGxfZGVzYyB0Z2xfcG93ZXJfd2VsbHNb
XSA9IHsNCj4gIAkJfSwNCj4gIAl9LA0KPiAgCXsNCj4gLQkJLm5hbWUgPSAiRERJIEkgVEM2IElP
IiwNCj4gLQkJLmRvbWFpbnMgPSBUR0xfRERJX0lPX0lfVEM2X1BPV0VSX0RPTUFJTlMsDQo+ICsJ
CS5uYW1lID0gIkRESSBJTyBUQzYiLA0KPiArCQkuZG9tYWlucyA9IFRHTF9ERElfSU9fVEM2X1BP
V0VSX0RPTUFJTlMsDQo+ICAJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQg
PSBESVNQX1BXX0lEX05PTkUsDQo+ICAJCXsNCj4gQEAgLTQyNDEsOCArNDIyNSw4IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7
DQo+ICAJCX0sDQo+ICAJfSwNCj4gIAl7DQo+IC0JCS5uYW1lID0gIkFVWCBEIFRDMSIsDQo+IC0J
CS5kb21haW5zID0gVEdMX0FVWF9EX1RDMV9JT19QT1dFUl9ET01BSU5TLA0KPiArCQkubmFtZSA9
ICJBVVggVVNCQzEiLA0KPiArCQkuZG9tYWlucyA9IFRHTF9BVVhfSU9fVVNCQzFfUE9XRVJfRE9N
QUlOUywNCj4gIAkJLm9wcyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBE
SVNQX1BXX0lEX05PTkUsDQo+ICAJCXsNCj4gQEAgLTQyNTIsOCArNDIzNiw4IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+
ICAJCX0sDQo+ICAJfSwNCj4gIAl7DQo+IC0JCS5uYW1lID0gIkFVWCBFIFRDMiIsDQo+IC0JCS5k
b21haW5zID0gVEdMX0FVWF9FX1RDMl9JT19QT1dFUl9ET01BSU5TLA0KPiArCQkubmFtZSA9ICJB
VVggVVNCQzIiLA0KPiArCQkuZG9tYWlucyA9IFRHTF9BVVhfSU9fVVNCQzJfUE9XRVJfRE9NQUlO
UywNCj4gIAkJLm9wcyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQ
X1BXX0lEX05PTkUsDQo+ICAJCXsNCj4gQEAgLTQyNjMsOCArNDI0Nyw4IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJ
CX0sDQo+ICAJfSwNCj4gIAl7DQo+IC0JCS5uYW1lID0gIkFVWCBGIFRDMyIsDQo+IC0JCS5kb21h
aW5zID0gVEdMX0FVWF9GX1RDM19JT19QT1dFUl9ET01BSU5TLA0KPiArCQkubmFtZSA9ICJBVVgg
VVNCQzMiLA0KPiArCQkuZG9tYWlucyA9IFRHTF9BVVhfSU9fVVNCQzNfUE9XRVJfRE9NQUlOUywN
Cj4gIAkJLm9wcyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BX
X0lEX05PTkUsDQo+ICAJCXsNCj4gQEAgLTQyNzQsOCArNDI1OCw4IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0s
DQo+ICAJfSwNCj4gIAl7DQo+IC0JCS5uYW1lID0gIkFVWCBHIFRDNCIsDQo+IC0JCS5kb21haW5z
ID0gVEdMX0FVWF9HX1RDNF9JT19QT1dFUl9ET01BSU5TLA0KPiArCQkubmFtZSA9ICJBVVggVVNC
QzQiLA0KPiArCQkuZG9tYWlucyA9IFRHTF9BVVhfSU9fVVNCQzRfUE9XRVJfRE9NQUlOUywNCj4g
IAkJLm9wcyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lE
X05PTkUsDQo+ICAJCXsNCj4gQEAgLTQyODUsOCArNDI2OSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+
ICAJfSwNCj4gIAl7DQo+IC0JCS5uYW1lID0gIkFVWCBIIFRDNSIsDQo+IC0JCS5kb21haW5zID0g
VEdMX0FVWF9IX1RDNV9JT19QT1dFUl9ET01BSU5TLA0KPiArCQkubmFtZSA9ICJBVVggVVNCQzUi
LA0KPiArCQkuZG9tYWlucyA9IFRHTF9BVVhfSU9fVVNCQzVfUE9XRVJfRE9NQUlOUywNCj4gIAkJ
Lm9wcyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05P
TkUsDQo+ICAJCXsNCj4gQEAgLTQyOTYsOCArNDI4MCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
aTkxNV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+ICAJ
fSwNCj4gIAl7DQo+IC0JCS5uYW1lID0gIkFVWCBJIFRDNiIsDQo+IC0JCS5kb21haW5zID0gVEdM
X0FVWF9JX1RDNl9JT19QT1dFUl9ET01BSU5TLA0KPiArCQkubmFtZSA9ICJBVVggVVNCQzYiLA0K
PiArCQkuZG9tYWlucyA9IFRHTF9BVVhfSU9fVVNCQzZfUE9XRVJfRE9NQUlOUywNCj4gIAkJLm9w
cyA9ICZpY2xfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUs
DQo+ICAJCXsNCj4gQEAgLTQzMDcsOCArNDI5MSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkx
NV9wb3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+ICAJfSwN
Cj4gIAl7DQo+IC0JCS5uYW1lID0gIkFVWCBEIFRCVDEiLA0KPiAtCQkuZG9tYWlucyA9IFRHTF9B
VVhfRF9UQlQxX0lPX1BPV0VSX0RPTUFJTlMsDQo+ICsJCS5uYW1lID0gIkFVWCBUQlQxIiwNCj4g
KwkJLmRvbWFpbnMgPSBUR0xfQVVYX0lPX1RCVDFfUE9XRVJfRE9NQUlOUywNCj4gIAkJLm9wcyA9
ICZpY2xfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+
ICAJCXsNCj4gQEAgLTQzMTgsOCArNDMwMiw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9w
b3dlcl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+ICAJfSwNCj4g
IAl7DQo+IC0JCS5uYW1lID0gIkFVWCBFIFRCVDIiLA0KPiAtCQkuZG9tYWlucyA9IFRHTF9BVVhf
RV9UQlQyX0lPX1BPV0VSX0RPTUFJTlMsDQo+ICsJCS5uYW1lID0gIkFVWCBUQlQyIiwNCj4gKwkJ
LmRvbWFpbnMgPSBUR0xfQVVYX0lPX1RCVDJfUE9XRVJfRE9NQUlOUywNCj4gIAkJLm9wcyA9ICZp
Y2xfYXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+ICAJ
CXsNCj4gQEAgLTQzMjksOCArNDMxMyw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dl
cl93ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+ICAJfSwNCj4gIAl7
DQo+IC0JCS5uYW1lID0gIkFVWCBGIFRCVDMiLA0KPiAtCQkuZG9tYWlucyA9IFRHTF9BVVhfRl9U
QlQzX0lPX1BPV0VSX0RPTUFJTlMsDQo+ICsJCS5uYW1lID0gIkFVWCBUQlQzIiwNCj4gKwkJLmRv
bWFpbnMgPSBUR0xfQVVYX0lPX1RCVDNfUE9XRVJfRE9NQUlOUywNCj4gIAkJLm9wcyA9ICZpY2xf
YXV4X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+ICAJCXsN
Cj4gQEAgLTQzNDAsOCArNDMyNCw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93
ZWxsX2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+ICAJfSwNCj4gIAl7DQo+
IC0JCS5uYW1lID0gIkFVWCBHIFRCVDQiLA0KPiAtCQkuZG9tYWlucyA9IFRHTF9BVVhfR19UQlQ0
X0lPX1BPV0VSX0RPTUFJTlMsDQo+ICsJCS5uYW1lID0gIkFVWCBUQlQ0IiwNCj4gKwkJLmRvbWFp
bnMgPSBUR0xfQVVYX0lPX1RCVDRfUE9XRVJfRE9NQUlOUywNCj4gIAkJLm9wcyA9ICZpY2xfYXV4
X3Bvd2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+ICAJCXsNCj4g
QEAgLTQzNTEsOCArNDMzNSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxs
X2Rlc2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+ICAJfSwNCj4gIAl7DQo+IC0J
CS5uYW1lID0gIkFVWCBIIFRCVDUiLA0KPiAtCQkuZG9tYWlucyA9IFRHTF9BVVhfSF9UQlQ1X0lP
X1BPV0VSX0RPTUFJTlMsDQo+ICsJCS5uYW1lID0gIkFVWCBUQlQ1IiwNCj4gKwkJLmRvbWFpbnMg
PSBUR0xfQVVYX0lPX1RCVDVfUE9XRVJfRE9NQUlOUywNCj4gIAkJLm9wcyA9ICZpY2xfYXV4X3Bv
d2VyX3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+ICAJCXsNCj4gQEAg
LTQzNjIsOCArNDM0Niw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rl
c2MgdGdsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+ICAJfSwNCj4gIAl7DQo+IC0JCS5u
YW1lID0gIkFVWCBJIFRCVDYiLA0KPiAtCQkuZG9tYWlucyA9IFRHTF9BVVhfSV9UQlQ2X0lPX1BP
V0VSX0RPTUFJTlMsDQo+ICsJCS5uYW1lID0gIkFVWCBUQlQ2IiwNCj4gKwkJLmRvbWFpbnMgPSBU
R0xfQVVYX0lPX1RCVDZfUE9XRVJfRE9NQUlOUywNCj4gIAkJLm9wcyA9ICZpY2xfYXV4X3Bvd2Vy
X3dlbGxfb3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+ICAJCXsNCj4gQEAgLTQ0
NzEsOCArNDQ1NSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2Mg
cmtsX3Bvd2VyX3dlbGxzW10gPSB7DQo+ICAJCX0NCj4gIAl9LA0KPiAgCXsNCj4gLQkJLm5hbWUg
PSAiRERJIEQgVEMxIElPIiwNCj4gLQkJLmRvbWFpbnMgPSBUR0xfRERJX0lPX0RfVEMxX1BPV0VS
X0RPTUFJTlMsDQo+ICsJCS5uYW1lID0gIkRESSBJTyBUQzEiLA0KPiArCQkuZG9tYWlucyA9IFRH
TF9ERElfSU9fVEMxX1BPV0VSX0RPTUFJTlMsDQo+ICAJCS5vcHMgPSAmaHN3X3Bvd2VyX3dlbGxf
b3BzLA0KPiAgCQkuaWQgPSBESVNQX1BXX0lEX05PTkUsDQo+ICAJCXsNCj4gQEAgLTQ0ODEsOCAr
NDQ2NSw4IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsX2Rlc2MgcmtsX3Bv
d2VyX3dlbGxzW10gPSB7DQo+ICAJCX0sDQo+ICAJfSwNCj4gIAl7DQo+IC0JCS5uYW1lID0gIkRE
SSBFIFRDMiBJTyIsDQo+IC0JCS5kb21haW5zID0gVEdMX0RESV9JT19FX1RDMl9QT1dFUl9ET01B
SU5TLA0KPiArCQkubmFtZSA9ICJEREkgSU8gVEMyIiwNCj4gKwkJLmRvbWFpbnMgPSBUR0xfRERJ
X0lPX1RDMl9QT1dFUl9ET01BSU5TLA0KPiAgCQkub3BzID0gJmhzd19wb3dlcl93ZWxsX29wcywN
Cj4gIAkJLmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAgCQl7DQo+IEBAIC00NTExLDggKzQ0OTUs
OCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjIHJrbF9wb3dlcl93
ZWxsc1tdID0gew0KPiAgCQl9LA0KPiAgCX0sDQo+ICAJew0KPiAtCQkubmFtZSA9ICJBVVggRCBU
QzEiLA0KPiAtCQkuZG9tYWlucyA9IFRHTF9BVVhfRF9UQzFfSU9fUE9XRVJfRE9NQUlOUywNCj4g
KwkJLm5hbWUgPSAiQVVYIFVTQkMxIiwNCj4gKwkJLmRvbWFpbnMgPSBUR0xfQVVYX0lPX1VTQkMx
X1BPV0VSX0RPTUFJTlMsDQo+ICAJCS5vcHMgPSAmaWNsX2F1eF9wb3dlcl93ZWxsX29wcywNCj4g
IAkJLmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAgCQl7DQo+IEBAIC00NTIxLDggKzQ1MDUsOCBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfcG93ZXJfd2VsbF9kZXNjIHJrbF9wb3dlcl93ZWxs
c1tdID0gew0KPiAgCQl9LA0KPiAgCX0sDQo+ICAJew0KPiAtCQkubmFtZSA9ICJBVVggRSBUQzIi
LA0KPiAtCQkuZG9tYWlucyA9IFRHTF9BVVhfRV9UQzJfSU9fUE9XRVJfRE9NQUlOUywNCj4gKwkJ
Lm5hbWUgPSAiQVVYIFVTQkMyIiwNCj4gKwkJLmRvbWFpbnMgPSBUR0xfQVVYX0lPX1VTQkMyX1BP
V0VSX0RPTUFJTlMsDQo+ICAJCS5vcHMgPSAmaWNsX2F1eF9wb3dlcl93ZWxsX29wcywNCj4gIAkJ
LmlkID0gRElTUF9QV19JRF9OT05FLA0KPiAgCQl7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+IGluZGV4IGJjMzBjNDc5YmU1
My4uZjNjYTVkNWM5Nzc4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaA0KPiBAQCAtNDEsNiArNDEsMTQgQEAgZW51bSBp
bnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiB7DQo+ICAJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0df
TEFORVMsDQo+ICAJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0hfTEFORVMsDQo+ICAJUE9XRVJfRE9N
QUlOX1BPUlRfRERJX0lfTEFORVMsDQo+ICsNCj4gKwlQT1dFUl9ET01BSU5fUE9SVF9ERElfTEFO
RVNfVEMxID0gUE9XRVJfRE9NQUlOX1BPUlRfRERJX0RfTEFORVMsIC8qIHRnbCsgKi8NCg0KVG8g
Zm9sbG93IG90aGVycyBpdCBzaG91bGQgYmUgUE9XRVJfRE9NQUlOX1BPUlRfRERJX1RDMV9MQU5F
Uw0KDQo+ICsJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0xBTkVTX1RDMiwNCj4gKwlQT1dFUl9ET01B
SU5fUE9SVF9ERElfTEFORVNfVEMzLA0KPiArCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9MQU5FU19U
QzQsDQo+ICsJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0xBTkVTX1RDNSwNCj4gKwlQT1dFUl9ET01B
SU5fUE9SVF9ERElfTEFORVNfVEM2LA0KPiArDQo+ICAJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0Ff
SU8sDQo+ICAJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0JfSU8sDQo+ICAJUE9XRVJfRE9NQUlOX1BP
UlRfRERJX0NfSU8sDQo+IEBAIC01MCw2ICs1OCwxNCBAQCBlbnVtIGludGVsX2Rpc3BsYXlfcG93
ZXJfZG9tYWluIHsNCj4gIAlQT1dFUl9ET01BSU5fUE9SVF9ERElfR19JTywNCj4gIAlQT1dFUl9E
T01BSU5fUE9SVF9ERElfSF9JTywNCj4gIAlQT1dFUl9ET01BSU5fUE9SVF9ERElfSV9JTywNCj4g
Kw0KPiArCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9JT19UQzEgPSBQT1dFUl9ET01BSU5fUE9SVF9E
RElfRF9JTywgLyogdGdsKyAqLw0KDQpTYW1lIGFzIGNvbW1lbnQgYWJvdmU6IFBPV0VSX0RPTUFJ
Tl9QT1JUX0RESV9UQzFfSU8NCg0KV2l0aCB0aGlzIDIgcmVuYW1lcywgbG9va3MgZ29vZCB0byBt
ZS4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KDQo+ICsJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0lPX1RDMiwNCj4gKwlQT1dFUl9E
T01BSU5fUE9SVF9ERElfSU9fVEMzLA0KPiArCVBPV0VSX0RPTUFJTl9QT1JUX0RESV9JT19UQzQs
DQo+ICsJUE9XRVJfRE9NQUlOX1BPUlRfRERJX0lPX1RDNSwNCj4gKwlQT1dFUl9ET01BSU5fUE9S
VF9ERElfSU9fVEM2LA0KPiArDQo+ICAJUE9XRVJfRE9NQUlOX1BPUlRfRFNJLA0KPiAgCVBPV0VS
X0RPTUFJTl9QT1JUX0NSVCwNCj4gIAlQT1dFUl9ET01BSU5fUE9SVF9PVEhFUiwNCj4gQEAgLTY0
LDYgKzgwLDE0IEBAIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gew0KPiAgCVBPV0VS
X0RPTUFJTl9BVVhfRywNCj4gIAlQT1dFUl9ET01BSU5fQVVYX0gsDQo+ICAJUE9XRVJfRE9NQUlO
X0FVWF9JLA0KPiArDQo+ICsJUE9XRVJfRE9NQUlOX0FVWF9VU0JDMSA9IFBPV0VSX0RPTUFJTl9B
VVhfRCwgLyogdGdsKyAqLw0KPiArCVBPV0VSX0RPTUFJTl9BVVhfVVNCQzIsDQo+ICsJUE9XRVJf
RE9NQUlOX0FVWF9VU0JDMywNCj4gKwlQT1dFUl9ET01BSU5fQVVYX1VTQkM0LA0KPiArCVBPV0VS
X0RPTUFJTl9BVVhfVVNCQzUsDQo+ICsJUE9XRVJfRE9NQUlOX0FVWF9VU0JDNiwNCj4gKw0KPiAg
CVBPV0VSX0RPTUFJTl9BVVhfSU9fQSwNCj4gIAlQT1dFUl9ET01BSU5fQVVYX0NfVEJULA0KPiAg
CVBPV0VSX0RPTUFJTl9BVVhfRF9UQlQsDQo+IEBAIC03Miw2ICs5NiwxNCBAQCBlbnVtIGludGVs
X2Rpc3BsYXlfcG93ZXJfZG9tYWluIHsNCj4gIAlQT1dFUl9ET01BSU5fQVVYX0dfVEJULA0KPiAg
CVBPV0VSX0RPTUFJTl9BVVhfSF9UQlQsDQo+ICAJUE9XRVJfRE9NQUlOX0FVWF9JX1RCVCwNCj4g
Kw0KPiArCVBPV0VSX0RPTUFJTl9BVVhfVEJUMSA9IFBPV0VSX0RPTUFJTl9BVVhfRF9UQlQsIC8q
IHRnbCsgKi8NCj4gKwlQT1dFUl9ET01BSU5fQVVYX1RCVDIsDQo+ICsJUE9XRVJfRE9NQUlOX0FV
WF9UQlQzLA0KPiArCVBPV0VSX0RPTUFJTl9BVVhfVEJUNCwNCj4gKwlQT1dFUl9ET01BSU5fQVVY
X1RCVDUsDQo+ICsJUE9XRVJfRE9NQUlOX0FVWF9UQlQ2LA0KPiArDQo+ICAJUE9XRVJfRE9NQUlO
X0dNQlVTLA0KPiAgCVBPV0VSX0RPTUFJTl9NT0RFU0VULA0KPiAgCVBPV0VSX0RPTUFJTl9HVF9J
UlEsDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
