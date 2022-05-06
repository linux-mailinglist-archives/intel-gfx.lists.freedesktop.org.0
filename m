Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C343551DC70
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 17:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0390D10E7B6;
	Fri,  6 May 2022 15:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3BA510E7B6
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 15:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651851835; x=1683387835;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JqLN1hU+eA/6DobtbGKwrxysrSs4wHIiVNmcgs995OM=;
 b=SSCqjCM4+ZhDZJIeTmG/1bEPl6KXQ3m2qaSUGkQ2ZdMG1OZI4ts4+CpV
 z56JfVBraabFkX/40gGGSY6NE2QpkXbX2QWaiUJLXZ/jraUQBgw2pU6Xo
 lkbK9LXQgHXMNWzH0ODig64pdLAbhJoEQG9E1X7UGIbWZawL97/o6bw4N
 exIc+yq7w0lcEAk7OrXfb4lppMIN3YmxSiiILugqwj71iVPT8U15tXaC7
 4PwyBiTXl/op3ucdS+uOj8rOJvZ9dQW5VFYWpHF62uFiiTx4mS4cAIf0h
 Fe8/ZV947L5dpLYIKVDV/pX65gqZt4fBDWunTVvooCQT3CfK+xoCrJqbd Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10339"; a="249031420"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="249031420"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 08:43:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="812434742"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 06 May 2022 08:43:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 6 May 2022 08:43:49 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 6 May 2022 08:43:49 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915: Ensure damage clip area is within pipe area
Thread-Index: AQHYYQ1NtmSsaHpXZUijMJSX1GVLO60Sc2IA
Date: Fri, 6 May 2022 15:43:48 +0000
Message-ID: <c79692eb687ba3ebfa0470f07d381607b2825fbf.camel@intel.com>
References: <20220506054834.2822650-1-jouni.hogander@intel.com>
 <20220506054834.2822650-3-jouni.hogander@intel.com>
In-Reply-To: <20220506054834.2822650-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <D78EE82ABD9EE0448B583C3BEED35294@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Ensure damage clip area is
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

