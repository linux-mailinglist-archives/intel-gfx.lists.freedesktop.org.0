Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A5D4EAE60
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 15:24:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C37310F0B4;
	Tue, 29 Mar 2022 13:24:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137A210F0AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 13:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648560275; x=1680096275;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=nnETxG5JFTopwerhX6euMUZjGD7Or+df5hvmHGBONaw=;
 b=INISGM3jf3++BvZHM5LPHv/8YfQ9ltGssR85y8EgxoxyBCT33tujFpXF
 RkSIkfztQAYO1CyVwtlkifDv/+7SxnOwC9iyBDaC/On0ISq7s56wL841n
 GxKUTK0xCCagmRz3dS7Cpf4igRPzzUqIMsmlgStBsIfj6fPKysXNJe0TQ
 DEaHE7S/lRgSw4sM91FxT5xmhAbZjhKlwDuTuqHtqbIJmvCzj15X3Rlw9
 poDLopd0Es4GDMeSKPQOTG1SAskWu6rkLXnCnhpv1lvhWth/sQGwFhBRO
 OWtX11LAGCoLQCT9D/b8eodgwoZ7hzKq8M9fz40PEANghgfSk28xwRg04 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="241402972"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="241402972"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 06:24:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="787593954"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga006.fm.intel.com with ESMTP; 29 Mar 2022 06:24:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 14:24:31 +0100
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Tue, 29 Mar 2022 06:24:30 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
Thread-Index: AQHYPRE2g0KZbOTwHUmwZbnaprhnf6zKhigAgAD324CAAGEfgIAK+MMAgAAEVoA=
Date: Tue, 29 Mar 2022 13:24:30 +0000
Message-ID: <1e048e57cd45917b29be0503b658890a3db73d12.camel@intel.com>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
 <b57a419ab01f7e8881ece99d0cd3bd415942651c.camel@intel.com>
 <20220322074947.GB2113@intel.com>
 <20d8519ace64eb83d9128db4832456f113adb1a4.camel@intel.com>
 <20220329131020.GA23373@intel.com>
In-Reply-To: <20220329131020.GA23373@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <410F06106E05C345B83133A0B85F4D86@intel.com>
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

