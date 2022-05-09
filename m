Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADABE51FF65
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 16:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB01310EC92;
	Mon,  9 May 2022 14:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03C010EC92
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 14:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652106195; x=1683642195;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=RAkJLw5YKtO+CvLQR0aMQqR8R3fcFXW+Cc0VE+lqj5I=;
 b=BfeFEHdRtS75rqoELLz5rMRJaaBIStQ/Hb2IwUy3MG1wD4QAz+rbmAD5
 SwSTGWG6cG+E4+gcPn4cGW3V7OQIdQR8jF921YA3U718a3zCfJhVxwpkz
 gbQ4k62ShB8HJwlRSyVg+2VvI+6bW93n52qUhmtaC6O7Lfirx5Gep57aT
 H2xsUMVzT+rT9iOlzTzjsi3UJbjkOqzsfJ29GDNnCbdJeRxcm64nFZlKF
 Upr9uQSocGbml2p6z0lSqKpUydkF41R9DDkkm6Dr2ixxvAgjey1jyjyb0
 tivxC2j2Ai8ZKV6dyapRow7rXrcVK0GA1bqET5yHT+BMZKhv8D83O4zJz Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="256599727"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="256599727"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 07:23:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="738186976"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 09 May 2022 07:23:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 9 May 2022 07:23:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 9 May 2022 07:23:14 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Mon, 9 May 2022 07:23:14 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH CI 5/7] drm/i915: Drop has_ddi from device
 info
Thread-Index: AQHYYLctR4l8wmCFKU6SvlfZaeD26a0XBk8AgAAJUoCAAATpAA==
Date: Mon, 9 May 2022 14:23:13 +0000
Message-ID: <9cae873e3623a45391d9c6ccf7f1d117022c7198.camel@intel.com>
References: <20220505193524.276400-1-jose.souza@intel.com>
 <20220505193524.276400-5-jose.souza@intel.com>
 <e0c5e815-53a8-9759-948c-c180a8ecffdd@linux.intel.com>
 <87mtfqkdhq.fsf@intel.com>
In-Reply-To: <87mtfqkdhq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <8DD2F3822F90844E80F658D91F646CA7@intel.com>
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

