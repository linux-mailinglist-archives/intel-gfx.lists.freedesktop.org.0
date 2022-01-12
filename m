Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BABD948C740
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 16:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9507A10ED31;
	Wed, 12 Jan 2022 15:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6638610ED31
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 15:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642001628; x=1673537628;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=sWMs9Sd4phGAy1xwUtYV2YZMSlNBenwRyYJFuHxIF6c=;
 b=jnAGMrx0DEe7XX0hv2/EExBMk3tbKFeiKMcFfkx32TePTRTtzlVLbhLX
 ZxejbITuUae+9cTVPNPvRmQQClQDTicZqo1NjQXOcaqRAEGMy0iWfuB9C
 Cn10KBV+baZmkLmp/02JRjgNPib4eXc8JMv/cA2TIA9nFw2TpHBVRMBE7
 88dNlZ3YrvT7BSnM3k/gIBRbltSScitKmYu7d/ovSEADoumWuJJ7g0wkc
 RT6/JA7R5ZoW6hE2Ax7JuIRUL1YvJ49Im8hkE1h+F+kCUWuZexqzzJUqx
 b7o86LSyiqQj/jp6Zeturqj7VflZ9U3V6eSB5gxOvG+aRXhfFG9K3QS8a g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="330106441"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="330106441"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 07:32:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="670183226"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2022 07:32:36 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 07:32:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 07:32:35 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2308.020;
 Wed, 12 Jan 2022 07:32:35 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [RFC PATCH 2/2] drm/i915: Use new has_psr2_sel_fetch
 flag
Thread-Index: AQHYB7z/jG0t1lI5dkuJc/wUrcOjzaxgClCA
Date: Wed, 12 Jan 2022 15:32:35 +0000
Message-ID: <85397b0e70937d8ecb67cad918f13a1fcf595297.camel@intel.com>
References: <20220112140031.39823-1-jouni.hogander@intel.com>
 <20220112140031.39823-3-jouni.hogander@intel.com>
In-Reply-To: <20220112140031.39823-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <B8500FD47416854FB921FF7EE66DF23D@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 2/2] drm/i915: Use new
 has_psr2_sel_fetch flag
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

T24gV2VkLCAyMDIyLTAxLTEyIGF0IDE2OjAwICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IE5vdyBhcyB3ZSBoYXZlIGhhc19wc3IyX3NlbF9mZXRjaCBmbGFnIHdlIGNhbiByZWx5IHRo
YXQNCj4gaW5zdGVhZCBvZiBjaGVja2luZyBlYWNoIHBsYXRmb3JtIHNlcGFyYXRlbHkuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwg
NyAtLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwg
MiArLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgOCBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCBh
MWE2NjNmMzYyZTcuLmMwYmYyZjZkYjk0ZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC04MjUsMTMgKzgyNSw2IEBAIHN0YXRpYyBib29sIGlu
dGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCXJl
dHVybiBmYWxzZTsNCj4gIAl9DQo+ICANCj4gLQkvKiBXYV8xNjAxMTE4MTI1MCAqLw0KPiAtCWlm
IChJU19ST0NLRVRMQUtFKGRldl9wcml2KSB8fCBJU19BTERFUkxBS0VfUyhkZXZfcHJpdikgfHwN
Cj4gLQkgICAgSVNfREcyKGRldl9wcml2KSkgew0KPiAtCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYt
PmRybSwgIlBTUjIgaXMgZGVmZWF0dXJlZCBmb3IgdGhpcyBwbGF0Zm9ybVxuIik7DQo+IC0JCXJl
dHVybiBmYWxzZTsNCj4gLQl9DQoNCk5BQ0sgdGhlIGJvdGggcGF0Y2hlcy4NCg0KVGhvc2UgcGxh
dGZvcm1zIGhhdmUgUFNSMiBzZWwgZmV0Y2ggYnV0IHRoZSBQU1IyIGZlYXR1cmUgd2FzIGRlZmVh
dHVyZWQgaW4gdGhvc2UgcGxhdGZvcm1zLg0KTm8gcmVhbCBwcm9kdWN0IG9mIHRob3NlIHBsYXRm
b3JtcyB3aWxsIHNoaXAgd2l0aCBhIFBTUjIgcGFuZWwgc28gYW5vdGhlciByZWFzb24gdG8gbm90
IGFkZCBtb3JlIHN0dWZmIHRvIGludGVsX2RldmljZV9pbmZvLg0KDQpBbHNvIHRoaXMgY2hhbmdl
IHdpbGwgY2F1c2UgZHJpdmVyIHRvIHRyeSB0byBlbmFibGUgUFNSMiBIVyB0cmFja2luZyBpbiB0
aGUgcGxhdGZvcm1zIGFib3ZlLg0KDQo+IC0NCj4gIAlpZiAoSVNfQURMUF9ESVNQTEFZX1NURVAo
ZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQjApKSB7DQo+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJp
di0+ZHJtLCAiUFNSMiBub3QgY29tcGxldGVseSBmdW5jdGlvbmFsIGluIHRoaXMgc3RlcHBpbmdc
biIpOw0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBpbmRl
eCBiZWViNDJhMTRhYWUuLmQ4NGNhNDE0NjYzYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oDQo+IEBAIC0xNTAyLDcgKzE1MDIsNyBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gICNkZWZpbmUgSEFTX1BTUihkZXZfcHJpdikJCSAo
SU5URUxfSU5GTyhkZXZfcHJpdiktPmRpc3BsYXkuaGFzX3BzcikNCj4gICNkZWZpbmUgSEFTX1BT
Ul9IV19UUkFDS0lORyhkZXZfcHJpdikgXA0KPiAgCShJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlz
cGxheS5oYXNfcHNyX2h3X3RyYWNraW5nKQ0KPiAtI2RlZmluZSBIQVNfUFNSMl9TRUxfRkVUQ0go
ZGV2X3ByaXYpCSAoR1JBUEhJQ1NfVkVSKGRldl9wcml2KSA+PSAxMikNCj4gKyNkZWZpbmUgSEFT
X1BTUjJfU0VMX0ZFVENIKGRldl9wcml2KQkgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5kaXNwbGF5
Lmhhc19wc3IyX3NlbF9mZXRjaCkNCj4gICNkZWZpbmUgSEFTX1RSQU5TQ09ERVIoZGV2X3ByaXYs
IHRyYW5zKQkgKChJTlRFTF9JTkZPKGRldl9wcml2KS0+ZGlzcGxheS5jcHVfdHJhbnNjb2Rlcl9t
YXNrICYgQklUKHRyYW5zKSkgIT0gMCkNCj4gIA0KPiAgI2RlZmluZSBIQVNfUkM2KGRldl9wcml2
KQkJIChJTlRFTF9JTkZPKGRldl9wcml2KS0+aGFzX3JjNikNCg0K
