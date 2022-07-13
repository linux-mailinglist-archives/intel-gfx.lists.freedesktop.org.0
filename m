Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 000FA573E7E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 23:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E16699DAB;
	Wed, 13 Jul 2022 21:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 333F699DAC
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jul 2022 21:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657746299; x=1689282299;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=JOvqBicu7awKXsewJSL0lkxYSRACW+pzpghkWaZyZuY=;
 b=QHHi6DsBMSfUI2gWOLpVuGme/TbKU5mtP/GNWqUTG9g58gTrYymWR4sp
 DJpgGWlMP/YpxlP1a6O5tYKQHnvMC28qBblyzz6nzp8g/B443BXF/CGUs
 nd26qZBFQog5HL2Ug9xbpqMTxsx3NQ/iAolU9kmrO0nA/omD3mYeXFRZ0
 THC362DIXnq9jbl4Z3img63NHTqfGj167ECY5XpEXOjo9ggyVmh56gZ4e
 0QATv1WPPR6aZyL0WULnfeOhbQ3YPvyhf3sFKVSFES24jIaTqO1gWj7ds
 ha3UyEgiySHsEG46q2gFKpSn1DuhgIAS9PAn4QKgl9zf3A6kQw1WS7qEB Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="286088675"
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="286088675"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 14:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="653572828"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jul 2022 14:04:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Jul 2022 14:04:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Jul 2022 14:04:57 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Wed, 13 Jul 2022 14:04:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state
Thread-Index: AQHYlRgFO3FmAOI2Yk64CAzr2N34+K19QdoAgAABtwA=
Date: Wed, 13 Jul 2022 21:04:57 +0000
Message-ID: <bc4803bb6647f11b9d62ab3cb9d3015fd43aabca.camel@intel.com>
References: <20220711111750.881552-1-jouni.hogander@intel.com>
 <cafdb8204ea02b0059e0ef4facafcdd338a3ab2b.camel@intel.com>
