Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0CD121C44
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 23:01:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854856E8B4;
	Mon, 16 Dec 2019 22:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFA316E8B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 22:01:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 14:01:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="205257742"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga007.jf.intel.com with ESMTP; 16 Dec 2019 14:01:14 -0800
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Dec 2019 14:01:14 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.123]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.237]) with mapi id 14.03.0439.000;
 Mon, 16 Dec 2019 14:01:14 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 4/5] drm/i915: Pass old crtc state to
 intel_crtc_vblank_off()
Thread-Index: AQHVse7bhRHd0/SZ6ki4k6gVtVcs46e92uQA
Date: Mon, 16 Dec 2019 22:01:11 +0000
Message-ID: <83290909040b58197c43b134feab46f411a0af85.camel@intel.com>
References: <20191213195217.15168-1-ville.syrjala@linux.intel.com>
 <20191213195217.15168-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213195217.15168-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.15.215]
Content-ID: <720AA46E1FE1F44A8435C7B75B044428@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Pass old crtc state to
 intel_crtc_vblank_off()
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
ZCBjcnRjIHN0YXRlDQo+IHRvIGludGVsX2NydGNfdmJsYW5rX29mZigpIGp1c3QgbGlrZSB3ZSBh
bHJlYWR5IGRvIGZvciBpdHMNCj4gY291bnRlcnBhcnQgaW50ZWxfY3J0Y192Ymxhbmtfb24oKS4N
Cg0KT2theSB0aGlzIGhlbHBzIHRoZSBsYXN0IHBhdGNoDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENjOiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IE1hbmFzaSBOYXZh
cmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMCArKysrKystLS0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5k
ZXggMzBmMjc3YWEyMjhmLi5kZjY5ZTRjZDQ3MDcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xODI1LDggKzE4MjUsMTAgQEAg
c3RhdGljIHZvaWQgaW50ZWxfY3J0Y192Ymxhbmtfb24oY29uc3Qgc3RydWN0DQo+IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJZHJtX2NydGNfdmJsYW5rX29uKCZjcnRjLT5iYXNl
KTsNCj4gIH0NCj4gIA0KPiAtc3RhdGljIHZvaWQgaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjKQ0KPiArc3RhdGljIHZvaWQgaW50ZWxfY3J0Y192Ymxhbmtfb2Zm
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgew0KPiAr
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBp
LmNydGMpOw0KPiArDQo+ICAJZHJtX2NydGNfdmJsYW5rX29mZigmY3J0Yy0+YmFzZSk7DQo+ICAJ
YXNzZXJ0X3ZibGFua19kaXNhYmxlZCgmY3J0Yy0+YmFzZSk7DQo+ICB9DQo+IEBAIC02Njk5LDcg
KzY3MDEsNyBAQCBzdGF0aWMgdm9pZCBpcm9ubGFrZV9jcnRjX2Rpc2FibGUoc3RydWN0DQo+IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICANCj4gIAlpbnRlbF9lbmNvZGVyc19kaXNhYmxl
KHN0YXRlLCBjcnRjKTsNCj4gIA0KPiAtCWludGVsX2NydGNfdmJsYW5rX29mZihjcnRjKTsNCj4g
KwlpbnRlbF9jcnRjX3ZibGFua19vZmYob2xkX2NydGNfc3RhdGUpOw0KPiAgDQo+ICAJaW50ZWxf
ZGlzYWJsZV9waXBlKG9sZF9jcnRjX3N0YXRlKTsNCj4gIA0KPiBAQCAtNjc0OCw3ICs2NzUwLDcg
QEAgc3RhdGljIHZvaWQgaGFzd2VsbF9jcnRjX2Rpc2FibGUoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ICANCj4gIAlpbnRlbF9lbmNvZGVyc19kaXNhYmxlKHN0YXRlLCBj
cnRjKTsNCj4gIA0KPiAtCWludGVsX2NydGNfdmJsYW5rX29mZihjcnRjKTsNCj4gKwlpbnRlbF9j
cnRjX3ZibGFua19vZmYob2xkX2NydGNfc3RhdGUpOw0KPiAgDQo+ICAJLyogWFhYOiBEbyB0aGUg
cGlwZSBhc3NlcnRpb25zIGF0IHRoZSByaWdodCBwbGFjZSBmb3IgQlhUIERTSS4NCj4gKi8NCj4g
IAlpZiAoIXRyYW5zY29kZXJfaXNfZHNpKGNwdV90cmFuc2NvZGVyKSkNCj4gQEAgLTcxMTMsNyAr
NzExNSw3IEBAIHN0YXRpYyB2b2lkIGk5eHhfY3J0Y19kaXNhYmxlKHN0cnVjdA0KPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgDQo+ICAJaW50ZWxfZW5jb2RlcnNfZGlzYWJsZShzdGF0
ZSwgY3J0Yyk7DQo+ICANCj4gLQlpbnRlbF9jcnRjX3ZibGFua19vZmYoY3J0Yyk7DQo+ICsJaW50
ZWxfY3J0Y192Ymxhbmtfb2ZmKG9sZF9jcnRjX3N0YXRlKTsNCj4gIA0KPiAgCWludGVsX2Rpc2Fi
bGVfcGlwZShvbGRfY3J0Y19zdGF0ZSk7DQo+ICANCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
