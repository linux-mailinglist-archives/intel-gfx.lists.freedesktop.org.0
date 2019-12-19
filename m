Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F56125FD5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 11:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B106A89C8F;
	Thu, 19 Dec 2019 10:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB7FC89C8F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 10:50:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 02:50:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="390489621"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga005.jf.intel.com with ESMTP; 19 Dec 2019 02:50:04 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 02:50:03 -0800
Received: from bgsmsx155.gar.corp.intel.com (10.224.48.102) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 02:50:03 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX155.gar.corp.intel.com ([169.254.12.12]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 16:19:59 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/2] drm/i915/dsc: fix DSC power domains for DSI
Thread-Index: AQHVsPK8o91i9SHRIE+hgK489+5mFKe/5jjw
Date: Thu, 19 Dec 2019 10:49:58 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809E9812@BGSMSX108.gar.corp.intel.com>
References: <cover.1576081155.git.jani.nikula@intel.com>
 <20191212134728.18432-1-jani.nikula@intel.com>
In-Reply-To: <20191212134728.18432-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODgzOGU1YmEtNGFjNy00Mzc4LWE5NjQtNGUxNzM5MTA5MmE5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiI4b3RBT1pGZHowZlZQUXN6WUF3UzNrdThpcDl0aHdoeHZrSmVQN1NyTU9PNzA3VE52bGRWbHBIMEtwcEorWEFGIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/2] drm/i915/dsc: fix DSC power domains for
 DSI
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMTIsIDIwMTkgNzox
NyBQTQ0KPiBUbzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTb3V6YSwgSm9zZSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+OyBOYXZhcmUsIE1hbmFzaSBEDQo+IDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
PjsgS3Vsa2FybmksIFZhbmRpdGENCj4gPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBbUEFUQ0ggMy8yXSBkcm0vaTkxNS9kc2M6IGZpeCBEU0MgcG93ZXIgZG9tYWlucyBm
b3IgRFNJDQo+IA0KPiBGaXggc2V2ZXJhbCBpc3N1ZXMgd2l0aCBEU0MgcG93ZXIgZG9tYWlucyB0
aGF0IGRpZCBub3QgdGFrZSBEU0kgdHJhbnNjb2RlcnMNCj4gaW50byBhY2NvdW50Og0KPiANCj4g
LSBPbiBUR0wrIHdlIG5lZWQgdG8gdXNlIFBXMiBmb3IgRFNDIG9uIHBpcGUgQSwgbm90IHRyYW5z
Y29kZXIgQS4gVGhlcmUNCj4gICBpcyBubyBsb25nZXIgYW4gZURQIHRyYW5zY29kZXIsIGJ1dCB0
aGVyZSBhcmUgdHdvIERTSSB0cmFuc2NvZGVycw0KPiAgIHdoaWNoIG1heSBiZSBjb25uZWN0ZWQg
dG8gcGlwZSBBLg0KPiANCj4gLSBPbiBUR0wrIHdlIG5lZWQgdG8gdXNlIHRoZSBwaXBlLCBub3Qg
dHJhbnNjb2RlciwgcG93ZXIgZG9tYWlucyBmb3IgRFNDDQo+ICAgb24gcGlwZXMgb3RoZXIgdGhh
biBBLiBBZ2FpbiwgdGhlcmUgYXJlIERTSSB0cmFuc2NvZGVycy4NCj4gDQo+IC0gT24gSUNMIHdl
IG5lZWQgdG8gdXNlIFBXMiBmb3IgRFNDIGFsc28gZm9yIERTSSB0cmFuc2NvZGVycywgbm90IGp1
c3QNCj4gICBmb3IgdGhlIGVEUCB0cmFuc2NvZGVyLg0KPiANCj4gVXNpbmcgaXNfcGlwZV9kc2Mo
KSBhbHNvIGFkZHMgdGhlIHdhcm5pbmcgYWJvdXQgSUNMIHBpcGUgQSBEU0MsIHdoaWNoIGRvZXMN
Cj4gbm90IGV4aXN0Lg0KPiANCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4NCj4gQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29t
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIHwgMjgg
KysrKysrKysrKysrLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspLCAxMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdmRzYy5jDQo+IGluZGV4IDQxNzE4ZjcyMTQ4NC4uNmJhYjA4ZGI1ZDc1IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBAQCAtNDY5
LDI1ICs0NjksMjcgQEAgaW50IGludGVsX2RzY19jb21wdXRlX3BhcmFtcyhzdHJ1Y3QNCj4gaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwgIGVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4NCj4g
aW50ZWxfZHNjX3Bvd2VyX2RvbWFpbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkgIHsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUo
Y3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOw0KPiAtCWVudW0gdHJhbnNjb2RlciBjcHVfdHJh
bnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiArCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiArCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+
ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiANCj4gIAkvKg0KPiAtCSAqIE9uIElD
TCBWRFNDL2pvaW5pbmcgZm9yIGVEUCB0cmFuc2NvZGVyIHVzZXMgYSBzZXBhcmF0ZSBwb3dlcg0K
PiB3ZWxsLA0KPiAtCSAqIFBXMi4gVGhpcyByZXF1aXJlcyBQT1dFUl9ET01BSU5fVFJBTlNDT0RF
Ul9WRFNDX1BXMg0KPiBwb3dlciBkb21haW4uDQo+IC0JICogRm9yIGFueSBvdGhlciB0cmFuc2Nv
ZGVyLCBWRFNDL2pvaW5pbmcgdXNlcyB0aGUgcG93ZXIgd2VsbA0KPiBhc3NvY2lhdGVkDQo+IC0J
ICogd2l0aCB0aGUgcGlwZS90cmFuc2NvZGVyIGluIHVzZS4gSGVuY2UgYW5vdGhlciByZWZlcmVu
Y2Ugb24gdGhlDQo+IC0JICogdHJhbnNjb2RlciBwb3dlciBkb21haW4gd2lsbCBzdWZmaWNlLg0K
PiArCSAqIFZEU0Mvam9pbmluZyB1c2VzIGEgc2VwYXJhdGUgcG93ZXIgd2VsbCwgUFcyLCBhbmQg
cmVxdWlyZXMNCj4gKwkgKiBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9WRFNDX1BXMiBwb3dlciBk
b21haW4gaW4gdHdvDQo+IGNhc2VzOg0KPiAgCSAqDQo+IC0JICogT24gVEdMIHdlIGhhdmUgdGhl
IHNhbWUgbWFwcGluZywgYnV0IGZvciB0cmFuc2NvZGVyIEEgKHRoZQ0KPiBzcGVjaWFsDQo+IC0J
ICogVFJBTlNDT0RFUl9FRFAgaXMgZ29uZSkuDQoNCkNvbW1lbnQgaW4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmggd2hlcmUgDQpQT1dFUl9ET01BSU5f
VFJBTlNDT0RFUl9WRFNDX1BXMiBpcyBkZWZpbmVkIG1pc3NlcyBEU0kgdHJhbnNjb2Rlci4NCg0K
UmVzdCBhbGwgbG9va3MgZ29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGthcm5p
IDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4NCg0KVGhhbmtzLA0KVmFuZGl0YQ0KDQo+ICsJ
ICogIC0gSUNMIGVEUC9EU0kgdHJhbnNjb2Rlcg0KPiArCSAqICAtIFRHTCBwaXBlIEENCj4gKwkg
Kg0KPiArCSAqIEZvciBhbnkgb3RoZXIgcGlwZSwgVkRTQy9qb2luaW5nIHVzZXMgdGhlIHBvd2Vy
IHdlbGwgYXNzb2NpYXRlZA0KPiB3aXRoDQo+ICsJICogdGhlIHBpcGUgaW4gdXNlLiBIZW5jZSBh
bm90aGVyIHJlZmVyZW5jZSBvbiB0aGUgcGlwZSBwb3dlcg0KPiBkb21haW4NCj4gKwkgKiB3aWxs
IHN1ZmZpY2UuIChFeGNlcHQgbm8gVkRTQy9qb2luaW5nIG9uIElDTCBwaXBlIEEuKQ0KPiAgCSAq
Lw0KPiAtCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTIgJiYgY3B1X3RyYW5zY29kZXIgPT0gVFJB
TlNDT0RFUl9BKQ0KPiAtCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfVkRTQ19QVzI7
DQo+IC0JZWxzZSBpZiAoY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9FRFApDQo+ICsJaWYg
KElOVEVMX0dFTihpOTE1KSA+PSAxMiAmJiBwaXBlID09IFBJUEVfQSkNCj4gIAkJcmV0dXJuIFBP
V0VSX0RPTUFJTl9UUkFOU0NPREVSX1ZEU0NfUFcyOw0KPiArCWVsc2UgaWYgKGlzX3BpcGVfZHNj
KGNydGNfc3RhdGUpKQ0KPiArCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1BJUEUocGlwZSk7DQo+ICAJ
ZWxzZQ0KPiAtCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVIoY3B1X3RyYW5zY29kZXIp
Ow0KPiArCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfVkRTQ19QVzI7DQo+ICB9DQo+
IA0KPiAgc3RhdGljIHZvaWQgaW50ZWxfZHNjX3Bwc19jb25maWd1cmUoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQo+IC0tDQo+IDIuMjAuMQ0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
