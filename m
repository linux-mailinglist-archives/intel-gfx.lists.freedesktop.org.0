Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F794EE821
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 08:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7725110F712;
	Fri,  1 Apr 2022 06:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EDA10F716
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 06:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648794084; x=1680330084;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rpAUI2/3D0cKWRcsy1ZJ2oK+AWYBoT7nTu0PtT0+1ac=;
 b=AUZysMSHNimPhznKtyJesfbhLR/XZryRdvoi35Xgdd59q3O8+Krc0QOc
 MHtIJUkzQNjfggmfPX05ff5yxlEnqDusrWSlW1Oo0Ktj1X9nl4PMqGYcw
 u4in212ujj30J4px9znPQzpwVrxTVB8Vfm/ETp4I7kFBFrG5HZVd5JmRm
 WeLSHa4PfW6Oyp+bTgXfGLOCESvInjfoyUC1MWoOXIyRVGEdoGjdT2JRn
 Rxcv1+EMW0RJsUVvT8lx/cBatZjv16Fzs8ALjCdantPnQdKgGNq+CaGI3
 W0jaDGOEgpKMNtkSOjfsMHapr7zrQkGQpT0kK1uxttaHrH6Rx0IObc+QB A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="320741664"
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="320741664"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 23:21:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,226,1643702400"; d="scan'208";a="547669121"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 31 Mar 2022 23:21:23 -0700
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 31 Mar 2022 23:21:22 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 11:51:20 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 11:51:20 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 02/12] drm/i915/dp: Respect the sink's max
 TMDS clock when dealing with DP->HDMI DFPs
