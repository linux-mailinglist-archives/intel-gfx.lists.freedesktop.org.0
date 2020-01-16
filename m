Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A7513D0ED
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 01:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24A86E188;
	Thu, 16 Jan 2020 00:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD3B6E188
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 00:14:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 16:14:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="257086907"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 15 Jan 2020 16:14:04 -0800
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Jan 2020 16:14:03 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.125]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.83]) with mapi id 14.03.0439.000;
 Wed, 15 Jan 2020 16:14:03 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/5] drm/i915: Clear most of crtc state
 when disabling the crtc
Thread-Index: AQHVy9cxAiTEgsrRk0W4gfL/moY6S6fs8iQA
Date: Thu, 16 Jan 2020 00:14:02 +0000
Message-ID: <f09a5af81d0d2a4f39e4bb31fa92a2aed72a5b90.camel@intel.com>
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
 <20200115190813.17971-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20200115190813.17971-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.13.13]
Content-ID: <584C1CA10F1B6444A0C47085D87124F5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Clear most of crtc state when
 disabling the crtc
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
PiANCj4gQ3VycmVudGx5IHdlIGRvbid0IGNhbGwgaW50ZWxfY3J0Y19wcmVwYXJlX2NsZWFyZWRf
c3RhdGUoKSBmb3IgY3J0Y3MNCj4gdGhhdCBhcmUgZ29pbmcgdG8gYmUgZW50aXJlbHkgZGlzYWJs
ZWQgKHVhcGkuZW5hYmxlPT1mYWxzZSkuIFRoYXQNCj4gbWVhbnMgc3VjaCBjcnRjcyB3aWxsIGxl
YXZlIHN0YXRlIGp1bmsgbHlpbmcgYXJvdW5kIGluIHRoZWlyIHN0YXRlcw0KPiBhbmQgd2UgaGF2
ZSB0byBzcHJpbmtsZSBody5lbmFibGUgY2hlY2tzIGFsbCBvdmVyIGJlZm9yZSB3ZSBjYW4NCj4g
bG9vayBhdCB0aGUgc3RhdGVzLiBMZXQncyBjaGFuZ2UgdGhhdCBhIGJpdCBzbyB0aGF0IHdlIGF3
YXlzIGRvDQo+IHRoZSBzdGF0ZSBjbGVhcmluZywgZXZlbiBmb3IgZnVsbHkgZGlzYWJsZWQgY3J0
Y3MuDQo+IA0KPiBOb3RlIHRoYXQgd2Ugc3RpbGwga2VlcCBzb21lIHBhcnRzIG9mIHRoZSBvbGQg
c3RhdGUgKHNlZQ0KPiBpbnRlbF9jcnRjX3ByZXBhcmVfY2xlYXJlZF9zdGF0ZSgpIGZvciB0aGUg
ZGV0YWlscykgc28gcHJvYmFibHkNCj4gY2FuJ3QgdHJ1c3QgdGhpbmdzIDEwMCUgd2hlbiBody5l
bmFibGU9PWZhbHNlLiBCdXQgYXQgbGVhc3QgdGhlcmUncw0KPiBsZXNzIGNoYW5jZSBub3cgdGhh
dCB3ZSBlbmQgdXAgbG9va2luZyBhdCBzdGFsZSBqdW5rLg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA4
ICsrKy0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gaW5kZXggYjM5NzgxNmNlMjUzLi5lNjhhZjAyNGUxM2MgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xNDYwNywx
NSArMTQ2MDcsMTMgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0DQo+IGRy
bV9kZXZpY2UgKmRldiwNCj4gIAkJCWNvbnRpbnVlOw0KPiAgCQl9DQo+ICANCj4gLQkJaWYgKCFu
ZXdfY3J0Y19zdGF0ZS0+dWFwaS5lbmFibGUpIHsNCj4gLQkJCWludGVsX2NydGNfY29weV91YXBp
X3RvX2h3X3N0YXRlKG5ld19jcnRjX3N0YXRlDQo+ICk7DQo+IC0JCQljb250aW51ZTsNCj4gLQkJ
fQ0KPiAtDQo+ICAJCXJldCA9IGludGVsX2NydGNfcHJlcGFyZV9jbGVhcmVkX3N0YXRlKG5ld19j
cnRjX3N0YXRlKTsNCj4gIAkJaWYgKHJldCkNCj4gIAkJCWdvdG8gZmFpbDsNCj4gIA0KPiArCQlp
ZiAoIW5ld19jcnRjX3N0YXRlLT5ody5lbmFibGUpDQo+ICsJCQljb250aW51ZTsNCj4gKw0KPiAg
CQlyZXQgPSBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKG5ld19jcnRjX3N0YXRlKTsNCj4gIAkJ
aWYgKHJldCkNCj4gIAkJCWdvdG8gZmFpbDsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
