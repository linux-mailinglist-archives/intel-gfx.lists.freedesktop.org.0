Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1108767432
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 19:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8117288905;
	Fri, 12 Jul 2019 17:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D3B6E2FD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 17:29:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 10:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="318060297"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga004.jf.intel.com with ESMTP; 12 Jul 2019 10:29:17 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 10:29:17 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.65]) by
 ORSMSX113.amr.corp.intel.com ([169.254.9.128]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 10:29:16 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/dp/dsc: Add Support for all BPCs
 supported by TGL
Thread-Index: AQHVN3XgaS/NE0RWdkCpCIqOf1+/bqbF5LuAgAA8o4CAAR3+IA==
Date: Fri, 12 Jul 2019 17:29:16 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073481002F9@ORSMSX108.amr.corp.intel.com>
References: <20190710230921.21015-1-anusha.srivatsa@intel.com>
 <20190711134717.GV5942@intel.com> <20190711172418.GA6706@intel.com>
In-Reply-To: <20190711172418.GA6706@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWNkYWRlNmYtN2EzYi00YmFhLTkyNmItNDczZDJiNDAyZGE5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiK2Eya1BlM3Y5RGNkRGZOV0dMV1Z4Yld3aGZyazJ3R0RPK3VnZGFLOFVkVjVDOVdrZUYxRlpuMk5tQlloNjJXTSJ9
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/dp/dsc: Add Support for all BPCs
 supported by TGL
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IE5hdmFyZSwgTWFuYXNpIEQKPlNl
bnQ6IFRodXJzZGF5LCBKdWx5IDExLCAyMDE5IDEwOjI0IEFNCj5UbzogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPkNjOiBTcml2YXRzYSwgQW51c2hhIDxh
bnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPjsgaW50ZWwtCj5nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj5TdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vZHAvZHNjOiBBZGQgU3Vw
cG9ydCBmb3IgYWxsIEJQQ3Mgc3VwcG9ydGVkCj5ieSBUR0wKPgo+T24gVGh1LCBKdWwgMTEsIDIw
MTkgYXQgMDQ6NDc6MTdQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+PiBPbiBXZWQs
IEp1bCAxMCwgMjAxOSBhdCAwNDowOToyMVBNIC0wNzAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
Cj4+ID4gRFNDIGVuZ2luZSBvbiBJQ0wgc3VwcG9ydHMgb25seSA4IGFuZCAxMCBCUEMgYXMgdGhl
IGlucHV0IEJQQy4gQnV0Cj4+ID4gRFNDIGVuZ2luZSBpbiBUR0wgc3VwcG9ydHMgOCwgMTAgYW5k
IDEyIEJQQy4KPj4gPiBBZGQgMTIgQlBDIHN1cHBvcnQgZm9yIERTQyB3aGlsZSBjYWxjdWxhdGlu
ZyBjb21wcmVzc2lvbgo+PiA+IGNvbmZpZ3VyYXRpb24uCj4+ID4KPj4gPiBDYzogTWFuYXNpIE5h
dmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBBbnVz
aGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4+ID4gLS0tCj4+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDkgKysrKysrKy0tCj4+ID4g
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+ID4KPj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPj4gPiBpbmRleCAw
YmRiN2VjYzVhODEuLmNkMDg5NjQzYzgwZCAxMDA2NDQKPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKPj4gPiBAQCAtNzEsNiArNzEsNyBAQAo+PiA+ICAjZGVmaW5l
IERQX0RTQ19NQVhfU01BTExfSk9JTkVSX1JBTV9CVUZGRVIJNjE0NDAKPj4gPiAgI2RlZmluZSBE
UF9EU0NfTUlOX1NVUFBPUlRFRF9CUEMJCTgKPj4gPiAgI2RlZmluZSBEUF9EU0NfTUFYX1NVUFBP
UlRFRF9CUEMJCTEwCj4+ID4gKyNkZWZpbmUgVEdMX0RQX0RTQ19NQVhfU1VQUE9SVEVEX0JQQwkJ
MTIKPj4KPj4gVGhlc2UgZGVmaW5lcyBhcmVuJ3QgZG9pbmcgYW55IGdvb2QgSU1PLiBJJ2QganVz
dCBudWtlIHRoZW0uCj4KPlNvIGp1c3QgcmVtb3ZlIGFsbCB0aGUgI2RlZmluZXMgYW5kIHVzZSB0
aGUgdmFsdWVzIGRpcmVjdGx5PwoKV29udCBpdCBtYWtlIGl0IGxlc3MgcmVhZGFibGU/Cgo+Pgo+
PiA+Cj4+ID4gIC8qIERQIERTQyB0aHJvdWdocHV0IHZhbHVlcyB1c2VkIGZvciBzbGljZSBjb3Vu
dCBjYWxjdWxhdGlvbnMgS1BpeGVscy9zICovCj4+ID4gICNkZWZpbmUgRFBfRFNDX1BFQUtfUElY
RUxfUkFURQkJCTI3MjAwMDAKPj4gPiBAQCAtMTkxMSw4ICsxOTEyLDEyIEBAIHN0YXRpYyBpbnQg
aW50ZWxfZHBfZHNjX2NvbXB1dGVfY29uZmlnKHN0cnVjdAo+aW50ZWxfZHAgKmludGVsX2RwLAo+
PiA+ICAJaWYgKCFpbnRlbF9kcF9zdXBwb3J0c19kc2MoaW50ZWxfZHAsIHBpcGVfY29uZmlnKSkK
Pj4gPiAgCQlyZXR1cm4gLUVJTlZBTDsKPj4gPgo+PiA+IC0JZHNjX21heF9icGMgPSBtaW5fdCh1
OCwgRFBfRFNDX01BWF9TVVBQT1JURURfQlBDLAo+PiA+IC0JCQkgICAgY29ubl9zdGF0ZS0+bWF4
X3JlcXVlc3RlZF9icGMpOwo+PiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPiAxMSkKPj4K
Pj4gTW9yZSBjdXN0b21hcmlseSA+PSAxMgo+Cj5JIGFncmVlCgpNYWtlcyBzZW5zZS4KCkFudXNo
YSAKPk1hbmFzaQo+Cj4+Cj4+ID4gKwkJZHNjX21heF9icGMgPSBtaW5fdCh1OCwgVEdMX0RQX0RT
Q19NQVhfU1VQUE9SVEVEX0JQQywKPj4gPiArCQkJCSAgICBjb25uX3N0YXRlLT5tYXhfcmVxdWVz
dGVkX2JwYyk7Cj4+ID4gKwllbHNlCj4+ID4gKwkJZHNjX21heF9icGMgPSBtaW5fdCh1OCwgRFBf
RFNDX01BWF9TVVBQT1JURURfQlBDLAo+PiA+ICsJCQkJICAgIGNvbm5fc3RhdGUtPm1heF9yZXF1
ZXN0ZWRfYnBjKTsKPj4gPgo+PiA+ICAJcGlwZV9icHAgPSBpbnRlbF9kcF9kc2NfY29tcHV0ZV9i
cHAoaW50ZWxfZHAsIGRzY19tYXhfYnBjKTsKPj4gPiAgCWlmIChwaXBlX2JwcCA8IERQX0RTQ19N
SU5fU1VQUE9SVEVEX0JQQyAqIDMpIHsKPj4gPiAtLQo+PiA+IDIuMjEuMAo+PiA+Cj4+ID4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gPiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiA+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cj4+Cj4+IC0tCj4+IFZpbGxlIFN5cmrDpGzDpAo+PiBJbnRlbAo+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
