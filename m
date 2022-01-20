Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4414F494BD3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D5D710E4B2;
	Thu, 20 Jan 2022 10:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EDB210E3E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642674956; x=1674210956;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=EHKAXssdk9Cf+0L5ovnnqhAX9JsbALqfeDunOxLgtDM=;
 b=bGnLIy63Xjp17Z7GhD/Q84G5SWiW1AT0Qc56X+NYdxmsVkKs+ZkNKwqC
 3OABYUrAIWXCvO90eaB8gF/XNJXP0LRTgPb8p3fEqs4pzJz0BRN9rqgQb
 pWdBeky8hs86hkeeDbkZ+mTSUIXIUb9mzQn8yM26aVJo8LbtQGg54gdFL
 IccQtCtZAOENleC7aEsUgZXLjd9IQphMEgqqT/9JXWRpj+6IyRpvn+lqa
 NneGHsv8kZNA/zb1spq0KYvuvd9d1ebxBbgE0r5rmjoDei6MQuY0oit7k
 mpxynjVfPi0xMzN8PBENRcHXZ9ol0BtAnqTJMi4hqmVttPVROPbFcz57w w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="306053449"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="306053449"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:35:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="622851064"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2022 02:35:55 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 10:35:53 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 16:05:52 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915/mst: abstract
 intel_dp_ack_sink_irq_esi()
Thread-Index: AQHYAZIkO1JME/AAXUWYD7UudH3QQKxrzXsw//+lHYCAAFy8YA==
Date: Thu, 20 Jan 2022 10:35:52 +0000
Message-ID: <4cf9ab91809a4fa4b20ca2786d08a1f1@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
 <1049e7188a76c421fab7797b5c4a6aa1b709f4c9.1641317930.git.jani.nikula@intel.com>
 <c0a48445d9c84a7cb644f392699c9028@intel.com> <87h79yaeai.fsf@intel.com>
In-Reply-To: <87h79yaeai.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/mst: abstract
 intel_dp_ack_sink_irq_esi()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDIwLCAyMDIy
