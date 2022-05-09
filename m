Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE4F51FE81
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 15:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A80410E361;
	Mon,  9 May 2022 13:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023FE10E361
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 13:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652103635; x=1683639635;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=K0lkLD+EQQMhhmEbE2pWBgqDttfBrHSoKxZ5BaJHQPc=;
 b=HOC1CtYazUGkRZ2bCpPViK6yWoKX99/W/EOC76ci6GBfGmXxx00MOGml
 P3Pl1pv/5S0GswxmJNMLsWybMHg6iNUFyyCvDKCbdJb1b/B6IV6AZGbUA
 f0mbQfR7xPm9YzIUr1pfSLnq3BR4a7tolg6a0iy+Ah/245yvaPE4NjmeV
 /zmdmcxuLnvRfAcg7HJlUSaXC2pp0tRX707PUit9Qm8DYqV8S529xc36O
 fz/Mjw4xGGYdV8sGGJUrI07GOlbAtqRmAu7gtQ8P1+pEQIQhyqoqKdEdd
 N7aAOnOvnfeBtruR6eF1evoVmmHZWsOMWdEXbWRSi+fCgqlBX/ZiCnvSd g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="266641137"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="266641137"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 06:40:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="592364479"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 09 May 2022 06:40:34 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 9 May 2022 06:40:33 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Mon, 9 May 2022 06:40:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v2 2/2] drm/i915: Ensure damage clip area is within pipe
 area
Thread-Index: AQHYY3XOWUWshVJNeEypLjKarGCaX60XAyCA
Date: Mon, 9 May 2022 13:40:33 +0000
Message-ID: <9f4815796e12741f8a85fa445ac0b540a7e774d9.camel@intel.com>
References: <20220509072404.1423018-1-jouni.hogander@intel.com>
 <20220509072404.1423018-3-jouni.hogander@intel.com>
