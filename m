Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B9D500FFB
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 16:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73DB010FECB;
	Thu, 14 Apr 2022 14:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB6EE10FECB
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 14:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649946381; x=1681482381;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=pAajnBq7Wrd2eo2Y0a/MbO1lNINH/d0aSzz4/8NxYEQ=;
 b=PpRgzwzbh4Wn90B6O1pNBQ2p2um2MXJUMBp8ey2mgDJtX+rTE2OSZ/Xk
 wFQ7p9b9WLDMQcgc6K6/75QpQPTGx8pspj9v5Gw6GJls4oaudrH8NLuSJ
 toIASFNXvzxIMOXiRoZ8r19npGjZkbRzIWVj6NWusIMZegXqYSdvjhTOE
 JTnZcausrFAhxlynjne/W8FLSBaw+Q30lNZ1GDCXn4RrV/10vCnymRm96
 OsOhIBAV4nvrufOXPwjsmX3KeHkNxFqAIq3b3JckUMerQWoCn+DLHDxVF
 KnvO5lwyd94d9Km9T9iPY1xYinyeq8/neD55WUHtzHjEDypYI7qXHE3Rl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="242872804"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="242872804"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 07:26:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="527413367"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 14 Apr 2022 07:26:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 07:26:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 07:26:20 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Thu, 14 Apr 2022 07:26:20 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v2 2/2] drm/i915/display/psr: Do not check for
 PSR2_MAN_TRK_CTL_ENABLE on alderlake-P
Thread-Index: AQHYT1V586+7SZme5kSoDqWrtpNtxazvuBKAgAA2RgA=
Date: Thu, 14 Apr 2022 14:26:20 +0000
Message-ID: <cb4ee9b3bc0f9415ec13c87b004ca2214e20592b.camel@intel.com>
References: <20220413164351.48986-1-jose.souza@intel.com>
 <20220413164351.48986-2-jose.souza@intel.com>
 <c9a1694b0587f7682e674bcad639825d2c042629.camel@intel.com>
In-Reply-To: <c9a1694b0587f7682e674bcad639825d2c042629.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <5170D93D61299846B842426386205F05@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/display/psr: Do not check
 for PSR2_MAN_TRK_CTL_ENABLE on alderlake-P
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

