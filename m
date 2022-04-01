Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF4E4EE831
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 08:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8224C10F803;
	Fri,  1 Apr 2022 06:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024E410F802
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 06:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648794414; x=1680330414;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bmSKt2PcI0/j/EhWEUdL0bD/8dc48nIlyDqaWEIVvRI=;
 b=VTIY+JyDzW8UUYMwt2lbSX1kFsFktYuxDRDSy1PQZnJmVWTZ6kPMDW4U
 jytXB1bX22tcK9z5lYfWve6V4IDF2kMmKzvWmK2Q1KNWgl2rab/74twBP
 L95U1tckrUTqwQ4BwqFFI5nhf9AhQ/qxhqGMNfBXvPQEkZE5y3TkyPtFj
 YmdxdWZnbt2v8tZFuGnuH4L7zUAYngp4PXKX0Uit3q6UJSTlcFrMuyGIK
 BGZXDnw/YXqoWZWbMqAU0UkqNYUIS46BwshbzUgQ/dA+/46h35DQVOLIX
 1ZkKfATZfK00F41UkFhL5EFKrd4BqR5/uPUssCLU3MQu1BiJUWomDJFCz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="239990783"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="239990783"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 23:26:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="655446764"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga004.jf.intel.com with ESMTP; 31 Mar 2022 23:26:54 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 23:26:53 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 11:56:51 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 11:56:51 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 05/12] drm/i915/dp: Reorder
 intel_dp_compute_config() a bit
Thread-Index: AQHYPeSNKEwJCCgZXEyu93ZpzXk9H6zapuqQ
Date: Fri, 1 Apr 2022 06:26:50 +0000
Message-ID: <1b575d73e205472dafb0aee1d42d7ac4@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20220322120015.28074-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 05/12] drm/i915/dp: Reorder
 intel_dp_compute_config() a bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIE1hcmNoIDIyLCAyMDIyIDU6MzAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIHYyIDA1LzEyXSBkcm0vaTkxNS9kcDogUmVvcmRlcg0KPiBpbnRlbF9kcF9jb21wdXRlX2Nv
