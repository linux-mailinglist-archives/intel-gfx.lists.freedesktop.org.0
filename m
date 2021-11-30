Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1E3463550
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 14:22:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B39FC6E95C;
	Tue, 30 Nov 2021 13:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E1246E95C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 13:22:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="236441211"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="236441211"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 05:22:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="559594939"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga008.fm.intel.com with ESMTP; 30 Nov 2021 05:22:06 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 13:22:05 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Tue, 30 Nov 2021 13:22:05 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/20] drm/i915/fbc: Relocate
 intel_fbc_override_cfb_stride()
Thread-Index: AQHX4SeiikeU5c/plUSaXdW1ThEE96wcGCvg
Date: Tue, 30 Nov 2021 13:22:05 +0000
Message-ID: <1d50ce548f6d4e4a9399693f8fadb39c@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/20] drm/i915/fbc: Relocate
 intel_fbc_override_cfb_stride()
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyNCwgMjAyMSAxOjM3IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwNC8yMF0gZHJtL2k5MTUvZmJjOiBSZWxvY2F0ZQ0KPiBpbnRlbF9mYmNfb3ZlcnJp
ZGVfY2ZiX3N0cmlkZSgpDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gTW92ZSBpbnRlbF9mYmNfb3ZlcnJpZGVfY2ZiX3N0
cmlkZSgpIG5leHQgdG8gaXRzIGNvdXNpbnMuDQo+IEhlbHBzIHdpdGggbGF0ZXIgcGF0Y2hlcy4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYyB8IDQyICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIx
IGluc2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IDhiZGUzNjgxYjk2ZS4uNjM2OGRkZGY5
NzdjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
QEAgLTE0Miw2ICsxNDIsMjcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9mYmNfY2ZiX3Np
emUoc3RydWN0IGludGVsX2ZiYw0KPiAqZmJjLA0KPiAgCXJldHVybiBsaW5lcyAqIGludGVsX2Zi
Y19jZmJfc3RyaWRlKGZiYywgY2FjaGUpOyAgfQ0KPiANCj4gK3N0YXRpYyB1MTYgaW50ZWxfZmJj
X292ZXJyaWRlX2NmYl9zdHJpZGUoc3RydWN0IGludGVsX2ZiYyAqZmJjLA0KPiArCQkJCQkgY29u
c3Qgc3RydWN0IGludGVsX2ZiY19zdGF0ZV9jYWNoZQ0KPiAqY2FjaGUpIHsNCj4gKwl1bnNpZ25l
ZCBpbnQgc3RyaWRlID0gX2ludGVsX2ZiY19jZmJfc3RyaWRlKGNhY2hlKTsNCj4gKwl1bnNpZ25l
ZCBpbnQgc3RyaWRlX2FsaWduZWQgPSBpbnRlbF9mYmNfY2ZiX3N0cmlkZShmYmMsIGNhY2hlKTsN
Cj4gKw0KPiArCS8qDQo+ICsJICogT3ZlcnJpZGUgc3RyaWRlIGluIDY0IGJ5dGUgdW5pdHMgcGVy
IDQgbGluZSBzZWdtZW50Lg0KPiArCSAqDQo+ICsJICogR2VuOSBodyBtaXNjYWxjdWxhdGVzIGNm
YiBzdHJpZGUgZm9yIGxpbmVhciBhcw0KPiArCSAqIFBMQU5FX1NUUklERSo1MTIgaW5zdGVhZCBv
ZiBQTEFORV9TVFJJREUqNjQsIHNvDQo+ICsJICogd2UgYWx3YXlzIG5lZWQgdG8gdXNlIHRoZSBv
dmVycmlkZSB0aGVyZS4NCj4gKwkgKi8NCj4gKwlpZiAoc3RyaWRlICE9IHN0cmlkZV9hbGlnbmVk
IHx8DQo+ICsJICAgIChESVNQTEFZX1ZFUihmYmMtPmk5MTUpID09IDkgJiYNCj4gKwkgICAgIGNh
Y2hlLT5mYi5tb2RpZmllciA9PSBEUk1fRk9STUFUX01PRF9MSU5FQVIpKQ0KPiArCQlyZXR1cm4g
c3RyaWRlX2FsaWduZWQgKiA0IC8gNjQ7DQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0K
PiAgc3RhdGljIHUzMiBpOHh4X2ZiY19jdGwoc3RydWN0IGludGVsX2ZiYyAqZmJjKSAgew0KPiAg
CWNvbnN0IHN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFtcyAqcGFyYW1zID0gJmZiYy0+cGFyYW1z
OyBAQCAtDQo+IDk1MCwyNyArOTcxLDYgQEAgc3RhdGljIGJvb2wgaW50ZWxfZmJjX2NmYl9zaXpl
X2NoYW5nZWQoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiAgCQlmYmMtPmNvbXByZXNzZWRfZmIu
c2l6ZSAqIGZiYy0+bGltaXQ7ICB9DQo+IA0KPiAtc3RhdGljIHUxNiBpbnRlbF9mYmNfb3ZlcnJp
ZGVfY2ZiX3N0cmlkZShzdHJ1Y3QgaW50ZWxfZmJjICpmYmMsDQo+IC0JCQkJCSBjb25zdCBzdHJ1
Y3QgaW50ZWxfZmJjX3N0YXRlX2NhY2hlDQo+ICpjYWNoZSkNCj4gLXsNCj4gLQl1bnNpZ25lZCBp
bnQgc3RyaWRlID0gX2ludGVsX2ZiY19jZmJfc3RyaWRlKGNhY2hlKTsNCj4gLQl1bnNpZ25lZCBp
bnQgc3RyaWRlX2FsaWduZWQgPSBpbnRlbF9mYmNfY2ZiX3N0cmlkZShmYmMsIGNhY2hlKTsNCj4g
LQ0KPiAtCS8qDQo+IC0JICogT3ZlcnJpZGUgc3RyaWRlIGluIDY0IGJ5dGUgdW5pdHMgcGVyIDQg
bGluZSBzZWdtZW50Lg0KPiAtCSAqDQo+IC0JICogR2VuOSBodyBtaXNjYWxjdWxhdGVzIGNmYiBz
dHJpZGUgZm9yIGxpbmVhciBhcw0KPiAtCSAqIFBMQU5FX1NUUklERSo1MTIgaW5zdGVhZCBvZiBQ
TEFORV9TVFJJREUqNjQsIHNvDQo+IC0JICogd2UgYWx3YXlzIG5lZWQgdG8gdXNlIHRoZSBvdmVy
cmlkZSB0aGVyZS4NCj4gLQkgKi8NCj4gLQlpZiAoc3RyaWRlICE9IHN0cmlkZV9hbGlnbmVkIHx8
DQo+IC0JICAgIChESVNQTEFZX1ZFUihmYmMtPmk5MTUpID09IDkgJiYNCj4gLQkgICAgIGNhY2hl
LT5mYi5tb2RpZmllciA9PSBEUk1fRk9STUFUX01PRF9MSU5FQVIpKQ0KPiAtCQlyZXR1cm4gc3Ry
aWRlX2FsaWduZWQgKiA0IC8gNjQ7DQo+IC0NCj4gLQlyZXR1cm4gMDsNCj4gLX0NCj4gLQ0KPiAg
c3RhdGljIGJvb2wgaW50ZWxfZmJjX2Nhbl9lbmFibGUoc3RydWN0IGludGVsX2ZiYyAqZmJjKSAg
ew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZmJjLT5pOTE1Ow0KPiAtLQ0K
PiAyLjMyLjANCg0K