T24gRnJpLCAyMDIyLTA1LTA2IGF0IDA4OjQ4ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnQgdXBkYXRlIGFyZWEgY2FsY3VsYXRpb24gaXMgbm90IGhhbmRsaW5nIHNpdHVh
dGlvbiB3aGVyZQ0KPiBlLmcuIGN1cnNvciBwbGFuZSBpcyBmdWxseSBvciBwYXJ0aWFsbHkgb3V0
c2lkZSBwaXBlIGFyZWEuDQo+IA0KPiBGaXggdGhpcyBieSBjaGVja2luZyBkYW1hZ2UgYXJlYSBh
Z2FpbnN0IHBpcGVfc3JjIGFyZWEgdXNpbmcNCj4gZHJtX3JlY3RfaW50ZXJzZWN0Lg0KPiANCj4g
Q2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVz
LzU0NDANCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gVGVzdGVkLWJ5
OiBNYXJrIFBlYXJzb24gPG1hcmtwZWFyc29uQGxlbm92by5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNyArKysrKysrKysrKysr
LS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXgg
OGMwOTlkMjRkZTg2Li41MjI5YmE4OWEwNzkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTcyNCw2ICsxNzI0LDEwIEBAIGludCBpbnRlbF9w
c3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+
ICAJCQlicmVhazsNCj4gIAkJfQ0KPiAgDQo+ICsJCS8qIFNldCB4MSBhbmQgeDIgZm9yIGRybV9y
ZWN0X2ludGVyc2VjdCB1c2FnZSAqLw0KPiArCQlkYW1hZ2VkX2FyZWEueDEgPSAwOw0KPiArCQlk
YW1hZ2VkX2FyZWEueDIgPSBJTlRfTUFYOw0KDQpNb3ZlIHRoZSBhYm92ZSB0byB0aGUgdmFyaWFi
bGUgZGVmaW5pdGlvbiBhbmQgaW5pdGlhbGl6YXRpb24uDQoNCj4gKw0KPiAgCQkvKg0KPiAgCQkg
KiBJZiB2aXNpYmlsaXR5IG9yIHBsYW5lIG1vdmVkLCBtYXJrIHRoZSB3aG9sZSBwbGFuZSBhcmVh
IGFzDQo+ICAJCSAqIGRhbWFnZWQgYXMgaXQgbmVlZHMgdG8gYmUgY29tcGxldGUgcmVkcmF3IGlu
IHRoZSBuZXcgYW5kIG9sZA0KPiBAQCAtMTczNSwyMCArMTczOSwyMyBAQCBpbnQgaW50ZWxfcHNy
Ml9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CQkJaWYgKG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKSB7DQo+ICAJCQkJZGFtYWdlZF9h
cmVhLnkxID0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCj4gIAkJCQlkYW1hZ2VkX2Fy
ZWEueTIgPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkyOw0KPiAtCQkJCWNsaXBfYXJlYV91
cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQo+ICsJCQkJaWYgKGRybV9yZWN0X2lu
dGVyc2VjdCgmZGFtYWdlZF9hcmVhLCAmY3J0Y19zdGF0ZS0+cGlwZV9zcmMpKQ0KPiArCQkJCQlj
bGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2FyZWEpOw0KPiAgCQkJfQ0KPiAg
DQo+ICAJCQlpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpIHsNCj4gIAkJCQlkYW1h
Z2VkX2FyZWEueTEgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0KPiAgCQkJCWRhbWFn
ZWRfYXJlYS55MiA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTI7DQo+IC0JCQkJY2xpcF9h
cmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsNCj4gKwkJCQlpZiAoZHJtX3Jl
Y3RfaW50ZXJzZWN0KCZkYW1hZ2VkX2FyZWEsICZjcnRjX3N0YXRlLT5waXBlX3NyYykpDQo+ICsJ
CQkJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQo+ICAJCQl9
DQo+ICAJCQljb250aW51ZTsNCj4gIAkJfSBlbHNlIGlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGku
YWxwaGEgIT0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLmFscGhhKSB7DQo+ICAJCQkvKiBJZiBhbHBo
YSBjaGFuZ2VkIG1hcmsgdGhlIHdob2xlIHBsYW5lIGFyZWEgYXMgZGFtYWdlZCAqLw0KPiAgCQkJ
ZGFtYWdlZF9hcmVhLnkxID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCj4gIAkJCWRh
bWFnZWRfYXJlYS55MiA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTI7DQo+IC0JCQljbGlw
X2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2FyZWEpOw0KPiArCQkJaWYgKGRybV9y
ZWN0X2ludGVyc2VjdCgmZGFtYWdlZF9hcmVhLCAmY3J0Y19zdGF0ZS0+cGlwZV9zcmMpKQ0KPiAr
CQkJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQo+ICAJCQlj
b250aW51ZTsNCj4gIAkJfQ0KPiAgDQo+IEBAIC0xNzY3LDcgKzE3NzQsOSBAQCBpbnQgaW50ZWxf
cHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiAgDQo+ICAJCWRhbWFnZWRfYXJlYS55MSArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0Lnkx
IC0gc3JjLnkxOw0KPiAgCQlkYW1hZ2VkX2FyZWEueTIgKz0gbmV3X3BsYW5lX3N0YXRlLT51YXBp
LmRzdC55MSAtIHNyYy55MTsNCj4gLQkJY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFt
YWdlZF9hcmVhKTsNCj4gKw0KPiArCQlpZiAoZHJtX3JlY3RfaW50ZXJzZWN0KCZkYW1hZ2VkX2Fy
ZWEsICZjcnRjX3N0YXRlLT5waXBlX3NyYykpDQo+ICsJCQljbGlwX2FyZWFfdXBkYXRlKCZwaXBl
X2NsaXAsICZkYW1hZ2VkX2FyZWEpOw0KDQpBcyBpdCBpcyByZXBlYXRpbmcgbW92ZSB0aGUgZHJt
X3JlY3RfaW50ZXJzZWN0KCkgY2FsbCB0byBjbGlwX2FyZWFfdXBkYXRlKCksIGFkZGluZyBhIGNy
dGNfc3RhdGUgcGFyYW1ldGVyIG9yIHBpcGVfc3JjLCB5b3VyIGNhbGwuDQoNCkFsc28gcGxlYXNl
IGluY2x1ZGUgYSBGaXhlcyB0YWcgdG8gc29tZSBjb21taXQgdGhhdCBtYWtlcyBzZW5zZSBzbyB0
aGlzIHBhdGNoIGlzIGJhY2twb3J0ZWQgdG8gb2xkZXIga2VybmVscyB3aXRoIHNlbGVjdGl2ZSBm
ZXRjaCBlbmFibGVkLg0KDQo+ICAJfQ0KPiAgDQo+ICAJaWYgKHBpcGVfY2xpcC55MSA9PSAtMSkN
Cg0K