bmZpZygpIGEgYml0DQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiANCj4gQ29uc29saWRhdGUgdGhlIGRvdWJsZSBwZml0IGNhbGws
IGFuZCByZW9yZGVyIHRoaW5ncyBzbyB0aGF0DQo+IGludGVsX2RwX291dHB1dF9mb3JtYXQoKSBh
bmQgaW50ZWxfZHBfY29tcHV0ZV9saW5rX2NvbmZpZygpIGFyZSBiYWNrLXRvLWJhY2suDQo+IFRo
ZXkgYXJlIGludGltYXRlbHkgcmVsYXRlZCwgYW5kIHdpbGwgbmVlZCB0byBiZSBjYWxsZWQgdHdp
Y2UgdG8gcHJvcGVybHkgaGFuZGxlIHRoZQ0KPiAiNDoyOjAgYWxzbyIgbW9kZXMuDQoNCkxvb2tz
IEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYyB8IDIzICsrKysrKysrKystLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDk3MjA1NzE0MzhlOS4uYTY1NWFm
MWFiMzU5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
IEBAIC0xODMyLDE1ICsxODMyLDYgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoc3RydWN0IGlu
dGVsX2VuY29kZXINCj4gKmVuY29kZXIsDQo+ICAJaWYgKEhBU19QQ0hfU1BMSVQoZGV2X3ByaXYp
ICYmICFIQVNfRERJKGRldl9wcml2KSAmJiBlbmNvZGVyLT5wb3J0ICE9DQo+IFBPUlRfQSkNCj4g
IAkJcGlwZV9jb25maWctPmhhc19wY2hfZW5jb2RlciA9IHRydWU7DQo+IA0KPiAtCXBpcGVfY29u
ZmlnLT5vdXRwdXRfZm9ybWF0ID0gaW50ZWxfZHBfb3V0cHV0X2Zvcm1hdCgmaW50ZWxfY29ubmVj
dG9yLQ0KPiA+YmFzZSwNCj4gLQkJCQkJCQkgICAgYWRqdXN0ZWRfbW9kZSk7DQo+IC0NCj4gLQlp
ZiAocGlwZV9jb25maWctPm91dHB1dF9mb3JtYXQgPT0gSU5URUxfT1VUUFVUX0ZPUk1BVF9ZQ0JD
UjQyMCkgew0KPiAtCQlyZXQgPSBpbnRlbF9wYW5lbF9maXR0aW5nKHBpcGVfY29uZmlnLCBjb25u
X3N0YXRlKTsNCj4gLQkJaWYgKHJldCkNCj4gLQkJCXJldHVybiByZXQ7DQo+IC0JfQ0KPiAtDQo+
ICAJcGlwZV9jb25maWctPmhhc19hdWRpbyA9IGludGVsX2RwX2hhc19hdWRpbyhlbmNvZGVyLCBw
aXBlX2NvbmZpZywNCj4gY29ubl9zdGF0ZSk7DQo+IA0KPiAgCWZpeGVkX21vZGUgPSBpbnRlbF9w
YW5lbF9maXhlZF9tb2RlKGludGVsX2Nvbm5lY3RvciwgYWRqdXN0ZWRfbW9kZSk7DQo+IEBAIC0x
ODQ4LDEwICsxODM5LDYgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2Vu
Y29kZXINCj4gKmVuY29kZXIsDQo+ICAJCXJldCA9IGludGVsX3BhbmVsX2NvbXB1dGVfY29uZmln
KGludGVsX2Nvbm5lY3RvciwNCj4gYWRqdXN0ZWRfbW9kZSk7DQo+ICAJCWlmIChyZXQpDQo+ICAJ
CQlyZXR1cm4gcmV0Ow0KPiAtDQo+IC0JCXJldCA9IGludGVsX3BhbmVsX2ZpdHRpbmcocGlwZV9j
b25maWcsIGNvbm5fc3RhdGUpOw0KPiAtCQlpZiAocmV0KQ0KPiAtCQkJcmV0dXJuIHJldDsNCj4g
IAl9DQo+IA0KPiAgCWlmIChhZGp1c3RlZF9tb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfREJM
U0NBTikgQEAgLTE4NjcsMTANCj4gKzE4NTQsMjAgQEAgaW50ZWxfZHBfY29tcHV0ZV9jb25maWco
c3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJaWYgKGludGVsX2RwX2hkaXNwbGF5
X2JhZChkZXZfcHJpdiwgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oZGlzcGxheSkpDQo+ICAJCXJldHVy
biAtRUlOVkFMOw0KPiANCj4gKwlwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCA9IGludGVsX2Rw
X291dHB1dF9mb3JtYXQoJmludGVsX2Nvbm5lY3Rvci0NCj4gPmJhc2UsDQo+ICsJCQkJCQkJICAg
IGFkanVzdGVkX21vZGUpOw0KPiArDQo+ICAJcmV0ID0gaW50ZWxfZHBfY29tcHV0ZV9saW5rX2Nv
bmZpZyhlbmNvZGVyLCBwaXBlX2NvbmZpZywgY29ubl9zdGF0ZSk7DQo+ICAJaWYgKHJldCA8IDAp
DQo+ICAJCXJldHVybiByZXQ7DQo+IA0KPiArCWlmICgoaW50ZWxfZHBfaXNfZWRwKGludGVsX2Rw
KSAmJiBmaXhlZF9tb2RlKSB8fA0KPiArCSAgICBwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCA9
PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwKSB7DQo+ICsJCXJldCA9IGludGVsX3BhbmVs
X2ZpdHRpbmcocGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOw0KPiArCQlpZiAocmV0KQ0KPiArCQkJ
cmV0dXJuIHJldDsNCj4gKwl9DQo+ICsNCj4gIAlwaXBlX2NvbmZpZy0+bGltaXRlZF9jb2xvcl9y
YW5nZSA9DQo+ICAJCWludGVsX2RwX2xpbWl0ZWRfY29sb3JfcmFuZ2UocGlwZV9jb25maWcsIGNv
bm5fc3RhdGUpOw0KPiANCj4gLS0NCj4gMi4zNC4xDQoNCg==