Thread-Index: AQHYPeRxrC6WQwfwYkaCk/9UvBetOazapZAA
Date: Fri, 1 Apr 2022 06:21:20 +0000
Message-ID: <7bfc92155cda464ba9b6277b920994aa@intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
 <20220322120015.28074-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20220322120015.28074-3-ville.syrjala@linux.intel.com>
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
Subject: Re: [Intel-gfx] [PATCH v2 02/12] drm/i915/dp: Respect the sink's
 max TMDS clock when dealing with DP->HDMI DFPs
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
VENIIHYyIDAyLzEyXSBkcm0vaTkxNS9kcDogUmVzcGVjdCB0aGUgc2luaydzIG1heCBUTURTDQo+
IGNsb2NrIHdoZW4gZGVhbGluZyB3aXRoIERQLT5IRE1JIERGUHMNCj4gDQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDdXJyZW50
bHkgd2Ugb25seSBsb29rIGF0IHRoZSBERlBzIG1heCBUTURTIGNsb2NrIGxpbWl0IHdoZW4gY29u
c2lkZXJpbmcgd2hldGhlcg0KPiB0aGUgbW9kZSBpcyB2YWxpZCwgb3Igd2hldGhlciB3ZSBjYW4g
ZG8gZGVlcCBjb2xvci4gVGhlIHNpbmsncyBtYXggVE1EUyBjbG9jayBsaW1pdA0KPiBtYXkgYmUg
bG93ZXIgdGhhbiB0aGUgREZQcywgc28gd2UgbmVlZCB0byBhY2NvdW50IGZvciBpdCBhcyB3ZWxs
Lg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+DQoNCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsLy0vaXNzdWVzLzQwOTUNCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzI4NDQNCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyNCArKysrKysrKysrKysr
KysrKysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0K
PiBpbmRleCBlODc0ZDJmNzgwODguLjMzOTRlNDk1MWZlZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtODU2LDIwICs4NTYsMzQgQEAgc3RhdGlj
IGJvb2wgaW50ZWxfZHBfaGRpc3BsYXlfYmFkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpk
ZXZfcHJpdiwNCj4gIAlyZXR1cm4gaGRpc3BsYXkgPT0gNDA5NiAmJiAhSEFTX0RESShkZXZfcHJp
dik7ICB9DQo+IA0KPiArc3RhdGljIGludCBpbnRlbF9kcF9tYXhfdG1kc19jbG9jayhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKSB7DQo+ICsJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVj
dG9yID0gaW50ZWxfZHAtPmF0dGFjaGVkX2Nvbm5lY3RvcjsNCj4gKwljb25zdCBzdHJ1Y3QgZHJt
X2Rpc3BsYXlfaW5mbyAqaW5mbyA9ICZjb25uZWN0b3ItPmJhc2UuZGlzcGxheV9pbmZvOw0KPiAr
CWludCBtYXhfdG1kc19jbG9jayA9IGludGVsX2RwLT5kZnAubWF4X3RtZHNfY2xvY2s7DQo+ICsN
Cj4gKwkvKiBPbmx5IGNvbnNpZGVyIHRoZSBzaW5rJ3MgbWF4IFRNRFMgY2xvY2sgaWYgd2Uga25v
dyB0aGlzIGlzIGEgSERNSSBERlAgKi8NCj4gKwlpZiAobWF4X3RtZHNfY2xvY2sgJiYgaW5mby0+
bWF4X3RtZHNfY2xvY2spDQo+ICsJCW1heF90bWRzX2Nsb2NrID0gbWluKG1heF90bWRzX2Nsb2Nr
LCBpbmZvLT5tYXhfdG1kc19jbG9jayk7DQo+ICsNCj4gKwlyZXR1cm4gbWF4X3RtZHNfY2xvY2s7
DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBlbnVtIGRybV9tb2RlX3N0YXR1cw0KPiAgaW50ZWxfZHBf
dG1kc19jbG9ja192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJICBpbnQg
Y2xvY2ssIGludCBicGMsIGJvb2wgeWNiY3I0MjBfb3V0cHV0KSAgew0KPiAtCWludCB0bWRzX2Ns
b2NrOw0KPiArCWludCB0bWRzX2Nsb2NrLCBtaW5fdG1kc19jbG9jaywgbWF4X3RtZHNfY2xvY2s7
DQo+IA0KPiAgCXRtZHNfY2xvY2sgPSBpbnRlbF9oZG1pX3RtZHNfY2xvY2soY2xvY2ssIGJwYywg
eWNiY3I0MjBfb3V0cHV0KTsNCj4gDQo+IC0JaWYgKGludGVsX2RwLT5kZnAubWluX3RtZHNfY2xv
Y2sgJiYNCj4gLQkgICAgdG1kc19jbG9jayA8IGludGVsX2RwLT5kZnAubWluX3RtZHNfY2xvY2sp
DQo+ICsJbWluX3RtZHNfY2xvY2sgPSBpbnRlbF9kcC0+ZGZwLm1pbl90bWRzX2Nsb2NrOw0KPiAr
CW1heF90bWRzX2Nsb2NrID0gaW50ZWxfZHBfbWF4X3RtZHNfY2xvY2soaW50ZWxfZHApOw0KPiAr
DQo+ICsJaWYgKG1pbl90bWRzX2Nsb2NrICYmIHRtZHNfY2xvY2sgPCBtaW5fdG1kc19jbG9jaykN
Cj4gIAkJcmV0dXJuIE1PREVfQ0xPQ0tfTE9XOw0KPiANCj4gLQlpZiAoaW50ZWxfZHAtPmRmcC5t
YXhfdG1kc19jbG9jayAmJg0KPiAtCSAgICB0bWRzX2Nsb2NrID4gaW50ZWxfZHAtPmRmcC5tYXhf
dG1kc19jbG9jaykNCj4gKwlpZiAobWF4X3RtZHNfY2xvY2sgJiYgdG1kc19jbG9jayA+IG1heF90
bWRzX2Nsb2NrKQ0KPiAgCQlyZXR1cm4gTU9ERV9DTE9DS19ISUdIOw0KPiANCj4gIAlyZXR1cm4g
TU9ERV9PSzsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
