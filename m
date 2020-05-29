Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E30681E893E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 22:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BEE6E96F;
	Fri, 29 May 2020 20:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7AD76E96F
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 20:52:40 +0000 (UTC)
IronPort-SDR: ghOu/PYqI9tQefb06JTQ2GYtJP3JHSq/LwWfMchCLNP1lC7f35ujLIHUU61VTcdHzlMXz2625F
 l4lWVRZaCT3w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 13:52:40 -0700
IronPort-SDR: NnZQsmXcHebvRJdQhJ8vikT6l44qMFXxo+FJf3a0AI/v03C6KN1jPin9DJjfk4T6dvWeqrGg02
 bYN8MAEnkzdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,450,1583222400"; d="scan'208";a="415100324"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 29 May 2020 13:52:39 -0700
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 May 2020 13:52:39 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.50]) with mapi id 14.03.0439.000;
 Fri, 29 May 2020 13:52:38 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/display/hsw+: Do not program
 the same vswing entry twice
Thread-Index: AQHWNSr387DuUrUQLUy/waiJjC/j1Ki/FkIAgADrRQA=
Date: Fri, 29 May 2020 20:52:38 +0000
Message-ID: <f1176dfde6ee0cb1bad4ca2c2895c10359d55365.camel@intel.com>
References: <20200528200356.36756-1-jose.souza@intel.com>
 <20200529065148.GG6112@intel.com>
In-Reply-To: <20200529065148.GG6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.186.10]
Content-ID: <401D4C9FE6832845933CA7E76846B799@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display/hsw+: Do not program
 the same vswing entry twice
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

