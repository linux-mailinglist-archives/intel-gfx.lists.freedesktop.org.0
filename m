Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F53A10C164
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:30:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EFAC89C0A;
	Thu, 28 Nov 2019 01:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DE589C0A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:30:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 17:30:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="206937109"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga008.fm.intel.com with ESMTP; 27 Nov 2019 17:30:34 -0800
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 17:30:34 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.163]) with mapi id 14.03.0439.000;
 Wed, 27 Nov 2019 17:30:34 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 4/5] drm/i915/psr: Check if sink PSR
 capability changed
Thread-Index: AQHVo/QDvKMz0QRA3UWepcjPxP7VvqegUqgAgAACZQA=
Date: Thu, 28 Nov 2019 01:30:33 +0000
Message-ID: <f5b25022ecedd030b3fe37d78789e7ba06754624.camel@intel.com>
References: <20191126005400.264480-1-jose.souza@intel.com>
 <20191126005400.264480-4-jose.souza@intel.com>
 <20191128012158.GS6337@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191128012158.GS6337@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <BA2E0331787C1E4BBF56B927E816181D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915/psr: Check if sink PSR
 capability changed
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

T24gV2VkLCAyMDE5LTExLTI3IGF0IDE3OjIxIC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBNb24sIE5vdiAyNSwgMjAxOSBhdCAwNDo1Mzo1OVBNIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphDQo+IHdyb3RlOg0KPiA+IGVEUCBzcGVjaWZpY2F0aW9uIHN0YXRlcyB0aGF0IHNpbmsg
Y2FuIGhhdmUgaXRzIFBTUiBjYXBhYmlsaXR5DQo+ID4gY2hhbmdlZCwgSSBoYXZlIG5ldmVyIGZv
dW5kIGFueSBwYW5lbCBkb2luZyB0aGF0IGJ1dCBsZXRzIGFkZCB0aGF0DQo+ID4gZm9yIGNvbXBs
ZXRlbmVzcy4NCj4gPiBGb3Igbm93IGl0IGlzIG5vdCByZWFkaW5nIGJhY2sgdGhlIFBTUiBjYXBh
YmlsaXRpZXMgYW5kIGlmIHBvc3NpYmxlDQo+ID4gcmUtZW5hYmxpbmcgUFNSLCB0aGlzIHdpbGwg
YmUgYWRkZWQgaWYgYSBwYW5lbCBpcyBmb3VuZCB1c2luZyB0aGlzDQo+ID4gZmVhdHVyZS4NCj4g
DQo+IEknbSBub3Qgc3VwZXIgZmFtaWxpYXIgd2l0aCBQU1IgZGV0YWlscywgYnV0IGlzIGl0IHJl
cXVpcmVkIGZvciB1cyB0bw0KPiBkaXNhYmxlIFBTUiBpbiB0aGlzIGNhc2U/ICBGcm9tIGEgcXVp
Y2sgc2tpbSBvZiB0aGUgc3BlYyBpdCBzb3VuZHMNCj4gbGlrZQ0KPiB0aGUgc2luayBpcyByZXF1
aXJlZCB0byBrZWVwIG9wZXJhdGluZyB3aXRoIHRoZSBzYW1lIGNhcGFiaWxpdGllcw0KPiB1bnRp
bA0KPiB0aGUgc291cmNlIGNsZWFycyB0aGUgQ0FQU19DSEFOR0UgYml0ICh3aGljaCB3ZSBuZXZl
ciBkbyBpbiB0aGUgcGF0Y2gNCj4gYmVsb3cpLiAgV2hhdCBoYXBwZW5zIGlmIHdlIGp1c3QgaWdu
b3JlIHRoZSBzaW5rJ3Mgbm90aWZpY2F0aW9uIGFuZA0KPiBuZXZlciBhY2sgaXQgYnkgd3JpdGlu
ZyBhIDEgdG8gY2xlYXIgdGhlIGJpdD8NCg0KWWVhaCwgaXQgaXMgbm90IGNsZWFyaW5nIERQX1BT
Ul9DQVBTX0NIQU5HRSB3aWxsIGZpeCB0aGF0LCB0aGFua3MuDQoNCklmIHdlIGp1c3QgaWdub3Jl
LCBzaW5rIGlzIHN1cHBvc2VkIHRvIGtlZXAgdGhlIGN1cnJlbnQgY2FwYWJpbGl0aWVzDQpidXQg
aWYgd2FudHMgdG8gY2hhbmdlIGl0IGlzIGJlY2F1c2UgaXQgaGFzIHNvbWUgaW50ZXJuYWwgcHJv
YmxlbSB0aGF0DQppcyBjYXVzaW5nIG9yIHdpbGwgY2F1c2UgaW1hZ2UgY29ycnVwdGlvbi4NCg0K
DQo+IA0KPiBJIGd1ZXNzIGRpc2FibGluZyBpcyBzdGlsbCBwcm9iYWJseSB0aGUgc2FmZXN0IHRo
aW5nIHRvIGRvIGlmIHdlJ3JlDQo+IG5vdA0KPiBzdXJlIGFuZCBkb24ndCBoYXZlIGFueSByZWFs
IHBhbmVscyB0byB0ZXN0IGl0IG91dCB3aXRoLiAgU2hvdWxkIHdlDQo+IHN0aWxsIGNsZWFuIGJ5
IGNsZWFyaW5nIHRoZSBiaXQgZXZlbiB0aG91Z2ggd2UgZGlzYWJsZWQgUFNSPw0KPiANCj4gT3Ro
ZXJ3aXNlLA0KPiANCj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+DQo+IA0KPiANCj4gPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5t
dW5AaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMjENCj4gPiArKysrKysrKysrKysrKysrKysrKysNCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGE3NTdiNjQ0NWYy
MS4uY2U3NmUxYzZhMGI5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gQEAgLTE0MzcsNiArMTQzNywyNiBAQCBzdGF0aWMgdm9pZCBwc3Jf
YWxwbV9jaGVjayhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gIAl9DQo+ID4g
IH0NCj4gPiAgDQo+ID4gK3N0YXRpYyB2b2lkIHBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2so
c3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiArCXN0
cnVjdCBpOTE1X3BzciAqcHNyID0gJmRldl9wcml2LT5wc3I7DQo+ID4gKwl1OCB2YWw7DQo+ID4g
KwlpbnQgcjsNCj4gPiArDQo+ID4gKwlyID0gZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5h
dXgsIERQX1BTUl9FU0ksICZ2YWwpOw0KPiA+ICsJaWYgKHIgIT0gMSkgew0KPiA+ICsJCURSTV9F
UlJPUigiRXJyb3IgcmVhZGluZyBEUF9QU1JfRVNJXG4iKTsNCj4gPiArCQlyZXR1cm47DQo+ID4g
Kwl9DQo+ID4gKw0KPiA+ICsJaWYgKHZhbCAmIERQX1BTUl9DQVBTX0NIQU5HRSkgew0KPiA+ICsJ
CWludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChpbnRlbF9kcCk7DQo+ID4gKwkJcHNyLT5zaW5rX25v
dF9yZWxpYWJsZSA9IHRydWU7DQo+ID4gKwkJRFJNX0RFQlVHX0tNUygiU2luayBQU1IgY2FwYWJp
bGl0eSBjaGFuZ2VkLCBkaXNhYmxpbmcNCj4gPiBQU1JcbiIpOw0KPiA+ICsJfQ0KPiA+ICt9DQo+
ID4gKw0KPiA+ICB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiA+ICB7DQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiBAQCAtMTQ4MCw2ICsxNTAwLDcgQEAgdm9pZCBp
bnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+
ICAJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRVJST1JfU1RBVFVT
LA0KPiA+IGVycm9yX3N0YXR1cyk7DQo+ID4gIA0KPiA+ICAJcHNyX2FscG1fY2hlY2soaW50ZWxf
ZHApOw0KPiA+ICsJcHNyX2NhcGFiaWxpdHlfY2hhbmdlZF9jaGVjayhpbnRlbF9kcCk7DQo+ID4g
IA0KPiA+ICBleGl0Og0KPiA+ICAJbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiA+IC0tIA0K
PiA+IDIuMjQuMA0KPiA+IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
