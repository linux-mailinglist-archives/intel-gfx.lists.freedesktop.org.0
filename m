Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B81341F7AEF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 17:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D911B6E9A3;
	Fri, 12 Jun 2020 15:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61B816E9A3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 15:31:01 +0000 (UTC)
IronPort-SDR: 77vEOdP1iFUFCFChh+yWwTPYEFWXp1bkIz5tMAioUs9jG2R4GneZKGf5kyFhDQX7+PVnsnT++a
 Rsf/7LYDHw7w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 08:31:00 -0700
IronPort-SDR: 27xfbqLejB33Kr0b2cRLDE6FGCOq9CHL485vqegmFnbuY/7lKhC2ww/c0JS3unJWFxTtBf6/6c
 4UPcSobajjPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="419495743"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 12 Jun 2020 08:31:00 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jun 2020 08:31:00 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 FMSMSX119.amr.corp.intel.com ([169.254.14.95]) with mapi id 14.03.0439.000;
 Fri, 12 Jun 2020 08:30:59 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915: Add plane damage clips property
Thread-Index: AQHWM6rICiszaD5S3kS0iZe4LaLKW6jVqW2AgAAB7IA=
Date: Fri, 12 Jun 2020 15:30:59 +0000
Message-ID: <023ae7594ee3fa1e94d51686b778b55c12e99c96.camel@intel.com>
References: <20200526221447.64110-1-jose.souza@intel.com>
 <20200526221447.64110-2-jose.souza@intel.com>
 <20200612152531.GI6112@intel.com>
In-Reply-To: <20200612152531.GI6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.12.77]
Content-ID: <BC398E5BA5BF5A4C8316B8CF9AC083D6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Add plane damage clips
 property
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

T24gRnJpLCAyMDIwLTA2LTEyIGF0IDE4OjI1ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgTWF5IDI2LCAyMDIwIGF0IDAzOjE0OjQzUE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gVGhpcyBwcm9wZXJ0eSB3aWxsIGJlIHVzZWQgYnkgUFNS
MiBzb2Z0d2FyZSB0cmFja2luZywgYWRkaW5nIGl0IHRvDQo+ID4gR0VOMTIrLg0KPiANCj4gSXMg
dGhlcmUgYWN0dWFsIHVzZXJzcGFjZSB0aGF0IHVzZXMgdGhpcz8NCg0KT25seSBXZXN0b24gZm9y
IG5vdzoNCg0KaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL3dheWxhbmQvd2VzdG9uLy0v
bWVyZ2VfcmVxdWVzdHMvMTcNCg0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKysNCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyAgfCA0ICsrKysNCj4gPiAgMiBm
aWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IGY0MGI5MDk5NTJjYy4u
YjY5ODc4MzM0MDQwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAtMzUsNiArMzUsNyBAQA0KPiA+ICAjaW5jbHVkZSA8
ZHJtL2RybV9hdG9taWMuaD4NCj4gPiAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5o
Pg0KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfdWFwaS5oPg0KPiA+ICsjaW5jbHVkZSA8
ZHJtL2RybV9kYW1hZ2VfaGVscGVyLmg+DQo+ID4gICNpbmNsdWRlIDxkcm0vZHJtX2RwX2hlbHBl
ci5oPg0KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9lZGlkLmg+DQo+ID4gICNpbmNsdWRlIDxkcm0v
ZHJtX2ZvdXJjYy5oPg0KPiA+IEBAIC0xNjQ3Niw2ICsxNjQ3Nyw5IEBAIGludGVsX2N1cnNvcl9w
bGFuZV9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICAJenBv
cyA9IFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPm51bV9zcHJpdGVzW3BpcGVdICsgMTsNCj4gPiAg
CWRybV9wbGFuZV9jcmVhdGVfenBvc19pbW11dGFibGVfcHJvcGVydHkoJmN1cnNvci0+YmFzZSwg
enBvcyk7DQo+ID4gIA0KPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpDQo+ID4g
KwkJZHJtX3BsYW5lX2VuYWJsZV9mYl9kYW1hZ2VfY2xpcHMoJmN1cnNvci0+YmFzZSk7DQo+ID4g
Kw0KPiA+ICAJZHJtX3BsYW5lX2hlbHBlcl9hZGQoJmN1cnNvci0+YmFzZSwgJmludGVsX3BsYW5l
X2hlbHBlcl9mdW5jcyk7DQo+ID4gIA0KPiA+ICAJcmV0dXJuIGN1cnNvcjsNCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMNCj4gPiBpbmRleCA1NzFjMzZm
OTI5YmQuLjhiZTA2Y2IyNTk5OSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9zcHJpdGUuYw0KPiA+IEBAIC0zNCw2ICszNCw3IEBADQo+ID4gICNpbmNs
dWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4NCj4gPiAgI2luY2x1ZGUgPGRybS9kcm1fY29s
b3JfbWdtdC5oPg0KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9jcnRjLmg+DQo+ID4gKyNpbmNsdWRl
IDxkcm0vZHJtX2RhbWFnZV9oZWxwZXIuaD4NCj4gPiAgI2luY2x1ZGUgPGRybS9kcm1fZm91cmNj
Lmg+DQo+ID4gICNpbmNsdWRlIDxkcm0vZHJtX3BsYW5lX2hlbHBlci5oPg0KPiA+ICAjaW5jbHVk
ZSA8ZHJtL2RybV9yZWN0Lmg+DQo+ID4gQEAgLTMxNTEsNiArMzE1Miw5IEBAIHNrbF91bml2ZXJz
YWxfcGxhbmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiAg
DQo+ID4gIAlkcm1fcGxhbmVfY3JlYXRlX3pwb3NfaW1tdXRhYmxlX3Byb3BlcnR5KCZwbGFuZS0+
YmFzZSwgcGxhbmVfaWQpOw0KPiA+ICANCj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEyKQ0KPiA+ICsJCWRybV9wbGFuZV9lbmFibGVfZmJfZGFtYWdlX2NsaXBzKCZwbGFuZS0+YmFz
ZSk7DQo+ID4gKw0KPiA+ICAJZHJtX3BsYW5lX2hlbHBlcl9hZGQoJnBsYW5lLT5iYXNlLCAmaW50
ZWxfcGxhbmVfaGVscGVyX2Z1bmNzKTsNCj4gPiAgDQo+ID4gIAlyZXR1cm4gcGxhbmU7DQo+ID4g
LS0gDQo+ID4gMi4yNi4yDQo+ID4gDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
