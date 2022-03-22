Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF084E3F9B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 14:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4948810E6F0;
	Tue, 22 Mar 2022 13:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDEBD10E6F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 13:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647956045; x=1679492045;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=r/Hna4sEo0IZTYhkClp/d1w6EU044Phq8jSL2e5kJmA=;
 b=fmqc/NrGw+a9cevVrHzoREciSmgve/m6Af8tqT/OzN9/bMo++4cmFe90
 CoW5KCJOOPW2kkNOG+uKCtwnN7qTGnN/RNcjAHlAHHpdTUauEti5MXHj1
 mvXyxK/9JFZ9e3nS82f4eG0S/75+LCo+NEazqoBtnfY16TI+Jxxvhh6T6
 2aV18rZaa+roEyVzb+n0RmDc3NINc/JqzNgIMKewutbyZFBzcrtB35EXN
 czI9k8bMxWHz2TGTvUATn4nZpL7/SYrBsthFL/7FZH54BzXxFwSlHe0Mv
 q8ixwsbEdv7offC2TG5tvf2BdzdAEtVck3LFdXcxIMJfyTVI+8he2urCz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="258007799"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="258007799"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 06:34:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="560386139"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga008.jf.intel.com with ESMTP; 22 Mar 2022 06:34:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 22 Mar 2022 13:34:03 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Tue, 22 Mar 2022 06:34:01 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
Thread-Index: AQHYPRE2g0KZbOTwHUmwZbnaprhnf6zKhWAAgAD4MgCAAFweAIAAA2sAgAABbQA=
Date: Tue, 22 Mar 2022 13:34:01 +0000
Message-ID: <aec920218cb9257307b868c2aec1379eef9fbe79.camel@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
 <8b9377677dcc1b18cd9dc95757f49f8da7beb94c.camel@intel.com>
 <20220322074812.GA2113@intel.com>
 <76162c4c04cfd85b26963beaa8c6313e10d6c64e.camel@intel.com>
 <20220322133008.GA31125@intel.com>
In-Reply-To: <20220322133008.GA31125@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <DBBDC2CD44BD664BB142F70C7F29B85E@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
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

