Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7990B50186A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 18:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F1810E2ED;
	Thu, 14 Apr 2022 16:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA6A10E2ED;
 Thu, 14 Apr 2022 16:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649953051; x=1681489051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=na9vaCQSH9G2ziVkkSjTKalmNlKuB3ynN5ZABS6Dbpw=;
 b=Rh/j0EoGVQc9EDx0/E2xq3GM7VuHgSkV/JrSOxbVLGFDZ1f5YEuw/i7G
 vEuMXFBtdX9v5kE/B4Zs4OFiSogwicjJBL/vFb7/ZF6NcHUZJg2EpRGK7
 sdp9FMsVdyE/oVcal5coEbjkvtkrz5I7JP+9rfLdTAxE8FeZ6ird/krOd
 P33czkfoF2uoChC1QpHnya2PWtvdV0JX8cud1wVreJTluA87byWwoNt5F
 As9rOGvtR+uguKMRWeq/zjn/Gm0xyGv47F+OPsle63YK2yx77MzGLHxTW
 299tnOOusfsx8V30l9c2EKUjHe0d4HY/cggCQt3YrvjtATK3Iek2wu6/c g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="263145069"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="263145069"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 09:17:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="526970183"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 14 Apr 2022 09:17:30 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 09:17:30 -0700
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85]) by
 fmsmsx605.amr.corp.intel.com ([10.18.126.85]) with mapi id 15.01.2308.027;
 Thu, 14 Apr 2022 09:17:30 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/guc/slpc: Use i915_probe_error
 instead of drm_err
Thread-Index: AQHYTr+VIsAWvrR+w0yKBc+z5Aie1qzvyXWAgAAxS4D//522cA==
Date: Thu, 14 Apr 2022 16:17:30 +0000
Message-ID: <088b0354e58447809979c545f2395141@intel.com>
References: <20220412224852.21501-1-vinay.belgaumkar@intel.com>
 <20220414064143.GE28908@intel.com>
 <5853d85e-da43-5eb7-abda-a475283ff6e1@intel.com>
