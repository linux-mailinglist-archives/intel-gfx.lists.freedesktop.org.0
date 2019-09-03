Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D8FA744F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 22:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2548896FA;
	Tue,  3 Sep 2019 20:10:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 968768970B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 20:10:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 13:10:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="184878357"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 03 Sep 2019 13:10:19 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Sep 2019 13:10:19 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX161.amr.corp.intel.com ([10.18.125.9]) with mapi id 14.03.0439.000;
 Tue, 3 Sep 2019 13:10:18 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] Revert "drm/i915: Fix DP-MST crtc_mask"
Thread-Index: AQHVYm3p++DRJSe/jkCWAGSpYNSvZKca17KA
Date: Tue, 3 Sep 2019 20:10:18 +0000
Message-ID: <8947f85cce38cdcb3b185af1e187e9e7252c3d82.camel@intel.com>
References: <20190903154018.26357-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190903154018.26357-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <11EEF95F2E1259488545BAA166CB1EDF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: Fix DP-MST crtc_mask"
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "jadahl@gmail.com" <jadahl@gmail.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA5LTAzIGF0IDE4OjQwICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhpcyByZXZlcnRzIGNvbW1pdCA0ZWFjZWVhM2EwMGY4ZTkzNmE3ZjQ4ZGNkMGM5NzVh
NTdmODg5MzBmLg0KPiANCj4gU2V2ZXJhbCB1c2Vyc3BhY2UgY2xpZW50cyAobW9kZXNldHRpbmcg
ZGR4IGFuZCBtdXR0ZXIrd2F5bGFuZCBhdA0KPiBsZWFzdCkNCj4gaGFuZGxlIGVuY29kZXIucG9z
c2libGVfY3J0Y3MgaW5jb3JyZWN0bHkuIFdoYXQgdGhleSBlc3NlbnRpYWxseSBkbw0KPiBpcw0K
PiB0aGUgZm9sbG93aW5nOg0KPiANCj4gcG9zc2libGVfY3J0Y3MgPSB+MDsNCj4gZm9yX2VhY2hf
cG9zc2libGVfZW5jb2Rlcihjb25uZWN0b3IpDQo+IAlwb3NzaWJsZV9jcnRjcyAmPSBlbmNvZGVy
LT5wb3NzaWJsZV9jcnRjczsNCj4gDQo+IEllLiB0aGV5IGNhbGN1bGF0ZSB0aGUgaW50ZXJzZWN0
aW9uIG9mIHRoZSBwb3NzaWJsZV9jcnRjcw0KPiBmb3IgdGhlIGNvbm5lY3RvciB3aGVuIHRoZXkg
cmVhbGx5IHNob3VsZCBiZSBjYWxjdWxhdGluZyB0aGUNCj4gdW5pb24gaW5zdGVhZC4NCj4gDQo+
IEluIG91ciBjYXNlIGVhY2ggTVNUIGVuY29kZXIgbm93IGhhcyBqdXN0IG9uZSB1bmlxdWUgYml0
IHNldCwNCj4gYW5kIHNvIHRoZSBpbnRlcnNlY3Rpb24gaXMgYWx3YXlzIHplcm8uIFRoZSBlbmQg
cmVzdWx0IGlzIHRoYXQNCj4gTVNUIGNvbm5lY3RvcnMgY2FuJ3QgYmUgbGl0IHVwIGJlY2F1c2Ug
bm8gY3J0YyBjYW4gYmUgZm91bmQgdG8NCj4gZHJpdmUgdGhlbS4NCj4gDQo+IEkndmUgc3VibWl0
dGVkIGEgZml4IGZvciB0aGUgbW9kZXNldHRpbmcgZGR4IFsxXSwgYW5kIGNvbXBsYWluZWQNCj4g
b24gI3dheWxhbmQgYWJvdXQgbXV0dGVyLCBzbyBob3BlZnVsbHkgdGhlIHNpdHVhdGlvbiB3aWxs
IGltcHJvdmUNCj4gaW4gdGhlIGZ1dHVyZS4gSW4gdGhlIG1lYW50aW1lIHdlIGhhdmUgcmVncmVz
c2lvbiwgYW5kIHNvIG11c3QgZ28NCj4gYmFjayB0byB0aGUgb2xkIHdheSBvZiBtaXNjb25maWd1
cmluZyBwb3NzaWJsZV9jcnRjcyBpbiB0aGUga2VybmVsLg0KDQpJbiB0aGUgbWVhbnRpbWUgYXJl
IHlvdSBwbGFuaW5nIHRvIHNlbmQgYSBwYXRjaCBkb2luZzoNCg0KZm9yX2VhY2hfcGlwZShkZXZf
cHJpdiwgcGlwZSkNCgkJaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrIHw9IEJJVChwaXBlKTsNCg0K
V2UgaGFkIGEgcGF0Y2ggZG9pbmcgdGhhdCBpbiBvbmUgb2YgdGhlIFRHTCBlbmFibGluZyBzZXJp
ZXMgYnV0IGl0IHdhcw0KZHJvcHBlZCBiZWNhdXNlIG9mIHlvdXIgcGF0Y2ggbG9va2VkIGJldHRl
ciwgSSBjYW4gYnJpbmcgaXQgYmFjayBpZiB5b3UNCmFyZSBub3QgcGxhbm5pbmcuDQoNCj4gDQo+
IFsxXSBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcveG9yZy94c2VydmVyL21lcmdlX3Jl
cXVlc3RzLzI3Nw0KDQpKdXN0IGxvb2tlZCB0byB0aGUgbWVyZ2UgcmVxdWVzdCBhYm92ZSwgbm90
IHRvIHRoZSBvdGhlciB1c2Vyc3BhY2UNCmNsaWVudHMNCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogSm9uYXMg
w4VkYWhsIDxqYWRhaGxAZ21haWwuY29tPg0KPiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3Rh
bmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IENjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlv
bmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+DQo+IENjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxk
aGluYWthcmFuLnBhbmRpeWFuQGludGVsLmNvbT4NCj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExNTA3DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDIgKy0NCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGluZGV4IDZkZjI0MGEwMWI4
Yy4uMzczNjZmODEyNTViIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmMNCj4gQEAgLTYxNSw3ICs2MTUsNyBAQCBpbnRlbF9kcF9jcmVhdGVfZmFr
ZV9tc3RfZW5jb2RlcihzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9y
dCwgZW51bQ0KPiAgCWludGVsX2VuY29kZXItPnR5cGUgPSBJTlRFTF9PVVRQVVRfRFBfTVNUOw0K
PiAgCWludGVsX2VuY29kZXItPnBvd2VyX2RvbWFpbiA9IGludGVsX2RpZ19wb3J0LQ0KPiA+YmFz
ZS5wb3dlcl9kb21haW47DQo+ICAJaW50ZWxfZW5jb2Rlci0+cG9ydCA9IGludGVsX2RpZ19wb3J0
LT5iYXNlLnBvcnQ7DQo+IC0JaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNrID0gQklUKHBpcGUpOw0K
PiArCWludGVsX2VuY29kZXItPmNydGNfbWFzayA9IDB4NzsNCj4gIAlpbnRlbF9lbmNvZGVyLT5j
bG9uZWFibGUgPSAwOw0KPiAgDQo+ICAJaW50ZWxfZW5jb2Rlci0+Y29tcHV0ZV9jb25maWcgPSBp
bnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWc7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
