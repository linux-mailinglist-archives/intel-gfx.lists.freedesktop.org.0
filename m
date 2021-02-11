Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B28F5318987
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 12:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EB86EE06;
	Thu, 11 Feb 2021 11:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E0FC6EE06
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 11:37:38 +0000 (UTC)
IronPort-SDR: YQ37tgcJ14g8geFg5vQWGYzDTxI05n+UUzOrlK8D/2Z6bTj9haYncsPVfxCqBqyC35wE2Q2vE3
 40iDhE8w15Zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="267067871"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="267067871"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 03:37:37 -0800
IronPort-SDR: KQae4c/8Oq2Aa3eqivllE9yYRGsCdfzmGpG3TfhsQ2OaQTk+LHcbgF8n6Ze4AvmskasT6q0TS1
 Jy1Z7nN8ZhQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="414779737"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 11 Feb 2021 03:37:37 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Feb 2021 03:37:37 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 11 Feb 2021 03:37:34 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.002;
 Thu, 11 Feb 2021 11:37:33 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/4] drm/i915/display: Only write to register in
 intel_psr2_program_trans_man_trk_ctl()
Thread-Index: AQHW/w9ChXU4YYdOF0aXHPyPO3fG06pS1q2A
Date: Thu, 11 Feb 2021 11:37:33 +0000
Message-ID: <28ddfe06675d1add32cbc810ac01e5828834c5f3.camel@intel.com>
References: <20210209181439.215104-1-jose.souza@intel.com>
 <20210209181439.215104-2-jose.souza@intel.com>
In-Reply-To: <20210209181439.215104-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <14EDB29D2323814DAC1CD32879A9B1E3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Only write to
 register in intel_psr2_program_trans_man_trk_ctl()
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

T24gVHVlLCAyMDIxLTAyLTA5IGF0IDEwOjE0IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBUaGVyZSBpcyBubyBzdXBwb3J0IGZvciB0d28gcGlwZXMgb25lIHRyYW5zY29k
ZXIgZm9yIFBTUiBhbmQgaWYgd2UNCj4gaGFkDQo+IHRoYXQgdGhlIGN1cnJlbnQgY29kZSBzaG91
bGQgbm90IHVzZSBjcHVfdHJhbnNjb2Rlci4NCj4gQWxzbyBJIGNhbid0IHNlZSBhIHNjZW5hcmlv
IHdoZXJlIGNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaA0KPiBpcw0KPiBzZXQgYW5k
IFBTUiBpcyBub3QgZW5hYmxlZCBhbmQgaWYgYnkgYSBidWcgaXQgaGFwcGVucyBQU1IgSFcgd2ls
bA0KPiBqdXN0DQo+IGlnbm9yZSBhbnkgdmFsdWUgaW4gc2V0IGluIFBTUjJfTUFOX1RSS19DVEwu
DQo+IA0KPiBTbyBkcm9wcGluZyBhbGwgdGhlIHJlc3QgYW5kIGtlZXBpbmcgdGhlIHNhbWUgYmVo
YXZpb3IgdGhhdCB3ZSBoYXZlDQo+IHdpdGggaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9m
ZXRjaCgpLg0KPiANCj4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgfCAxNCArKy0tLS0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDFkMzkwMzYxMmZjYi4uOGFkOWZjZmYzYTEyIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTEy
MjYsMjMgKzEyMjYsMTMgQEAgdm9pZA0KPiBpbnRlbF9wc3IyX3Byb2dyYW1fcGxhbmVfc2VsX2Zl
dGNoKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+IMKgdm9pZCBpbnRlbF9wc3IyX3Byb2dy
YW1fdHJhbnNfbWFuX3Rya19jdGwoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpDQo+IMKgew0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLQ0KPiA+dWFwaS5jcnRjLT5kZXYpOw0K
PiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gwqANCj4g
wqDCoMKgwqDCoMKgwqDCoGlmICghSEFTX1BTUjJfU0VMX0ZFVENIKGRldl9wcml2KSB8fA0KPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2gp
DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiDCoA0KPiAtwqDC
oMKgwqDCoMKgwqBmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2tfd2l0aF9wc3IoJmRldl9wcml2
LT5kcm0sIGVuY29kZXIsDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0
YXRlLQ0KPiA+dWFwaS5lbmNvZGVyX21hc2spIHsNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rl
cik7DQo+IC0NCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghaW50ZWxfZHAt
PnBzci5lbmFibGVkKQ0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGNvbnRpbnVlOw0KPiAtDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF9kZV93cml0ZShkZXZfcHJpdiwNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUFNSMl9NQU5fVFJLX0NUTChjcnRjX3N0YXRl
LQ0KPiA+Y3B1X3RyYW5zY29kZXIpLA0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT5wc3IyX21hbl90cmFja19j
dGwpOw0KPiAtwqDCoMKgwqDCoMKgwqB9DQo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBQU1IyX01BTl9UUktfQ1RMKGNydGNfc3RhdGUtDQo+ID5jcHVfdHJhbnNjb2Rl
ciksDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19z
dGF0ZS0+cHNyMl9tYW5fdHJhY2tfY3RsKTsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIHZvaWQg
cHNyMl9tYW5fdHJrX2N0bF9jYWxjKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0
YXRlLA0KDQpSZXZpZXdlZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50
ZWwuY29tPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
