Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7710C113B53
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 06:28:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C78A76F551;
	Thu,  5 Dec 2019 05:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6CA96F551
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 05:28:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 21:28:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,279,1571727600"; d="scan'208";a="214073775"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga003.jf.intel.com with ESMTP; 04 Dec 2019 21:28:53 -0800
Received: from fmsmsx151.amr.corp.intel.com (10.18.125.4) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Dec 2019 21:28:53 -0800
Received: from bgsmsx105.gar.corp.intel.com (10.223.43.197) by
 FMSMSX151.amr.corp.intel.com (10.18.125.4) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Dec 2019 21:28:52 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX105.gar.corp.intel.com ([169.254.3.118]) with mapi id 14.03.0439.000;
 Thu, 5 Dec 2019 10:58:49 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 05/13] drm/i915/dsc: move slice height calculation
 to encoder
Thread-Index: AQHVpF9+F4fjP7gH10m1SlMun+azJqerENpA
Date: Thu, 5 Dec 2019 05:28:49 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809D9ACE@BGSMSX108.gar.corp.intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
 <aa863efdf197efa39dcd42e90438030dc46488ed.1574775655.git.jani.nikula@intel.com>
In-Reply-To: <aa863efdf197efa39dcd42e90438030dc46488ed.1574775655.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTVkOTVlOWMtMGVjYS00YTljLWEzYTYtOTM2NjU5NzExMTllIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJSQzZZMGdhdVRsYklUaU4xS3lrWVdFYWMyZWFqSExWT3ZSZkwzQm93eHhPWkNhWkRWZXU4RkZtejg5eDZYRDlhIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 05/13] drm/i915/dsc: move slice height
 calculation to encoder
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAyNiwgMjAxOSA3OjEz
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IE5hdmFyZSwgTWFuYXNpIEQNCj4gPG1hbmFz
aS5kLm5hdmFyZUBpbnRlbC5jb20+OyBLdWxrYXJuaSwgVmFuZGl0YQ0KPiA8dmFuZGl0YS5rdWxr
YXJuaUBpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDUvMTNdIGRybS9pOTE1L2RzYzogbW92ZSBz
bGljZSBoZWlnaHQgY2FsY3VsYXRpb24gdG8NCj4gZW5jb2Rlcg0KPiANCj4gVHVybnMgb3V0IHRo
aXMgaXNuJ3QgY29tcGF0aWJsZSB3aXRoIERTSSwgd2hlcmUgd2UgdXNlIHRoZSB2YWx1ZSBmcm9t
IFZCVC4NCj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLg0KPiANCj4gQ2M6IE1hbmFzaSBOYXZhcmUg
PG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+DQo+IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+DQoNCkxvb2tzIGdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVmFu
ZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+DQoNClRoYW5rcywNClZh
bmRpdGENCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
ICB8IDEyICsrKysrKysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92ZHNjLmMgfCAxMSAtLS0tLS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gaW5kZXggNTA2YzdkMTk5NjhiLi4xMTk5MzkxMzMxYzIgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTIwNjAsNiAr
MjA2MCwxOCBAQCBzdGF0aWMgaW50IGludGVsX2RwX2RzY19jb21wdXRlX3BhcmFtcyhzdHJ1Y3QN
Cj4gaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAlpZiAocmV0KQ0KPiAgCQlyZXR1cm4gcmV0
Ow0KPiANCj4gKwkvKg0KPiArCSAqIFNsaWNlIEhlaWdodCBvZiA4IHdvcmtzIGZvciBhbGwgY3Vy
cmVudGx5IGF2YWlsYWJsZSBwYW5lbHMuIFNvIHN0YXJ0DQo+ICsJICogd2l0aCB0aGF0IGlmIHBp
Y19oZWlnaHQgaXMgYW4gaW50ZWdyYWwgbXVsdGlwbGUgb2YgOC4gRXZlbnR1YWxseSBhZGQNCj4g
KwkgKiBsb2dpYyB0byB0cnkgbXVsdGlwbGUgc2xpY2UgaGVpZ2h0cy4NCj4gKwkgKi8NCj4gKwlp
ZiAodmRzY19jZmctPnBpY19oZWlnaHQgJSA4ID09IDApDQo+ICsJCXZkc2NfY2ZnLT5zbGljZV9o
ZWlnaHQgPSA4Ow0KPiArCWVsc2UgaWYgKHZkc2NfY2ZnLT5waWNfaGVpZ2h0ICUgNCA9PSAwKQ0K
PiArCQl2ZHNjX2NmZy0+c2xpY2VfaGVpZ2h0ID0gNDsNCj4gKwllbHNlDQo+ICsJCXZkc2NfY2Zn
LT5zbGljZV9oZWlnaHQgPSAyOw0KPiArDQo+ICAJdmRzY19jZmctPmRzY192ZXJzaW9uX21ham9y
ID0NCj4gIAkJKGludGVsX2RwLT5kc2NfZHBjZFtEUF9EU0NfUkVWIC0gRFBfRFNDX1NVUFBPUlRd
ICYNCj4gIAkJIERQX0RTQ19NQUpPUl9NQVNLKSA+PiBEUF9EU0NfTUFKT1JfU0hJRlQ7IGRpZmYg
LS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jDQo+IGluZGV4IDgzNGQ2
NjVhNDdkMi4uYzUzMDI0ZGZiMWVjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zkc2MuYw0KPiBAQCAtMzQ1LDE3ICszNDUsNiBAQCBpbnQgaW50ZWxfZHNjX2Nv
bXB1dGVfcGFyYW1zKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyLA0KPiAgCXZkc2Nf
Y2ZnLT5waWNfaGVpZ2h0ID0gcGlwZV9jb25maWctDQo+ID5ody5hZGp1c3RlZF9tb2RlLmNydGNf
dmRpc3BsYXk7DQo+ICAJdmRzY19jZmctPnNsaWNlX3dpZHRoID0gRElWX1JPVU5EX1VQKHZkc2Nf
Y2ZnLT5waWNfd2lkdGgsDQo+ICAJCQkJCSAgICAgcGlwZV9jb25maWctPmRzYy5zbGljZV9jb3Vu
dCk7DQo+IC0JLyoNCj4gLQkgKiBTbGljZSBIZWlnaHQgb2YgOCB3b3JrcyBmb3IgYWxsIGN1cnJl
bnRseSBhdmFpbGFibGUgcGFuZWxzLiBTbyBzdGFydA0KPiAtCSAqIHdpdGggdGhhdCBpZiBwaWNf
aGVpZ2h0IGlzIGFuIGludGVncmFsIG11bHRpcGxlIG9mIDguDQo+IC0JICogRXZlbnR1YWxseSBh
ZGQgbG9naWMgdG8gdHJ5IG11bHRpcGxlIHNsaWNlIGhlaWdodHMuDQo+IC0JICovDQo+IC0JaWYg
KHZkc2NfY2ZnLT5waWNfaGVpZ2h0ICUgOCA9PSAwKQ0KPiAtCQl2ZHNjX2NmZy0+c2xpY2VfaGVp
Z2h0ID0gODsNCj4gLQllbHNlIGlmICh2ZHNjX2NmZy0+cGljX2hlaWdodCAlIDQgPT0gMCkNCj4g
LQkJdmRzY19jZmctPnNsaWNlX2hlaWdodCA9IDQ7DQo+IC0JZWxzZQ0KPiAtCQl2ZHNjX2NmZy0+
c2xpY2VfaGVpZ2h0ID0gMjsNCj4gDQo+ICAJLyogR2VuIDExIGRvZXMgbm90IHN1cHBvcnQgWUNi
Q3IgKi8NCj4gIAl2ZHNjX2NmZy0+c2ltcGxlXzQyMiA9IGZhbHNlOw0KPiAtLQ0KPiAyLjIwLjEN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
