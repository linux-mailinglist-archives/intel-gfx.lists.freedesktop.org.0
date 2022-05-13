Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FB6526285
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 15:02:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201F710EFD7;
	Fri, 13 May 2022 13:02:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FF0410EFD7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 13:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652446945; x=1683982945;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=K8grbnm7Ux/Hbs66n+4gmw2vN05g3cjcZsCKj2OqRec=;
 b=M7617sivx3e0C3x9vVoWxOVlpgG9R9QJ0v/00c6naFGL1GpwagHqESth
 SRZe5kOYgWCg7buCBcx307+Nm5fsSjdZ7X7btgITRQ4MBslEYvzrvV8E8
 RwRKMMN/aKqSjgvQ9FzuEbXfYDXuE6i0L8jFLJrt21Jo2yLOU5HC/XGZe
 +7bHTz12RlS5iDhVvMp6q0Al8XIjLwOKCXrbOLvzYUYAZvVl0OqvzKcAw
 hIupwKw0n7XtjrlFQNcYGE6NzRyVQYJEXrMWD+vzO+5GVqQIjuH/o0+Sp
 Fb6dTw3VxH0VQC9ryf+gtWnQnU+cglR9ELdD2Kf70zwa2JqU0GCXd+onX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="270234194"
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="270234194"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 06:02:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="567189805"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 13 May 2022 06:02:24 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 13 May 2022 06:02:24 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 13 May 2022 06:02:24 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v4 2/2] drm/i915: Ensure damage clip area is within pipe
 area
Thread-Index: AQHYZsVJp/9bAkm/w0+ILnJ5sd656q0dOy4A
Date: Fri, 13 May 2022 13:02:24 +0000
Message-ID: <e17d3b5cc3af5c9b7df4a7b26d076691d20d019b.camel@intel.com>
References: <20220513123027.655313-1-jouni.hogander@intel.com>
 <20220513123027.655313-3-jouni.hogander@intel.com>
