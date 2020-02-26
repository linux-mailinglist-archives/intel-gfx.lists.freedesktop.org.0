Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FEA170CDC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 00:57:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCDEE6E26C;
	Wed, 26 Feb 2020 23:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 832466E26C
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 23:57:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 15:57:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,490,1574150400"; d="scan'208";a="271945538"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 26 Feb 2020 15:57:48 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.144]) with mapi id 14.03.0439.000;
 Wed, 26 Feb 2020 15:57:48 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Set up PIPE_MISC truncate bit on
 tgl+
Thread-Index: AQHV7MIr/CKR7EJ6lUCpHisT6ax4QaguresA
Date: Wed, 26 Feb 2020 23:57:47 +0000
Message-ID: <efbedc5da10e0ee1b0a2f11bdefd69d9b85a1243.camel@intel.com>
References: <20200226163054.9509-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200226163054.9509-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.234]
Content-ID: <0B4E50A197CA114BB7300E3E9D6D88F0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Set up PIPE_MISC truncate bit on
 tgl+
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

T24gV2VkLCAyMDIwLTAyLTI2IGF0IDE4OjMwICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTG9va3MgbGlrZSB0aGUgcGlwZSByb3VuZGluZyBtb2RlIGJpdCBoYXMgbW92ZWQgZnJv
bSBQSVBFX0NISUNLRU4gdG8NCj4gUElQRV9NSVNDIG9uIHRnbC4gRnJvYiB0aGUgbmV3IGxvY2F0
aW9uLg0KPiANCj4gQnNwZWMgZG9lcyBzdGlsbCBkb2N1bWVudCB0aGUgb2xkIGJpdHMgYXMgd2Vs
bCwgc28gSSBsZWZ0IHRoZSBjb2RlDQo+IGZvciB0aGVtIGFzIGlzIHVudGlsIHdlIGdldCBjbGFy
aWZpY2F0aW9uIGZyb20gdGhlIGh3IGZvbGtzIG9uDQo+IHdoZXRoZXIgdGhlIG9sZCBiaXRzIHN0
aWxsIGRvIHNvbWV0aGluZyB1c2VmdWwuDQoNCk1hdGNoZXMgQnNwZWMsIHBsZWFzZSBDQyBtZSBp
biB0aGUgZnV0dXJlIHBhdGNoIHJlbW92aW5nIHRoZSBvbGQgYml0IGlmDQpuZWVkZWQuDQoNClJl
dmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDMgKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
ICAgICAgICAgICAgICB8IDEgKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGluZGV4IDJmZDNjY2QzM2UzMC4uNGU4NzQ0YzE1ZjRiIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTAxMzksNiArMTAx
MzksOSBAQCBzdGF0aWMgdm9pZCBiZHdfc2V0X3BpcGVtaXNjKGNvbnN0IHN0cnVjdA0KPiBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCQkJCQkgICBCSVQoUExBTkVfQ1VSU09SKSkp
ID09IDApDQo+ICAJCXZhbCB8PSBQSVBFTUlTQ19IRFJfTU9ERV9QUkVDSVNJT047DQo+ICANCj4g
KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikNCj4gKwkJdmFsIHw9IFBJUEVNSVNDX1BJ
WEVMX1JPVU5ESU5HX1RSVU5DOw0KPiArDQo+ICAJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBJ
UEVNSVNDKGNydGMtPnBpcGUpLCB2YWwpOw0KPiAgfQ0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaA0KPiBpbmRleCBmNDViNWU4NmVjNjMuLjEzM2M0ODMxMTY0OSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC01ODg5LDYgKzU4ODksNyBAQCBlbnVtIHsNCj4gICNk
ZWZpbmUgICBQSVBFTUlTQ19ZVVY0MjBfTU9ERV9GVUxMX0JMRU5EICgxIDw8IDI2KSAvKiBnbGsr
ICovDQo+ICAjZGVmaW5lICAgUElQRU1JU0NfSERSX01PREVfUFJFQ0lTSU9OCSgxIDw8IDIzKSAv
KiBpY2wrICovDQo+ICAjZGVmaW5lICAgUElQRU1JU0NfT1VUUFVUX0NPTE9SU1BBQ0VfWVVWICAo
MSA8PCAxMSkNCj4gKyNkZWZpbmUgICBQSVBFTUlTQ19QSVhFTF9ST1VORElOR19UUlVOQwlSRUdf
QklUKDgpIC8qIHRnbCsgKi8NCj4gICNkZWZpbmUgICBQSVBFTUlTQ19ESVRIRVJfQlBDX01BU0sJ
KDcgPDwgNSkNCj4gICNkZWZpbmUgICBQSVBFTUlTQ19ESVRIRVJfOF9CUEMJCSgwIDw8IDUpDQo+
ICAjZGVmaW5lICAgUElQRU1JU0NfRElUSEVSXzEwX0JQQwkoMSA8PCA1KQ0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
