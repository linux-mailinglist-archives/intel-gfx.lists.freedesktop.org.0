Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 955E851FEFC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 16:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF9110F1E3;
	Mon,  9 May 2022 14:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7EAF10F1DF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 14:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652104903; x=1683640903;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=BVKxa90xW92JmKcKQxQjG+kphf/7HUjZhneTb1vEg00=;
 b=VzhDNfG8Sn/ojvg6L2i9fYIKypDRei9WRZpOobnd6aag1g/XjOVceL4Q
 tTzYPPUn6RqNMbrzyCwYo+mCKzpABKNNYQRgTwcJixcL+7NCZ3fnAzagc
 fl1CKr6hQg3JYEaQSE7I1+bX2Ogzrm0wApYbKm7IqIkOGLL6LzlgEz6E0
 gzkamo7p1yvZsWfgRAV2WaeVjMRQhxi5uGJPzxWa2MF2UbGQF+HL8LYR/
 y4YVCoNNXZyKRoW5CW5fVRicgFXZMjXweIICGfPXX+7kcirhKfT5rCp4F
 G5FDRflw6JA7mrlFi3P0R/npgo7l6uBVm3gBiuU+lNGC3Vz7ABIX20c0c Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="268722503"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="268722503"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 07:01:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="894191204"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 09 May 2022 07:01:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 9 May 2022 07:01:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 9 May 2022 07:01:40 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Mon, 9 May 2022 07:01:39 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH CI 5/7] drm/i915: Drop has_ddi from device
 info
Thread-Index: AQHYYLctR4l8wmCFKU6SvlfZaeD26a0XBk8AgAAINQA=
Date: Mon, 9 May 2022 14:01:39 +0000
Message-ID: <2e649496c5028a4fdbcc655308e2f8d7f965fd94.camel@intel.com>
References: <20220505193524.276400-1-jose.souza@intel.com>
 <20220505193524.276400-5-jose.souza@intel.com>
 <e0c5e815-53a8-9759-948c-c180a8ecffdd@linux.intel.com>