In-Reply-To: <20220513123027.655313-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <8B58C8788455174B93EEB7BF6115B176@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Ensure damage clip area is
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIyLTA1LTEzIGF0IDE1OjMwICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnQgdXBkYXRlIGFyZWEgY2FsY3VsYXRpb24gaXMgbm90IGhhbmRsaW5nIHNpdHVh
dGlvbiB3aGVyZQ0KPiBlLmcuIGN1cnNvciBwbGFuZSBpcyBmdWxseSBvciBwYXJ0aWFsbHkgb3V0
c2lkZSBwaXBlIGFyZWEuDQo+IA0KPiBGaXggdGhpcyBieSBjaGVja2luZyBkYW1hZ2UgYXJlYSBh
Z2FpbnN0IHBpcGVfc3JjIGFyZWEgdXNpbmcNCj4gZHJtX3JlY3RfaW50ZXJzZWN0Lg0KPiANCj4g
djI6IFNldCB4MSBhbmQgeDIgaW4gZGFtYWdlZF9hcmVhIGluaXRpYWxpemF0aW9uDQo+IHYzOiBN
b3ZlIGRybV9yZWN0X2ludGVyc2VjdCBpbnRvIGNsaXBfYXJlYV91cGRhdGUNCj4gdjQ6IGRyYXdf
YXJlYSAtPiBwaXBlX3NyYw0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy81NDQwDQo+IENjOiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWth
LmthaG9sYUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgfCAyMyArKysrKysrKysrKysrKysrLS0tLS0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMWYwMzFlYmMxNDU2Li4x
ODA1ODI1MjAzN2QgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBAQCAtMTYxOCw4ICsxNjE4LDEyIEBAIHN0YXRpYyB2b2lkIHBzcjJfbWFuX3Rya19j
dGxfY2FsYyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIH0NCj4gIA0K
PiAgc3RhdGljIHZvaWQgY2xpcF9hcmVhX3VwZGF0ZShzdHJ1Y3QgZHJtX3JlY3QgKm92ZXJsYXBf
ZGFtYWdlX2FyZWEsDQo+IC0JCQkgICAgIHN0cnVjdCBkcm1fcmVjdCAqZGFtYWdlX2FyZWEpDQo+
ICsJCQkgICAgIHN0cnVjdCBkcm1fcmVjdCAqZGFtYWdlX2FyZWEsDQo+ICsJCQkgICAgIHN0cnVj
dCBkcm1fcmVjdCAqcGlwZV9zcmMpDQo+ICB7DQo+ICsJaWYgKCFkcm1fcmVjdF9pbnRlcnNlY3Qo
ZGFtYWdlX2FyZWEsIHBpcGVfc3JjKSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICAJaWYgKG92ZXJs
YXBfZGFtYWdlX2FyZWEtPnkxID09IC0xKSB7DQo+ICAJCW92ZXJsYXBfZGFtYWdlX2FyZWEtPnkx
ID0gZGFtYWdlX2FyZWEtPnkxOw0KPiAgCQlvdmVybGFwX2RhbWFnZV9hcmVhLT55MiA9IGRhbWFn
ZV9hcmVhLT55MjsNCj4gQEAgLTE3MDksNyArMTcxMyw4IEBAIGludCBpbnRlbF9wc3IyX3NlbF9m
ZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJICovDQo+
ICAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX3BsYW5lX2luX3N0YXRlKHN0YXRlLCBwbGFuZSwgb2xk
X3BsYW5lX3N0YXRlLA0KPiAgCQkJCQkgICAgIG5ld19wbGFuZV9zdGF0ZSwgaSkgew0KPiAtCQlz
dHJ1Y3QgZHJtX3JlY3Qgc3JjLCBkYW1hZ2VkX2FyZWEgPSB7IC55MSA9IC0xIH07DQo+ICsJCXN0
cnVjdCBkcm1fcmVjdCBzcmMsIGRhbWFnZWRfYXJlYSA9IHsgLngxID0gMCwgLnkxID0gLTEsDQo+
ICsJCQkJCQkgICAgICAueDIgPSBJTlRfTUFYIH07DQo+ICAJCXN0cnVjdCBkcm1fYXRvbWljX2hl
bHBlcl9kYW1hZ2VfaXRlciBpdGVyOw0KPiAgCQlzdHJ1Y3QgZHJtX3JlY3QgY2xpcDsNCj4gIA0K
PiBAQCAtMTczNiwyMCArMTc0MSwyMyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJaWYgKG9sZF9wbGFuZV9z
dGF0ZS0+dWFwaS52aXNpYmxlKSB7DQo+ICAJCQkJZGFtYWdlZF9hcmVhLnkxID0gb2xkX3BsYW5l
X3N0YXRlLT51YXBpLmRzdC55MTsNCj4gIAkJCQlkYW1hZ2VkX2FyZWEueTIgPSBvbGRfcGxhbmVf
c3RhdGUtPnVhcGkuZHN0LnkyOw0KPiAtCQkJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwg
JmRhbWFnZWRfYXJlYSk7DQo+ICsJCQkJY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFt
YWdlZF9hcmVhLA0KPiArCQkJCQkJICZjcnRjX3N0YXRlLT5waXBlX3NyYyk7DQo+ICAJCQl9DQo+
ICANCj4gIAkJCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkgew0KPiAgCQkJCWRh
bWFnZWRfYXJlYS55MSA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQo+ICAJCQkJZGFt
YWdlZF9hcmVhLnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MjsNCj4gLQkJCQljbGlw
X2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2FyZWEpOw0KPiArCQkJCWNsaXBfYXJl
YV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSwNCj4gKwkJCQkJCSAmY3J0Y19zdGF0
ZS0+cGlwZV9zcmMpOw0KPiAgCQkJfQ0KPiAgCQkJY29udGludWU7DQo+ICAJCX0gZWxzZSBpZiAo
bmV3X3BsYW5lX3N0YXRlLT51YXBpLmFscGhhICE9IG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5hbHBo
YSkgew0KPiAgCQkJLyogSWYgYWxwaGEgY2hhbmdlZCBtYXJrIHRoZSB3aG9sZSBwbGFuZSBhcmVh
IGFzIGRhbWFnZWQgKi8NCj4gIAkJCWRhbWFnZWRfYXJlYS55MSA9IG5ld19wbGFuZV9zdGF0ZS0+
dWFwaS5kc3QueTE7DQo+ICAJCQlkYW1hZ2VkX2FyZWEueTIgPSBuZXdfcGxhbmVfc3RhdGUtPnVh
cGkuZHN0LnkyOw0KPiAtCQkJY2xpcF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9h
cmVhKTsNCj4gKwkJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSwN
Cj4gKwkJCQkJICZjcnRjX3N0YXRlLT5waXBlX3NyYyk7DQo+ICAJCQljb250aW51ZTsNCj4gIAkJ
fQ0KPiAgDQo+IEBAIC0xNzYwLDcgKzE3NjgsOCBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hf
dXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCQkJICAgJm5l
d19wbGFuZV9zdGF0ZS0+dWFwaSk7DQo+ICAJCWRybV9hdG9taWNfZm9yX2VhY2hfcGxhbmVfZGFt
YWdlKCZpdGVyLCAmY2xpcCkgew0KPiAgCQkJaWYgKGRybV9yZWN0X2ludGVyc2VjdCgmY2xpcCwg
JnNyYykpDQo+IC0JCQkJY2xpcF9hcmVhX3VwZGF0ZSgmZGFtYWdlZF9hcmVhLCAmY2xpcCk7DQo+
ICsJCQkJY2xpcF9hcmVhX3VwZGF0ZSgmZGFtYWdlZF9hcmVhLCAmY2xpcCwNCj4gKwkJCQkJCSAm
Y3J0Y19zdGF0ZS0+cGlwZV9zcmMpOw0KPiAgCQl9DQo+ICANCj4gIAkJaWYgKGRhbWFnZWRfYXJl
YS55MSA9PSAtMSkNCj4gQEAgLTE3NjgsNyArMTc3Nyw3IEBAIGludCBpbnRlbF9wc3IyX3NlbF9m
ZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICANCj4gIAkJ
ZGFtYWdlZF9hcmVhLnkxICs9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTEgLSBzcmMueTE7
DQo+ICAJCWRhbWFnZWRfYXJlYS55MiArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxIC0g
c3JjLnkxOw0KPiAtCQljbGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2FyZWEp
Ow0KPiArCQljbGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2FyZWEsICZjcnRj
X3N0YXRlLT5waXBlX3NyYyk7DQo+ICAJfQ0KPiAgDQo+ICAJLyoNCg0K