IDQ6MDIgUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSRTogW0ludGVsLWdmeF0g
W1BBVENIIDIvN10gZHJtL2k5MTUvbXN0OiBhYnN0cmFjdA0KPiBpbnRlbF9kcF9hY2tfc2lua19p
cnFfZXNpKCkNCj4gDQo+IE9uIFRodSwgMjAgSmFuIDIwMjIsICJTaGFua2FyLCBVbWEiIDx1bWEu
c2hhbmthckBpbnRlbC5jb20+IHdyb3RlOg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiA+PiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkNCj4gTmlrdWxhDQo+ID4+IFNlbnQ6IFR1ZXNkYXks
IEphbnVhcnkgNCwgMjAyMiAxMToxMCBQTQ0KPiA+PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiA+PiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
DQo+ID4+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAyLzddIGRybS9pOTE1L21zdDogYWJz
dHJhY3QNCj4gaW50ZWxfZHBfYWNrX3NpbmtfaXJxX2VzaSgpDQo+ID4+DQo+ID4+IFNtYWxsZXIg
ZnVuY3Rpb25zIG1ha2UgdGhlIHRoaW5nIGVhc2llciB0byByZWFkLiBEZWJ1ZyBsb2cgZmFpbHVy
ZXMgdG8gYWNrLg0KPiA+Pg0KPiA+PiBOb3RlOiBMb29rcyBsaWtlIHdlIGhhdmUgdGhlIHJldHJ5
IGxvb3Agc2ltcGx5IGJlY2F1c2Ugb2YgaHlzdGVyaWNhbCByYWlzaW5zLA0KPiBkYXRpbmcNCj4g
Pg0KPiA+IE5pdDogVHlwbyBpbiByZWFzb25zLg0KPiANCj4gOykNCj4gDQo+IGh0dHA6Ly93d3cu
Y2F0Yi5vcmcvamFyZ29uL2h0bWwvSC9oeXN0ZXJpY2FsLXJlYXNvbnMuaHRtbA0KDQpPaCwgZGlk
bid0IGtuZXcgdGhhdCDwn5iKLiBBIG5ldyBwaHJhc2UgaW4gdm9jYWJ1bGFyeSDwn5idDQoNCj4g
Pg0KPiA+IFJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0K
PiA+DQo+ID4+IGJhY2sgdG8gdGhlIG9yaWdpbmFsIERQIE1TVCBlbmFibGluZy4gS2VlcCBpdCwg
dGhvdWdoIEkgaGF2ZSBubyBpZGVhIHdoeSB3ZSBoYXZlDQo+IGl0Lg0KPiA+Pg0KPiA+PiBTaWdu
ZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+PiAtLS0N
Cj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDI1ICsrKysr
KysrKysrKysrKy0tLS0tLS0tLS0NCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspLCAxMCBkZWxldGlvbnMoLSkNCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+PiBpbmRleCAzNTdjMzllMDliZjYuLmViZjgwYTg3NWE0
MSAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0K
PiA+PiBAQCAtMjgyMCw2ICsyODIwLDE5IEBAIGludGVsX2RwX2dldF9zaW5rX2lycV9lc2koc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gdTgNCj4gPj4gKnNpbmtfaXJxX3ZlY3RvcikNCj4g
Pj4gIAkJRFBfRFBSWF9FU0lfTEVOOw0KPiA+PiAgfQ0KPiA+Pg0KPiA+PiArc3RhdGljIGJvb2wg
aW50ZWxfZHBfYWNrX3NpbmtfaXJxX2VzaShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1OA0K
PiA+PiArZXNpWzRdKSB7DQo+ID4+ICsJaW50IHJldHJ5Ow0KPiA+PiArDQo+ID4+ICsJZm9yIChy
ZXRyeSA9IDA7IHJldHJ5IDwgMzsgcmV0cnkrKykgew0KPiA+PiArCQlpZiAoZHJtX2RwX2RwY2Rf
d3JpdGUoJmludGVsX2RwLT5hdXgsIERQX1NJTktfQ09VTlRfRVNJICsgMSwNCj4gPj4gKwkJCQkg
ICAgICAmZXNpWzFdLCAzKSA9PSAzKQ0KPiA+PiArCQkJcmV0dXJuIHRydWU7DQo+ID4+ICsJfQ0K
PiA+PiArDQo+ID4+ICsJcmV0dXJuIGZhbHNlOw0KPiA+PiArfQ0KPiA+PiArDQo+ID4+ICBib29s
DQo+ID4+ICBpbnRlbF9kcF9uZWVkc192c2Nfc2RwKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLA0KPiA+PiAgCQkgICAgICAgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUgKmNvbm5fc3RhdGUpIEBAIC0zNjYwLDcNCj4gPj4gKzM2NzMsNiBAQCBpbnRlbF9k
cF9jaGVja19tc3Rfc3RhdHVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4+ICAJCSAq
Lw0KPiA+PiAgCQl1OCBlc2lbRFBfRFBSWF9FU0lfTEVOKzJdID0ge307DQo+ID4+ICAJCWJvb2wg
aGFuZGxlZDsNCj4gPj4gLQkJaW50IHJldHJ5Ow0KPiA+Pg0KPiA+PiAgCQlpZiAoIWludGVsX2Rw
X2dldF9zaW5rX2lycV9lc2koaW50ZWxfZHAsIGVzaSkpIHsNCj4gPj4gIAkJCWRybV9kYmdfa21z
KCZpOTE1LT5kcm0sDQo+ID4+IEBAIC0zNjg1LDE1ICszNjk3LDggQEAgaW50ZWxfZHBfY2hlY2tf
bXN0X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+PiAgCQlpZiAoIWhhbmRs
ZWQpDQo+ID4+ICAJCQlicmVhazsNCj4gPj4NCj4gPj4gLQkJZm9yIChyZXRyeSA9IDA7IHJldHJ5
IDwgMzsgcmV0cnkrKykgew0KPiA+PiAtCQkJaW50IHdyZXQ7DQo+ID4+IC0NCj4gPj4gLQkJCXdy
ZXQgPSBkcm1fZHBfZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwNCj4gPj4gLQkJCQkJCSBEUF9T
SU5LX0NPVU5UX0VTSSsxLA0KPiA+PiAtCQkJCQkJICZlc2lbMV0sIDMpOw0KPiA+PiAtCQkJaWYg
KHdyZXQgPT0gMykNCj4gPj4gLQkJCQlicmVhazsNCj4gPj4gLQkJfQ0KPiA+PiArCQlpZiAoIWlu
dGVsX2RwX2Fja19zaW5rX2lycV9lc2koaW50ZWxfZHAsIGVzaSkpDQo+ID4+ICsJCQlkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLCAiRmFpbGVkIHRvIGFjayBFU0lcbiIpOw0KPiA+PiAgCX0NCj4gPj4N
Cj4gPj4gIAlyZXR1cm4gbGlua19vazsNCj4gPj4gLS0NCj4gPj4gMi4zMC4yDQo+ID4NCj4gDQo+
IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCg==