In-Reply-To: <cafdb8204ea02b0059e0ef4facafcdd338a3ab2b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <AC98477246DB214D905A3E5FF0F855C8@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Ensure PSR gets
 disabled if no encoders in new state
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIyLTA3LTEzIGF0IDIwOjU4ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gTW9uLCAyMDIyLTA3LTExIGF0IDE0OjE3ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+ID4gQ3VycmVudGx5IFBTUiBpcyBsZWZ0IGVuYWJsZWQgd2hlbiBhbGwgcGxhbmVzIGFyZSBk
aXNhYmxlZCBpZiB0aGVyZQ0KPiA+IGlzIG5vIGF0dGFjaGVkIGVuY29kZXIgaW4gbmV3IHN0YXRl
LiBUaGlzIHNlZW1zIHRvIGJlIGNhdXNpbmcgRklGTw0KPiA+IHVuZGVycnVucy4NCj4gDQo+IFdo
YXQgaXMgdGhlIGNhc2Ugd2VyZSB0aGVyZSBpcyBubyBhdHRhY2hlZCBlbmNvZGVyIGFuZCBhY3Rp
dmVfcGxhbmVzID4gMD8NCg0KQ2FuIHlvdSBwb2ludCB0byBzb21lIHRlc3Q/DQpJIGJlbGlldmUg
dGhhdCBhIHBpcGUgdG8gYmUgZW5hYmxlZCBuZWVkcyB0byBoYXZlIGEgZW5jb25kZXIvcG9ydCBh
dHRhY2hlZCwgb3RoZXJ3aXNlIGl0IHdpbGwgYmUgZGlzYWJsZWQuIA0KDQo+IA0KPiA+IA0KPiA+
IEZpeCB0aGlzIGJ5IGNoZWNraW5nIGlmIGVuY29kZXIgZXhpc3RzIGluIG5ldyBjcnRjIHN0YXRl
IGFuZCBkaXNhYmxlDQo+ID4gUFNSIGlmIGl0IGRvZXNuJ3QuDQo+ID4gDQo+ID4gdjI6IFVuaWZ5
IGRpc2FibGUgbG9naWMgd2l0aCBleGlzdGluZw0KPiA+IA0KPiA+IENjOiBNaWthIEthaG9sYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IFJlcG9ydGVkLWJ5OiBTdGFuaXNsYXYgTGlzb3Zz
a2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8
IDUzICsrKysrKysrKysrKysrLS0tLS0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5z
ZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggZTZhODcwNjQxY2QyLi45MDU5OWRkMWNi
MWIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiBAQCAtMTg2MywzNiArMTg2Myw0NSBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBk
YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+ICAJCQkJc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOw0KPiA+IC0JY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+IC0JCWludGVsX2F0b21pY19nZXRfbmV3X2Ny
dGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+IC0Jc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXI7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUsICpvbGRf
Y3J0Y19zdGF0ZTsNCj4gPiArCWludCBpOw0KPiA+ICANCj4gPiAgCWlmICghSEFTX1BTUihpOTE1
KSkNCj4gPiAgCQlyZXR1cm47DQo+ID4gIA0KPiA+IC0JZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9t
YXNrX3dpdGhfcHNyKHN0YXRlLT5iYXNlLmRldiwgZW5jb2RlciwNCj4gPiAtCQkJCQkgICAgIGNy
dGNfc3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+ID4gLQkJc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiAtCQlzdHJ1Y3QgaW50ZWxf
cHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiAtCQlib29sIG5lZWRzX3RvX2Rpc2FibGUg
PSBmYWxzZTsNCj4gPiArCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRl
LCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwNCj4gPiArCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkp
IHsNCj4gPiArCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gPiArCQl1MzIgb2xk
X25ld19lbmNvZGVyX21hc2sgPSBvbGRfY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVyX21hc2sgfA0K
PiA+ICsJCQluZXdfY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVyX21hc2s7DQo+ID4gIA0KPiA+IC0J
CW11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+ID4gKwkJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9t
YXNrX3dpdGhfcHNyKHN0YXRlLT5iYXNlLmRldiwgZW5jb2RlciwNCj4gPiArCQkJCQkJICAgICBv
bGRfbmV3X2VuY29kZXJfbWFzaykgew0KPiA+ICsJCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
ID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiA+ICsJCQlzdHJ1Y3QgaW50ZWxfcHNyICpw
c3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gPiArCQkJYm9vbCBuZWVkc190b19kaXNhYmxlID0gZmFs
c2U7DQo+ID4gIA0KPiA+IC0JCS8qDQo+ID4gLQkJICogUmVhc29ucyB0byBkaXNhYmxlOg0KPiA+
IC0JCSAqIC0gUFNSIGRpc2FibGVkIGluIG5ldyBzdGF0ZQ0KPiA+IC0JCSAqIC0gQWxsIHBsYW5l
cyB3aWxsIGdvIGluYWN0aXZlDQo+ID4gLQkJICogLSBDaGFuZ2luZyBiZXR3ZWVuIFBTUiB2ZXJz
aW9ucw0KPiA+IC0JCSAqLw0KPiA+IC0JCW5lZWRzX3RvX2Rpc2FibGUgfD0gaW50ZWxfY3J0Y19u
ZWVkc19tb2Rlc2V0KGNydGNfc3RhdGUpOw0KPiA+IC0JCW5lZWRzX3RvX2Rpc2FibGUgfD0gIWNy
dGNfc3RhdGUtPmhhc19wc3I7DQo+ID4gLQkJbmVlZHNfdG9fZGlzYWJsZSB8PSAhY3J0Y19zdGF0
ZS0+YWN0aXZlX3BsYW5lczsNCj4gPiAtCQluZWVkc190b19kaXNhYmxlIHw9IGNydGNfc3RhdGUt
Pmhhc19wc3IyICE9IHBzci0+cHNyMl9lbmFibGVkOw0KPiA+ICsJCQltdXRleF9sb2NrKCZwc3It
PmxvY2spOw0KPiA+ICANCj4gPiAtCQlpZiAocHNyLT5lbmFibGVkICYmIG5lZWRzX3RvX2Rpc2Fi
bGUpDQo+ID4gLQkJCWludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChpbnRlbF9kcCk7DQo+ID4gKwkJ
CS8qDQo+ID4gKwkJCSAqIFJlYXNvbnMgdG8gZGlzYWJsZToNCj4gPiArCQkJICogLSBQU1IgZGlz
YWJsZWQgaW4gbmV3IHN0YXRlDQo+ID4gKwkJCSAqIC0gQWxsIHBsYW5lcyB3aWxsIGdvIGluYWN0
aXZlDQo+ID4gKwkJCSAqIC0gQ2hhbmdpbmcgYmV0d2VlbiBQU1IgdmVyc2lvbnMNCj4gPiArCQkJ
ICogLSBFbmNvZGVyIGlzbid0IHByZXNlbnQgaW4gbmV3IG1hc2sNCj4gPiArCQkJICovDQo+ID4g
KwkJCW5lZWRzX3RvX2Rpc2FibGUgfD0gaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRj
X3N0YXRlKTsNCj4gPiArCQkJbmVlZHNfdG9fZGlzYWJsZSB8PSAhbmV3X2NydGNfc3RhdGUtPmhh
c19wc3I7DQo+ID4gKwkJCW5lZWRzX3RvX2Rpc2FibGUgfD0gIW5ld19jcnRjX3N0YXRlLT5hY3Rp
dmVfcGxhbmVzOw0KPiA+ICsJCQluZWVkc190b19kaXNhYmxlIHw9IG5ld19jcnRjX3N0YXRlLT5o
YXNfcHNyMiAhPSBwc3ItPnBzcjJfZW5hYmxlZDsNCj4gPiArCQkJbmVlZHNfdG9fZGlzYWJsZSB8
PSAhKG5ld19jcnRjX3N0YXRlLT51YXBpLmVuY29kZXJfbWFzayAmDQo+ID4gKwkJCQkJICAgICAg
ZHJtX2VuY29kZXJfbWFzaygmKGVuY29kZXIpLT5iYXNlKSk7DQo+ID4gIA0KPiA+IC0JCW11dGV4
X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiArCQkJaWYgKHBzci0+ZW5hYmxlZCAmJiBuZWVkc190
b19kaXNhYmxlKQ0KPiA+ICsJCQkJaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGludGVsX2RwKTsN
Cj4gPiArDQo+ID4gKwkJCW11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiArCQl9DQo+ID4g
IAl9DQo+ID4gIH0NCj4gPiAgDQo+IA0KDQo=
