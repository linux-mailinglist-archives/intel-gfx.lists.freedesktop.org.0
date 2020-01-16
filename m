Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A58B013D0FD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 01:19:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7296EB95;
	Thu, 16 Jan 2020 00:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379CB6EB95
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 00:19:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 16:19:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="243087794"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 15 Jan 2020 16:19:28 -0800
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Jan 2020 16:19:28 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.125]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.235]) with mapi id 14.03.0439.000;
 Wed, 15 Jan 2020 16:19:28 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/5] drm/i915: Prefer to use the pipe to
 index the ddb entries
Thread-Index: AQHVy9c0BNWYSXDJA0KKR/hvlhPOJqfs86eA
Date: Thu, 16 Jan 2020 00:19:27 +0000
Message-ID: <380825853a51389bc09b405c0980ee47b3533006.camel@intel.com>
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
 <20200115190813.17971-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20200115190813.17971-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.13]
Content-ID: <A2863E27A708B74085BAFAAC9DDF0910@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Prefer to use the pipe to
 index the ddb entries
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

T24gV2VkLCAyMDIwLTAxLTE1IGF0IDIxOjA4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTGV0J3MgdXNlIHRoZSBwaXBlIHJhdGhlciB0aGFuIHRoZSBzaWxseSAnaScgaXRlcmF0
b3IgZnJvbQ0KPiBmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZSgpIGZvciBpbmRl
eGluZyB0aGUgZGRiDQo+IGVudHJpZXMgYXJyYXkuIE1heWJlIG9uZSBkYXkgd2UgY2FuIGFzc3Vt
ZSBjOTkgYW5kIGhpZGUgdGhlDQo+ICdpJyBlbnRpcmVseSBmcm9tIHNpZ2h0Lg0KPiANCg0KUmV2
aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDIwICsrKysrKysrKysrLS0tLS0tLQ0KPiAtLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDExIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBlNjhhZjAyNGUx
M2MuLjY0YTM3N2Q2MWNlMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTE1MTA2LDE1ICsxNTEwNiwxNyBAQCBzdGF0aWMgdm9p
ZA0KPiBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkNCj4gIAlpbnQgaTsNCj4gIA0KPiAgCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRj
X2luX3N0YXRlKHN0YXRlLCBjcnRjLA0KPiBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUs
IGkpIHsNCj4gKwkJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiArDQo+ICAJCWlmICgh
bmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gIAkJCWNvbnRpbnVlOw0KPiAgDQo+ICAJCS8q
IGlnbm9yZSBhbGxvY2F0aW9ucyBmb3IgY3J0YydzIHRoYXQgaGF2ZSBiZWVuIHR1cm5lZA0KPiBv
ZmYuICovDQo+ICAJCWlmICghbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpIHsNCj4gLQkJ
CWVudHJpZXNbaV0gPSBvbGRfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsNCj4gLQkJCXVwZGF0ZV9w
aXBlcyB8PSBCSVQoY3J0Yy0+cGlwZSk7DQo+ICsJCQllbnRyaWVzW3BpcGVdID0gb2xkX2NydGNf
c3RhdGUtPndtLnNrbC5kZGI7DQo+ICsJCQl1cGRhdGVfcGlwZXMgfD0gQklUKHBpcGUpOw0KPiAg
CQl9IGVsc2Ugew0KPiAtCQkJbW9kZXNldF9waXBlcyB8PSBCSVQoY3J0Yy0+cGlwZSk7DQo+ICsJ
CQltb2Rlc2V0X3BpcGVzIHw9IEJJVChwaXBlKTsNCj4gIAkJfQ0KPiAgCX0NCj4gIA0KPiBAQCAt
MTUxNDAsMTAgKzE1MTQyLDEwIEBAIHN0YXRpYyB2b2lkDQo+IHNrbF9jb21taXRfbW9kZXNldF9l
bmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQkJCWNvbnRpbnVl
Ow0KPiAgDQo+ICAJCQlpZg0KPiAoc2tsX2RkYl9hbGxvY2F0aW9uX292ZXJsYXBzKCZuZXdfY3J0
Y19zdGF0ZS0+d20uc2tsLmRkYiwNCj4gLQkJCQkJCQllbnRyaWVzLA0KPiBudW1fcGlwZXMsIGkp
KQ0KPiArCQkJCQkJCWVudHJpZXMsDQo+IG51bV9waXBlcywgcGlwZSkpDQo+ICAJCQkJY29udGlu
dWU7DQo+ICANCj4gLQkJCWVudHJpZXNbaV0gPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsN
Cj4gKwkJCWVudHJpZXNbcGlwZV0gPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsNCj4gIAkJ
CXVwZGF0ZV9waXBlcyAmPSB+QklUKHBpcGUpOw0KPiAgDQo+ICAJCQlpbnRlbF91cGRhdGVfY3J0
YyhjcnRjLCBzdGF0ZSwgb2xkX2NydGNfc3RhdGUsDQo+IEBAIC0xNTE3OCw5ICsxNTE4MCw5IEBA
IHN0YXRpYyB2b2lkIHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdA0KPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQkJY29udGludWU7DQo+ICANCj4gIAkJV0FSTl9PTihz
a2xfZGRiX2FsbG9jYXRpb25fb3ZlcmxhcHMoJm5ld19jcnRjX3N0YXRlLQ0KPiA+d20uc2tsLmRk
YiwNCj4gLQkJCQkJCSAgICBlbnRyaWVzLCBudW1fcGlwZXMsDQo+IGkpKTsNCj4gKwkJCQkJCSAg
ICBlbnRyaWVzLCBudW1fcGlwZXMsDQo+IHBpcGUpKTsNCj4gIA0KPiAtCQllbnRyaWVzW2ldID0g
bmV3X2NydGNfc3RhdGUtPndtLnNrbC5kZGI7DQo+ICsJCWVudHJpZXNbcGlwZV0gPSBuZXdfY3J0
Y19zdGF0ZS0+d20uc2tsLmRkYjsNCj4gIAkJbW9kZXNldF9waXBlcyAmPSB+QklUKHBpcGUpOw0K
PiAgDQo+ICAJCWlmIChpc190cmFuc19wb3J0X3N5bmNfbW9kZShuZXdfY3J0Y19zdGF0ZSkpIHsN
Cj4gQEAgLTE1MjEzLDkgKzE1MjE1LDkgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0
X2VuYWJsZXMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICAJCQljb250
aW51ZTsNCj4gIA0KPiAgCQlXQVJOX09OKHNrbF9kZGJfYWxsb2NhdGlvbl9vdmVybGFwcygmbmV3
X2NydGNfc3RhdGUtDQo+ID53bS5za2wuZGRiLA0KPiAtCQkJCQkJICAgIGVudHJpZXMsIG51bV9w
aXBlcywNCj4gaSkpOw0KPiArCQkJCQkJICAgIGVudHJpZXMsIG51bV9waXBlcywNCj4gcGlwZSkp
Ow0KPiAgDQo+IC0JCWVudHJpZXNbaV0gPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsNCj4g
KwkJZW50cmllc1twaXBlXSA9IG5ld19jcnRjX3N0YXRlLT53bS5za2wuZGRiOw0KPiAgCQltb2Rl
c2V0X3BpcGVzICY9IH5CSVQocGlwZSk7DQo+ICANCj4gIAkJaW50ZWxfdXBkYXRlX2NydGMoY3J0
Yywgc3RhdGUsIG9sZF9jcnRjX3N0YXRlLA0KPiBuZXdfY3J0Y19zdGF0ZSk7DQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