T24gVHVlLCAyMDIyLTAzLTI5IGF0IDE2OjEwICswMzAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gVHVlLCBNYXIgMjIsIDIwMjIgYXQgMDM6MzY6MTBQTSArMDIwMCwgU291emEs
IEpvc2Ugd3JvdGU6DQo+ID4gT24gVHVlLCAyMDIyLTAzLTIyIGF0IDA5OjQ5ICswMjAwLCBMaXNv
dnNraXksIFN0YW5pc2xhdiB3cm90ZToNCj4gPiA+IE9uIE1vbiwgTWFyIDIxLCAyMDIyIGF0IDA3
OjAxOjI3UE0gKzAyMDAsIFNvdXphLCBKb3NlIHdyb3RlOg0KPiA+ID4gPiBPbiBNb24sIDIwMjIt
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
TERFUkxBS0VfUChkZXZfcHJpdikpIHsNCj4gPiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBBbmQg
cGxlYXNlIGNoZWNrIGlmIHdlIGNhbiBvbmx5IGFwcGx5IHRoaXMgd2hlbiB0d28gb3IgbW9yZSBw
aXBlcyBhcmUgZW5hYmxlZC4NCj4gPiA+ID4gT3RoZXJ3aXNlIHRoaXMgd2lsbCBpbXBhY3QgcG93
ZXIgbnVtYmVycyBpbiB0aGUgY2FzZSB0aGF0IGlzIG1hdHRlcnMgbW9zdC4NCj4gPiA+IA0KPiA+
ID4gVGhhdCBvbmUgSSBjYW4gY2hlY2suIFByb2JhYmx5IG5lZWQgc29tZW9uZSBhdCBvZmZpY2Ug
dG8gZGlzY29ubmVjdCBhbGwgdGhlIHBpcGVzLCBleGNlcHQgZURQIHRvIHNlZQ0KPiA+ID4gaWYg
aXRzIHN0aWxsIHJlcHJvZHVjaWJsZSwgaG93ZXZlciBJIHRoaW5rIEkndmUgc2VlbiBpdCBhbHJl
YWR5IGhhcHBlbmluZy4NCj4gPiANCj4gPiBZb3UgY2FuIGhhdmUgc29tZSBoYWNrIGNvZGUgaW4g
dGhlIGZ1bmN0aW9ucyB0aGF0IGNoZWNrIGlmIGEgcG9ydCBpcyBjb25uZWN0ZWQgYW5kIHJldHVy
biBmYWxzZSBmb3IgYWxsIHBvcnRzIG90aGVyIHRoYW4gcG9ydCBBL2VEUC4NCj4gDQo+IFllcywg
ZGlkIHRoYXQuIGk5MTVfZGlzcGxheV9pbmZvIG5vdyByZXBvcnRzIG9ubHkgZURQIGNvbm5lY3Rl
ZC4gTW9kaWZpZWQgaW50ZWxfZHBfZGV0ZWN0IHRvIHJldHVybiBkaXNjb25uZWN0ZWQgc3RhdGUN
Cj4gZm9yIGFsbCBub24tZURQIGNvbm5lY3RvcnMsIGFsc28gbW9kaWZpZWQgaG90cGx1ZyBhbmQg
ZGlncG9ydCB3b3JrIHJvdXRpbmVzIHRvIGJhaWwgb3V0IGZvciBub24gUE9SVF9BIHBvcnRzDQo+
IGp1c3QgaW4gY2FzZS4NCj4gU28gZXZlbiB3aXRoIGVEUCBjb25uZWN0ZWQgb25seSBGSUZPIHVu
ZGVycnVucyBzdGlsbCBoYXBwZW4sIGp1c3QgcmFuIGttc19wbGFuZV9tdWx0aXBsZSBhbmQgaXQg
YXBwZWFyZWQgaW1tZWRpYXRlbHkuDQoNCklmIHRoYXQgb25seSBoYXBwZW5zIHdpdGgga21zX3Bs
YW5lX211bHRpcGxlIHdpdGggYSBwYXJ0aWN1bGFyIG51bWJlciBvZiBwbGFuZXMgb3IgbW9yZSBw
bGVhc2UgbGltaXQgdGhlIHdvcmthcm91bmQgdG8gdGhpcyBudW1iZXIgb2YgcGxhbmVzIHRoZW4u
DQpTb21lIGZvbGtzIGZyb20gQ2hyb21lT1MgdGVhbSBhbHJlYWR5IHNob3duIGNvbmNlcm4gYWJv
dXQgdGhlIHBvd2VyIGltcGFjdHMgb2YgdGhpcyB3b3JrYXJvdW5kLg0KDQpBbHNvIHRoaXMgaW5m
b3JtYXRpb24gbWlnaHQgYmUgaGVscGZ1bCBmb3IgSFcgZm9sa3MgdG8gaGVscCBpZGVudGlmeSB0
aGUgaXNzdWUuDQoNCj4gDQo+IFN0YW4NCj4gDQo+ID4gDQo+ID4gDQo+ID4gPiANCj4gPiA+IFN0
YW4NCj4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gPiArCQlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcjsNCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gKwkJZm9yX2VhY2hfaW50ZWxfZW5jb2Rl
cl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5jb2Rlcikgew0KPiA+ID4gPiA+ICsJCQlzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiA+ID4g
PiA+ICsNCj4gPiA+ID4gPiArCQkJaWYgKGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkKSB7DQo+
ID4gPiA+ID4gKwkJCQltaW5fY2RjbGsgPSBESVZfUk9VTkRfVVAobWluX2NkY2xrICogMTE1LCAx
MDApOw0KPiA+ID4gPiA+ICsJCQkJYnJlYWs7DQo+ID4gPiA+ID4gKwkJCX0NCj4gPiA+ID4gPiAr
CQl9DQo+ID4gPiA+ID4gKwl9DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICAJaWYgKG1pbl9jZGNs
ayA+IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkgew0KPiA+ID4gPiA+ICAJCWRybV9kYmdfa21z
KCZkZXZfcHJpdi0+ZHJtLA0KPiA+ID4gPiA+ICAJCQkgICAgInJlcXVpcmVkIGNkY2xrICglZCBr
SHopIGV4Y2VlZHMgbWF4ICglZCBrSHopXG4iLA0KPiA+ID4gPiANCj4gPiANCg0K
