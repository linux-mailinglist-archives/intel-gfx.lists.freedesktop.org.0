Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E26193EC3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 13:24:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CC3E6E34D;
	Thu, 26 Mar 2020 12:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A4AF6E34D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 12:24:22 +0000 (UTC)
IronPort-SDR: nWi5CIT+7x3lQBKVz8BdJd/yWSdoW/lf0XQxIRLBcROG/uGc2TrMd20tMFBfT+wGvWKU181I25
 Ts65BFTsTleg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 05:24:22 -0700
IronPort-SDR: zPTyU+91pTo/PEjSV4pF7pavT/bv2D4kTUVz4RAijNK4uSEj+QX4BOfEKskj+Tyu2SjYhOAYO9
 fXhGisLOSXEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="446989035"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 26 Mar 2020 05:24:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 05:24:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Mar 2020 05:24:21 -0700
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 26 Mar 2020 05:24:21 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.57]) with mapi id 14.03.0439.000;
 Thu, 26 Mar 2020 17:54:18 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915/display: Fix mode private_flags comparison at
 atomic_check
Thread-Index: AQHWA2XVFe/fzs+wfUKCfM0c3eS4yqhaa1uAgABgsmA=
Date: Thu, 26 Mar 2020 12:24:18 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8243C928@BGSMSX104.gar.corp.intel.com>
References: <20200326122432.10856-1-uma.shankar@intel.com>
 <d5eb5736-f260-4a58-c297-fb92fc1564b1@linux.intel.com>
In-Reply-To: <d5eb5736-f260-4a58-c297-fb92fc1564b1@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915/display: Fix mode private_flags
 comparison at atomic_check
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
Cc: "Khor,
 Swee Aun" <swee.aun.khor@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXks
IE1hcmNoIDI2LCAyMDIwIDU6MzggUE0NCj4gVG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogVmlsbGUg
U3lyasOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IEthaSBWZWhtYW5lbg0KPiA8
a2FpLnZlaG1hbmVuQGxpbnV4LmludGVsLmNvbT47IFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT47IEtob3IsIFN3ZWUNCj4gQXVuIDxzd2VlLmF1bi5raG9yQGludGVsLmNvbT4NCj4g
U3ViamVjdDogUmU6IFt2Ml0gZHJtL2k5MTUvZGlzcGxheTogRml4IG1vZGUgcHJpdmF0ZV9mbGFn
cyBjb21wYXJpc29uIGF0DQo+IGF0b21pY19jaGVjaw0KPiANCj4gT3AgMjYtMDMtMjAyMCBvbSAx
MzoyNCBzY2hyZWVmIFVtYSBTaGFua2FyOg0KPiA+IFRoaXMgcGF0Y2ggZml4ZXMgdGhlIHByaXZh
dGVfZmxhZ3Mgb2YgbW9kZSB0byBiZSBjaGVja2VkIGFuZCBjb21wYXJlZA0KPiA+IGFnYWluc3Qg
dWFwaS5tb2RlIGFuZCBub3QgZnJvbSBody5tb2RlLiBUaGlzIGhlbHBzIHByb3Blcmx5IHRyaWdn
ZXINCj4gPiBtb2Rlc2V0IGF0IGJvb3QgaWYgZGVzaXJlZCBieSBkcml2ZXIuDQo+ID4NCj4gPiBJ
dCBoZWxwcyByZXNvbHZlIGF1ZGlvX2NvZGVjIGluaXRpYWxpemF0aW9uIGlzc3VlcyBpZiBkaXNw
bGF5IGlzDQo+ID4gY29ubmVjdGVkIGF0IGJvb3QuIEluaXRpYWwgZGlzY3Vzc2lvbiBvbiB0aGlz
IGlzc3VlIGhhcyBoYXBwZW5lZCBvbg0KPiA+IGJlbG93IHRocmVhZDoNCj4gPiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzc0ODI4Lw0KPiA+DQo+ID4gdjI6IE5vIGZ1
bmN0aW9uYWwgY2hhbmdlLiBGaXhlZCB0aGUgQ2xvc2VzIHRhZyBhbmQgYWRkZWQgTWFhcnRlbidz
IFJCLg0KPiA+DQo+ID4gQ2M6IFZpbGxlIFN5cmrDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+DQo+ID4gQ2M6IEthaSBWZWhtYW5lbiA8a2FpLnZlaG1hbmVuQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gPiBDYzogU291emEsIEpvc2UgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+
IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMv
MTM2Mw0KPiA+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFN3ZWVBdW4gS2hvciA8c3dlZS5hdW4ua2hv
ckBpbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKy0tDQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggZmU1
NWM3YzcxM2YxLi5lNjMwNDI5YWYyYzAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0xNDc0Nyw4ICsxNDc0Nyw4IEBA
IHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+
ID4gIAkvKiBDYXRjaCBJOTE1X01PREVfRkxBR19JTkhFUklURUQgKi8NCj4gPiAgCWZvcl9lYWNo
X29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwN
Cj4gPiAgCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gPiAtCQlpZiAobmV3X2NydGNf
c3RhdGUtPmh3Lm1vZGUucHJpdmF0ZV9mbGFncyAhPQ0KPiA+IC0JCSAgICBvbGRfY3J0Y19zdGF0
ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzKQ0KPiA+ICsJCWlmIChuZXdfY3J0Y19zdGF0ZS0+dWFw
aS5tb2RlLnByaXZhdGVfZmxhZ3MgIT0NCj4gPiArCQkgICAgb2xkX2NydGNfc3RhdGUtPnVhcGku
bW9kZS5wcml2YXRlX2ZsYWdzKQ0KPiA+ICAJCQluZXdfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2No
YW5nZWQgPSB0cnVlOw0KPiA+ICAJfQ0KPiA+DQo+IA0KPiBTdGlsbCBtaXNzaW5nIHRoZSBmaXhl
cyB0YWdzIQ0KDQpNeSBCYWQsIHVwZGF0ZWQuDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
