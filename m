Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C87321367
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 10:49:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E11DA6E92D;
	Mon, 22 Feb 2021 09:49:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA816E92D
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 09:49:03 +0000 (UTC)
IronPort-SDR: IbB+S4rgipPkcuZJJh48cNFZN1fw/dLh1WiKfcJQK7pQcmIHz88l0ps5o/WNhJkO3ybBeTtVlB
 I6NWDitPJHSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="183670835"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="183670835"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:49:03 -0800
IronPort-SDR: eaZN9Y6S4gNXdXTs19A6mtJqc6YjURZ4DAnZX+vemect3oUkkds13V6dzvQ/nVkchr9H4ttTVA
 57OiwgmeUsKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="498489716"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 22 Feb 2021 01:49:03 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 01:49:02 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 01:49:00 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 09:48:59 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 3/4] drm/i915/display: Remove some redundancy around
 CAN_PSR()
Thread-Index: AQHW/w9DH0742baKd0GdZRY70zneJqpkAiAA
Date: Mon, 22 Feb 2021 09:48:59 +0000
Message-ID: <ccc3382950c2dd11fc8fa4e5a202ad17ee9caa64.camel@intel.com>
References: <20210209181439.215104-1-jose.souza@intel.com>
 <20210209181439.215104-3-jose.souza@intel.com>
In-Reply-To: <20210209181439.215104-3-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <F33208C04845834EAC969DC7C0898384@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: Remove some
 redundancy around CAN_PSR()
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

T24gVHVlLCAyMDIxLTAyLTA5IGF0IDEwOjE0IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBJZiBzb3VyY2Vfc3VwcG9ydCBpcyBzZXQgdGhlIHBsYXRmb3JtIHN1cHBvcnRz
IFBTUiBzbyBubyBuZWVkIHRvDQo+IGNoZWNrDQo+IGl0IGFnYWluIGF0IGV2ZXJ5IENBTl9QU1Io
KS4NCj4gDQo+IEFsc28gcmVtb3ZpbmcgdGhlIGludGVsX2RwX2lzX2VkcCgpIGNhbGxzLCBpZiBz
aW5rX3N1cHBvcnQgaXMgc2V0DQo+IHRoZSBzaW5rIGNvbm5lY3RlZCBpcyBmb3Igc3VyZSBhIGVE
UCBwYW5lbC4NCj4gDQo+IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDUgKystLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMiArLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDQgKystLQ0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggZWJhYTlkMGVkMzc2Li40YTQ2YzRlOWIwYWMgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oDQo+IEBAIC0xNzkzLDkgKzE3OTMsOCBAQCBkcF90b19pOTE1KHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApDQo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdG9faTkxNShkcF90b19k
aWdfcG9ydChpbnRlbF9kcCktPmJhc2UuYmFzZS5kZXYpOw0KPiDCoH0NCj4gwqANCj4gLSNkZWZp
bmUgQ0FOX1BTUihpbnRlbF9kcCnCoMKgwqDCoMKgwqAoSEFTX1BTUihkcF90b19pOTE1KGludGVs
X2RwKSkgJiYgXA0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKGludGVsX2RwKS0+cHNyLnNpbmtfc3VwcG9ydCAmJiBcDQo+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAoaW50ZWxfZHApLT5wc3Iuc291cmNlX3N1cHBvcnQpDQo+ICsjZGVmaW5lIENBTl9Q
U1IoaW50ZWxfZHApICgoaW50ZWxfZHApLT5wc3Iuc2lua19zdXBwb3J0ICYmIFwNCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChpbnRlbF9kcCkt
PnBzci5zb3VyY2Vfc3VwcG9ydCkNCj4gwqANCj4gwqBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxf
ZW5jb2Rlcl9jYW5fcHNyKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ICplbmNvZGVyKQ0KPiDCoHsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCA0Zjg5
ZTBkZTVkZGUuLjBhMGNjNjEzNDRjNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiBAQCAtMjM1OCw3ICsyMzU4LDcgQEAgYm9vbCBpbnRlbF9kcF9pbml0
aWFsX2Zhc3RzZXRfY2hlY2soc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiDCoMKgwqDCoMKg
wqDCoMKgfQ0KPiDCoA0KPiAtwqDCoMKgwqDCoMKgwqBpZiAoQ0FOX1BTUihpbnRlbF9kcCkgJiYg
aW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgew0KPiArwqDCoMKgwqDCoMKgwqBpZiAoQ0FOX1BT
UihpbnRlbF9kcCkpIHsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLCAiRm9yY2luZyBmdWxsIG1vZGVzZXQgdG8NCj4gY29tcHV0ZSBQU1Ig
c3RhdGVcbiIpOw0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUt
PnVhcGkubW9kZV9jaGFuZ2VkID0gdHJ1ZTsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gZmFsc2U7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCA4YWQ5ZmNmZjNhMTIuLmUwMTExYjQ3MDU3MCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xOTYyLDcgKzE5NjIs
NyBAQCB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVs
X2RwKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBEUF9QU1JfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9SIHwNCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBfUFNSX0xJTktfQ1JDX0VSUk9S
Ow0KPiDCoA0KPiAtwqDCoMKgwqDCoMKgwqBpZiAoIUNBTl9QU1IoaW50ZWxfZHApIHx8ICFpbnRl
bF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiArwqDCoMKgwqDCoMKgwqBpZiAoIUNBTl9QU1IoaW50
ZWxfZHApKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybjsNCj4gwqAN
Cj4gwqDCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJnBzci0+bG9jayk7DQo+IEBAIC0yMDEyLDcg
KzIwMTIsNyBAQCBib29sIGludGVsX3Bzcl9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50
ZWxfZHApDQo+IMKgew0KPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCByZXQ7DQo+IMKgDQo+IC3CoMKg
wqDCoMKgwqDCoGlmICghQ0FOX1BTUihpbnRlbF9kcCkgfHwgIWludGVsX2RwX2lzX2VkcChpbnRl
bF9kcCkpDQo+ICvCoMKgwqDCoMKgwqDCoGlmICghQ0FOX1BTUihpbnRlbF9kcCkpDQo+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiDCoA0KPiDCoMKgwqDC
oMKgwqDCoMKgbXV0ZXhfbG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNClJldmlld2VkLWJ5OiBH
d2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