In-Reply-To: <5853d85e-da43-5eb7-abda-a475283ff6e1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc/slpc: Use i915_probe_error
 instead of drm_err
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQmVsZ2F1bWthciwgVmlu
YXkgPHZpbmF5LmJlbGdhdW1rYXJAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgQXByaWwg
MTQsIDIwMjIgODozOCBQTQ0KPiBUbzogR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5ndXB0YUBp
bnRlbC5jb20+DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFU
Q0hdIGRybS9pOTE1L2d1Yy9zbHBjOiBVc2UgaTkxNV9wcm9iZV9lcnJvcg0KPiBpbnN0ZWFkIG9m
IGRybV9lcnINCj4gDQo+IA0KPiBPbiA0LzEzLzIwMjIgMTE6NDEgUE0sIEFuc2h1bWFuIEd1cHRh
IHdyb3RlOg0KPiA+IE9uIDIwMjItMDQtMTMgYXQgMDQ6MTg6NTIgKzA1MzAsIFZpbmF5IEJlbGdh
dW1rYXIgd3JvdGU6DQo+ID4+IFRoaXMgd2lsbCBlbnN1cmUgd2UgZG9uJ3QgaGF2ZSBmYWxzZSBw
b3NpdGl2ZXMgd2hlbiB3ZSBydW4gZXJyb3INCj4gPj4gaW5qZWN0aW9uIHRlc3RzLg0KPiA+Pg0K
PiA+PiBTaWduZWQtb2ZmLWJ5OiBWaW5heSBCZWxnYXVta2FyIDx2aW5heS5iZWxnYXVta2FyQGlu
dGVsLmNvbT4NCj4gPj4gLS0tDQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX3NscGMuYyB8IDQyICsrKysrKysrKystLS0tLS0tLS0tLQ0KPiA+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkNCj4gPj4NCj4gPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjLmMNCj4g
Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc2xwYy5jDQo+ID4+IGlu
ZGV4IGIxNzAyMzhhYTE1Yy4uNjM5ZGUzYzEwNTQ1IDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc2xwYy5jDQo+ID4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zbHBjLmMNCj4gPj4gQEAgLTE1Miw4ICsxNTIs
OCBAQCBzdGF0aWMgaW50IHNscGNfcXVlcnlfdGFza19zdGF0ZShzdHJ1Y3QNCj4gPj4gaW50ZWxf
Z3VjX3NscGMgKnNscGMpDQo+ID4+DQo+ID4+ICAgCXJldCA9IGd1Y19hY3Rpb25fc2xwY19xdWVy
eShndWMsIG9mZnNldCk7DQo+ID4+ICAgCWlmICh1bmxpa2VseShyZXQpKQ0KPiA+IEFzIGNvbW1p
dCBsb2dzIGRlc2NyaWJlLCB0aGlzIGNvZGUgcGF0Y2ggY2FuIGhpdCwgd2hlbiB3ZSBydW4gZXJy
b3IgaW5qZWN0aW9uDQo+IHRlc3QuDQo+ID4gRG8gd2UgbmVlZCB1bmxpa2VseSgpIGhlcmU/DQo+
ID4gQnIsDQo+ID4gQW5zaHVtYW4gR3VwdGEuDQo+IA0KPiBJIHRoaW5rIHdlIHN0aWxsIG5lZWQg
dGhlIHVubGlrZWx5KCkuIE1ham9yaXR5IG9mIHRoZSB0aW1lLCB3ZSBzdGlsbCBuZWVkIHRoZQ0K
PiBjb21waWxlciBvcHRpbWl6YXRpb24uDQo+IA0KPiBPbmx5IGluIHRoZSByYXJlIGNhc2Ugb2Yg
cnVubmluZyB0aGUgZXJyb3IgaW5qZWN0aW9uIHRlc3Qgd2lsbCBpdCBub3QgYmUgbmVlZGVkLg0K
UmV2aWV3ZWQtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+
IA0KPiBUaGFua3MsDQo+IA0KPiBWaW5heS4NCj4gDQo+ID4+IC0JCWRybV9lcnIoJmk5MTUtPmRy
bSwgIkZhaWxlZCB0byBxdWVyeSB0YXNrIHN0YXRlICglcGUpXG4iLA0KPiA+PiAtCQkJRVJSX1BU
UihyZXQpKTsNCj4gPj4gKwkJaTkxNV9wcm9iZV9lcnJvcihpOTE1LCAiRmFpbGVkIHRvIHF1ZXJ5
IHRhc2sgc3RhdGUgKCVwZSlcbiIsDQo+ID4+ICsJCQkJIEVSUl9QVFIocmV0KSk7DQo+ID4+DQo+
ID4+ICAgCWRybV9jbGZsdXNoX3ZpcnRfcmFuZ2Uoc2xwYy0+dmFkZHIsIFNMUENfUEFHRV9TSVpF
X0JZVEVTKTsNCj4gPj4NCj4gPj4gQEAgLTE3MCw4ICsxNzAsOCBAQCBzdGF0aWMgaW50IHNscGNf
c2V0X3BhcmFtKHN0cnVjdCBpbnRlbF9ndWNfc2xwYw0KPiA+PiAqc2xwYywgdTggaWQsIHUzMiB2
YWx1ZSkNCj4gPj4NCj4gPj4gICAJcmV0ID0gZ3VjX2FjdGlvbl9zbHBjX3NldF9wYXJhbShndWMs
IGlkLCB2YWx1ZSk7DQo+ID4+ICAgCWlmIChyZXQpDQo+ID4+IC0JCWRybV9lcnIoJmk5MTUtPmRy
bSwgIkZhaWxlZCB0byBzZXQgcGFyYW0gJWQgdG8gJXUgKCVwZSlcbiIsDQo+ID4+IC0JCQlpZCwg
dmFsdWUsIEVSUl9QVFIocmV0KSk7DQo+ID4+ICsJCWk5MTVfcHJvYmVfZXJyb3IoaTkxNSwgIkZh
aWxlZCB0byBzZXQgcGFyYW0gJWQgdG8gJXUgKCVwZSlcbiIsDQo+ID4+ICsJCQkJIGlkLCB2YWx1
ZSwgRVJSX1BUUihyZXQpKTsNCj4gPj4NCj4gPj4gICAJcmV0dXJuIHJldDsNCj4gPj4gICB9DQo+
ID4+IEBAIC0yMTEsOCArMjExLDggQEAgc3RhdGljIGludCBzbHBjX2ZvcmNlX21pbl9mcmVxKHN0
cnVjdCBpbnRlbF9ndWNfc2xwYw0KPiAqc2xwYywgdTMyIGZyZXEpDQo+ID4+DQo+IFNMUENfUEFS
QU1fR0xPQkFMX01JTl9HVF9VTlNMSUNFX0ZSRVFfTUhaLA0KPiA+PiAgIAkJCQkgICAgIGZyZXEp
Ow0KPiA+PiAgIAkJaWYgKHJldCkNCj4gPj4gLQkJCWRybV9lcnIoJmk5MTUtPmRybSwgIlVuYWJs
ZSB0byBmb3JjZSBtaW4gZnJlcSB0byAldToNCj4gJWQiLA0KPiA+PiAtCQkJCWZyZXEsIHJldCk7
DQo+ID4+ICsJCQlpOTE1X3Byb2JlX2Vycm9yKGk5MTUsICJVbmFibGUgdG8gZm9yY2UgbWluIGZy
ZXEgdG8NCj4gJXU6ICVkIiwNCj4gPj4gKwkJCQkJIGZyZXEsIHJldCk7DQo+ID4+ICAgCX0NCj4g
Pj4NCj4gPj4gICAJcmV0dXJuIHJldDsNCj4gPj4gQEAgLTI0Nyw5ICsyNDcsOSBAQCBpbnQgaW50
ZWxfZ3VjX3NscGNfaW5pdChzdHJ1Y3QgaW50ZWxfZ3VjX3NscGMNCj4gPj4gKnNscGMpDQo+ID4+
DQo+ID4+ICAgCWVyciA9IGludGVsX2d1Y19hbGxvY2F0ZV9hbmRfbWFwX3ZtYShndWMsIHNpemUs
ICZzbHBjLT52bWEsICh2b2lkDQo+ICoqKSZzbHBjLT52YWRkcik7DQo+ID4+ICAgCWlmICh1bmxp
a2VseShlcnIpKSB7DQo+ID4+IC0JCWRybV9lcnIoJmk5MTUtPmRybSwNCj4gPj4gLQkJCSJGYWls
ZWQgdG8gYWxsb2NhdGUgU0xQQyBzdHJ1Y3QgKGVycj0lcGUpXG4iLA0KPiA+PiAtCQkJRVJSX1BU
UihlcnIpKTsNCj4gPj4gKwkJaTkxNV9wcm9iZV9lcnJvcihpOTE1LA0KPiA+PiArCQkJCSAiRmFp
bGVkIHRvIGFsbG9jYXRlIFNMUEMgc3RydWN0IChlcnI9JXBlKVxuIiwNCj4gPj4gKwkJCQkgRVJS
X1BUUihlcnIpKTsNCj4gPj4gICAJCXJldHVybiBlcnI7DQo+ID4+ICAgCX0NCj4gPj4NCj4gPj4g
QEAgLTMxNiwxNSArMzE2LDE1IEBAIHN0YXRpYyBpbnQgc2xwY19yZXNldChzdHJ1Y3QgaW50ZWxf
Z3VjX3NscGMgKnNscGMpDQo+ID4+ICAgCXJldCA9IGd1Y19hY3Rpb25fc2xwY19yZXNldChndWMs
IG9mZnNldCk7DQo+ID4+DQo+ID4+ICAgCWlmICh1bmxpa2VseShyZXQgPCAwKSkgew0KPiA+PiAt
CQlkcm1fZXJyKCZpOTE1LT5kcm0sICJTTFBDIHJlc2V0IGFjdGlvbiBmYWlsZWQgKCVwZSlcbiIs
DQo+ID4+IC0JCQlFUlJfUFRSKHJldCkpOw0KPiA+PiArCQlpOTE1X3Byb2JlX2Vycm9yKGk5MTUs
ICJTTFBDIHJlc2V0IGFjdGlvbiBmYWlsZWQgKCVwZSlcbiIsDQo+ID4+ICsJCQkJIEVSUl9QVFIo
cmV0KSk7DQo+ID4+ICAgCQlyZXR1cm4gcmV0Ow0KPiA+PiAgIAl9DQo+ID4+DQo+ID4+ICAgCWlm
ICghcmV0KSB7DQo+ID4+ICAgCQlpZiAod2FpdF9mb3Ioc2xwY19pc19ydW5uaW5nKHNscGMpLCBT
TFBDX1JFU0VUX1RJTUVPVVRfTVMpKSB7DQo+ID4+IC0JCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJT
TFBDIG5vdCBlbmFibGVkISBTdGF0ZSA9ICVzXG4iLA0KPiA+PiAtCQkJCXNscGNfZ2V0X3N0YXRl
X3N0cmluZyhzbHBjKSk7DQo+ID4+ICsJCQlpOTE1X3Byb2JlX2Vycm9yKGk5MTUsICJTTFBDIG5v
dCBlbmFibGVkISBTdGF0ZSA9DQo+ICVzXG4iLA0KPiA+PiArCQkJCQkgc2xwY19nZXRfc3RhdGVf
c3RyaW5nKHNscGMpKTsNCj4gPj4gICAJCQlyZXR1cm4gLUVJTzsNCj4gPj4gICAJCX0NCj4gPj4g
ICAJfQ0KPiA+PiBAQCAtNjE2LDggKzYxNiw4IEBAIGludCBpbnRlbF9ndWNfc2xwY19lbmFibGUo
c3RydWN0IGludGVsX2d1Y19zbHBjDQo+ID4+ICpzbHBjKQ0KPiA+Pg0KPiA+PiAgIAlyZXQgPSBz
bHBjX3Jlc2V0KHNscGMpOw0KPiA+PiAgIAlpZiAodW5saWtlbHkocmV0IDwgMCkpIHsNCj4gPj4g
LQkJZHJtX2VycigmaTkxNS0+ZHJtLCAiU0xQQyBSZXNldCBldmVudCByZXR1cm5lZCAoJXBlKVxu
IiwNCj4gPj4gLQkJCUVSUl9QVFIocmV0KSk7DQo+ID4+ICsJCWk5MTVfcHJvYmVfZXJyb3IoaTkx
NSwgIlNMUEMgUmVzZXQgZXZlbnQgcmV0dXJuZWQgKCVwZSlcbiIsDQo+ID4+ICsJCQkJIEVSUl9Q
VFIocmV0KSk7DQo+ID4+ICAgCQlyZXR1cm4gcmV0Ow0KPiA+PiAgIAl9DQo+ID4+DQo+ID4+IEBA
IC02MzIsMjQgKzYzMiwyNCBAQCBpbnQgaW50ZWxfZ3VjX3NscGNfZW5hYmxlKHN0cnVjdCBpbnRl
bF9ndWNfc2xwYw0KPiAqc2xwYykNCj4gPj4gICAJLyogSWdub3JlIGVmZmljaWVudCBmcmVxIGFu
ZCBzZXQgbWluIHRvIHBsYXRmb3JtIG1pbiAqLw0KPiA+PiAgIAlyZXQgPSBzbHBjX2lnbm9yZV9l
ZmZfZnJlcShzbHBjLCB0cnVlKTsNCj4gPj4gICAJaWYgKHVubGlrZWx5KHJldCkpIHsNCj4gPj4g
LQkJZHJtX2VycigmaTkxNS0+ZHJtLCAiRmFpbGVkIHRvIHNldCBTTFBDIG1pbiB0byBSUG4gKCVw
ZSlcbiIsDQo+ID4+IC0JCQlFUlJfUFRSKHJldCkpOw0KPiA+PiArCQlpOTE1X3Byb2JlX2Vycm9y
KGk5MTUsICJGYWlsZWQgdG8gc2V0IFNMUEMgbWluIHRvIFJQbiAoJXBlKVxuIiwNCj4gPj4gKwkJ
CQkgRVJSX1BUUihyZXQpKTsNCj4gPj4gICAJCXJldHVybiByZXQ7DQo+ID4+ICAgCX0NCj4gPj4N
Cj4gPj4gICAJLyogU2V0IFNMUEMgbWF4IGxpbWl0IHRvIFJQMCAqLw0KPiA+PiAgIAlyZXQgPSBz
bHBjX3VzZV9mdXNlZF9ycDAoc2xwYyk7DQo+ID4+ICAgCWlmICh1bmxpa2VseShyZXQpKSB7DQo+
ID4+IC0JCWRybV9lcnIoJmk5MTUtPmRybSwgIkZhaWxlZCB0byBzZXQgU0xQQyBtYXggdG8gUlAw
ICglcGUpXG4iLA0KPiA+PiAtCQkJRVJSX1BUUihyZXQpKTsNCj4gPj4gKwkJaTkxNV9wcm9iZV9l
cnJvcihpOTE1LCAiRmFpbGVkIHRvIHNldCBTTFBDIG1heCB0byBSUDANCj4gKCVwZSlcbiIsDQo+
ID4+ICsJCQkJIEVSUl9QVFIocmV0KSk7DQo+ID4+ICAgCQlyZXR1cm4gcmV0Ow0KPiA+PiAgIAl9
DQo+ID4+DQo+ID4+ICAgCS8qIFJldmVydCBTTFBDIG1pbi9tYXggdG8gc29mdGxpbWl0cyBpZiBu
ZWNlc3NhcnkgKi8NCj4gPj4gICAJcmV0ID0gc2xwY19zZXRfc29mdGxpbWl0cyhzbHBjKTsNCj4g
Pj4gICAJaWYgKHVubGlrZWx5KHJldCkpIHsNCj4gPj4gLQkJZHJtX2VycigmaTkxNS0+ZHJtLCAi
RmFpbGVkIHRvIHNldCBTTFBDIHNvZnRsaW1pdHMgKCVwZSlcbiIsDQo+ID4+IC0JCQlFUlJfUFRS
KHJldCkpOw0KPiA+PiArCQlpOTE1X3Byb2JlX2Vycm9yKGk5MTUsICJGYWlsZWQgdG8gc2V0IFNM
UEMgc29mdGxpbWl0cyAoJXBlKVxuIiwNCj4gPj4gKwkJCQkgRVJSX1BUUihyZXQpKTsNCj4gPj4g
ICAJCXJldHVybiByZXQ7DQo+ID4+ICAgCX0NCj4gPj4NCj4gPj4gLS0NCj4gPj4gMi4zNS4xDQo+
ID4+DQo=
