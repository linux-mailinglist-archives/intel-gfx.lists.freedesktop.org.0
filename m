Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B4E4C34C2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 19:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49EC310EE4D;
	Thu, 24 Feb 2022 18:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E76610EE4D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 18:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645727321; x=1677263321;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QoQP3kK7SAaqxfCtdQlb20xlC4RxwaWQDXtEt4Sn/4g=;
 b=L0Dppwha7GZ/glI9yXR5BiyKAcbreQhB+lnhJej1EjNe+qfX3uy4Myna
 GE0SeIgRzPOf/2N8PMxIy09Mq9CVxHOrB/0W7Y0htTVeiPIvHsZB6tRa/
 2iyHkB2RxZVYKQJJsIIxVHZ4a/VDWZYMnhN4UGpbpqlf6Exe0reK2nMMV
 09RiGpsR0MtlsPxhQ3A49t0LiUKr9wc+NGtlZjc1uzVkSu/kN64SV6ryu
 0PsIk+Vno7uhAnFkGTMf/v+BHZYuhxuxaLdrJSpr0edOASpiyx00YkVut
 sorH74SjV2yR/nBIkA2KViI2PwWDSED20+NA6Sl1B7oNpfT00LcO0vUq0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="276942260"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="276942260"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 10:28:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="637938108"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2022 10:28:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 10:28:40 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 24 Feb 2022 10:28:40 -0800
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.020;
 Thu, 24 Feb 2022 10:28:40 -0800
From: "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: s/JSP2/ICP2/ PCH
Thread-Index: AQHYKYF5UhJgX5tlUEKC5VAV15uLE6yjBSwQ
Date: Thu, 24 Feb 2022 18:28:40 +0000
Message-ID: <e9e727dad3af4ae9834a85a715d69fd5@intel.com>
References: <20220224132142.12927-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220224132142.12927-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: s/JSP2/ICP2/ PCH
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