T24gTW9uLCAyMDIyLTA1LTA5IGF0IDE3OjA1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAwOSBNYXkgMjAyMiwgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6DQo+ID4gT24gMDUvMDUvMjAyMiAyMDozNSwgSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+IE5vIG5lZWQgdG8gaGF2ZSB0aGlzIHBhcmFtZXRlciBp
biBpbnRlbF9kZXZpY2VfaW5mbyBzdHJ1Y3QNCj4gPiA+IGFzIGFsbCBwbGF0Zm9ybXMgd2l0aCBk
aXNwbGF5IHZlcnNpb24gOSBvciBuZXdlciwgaGFzd2VsbCBvciBicm9hZHdlbGwNCj4gPiA+IHN1
cHBvcnRzIGl0Lg0KPiA+ID4gDQo+ID4gPiBBcyBhIHNpZGUgZWZmZWN0IG9mIHRoZSBvZiByZW1v
dmFsIHRoaXMgZmxhZywgaXQgd2lsbCBub3QgYmUgcHJpbnRlZA0KPiA+ID4gaW4gZG1lc2cgZHVy
aW5nIGRyaXZlciBsb2FkIGFueW1vcmUgYW5kIGRldmVsb3BlcnMgd2lsbCBoYXZlIHRvIHJlbHkN
Cj4gPiA+IG9uIHRvIGNoZWNrIHRoZSBtYWNybyBhbmQgY29tcGFyZSB3aXRoIHBsYXRmb3JtIGJl
aW5nIHVzZWQgYW5kIElQDQo+ID4gPiB2ZXJzaW9ucyBvZiBpdC4NCj4gPiA+IA0KPiA+ID4gUmV2
aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCj4gPiA+IC0tLQ0KPiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAg
ICAgICAgIHwgNCArKystDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMg
ICAgICAgICAgfCAzIC0tLQ0KPiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZp
Y2VfaW5mby5oIHwgMSAtDQo+ID4gPiAgIDMgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4g
PiA+IGluZGV4IDU1Mzg1NjRiYzFkMjUuLjYwMGQ4Y2VlMjcyZGEgMTAwNjQ0DQo+ID4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gPiBAQCAtMTI5OCw3ICsxMjk4LDkgQEAgSVNfU1VC
UExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4gPiAgICNk
ZWZpbmUgSEFTX0RQMjAoZGV2X3ByaXYpCShJU19ERzIoZGV2X3ByaXYpKQ0KPiA+ID4gICANCj4g
PiA+ICAgI2RlZmluZSBIQVNfQ0RDTEtfQ1JBV0woZGV2X3ByaXYpCSAoSU5URUxfSU5GTyhkZXZf
cHJpdiktPmRpc3BsYXkuaGFzX2NkY2xrX2NyYXdsKQ0KPiA+ID4gLSNkZWZpbmUgSEFTX0RESShk
ZXZfcHJpdikJCSAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmRpc3BsYXkuaGFzX2RkaSkNCj4gPiA+
ICsjZGVmaW5lIEhBU19EREkoZGV2X3ByaXYpCQkgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA5
IHx8IFwNCj4gPiA+ICsJCQkJCSAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBcDQo+ID4gPiAr
CQkJCQkgIElTX0hBU1dFTEwoZGV2X3ByaXYpKQ0KPiA+IA0KPiA+IFRoaXMgb25lIGlzIGEgYml0
IGJvcmRlcmxpbmUsIG5vdCBzdXJlIGl0IHBhc3NlcyBKYW5pJ3MgY3JpdGVyaWEgb2YgDQo+ID4g
c2ltcGxpY2l0eSwgd2hpY2ggSSB0aG91Z2h0IHdhcyBhIGdvb2Qgb25lLiBBbmQgZnJvbSB0aGUg
T0NEIGFuZ2xlIGl0IA0KPiA+IGtpbmQgb2Ygc3Vja3MgdG8gZXhwYW5kIHRoZSBjb25kaXRpb25h
bHMgdG8gYWxsIGNhbGwgc2l0ZXMgKHdoZW4gaXQncyANCj4gPiBldmVuIGNhbGxlZCBmcm9tIGk5
MTVfaXJxLmMsIGp1c3RpZmlhYmx5IG9yIG5vdCBJIGRvbid0IGtub3cpLg0KPiA+IA0KPiA+IFdo
YXQgaXMgdGhlIGhpZ2ggbGV2ZWwgbW90aXZhdGlvbiBmb3IgdGhpcyB3b3JrPw0KPiANCj4gWWVh
aCwganVzdCBkb24ndCBtZXJnZSB3aGVuIHRoZXJlJ3Mgb3BlbiBkaXNjdXNzaW9uLiBHZXQgdGhl
IGFja3MuDQoNClNvcnJ5LCBJIHRob3VnaHQgdGhhdCBmb3IgdGhpcyBvbmVzIHdlIHdlcmUgZ29v
ZCB0byBnby4NCg0KPiANCj4gPiBBbHNvLCB3aHkgaXMgdGhpcyBpbiBkcm0taW50ZWwtZ3QtbmV4
dD8gOikNCj4gDQo+IFdpdGhvdXQgdGhlIHNtaWxleSwgYWN0dWFsbHkuDQo+IA0KPiAqQUxMKiBy
ZWZhY3RvcmluZyBsaWtlIHRoaXMgKk1VU1QqIGdvIHRocm91Z2ggZHJtLWludGVsLW5leHQuDQoN
Ck15IHVuZGVyc3RhdGluZyB3YXMgdGhhdCBpZiBpdCB3YXMgdG91Y2hpbmcgR1QgaXQgc2hvdWxk
IGdvIHRvIGRybS1pbnRlbC1ndC1uZXh0Lg0KDQo+IA0KPiBUaGlzIGlzIG5vdyBhIHNvdXJjZSBm
b3IgY29uZmxpY3RzIGZvciBhdCBsZWFzdCA0LTYgd2Vla3MgdW50aWwgd2UgY2FuDQo+IG1lcmdl
IGRybS1pbnRlbC1ndC1uZXh0IC0+IGRybS1uZXh0IC0+IGRybS1pbnRlbC1uZXh0Lg0KPiANCj4g
DQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+ID4gDQo+ID4gUmVnYXJkcywNCj4gPiANCj4gPiBU
dnJ0a28NCj4gPiANCj4gPiANCj4gPiA+ICAgI2RlZmluZSBIQVNfRlBHQV9EQkdfVU5DTEFJTUVE
KGRldl9wcml2KSAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmRpc3BsYXkuaGFzX2ZwZ2FfZGJnKQ0K
PiA+ID4gICAjZGVmaW5lIEhBU19QU1IoZGV2X3ByaXYpCQkgKElOVEVMX0lORk8oZGV2X3ByaXYp
LT5kaXNwbGF5Lmhhc19wc3IpDQo+ID4gPiAgICNkZWZpbmUgSEFTX1BTUl9IV19UUkFDS0lORyhk
ZXZfcHJpdikgXA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jDQo+ID4gPiBpbmRleCAyZGMw
Mjg0NjI5ZDMwLi5hMDY5M2Q5ZmY5Y2VlIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wY2kuYw0KPiA+ID4gQEAgLTUzNSw3ICs1MzUsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
dGVsX2RldmljZV9pbmZvIHZsdl9pbmZvID0gew0KPiA+ID4gICAJLnBsYXRmb3JtX2VuZ2luZV9t
YXNrID0gQklUKFJDUzApIHwgQklUKFZDUzApIHwgQklUKEJDUzApIHwgQklUKFZFQ1MwKSwgXA0K
PiA+ID4gICAJLmRpc3BsYXkuY3B1X3RyYW5zY29kZXJfbWFzayA9IEJJVChUUkFOU0NPREVSX0Ep
IHwgQklUKFRSQU5TQ09ERVJfQikgfCBcDQo+ID4gPiAgIAkJQklUKFRSQU5TQ09ERVJfQykgfCBC
SVQoVFJBTlNDT0RFUl9FRFApLCBcDQo+ID4gPiAtCS5kaXNwbGF5Lmhhc19kZGkgPSAxLCBcDQo+
ID4gPiAgIAkuZGlzcGxheS5oYXNfZnBnYV9kYmcgPSAxLCBcDQo+ID4gPiAgIAkuZGlzcGxheS5o
YXNfZHBfbXN0ID0gMSwgXA0KPiA+ID4gICAJLmhhc19yYzZwID0gMCAvKiBSQzZwIHJlbW92ZWQt
YnkgSFNXICovLCBcDQo+ID4gPiBAQCAtNjgzLDcgKzY4Miw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfZGV2aWNlX2luZm8gc2tsX2d0NF9pbmZvID0gew0KPiA+ID4gICAJCUJJVChUUkFO
U0NPREVSX0MpIHwgQklUKFRSQU5TQ09ERVJfRURQKSB8IFwNCj4gPiA+ICAgCQlCSVQoVFJBTlND
T0RFUl9EU0lfQSkgfCBCSVQoVFJBTlNDT0RFUl9EU0lfQyksIFwNCj4gPiA+ICAgCS5oYXNfNjRi
aXRfcmVsb2MgPSAxLCBcDQo+ID4gPiAtCS5kaXNwbGF5Lmhhc19kZGkgPSAxLCBcDQo+ID4gPiAg
IAkuZGlzcGxheS5oYXNfZnBnYV9kYmcgPSAxLCBcDQo+ID4gPiAgIAkuZGlzcGxheS5mYmNfbWFz
ayA9IEJJVChJTlRFTF9GQkNfQSksIFwNCj4gPiA+ICAgCS5kaXNwbGF5Lmhhc19oZGNwID0gMSwg
XA0KPiA+ID4gQEAgLTkzMiw3ICs5MzAsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rl
dmljZV9pbmZvIGFkbF9zX2luZm8gPSB7DQo+ID4gPiAgIAkuZGJ1Zi5zaXplID0gNDA5NiwJCQkJ
CQkJXA0KPiA+ID4gICAJLmRidWYuc2xpY2VfbWFzayA9IEJJVChEQlVGX1MxKSB8IEJJVChEQlVG
X1MyKSB8IEJJVChEQlVGX1MzKSB8CQlcDQo+ID4gPiAgIAkJQklUKERCVUZfUzQpLAkJCQkJCQlc
DQo+ID4gPiAtCS5kaXNwbGF5Lmhhc19kZGkgPSAxLAkJCQkJCQlcDQo+ID4gPiAgIAkuZGlzcGxh
eS5oYXNfZG1jID0gMSwJCQkJCQkJXA0KPiA+ID4gICAJLmRpc3BsYXkuaGFzX2RwX21zdCA9IDEs
CQkJCQkJXA0KPiA+ID4gICAJLmRpc3BsYXkuaGFzX2RzYiA9IDEsCQkJCQkJCVwNCj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaA0KPiA+ID4gaW5kZXggYmVmNjVl
M2YwMmM1NS4uYmM3MWNlNDg3NjNhZCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmgNCj4gPiA+IEBAIC0xNjcsNyArMTY3LDYgQEAgZW51bSBp
bnRlbF9wcGd0dF90eXBlIHsNCj4gPiA+ICAgCWZ1bmMoY3Vyc29yX25lZWRzX3BoeXNpY2FsKTsg
XA0KPiA+ID4gICAJZnVuYyhoYXNfY2RjbGtfY3Jhd2wpOyBcDQo+ID4gPiAgIAlmdW5jKGhhc19k
bWMpOyBcDQo+ID4gPiAtCWZ1bmMoaGFzX2RkaSk7IFwNCj4gPiA+ICAgCWZ1bmMoaGFzX2RwX21z
dCk7IFwNCj4gPiA+ICAgCWZ1bmMoaGFzX2RzYik7IFwNCj4gPiA+ICAgCWZ1bmMoaGFzX2RzYyk7
IFwNCj4gDQoNCg==
