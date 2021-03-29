Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C71934D53B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 18:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 079106E44B;
	Mon, 29 Mar 2021 16:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF9A6E44B
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Mar 2021 16:35:43 +0000 (UTC)
IronPort-SDR: ytRdKL62QAIpZS6b0sMoK1ZI1WSjWtSVb5VLjvUIBsa01CzsZ+bz4WHo4DMxn1C/l60pEoSzSC
 qtvTh+HwWoHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="211783369"
X-IronPort-AV: E=Sophos;i="5.81,288,1610438400"; d="scan'208";a="211783369"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 09:35:42 -0700
IronPort-SDR: XAAFtM5rGi+R/V5Y3QMVUwG6dlGXNMFrjlfrKHLo+nR2LiYXg4RTkSyOM6bNW+XCeM3GLiwpZH
 PxV9TSwnDPdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,288,1610438400"; d="scan'208";a="444664752"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 29 Mar 2021 09:35:42 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.109.6.141) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 29 Mar 2021 09:35:41 -0700
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 SHSMSX601.ccr.corp.intel.com (10.109.6.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 30 Mar 2021 00:35:39 +0800
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2106.013;
 Tue, 30 Mar 2021 00:35:38 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Gao, Fred" <fred.gao@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZmaW8vcGNpOiBBZGQgc3Vw?=
 =?utf-8?Q?port_for_opregion_v2.0+_(rev5)?=
Thread-Index: AQHXIbqaXfHY4B4o8UW2QY/Ux3rr9aqakZzQgACZNACAAAD7oIAAA59Q
Date: Mon, 29 Mar 2021 16:35:38 +0000
Message-ID: <8b37c30c733140bb9b0f6b7ed8b12925@intel.com>
References: <20201202171249.17083-1-fred.gao@intel.com>
 <161670632639.15545.18267924720650476934@emeril.freedesktop.org>
 <CO1PR11MB502634D68A7ABCC7D224708F9D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
 <4989359ab71e44daaf74369f22f9881c@intel.com>
 <CO1PR11MB5026C291000E5C1BF70D64D29D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB5026C291000E5C1BF70D64D29D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZm?=
 =?utf-8?q?io/pci=3A_Add_support_for_opregion_v2=2E0+_=28rev5=29?=
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
Cc: "Wang, Zhenyu Z" <zhenyu.z.wang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhdCdzIGEgd2FybmluZy4gRm9yIG5vdywgbm90aGluZyB3ZSBjYW4gZG8gYWJvdXQgdGhhdC4N
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEdhbywgRnJlZCA8ZnJlZC5nYW9A
aW50ZWwuY29tPiANClNlbnQ6IE1vbmRheSwgTWFyY2ggMjksIDIwMjEgOToyMyBBTQ0KVG86IFZ1
ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5jb20+OyBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogV2FuZywgWmhlbnl1IFogPHpoZW55
dS56LndhbmdAaW50ZWwuY29tPg0KU3ViamVjdDogUkU6IOKclyBGaS5DSS5ET0NTOiB3YXJuaW5n
IGZvciB2ZmlvL3BjaTogQWRkIHN1cHBvcnQgZm9yIG9wcmVnaW9uIHYyLjArIChyZXY1KQ0KDQpU
aGFua3MgZm9yIHRoZSBxdWljayBoZWxwLg0KVGVzdCBvZiBGaS5DSS5ET0NTIGlzIHN0aWxsIGZh
aWxlZCBhbHRob3VnaCB3ZSBkbyBub3QgY2hhbmdlIGFueSBjb2RlIGluIGk5MTUuIA0KDQo+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEg
PGxha3NobWluYXJheWFuYS52dWR1bUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNo
IDMwLCAyMDIxIDEyOjIwIEFNDQo+IFRvOiBHYW8sIEZyZWQgPGZyZWQuZ2FvQGludGVsLmNvbT47
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFdhbmcsIFpoZW55dSBaIDx6
aGVueXUuei53YW5nQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6IOKclyBGaS5DSS5ET0NTOiB3
YXJuaW5nIGZvciB2ZmlvL3BjaTogQWRkIHN1cHBvcnQgZm9yIA0KPiBvcHJlZ2lvbiB2Mi4wKyAo
cmV2NSkNCj4gDQo+IEZhaWx1cmUgaXMgcmVwb3J0ZWQuIEl0J3Mgbm93IHNob3dpbmcgYXMgc3Vj
Y2Vzcy4NCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEdhbywgRnJl
ZCA8ZnJlZC5nYW9AaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIE1hcmNoIDI5LCAyMDIxIDEy
OjEyIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBWdWR1bSwgTGFr
c2htaW5hcmF5YW5hIA0KPiA8bGFrc2htaW5hcmF5YW5hLnZ1ZHVtQGludGVsLmNvbT4NCj4gQ2M6
IFdhbmcsIFpoZW55dSBaIDx6aGVueXUuei53YW5nQGludGVsLmNvbT4NCj4gU3ViamVjdDogUkU6
IOKclyBGaS5DSS5ET0NTOiB3YXJuaW5nIGZvciB2ZmlvL3BjaTogQWRkIHN1cHBvcnQgZm9yIA0K
PiBvcHJlZ2lvbiB2Mi4wKyAocmV2NSkNCj4gDQo+IEhpLCBMYWtzaG1pOg0KPiANCj4gQ2FuIHUg
aGVscCBvbiB0aGlzIGZhaWx1cmUgYWdhaW4sDQo+IHRoZSBvbmx5IGRpZmZlcmVuY2UgYmV0d2Vl
biB2ZXJzaW9uIDUmIDQgaXMgdGhlIGNvbW1lbnRzLg0KPiBUaGFua3MgaW4gYWR2YW5jZS4NCj4g
DQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBQYXRjaHdvcmsgPHBh
dGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPg0KPiA+IFNlbnQ6IEZyaWRheSwgTWFyY2gg
MjYsIDIwMjEgNTowNSBBTQ0KPiA+IFRvOiBHYW8sIEZyZWQgPGZyZWQuZ2FvQGludGVsLmNvbT4N
Cj4gPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IFN1YmplY3Q6IOKc
lyBGaS5DSS5ET0NTOiB3YXJuaW5nIGZvciB2ZmlvL3BjaTogQWRkIHN1cHBvcnQgZm9yIA0KPiA+
IG9wcmVnaW9uIHYyLjArDQo+ID4gKHJldjUpDQo+ID4NCj4gPiA9PSBTZXJpZXMgRGV0YWlscyA9
PQ0KPiA+DQo+ID4gU2VyaWVzOiB2ZmlvL3BjaTogQWRkIHN1cHBvcnQgZm9yIG9wcmVnaW9uIHYy
LjArIChyZXY1KQ0KPiA+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy84NDQ5NC8NCj4gPiBTdGF0ZSA6IHdhcm5pbmcNCj4gPg0KPiA+ID09IFN1bW1hcnkg
PT0NCj4gPg0KPiA+ICQgbWFrZSBodG1sZG9jcyAyPiYxID4gL2Rldi9udWxsIHwgZ3JlcCBpOTE1
DQo+ID4gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYzoxMDI6
IHdhcm5pbmc6IA0KPiA+IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3d3JyBub3QgZGVz
Y3JpYmVkIGluICdpOTE1X2dlbV9zaHJpbmsnDQo+ID4gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2NtZF9wYXJzZXIuYzoxNDIwOiB3YXJuaW5nOiBFeGNlc3MgDQo+ID4gZnVuY3Rpb24gcGFy
YW1ldGVyICd0cmFtcG9saW5lJyBkZXNjcmlwdGlvbiBpbiAnaW50ZWxfZW5naW5lX2NtZF9wYXJz
ZXInDQo+ID4gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYzoxNDIwOiB3
YXJuaW5nOiBGdW5jdGlvbiANCj4gPiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdqdW1wX3doaXRlbGlz
dCcgbm90IGRlc2NyaWJlZCBpbiANCj4gPiAnaW50ZWxfZW5naW5lX2NtZF9wYXJzZXInDQo+ID4g
Li9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYzoxNDIwOiB3YXJuaW5nOiBG
dW5jdGlvbiANCj4gPiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdzaGFkb3dfbWFwJyBub3QgZGVzY3Jp
YmVkIGluIA0KPiA+ICdpbnRlbF9lbmdpbmVfY21kX3BhcnNlcicNCj4gPiAuL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jOjE0MjA6IHdhcm5pbmc6IEZ1bmN0aW9uIA0KPiA+
IHBhcmFtZXRlciBvciBtZW1iZXIgJ2JhdGNoX21hcCcgbm90IGRlc2NyaWJlZCBpbiANCj4gPiAn
aW50ZWxfZW5naW5lX2NtZF9wYXJzZXInDQo+ID4gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2NtZF9wYXJzZXIuYzoxNDIwOiB3YXJuaW5nOiBFeGNlc3MgDQo+ID4gZnVuY3Rpb24gcGFyYW1l
dGVyICd0cmFtcG9saW5lJyBkZXNjcmlwdGlvbiBpbiAnaW50ZWxfZW5naW5lX2NtZF9wYXJzZXIn
DQo+ID4NCj4gL2hvbWUvY2lkcm0va2VybmVsL0RvY3VtZW50YXRpb24vZ3B1L2k5MTU6MjI6IC4v
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaQ0KPiA+IG50ZWxfcnVudGltZV9wbS5jOjQyMzogV0FSTklO
RzogSW5saW5lIHN0cm9uZyBzdGFydC1zdHJpbmcgd2l0aG91dA0KPiA+IGVuZC0gc3RyaW5nLg0K
PiA+DQo+IA0KPiANCg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