In-Reply-To: <e0c5e815-53a8-9759-948c-c180a8ecffdd@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <697EFB22BB061045AFCBFB0E6E139327@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH CI 5/7] drm/i915: Drop has_ddi from device
 info
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTA1LTA5IGF0IDE0OjMyICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMDUvMDUvMjAyMiAyMDozNSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4g
PiBObyBuZWVkIHRvIGhhdmUgdGhpcyBwYXJhbWV0ZXIgaW4gaW50ZWxfZGV2aWNlX2luZm8gc3Ry
dWN0DQo+ID4gYXMgYWxsIHBsYXRmb3JtcyB3aXRoIGRpc3BsYXkgdmVyc2lvbiA5IG9yIG5ld2Vy
LCBoYXN3ZWxsIG9yIGJyb2Fkd2VsbA0KPiA+IHN1cHBvcnRzIGl0Lg0KPiA+IA0KPiA+IEFzIGEg
c2lkZSBlZmZlY3Qgb2YgdGhlIG9mIHJlbW92YWwgdGhpcyBmbGFnLCBpdCB3aWxsIG5vdCBiZSBw
cmludGVkDQo+ID4gaW4gZG1lc2cgZHVyaW5nIGRyaXZlciBsb2FkIGFueW1vcmUgYW5kIGRldmVs
b3BlcnMgd2lsbCBoYXZlIHRvIHJlbHkNCj4gPiBvbiB0byBjaGVjayB0aGUgbWFjcm8gYW5kIGNv
bXBhcmUgd2l0aCBwbGF0Zm9ybSBiZWluZyB1c2VkIGFuZCBJUA0KPiA+IHZlcnNpb25zIG9mIGl0
Lg0KPiA+IA0KPiA+IFJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaCAgICAgICAgICB8IDQgKysrLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYyAgICAgICAgICB8IDMgLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5oIHwgMSAtDQo+ID4gICAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4g
PiBpbmRleCA1NTM4NTY0YmMxZDI1Li42MDBkOGNlZTI3MmRhIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oDQo+ID4gQEAgLTEyOTgsNyArMTI5OCw5IEBAIElTX1NVQlBMQVRGT1JN
KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+ICAgI2RlZmluZSBIQVNf
RFAyMChkZXZfcHJpdikJKElTX0RHMihkZXZfcHJpdikpDQo+ID4gICANCj4gPiAgICNkZWZpbmUg
SEFTX0NEQ0xLX0NSQVdMKGRldl9wcml2KQkgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5kaXNwbGF5
Lmhhc19jZGNsa19jcmF3bCkNCj4gPiAtI2RlZmluZSBIQVNfRERJKGRldl9wcml2KQkJIChJTlRF
TF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfZGRpKQ0KPiA+ICsjZGVmaW5lIEhBU19EREko
ZGV2X3ByaXYpCQkgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA5IHx8IFwNCj4gPiArCQkJCQkg
IElTX0JST0FEV0VMTChkZXZfcHJpdikgfHwgXA0KPiA+ICsJCQkJCSAgSVNfSEFTV0VMTChkZXZf
cHJpdikpDQo+IA0KPiBUaGlzIG9uZSBpcyBhIGJpdCBib3JkZXJsaW5lLCBub3Qgc3VyZSBpdCBw
YXNzZXMgSmFuaSdzIGNyaXRlcmlhIG9mIA0KPiBzaW1wbGljaXR5LCB3aGljaCBJIHRob3VnaHQg
d2FzIGEgZ29vZCBvbmUuIEFuZCBmcm9tIHRoZSBPQ0QgYW5nbGUgaXQgDQo+IGtpbmQgb2Ygc3Vj
a3MgdG8gZXhwYW5kIHRoZSBjb25kaXRpb25hbHMgdG8gYWxsIGNhbGwgc2l0ZXMgKHdoZW4gaXQn
cyANCj4gZXZlbiBjYWxsZWQgZnJvbSBpOTE1X2lycS5jLCBqdXN0aWZpYWJseSBvciBub3QgSSBk
b24ndCBrbm93KS4NCg0KVGhpcyBtaWdodCBpbmNyZWFzZSBjb2RlIHNpemUgYnV0IEkgZG9uJ3Qg
YmVsaWV2ZSBpdCB3aWxsIGNhc2UgYW55IHBlcmZvcm1hbmNlIGltcGFjdCBldmVuIGZvciBpbnRl
cnJ1cHRpb24gaGFuZGxpbmcuDQoNCj4gDQo+IFdoYXQgaXMgdGhlIGhpZ2ggbGV2ZWwgbW90aXZh
dGlvbiBmb3IgdGhpcyB3b3JrPw0KDQpBZGQgbmV3IHBsYXRmb3JtcyBkZWZpbml0aW9ucyBhcmUg
YmVjb21pbmcgaHVnZSBidXJkZW4sIHRoZXJlIGlzIHRvbyBtYW55IGZlYXR1cmVzIHRvIGNoZWNr
IGlmIGEgbmV3IHBsYXRmb3JtIHN1cHBvcnRzIGVhY2ggb25lIG9mIGl0LCB3aGF0IGlzIGxlYWRp
bmcNCnRvIHBsYXRmb3JtIGRlZmluaXRpb24gZXJyb3JzLg0KDQpBbHNvIHVzdWFsbHkgd2hlbiBh
IGZlYXR1cmUgaXMgZHJvcHBlZCBhIEhTRCB3aWxsIGJlIGZpbGVkLCBzbyB0aGUgcGVyc29uIHRh
a2luZyBjYXJlIG9mIHRoYXQgY2FuIGp1c3QgYWRqdXN0IHRoZSBtYWNybyB1cHBlciBwbGF0Zm9y
bSBvciBJUCBib3VuZCBhbmQNCmRpc2FibGUgaXQgZm9yIGdvb2QuDQoNCj4gDQo+IEFsc28sIHdo
eSBpcyB0aGlzIGluIGRybS1pbnRlbC1ndC1uZXh0PyA6KQ0KDQpUbyByZWR1Y2UgY29uZmxpY3Rz
LCBtb3ZpbmcganVzdCBvbmUgb2YgdGhpcyBwYXRjaGVzIGFyb3VuZCBhbHJlYWR5IGNhdXNlcyBj
b25mbGljdHMuDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCj4gDQo+IA0KPiA+ICAg
I2RlZmluZSBIQVNfRlBHQV9EQkdfVU5DTEFJTUVEKGRldl9wcml2KSAoSU5URUxfSU5GTyhkZXZf
cHJpdiktPmRpc3BsYXkuaGFzX2ZwZ2FfZGJnKQ0KPiA+ICAgI2RlZmluZSBIQVNfUFNSKGRldl9w
cml2KQkJIChJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5oYXNfcHNyKQ0KPiA+ICAgI2Rl
ZmluZSBIQVNfUFNSX0hXX1RSQUNLSU5HKGRldl9wcml2KSBcDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jDQo+ID4gaW5kZXggMmRjMDI4NDYyOWQzMC4uYTA2OTNkOWZmOWNlZSAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiA+IEBAIC01MzUsNyArNTM1LDYgQEAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyB2bHZfaW5mbyA9IHsNCj4gPiAgIAkucGxh
dGZvcm1fZW5naW5lX21hc2sgPSBCSVQoUkNTMCkgfCBCSVQoVkNTMCkgfCBCSVQoQkNTMCkgfCBC
SVQoVkVDUzApLCBcDQo+ID4gICAJLmRpc3BsYXkuY3B1X3RyYW5zY29kZXJfbWFzayA9IEJJVChU
UkFOU0NPREVSX0EpIHwgQklUKFRSQU5TQ09ERVJfQikgfCBcDQo+ID4gICAJCUJJVChUUkFOU0NP
REVSX0MpIHwgQklUKFRSQU5TQ09ERVJfRURQKSwgXA0KPiA+IC0JLmRpc3BsYXkuaGFzX2RkaSA9
IDEsIFwNCj4gPiAgIAkuZGlzcGxheS5oYXNfZnBnYV9kYmcgPSAxLCBcDQo+ID4gICAJLmRpc3Bs
YXkuaGFzX2RwX21zdCA9IDEsIFwNCj4gPiAgIAkuaGFzX3JjNnAgPSAwIC8qIFJDNnAgcmVtb3Zl
ZC1ieSBIU1cgKi8sIFwNCj4gPiBAQCAtNjgzLDcgKzY4Miw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfZGV2aWNlX2luZm8gc2tsX2d0NF9pbmZvID0gew0KPiA+ICAgCQlCSVQoVFJBTlND
T0RFUl9DKSB8IEJJVChUUkFOU0NPREVSX0VEUCkgfCBcDQo+ID4gICAJCUJJVChUUkFOU0NPREVS
X0RTSV9BKSB8IEJJVChUUkFOU0NPREVSX0RTSV9DKSwgXA0KPiA+ICAgCS5oYXNfNjRiaXRfcmVs
b2MgPSAxLCBcDQo+ID4gLQkuZGlzcGxheS5oYXNfZGRpID0gMSwgXA0KPiA+ICAgCS5kaXNwbGF5
Lmhhc19mcGdhX2RiZyA9IDEsIFwNCj4gPiAgIAkuZGlzcGxheS5mYmNfbWFzayA9IEJJVChJTlRF
TF9GQkNfQSksIFwNCj4gPiAgIAkuZGlzcGxheS5oYXNfaGRjcCA9IDEsIFwNCj4gPiBAQCAtOTMy
LDcgKzkzMCw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gYWRsX3Nf
aW5mbyA9IHsNCj4gPiAgIAkuZGJ1Zi5zaXplID0gNDA5NiwJCQkJCQkJXA0KPiA+ICAgCS5kYnVm
LnNsaWNlX21hc2sgPSBCSVQoREJVRl9TMSkgfCBCSVQoREJVRl9TMikgfCBCSVQoREJVRl9TMykg
fAkJXA0KPiA+ICAgCQlCSVQoREJVRl9TNCksCQkJCQkJCVwNCj4gPiAtCS5kaXNwbGF5Lmhhc19k
ZGkgPSAxLAkJCQkJCQlcDQo+ID4gICAJLmRpc3BsYXkuaGFzX2RtYyA9IDEsCQkJCQkJCVwNCj4g
PiAgIAkuZGlzcGxheS5oYXNfZHBfbXN0ID0gMSwJCQkJCQlcDQo+ID4gICAJLmRpc3BsYXkuaGFz
X2RzYiA9IDEsCQkJCQkJCVwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9p
bmZvLmgNCj4gPiBpbmRleCBiZWY2NWUzZjAyYzU1Li5iYzcxY2U0ODc2M2FkIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+ID4gQEAgLTE2Nyw3
ICsxNjcsNiBAQCBlbnVtIGludGVsX3BwZ3R0X3R5cGUgew0KPiA+ICAgCWZ1bmMoY3Vyc29yX25l
ZWRzX3BoeXNpY2FsKTsgXA0KPiA+ICAgCWZ1bmMoaGFzX2NkY2xrX2NyYXdsKTsgXA0KPiA+ICAg
CWZ1bmMoaGFzX2RtYyk7IFwNCj4gPiAtCWZ1bmMoaGFzX2RkaSk7IFwNCj4gPiAgIAlmdW5jKGhh
c19kcF9tc3QpOyBcDQo+ID4gICAJZnVuYyhoYXNfZHNiKTsgXA0KPiA+ICAgCWZ1bmMoaGFzX2Rz
Yyk7IFwNCg0K