In-Reply-To: <20220509072404.1423018-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <857C414FA0CAA643A35AAB719EF4D833@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: Ensure damage clip area is
 within pipe area
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
Cc: "markpearson@lenovo.com" <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTA1LTA5IGF0IDEwOjI0ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnQgdXBkYXRlIGFyZWEgY2FsY3VsYXRpb24gaXMgbm90IGhhbmRsaW5nIHNpdHVh
dGlvbiB3aGVyZQ0KPiBlLmcuIGN1cnNvciBwbGFuZSBpcyBmdWxseSBvciBwYXJ0aWFsbHkgb3V0
c2lkZSBwaXBlIGFyZWEuDQo+IA0KPiBGaXggdGhpcyBieSBjaGVja2luZyBkYW1hZ2UgYXJlYSBh
Z2FpbnN0IHBpcGVfc3JjIGFyZWEgdXNpbmcNCj4gZHJtX3JlY3RfaW50ZXJzZWN0Lg0KPiANCj4g
djI6IFNldCB4MSBhbmQgeDIgaW4gZGFtYWdlZF9hcmVhIGluaXRpYWxpemF0aW9uDQo+IA0KPiBD
bG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMv
NTQ0MA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBUZXN0ZWQtYnk6
IE1hcmsgUGVhcnNvbiA8bWFya3BlYXJzb25AbGVub3ZvLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDE3ICsrKysrKysrKysrKy0t
LS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA4
YzA5OWQyNGRlODYuLmVjZDA2MmEwZmVhNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNzA4LDcgKzE3MDgsOSBAQCBpbnQgaW50ZWxfcHNy
Ml9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CSAqLw0KPiAgCWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxh
bmUsIG9sZF9wbGFuZV9zdGF0ZSwNCj4gIAkJCQkJICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsN
Cj4gLQkJc3RydWN0IGRybV9yZWN0IHNyYywgZGFtYWdlZF9hcmVhID0geyAueTEgPSAtMSB9Ow0K
PiArCQkvKiBTZXQgZGFtYWdlZF9hcmVhIHgxIGFuZCB4MiBmb3IgZHJtX3JlY3RfaW50ZXJzZWN0
IHVzYWdlICovDQo+ICsJCXN0cnVjdCBkcm1fcmVjdCBzcmMsIGRhbWFnZWRfYXJlYSA9IHsgLngx
ID0gMCwgLnkxID0gLTEsDQo+ICsJCQkJCQkgICAgICAueDIgPSBJTlRfTUFYIH07DQoNCkluIG15
IG9waW5pb24gdGhpcyBjb21tZW50IGlzIG5vdCBuZWNlc3NhcnkuDQoNCj4gIAkJc3RydWN0IGRy
bV9hdG9taWNfaGVscGVyX2RhbWFnZV9pdGVyIGl0ZXI7DQo+ICAJCXN0cnVjdCBkcm1fcmVjdCBj
bGlwOw0KPiAgDQo+IEBAIC0xNzM1LDIwICsxNzM3LDIzIEBAIGludCBpbnRlbF9wc3IyX3NlbF9m
ZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQlpZiAo
b2xkX3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpIHsNCj4gIAkJCQlkYW1hZ2VkX2FyZWEueTEg
PSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0KPiAgCQkJCWRhbWFnZWRfYXJlYS55MiA9
IG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTI7DQo+IC0JCQkJY2xpcF9hcmVhX3VwZGF0ZSgm
cGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsNCj4gKwkJCQlpZiAoZHJtX3JlY3RfaW50ZXJzZWN0
KCZkYW1hZ2VkX2FyZWEsICZjcnRjX3N0YXRlLT5waXBlX3NyYykpDQo+ICsJCQkJCWNsaXBfYXJl
YV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQoNCldoYXQgYWJvdXQgdGhlIHN1
Z2dlc3Rpb24gdG8gbW92ZSB0aGUgZHJtX3JlY3RfaW50ZXJzZWN0KCkgdG8gY2xpcF9hcmVhX3Vw
ZGF0ZSgpPw0KDQo+ICAJCQl9DQo+ICANCj4gIAkJCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGku
dmlzaWJsZSkgew0KPiAgCQkJCWRhbWFnZWRfYXJlYS55MSA9IG5ld19wbGFuZV9zdGF0ZS0+dWFw
aS5kc3QueTE7DQo+ICAJCQkJZGFtYWdlZF9hcmVhLnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBp
LmRzdC55MjsNCj4gLQkJCQljbGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2Fy
ZWEpOw0KPiArCQkJCWlmIChkcm1fcmVjdF9pbnRlcnNlY3QoJmRhbWFnZWRfYXJlYSwgJmNydGNf
c3RhdGUtPnBpcGVfc3JjKSkNCj4gKwkJCQkJY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAm
ZGFtYWdlZF9hcmVhKTsNCj4gIAkJCX0NCj4gIAkJCWNvbnRpbnVlOw0KPiAgCQl9IGVsc2UgaWYg
KG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5hbHBoYSAhPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuYWxw
aGEpIHsNCj4gIAkJCS8qIElmIGFscGhhIGNoYW5nZWQgbWFyayB0aGUgd2hvbGUgcGxhbmUgYXJl
YSBhcyBkYW1hZ2VkICovDQo+ICAJCQlkYW1hZ2VkX2FyZWEueTEgPSBuZXdfcGxhbmVfc3RhdGUt
PnVhcGkuZHN0LnkxOw0KPiAgCQkJZGFtYWdlZF9hcmVhLnkyID0gbmV3X3BsYW5lX3N0YXRlLT51
YXBpLmRzdC55MjsNCj4gLQkJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRf
YXJlYSk7DQo+ICsJCQlpZiAoZHJtX3JlY3RfaW50ZXJzZWN0KCZkYW1hZ2VkX2FyZWEsICZjcnRj
X3N0YXRlLT5waXBlX3NyYykpDQo+ICsJCQkJY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAm
ZGFtYWdlZF9hcmVhKTsNCj4gIAkJCWNvbnRpbnVlOw0KPiAgCQl9DQo+ICANCj4gQEAgLTE3Njcs
NyArMTc3Miw5IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICANCj4gIAkJZGFtYWdlZF9hcmVhLnkxICs9IG5ld19w
bGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEgLSBzcmMueTE7DQo+ICAJCWRhbWFnZWRfYXJlYS55MiAr
PSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxIC0gc3JjLnkxOw0KPiAtCQljbGlwX2FyZWFf
dXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2FyZWEpOw0KPiArDQo+ICsJCWlmIChkcm1fcmVj
dF9pbnRlcnNlY3QoJmRhbWFnZWRfYXJlYSwgJmNydGNfc3RhdGUtPnBpcGVfc3JjKSkNCj4gKwkJ
CWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQo+ICAJfQ0KPiAg
DQo+ICAJaWYgKHBpcGVfY2xpcC55MSA9PSAtMSkNCg0K