QWNrZWQtYnk6IFZpdmVrIEthc2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4NCg0K
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqYWxhIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDI0
LCAyMDIyIDU6MjIgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
Q2M6IFJvcGVyLCBNYXR0aGV3IEQgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+OyBLYXNpcmVk
ZHksIFZpdmVrDQo+IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFU
Q0hdIGRybS9pOTE1OiBzL0pTUDIvSUNQMi8gUENIDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhpcyBKU1AyIFBDSCBh
Y3R1YWxseSBzZWVtcyB0byB0byBiZSBzb21lIHNwZWNpYWwgQXBwbGUNCj4gc3BlY2lmaWMgSUNQ
IHZhcmlhbnQgcmF0aGVyIHRoYW4gYSBKU1AuIE1ha2UgaXQgc28uIE9yIGF0DQo+IGxlYXN0IGFs
bCB0aGUgcmVmZXJlbmNlcyB0byBpdCBzZWVtIHRvIGJlIHNvbWUgQXBwbGUgSUNMDQo+IG1hY2hp
bmVzLiBEaWRuJ3QgbWFuYWdlIHRvIGZpbmQgdGhlc2UgUENJIElEcyBpbiBhbnkNCj4gcHVibGlj
IGNoaXBzZXQgZG9jcyB1bmZvcnR1bmF0ZWx5Lg0KPiANCj4gVGhlIG9ubHkgdGhpbmcgd2UncmUg
bG9zaW5nIGhlcmUgd2l0aCB0aGlzIEpTUC0+SUNQIGNoYW5nZQ0KPiBpcyBXYV8xNDAxMTI5NDE4
OCwgYnV0IGJhc2VkIG9uIHRoZSBIU0QgdGhhdCBpc24ndCBhY3R1YWxseQ0KPiBuZWVkZWQgb24g
YW55IElDUCBiYXNlZCBkZXNpZ24gKGluY2x1ZGluZyBKU1ApLCBvbmx5IFRHUA0KPiBiYXNlZCBz
dHVmZiAoaW5jbHVkaW5nIE1DQykgcmVhbGx5IG5lZWQgaXQuIFRoZSBkb2N1bWVudGVkDQo+IHcv
YSBqdXN0IG5ldmVyIG1hZGUgdGhhdCBkaXN0aW5jdGlvbiBiZWNhdXNlIFdpbmRvd3MgZGlkbid0
DQo+IHdhbnQgdG8gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIEpTUCBhbmQgTUNDIChub3Qgc3VyZSBo
b3cNCj4gdGhleSBoYW5kbGUgaHBkL2RkYy9ldGMuIHRoZW4gdGhvdWdoLi4uKS4NCj4gDQo+IENj
OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBDYzogVml2ZWsgS2Fz
aXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPg0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvNDIyNg0KPiBGaXhlczogOTQz
NjgyZTNiZDE5ICgiZHJtL2k5MTU6IEludHJvZHVjZSBKYXNwZXIgTGFrZSBQQ0giKQ0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIHwgMiArLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmggfCAyICstDQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BjaC5jDQo+IGluZGV4IDRmN2E2MWQ1NTAyZS4uNGNjZTA0NGVmZGUyIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wY2guYw0KPiBAQCAtMTA4LDYgKzEwOCw3IEBAIGludGVsX3BjaF90
eXBlKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gdW5zaWduZWQg
c2hvcnQgaWQpDQo+ICAJCS8qIENvbWV0IExha2UgViBQQ0ggaXMgYmFzZWQgb24gS0JQLCB3aGlj
aCBpcyBTUFQgY29tcGF0aWJsZSAqLw0KPiAgCQlyZXR1cm4gUENIX1NQVDsNCj4gIAljYXNlIElO
VEVMX1BDSF9JQ1BfREVWSUNFX0lEX1RZUEU6DQo+ICsJY2FzZSBJTlRFTF9QQ0hfSUNQMl9ERVZJ
Q0VfSURfVFlQRToNCj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJGb3VuZCBJY2Ug
TGFrZSBQQ0hcbiIpOw0KPiAgCQlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIUlTX0lDRUxB
S0UoZGV2X3ByaXYpKTsNCj4gIAkJcmV0dXJuIFBDSF9JQ1A7DQo+IEBAIC0xMjMsNyArMTI0LDYg
QEAgaW50ZWxfcGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LA0KPiB1bnNpZ25lZCBzaG9ydCBpZCkNCj4gIAkJCSAgICAhSVNfR0VOOV9CQyhkZXZfcHJpdikp
Ow0KPiAgCQlyZXR1cm4gUENIX1RHUDsNCj4gIAljYXNlIElOVEVMX1BDSF9KU1BfREVWSUNFX0lE
X1RZUEU6DQo+IC0JY2FzZSBJTlRFTF9QQ0hfSlNQMl9ERVZJQ0VfSURfVFlQRToNCj4gIAkJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJGb3VuZCBKYXNwZXIgTGFrZSBQQ0hcbiIpOw0KPiAg
CQlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIUlTX0pTTF9FSEwoZGV2X3ByaXYpKTsNCj4g
IAkJcmV0dXJuIFBDSF9KU1A7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wY2guaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oDQo+IGluZGV4IDZm
ZDIwNDA4ZjdiZi4uYjdhOGNmNDA5ZDQ4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wY2guaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2gu
aA0KPiBAQCAtNTAsMTEgKzUwLDExIEBAIGVudW0gaW50ZWxfcGNoIHsNCj4gICNkZWZpbmUgSU5U
RUxfUENIX0NNUDJfREVWSUNFX0lEX1RZUEUJCTB4MDY4MA0KPiAgI2RlZmluZSBJTlRFTF9QQ0hf
Q01QX1ZfREVWSUNFX0lEX1RZUEUJCTB4QTM4MA0KPiAgI2RlZmluZSBJTlRFTF9QQ0hfSUNQX0RF
VklDRV9JRF9UWVBFCQkweDM0ODANCj4gKyNkZWZpbmUgSU5URUxfUENIX0lDUDJfREVWSUNFX0lE
X1RZUEUJCTB4Mzg4MA0KPiAgI2RlZmluZSBJTlRFTF9QQ0hfTUNDX0RFVklDRV9JRF9UWVBFCQkw
eDRCMDANCj4gICNkZWZpbmUgSU5URUxfUENIX1RHUF9ERVZJQ0VfSURfVFlQRQkJMHhBMDgwDQo+
ICAjZGVmaW5lIElOVEVMX1BDSF9UR1AyX0RFVklDRV9JRF9UWVBFCQkweDQzODANCj4gICNkZWZp
bmUgSU5URUxfUENIX0pTUF9ERVZJQ0VfSURfVFlQRQkJMHg0RDgwDQo+IC0jZGVmaW5lIElOVEVM
X1BDSF9KU1AyX0RFVklDRV9JRF9UWVBFCQkweDM4ODANCj4gICNkZWZpbmUgSU5URUxfUENIX0FE
UF9ERVZJQ0VfSURfVFlQRQkJMHg3QTgwDQo+ICAjZGVmaW5lIElOVEVMX1BDSF9BRFAyX0RFVklD
RV9JRF9UWVBFCQkweDUxODANCj4gICNkZWZpbmUgSU5URUxfUENIX0FEUDNfREVWSUNFX0lEX1RZ
UEUJCTB4N0EwMA0KPiAtLQ0KPiAyLjM0LjENCg0K
