Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B7617AC5
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 15:36:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4179C89254;
	Wed,  8 May 2019 13:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C7189254
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 13:35:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 06:35:57 -0700
X-ExtLoop1: 1
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 08 May 2019 06:35:57 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 8 May 2019 06:35:57 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 8 May 2019 06:35:56 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.147]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.212]) with mapi id 14.03.0415.000;
 Wed, 8 May 2019 19:05:53 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Shashank" <shashank.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 1/4] drm/i915: Change gamma/degamma_lut_size data
 type to u32
Thread-Index: AQHVBN0i1Xmz9jpN4USg/AaXn3PxGqZhO7sg
Date: Wed, 8 May 2019 13:35:52 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F81FF1406@BGSMSX104.gar.corp.intel.com>
References: <20190507135644.23882-1-shashank.sharma@intel.com>
 <20190507135644.23882-2-shashank.sharma@intel.com>
In-Reply-To: <20190507135644.23882-2-shashank.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNThkNGQ1N2EtYmVlZC00NmIyLTk3YzMtZjgxZWNkY2I5YTU0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWUVuVWFzbXhZR0pXZ2FBQTJKSXlXWks0NjI0d1diN2JRQmFYekJENDNRU2ZvdUpTU3QwaVBmYVlXOFwvSXVndHoifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915: Change
 gamma/degamma_lut_size data type to u32
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IFNoYXJtYSwgU2hhc2hhbmsN
Cj5TZW50OiBUdWVzZGF5LCBNYXkgNywgMjAxOSA3OjI3IFBNDQo+VG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj5DYzogU2hhcm1hLCBTaGFzaGFuayA8c2hhc2hhbmsuc2hhcm1h
QGludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpA0KPjx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT47IE1hYXJ0ZW4gTGFua2hvcnN0DQo+PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT47IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPlN1YmplY3Q6IFtQ
QVRDSCB2MyAxLzRdIGRybS9pOTE1OiBDaGFuZ2UgZ2FtbWEvZGVnYW1tYV9sdXRfc2l6ZSBkYXRh
IHR5cGUgdG8NCj51MzINCj4NCj5DdXJyZW50bHksIGRhdGEgdHlwZSBvZiBnYW1tYV9sdXRfc2l6
ZSAmIGRlZ2FtbWFfbHV0X3NpemUgZWxlbWVudHMgaW4NCj5pbnRlbF9kZXZpY2VfaW5mbyBpcyB1
MTYsIHdoaWNoIG1lYW5zIGl0IGNhbiBhY2NvbW1vZGF0ZSBtYXhpbXVtIDY0ayB2YWx1ZXMuIElu
DQo+Y2FzZSBvZiBJQ0wgbXVsdGlzZWdtZW50ZWQgZ2FtbWEsIHRoZSBzaXplIG9mIGdhbW1hIExV
VCBpcyAyNTZLLg0KPg0KPlRoaXMgcGF0Y2ggY2hhbmdlcyB0aGUgZGF0YSB0eXBlIG9mIGJvdGgg
b2YgdGhlc2UgZWxlbWVudHMgdG8gdTMyLg0KDQpMb29rcyBvayB0byBtZS4NClJldmlld2VkLWJ5
OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+Q2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+Q2M6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+Q2M6IFVtYSBTaGFua2Fy
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+DQo+U2lnbmVkLW9mZi1ieTogU2hhc2hhbmsgU2hh
cm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPg0KPi0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgNCArKy0tDQo+IDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgNCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmgNCj5pbmRleCA1YTJlMTdkNjE0NmIuLjY3Njc3YzM1NjcxNiAxMDA2
NDQNCj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+Kysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaA0KPkBAIC0xNzksOCAr
MTc5LDggQEAgc3RydWN0IGludGVsX2RldmljZV9pbmZvIHsNCj4gCWludCBjdXJzb3Jfb2Zmc2V0
c1tJOTE1X01BWF9QSVBFU107DQo+DQo+IAlzdHJ1Y3QgY29sb3JfbHV0cyB7DQo+LQkJdTE2IGRl
Z2FtbWFfbHV0X3NpemU7DQo+LQkJdTE2IGdhbW1hX2x1dF9zaXplOw0KPisJCXUzMiBkZWdhbW1h
X2x1dF9zaXplOw0KPisJCXUzMiBnYW1tYV9sdXRfc2l6ZTsNCj4gCQl1MzIgZGVnYW1tYV9sdXRf
dGVzdHM7DQo+IAkJdTMyIGdhbW1hX2x1dF90ZXN0czsNCj4gCX0gY29sb3I7DQo+LS0NCj4yLjE3
LjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
