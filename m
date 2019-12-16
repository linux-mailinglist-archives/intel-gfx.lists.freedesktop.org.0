Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 363B3121C43
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 23:01:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56BFA6E8B2;
	Mon, 16 Dec 2019 22:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2492C6E8B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 22:01:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 14:01:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="205257690"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga007.jf.intel.com with ESMTP; 16 Dec 2019 14:01:05 -0800
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Dec 2019 14:01:05 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.123]) by
 fmsmsx122.amr.corp.intel.com ([169.254.5.113]) with mapi id 14.03.0439.000;
 Mon, 16 Dec 2019 14:01:05 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/5] drm/i915: Pass old crtc state to
 skylake_scaler_disable()
Thread-Index: AQHVse7av+mbZGMu50G9GmTfi3rc+ae92tgA
Date: Mon, 16 Dec 2019 22:01:03 +0000
Message-ID: <223ebe29ce74f7fa5b6d2234d88fece382e26821.camel@intel.com>
References: <20191213195217.15168-1-ville.syrjala@linux.intel.com>
 <20191213195217.15168-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213195217.15168-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.15.215]
Content-ID: <AD41F3CBC2EF8440868719E32BD47480@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Pass old crtc state to
 skylake_scaler_disable()
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

T24gRnJpLCAyMDE5LTEyLTEzIGF0IDIxOjUyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVG8gbWFrZSBsaWZlIGVhc2llciBpbiB0aGUgZnV0dXJlIGxldCdzIHBhc3MgdGhlIG9s
ZCBjcnRjIHN0YXRlDQo+IHRvIHNreWxha2Vfc2NhbGVyX2Rpc2FibGUoKSBqdXN0IGxpa2Ugd2Ug
YWxyZWFkeSBkbyBmb3INCj4gZm9yIGl0cyBhbmNlc3RvciBpcm9ubGFrZV9wZml0X2Rpc2FibGUo
KS4NCj4gDQoNCk9rYXkgdGhpcyBoZWxwcyB0aGUgbGFzdCBwYXRjaA0KUmV2aWV3ZWQtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IENjOiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IE1hbmFzaSBO
YXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1ICsrKy0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXgg
NGFkY2Q3NTEzODRlLi4zMGYyNzdhYTIyOGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC01NzY5LDggKzU3NjksOSBAQCBzdGF0
aWMgaW50IHNrbF91cGRhdGVfc2NhbGVyX3BsYW5lKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgdm9pZCBz
a3lsYWtlX3NjYWxlcl9kaXNhYmxlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiArc3RhdGlj
IHZvaWQgc2t5bGFrZV9zY2FsZXJfZGlzYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZQ0KPiAqb2xkX2NydGNfc3RhdGUpDQo+ICB7DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMg
PSB0b19pbnRlbF9jcnRjKG9sZF9jcnRjX3N0YXRlLQ0KPiA+dWFwaS5jcnRjKTsNCj4gIAlpbnQg
aTsNCj4gIA0KPiAgCWZvciAoaSA9IDA7IGkgPCBjcnRjLT5udW1fc2NhbGVyczsgaSsrKQ0KPiBA
QCAtNjc2Miw3ICs2NzYzLDcgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9jcnRjX2Rpc2FibGUoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJaW50ZWxfZHNjX2Rpc2FibGUo
b2xkX2NydGNfc3RhdGUpOw0KPiAgDQo+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkN
Cj4gLQkJc2t5bGFrZV9zY2FsZXJfZGlzYWJsZShjcnRjKTsNCj4gKwkJc2t5bGFrZV9zY2FsZXJf
ZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSk7DQo+ICAJZWxzZQ0KPiAgCQlpcm9ubGFrZV9wZml0X2Rp
c2FibGUob2xkX2NydGNfc3RhdGUpOw0KPiAgDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
