Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 050282097B8
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA21B6E882;
	Thu, 25 Jun 2020 00:41:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 927E86E882
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:41:51 +0000 (UTC)
IronPort-SDR: IFpZ0twF8XgUhAr5WR18opmnDJF56nnNw/EFvv7aJ+7eAWVbB7GjQ4lTCxVEneolOwFH5vLJQP
 7XdtMOo36uVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="143788906"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="143788906"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:41:50 -0700
IronPort-SDR: BNV5w3IdRgPYvp24p5QYJhDQE4Pz8+WswcTBkz47O3jDKTSG6yPgvbHT0XiUpL01aZKedJYp8I
 0QViaBRiinhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="301819487"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2020 17:41:50 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.212]) with mapi id 14.03.0439.000;
 Wed, 24 Jun 2020 17:41:50 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/12] drm/i915/fbc: Parametrize FBC_CONTROL
Thread-Index: AQHWHg6Ew7pvr1PImU271PV5LcImL6jpTHuA
Date: Thu, 25 Jun 2020 00:41:49 +0000
Message-ID: <020dd40ec1ba20d07897ac37bfcaa047090358fd.camel@intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
 <20200429101034.8208-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20200429101034.8208-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.155.111]
Content-ID: <41918D2B0CA99047B29BC1DD4FA4DA73@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915/fbc: Parametrize FBC_CONTROL
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

