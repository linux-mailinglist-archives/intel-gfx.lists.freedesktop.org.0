Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 670BA63A3E
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 19:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADFA58984C;
	Tue,  9 Jul 2019 17:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3446C8984C
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 17:40:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 10:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="192762296"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 09 Jul 2019 10:40:12 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 10:40:12 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 fmsmsx120.amr.corp.intel.com ([169.254.15.50]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 10:40:09 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "tjaalton@ubuntu.com" <tjaalton@ubuntu.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 2/2] drm/i915: Enable hotplug retry
Thread-Index: AQHVLfn2rXukNuFbJE2ei/QlmDEQLaa4OUuAgAAJyACAAANogIAKQ8+AgACJzIA=
Date: Tue, 9 Jul 2019 17:40:08 +0000
Message-ID: <73c7ac9c606f05508e48a09973dc64fb88d77a95.camel@intel.com>
References: <20190628213921.16879-1-jose.souza@intel.com>
 <20190628213921.16879-2-jose.souza@intel.com>
 <0129038bba889c74e6164913d45b78b16c42482f.camel@intel.com>
 <a22bb734-1400-325e-6aff-693a6337aab2@ubuntu.com>
 <9f528f4dce800a23810f28eeb805a85d09159226.camel@intel.com>
 <7a097f16-b4c9-a907-8d25-0502a4d06ef6@ubuntu.com>
In-Reply-To: <7a097f16-b4c9-a907-8d25-0502a4d06ef6@ubuntu.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <A473FAB8661CFC41B39EB61EC9C795C0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: Enable hotplug retry
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA3LTA5IGF0IDEyOjI2ICswMzAwLCBUaW1vIEFhbHRvbmVuIHdyb3RlOg0K
PiBPbiAyLjcuMjAxOSAyMy40MSwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gT24gVHVlLCAyMDE5
LTA3LTAyIGF0IDIzOjI5ICswMzAwLCBUaW1vIEFhbHRvbmVuIHdyb3RlOg0KPiA+ID4gT24gMi43
LjIwMTkgMjIuNTQsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4gPiBIZXJlIGEgZG1lc2cgb3V0
cHV0IG9mIHRoaXMgcGF0Y2ggd29ya2luZyBpbiBhIHVucG93ZXJlZCB0eXBlLWMNCj4gPiA+ID4g
ZG9uZ2xlOg0KPiA+ID4gPiBodHRwczovL2dpc3QuZ2l0aHViLmNvbS96ZWhvcnRpZ296YS85M2M1
NGIwM2ZiNjUyMzdjYzFhMmUxOTNhY2VmNjFhOA0KPiA+ID4gPiANCj4gPiA+ID4gV2l0aCB0aGUg
bGF0ZXN0IHR5cGUtYyBwYXRjaGVzIGZyb20gSW1yZSBpdCBpcyBiZWNvbWluZyByZWFsbHkNCj4g
PiA+ID4gaGFyZA0KPiA+ID4gPiB0bw0KPiA+ID4gPiByZXByb2R1Y2UgdGhpcyBidXQgaXMgc3Rp
bGwgcG9zc2libGUsIGFsc28gbG9va3MgbGlrZSBkdWUgc29tZQ0KPiA+ID4gPiBpbnRlcm5hbA0K
PiA+ID4gPiBlcnJvciBvbiB0aGUgZG9uZ2xlIGl0IGJlaW5nIHJlLWRpc2NvdmVyZWQgYnkgVVNC
IHN1Yi1zeXN0ZW0uDQo+ID4gPiA+IA0KPiA+ID4gPiBJIGFkZGVkIHRoaXMgdG8gdGhlIHBhdGNo
ZXMgYmVsbG93IGhhdmUgbW9yZSBsb2cgaW5mb3JtYXRpb246DQo+ID4gPiA+IGh0dHBzOi8vZ2lz
dC5naXRodWIuY29tL3plaG9ydGlnb3phL2JhZWNhYmViNzA5N2I5MzIyNzIzYjZjYWY1YTljZWQ1
DQo+ID4gPiA+IExldCBtZSBrbm93IGlmIHlvdSB0aGluayB0aGlzIG9yIHNvbWV0aGluZyBzaW1p
bGFyIHNob3VsZCBiZQ0KPiA+ID4gPiBzcXVhc2hlZA0KPiA+ID4gPiB0byB0aGlzIHBhdGNoLCBJ
IHRoaW5rIGl0IGlzIG5vdCBuZWNlc3NhcnkuDQo+ID4gPiANCj4gPiA+IEZXSVcsIHdlJ3ZlIHRl
c3RlZCB0aGVzZSBvbiBhIFdITCB3aGljaCBpcyBzdWZmZXJpbmcgZnJvbSBIRE1JDQo+ID4gPiB1
bnBsdWcNCj4gPiA+IHN0aWxsIHNob3dpbmcgdGhlIGRpc3BsYXkgY29ubmVjdGVkLCBhbmQgaXQn
cyB3b3JraW5nIGZpbmUgbm93Lg0KPiA+ID4gDQo+ID4gPiANCj4gPiANCj4gPiBUaGFua3MsIEkg
d2lsbCBhZGQgeW91cjoNCj4gPiANCj4gPiBUZXN0ZWQtYnk6IFRpbW8gQWFsdG9uZW4gPHRqYWFs
dG9uQHVidW50dS5jb20+DQo+IA0KPiBUaGF0J3MgZmluZS4gV2hlbiBjYW4gd2UgZXhwZWN0IHRo
ZXNlIHRvIGxhbmQgb24gZGlucT8NCj4gDQo+IA0KPiANCg0KQXMgc29vbiBhcyBzb21lb25lIHJl
dmlld3MgaXQuDQoNCkltcmUgY2FuIHlvdSByZXZpZXcgdGhlIHRoZSBzZWNvbmQgcGF0Y2g/IEkg
d2lsbCBmaW5kIHNvbWVvbmUgdG8gcmV2aWV3DQp0aGUgZmlyc3Qgb25lLg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
