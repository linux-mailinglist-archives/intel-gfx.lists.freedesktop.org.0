Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 008BE46B324
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 07:45:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 067788B139;
	Tue,  7 Dec 2021 06:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0158B139
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 06:45:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="261573625"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="261573625"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 22:45:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515149491"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 06 Dec 2021 22:45:21 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 6 Dec 2021 22:45:20 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 12:15:18 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Tue, 7 Dec 2021 12:15:18 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 2/3] drm/i915/xelpd: Enable Pipe Degamma
Thread-Index: AQHX4jrwaQ5OIprVTkae/Rdv9p7F4qwaWTYAgAEoq4CAAAFAgIALI/Rw
Date: Tue, 7 Dec 2021 06:45:18 +0000
Message-ID: <76dd2df147e64a0eba85b354db9f9149@intel.com>
References: <20211125202750.3263848-1-uma.shankar@intel.com>
 <20211125202750.3263848-3-uma.shankar@intel.com> <87ee6zj5nb.fsf@intel.com>
 <YaX2hVZsu/apAFev@intel.com> <874k7uj6um.fsf@intel.com>
In-Reply-To: <874k7uj6um.fsf@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/xelpd: Enable Pipe Degamma
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTm92ZW1iZXIgMzAs
IDIwMjEgMzozNiBQTQ0KPiBUbzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gQ2M6IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsg
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdm
eF0gW1BBVENIIHYyIDIvM10gZHJtL2k5MTUveGVscGQ6IEVuYWJsZSBQaXBlIERlZ2FtbWENCj4g
DQo+IE9uIFR1ZSwgMzAgTm92IDIwMjEsIFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+IE9uIE1vbiwgTm92IDI5LCAyMDIxIGF0IDA2OjE5
OjUyUE0gKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+PiBPbiBGcmksIDI2IE5vdiAyMDIx
LCBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPiB3cm90ZToNCj4gPj4gPiBFbmFi
bGUgUGlwZSBEZWdhbW1hIGZvciBYRV9MUEQuIEV4dGVuZCB0aGUgbGVnYWN5IGltcGxlbWVudGF0
aW9uIHRvDQo+ID4+ID4gaW5jb3JwYXJhdGUgdGhlIGV4dGVuZGVkIGx1dCBzaXplIGZvciBYRV9M
UEQuDQo+ID4+ID4NCj4gPj4gPiB2MjogQWRkZWQgYSBoZWxwZXIgZm9yIGRlZ2FtbWEgbHV0IHNp
emUgKFZpbGxlKQ0KPiA+PiA+DQo+ID4+ID4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4NCj4gPj4gPiAtLS0NCj4gPj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMTQgKysrKysrKysrKystLS0NCj4gPj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4+ID4N
Cj4gPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jDQo+ID4+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMNCj4gPj4gPiBpbmRleCA0MmZlNTQ5ZWY2ZmUuLmRlM2RlZDFlMzI3YSAxMDA2NDQNCj4gPj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gPj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gPj4g
PiBAQCAtODA4LDYgKzgwOCwxNCBAQCBzdGF0aWMgdm9pZCBiZHdfbG9hZF9sdXRzKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiA+PiA+ICAJfQ0KPiA+PiA+
ICB9DQo+ID4+ID4NCj4gPj4gPiArc3RhdGljIGludCBnbGtfZGVnYW1tYV9sdXRfc2l6ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkgew0KPiA+PiA+ICsJaWYgKERJU1BMQVlfVkVSKGk5
MTUpID49IDEzKQ0KPiA+PiA+ICsJCXJldHVybiAxMzE7DQo+ID4+ID4gKwllbHNlDQo+ID4+ID4g
KwkJcmV0dXJuIDM1Ow0KPiA+PiA+ICt9DQo+ID4+ID4gKw0KPiA+Pg0KPiA+PiBXaHkgZG8gd2Ug
aGF2ZSBib3RoIGEgZnVuY3Rpb24gd2l0aCBoYXJkY29kZWQgdmFsdWVzIGFuZCBkZXZpY2UgaW5m
bw0KPiA+PiBtZW1iZXJzIGZvciB0aGlzPw0KPiA+DQo+ID4gVGhlIGRldmljZSBpbmZvIHN0dWZm
IGp1c3QgbmVlZHMgdG8gZ2V0IG51a2VkLiBUaGUgc2l6ZSBvZiB0aGUgTFVUcw0KPiA+IGRlcGVu
ZHMgb24gdGhlIGdhbW1hIG1vZGUgd2hpY2ggd2UgYWxyZWFkeSBzZWxlY3QgZHluYW1pY2FsbHkg
KGFuZA0KPiA+IGlmL3doZW4gd2UgZ2V0IHRocmUgbmV3IHVhcGkgaXJvbmVkIG91dCBpdCdsbCBi
ZWNvbWUgZXZlbiBtb3JlDQo+ID4gZHluYW1pYyksIHNvIHRyeWluZyB0byByZXByZXNlbnQgaXQg
d2l0aCBhIHNpbmdsZSBudW1iZXIgaW4gZGV2aWNlDQo+ID4gaW5mbyBpcyBmdXRpbGUuDQo+IA0K
PiBXb3JrcyBmb3IgbWUsIEkganVzdCBsaWtlIHRvIGhhdmUgdGhlIHNpbmdsZSBwb2ludCBvZiB0
cnV0aCBpbnN0ZWFkIG9mIHNwbGl0IGFsbCBvdmVyIHRoZQ0KPiBwbGFjZS4gTm90IGFnYWluc3Qg
YWRkaW5nIHRoaXMgbm93LCBidXQgbGV0J3Mgbm90IGZvcmdldCB0byBmb2xsb3cgdXAgd2l0aCB0
aGUNCj4gY2xlYW51cC4NCg0KWWVhaCwgZGV2aWNlIGluZm8gbWF5IG5vdCBiZSBuZWVkZWQgb25j
ZSB3ZSBoYXZlIHRoZSBuZXcgVUFQSSdzLiBXaWxsIGNsZWFuIGl0IHVwLA0Kb25jZSB3ZSBnZXQg
dGhhdCBjbG9zZWQuDQoNClRoYW5rcyBKYW5pIGFuZCBWaWxsZSBmb3IgdGhlIHJldmlldyBhbmQg
ZmVlZGJhY2tzLg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCj4gQlIsDQo+IEphbmkuDQo+IA0K
PiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRl
cg0K
