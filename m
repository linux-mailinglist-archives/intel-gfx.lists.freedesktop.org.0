Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 234FF1DDCDB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 03:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596006E2A9;
	Fri, 22 May 2020 01:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30CAB6E2A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 01:59:18 +0000 (UTC)
IronPort-SDR: RMjcTCLvwGERsWgYAFW8ayCvegdYp+JCJJMOcAlQsF+Q71sdawy0ZEwbi07hbkivzPDXFA7Zva
 0+XqzDN4X2uA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 18:59:18 -0700
IronPort-SDR: TE0d4HrUR3AjWOgARGQyWHmYXvSqCkay9nCfSdfG5KLVs19V/zMRakpNbaHleW15L/zPgVieTQ
 Zmoi4Ex9n/CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,420,1583222400"; d="scan'208";a="300520832"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 21 May 2020 18:59:18 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 21 May 2020 18:59:18 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.235]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.9]) with mapi id 14.03.0439.000;
 Thu, 21 May 2020 18:59:18 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/ehl: Extend w/a 14010685332 to
 JSP/MCC
Thread-Index: AQHWLzwCNlyEXTkYV0SEwUz2soa8kKiz0LcA
Date: Fri, 22 May 2020 01:59:17 +0000
Message-ID: <06ea30b367d4c152accb7d01e88faa45fe1a0c18.camel@intel.com>
References: <20200521064448.29522-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200521064448.29522-1-swathi.dhanavanthri@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <9D05AF4CA32994438D20E16EF3C2E1D6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/ehl: Extend w/a 14010685332 to
 JSP/MCC
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

T24gV2VkLCAyMDIwLTA1LTIwIGF0IDIzOjQ0IC0wNzAwLCBTd2F0aGkgRGhhbmF2YW50aHJpIHdy
b3RlOg0KPiBUaGlzIGlzIGEgcGVybWFuZW50IHcvYSBmb3IgSlNML0VITC5UaGlzIGlzIHRvIGJl
IGFwcGxpZWQgdG8gdGhlDQo+IFBDSCB0eXBlcyBvbiBKU0wvRUhMIGllIEpTUC9NQ0MNCj4gQnNw
ZWM6IDUyODg4DQo+IA0KPiB2MjogRml4ZWQgdGhlIHdyb25nIHVzYWdlIG9mIGxvZ2ljYWwgT1Io
dmlsbGUpDQo+IHYzOiBSZW1vdmVkIGV4dHJhIGJyYWNlcywgY2hhbmdlZCB0aGUgY2hlY2soam9z
ZSkNCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBTd2F0aGkgRGhhbmF2YW50aHJpIDxzd2F0
aGkuZGhhbmF2YW50aHJpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2lycS5jIHwgNiArKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gaW5kZXgg
NGRjNjAxZGZmYzA4Li5iYzgyZDBkOGFkNWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
Yw0KPiBAQCAtMjkwMiw4ICsyOTAyLDEwIEBAIHN0YXRpYyB2b2lkIGdlbjExX2Rpc3BsYXlfaXJx
X3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAlpZiAoSU5URUxf
UENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9JQ1ApDQo+ICAJCUdFTjNfSVJRX1JFU0VUKHVuY29y
ZSwgU0RFKTsNCj4gIA0KPiAtCS8qIFdhXzE0MDEwNjg1MzMyOmljbCAqLw0KPiAtCWlmIChJTlRF
TF9QQ0hfVFlQRShkZXZfcHJpdikgPT0gUENIX0lDUCkgew0KPiArCS8qIFdhXzE0MDEwNjg1MzMy
OmljbCxqc2wsZWhsICovDQo+ICsJaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hf
SUNQIHx8DQo+ICsJICAgIElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hfSlNQIHx8DQo+
ICsJICAgIElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hfTUNDKSB7DQo+ICAJCWludGVs
X3VuY29yZV9ybXcodW5jb3JlLCBTT1VUSF9DSElDS0VOMSwNCj4gIAkJCQkgU0JDTEtfUlVOX1JF
RkNMS19ESVMsIFNCQ0xLX1JVTl9SRUZDTEtfRElTKTsNCj4gIAkJaW50ZWxfdW5jb3JlX3Jtdyh1
bmNvcmUsIFNPVVRIX0NISUNLRU4xLA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
