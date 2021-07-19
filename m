Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F763CEAD5
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166CA89F41;
	Mon, 19 Jul 2021 18:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A1489F41
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 18:05:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="198308935"
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="198308935"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 11:05:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,252,1620716400"; d="scan'208";a="495883201"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 19 Jul 2021 11:05:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 11:05:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 19 Jul 2021 11:05:33 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Mon, 19 Jul 2021 11:05:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 01/50] drm/i915: Add XE_HP initial
 definitions
Thread-Index: AQHXeF6VZ+/qUcj90kSHXuXIuPMFEqtLFyaA
Date: Mon, 19 Jul 2021 18:05:32 +0000
Message-ID: <80af0984d7e6872085892935b2b36be7e9fdd002.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-2-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-2-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <764CB2D3D1F74C4FBF0C4C8ECE65FD32@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 01/50] drm/i915: Add XE_HP initial
 definitions
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE0IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBG
cm9tOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gDQo+IE91
ciBfRkVBVFVSRVMgbWFjcm8gd2VudCBiYWNrIHRvIEdFTjcsIGV4dGVuZGluZyBlYWNoIG90aGVy
LCBtYWtpbmcgaXQNCj4gZGlmZmljdWx0IHRvIGdyYXNwIHdoYXQgd2FzIHJlYWxseSBlbmFibGVk
L2Rpc2FibGVkLiBUYWtlIHRoZQ0KPiBvcHBvcnR1bml0eSBvZiB0aGUgR0VOIC0+IFhFX0hQIG5h
bWUgYnJlYWsgYW5kIGFsc28gYnJlYWsgd2l0aCB0aGUNCj4gZmVhdHVyZSBpbmhlcml0YW5jZS4N
Cj4gDQo+IEZvciBYRV9IUCB0aGlzIGJhc2ljYWxseSBnb2VzIGZyb20gR0VOMTIgYmFjayB0byBH
RU43IGNvYWxlc2NpbmcgdGhlDQo+IGZlYXR1cmVzIG1ha2luZyBzdXJlIHRoZSBvdmVycmlkZXMg
cmVtYWluLCByZW1vdmUgYWxsIHRoZQ0KPiBkaXNwbGF5LXNwZWNpZmljIGZlYXR1cmVzIGFuZCBz
b3J0IGl0Lg0KPiANCj4gVGhlbiBhbHNvIHJlbW92ZSB0aGUgZGVmaW5pdGlvbnMgdGhhdCB3b3Vs
ZCBiZSBvdmVycmlkZGVuIGJ5DQo+IERHRlhfRkVBVFVSRVMgYW5kIHRob3NlIHRoYXQgd2VyZSAw
IChzaW5jZSB0aGF0IGlzIHRoZSBkZWZhdWx0KS4NCj4gRXhjZXB0aW9uIGhlcmUgaXMgaGFzX21h
c3Rlcl91bml0X2lycTogYWx0aG91Z2ggaXQgaXMgYSBmZWF0dXJlIHRoYXQNCj4gc3RhcnRlZCB3
aXRoIERHMSBhbmQgaXMgdHJ1ZSBmb3IgYWxsIERHRlggcGxhdGZvcm1zLCBpdCdzIGFsc28gdHJ1
ZSBmb3INCj4gWEVfSFAgaW4gZ2VuZXJhbC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysr
DQo+ICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jDQo+IGluZGV4IDY3Njk2ZDc1MjI3MS4uYmU1ZWU1ZTBlMzI0IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gQEAgLTk5NSw2ICs5OTUsMzAgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBhZGxfcF9pbmZvID0gew0KPiAgfTsNCj4gIA0KPiAg
I3VuZGVmIEdFTg0KPiArDQo+ICsjZGVmaW5lIFhFX0hQX1BBR0VfU0laRVMgXA0KPiArCS5wYWdl
X3NpemVzID0gSTkxNV9HVFRfUEFHRV9TSVpFXzRLIHwgXA0KPiArCQkgICAgICBJOTE1X0dUVF9Q
QUdFX1NJWkVfNjRLIHwgXA0KPiArCQkgICAgICBJOTE1X0dUVF9QQUdFX1NJWkVfMk0NCj4gKw0K
PiArI2RlZmluZSBYRV9IUF9GRUFUVVJFUyBcDQo+ICsJLmdyYXBoaWNzX3ZlciA9IDEyLCBcDQo+
ICsJLmdyYXBoaWNzX3JlbCA9IDUwLCBcDQo+ICsJWEVfSFBfUEFHRV9TSVpFUywgXA0KPiArCS5k
bWFfbWFza19zaXplID0gNDYsIFwNCj4gKwkuaGFzXzY0Yml0X3JlbG9jID0gMSwgXA0KPiArCS5o
YXNfZ2xvYmFsX21vY3MgPSAxLCBcDQo+ICsJLmhhc19ndF91YyA9IDEsIFwNCj4gKwkuaGFzX2xs
YyA9IDEsIFwNCj4gKwkuaGFzX2xvZ2ljYWxfcmluZ19jb250ZXh0cyA9IDEsIFwNCj4gKwkuaGFz
X2xvZ2ljYWxfcmluZ19lbHNxID0gMSwgXA0KPiArCS5oYXNfcmM2ID0gMSwgXA0KPiArCS5oYXNf
cmVzZXRfZW5naW5lID0gMSwgXA0KPiArCS5oYXNfcnBzID0gMSwgXA0KPiArCS5oYXNfcnVudGlt
ZV9wbSA9IDEsIFwNCj4gKwkucHBndHRfc2l6ZSA9IDQ4LCBcDQo+ICsJLnBwZ3R0X3R5cGUgPSBJ
TlRFTF9QUEdUVF9GVUxMDQo+ICsNCj4gICN1bmRlZiBQTEFURk9STQ0KPiAgDQo+ICAvKg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