T24gVHVlLCAyMDIyLTAzLTIyIGF0IDE1OjMwICswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gVHVlLCBNYXIgMjIsIDIwMjIgYXQgMDM6MTY6NDFQTSArMDIwMCwgU291emEs
IEpvc2Ugd3JvdGU6DQo+ID4gT24gVHVlLCAyMDIyLTAzLTIyIGF0IDA5OjQ4ICswMjAwLCBMaXNv
dnNraXksIFN0YW5pc2xhdiB3cm90ZToNCj4gPiA+IE9uIE1vbiwgTWFyIDIxLCAyMDIyIGF0IDA2
OjU4OjM5UE0gKzAyMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4gPiBPbiBNb24sIDIwMjIt
MDMtMjEgYXQgMTI6NDkgKzAyMDAsIFN0YW5pc2xhdiBMaXNvdnNraXkgd3JvdGU6DQo+ID4gPiA+
ID4gV2UgYXJlIGN1cnJlbnRseSBnZXR0aW5nIEZJRk8gdW5kZXJydW5zLCBpbiBwYXJ0aWN1bGFy
DQo+ID4gPiA+ID4gd2hlbiBQU1IyIGlzIGVuYWJsZWQuIFRoZXJlIHNlZW0gdG8gYmUgbm8gZXhp
c3Rpbmcgd29ya2Fyb3VuZA0KPiA+ID4gPiA+IG9yIHBhdGNoZXMsIHdoaWNoIGNhbiBmaXggdGhh
dCBpc3N1ZSh3ZXJlIGV4cGVjdGluZyBzb21lIHJlY2VudA0KPiA+ID4gPiA+IHNlbGVjdGl2ZSBm
ZXRjaCB1cGRhdGUgYW5kIERCdWYgYncvU0FHViBmaXhlcyB0byBoZWxwLA0KPiA+ID4gPiA+IHdo
aWNoIHVuZm9ydHVuYXRlbHkgZGlkbid0KS4NCj4gPiA+ID4gPiBDdXJyZW50IGlkZWEgaXMgdGhh
dCBpdCBsb29rcyBsaWtlIGZvciBzb21lIHJlYXNvbiB0aGUNCj4gPiA+ID4gPiBEQnVmIHByZWZp
bGwgdGltZSBpc24ndCBlbm91Z2ggb25jZSB3ZSBleGl0IFBTUjIsIGRlc3BpdGUgaXRzDQo+ID4g
PiA+ID4gdGhlb3JldGljYWxseSBjb3JyZWN0Lg0KPiA+ID4gPiA+IFNvIGJ1bXAgaXQgdXAgYSBi
aXQgYnkgMTUlKG1pbmltdW0gZXhwZXJpbWVudGFsIGFtb3VudCByZXF1aXJlZA0KPiA+ID4gPiA+
IHRvIGdldCBpdCB3b3JraW5nKSwgaWYgUFNSMiBpcyBlbmFibGVkLg0KPiA+ID4gPiA+IEZvciBQ
U1IxIHRoZXJlIGlzIG5vIG5lZWQgaW4gdGhpcyBoYWNrLCBzbyB3ZSBsaW1pdCBpdCBvbmx5DQo+
ID4gPiA+ID4gdG8gUFNSMiBhbmQgQWxkZXJsYWtlLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IHYy
OiAtIEFkZGVkIGNvbW1lbnQoSm9zZSBTb3V6YSkNCj4gPiA+ID4gPiAgICAgLSBGaXhlZCAxNSUg
Y2FsY3VsYXRpb24oSm9zZSBTb3V6YSkNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4N
Cj4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jIHwgMjYgKysrKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+ID4gPiBpbmRleCA4
ODg4ZmRhOGI3MDEuLjkyZDU3ODY5OTgzYSAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+ID4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiA+ID4gPiBAQCAtMjMy
NSw2ICsyMzI1LDMyIEBAIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ID4gPiA+ICAJCQkJCWRldl9w
cml2LT5tYXhfY2RjbGtfZnJlcSkpOw0KPiA+ID4gPiA+ICAJfQ0KPiA+ID4gPiA+ICANCj4gPiA+
ID4gPiArDQo+ID4gPiA+ID4gKwkvKg0KPiA+ID4gPiA+ICsJICogSEFDSy4gIFdlIGFyZSBnZXR0
aW5nIEZJRk8gdW5kZXJydW5zLCBpbiBwYXJ0aWN1bGFyDQo+ID4gPiA+ID4gKwkgKiB3aGVuIFBT
UjIgaXMgZW5hYmxlZC4gVGhlcmUgc2VlbSB0byBiZSBubyBleGlzdGluZyB3b3JrYXJvdW5kDQo+
ID4gPiA+ID4gKwkgKiBvciBwYXRjaGVzIGFzIG9mIG5vdy4NCj4gPiA+ID4gPiArCSAqIEN1cnJl
bnQgaWRlYSBpcyB0aGF0IGl0IGxvb2tzIGxpa2UgZm9yIHNvbWUgcmVhc29uIHRoZQ0KPiA+ID4g
PiA+ICsJICogREJ1ZiBwcmVmaWxsIHRpbWUgaXNuJ3QgZW5vdWdoIG9uY2Ugd2UgZXhpdCBQU1Iy
LCBkZXNwaXRlIGl0cw0KPiA+ID4gPiA+ICsJICogdGhlb3JldGljYWxseSBjb3JyZWN0Lg0KPiA+
ID4gPiA+ICsJICogU28gYnVtcCBpdCB1cCBhIGJpdCBieSAxNSUobWluaW11bSBleHBlcmltZW50
YWwgYW1vdW50IHJlcXVpcmVkDQo+ID4gPiA+ID4gKwkgKiB0byBnZXQgaXQgd29ya2luZyksIGlm
IFBTUjIgaXMgZW5hYmxlZC4NCj4gPiA+ID4gPiArCSAqIEZvciBQU1IxIHRoZXJlIGlzIG5vIG5l
ZWQgaW4gdGhpcyBoYWNrLCBzbyB3ZSBsaW1pdCBpdCBvbmx5DQo+ID4gPiA+ID4gKwkgKiB0byBQ
U1IyIGFuZCBBbGRlcmxha2UuDQo+ID4gPiA+ID4gKwkgKi8NCj4gPiA+ID4gPiArCWlmIChJU19B
TERFUkxBS0VfUChkZXZfcHJpdikpIHsNCj4gPiA+ID4gPiArCQlzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcjsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKwkJZm9yX2VhY2hfaW50ZWxfZW5j
b2Rlcl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgew0KPiA+ID4gPiA+ICsJCQlz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiA+
ID4gPiA+ICsNCj4gPiA+ID4gPiArCQkJaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7
DQo+ID4gPiA+IA0KPiA+ID4gPiBBZ2FpbiwgeW91IGNhbid0IHVzZSB0aGlzLCBQU1IgY291bGQg
ZW5kIHVwIGRpc2FibGVkIHdoZW4gdGhpcyBhdG9taWMgY29tbWl0IGl0IGFwcGxpZWQuDQo+ID4g
PiA+IFBsZWFzZSB1c2UgaW50ZWxfY3J0Y19zdGF0ZS5oYXNfcHNyMi4NCj4gPiA+IA0KPiA+ID4g
WWVzLCBidXQgaWYgUFNSMiBpcyBkaXNhYmxlZCAtIHdlIGRvbid0IG5lZWQgdGhpcyBoYWNrLCB3
ZSBjYW4gbGl2ZSB3aXRoIGxvd2VyDQo+ID4gPiBDRENMSyB0aGVuLCB0aHVzIHNhdmluZyBwb3dl
ci4gQW5kIG9uY2UgUFNSMiBpcyBlbmFibGVkIHdlJ2xsIGhhdmUgdG8gc3dpdGNoIGl0DQo+ID4g
PiBvbi4gSSBpbnRlbnRpb25hbGx5IGRpZG4ndCB3YW50IHRvIGVuYWJsZSBpdCBhbHdheXMsIGlm
IFBTUjIgaXMgc3VwcG9ydGVkIGluIHByaW5jaXBsZSAtIHdlIGNhcmUgb25seSBpZiBpdHMgaW5k
ZWVkIGVuYWJsZWQuDQo+ID4gDQo+ID4gVGhlIHByb2JsZW0gaXMgdGhhdCB0aGlzIGNvZGUgZG9u
J3QgaGFuZGxlIHRoaXMgY2FzZXMuDQo+ID4gaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQgaGFz
IHRoZSBjdXJyZW50IFBTUjIgc3RhdGUsIHdoaWxlIGNydGNfc3RhdGUgaGF2ZSB0aGUgZnV0dXJl
KGFzIHNvb24gYXMgdGhpcyBzdGF0ZSBpcyBhcHBsaWVkKSBQU1IyIHN0YXRlLg0KPiA+IFlvdSBz
aG91bGQgYXZvaWQgYWNjZXNzIGdsb2JhbCBzdGF0ZSBhcyBtdWNoIGFzIHBvc3NpYmxlIGR1cmlu
ZyB0aGUgYXRvbWljIGNoZWNrIHBoYXNlLg0KPiA+IA0KPiA+IEluIGEgY2FzZSBsaWtlLCBQU1Iy
IGRpc2FibGVkIGdvaW5nIHRvIHRvIGEgc3RhdGUgd2l0aCBQU1IyIGVuYWJsZWQgd2lsbCBjYXVz
ZSB0aGlzIHdvcmthcm91bmQgdG8gbm90IGJlIGFwcGxpZWQuDQo+IA0KPiBBaCBvaywgc28gdGhh
dCBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCBpc24ndCBwYXJ0IG9mIGNvbW1pdHRlZCBzdGF0
ZSwgYWN0dWFsbHkgeWVzLCB0aGF0IGV4cGxhaW5zIC0gDQo+IEkgdXNlIG9ubHkgZGV2X3ByaXYg
dG8gZ2V0IGl0LCBidXQgbm90IGF0b21pYyBzdGF0ZS4NCj4gDQo+IFNvIGhhc19wc3IyIGluZGlj
YXRlcyB0aGUgc3RhdGUgdG8gYmUgY29tbWl0dGVkPyBBY3R1YWxseSBJIHNhdyBpdCBiZWluZyBh
c3NpZ25lZCB0byBwc3IyX2VuYWJsZWQgaW4NCj4gc29tZSBwbGFjZXMsIGJ1dCB3YXNuJ3Qgc3Vy
ZS4NCg0KV2hlbiB0aGUgc3RhdGUgaXMgaW4gY29tbWl0IHBoYXNlIHBzcjJfZW5hYmxlZCBpdCB3
aWxsIGV2ZW50dWFsbHkgYmUgYXNzaWduZWQgYnV0IGF0IGludGVsX2NydGNfY29tcHV0ZV9taW5f
Y2RjbGsoKSB5b3UgbmVlZCB0byBjaGVjayBoYXNfcHNyMi4NCg0KPiBUaGVuIG5lZWQgdG8gdXNl
IHRoYXQgb25lLiBUaGUgbmFtZSBpcyBhIGJpdCBjb25mdXNpbmcgdGhlbi4NCj4gDQo+IFN0YW4N
Cj4gDQo+ID4gDQo+ID4gPiBBbHNvIENEQ0xLIGlzIHRoZSBsYXN0IHRoaW5nLCB3aGljaCBpcyBi
ZWluZyBjYWxjdWxhdGVkLCB0aGF0cyBob3cgYXJjaGl0ZWN0dXJlDQo+ID4gPiBpcyBkZXNpZ25l
ZCwgc28gd2UgY2FuIHJlbHkgb24gYWxsIHRoZSBzdGF0ZXMgaGVyZSwgaWYgeW91IG1lYW4gdGhh
dC4NCj4gPiA+IA0KPiA+ID4gRXZlbiBpZiB0aGlzIHdvdWxkIGJlIG5vdCB3b3JraW5nKG5vdCBh
d2FyZSB3aHkgYnV0IHN0aWxsKSwgd291bGQgYW55d2F5IHByZWZlcg0KPiA+ID4gdG8gZmluZCBz
b21ld2F5IHRvIGVuYWJsZSB0aGlzIG9ubHksIHdoZW4gUFNSMiBpcyBpbmRlZWQgZW5hYmxlZCwg
b3RoZXJ3aXNlDQo+ID4gPiB3ZSB3b3VsZCBiZSBraW5kIG9mIHdhc3RpbmcgcG93ZXIuLg0KPiA+
ID4gDQo+ID4gPiANCj4gPiA+IFN0YW4NCj4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gDQo+ID4g
PiA+ID4gKwkJCQltaW5fY2RjbGsgPSBESVZfUk9VTkRfVVAobWluX2NkY2xrICogMTE1LCAxMDAp
Ow0KPiA+ID4gPiA+ICsJCQkJYnJlYWs7DQo+ID4gPiA+ID4gKwkJCX0NCj4gPiA+ID4gPiArCQl9
DQo+ID4gPiA+ID4gKwl9DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICAJaWYgKG1pbl9jZGNsayA+
IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkgew0KPiA+ID4gPiA+ICAJCWRybV9kYmdfa21zKCZk
ZXZfcHJpdi0+ZHJtLA0KPiA+ID4gPiA+ICAJCQkgICAgInJlcXVpcmVkIGNkY2xrICglZCBrSHop
IGV4Y2VlZHMgbWF4ICglZCBrSHopXG4iLA0KPiA+ID4gPiANCj4gPiANCg0K
