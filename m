Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 952EE1FC1C2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 00:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36DE6E1EC;
	Tue, 16 Jun 2020 22:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A73D46E1EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 22:38:14 +0000 (UTC)
IronPort-SDR: 975UJNDrCyPtGeKb6vlts4a6ol/+EZqHATdHYV+bRYf/JPM4u06HEm4bOwprIi5oHvDYpqV7DY
 YGhvSz1LVJbQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 15:38:13 -0700
IronPort-SDR: LoMJvZAGGGEKOJMi/o//H7yvxIJinJB7MTLtgwatYO1XuXOUPpA4/FH7g5by4WstwQFhcv6nTH
 t2bDkbF1oOkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,520,1583222400"; d="scan'208";a="476628736"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 16 Jun 2020 15:38:13 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.171]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.74]) with mapi id 14.03.0439.000;
 Tue, 16 Jun 2020 15:38:13 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v2 1/6] drm/i915/tgl+: Use the correct DP_TP_* register
 instances in MST encoders
Thread-Index: AQHWRCLB6Hhcvp+YHk6Wn3n51yptPqjcSxsA
Date: Tue, 16 Jun 2020 22:38:13 +0000
Message-ID: <c3fddfc00e9400a3e90b77d87350853653952d21.camel@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
 <20200616211146.23027-1-imre.deak@intel.com>
In-Reply-To: <20200616211146.23027-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.14.160]
Content-ID: <5FEC9EB3C7E39F46937DA2A1D4356082@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915/tgl+: Use the correct
 DP_TP_* register instances in MST encoders
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA2LTE3IGF0IDAwOjExICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE1T
VCBlbmNvZGVycyBtdXN0IHVzZSB0aGUgbWFzdGVyIE1TVCB0cmFuc2NvZGVyJ3MgRFBfVFBfU1RB
VFVTIGFuZA0KPiBEUF9UUF9DT05UUk9MIHJlZ2lzdGVycy4gQXRtLCBkdXJpbmcgdGhlIEhXIHJl
YWRvdXQgb2YgYW4gTVNUIGVuY29kZXINCj4gY29ubmVjdGVkIHRvIGEgc2xhdmUgdHJhbnNjb2Rl
ciB3ZSByZXNldCB0aGVzZSByZWdpc3RlciBhZGRyZXNzZXMgaW4NCj4gaW50ZWxfZHA6OnJlZ3Mu
ZHBfdHBfKiB0byB0aGUgc2xhdmUgdHJhbnNjb2RlcidzIERQX1RQXyogcmVnaXN0ZXINCj4gYWRk
cmVzc2VzIGluY29ycmVjdGx5OyBmaXggdGhpcy4NCj4gDQo+IE9uZSBleGFtcGxlIHdoZXJlIHRo
ZSBhYm92ZSBvdmVyd2l0ZSBoYXBwZW5zIGlzIHRoZSBlbmNvZGVyIEhXIHN0YXRlDQo+IHZhbGlk
YXRpb24gYWZ0ZXIgZW5hYmxpbmcgbXVsdGlwbGUgc3RyZWFtczsgc2VlDQo+IGludGVsX2RwX21z
dF9lbmNfZ2V0X2NvbmZpZygpLiBBZnRlciB0aGF0IGR1cmluZyBkaXNhYmxpbmcgYW55IHN0cmVh
bQ0KPiB3ZSdsbCBnZXQgYQ0KPiANCj4gJ1RpbWVkIG91dCB3YWl0aW5nIGZvciBBQ1Qgc2VudCB3
aGVuIGRpc2FibGluZycNCj4gDQo+IGVycm9yLCBkdWUgdG8gcmVhZGluZyBmcm9tIHRoZSBpbmNv
cnJlY3QgRFBfVFBfU1RBVFVTIHJlZ2lzdGVyLg0KPiANCj4gVGhpcyBjaGFuZ2UgcmVwbGFjZXMN
Cj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzM2OTU3Ny8/c2VyaWVz
PTc4MTkzJnJldj0xDQo+IHdoaWNoIGp1c3QgcGFwZXJlZCBvdmVyIHRoZSBwcm9ibGVtLg0KPiAN
Cj4gdjI6DQo+IC0gQ29ycmVjdCB0aGUgZmFpbHVyZSBzY2VuYXJpbyBpbiB0aGUgY29tbWl0IGxv
Zy4gKEpvc8OpKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KDQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGlu
dGVsLmNvbT4NCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYyB8IDE1ICsrKysrKysrKystLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5kZXggY2E3YmIyMjk0ZDJiLi43M2Q2Y2MyOTI5MWEgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtNDE5
MywxMSArNDE5Myw2IEBAIHZvaWQgaW50ZWxfZGRpX2dldF9jb25maWcoc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsDQo+ICAJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCB0cmFu
c2NvZGVyX2lzX2RzaShjcHVfdHJhbnNjb2RlcikpKQ0KPiAgCQlyZXR1cm47DQo+ICANCj4gLQlp
ZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgew0KPiAtCQlpbnRlbF9kcC0+cmVncy5kcF90
cF9jdGwgPSBUR0xfRFBfVFBfQ1RMKGNwdV90cmFuc2NvZGVyKTsNCj4gLQkJaW50ZWxfZHAtPnJl
Z3MuZHBfdHBfc3RhdHVzID0gVEdMX0RQX1RQX1NUQVRVUyhjcHVfdHJhbnNjb2Rlcik7DQo+IC0J
fQ0KPiAtDQo+ICAJaW50ZWxfZHNjX2dldF9jb25maWcoZW5jb2RlciwgcGlwZV9jb25maWcpOw0K
PiAgDQo+ICAJdGVtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFRSQU5TX0RESV9GVU5DX0NU
TChjcHVfdHJhbnNjb2RlcikpOw0KPiBAQCAtNDI5OSw2ICs0Mjk0LDE2IEBAIHZvaWQgaW50ZWxf
ZGRpX2dldF9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCWJyZWFr
Ow0KPiAgCX0NCj4gIA0KPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7DQo+ICsJ
CWVudW0gdHJhbnNjb2RlciB0cmFuc2NvZGVyID0NCj4gKwkJCWludGVsX2RwX21zdF9pc19zbGF2
ZV90cmFucyhwaXBlX2NvbmZpZykgPw0KPiArCQkJcGlwZV9jb25maWctPm1zdF9tYXN0ZXJfdHJh
bnNjb2RlciA6DQo+ICsJCQlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXI7DQo+ICsNCj4gKwkJ
aW50ZWxfZHAtPnJlZ3MuZHBfdHBfY3RsID0gVEdMX0RQX1RQX0NUTCh0cmFuc2NvZGVyKTsNCj4g
KwkJaW50ZWxfZHAtPnJlZ3MuZHBfdHBfc3RhdHVzID0gVEdMX0RQX1RQX1NUQVRVUyh0cmFuc2Nv
ZGVyKTsNCj4gKwl9DQo+ICsNCj4gIAlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0NCj4gIAkJaW50
ZWxfZGRpX2lzX2F1ZGlvX2VuYWJsZWQoZGV2X3ByaXYsIGNwdV90cmFuc2NvZGVyKTsNCj4gIA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
