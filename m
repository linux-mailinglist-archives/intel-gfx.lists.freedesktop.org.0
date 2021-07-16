Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6362F3CBCB5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 21:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA816E9D2;
	Fri, 16 Jul 2021 19:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB3D6E9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jul 2021 19:36:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="208965534"
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="208965534"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2021 12:36:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,245,1620716400"; d="scan'208";a="507232749"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jul 2021 12:36:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 12:36:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 16 Jul 2021 12:36:14 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Fri, 16 Jul 2021 12:36:14 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 33/50] drm/i915/dg2: Add cdclk table and
 reference clock
Thread-Index: AQHXeF6ec13Hp5oBD0iyae0ScE0KDatGeXwA
Date: Fri, 16 Jul 2021 19:36:14 +0000
Message-ID: <2db87f30b3ab9e6d7bd941d3d673592fee3810b7.camel@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-34-matthew.d.roper@intel.com>
In-Reply-To: <20210714031540.3539704-34-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <6C98C8108394B54F968D25B03B114839@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 33/50] drm/i915/dg2: Add cdclk table and
 reference clock
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTA3LTEzIGF0IDIwOjE1IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBO
b3RlIHRoYXQgREcyIG9ubHkgaGFzIGEgc2luZ2xlIHBvc3NpYmxlIHJlZmNsayBmcmVxdWVuY3kg
KDM4LjQgTUh6KS4NCj4gDQo+IEJzcGVjOiA1NDAzNA0KPiBDYzogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRz
YSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAyNCArKysrKysrKysrKysrKysrKysrKy0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggNzEw
NjdhNjIyNjRkLi4yOGVmNmNiY2I0MDIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gQEAgLTEyOTAsNiArMTI5MCwxOCBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2NkY2xrX3ZhbHMgYWRscF9jZGNsa190YWJsZVtdID0gew0KPiAgCXt9
DQo+ICB9Ow0KPiAgDQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3ZhbHMgZGcy
X2NkY2xrX3RhYmxlW10gPSB7DQo+ICsJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDE3Mjgw
MCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSAgOSB9LA0KPiArCXsgLnJlZmNsayA9IDM4NDAwLCAu
Y2RjbGsgPSAxNzkyMDAsIC5kaXZpZGVyID0gMywgLnJhdGlvID0gMTQgfSwNCj4gKwl7IC5yZWZj
bGsgPSAzODQwMCwgLmNkY2xrID0gMTkyMDAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDEwIH0s
DQo+ICsJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDE5MjAwMCwgLmRpdmlkZXIgPSAzLCAu
cmF0aW8gPSAxNSB9LA0KPiArCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSAzMDcyMDAsIC5k
aXZpZGVyID0gMiwgLnJhdGlvID0gMTYgfSwNCj4gKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xr
ID0gMzI2NDAwLCAuZGl2aWRlciA9IDQsIC5yYXRpbyA9IDM0IH0sDQo+ICsJeyAucmVmY2xrID0g
Mzg0MDAsIC5jZGNsayA9IDU1NjgwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSAyOSB9LA0KPiAr
CXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA2NTI4MDAsIC5kaXZpZGVyID0gMiwgLnJhdGlv
ID0gMzQgfSwNCj4gKwl7fQ0KDQpUd28gY2RjbGsgZW50cmllcyBvZiB0aGlzIHRhYmxlIHdhcyBk
cm9wcGVkIGluIHRoZSBsYXRlc3QgdmVyc2lvbiBvZiBzcGVjKDE3OTIwMCBhbmQgMTkyMDAwKHNl
Y29uZCkpLCByZW1vdmluZyB0aG9zZSBMR1RNLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gK307DQo+ICsNCj4gIHN0YXRp
YyBpbnQgYnh0X2NhbGNfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBp
bnQgbWluX2NkY2xrKQ0KPiAgew0KPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa192YWxzICp0
YWJsZSA9IGRldl9wcml2LT5jZGNsay50YWJsZTsNCj4gQEAgLTE0MDgsNyArMTQyMCw5IEBAIHN0
YXRpYyB2b2lkIGJ4dF9kZV9wbGxfcmVhZG91dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsDQo+ICB7DQo+ICAJdTMyIHZhbCwgcmF0aW87DQo+ICANCj4gLQlpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpID49IDExKQ0KPiArCWlmIChJU19ERzIoZGV2X3ByaXYpKQ0KPiArCQljZGNs
a19jb25maWctPnJlZiA9IDM4NDAwOw0KPiArCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA+PSAxMSkNCj4gIAkJaWNsX3JlYWRvdXRfcmVmY2xrKGRldl9wcml2LCBjZGNsa19jb25maWcp
Ow0KPiAgCWVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKQ0KPiAgCQljbmxfcmVhZG91
dF9yZWZjbGsoZGV2X3ByaXYsIGNkY2xrX2NvbmZpZyk7DQo+IEBAIC0yODczLDcgKzI4ODcsMTMg
QEAgdTMyIGludGVsX3JlYWRfcmF3Y2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikNCj4gICAqLw0KPiAgdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikNCj4gIHsNCj4gLQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3By
aXYpKSB7DQo+ICsJaWYgKElTX0RHMihkZXZfcHJpdikpIHsNCj4gKwkJZGV2X3ByaXYtPmRpc3Bs
YXkuc2V0X2NkY2xrID0gYnh0X3NldF9jZGNsazsNCj4gKwkJZGV2X3ByaXYtPmRpc3BsYXkuYndf
Y2FsY19taW5fY2RjbGsgPSBza2xfYndfY2FsY19taW5fY2RjbGs7DQo+ICsJCWRldl9wcml2LT5k
aXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNsayA9IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7DQo+ICsJ
CWRldl9wcml2LT5kaXNwbGF5LmNhbGNfdm9sdGFnZV9sZXZlbCA9IHRnbF9jYWxjX3ZvbHRhZ2Vf
bGV2ZWw7DQo+ICsJCWRldl9wcml2LT5jZGNsay50YWJsZSA9IGRnMl9jZGNsa190YWJsZTsNCj4g
Kwl9IGVsc2UgaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgew0KPiAgCQlkZXZfcHJpdi0+
ZGlzcGxheS5zZXRfY2RjbGsgPSBieHRfc2V0X2NkY2xrOw0KPiAgCQlkZXZfcHJpdi0+ZGlzcGxh
eS5id19jYWxjX21pbl9jZGNsayA9IHNrbF9id19jYWxjX21pbl9jZGNsazsNCj4gIAkJZGV2X3By
aXYtPmRpc3BsYXkubW9kZXNldF9jYWxjX2NkY2xrID0gYnh0X21vZGVzZXRfY2FsY19jZGNsazsN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
