Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AE1526728
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 18:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CED6210E6E5;
	Fri, 13 May 2022 16:35:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BDE810E6E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 16:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652459706; x=1683995706;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vahVcPjbL25yXjroW3HuwhfkGqqC1wfp+c46GG/cLiU=;
 b=N3e0TLHdJxPtHhNl7HnRiDCKFbgcUnlpk46bRpk3uk8gJgCVXJmYtuvD
 Haeh8B18/EcivX+XYpLs9980P1KKd4kYIN4g9lwqE5C24q4oIVNdUmzAa
 fCVZHbniHof1bmeWtNk/ceUBHsDN8O5z6VsK2X3cyhzyxWU8ErmiG2rc0
 tM77A92Mv0KMjE+XDTTkyGvaQ6mrOEgy0Yxkxxqb6vvYf790GS1sSbUEm
 akIffi4drrZbVpCqN+LQuPAcdQterTCJs3iaqTGCZXkwXZEphil0lcuCs
 S7EUBIB4TJ04H/Zi04tXFlZunZyqPRtmLS4UASPcclFXvG1uOBqD1vBXX A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10346"; a="270015543"
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="270015543"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 09:35:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="603902702"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 13 May 2022 09:35:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 13 May 2022 09:35:04 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 13 May 2022 09:35:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v5 1/2] drm/i915/psr: Use full update In case of area
 calculation fails
Thread-Index: AQHYZtW8zs2ZPNrtJUG67i1lXTCFGq0ddnkA
Date: Fri, 13 May 2022 16:35:04 +0000
Message-ID: <3a77d341abec7a7db13c02fd17c40035a743b520.camel@intel.com>
References: <20220513142811.779331-1-jouni.hogander@intel.com>
 <20220513142811.779331-2-jouni.hogander@intel.com>
In-Reply-To: <20220513142811.779331-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <1DEAF5A7671E9A46A40E9D46CE010184@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915/psr: Use full update In
 case of area calculation fails
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

T24gRnJpLCAyMDIyLTA1LTEzIGF0IDE3OjI4ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnRseSB3ZSBoYXZlIHNvbWUgY29ybmVyIGNhc2VzIHdoZXJlIGFyZWEgY2FsY3Vs
YXRpb24gZmFpbHMuICBGb3INCj4gdGhlc2Ugc2VsIGZldGNoIGFyZWEgY2FsY3VsYXRpb24gZW5k
cyB1cCBoYXZpbmcgdXBkYXRlIGFyZWEgYXMgeTEgPSAwLA0KPiB5MiA9IDQuIEluc3RlYWQgb2Yg
dGhlc2UgdmFsdWVzIHNhZmVyIG9wdGlvbiBpcyBmdWxsIHVwZGF0ZS4NCj4gDQo+IE9uZSBvZiBz
dWNoIGZvciBleGFtcGxlIGlzIGJpZyBmYiB3aXRoIG9mZnNldC4gV2UgZG9uJ3QgaGF2ZSB1c2Fi
bGUNCj4gb2Zmc2V0IGluIHBzcjJfc2VsX2ZldGNoX3VwZGF0ZS4gQ3VycmVudGx5IGl0J3Mgb3Bl
biB3aGF0IGlzIHRoZQ0KPiBwcm9wZXIgd2F5IHRvIGZpeCB0aGlzIGNvcm5lciBjYXNlLiBVc2Ug
ZnVsbCB1cGRhdGUgZm9yIG5vdy4NCj4gDQo+IHYyOiBDb21taXQgbWVzc2FnZSBtb2RpZmllZA0K
PiB2MzogUHJpbnQgb3V0IGRlYnVnIGluZm8gb25jZSB3aGVuIGFyZWEgY2FsY3VsYXRpb24gZmFp
bHMNCj4gdjQ6IFVzZSBkcm1faW5mb19vbmNlDQo+IHY1OiBwaXBlQSAtPiAicGlwZSAlYyIsIHBp
cGVfbmFtZShjcnRjLXBpcGUpDQo+IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyB8IDE0ICsrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGluZGV4IDA2ZGI0MDdlMjc0OS4uZmVjZGFhZWFjMzllIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE2ODUsNiArMTY4NSw3IEBAIHN0
YXRpYyBib29sIHBzcjJfc2VsX2ZldGNoX3BpcGVfc3RhdGVfc3VwcG9ydGVkKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjDQo+ICBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQ0KPiAgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMp
Ow0KPiAgCXN0cnVjdCBkcm1fcmVjdCBwaXBlX2NsaXAgPSB7IC54MSA9IDAsIC55MSA9IC0xLCAu
eDIgPSBJTlRfTUFYLCAueTIgPSAtMSB9Ow0KPiAgCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAq
bmV3X3BsYW5lX3N0YXRlLCAqb2xkX3BsYW5lX3N0YXRlOw0KPiBAQCAtMTc3MCw2ICsxNzcxLDE5
IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ICAJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRf
YXJlYSk7DQo+ICAJfQ0KPiAgDQo+ICsJLyoNCj4gKwkgKiBUT0RPOiBGb3Igbm93IHdlIGFyZSBq
dXN0IHVzaW5nIGZ1bGwgdXBkYXRlIGluIGNhc2UNCj4gKwkgKiBzZWxlY3RpdmUgZmV0Y2ggYXJl
YSBjYWxjdWxhdGlvbiBmYWlscy4gVG8gb3B0aW1pemUgdGhpcyB3ZQ0KPiArCSAqIHNob3VsZCBp
ZGVudGlmeSBjYXNlcyB3aGVyZSB0aGlzIGhhcHBlbnMgYW5kIGZpeCB0aGUgYXJlYQ0KPiArCSAq
IGNhbGN1bGF0aW9uIGZvciB0aG9zZS4NCj4gKwkgKi8NCj4gKwlpZiAocGlwZV9jbGlwLnkxID09
IC0xKSB7DQo+ICsJCWRybV9pbmZvX29uY2UoJmRldl9wcml2LT5kcm0sDQo+ICsJCQkgICAgICAi
U2VsZWN0aXZlIGZldGNoIGFyZWEgY2FsY3VsYXRpb24gZmFpbGVkIGluIHBpcGUgJWNcbiIsDQo+
ICsJCQkgICAgICBwaXBlX25hbWUoY3J0Yy0+cGlwZSkpOw0KPiArCQlmdWxsX3VwZGF0ZSA9IHRy
dWU7DQo+ICsJfQ0KPiArDQo+ICAJaWYgKGZ1bGxfdXBkYXRlKQ0KPiAgCQlnb3RvIHNraXBfc2Vs
X2ZldGNoX3NldF9sb29wOw0KPiAgDQoNCg==