T24gV2VkLCAyMDIwLTA0LTI5IGF0IDEzOjEwICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUGFyYW1ldHJpemUgdGhlIEZCQ19DT05UUk9MIGJpdHMgZm9yIG5lYXRlciBjb2RlLg0K
PiANCj4gQWxzbyBhZGQgdGhlIG9uZSBtaXNzaW5nIGJpdDogInN0b3AgY29tcHJlc3Npb24gb24g
bW9kaWZpY2F0aW9uIi4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAgOCArKysrLS0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8IDE4ICsrKysrKysrKysrLS0tLS0tLQ0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCA1NmVl
YWZhNjQ1ZGUuLmRiZWY1OGFmNGI5NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiYy5jDQo+IEBAIC0xMzMsMTMgKzEzMywxMyBAQCBzdGF0aWMgdm9pZCBpOHh4
X2ZiY19hY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICANCj4g
IAkvKiBlbmFibGUgaXQuLi4gKi8NCj4gIAlmYmNfY3RsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgRkJDX0NPTlRST0wpOw0KPiAtCWZiY19jdGwgJj0gMHgzZmZmIDw8IEZCQ19DVExfSU5URVJW
QUxfU0hJRlQ7DQo+ICsJZmJjX2N0bCAmPSBGQkNfQ1RMX0lOVEVSVkFMKDB4M2ZmZik7DQo+ICAJ
ZmJjX2N0bCB8PSBGQkNfQ1RMX0VOIHwgRkJDX0NUTF9QRVJJT0RJQzsNCj4gIAlpZiAoSVNfSTk0
NUdNKGRldl9wcml2KSkNCj4gIAkJZmJjX2N0bCB8PSBGQkNfQ1RMX0MzX0lETEU7IC8qIDk0NSBu
ZWVkcyBzcGVjaWFsIFNSIGhhbmRsaW5nICovDQo+IC0JZmJjX2N0bCB8PSAoY2ZiX3BpdGNoICYg
MHhmZikgPDwgRkJDX0NUTF9TVFJJREVfU0hJRlQ7DQo+ICsJZmJjX2N0bCB8PSBGQkNfQ1RMX1NU
UklERShjZmJfcGl0Y2ggJiAweGZmKTsNCj4gIAlpZiAocGFyYW1zLT5mZW5jZV9pZCA+PSAwKQ0K
PiAtCQlmYmNfY3RsIHw9IHBhcmFtcy0+ZmVuY2VfaWQ7DQo+ICsJCWZiY19jdGwgfD0gRkJDX0NU
TF9GRU5DRU5PKHBhcmFtcy0+ZmVuY2VfaWQpOw0KPiAgCWludGVsX2RlX3dyaXRlKGRldl9wcml2
LCBGQkNfQ09OVFJPTCwgZmJjX2N0bCk7DQo+ICB9DQo+ICANCj4gQEAgLTE0NTIsNyArMTQ1Miw3
IEBAIHZvaWQgaW50ZWxfZmJjX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQ0KPiAgCS8qIFRoaXMgdmFsdWUgd2FzIHB1bGxlZCBvdXQgb2Ygc29tZW9uZSdzIGhhdCAqLw0K
PiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDw9IDQgJiYgIUlTX0dNNDUoZGV2X3ByaXYpKQ0K
PiAgCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRkJDX0NPTlRST0wsDQo+IC0JCSAgICAgICAg
ICAgICAgIDUwMCA8PCBGQkNfQ1RMX0lOVEVSVkFMX1NISUZUKTsNCj4gKwkJCSAgICAgICBGQkNf
Q1RMX0lOVEVSVkFMKDUwMCkpOw0KPiAgDQo+ICAJLyogV2Ugc3RpbGwgZG9uJ3QgaGF2ZSBhbnkg
c29ydCBvZiBoYXJkd2FyZSBzdGF0ZSByZWFkb3V0IGZvciBGQkMsIHNvDQo+ICAJICogZGVhY3Rp
dmF0ZSBpdCBpbiBjYXNlIHRoZSBCSU9TIGFjdGl2YXRlZCBpdCB0byBtYWtlIHN1cmUgc29mdHdh
cmUNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IGluZGV4IDA4ODIxNTAyNTY2MS4uZTlmYjY0
ZThmMjhmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTMxOTQsMTMgKzMx
OTQsMTcgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkxNV9yZWdf
dCByZWcpDQo+ICAjZGVmaW5lIEZCQ19DRkJfQkFTRQkJX01NSU8oMHgzMjAwKSAvKiA0ayBwYWdl
IGFsaWduZWQgKi8NCj4gICNkZWZpbmUgRkJDX0xMX0JBU0UJCV9NTUlPKDB4MzIwNCkgLyogNGsg
cGFnZSBhbGlnbmVkICovDQo+ICAjZGVmaW5lIEZCQ19DT05UUk9MCQlfTU1JTygweDMyMDgpDQo+
IC0jZGVmaW5lICAgRkJDX0NUTF9FTgkJKDEgPDwgMzEpDQo+IC0jZGVmaW5lICAgRkJDX0NUTF9Q
RVJJT0RJQwkoMSA8PCAzMCkNCj4gLSNkZWZpbmUgICBGQkNfQ1RMX0lOVEVSVkFMX1NISUZUICgx
NikNCj4gLSNkZWZpbmUgICBGQkNfQ1RMX1VOQ09NUFJFU1NJQkxFICgxIDw8IDE0KQ0KPiAtI2Rl
ZmluZSAgIEZCQ19DVExfQzNfSURMRQkoMSA8PCAxMykNCj4gLSNkZWZpbmUgICBGQkNfQ1RMX1NU
UklERV9TSElGVAkoNSkNCj4gLSNkZWZpbmUgICBGQkNfQ1RMX0ZFTkNFTk9fU0hJRlQJKDApDQo+
ICsjZGVmaW5lICAgRkJDX0NUTF9FTgkJUkVHX0JJVCgzMSkNCj4gKyNkZWZpbmUgICBGQkNfQ1RM
X1BFUklPRElDCVJFR19CSVQoMzApDQo+ICsjZGVmaW5lICAgRkJDX0NUTF9JTlRFUlZBTF9NQVNL
CVJFR19HRU5NQVNLKDI5LCAxNikNCj4gKyNkZWZpbmUgICBGQkNfQ1RMX0lOVEVSVkFMKHgpCVJF
R19GSUVMRF9QUkVQKEZCQ19DVExfSU5URVJWQUxfTUFTSywgKHgpKQ0KPiArI2RlZmluZSAgIEZC
Q19DVExfU1RPUF9PTl9NT0QJUkVHX0JJVCgxNSkNCj4gKyNkZWZpbmUgICBGQkNfQ1RMX1VOQ09N
UFJFU1NJQkxFIFJFR19CSVQoMTQpIC8qIGk5MTUrICovDQo+ICsjZGVmaW5lICAgRkJDX0NUTF9D
M19JRExFCVJFR19CSVQoMTMpIC8qIGk5NDVnbSAqLw0KPiArI2RlZmluZSAgIEZCQ19DVExfU1RS
SURFX01BU0sJUkVHX0dFTk1BU0soMTIsIDUpDQo+ICsjZGVmaW5lICAgRkJDX0NUTF9TVFJJREUo
eCkJUkVHX0ZJRUxEX1BSRVAoRkJDX0NUTF9TVFJJREVfTUFTSywgKHgpKQ0KPiArI2RlZmluZSAg
IEZCQ19DVExfRkVOQ0VOT19NQVNLCVJFR19HRU5NQVNLKDMsIDApDQo+ICsjZGVmaW5lICAgRkJD
X0NUTF9GRU5DRU5PKHgpCVJFR19GSUVMRF9QUkVQKEZCQ19DVExfRkVOQ0VOT19NQVNLLCAoeCkp
DQo+ICAjZGVmaW5lIEZCQ19DT01NQU5ECQlfTU1JTygweDMyMGMpDQo+ICAjZGVmaW5lICAgRkJD
X0NNRF9DT01QUkVTUwkoMSA8PCAwKQ0KPiAgI2RlZmluZSBGQkNfU1RBVFVTCQlfTU1JTygweDMy
MTApDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
