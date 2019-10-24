Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4297BE2EDB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 12:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A44B56E204;
	Thu, 24 Oct 2019 10:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D4DD6E204
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 10:28:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 03:28:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="228462245"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga002.fm.intel.com with ESMTP; 24 Oct 2019 03:28:15 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 IRSMSX153.ger.corp.intel.com ([169.254.9.119]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 11:28:14 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 03/13] drm/i915: Move
 check_digital_port_conflicts() earier
Thread-Index: AQHVg48RCoRJ0dNPsEinl4XXMNUS66dpku4A
Date: Thu, 24 Oct 2019 10:28:14 +0000
Message-ID: <09a9e8e5ce28bc6735c40379d62ef725077cda74.camel@intel.com>
References: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
 <20191015193035.25982-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20191015193035.25982-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <4C08DADA815764469866AD55F6A178A5@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 03/13] drm/i915: Move
 check_digital_port_conflicts() earier
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTEwLTE1IGF0IDIyOjMwICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gY2hlY2tfZGlnaXRhbF9wb3J0X2NvbmZsaWN0cygpIGlzIGRvbmUgbmVlZGxlc3NseSBs
YXRlLiBNb3ZlIGl0DQo+IGVhcmxpZXIuDQo+IFRoaXMgd2lsbCBiZSBuZWVkZWQgYXMgbGF0ZXIg
b24gd2Ugd2FudCB0byBzZXQgYW55X21zPXRydWUgYSBiaXQNCj4gbGF0ZXINCj4gZm9yIG5vbi1t
b2Rlc2V0cyB0b28gYW5kIHdlIGNhbid0IGNhbGwgdGhpcyBndXkgd2l0aG91dCB0aGUNCj4gY29u
bmVjdGlvbl9tdXRleCBoZWxkLg0KDQpSZXZpZXdlZC1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8
c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxMSArKysrKyst
LS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGluZGV4IGE4NDQ0ZDk4NDFjMS4uNDRiZDRkMTUwMTliIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTM0NTYsMTEgKzEz
NDU2LDYgQEAgc3RhdGljIGludCBpbnRlbF9tb2Rlc2V0X2NoZWNrcyhzdHJ1Y3QNCj4gaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gIAlp
bnQgcmV0LCBpOw0KPiAgDQo+IC0JaWYgKCFjaGVja19kaWdpdGFsX3BvcnRfY29uZmxpY3RzKHN0
YXRlKSkgew0KPiAtCQlEUk1fREVCVUdfS01TKCJyZWplY3RpbmcgY29uZmxpY3RpbmcgZGlnaXRh
bCBwb3J0DQo+IGNvbmZpZ3VyYXRpb25cbiIpOw0KPiAtCQlyZXR1cm4gLUVJTlZBTDsNCj4gLQl9
DQo+IC0NCj4gIAkvKiBrZWVwIHRoZSBjdXJyZW50IHNldHRpbmcgKi8NCj4gIAlpZiAoIXN0YXRl
LT5jZGNsay5mb3JjZV9taW5fY2RjbGtfY2hhbmdlZCkNCj4gIAkJc3RhdGUtPmNkY2xrLmZvcmNl
X21pbl9jZGNsayA9IGRldl9wcml2LQ0KPiA+Y2RjbGsuZm9yY2VfbWluX2NkY2xrOw0KPiBAQCAt
MTM2MjIsNiArMTM2MTcsMTIgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0
DQo+IGRybV9kZXZpY2UgKmRldiwNCj4gIAkJCWFueV9tcyA9IHRydWU7DQo+ICAJfQ0KPiAgDQo+
ICsJaWYgKGFueV9tcyAmJiAhY2hlY2tfZGlnaXRhbF9wb3J0X2NvbmZsaWN0cyhzdGF0ZSkpIHsN
Cj4gKwkJRFJNX0RFQlVHX0tNUygicmVqZWN0aW5nIGNvbmZsaWN0aW5nIGRpZ2l0YWwgcG9ydA0K
PiBjb25maWd1cmF0aW9uXG4iKTsNCj4gKwkJcmV0ID0gRUlOVkFMOw0KPiArCQlnb3RvIGZhaWw7
DQo+ICsJfQ0KPiArDQo+ICAJcmV0ID0gZHJtX2RwX21zdF9hdG9taWNfY2hlY2soJnN0YXRlLT5i
YXNlKTsNCj4gIAlpZiAocmV0KQ0KPiAgCQlnb3RvIGZhaWw7DQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
