Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AEF11BABA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 18:55:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E8D56EBA3;
	Wed, 11 Dec 2019 17:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8624E6EBA3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 17:55:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 09:55:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,302,1571727600"; d="scan'208";a="210807019"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 11 Dec 2019 09:55:25 -0800
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 11 Dec 2019 09:55:25 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.123]) by
 FMSMSX152.amr.corp.intel.com ([169.254.6.84]) with mapi id 14.03.0439.000;
 Wed, 11 Dec 2019 09:55:24 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsi: fix pipe D readout for DSI transcoders
Thread-Index: AQHVsBNe6FEX+fLQPE+OIDXtRFvTgae1vYiA
Date: Wed, 11 Dec 2019 17:55:23 +0000
Message-ID: <8d87dfbc5cfb8290a8a66e448abb1a9942237c58.camel@intel.com>
References: <20191211110844.2996-1-jani.nikula@intel.com>
In-Reply-To: <20191211110844.2996-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.163]
Content-ID: <2382502780637547A6AD5FB5D1D2A6BB@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix pipe D readout for DSI
 transcoders
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

T24gV2VkLCAyMDE5LTEyLTExIGF0IDEzOjA4ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
Q29tbWl0IDRkODlhZGM3YjU2ZiAoImRybS9pOTE1L2Rpc3BsYXkvZHNpOiBBZGQgc3VwcG9ydCB0
byBwaXBlIEQiKQ0KPiBhZGRlZCBwaXBlIEQgc3VwcG9ydCBmb3IgRFNJLCBidXQgZmFpbGVkIHRv
IHVwZGF0ZSB0aGUgc3RhdGUgcmVhZG91dC4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBGaXhlczogNGQ4OWFkYzdi
NTZmICgiZHJtL2k5MTUvZGlzcGxheS9kc2k6IEFkZCBzdXBwb3J0IHRvIHBpcGUgRCIpDQo+IENj
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogVmFuZGl0YSBL
dWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzICsrKw0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggNWE0YmQzNzg2M2UzLi4zZTA4NzRlMWIwZjIg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IEBAIC0xMDQzMSw2ICsxMDQzMSw5IEBAIHN0YXRpYyBib29sIGhzd19nZXRfdHJhbnNjb2Rl
cl9zdGF0ZShzdHJ1Y3QNCj4gaW50ZWxfY3J0YyAqY3J0YywNCj4gIAkJY2FzZSBUUkFOU19ERElf
RURQX0lOUFVUX0NfT05PRkY6DQo+ICAJCQl0cmFuc19waXBlID0gUElQRV9DOw0KPiAgCQkJYnJl
YWs7DQo+ICsJCWNhc2UgVFJBTlNfRERJX0VEUF9JTlBVVF9EX09OT0ZGOg0KPiArCQkJdHJhbnNf
cGlwZSA9IFBJUEVfRDsNCj4gKwkJCWJyZWFrOw0KPiAgCQl9DQo+ICANCj4gIAkJaWYgKHRyYW5z
X3BpcGUgPT0gY3J0Yy0+cGlwZSkgew0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
