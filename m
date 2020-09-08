Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AEB26160D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 19:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74DF6E17A;
	Tue,  8 Sep 2020 17:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F796E17A
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 17:01:59 +0000 (UTC)
IronPort-SDR: G0Oe9bRGZM9QYBGenfNzy74KV9UijeBTj1MIEmSBUyofdlCx36iKsILKETTwhUFmsgbLs5tl41
 qLLm7j+axJ7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="155664877"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="155664877"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 10:01:58 -0700
IronPort-SDR: 03KBzjD303dKGtWLriQKCno49xhulz/0izzVvs+c+XjDozA7FHi8K5Flel1jRRd4ULFAvvtQcL
 nDEKbFdqC+jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="299858362"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 08 Sep 2020 10:01:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 10:00:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 10:00:57 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 10:00:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [12/12] drm/i915: Nuke pointless variable
Thread-Index: AQHWhfmerWW1zEkFlE+DaVmnNsKn9alfbXMA
Date: Tue, 8 Sep 2020 17:00:57 +0000
Message-ID: <04ce6077cd9f7128b597defb3820b7e390c4c12b.camel@intel.com>
References: <20200630215601.28557-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20200630215601.28557-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <919970018187D047A4E912A27F553568@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [12/12] drm/i915: Nuke pointless variable
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

T24gV2VkLCAyMDIwLTA3LTAxIGF0IDAwOjU2ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBObyBwb2ludCBpbiBhc3NpZ25pbmcgdGhlIGZ1bmN0aW9uIHJldHVybiB2
YWx1ZSB0byBhIGxvY2FsDQo+IHZhcmlhYmxlIGlmIHdlJ3JlIGp1c3QgZ29pbmcgdG8gdXNlIGl0
IHRoZSBvbmUgdGltZS4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KPiA+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgfCAzICstLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMNCj4gaW5kZXggOGE4ZTc3
MzE0YTRlLi45Mzg0NjZiMmM5ZDEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaG90cGx1Zy5jDQo+IEBAIC00ODAsNyArNDgwLDYgQEAgdm9pZCBpbnRlbF9o
cGRfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCSAq
IG9ubHkgdGhlIG9uZSBvZiB0aGVtIChEUCkgd2lsbCBoYXZlIC0+aHBkX3B1bHNlKCkuDQo+ICAJ
ICovDQo+ICAJZm9yX2VhY2hfaW50ZWxfZW5jb2RlcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikg
ew0KPiAtCQlib29sIGhhc19ocGRfcHVsc2UgPSBpbnRlbF9lbmNvZGVyX2hhc19ocGRfcHVsc2Uo
ZW5jb2Rlcik7DQo+ICAJCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsNCj4gIAkJYm9v
bCBsb25nX2hwZDsNCj4gIA0KPiBAQCAtNDg4LDcgKzQ4Nyw3IEBAIHZvaWQgaW50ZWxfaHBkX2ly
cV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAkJaWYgKCEo
QklUKHBpbikgJiBwaW5fbWFzaykpDQo+ICAJCQljb250aW51ZTsNCj4gIA0KPiAtCQlpZiAoIWhh
c19ocGRfcHVsc2UpDQo+ICsJCWlmICghaW50ZWxfZW5jb2Rlcl9oYXNfaHBkX3B1bHNlKGVuY29k
ZXIpKQ0KPiAgCQkJY29udGludWU7DQo+ICANCj4gIAkJbG9uZ19ocGQgPSBsb25nX21hc2sgJiBC
SVQocGluKTsNCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