T24gVGh1LCAyMDIyLTA0LTE0IGF0IDExOjEzICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFdlZCwgMjAyMi0wNC0xMyBhdCAwOTo0MyAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSB3cm90ZToNCj4gPiBBbGRlcmxha2UtUCBkb24ndCBoYXZlIFBTUjJfTUFOX1RSS19DVExf
RU5BQkxFIGJpdCwgaW5zdGVhZCBpdCBoYXZlDQo+ID4gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NG
X1BBUlRJQUxfRlJBTUVfVVBEQVRFIGluIHRoZSBzYW1lIGJpdCBidXQNCj4gPiB0aGlzDQo+ID4g
Yml0IGlzIGNsZWFyZWFkIGFmdGVyIGVhY2ggdmJsYW5rIHNvIHdlIGNhbid0IGNvdW50IG9uIGhh
dmluZyBpdA0KPiA+IHNldCBhZnRlciBwbGFuZXMgYXJlIHByb2dyYW1tZWQuDQo+ID4gDQo+ID4g
Q2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IEZpeGVz
OiA3MzI2MmRiNjhjMjcgKCJkcm0vaTkxNS9kaXNwbGF5OiBNYXRjaCBQU1IyIHNlbGVjdGl2ZSBm
ZXRjaA0KPiA+IHNlcXVlbmNlcyB3aXRoIHNwZWNpZmljYXRpb24iKQ0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTEgKysr
KysrKy0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlv
bnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+IGluZGV4IDhlYzdjMTYxMjg0YmUuLjg0YWVlZTYzYTNlODAgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtNTY1LDE2
ICs1NjUsMTkgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2Rw
DQo+ID4gKmludGVsX2RwKQ0KPiA+ICAgICAgICAgICAgICAgdmFsIHw9IEVEUF9QU1IyX1NVX1NE
UF9TQ0FOTElORTsNCj4gPiANCj4gPiAgICAgICBpZiAoaW50ZWxfZHAtPnBzci5wc3IyX3NlbF9m
ZXRjaF9lbmFibGVkKSB7DQo+ID4gLSAgICAgICAgICAgICB1MzIgdG1wOw0KPiA+IC0NCj4gPiAg
ICAgICAgICAgICAgIC8qIFdhXzE0MDgzMzA4NDcgKi8NCj4gPiAgICAgICAgICAgICAgIGlmIChJ
U19UR0xfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0IwKSkNCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgaW50ZWxfZGVfcm13KGRldl9wcml2LCBDSElDS0VOX1BBUjFfMSwN
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERJU19SQU1fQllQQVNTX1BT
UjJfTUFOX1RSQUNLLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRElT
X1JBTV9CWVBBU1NfUFNSMl9NQU5fVFJBQ0spOw0KPiA+IA0KPiA+IC0gICAgICAgICAgICAgdG1w
ID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwNCj4gPiBQU1IyX01BTl9UUktfQ1RMKGludGVsX2Rw
LT5wc3IudHJhbnNjb2RlcikpOw0KPiA+IC0gICAgICAgICAgICAgZHJtX1dBUk5fT04oJmRldl9w
cml2LT5kcm0sICEodG1wICYNCj4gPiBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRSkpOw0KPiA+ICsg
ICAgICAgICAgICAgaWYgKCFJU19BTERFUkxBS0VfUChkZXZfcHJpdikpIHsNCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgdTMyIHRtcDsNCj4gPiArDQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHRtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgUFNSMl9NQU5fVFJLX0NUTChpbnRlbF9kcC0NCj4gPiA+IHBz
ci50cmFuc2NvZGVyKSk7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRybV9XQVJOX09OKCZk
ZXZfcHJpdi0+ZHJtLCAhKHRtcCAmDQo+ID4gUFNSMl9NQU5fVFJLX0NUTF9FTkFCTEUpKTsNCj4g
PiArICAgICAgICAgICAgIH0NCj4gDQo+IEkgdGhpbmsgcHJvcGVyIGZpeCBmb3IgdGhpcyB3YXJu
aW5nIGlzIHRvIGNoYW5nZQ0KPiBQU1IyX01BTl9UUktfQ1RMX0VOQUJMRSB0byBtYW5fdHJrX2N0
bF9wYXJ0aWFsX2ZyYW1lX2JpdF9nZXQoKT8gVGhlbiB3ZQ0KPiBzdGlsbCBuZWVkIHRvIGZpZ3Vy
ZSBvdXQgaG93IHRvIGZpeCB0aGUgb3JpZ2luYWwgaXNzdWUgaGF2aW5nIHRoaXMNCj4gd2Fybmlu
ZyB0cmlnZ2VyZWQuDQoNCkZvciBUR0wgSSBiZWxpZXZlIHRoYXQgUFNSMl9NQU5fVFJLX0NUTF9T
Rl9QQVJUSUFMX0ZSQU1FX1VQREFURSB3aWxsIGJlIGNsZWFyZWQgYXQgdmJsYW5rcyBidXQgSSBk
b24ndCBoYXZlIGEgVEdMIHdpdGggZURQIHBhbmVsIHRvIHRlc3QgaXQuDQpXaWxsIGxlYXZlIHRo
ZSBjdXJyZW50IGNvZGUgYXMgaXQgYW5kIGJyaW5nIHRoZSBzdGF0ZSBjbGVhbnVwIG9uIFBTUiBk
aXNhYmxlIHBhdGNoLg0KDQo+IA0KPiANCj4gPiAgICAgICB9IGVsc2UgaWYgKEhBU19QU1IyX1NF
TF9GRVRDSChkZXZfcHJpdikpIHsNCj4gPiAgICAgICAgICAgICAgIGludGVsX2RlX3dyaXRlKGRl
dl9wcml2LA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUFNSMl9NQU5fVFJLX0NU
TChpbnRlbF9kcC0NCj4gPiA+IHBzci50cmFuc2NvZGVyKSwgMCk7DQo+IA0KPiBCUiwNCj4gDQo+
IEpvdW5pIEjDtmdhbmRlcg0KDQo=
