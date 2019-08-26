Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD329D537
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 19:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9486789CB2;
	Mon, 26 Aug 2019 17:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2944489CB2
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 17:51:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 10:51:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="264017216"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga001.jf.intel.com with ESMTP; 26 Aug 2019 10:51:34 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 26 Aug 2019 10:51:34 -0700
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.122]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.42]) with mapi id 14.03.0439.000;
 Mon, 26 Aug 2019 10:51:33 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 28/28] drm/i915: Replace hangcheck by heartbeats
Thread-Index: AQHVW98kLLB16M71Pk2+Av4h+4NXZacNcGjwgACrngD//5ixoA==
Date: Mon, 26 Aug 2019 17:51:32 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68B3D985E@fmsmsx120.amr.corp.intel.com>
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
 <20190826072149.9447-28-chris@chris-wilson.co.uk>
 <AD48BB7FB99B174FBCC69E228F58B3B68B3D9198@fmsmsx120.amr.corp.intel.com>
 <156683859276.14306.6988350986402734188@skylake-alporthouse-com>
In-Reply-To: <156683859276.14306.6988350986402734188@skylake-alporthouse-com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWNmMmVjYmQtZDllZC00ZGFjLWI1ZjYtYWY3M2RkMTc0MTA3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNTVLczZRTExRWDFZb1pVcE5xclwvR2hJbWx5NHE5cm1UcHRHQWdlVUdcL2k4dzh2SzJ5aWg3T2NtcElqK1BQUzErIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 28/28] drm/i915: Replace hangcheck by
 heartbeats
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4NCj4gU2VudDogTW9uZGF5LCBBdWd1c3QgMjYsIDIwMTkgOTo1
NyBBTQ0KPiBUbzogQmxvb21maWVsZCwgSm9uIDxqb24uYmxvb21maWVsZEBpbnRlbC5jb20+OyBp
bnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogSm9vbmFzIExhaHRpbmVu
IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgVXJzdWxpbiwgVHZydGtvDQo+IDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggMjgvMjhdIGRy
bS9pOTE1OiBSZXBsYWNlIGhhbmdjaGVjayBieSBoZWFydGJlYXRzDQo+IA0KPiA+IElzbid0IGVu
Z2luZS0+aGVhcnRiZWF0IG5vdyBOVUxMIGluIHNvbWUgY2FzZXM/DQo+IA0KPiBlbmdpbmUtPmhl
YXJ0YmVhdCwgdGhlIHdvcmtlcg0KPiB2cw0KPiBlbmdpbmUtPmxhc3RfaGVhcnRiZWF0DQo+IA0K
RG9oIQ0KDQo+IE1heWJlLA0KPiANCj4gc3RydWN0IGludGVsX2VuZ2luZV9oZWFydGJlYXQgew0K
PiAJd29yazsNCj4gCXN5c3RvbGU7DQo+IH07DQo+IA0KPiANCj4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dldHBhcmFtLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jDQo+ID4gPiBpbmRleCA1ZDkxMDEzNzZhM2QuLmU2YzM1
MTA4MDU5MyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2V0
cGFyYW0uYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5j
DQo+ID4gPiBAQCAtNzgsOCArNzgsNyBAQCBpbnQgaTkxNV9nZXRwYXJhbV9pb2N0bChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LCB2b2lkDQo+ID4gPiAqZGF0YSwNCj4gPiA+ICAgICAgICAgICAgICAg
ICAgICAgICByZXR1cm4gLUVOT0RFVjsNCj4gPiA+ICAgICAgICAgICAgICAgYnJlYWs7DQo+ID4g
PiAgICAgICBjYXNlIEk5MTVfUEFSQU1fSEFTX0dQVV9SRVNFVDoNCj4gPiA+IC0gICAgICAgICAg
ICAgdmFsdWUgPSBpOTE1X21vZHBhcmFtcy5lbmFibGVfaGFuZ2NoZWNrICYmDQo+ID4gPiAtICAg
ICAgICAgICAgICAgICAgICAgaW50ZWxfaGFzX2dwdV9yZXNldChpOTE1KTsNCj4gPiA+ICsgICAg
ICAgICAgICAgdmFsdWUgPSBpbnRlbF9oYXNfZ3B1X3Jlc2V0KGk5MTUpOw0KPiA+DQo+ID4gRG9u
J3QgdW5kZXJzdGFuZCB0aGlzIHR3ZWFrLiBXZSBoYXZlbid0IHJlYWxseSBjaGFuZ2VkIHRoZSBl
c3NlbmNlIG9mDQo+IGhhbmdjaGVjaywganVzdCBpbXByb3ZlZCBpdCwgc28gd2h5IGRvIHdlIGNo
YW5nZSB0aGlzIGdldF9wYXJhbT8NCj4gDQo+IEkgZGVsZXRlZCB0aGUgbW9kcGFyYW0gaW4gZWFy
bGllciBwYXRjaGVzLiBCdXQgYW50aWNpcGF0ZWQgeW91IHdvdWxkDQo+IG9iamVjdC4uLg0KDQpP
aywgSSBzZWUuIEJ1dCB0aGVuIHNob3VsZG4ndCB3ZSBqdXN0IGJlIGNoZWNraW5nIHRoZSBuZXcg
cGFyYW0gZm9yIGEgbm9uLXplcm8gdGltZW91dD8gVGhhdCB3b3VsZCB0aGVuIGJlIGVxdWl2YWxl
bnQuDQpPciwgaXQgc2VlbXMgZmFpciB0byBjb25jbHVkZSB0aGF0IHRoaXMgbmV2ZXIgbWFkZSBz
ZW5zZSwgYnV0IHRoZW4gaXQgcmVhbGx5IG91Z2h0IHRvIGJlIGEgc2VwYXJhdGUgcGF0Y2ggdG8g
cmVtb3ZlIHRoZSBhc3NvY2lhdGlvbiBiZXR3ZWVuIEhBU19HUFVfUkVTRVQgYW5kIGhhbmdjaGVj
ay4NCg0KPiAtQ2hyaXMNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
