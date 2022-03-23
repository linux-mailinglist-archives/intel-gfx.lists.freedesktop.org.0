Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0B04E55AA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4250F10E70F;
	Wed, 23 Mar 2022 15:48:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DBA110E70F
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 15:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648050537; x=1679586537;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=uichaMi4rnIcvoOHSC1WHptZkfbh9hNQLU6oWDLGS8k=;
 b=WbusZ+qqpOh/6mzd+ulijaYlgezf2X7oatmm3Fz+33erc/OozHo6snxZ
 F82OalJnEAjLikXimfp/EQYeaxx5E2mEqZOVO595iqqMAQ8IgBKEY1pL6
 Z0jmzf088hjKyTSJ8ShpubNwupAs1sXFN6qEI5mxRIF37gKTIbXvRumKq
 dCP9yDYkGKHdN+NUyxudkHqBwLDM8OE7VgEdVXs+j3Y0TDVC0T8aIOoL7
 5SQ2Z7E9P5o+9LijUnrUizqCSjCm+prKwJqAd+vGIS+SF84E3wWLVL4kF
 scguVbCbCJkuz0e3l9rK8rECYInV0FAas0qAnIa4nDIiVRbEGMLFcElXy g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="344574135"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="344574135"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 08:47:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="601340754"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by fmsmga008.fm.intel.com with ESMTP; 23 Mar 2022 08:47:17 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 23 Mar 2022 15:47:16 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Wed, 23 Mar 2022 08:47:15 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "markpearson@lenovo.com" <markpearson@lenovo.com>
Thread-Topic: [Intel-gfx] [External] Re: drm/i915/adl_p: Increase CDCLK by 15%
 if PSR2 is used
Thread-Index: AQHYPsxVTjAcs2q6qkWhy4tVO4qvIKzNkp+A
Date: Wed, 23 Mar 2022 15:47:15 +0000
Message-ID: <84677dba2d1e136e45bdbae0e85f41e06e4b2e64.camel@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
 <9e70bec0-66b6-9ac7-1b5d-9d8679700523@lenovo.com>
 <20220322141809.GA31222@intel.com>
 <32a6c091-a30c-d8a1-6dd5-d86ce7314051@lenovo.com>
