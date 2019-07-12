Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AF067505
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 20:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33BC6E358;
	Fri, 12 Jul 2019 18:11:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC45B6E33A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 18:11:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 11:11:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,483,1557212400"; d="scan'208";a="160459961"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga008.jf.intel.com with ESMTP; 12 Jul 2019 11:11:07 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 11:11:07 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.65]) by
 ORSMSX112.amr.corp.intel.com ([169.254.3.118]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 11:11:06 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/dp/dsc: Add Support for all BPCs
 supported by TGL
Thread-Index: AQHVN3XgaS/NE0RWdkCpCIqOf1+/bqbF5LuAgAA8o4CAAR3+IIAAdxaA//+UlzA=
Date: Fri, 12 Jul 2019 18:11:06 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B07348100363@ORSMSX108.amr.corp.intel.com>
References: <20190710230921.21015-1-anusha.srivatsa@intel.com>
 <20190711134717.GV5942@intel.com> <20190711172418.GA6706@intel.com>
 <83F5C7385F545743AD4FB2A62F75B073481002F9@ORSMSX108.amr.corp.intel.com>
 <20190712173409.GM5942@intel.com>
In-Reply-To: <20190712173409.GM5942@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDBhMTE0NmItNzJkZC00NjdkLWJhMTYtODEyN2FjYjU1MGI1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSWcrTTNCNGppd1g2MFNzZ3pQWjJ3cEpwM21OT00ra1RVWHB1Tm5WWXBRNnBMeXRjOWZyYzh3ZnZsVnUzS1VSMCJ9
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFZpbGxlIFN5cmrDpGzDpCBbbWFp
bHRvOnZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tXQo+U2VudDogRnJpZGF5LCBKdWx5IDEy
LCAyMDE5IDEwOjM0IEFNCj5UbzogU3JpdmF0c2EsIEFudXNoYSA8YW51c2hhLnNyaXZhdHNhQGlu
dGVsLmNvbT4KPkNjOiBOYXZhcmUsIE1hbmFzaSBEIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29t
PjsgaW50ZWwtCj5nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5TdWJqZWN0OiBSZTogW0ludGVs
LWdmeF0gW1BBVENIXSBkcm0vZHAvZHNjOiBBZGQgU3VwcG9ydCBmb3IgYWxsIEJQQ3Mgc3VwcG9y
dGVkCj5ieSBUR0wKPgo+T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMDU6Mjk6MTZQTSArMDAwMCwg
U3JpdmF0c2EsIEFudXNoYSB3cm90ZToKPj4KPj4KPj4gPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tCj4+ID5Gcm9tOiBOYXZhcmUsIE1hbmFzaSBECj4+ID5TZW50OiBUaHVyc2RheSwgSnVseSAx
MSwgMjAxOSAxMDoyNCBBTQo+PiA+VG86IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4+ID5DYzogU3JpdmF0c2EsIEFudXNoYSA8YW51c2hhLnNyaXZhdHNh
QGludGVsLmNvbT47IGludGVsLQo+PiA+Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiA+U3Vi
amVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2RwL2RzYzogQWRkIFN1cHBvcnQgZm9y
IGFsbCBCUENzCj4+ID5zdXBwb3J0ZWQgYnkgVEdMCj4+ID4KPj4gPk9uIFRodSwgSnVsIDExLCAy
MDE5IGF0IDA0OjQ3OjE3UE0gKzAzMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPj4gPj4gT24g
V2VkLCBKdWwgMTAsIDIwMTkgYXQgMDQ6MDk6MjFQTSAtMDcwMCwgQW51c2hhIFNyaXZhdHNhIHdy
b3RlOgo+PiA+PiA+IERTQyBlbmdpbmUgb24gSUNMIHN1cHBvcnRzIG9ubHkgOCBhbmQgMTAgQlBD
IGFzIHRoZSBpbnB1dCBCUEMuCj4+ID4+ID4gQnV0IERTQyBlbmdpbmUgaW4gVEdMIHN1cHBvcnRz
IDgsIDEwIGFuZCAxMiBCUEMuCj4+ID4+ID4gQWRkIDEyIEJQQyBzdXBwb3J0IGZvciBEU0Mgd2hp
bGUgY2FsY3VsYXRpbmcgY29tcHJlc3Npb24KPj4gPj4gPiBjb25maWd1cmF0aW9uLgo+PiA+PiA+
Cj4+ID4+ID4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4+
ID4+ID4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50
ZWwuY29tPgo+PiA+PiA+IC0tLQo+PiA+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgfCA5ICsrKysrKystLQo+PiA+PiA+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+PiA+PiA+Cj4+ID4+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiA+PiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4+ID4+ID4gaW5kZXggMGJkYjdlY2M1YTgx
Li5jZDA4OTY0M2M4MGQgMTAwNjQ0Cj4+ID4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCj4+ID4+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jCj4+ID4+ID4gQEAgLTcxLDYgKzcxLDcgQEAKPj4gPj4gPiAgI2RlZmlu
ZSBEUF9EU0NfTUFYX1NNQUxMX0pPSU5FUl9SQU1fQlVGRkVSCTYxNDQwCj4+ID4+ID4gICNkZWZp
bmUgRFBfRFNDX01JTl9TVVBQT1JURURfQlBDCQk4Cj4+ID4+ID4gICNkZWZpbmUgRFBfRFNDX01B
WF9TVVBQT1JURURfQlBDCQkxMAo+PiA+PiA+ICsjZGVmaW5lIFRHTF9EUF9EU0NfTUFYX1NVUFBP
UlRFRF9CUEMJCTEyCj4+ID4+Cj4+ID4+IFRoZXNlIGRlZmluZXMgYXJlbid0IGRvaW5nIGFueSBn
b29kIElNTy4gSSdkIGp1c3QgbnVrZSB0aGVtLgo+PiA+Cj4+ID5TbyBqdXN0IHJlbW92ZSBhbGwg
dGhlICNkZWZpbmVzIGFuZCB1c2UgdGhlIHZhbHVlcyBkaXJlY3RseT8KPj4KPj4gV29udCBpdCBt
YWtlIGl0IGxlc3MgcmVhZGFibGU/Cj4KPkl0IHdpbGwgYmUgbW9yZSByZWFkYWJsZSBiZWNhdXNl
IHlvdSBkb24ndCBoYXZlIHRvIGdvIGxvb2tpbmcgZm9yIHRob3NlIGRlZmluZXMuCk9rLiBUaGVu
IHJlbW92ZSBhbGwgI2RlZmluZXMgbGlrZSBNYW5hc2kgcG9pbnRlZCBvdXQ/CgpBbnVzaGEgCj4+
Cj4+ID4+Cj4+ID4+ID4KPj4gPj4gPiAgLyogRFAgRFNDIHRocm91Z2hwdXQgdmFsdWVzIHVzZWQg
Zm9yIHNsaWNlIGNvdW50IGNhbGN1bGF0aW9ucyBLUGl4ZWxzL3MgKi8KPj4gPj4gPiAgI2RlZmlu
ZSBEUF9EU0NfUEVBS19QSVhFTF9SQVRFCQkJMjcyMDAwMAo+PiA+PiA+IEBAIC0xOTExLDggKzE5
MTIsMTIgQEAgc3RhdGljIGludAo+PiA+PiA+IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhz
dHJ1Y3QKPj4gPmludGVsX2RwICppbnRlbF9kcCwKPj4gPj4gPiAgCWlmICghaW50ZWxfZHBfc3Vw
cG9ydHNfZHNjKGludGVsX2RwLCBwaXBlX2NvbmZpZykpCj4+ID4+ID4gIAkJcmV0dXJuIC1FSU5W
QUw7Cj4+ID4+ID4KPj4gPj4gPiAtCWRzY19tYXhfYnBjID0gbWluX3QodTgsIERQX0RTQ19NQVhf
U1VQUE9SVEVEX0JQQywKPj4gPj4gPiAtCQkJICAgIGNvbm5fc3RhdGUtPm1heF9yZXF1ZXN0ZWRf
YnBjKTsKPj4gPj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID4gMTEpCj4+ID4+Cj4+ID4+
IE1vcmUgY3VzdG9tYXJpbHkgPj0gMTIKPj4gPgo+PiA+SSBhZ3JlZQo+Pgo+PiBNYWtlcyBzZW5z
ZS4KPj4KPj4gQW51c2hhCj4+ID5NYW5hc2kKPj4gPgo+PiA+Pgo+PiA+PiA+ICsJCWRzY19tYXhf
YnBjID0gbWluX3QodTgsIFRHTF9EUF9EU0NfTUFYX1NVUFBPUlRFRF9CUEMsCj4+ID4+ID4gKwkJ
CQkgICAgY29ubl9zdGF0ZS0+bWF4X3JlcXVlc3RlZF9icGMpOwo+PiA+PiA+ICsJZWxzZQo+PiA+
PiA+ICsJCWRzY19tYXhfYnBjID0gbWluX3QodTgsIERQX0RTQ19NQVhfU1VQUE9SVEVEX0JQQywK
Pj4gPj4gPiArCQkJCSAgICBjb25uX3N0YXRlLT5tYXhfcmVxdWVzdGVkX2JwYyk7Cj4+ID4+ID4K
Pj4gPj4gPiAgCXBpcGVfYnBwID0gaW50ZWxfZHBfZHNjX2NvbXB1dGVfYnBwKGludGVsX2RwLCBk
c2NfbWF4X2JwYyk7Cj4+ID4+ID4gIAlpZiAocGlwZV9icHAgPCBEUF9EU0NfTUlOX1NVUFBPUlRF
RF9CUEMgKiAzKSB7Cj4+ID4+ID4gLS0KPj4gPj4gPiAyLjIxLjAKPj4gPj4gPgo+PiA+PiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+ID4+ID4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiA+PiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPj4gPj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo+PiA+Pgo+PiA+PiAtLQo+PiA+PiBWaWxsZSBTeXJqw6Rsw6QKPj4gPj4gSW50
ZWwKPj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiA+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4+ID4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cj4KPi0tCj5WaWxsZSBTeXJqw6Rsw6QKPkludGVsCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