T24gRnJpLCAyMDIwLTA1LTI5IGF0IDA5OjUxICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgTWF5IDI4LCAyMDIwIGF0IDAxOjAzOjUzUE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gSXQgd2lsbCBiZSBwcm9ncmFtZWQgcmlnaHQgYmVmb3Jl
IHRoZSBsaW5rIHRyYWluaW5nLCBzbyBubyBuZWVkIHRvIGRvDQo+ID4gaXQgdHdpY2UuDQo+ID4g
SXQgd2lsbCBub3Qgc3RyaWN0bHkgZm9sbG93IEJTcGVjIHNlcXVlbmNlcyBidXQgbW9zdCBvZiB0
aGlzIHNlcXVlbmNlcw0KPiA+IGFyZSBub3QgbWF0Y2hpbmcgYW55d2F5cy4NCj4gPiANCj4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyB8IDE5ICsrKystLS0tLS0tLS0tLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gaW5kZXggYWEyMjQ2NWJiNTZlLi5jMTAwZWZjNmEyYzQg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
PiBAQCAtMzExNSw3ICszMTE1LDYgQEAgc3RhdGljIHZvaWQgdGdsX2RkaV9wcmVfZW5hYmxlX2Rw
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ICAJZW51bSBwaHkgcGh5ID0g
aW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYsIGVuY29kZXItPnBvcnQpOw0KPiA+ICAJc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7
DQo+ID4gIAlib29sIGlzX21zdCA9IGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5U
RUxfT1VUUFVUX0RQX01TVCk7DQo+ID4gLQlpbnQgbGV2ZWwgPSBpbnRlbF9kZGlfZHBfbGV2ZWwo
aW50ZWxfZHApOw0KPiA+ICAJZW51bSB0cmFuc2NvZGVyIHRyYW5zY29kZXIgPSBjcnRjX3N0YXRl
LT5jcHVfdHJhbnNjb2RlcjsNCj4gPiAgDQo+ID4gIAlpbnRlbF9kcF9zZXRfbGlua19wYXJhbXMo
aW50ZWxfZHAsIGNydGNfc3RhdGUtPnBvcnRfY2xvY2ssDQo+ID4gQEAgLTMxOTAsOSArMzE4OSwx
MCBAQCBzdGF0aWMgdm9pZCB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ID4gIAkgKiBkb3duIHRoaXMgZnVuY3Rpb24uDQo+ID4gIAkgKi8N
Cj4gPiAgDQo+ID4gLQkvKiA3LmUgQ29uZmlndXJlIHZvbHRhZ2Ugc3dpbmcgYW5kIHJlbGF0ZWQg
SU8gc2V0dGluZ3MgKi8NCj4gPiAtCXRnbF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29kZXIsIGNy
dGNfc3RhdGUtPnBvcnRfY2xvY2ssIGxldmVsLA0KPiA+IC0JCQkJZW5jb2Rlci0+dHlwZSk7DQo+
ID4gKwkvKg0KPiA+ICsJICogNy5lIENvbmZpZ3VyZSB2b2x0YWdlIHN3aW5nIGFuZCByZWxhdGVk
IElPIHNldHRpbmdzDQo+ID4gKwkgKiBJdCB3aWxsIGJlIGRvbmUgaW4gaW50ZWxfZHBfc3RhcnRf
bGlua190cmFpbigpLCBubyBuZWVkIHRvIGRvIHR3aWNlDQo+ID4gKwkgKi8NCj4gDQo+IEhtbS4g
RG8gd2Ugc3RpbGwgc2V0IGl0IHVwIGJlZm9yZSB0dXJuaW5nIG9uIHRoZSBwb3J0Pw0KDQpOby4N
Cg0KaW50ZWxfZHBfc3RhcnRfbGlua190cmFpbigpDQoJaW50ZWxfZHBfbGlua190cmFpbmluZ19j
bG9ja19yZWNvdmVyeSgpDQoJCWludGVsX2RwLT5wcmVwYXJlX2xpbmtfcmV0cmFpbihpbnRlbF9k
cCkvaW50ZWxfZGRpX3ByZXBhcmVfbGlua19yZXRyYWluKCk7LyogUG9ydCBpcyBlbmFibGVkIGhl
cmUgaW4gdHJhaW5pbmcgbW9kZSAqLw0KDQoJCS4uLi4NCg0KCQlpbnRlbF9kcF9yZXNldF9saW5r
X3RyYWluKCkNCgkJCWludGVsX2RwX3NldF9zaWduYWxfbGV2ZWxzKCkgLyogVnN3aW5nIHRhYmxl
IGlzIHNldCBoZXJlICovDQpHdWVzcyBpcyBzYWZlciBrZWVwIHByb2dyYW1taW5nIGl0IHR3aWNl
IHRoZW4/DQoNCg0KPiANCj4gPiAgDQo+ID4gIAkvKg0KPiA+ICAJICogNy5mIENvbWJvIFBIWTog
Q29uZmlndXJlIFBPUlRfQ0xfRFcxMCBTdGF0aWMgUG93ZXIgRG93biB0byBwb3dlciB1cA0KPiA+
IEBAIC0zMjU3LDcgKzMyNTcsNiBAQCBzdGF0aWMgdm9pZCBoc3dfZGRpX3ByZV9lbmFibGVfZHAo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gIAllbnVtIHBoeSBwaHkgPSBp
bnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgcG9ydCk7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsNCj4gPiAgCWJv
b2wgaXNfbXN0ID0gaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRf
RFBfTVNUKTsNCj4gPiAtCWludCBsZXZlbCA9IGludGVsX2RkaV9kcF9sZXZlbChpbnRlbF9kcCk7
DQo+ID4gIA0KPiA+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMSkNCj4gPiAgCQlkcm1f
V0FSTl9PTigmZGV2X3ByaXYtPmRybSwNCj4gPiBAQCAtMzI3OSwxNiArMzI3OCw2IEBAIHN0YXRp
YyB2b2lkIGhzd19kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gPiAgDQo+ID4gIAlpY2xfcHJvZ3JhbV9tZ19kcF9tb2RlKGRpZ19wb3J0LCBjcnRj
X3N0YXRlKTsNCj4gPiAgDQo+ID4gLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkNCj4g
PiAtCQlpY2xfZGRpX3Zzd2luZ19zZXF1ZW5jZShlbmNvZGVyLCBjcnRjX3N0YXRlLT5wb3J0X2Ns
b2NrLA0KPiA+IC0JCQkJCWxldmVsLCBlbmNvZGVyLT50eXBlKTsNCj4gPiAtCWVsc2UgaWYgKElT
X0NBTk5PTkxBS0UoZGV2X3ByaXYpKQ0KPiA+IC0JCWNubF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVu
Y29kZXIsIGxldmVsLCBlbmNvZGVyLT50eXBlKTsNCj4gPiAtCWVsc2UgaWYgKElTX0dFTjlfTFAo
ZGV2X3ByaXYpKQ0KPiA+IC0JCWJ4dF9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29kZXIsIGxldmVs
LCBlbmNvZGVyLT50eXBlKTsNCj4gPiAtCWVsc2UNCj4gPiAtCQlpbnRlbF9wcmVwYXJlX2RwX2Rk
aV9idWZmZXJzKGVuY29kZXIsIGNydGNfc3RhdGUpOw0KPiANCj4gVGhpcyBsYXN0IG9uZSBkZWZp
bml0ZWx5IGhhcyB0byBzdGF5IElJUkMuIEhTVy9CRFcvU0tMIGJ1ZiB0cmFucw0KPiBzdHVmZiB3
b3JrcyBxdWl0ZSBiaXQgZGlmZmVyZW50bHkgdGhhbiB0aGUgQlhUKyBzdHlsZSBtb3JlIG1hbnVh
bA0KPiBwcm9ncmFtbWluZy4NCj4gDQo+ID4gLQ0KPiA+ICAJaWYgKGludGVsX3BoeV9pc19jb21i
byhkZXZfcHJpdiwgcGh5KSkgew0KPiA+ICAJCWJvb2wgbGFuZV9yZXZlcnNhbCA9DQo+ID4gIAkJ
CWRpZ19wb3J0LT5zYXZlZF9wb3J0X2JpdHMgJiBERElfQlVGX1BPUlRfUkVWRVJTQUw7DQo+ID4g
LS0gDQo+ID4gMi4yNi4yDQo+ID4gDQo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