In-Reply-To: <32a6c091-a30c-d8a1-6dd5-d86ce7314051@lenovo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <9E0A6956902CC54AA6E0056317A9BDC4@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [External] Re: drm/i915/adl_p: Increase CDCLK by
 15% if PSR2 is used
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWFyaw0KDQpTZWUgY29tbWVudCBiZWxvdy4NCg0KT24gVHVlLCAyMDIyLTAzLTIyIGF0IDEw
OjIzIC0wNDAwLCBNYXJrIFBlYXJzb24gd3JvdGU6DQo+IFRoYW5rcyBTdGFuaXNsYXYsDQo+IA0K
PiBPbiAzLzIyLzIyIDEwOjE4LCBMaXNvdnNraXksIFN0YW5pc2xhdiB3cm90ZToNCj4gPiBPbiBU
dWUsIE1hciAyMiwgMjAyMiBhdCAwOTo1NTozNUFNIC0wNDAwLCBNYXJrIFBlYXJzb24gd3JvdGU6
DQo+ID4gPiBIaSwNCj4gPiA+IA0KPiA+ID4gT24gMy8yMS8yMiAwNjo0OSwgU3RhbmlzbGF2IExp
c292c2tpeSB3cm90ZToNCj4gPiA+ID4gV2UgYXJlIGN1cnJlbnRseSBnZXR0aW5nIEZJRk8gdW5k
ZXJydW5zLCBpbiBwYXJ0aWN1bGFyDQo+ID4gPiA+IHdoZW4gUFNSMiBpcyBlbmFibGVkLiBUaGVy
ZSBzZWVtIHRvIGJlIG5vIGV4aXN0aW5nIHdvcmthcm91bmQNCj4gPiA+ID4gb3IgcGF0Y2hlcywg
d2hpY2ggY2FuIGZpeCB0aGF0IGlzc3VlKHdlcmUgZXhwZWN0aW5nIHNvbWUgcmVjZW50DQo+ID4g
PiA+IHNlbGVjdGl2ZSBmZXRjaCB1cGRhdGUgYW5kIERCdWYgYncvU0FHViBmaXhlcyB0byBoZWxw
LA0KPiA+ID4gPiB3aGljaCB1bmZvcnR1bmF0ZWx5IGRpZG4ndCkuDQo+ID4gPiA+IEN1cnJlbnQg
aWRlYSBpcyB0aGF0IGl0IGxvb2tzIGxpa2UgZm9yIHNvbWUgcmVhc29uIHRoZQ0KPiA+ID4gPiBE
QnVmIHByZWZpbGwgdGltZSBpc24ndCBlbm91Z2ggb25jZSB3ZSBleGl0IFBTUjIsIGRlc3BpdGUg
aXRzDQo+ID4gPiA+IHRoZW9yZXRpY2FsbHkgY29ycmVjdC4NCj4gPiA+ID4gU28gYnVtcCBpdCB1
cCBhIGJpdCBieSAxNSUobWluaW11bSBleHBlcmltZW50YWwgYW1vdW50IHJlcXVpcmVkDQo+ID4g
PiA+IHRvIGdldCBpdCB3b3JraW5nKSwgaWYgUFNSMiBpcyBlbmFibGVkLg0KPiA+ID4gPiBGb3Ig
UFNSMSB0aGVyZSBpcyBubyBuZWVkIGluIHRoaXMgaGFjaywgc28gd2UgbGltaXQgaXQgb25seQ0K
PiA+ID4gPiB0byBQU1IyIGFuZCBBbGRlcmxha2UuDQo+ID4gPiA+IA0KPiA+ID4gPiB2MjogLSBB
ZGRlZCBjb21tZW50KEpvc2UgU291emEpDQo+ID4gPiA+ICAgICAtIEZpeGVkIDE1JSBjYWxjdWxh
dGlvbihKb3NlIFNvdXphKQ0KPiA+ID4gPiANCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU3Rhbmlz
bGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+ID4gPiA+IC0t
LQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwg
MjYgKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGlu
c2VydGlvbnMoKykNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+ID4gaW5kZXggODg4OGZkYThiNzAxLi45MmQ1Nzg2OTk4
M2EgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYw0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmMNCj4gPiA+ID4gQEAgLTIzMjUsNiArMjMyNSwzMiBAQCBpbnQgaW50ZWxfY3J0
Y19jb21wdXRlX21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkNCj4gPiA+ID4gIAkJCQkJZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxKSk7DQo+ID4gPiA+
ICAJfQ0KPiA+ID4gPiAgDQo+ID4gPiA+ICsNCj4gPiA+ID4gKwkvKg0KPiA+ID4gPiArCSAqIEhB
Q0suICBXZSBhcmUgZ2V0dGluZyBGSUZPIHVuZGVycnVucywgaW4gcGFydGljdWxhcg0KPiA+ID4g
PiArCSAqIHdoZW4gUFNSMiBpcyBlbmFibGVkLiBUaGVyZSBzZWVtIHRvIGJlIG5vIGV4aXN0aW5n
IHdvcmthcm91bmQNCj4gPiA+ID4gKwkgKiBvciBwYXRjaGVzIGFzIG9mIG5vdy4NCj4gPiA+ID4g
KwkgKiBDdXJyZW50IGlkZWEgaXMgdGhhdCBpdCBsb29rcyBsaWtlIGZvciBzb21lIHJlYXNvbiB0
aGUNCj4gPiA+ID4gKwkgKiBEQnVmIHByZWZpbGwgdGltZSBpc24ndCBlbm91Z2ggb25jZSB3ZSBl
eGl0IFBTUjIsIGRlc3BpdGUgaXRzDQo+ID4gPiA+ICsJICogdGhlb3JldGljYWxseSBjb3JyZWN0
Lg0KPiA+ID4gPiArCSAqIFNvIGJ1bXAgaXQgdXAgYSBiaXQgYnkgMTUlKG1pbmltdW0gZXhwZXJp
bWVudGFsIGFtb3VudCByZXF1aXJlZA0KPiA+ID4gPiArCSAqIHRvIGdldCBpdCB3b3JraW5nKSwg
aWYgUFNSMiBpcyBlbmFibGVkLg0KPiA+ID4gPiArCSAqIEZvciBQU1IxIHRoZXJlIGlzIG5vIG5l
ZWQgaW4gdGhpcyBoYWNrLCBzbyB3ZSBsaW1pdCBpdCBvbmx5DQo+ID4gPiA+ICsJICogdG8gUFNS
MiBhbmQgQWxkZXJsYWtlLg0KPiA+ID4gPiArCSAqLw0KPiA+ID4gPiArCWlmIChJU19BTERFUkxB
S0VfUChkZXZfcHJpdikpIHsNCj4gPiA+ID4gKwkJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXI7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwkJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRoX3Bz
cigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgew0KPiA+ID4gPiArCQkJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiA+ID4gKw0KPiA+ID4g
PiArCQkJaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+ID4gPiA+ICsJCQkJbWlu
X2NkY2xrID0gRElWX1JPVU5EX1VQKG1pbl9jZGNsayAqIDExNSwgMTAwKTsNCj4gPiA+ID4gKwkJ
CQlicmVhazsNCj4gPiA+ID4gKwkJCX0NCj4gPiA+ID4gKwkJfQ0KPiA+ID4gPiArCX0NCj4gPiA+
ID4gKw0KPiA+ID4gPiAgCWlmIChtaW5fY2RjbGsgPiBkZXZfcHJpdi0+bWF4X2NkY2xrX2ZyZXEp
IHsNCj4gPiA+ID4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ID4gPiA+ICAJCQkg
ICAgInJlcXVpcmVkIGNkY2xrICglZCBrSHopIGV4Y2VlZHMgbWF4ICglZCBrSHopXG4iLA0KPiA+
ID4gDQo+ID4gPiBOb3Qgc3VyZSBpZiB0aGlzIHdpbGwgZ2V0IHRocnUgYXMgSSdtIG5vdCBzdWJz
Y3JpYmVkIHRvIHRoaXMgbGlzdCBidXQgSQ0KPiA+ID4gdGVzdGVkIHRoZSBwYXRjaCBiZWxvdyBv
biBteSBYMSBZb2dhIDcgKEludGVsIEFETC1QIHdpdGggU3RlcCBDMA0KPiA+ID4gc2lsaWNvbikg
YW5kIGl0IGRpZG4ndCBmaXggc29tZSBzY3JlZW4gdGVhcmluZyBpc3N1ZXMgSSdtIHNlZWluZyB0
aGVyZQ0KPiA+ID4gdGhhdCBhcmUgUFNSMiByZWxhdGVkDQo+ID4gPiANCj4gPiA+IEkgYWxzbyB0
cmllZCBpbmNyZWFzaW5nIHRoZSB0aW1lb3V0IHRvICozMDAgdG8gc2VlIGlmIHRoYXQgbWFkZSBh
bnkNCj4gPiA+IGRpZmZlcmVuY2UgYW5kIGl0IGRpZG4ndC4NCj4gPiA+IA0KPiA+ID4gTGV0IG1l
IGtub3cgaWYgdGhlcmUncyBhbnl0aGluZyBlbHNlIEkgY2FuIHRyeSBvdXQgLSBJIGhhdmUgYSBj
b3VwbGUgb2YNCj4gPiA+IEFETC1QIG1hY2hpbmVzIEkgY2FuIHRlc3QgYWdhaW5zdCBhbmQgYm90
aCBhcmUgc2VlaW5nIHNjcmVlbiB0ZWFyaW5nDQo+ID4gDQo+ID4gQXJlIHlvdSBnZXR0aW5nIHRo
aXMgc2NyZWVuIHRlYXJpbmcgYmVjYXVzZSBvZiB0aGUgRklGTyB1bmRlcnJ1bnM/DQo+ID4gVGhv
c2Ugc2hvdWxkIGJlIHZpc2libGUgaW4gZG1lc2cuIFRoaXMgcGF0Y2ggY2FuIGZpeCBvbmx5IHBh
cnQgb2YgdW5kZXJydW4NCj4gPiBpc3N1ZXMgY2F1c2VkIGJ5IFBTUjIuIA0KPiA+IElmIHlvdXIg
c2NyZWVuIHRlYXJpbmcgY2F1c2VkIGJ5IFBTUjIsIGJ1dCB0aGVyZSBhcmUgbm8gdW5kZXJydW5z
IHRoYXQgDQo+ID4gcGF0Y2ggd29uJ3QgaGVscCBmb3Igc3VyZS4NCj4gPiANCj4gQWggLSBPSywg
bm8gRklGTyB1bmRlcnJ1bnMgdGhhdCBJJ3ZlIG5vdGljZWQgaW4gdGhlIGxvZ3MgYnV0IEkgd2Fz
DQo+IGhvcGluZyB0aGUgdHdvIHdlcmUgY29ubmVjdGVkLiBJJ2xsIGtlZXAgYW4gZXllIG91dCBm
b3IgdGhvc2UgaW4gdGhlDQo+IG1lYW50aW1lLg0KPiANCj4gSSBndWVzcyBJJ2xsIGp1c3Qgd2F2
ZSBhIGZsYWcgYW5kIHNheSBJJ20gc2VlaW5nIFBTUjIgcmVsYXRlZCB0ZWFyaW5nDQo+IGlzc3Vl
cy4gSWYgSSBkaXNhYmxlICBQU1IyIHNlbGVjdGl2ZSBmZXRjaCBpdCBnb2VzIGF3YXkNCj4gKGk5
MTUuZW5hYmxlX3BzcjJfc2VsX2ZldGNoPTApIC0gYnV0IGFzIHRoYXQncyBhIGRpZmZlcmVudCBp
c3N1ZSB0byB0aGlzDQo+IHBhdGNoIHRocmVhZCBJIGRvbid0IHdhbnQgdG8gZHJhZyB0aGUgY29u
dmVyc2F0aW9uIHRvbyBmYXIgc2lkZXdheXMuDQoNCkRvIHlvdSBoYXZlIGEgYnVnIGZvciB5b3Vy
IGlzc3VlPyBCdXQgYmVmb3JlIHlvdSBmaWxlIGl0IHBsZWFzZSBzZWFyY2ggaW4gb3VyIGJ1ZyB0
cmFja2VyIGlmIHRoZXJlIGlzIGFub3RoZXIgc2ltaWxhciBpc3N1ZS4NCg0KV2l0aCB5b3VyIGRl
c2NyaXB0aW9uIHNvIGZhciBpdCBsb29rcyBsaWtlIHlvdSBhcmUgYWZmZWN0ZWQgYnkgdGhpcyBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzUwNzcgLg0K
SXQgd2FzIGFscmVhZHkgZml4ZWQgaW4gZHJtLXRpcCBidXQgaXQgd2lsbCB0YWtlIGEgd2hpbGUg
dG8gbGFuZCBvbiBMaW51cyBtYXN0ZXIgYW5kIHRoZSBvbiBkaXN0cm9zIGtlcm5lbC4NCg0KPiAN
Cj4gVGhhbmtzIQ0KPiBNYXJrDQoNCg==
