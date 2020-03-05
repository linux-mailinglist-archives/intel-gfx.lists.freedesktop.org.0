Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5501517B250
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 00:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AC206E3D3;
	Thu,  5 Mar 2020 23:40:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B32C76E3D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 23:40:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 15:40:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,519,1574150400"; d="scan'208";a="240993906"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 05 Mar 2020 15:39:58 -0800
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Mar 2020 15:39:57 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.121]) with mapi id 14.03.0439.000;
 Thu, 5 Mar 2020 15:39:57 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/tgl: Don't treat unslice registers as masked
Thread-Index: AQHV8yw2xPH60tuiiUSoD3Y+f/5cN6g7LsqA
Date: Thu, 5 Mar 2020 23:39:56 +0000
Message-ID: <b8a27d7ef1b3d0550c2a204f1fa95f9a6333b573.camel@intel.com>
References: <20200305202435.1284242-1-matthew.d.roper@intel.com>
In-Reply-To: <20200305202435.1284242-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <E5B0EF4E1F4CB34BBA2FA41AF913B7DE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Don't treat unslice registers
 as masked
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
Cc: "ndesaulniers@google.com" <ndesaulniers@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTAzLTA1IGF0IDEyOjI0IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBU
aGUgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUgYW5kIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtH
QVRFMg0KPiByZWdpc3RlcnMNCj4gdGhhdCB3ZSB1cGRhdGUgaW4gYSBmZXcgZW5naW5lIHdvcmth
cm91bmRzIGFyZSBub3QgbWFza2VkIHJlZ2lzdGVycw0KPiAoaS5lLiwgd2UgZG9uJ3QgaGF2ZSB0
byB3cml0ZSBhIG1hc2sgYml0IGluIHRoZSB0b3AgMTYgYml0cyB3aGVuDQo+IHVwZGF0aW5nIG9u
ZSBvZiB0aGUgbG93ZXIgMTYgYml0cykuICBBcyBzdWNoLCB0aGVzZSB3b3JrYXJvdW5kcw0KPiBz
aG91bGQNCj4gYmUgYXBwbGllZCB2aWEgd2Ffd3JpdGVfb3IoKSByYXRoZXIgdGhhbiB3YV9tYXNr
ZWRfZW4oKQ0KDQpUaGFua3MgTmljayBmb3Igc3BvdHRpbmcgYW5kIE1hdHQgZm9yIGZpeGluZyBp
dCwgZGlkIG5vdCBub3RpY2UgdGhpcw0KZGlmZmVyZW5jZSB1cCB0byBrbm93Lg0KDQoNClJldmll
d2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0K
PiANCj4gUmVwb3J0ZWQtYnk6IE5pY2sgRGVzYXVsbmllcnMgPG5kZXNhdWxuaWVyc0Bnb29nbGUu
Y29tPg0KPiBGaXhlczogNTAxNDhhMjVmODQxICgiZHJtL2k5MTUvdGdsOiBNb3ZlIGFuZCByZXN0
cmljdCBXYV8xNDA4NjE1MDcyIikNCj4gRml4ZXM6IDM1NTFmZjkyODc0NCAoImRybS9pOTE1L2dl
bjExOiBNb3ZpbmcgV0FzIHRvDQo+IHJjc19lbmdpbmVfd2FfaW5pdCgpIikNCj4gQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAxMiArKysrKystLS0tLS0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gaW5k
ZXggOTA4YTcwOTE0Mzk5Li5iNDc4NTIxMmZiN2QgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBAQCAtMTM4Miw4ICsxMzgyLDggQEAgcmNz
X2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MNCj4gKmVuZ2luZSwgc3RydWN0
IGk5MTVfd2FfbGlzdCAqd2FsKQ0KPiAgCQl3YV9tYXNrZWRfZW4od2FsLCBHRU45X1JPV19DSElD
S0VONCwNCj4gR0VOMTJfRElTQUJMRV9URExfUFVTSCk7DQo+ICANCj4gIAkJLyogV2FfMTQwODYx
NTA3Mjp0Z2wgKi8NCj4gLQkJd2FfbWFza2VkX2VuKHdhbCwgVU5TTElDRV9VTklUX0xFVkVMX0NM
S0dBVEUyLA0KPiAtCQkJICAgICBWU1VOSVRfQ0xLR0FURV9ESVNfVEdMKTsNCj4gKwkJd2Ffd3Jp
dGVfb3Iod2FsLCBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURTIsDQo+ICsJCQkgICAgVlNVTklU
X0NMS0dBVEVfRElTX1RHTCk7DQo+ICAJfQ0KPiAgDQo+ICAJaWYgKElTX1RJR0VSTEFLRShpOTE1
KSkgew0KPiBAQCAtMTQ2NywxMiArMTQ2NywxMiBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0
IGludGVsX2VuZ2luZV9jcw0KPiAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpDQo+
ICAJCSAqIFdhXzE0MDg2MTUwNzI6aWNsLGVobCAgKHZzdW5pdCkNCj4gIAkJICogV2FfMTQwNzU5
NjI5NDppY2wsZWhsICAoaHN1bml0KQ0KPiAgCQkgKi8NCj4gLQkJd2FfbWFza2VkX2VuKHdhbCwg
VU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUsDQo+IC0JCQkgICAgIFZTVU5JVF9DTEtHQVRFX0RJ
UyB8IEhTVU5JVF9DTEtHQVRFX0RJUyk7DQo+ICsJCXdhX3dyaXRlX29yKHdhbCwgVU5TTElDRV9V
TklUX0xFVkVMX0NMS0dBVEUsDQo+ICsJCQkgICAgVlNVTklUX0NMS0dBVEVfRElTIHwgSFNVTklU
X0NMS0dBVEVfRElTKTsNCj4gIA0KPiAgCQkvKiBXYV8xNDA3MzUyNDI3OmljbCxlaGwgKi8NCj4g
LQkJd2FfbWFza2VkX2VuKHdhbCwgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyLA0KPiAtCQkJ
ICAgICBQU0RVTklUX0NMS0dBVEVfRElTKTsNCj4gKwkJd2Ffd3JpdGVfb3Iod2FsLCBVTlNMSUNF
X1VOSVRfTEVWRUxfQ0xLR0FURTIsDQo+ICsJCQkgICAgUFNEVU5JVF9DTEtHQVRFX0RJUyk7DQo+
ICANCj4gIAkJLyogV2FfMTQwNjY4MDE1OTppY2wsZWhsICovDQo+ICAJCXdhX3dyaXRlX29yKHdh
bCwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
