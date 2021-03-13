Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B4B339A69
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Mar 2021 01:24:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADDE46E072;
	Sat, 13 Mar 2021 00:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E1A46E072
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Mar 2021 00:24:44 +0000 (UTC)
IronPort-SDR: VIkVb5oJZ3vML0+7SOqQx99NNDCPh5Y2gJrPokY/GInpW7mXtTyYSzsyZUeOkoAcPnlea0US6/
 b7M0yC11MJxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="252925173"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="252925173"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 16:24:42 -0800
IronPort-SDR: Qw4ByfKoykwgpr+0Fy/vHegiWDhP2PcOxc7h959bWXWOfbZphWnyO1BIFHkLyMGc3YvTxls7N1
 Tl7nlGKiAVUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="377880353"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 12 Mar 2021 16:24:41 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:24:41 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 16:24:41 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Fri, 12 Mar 2021 16:24:41 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 54/56] drm/i915/display/adl_p: Remove CCS support
Thread-Index: AQHXFscHy+wIl9lkUEC9rfPZ1iG9jKqBEMKg
Date: Sat, 13 Mar 2021 00:24:40 +0000
Message-ID: <667c1b9fd576452ebc3e29213f632248@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
 <20210311223632.3191939-55-matthew.d.roper@intel.com>
In-Reply-To: <20210311223632.3191939-55-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 54/56] drm/i915/display/adl_p: Remove CCS
 support
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUm9wZXIsIE1hdHRoZXcg
RCA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1hcmNoIDEx
LCAyMDIxIDI6MzcgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGludGVsLmNvbT47IFJvcGVyLCBNYXR0aGV3IEQN
Cj4gPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+OyBTcml2YXRzYSwgQW51c2hhDQo+IDxhbnVz
aGEuc3JpdmF0c2FAaW50ZWwuY29tPjsgVGF5bG9yLCBDbGludG9uIEENCj4gPGNsaW50b24uYS50
YXlsb3JAaW50ZWwuY29tPjsgSGVpa2tpbGEsIEp1aGEtcGVra2EgPGp1aGEtDQo+IHBla2thLmhl
aWtraWxhQGludGVsLmNvbT47IFRheWxvciwgQ2xpbnRvbiBBIDxjbGludG9uLmEudGF5bG9yQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIDU0LzU2XSBkcm0vaTkxNS9kaXNwbGF5L2FkbF9w
OiBSZW1vdmUgQ0NTIHN1cHBvcnQNCj4gDQo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiANCj4gQnVmZmVyIGNvbXByZXNzaW9uIGlzIG5vdCB1
c2FibGUgaW4gQSBzdGVwcGluZy4NCj4gDQo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPg0KPiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50
ZWwuY29tPg0KPiBDYzogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5j
b20+DQo+IENjOiBKdWhhLVBla2thIEhlaWtraWzDpCA8anVoYS1wZWtrYS5oZWlra2lsYUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBDbGludG9uIFRheWxvciA8Q2xpbnRvbi5B
LlRheWxvckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNo
YS5zcml2YXRzYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9z
a2xfdW5pdmVyc2FsX3BsYW5lLmMgICAgfCAyMCArKysrKysrKysrKysrKysrKystDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMN
Cj4gaW5kZXggY2MzNjkxN2I0NTljLi5jZGQ2MWMxMWI5YmIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IEBAIC0x
OTcsNiArMTk3LDEzIEBAIHN0YXRpYyBjb25zdCB1NjQNCj4gZ2VuMTJfcGxhbmVfZm9ybWF0X21v
ZGlmaWVyc19yY19jY3NbXSA9IHsNCj4gIAlEUk1fRk9STUFUX01PRF9JTlZBTElEDQo+ICB9Ow0K
PiANCj4gK3N0YXRpYyBjb25zdCB1NjQgYWRscF9zdGVwX2FfcGxhbmVfZm9ybWF0X21vZGlmaWVy
c1tdID0gew0KPiArCUk5MTVfRk9STUFUX01PRF9ZX1RJTEVELA0KPiArCUk5MTVfRk9STUFUX01P
RF9YX1RJTEVELA0KPiArCURSTV9GT1JNQVRfTU9EX0xJTkVBUiwNCj4gKwlEUk1fRk9STUFUX01P
RF9JTlZBTElEDQo+ICt9Ow0KPiArDQo+ICBpbnQgc2tsX2Zvcm1hdF90b19mb3VyY2MoaW50IGZv
cm1hdCwgYm9vbCByZ2Jfb3JkZXIsIGJvb2wgYWxwaGEpICB7DQo+ICAJc3dpdGNoIChmb3JtYXQp
IHsNCj4gQEAgLTE4ODUsNiArMTg5MiwxMCBAQCBzdGF0aWMgYm9vbCBnZW4xMl9wbGFuZV9zdXBw
b3J0c19tY19jY3Moc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCSAg
ICBJU19UR0xfRElTUF9TVEVQUElORyhkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9DMCkpDQo+ICAJ
CXJldHVybiBmYWxzZTsNCj4gDQo+ICsJLyogV2FfMjIwMTExODYwNTcgKi8NCj4gKwlpZiAoSVNf
QURMUF9SRVZJRChkZXZfcHJpdiwgQURMUF9SRVZJRF9BMCwgQURMUF9SRVZJRF9BMCkpDQo+ICsJ
CXJldHVybiBmYWxzZTsNCj4gKw0KPiAgCXJldHVybiBwbGFuZV9pZCA8IFBMQU5FX1NQUklURTQ7
DQo+ICB9DQo+IA0KPiBAQCAtMTkwMiw4ICsxOTEzLDEyIEBAIHN0YXRpYyBib29sDQo+IGdlbjEy
X3BsYW5lX2Zvcm1hdF9tb2Rfc3VwcG9ydGVkKHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwNCj4g
IAljYXNlIERSTV9GT1JNQVRfTU9EX0xJTkVBUjoNCj4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9Y
X1RJTEVEOg0KPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQ6DQo+ICsJCWJyZWFrOw0K
PiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOg0KPiAgCWNhc2Ug
STkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDOg0KPiArCQkvKiBXYV8yMjAx
MTE4NjA1NyAqLw0KPiArCQlpZiAoSVNfQURMUF9SRVZJRChkZXZfcHJpdiwgQURMUF9SRVZJRF9B
MCwNCj4gQURMUF9SRVZJRF9BMCkpDQo+ICsJCQlyZXR1cm4gZmFsc2U7DQo+ICAJCWJyZWFrOw0K
PiAgCWRlZmF1bHQ6DQo+ICAJCXJldHVybiBmYWxzZTsNCj4gQEAgLTE5NTgsNyArMTk3MywxMCBA
QCBzdGF0aWMgYm9vbA0KPiBnZW4xMl9wbGFuZV9mb3JtYXRfbW9kX3N1cHBvcnRlZChzdHJ1Y3Qg
ZHJtX3BsYW5lICpfcGxhbmUsICBzdGF0aWMNCj4gY29uc3QgdTY0ICpnZW4xMl9nZXRfcGxhbmVf
bW9kaWZpZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAkJCQkJICAg
IGVudW0gcGxhbmVfaWQgcGxhbmVfaWQpDQo+ICB7DQo+IC0JaWYgKGdlbjEyX3BsYW5lX3N1cHBv
cnRzX21jX2NjcyhkZXZfcHJpdiwgcGxhbmVfaWQpKQ0KPiArCS8qIFdhXzIyMDExMTg2MDU3ICov
DQo+ICsJaWYgKElTX0FETFBfUkVWSUQoZGV2X3ByaXYsIEFETFBfUkVWSURfQTAsIEFETFBfUkVW
SURfQTApKQ0KPiArCQlyZXR1cm4gYWRscF9zdGVwX2FfcGxhbmVfZm9ybWF0X21vZGlmaWVyczsN
Cj4gKwllbHNlIGlmIChnZW4xMl9wbGFuZV9zdXBwb3J0c19tY19jY3MoZGV2X3ByaXYsIHBsYW5l
X2lkKSkNCj4gIAkJcmV0dXJuIGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNfbWNfY2NzOw0K
PiAgCWVsc2UNCj4gIAkJcmV0dXJuIGdlbjEyX3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNfcmNfY2Nz
Ow0KPiAtLQ0KPiAyLjI1LjQNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
