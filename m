Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4274653F9
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 18:32:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E8656E83E;
	Wed,  1 Dec 2021 17:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 799656E83E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 17:32:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223386764"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="223386764"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 09:32:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="540900670"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 01 Dec 2021 09:32:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:32:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 09:32:35 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 09:32:35 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 14/14] drm/i915: Nuke pointless middle men
 for skl+ plane programming
Thread-Index: AQHX5sfrvd2bA6KJf0SrovXFGN3YIqwea6QA
Date: Wed, 1 Dec 2021 17:32:35 +0000
Message-ID: <e47ed6b77eeaf0780bacfd5a4cff1f0653ecaaac.camel@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-15-ville.syrjala@linux.intel.com>
In-Reply-To: <20211201152552.7821-15-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <3936CED503953A4AB45CF6F509938145@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 14/14] drm/i915: Nuke pointless middle men
 for skl+ plane programming
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

T24gV2VkLCAyMDIxLTEyLTAxIGF0IDE3OjI1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlcmUgaXMgbm8gcmVhbCBwb2ludCBpbiBoYXZpbmcgdGhpcyB0d28gc3RhZ2UNCj4g
c2tsX3Byb2dyYW1fcGxhbmUqKCkgdnMuIHNrbF9wbGFuZV91cGRhdGUqKCkgd3JhcHBlciBzdHVm
Zi4NCj4gQWxsIHdlIG5lZWQgdG8gZG8gaXMgZGV0ZXJtaW5lIHRoZSBjb3JyZWN0IGNvbG9yIHBs
YW5lIGFuZA0KPiB3ZSdyZSBkb25lLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jICAgIHwgNTMgKysrKysrLS0t
LS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDM2IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3VuaXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMNCj4gaW5kZXggOTIyNzA2NzlhOTljLi5kZTI3MDhhYzE4MDIgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9w
bGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNh
bF9wbGFuZS5jDQo+IEBAIC0xMDUzLDE1ICsxMDUzLDI0IEBAIHN0YXRpYyB2b2lkIGljbF9wbGFu
ZV9jc2NfbG9hZF9ibGFjayhzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lKQ0KPiAgCWludGVsX2Rl
X3dyaXRlX2Z3KGk5MTUsIFBMQU5FX0NTQ19QT1NUT0ZGKHBpcGUsIHBsYW5lX2lkLCAyKSwgMCk7
DQo+ICB9DQo+ICANCj4gK3N0YXRpYyBpbnQgc2tsX3BsYW5lX2NvbG9yX3BsYW5lKGNvbnN0IHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ICt7DQo+ICsJLyogUHJvZ3Jh
bSB0aGUgVVYgcGxhbmUgb24gcGxhbmFyIG1hc3RlciAqLw0KPiArCWlmIChwbGFuZV9zdGF0ZS0+
cGxhbmFyX2xpbmtlZF9wbGFuZSAmJiAhcGxhbmVfc3RhdGUtPnBsYW5hcl9zbGF2ZSkNCj4gKwkJ
cmV0dXJuIDE7DQo+ICsJZWxzZQ0KPiArCQlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiAgc3RhdGlj
IHZvaWQNCj4gLXNrbF9wcm9ncmFtX3BsYW5lX25vYXJtKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxh
bmUsDQo+IC0JCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4g
LQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsDQo+IC0JCQlp
bnQgY29sb3JfcGxhbmUpDQo+ICtza2xfcGxhbmVfdXBkYXRlX25vYXJtKHN0cnVjdCBpbnRlbF9w
bGFuZSAqcGxhbmUsDQo+ICsJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSwNCj4gKwkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
cGxhbmVfc3RhdGUpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
ID0gdG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOw0KPiAgCWVudW0gcGxhbmVfaWQgcGxhbmVfaWQg
PSBwbGFuZS0+aWQ7DQo+ICAJZW51bSBwaXBlIHBpcGUgPSBwbGFuZS0+cGlwZTsNCj4gKwlpbnQg
Y29sb3JfcGxhbmUgPSBza2xfcGxhbmVfY29sb3JfcGxhbmUocGxhbmVfc3RhdGUpOw0KPiAgCXUz
MiBzdHJpZGUgPSBza2xfcGxhbmVfc3RyaWRlKHBsYW5lX3N0YXRlLCBjb2xvcl9wbGFuZSk7DQo+
ICAJY29uc3Qgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcuZmI7
DQo+ICAJaW50IGNydGNfeCA9IHBsYW5lX3N0YXRlLT51YXBpLmRzdC54MTsNCj4gQEAgLTExMTQs
MTQgKzExMjMsMTQgQEAgc2tsX3Byb2dyYW1fcGxhbmVfbm9hcm0oc3RydWN0IGludGVsX3BsYW5l
ICpwbGFuZSwNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQNCj4gLXNrbF9wcm9ncmFtX3BsYW5l
X2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAtCQkgICAgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gLQkJICAgICAgY29uc3Qgc3RydWN0IGlu
dGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4gLQkJICAgICAgaW50IGNvbG9yX3BsYW5l
KQ0KPiArc2tsX3BsYW5lX3VwZGF0ZV9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4g
KwkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJ
ICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiAgew0K
PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUocGxhbmUtPmJh
c2UuZGV2KTsNCj4gIAllbnVtIHBsYW5lX2lkIHBsYW5lX2lkID0gcGxhbmUtPmlkOw0KPiAgCWVu
dW0gcGlwZSBwaXBlID0gcGxhbmUtPnBpcGU7DQo+ICsJaW50IGNvbG9yX3BsYW5lID0gc2tsX3Bs
YW5lX2NvbG9yX3BsYW5lKHBsYW5lX3N0YXRlKTsNCj4gIAl1MzIgeCA9IHBsYW5lX3N0YXRlLT52
aWV3LmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS54Ow0KPiAgCXUzMiB5ID0gcGxhbmVfc3RhdGUt
PnZpZXcuY29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnk7DQo+ICAJdTMyIHBsYW5lX2NvbG9yX2N0
bCA9IDA7DQo+IEBAIC0xMjAyLDM0ICsxMjExLDYgQEAgc2tsX3BsYW5lX2FzeW5jX2ZsaXAoc3Ry
dWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZf
cHJpdi0+dW5jb3JlLmxvY2ssIGlycWZsYWdzKTsNCj4gIH0NCj4gIA0KPiAtc3RhdGljIHZvaWQN
Cj4gLXNrbF9wbGFuZV91cGRhdGVfbm9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4g
LQkJICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAt
CQkgICAgICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkNCj4g
LXsNCj4gLQlpbnQgY29sb3JfcGxhbmUgPSAwOw0KPiAtDQo+IC0JaWYgKHBsYW5lX3N0YXRlLT5w
bGFuYXJfbGlua2VkX3BsYW5lICYmICFwbGFuZV9zdGF0ZS0+cGxhbmFyX3NsYXZlKQ0KPiAtCQkv
KiBQcm9ncmFtIHRoZSBVViBwbGFuZSBvbiBwbGFuYXIgbWFzdGVyICovDQo+IC0JCWNvbG9yX3Bs
YW5lID0gMTsNCj4gLQ0KPiAtCXNrbF9wcm9ncmFtX3BsYW5lX25vYXJtKHBsYW5lLCBjcnRjX3N0
YXRlLCBwbGFuZV9zdGF0ZSwgY29sb3JfcGxhbmUpOw0KPiAtfQ0KPiAtDQo+IC1zdGF0aWMgdm9p
ZA0KPiAtc2tsX3BsYW5lX3VwZGF0ZV9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4g
LQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gLQkJ
ICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiAtew0K
PiAtCWludCBjb2xvcl9wbGFuZSA9IDA7DQo+IC0NCj4gLQlpZiAocGxhbmVfc3RhdGUtPnBsYW5h
cl9saW5rZWRfcGxhbmUgJiYgIXBsYW5lX3N0YXRlLT5wbGFuYXJfc2xhdmUpDQo+IC0JCS8qIFBy
b2dyYW0gdGhlIFVWIHBsYW5lIG9uIHBsYW5hciBtYXN0ZXIgKi8NCj4gLQkJY29sb3JfcGxhbmUg
PSAxOw0KPiAtDQo+IC0Jc2tsX3Byb2dyYW1fcGxhbmVfYXJtKHBsYW5lLCBjcnRjX3N0YXRlLCBw
bGFuZV9zdGF0ZSwgY29sb3JfcGxhbmUpOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgYm9vbCBpbnRl
bF9mb3JtYXRfaXNfcDAxeCh1MzIgZm9ybWF0KQ0KPiAgew0KPiAgCXN3aXRjaCAoZm9ybWF0KSB7
DQoNCg==
