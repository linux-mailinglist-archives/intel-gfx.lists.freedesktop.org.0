Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3B01D15F4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 15:40:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605046EA36;
	Wed, 13 May 2020 13:40:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E36D6EA36
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 13:40:23 +0000 (UTC)
IronPort-SDR: l3afni88mXFlqoCQcW8cCHf4qeJy/aSp/1VvMvmi7xZA89bXn1maoCpeqApxliwEbHUkb6d+yF
 VMHfjKfaJsVA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 06:40:22 -0700
IronPort-SDR: OoYZ79JK9X8+g5JU89lmCYGgDCG6GDeI0hdQOj4RBoSpdnmNm3sdhPxzOAjepLN5OMOZef3bf/
 W2hmC+fwxxCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="280504892"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by orsmga002.jf.intel.com with ESMTP; 13 May 2020 06:40:21 -0700
Received: from irsmsx606.ger.corp.intel.com (163.33.146.139) by
 IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 13 May 2020 14:40:20 +0100
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 14:40:20 +0100
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 13 May 2020 14:40:20 +0100
From: "Patelczyk, Maciej" <maciej.patelczyk@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 24/24] drm/i915: Show per-engine default
 property values in sysfs
Thread-Index: AQHWKPr6Xi6pdGXPDUu0RPtTwl9kh6il9Q2A
Date: Wed, 13 May 2020 13:40:20 +0000
Message-ID: <87sgg40xa6.fsf@dev.i-did-not-set--mail-host-address--so-tickle-me>
References: <20200513074809.18194-1-chris@chris-wilson.co.uk>
 <20200513074809.18194-24-chris@chris-wilson.co.uk>
In-Reply-To: <20200513074809.18194-24-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <C1F15D9854410F4EB28BBF8EBAE38AD4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 24/24] drm/i915: Show per-engine default
 property values in sysfs
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoNCg0KPiBCeSBw
cm92aWRpbmcgdGhlIGRlZmF1bHQgdmFsdWVzIGNvbmZpZ3VyZWQgaW50byB0aGUga2VybmVsIHZp
YSBzeXNmcywgaXQNCj4gaXMgbXVjaCBtb3JlIGNvbnZlbmllbnQgZm9yIHVzZXJzcGFjZSB0byBy
ZXN0b3JlIHRob3NlIHNhbmUgZGVmYXVsdHMsIG9yDQo+IGF0IGxlYXN0IGtub3cgd2hhdCBhcmUg
Y29uc2lkZXJlZCBnb29kIGJhc2VsaW5lLiBUaGlzIGlzIHVzZWZ1bCwgZm9yDQo+IGV4YW1wbGUs
IHRvIGNsZWFudXAgYWZ0ZXIgYW55IGZhaWxlZCB1c2Vyc3BhY2UgcHJpb3IgdG8gY29tbWVuY2lu
ZyBuZXcNCj4gam9icy4NCj4NCj4gL3N5cy9jbGFzcy9kcm0vY2FyZDAvZW5naW5lL3JjczAvDQo+
IOKUnOKUgOKUgCBjYXBhYmlsaXRpZXMNCj4g4pSc4pSA4pSAIGNsYXNzDQo+IOKUnOKUgOKUgCAu
ZGVmYXVsdHMNCj4g4pSCwqDCoCDilJzilIDilIAgaGVhcnRiZWF0X2ludGVydmFsX21zDQo+IOKU
gsKgwqAg4pSc4pSA4pSAIG1heF9idXN5d2FpdF9kdXJhdGlvbl9ucw0KPiDilILCoMKgIOKUnOKU
gOKUgCBwcmVlbXB0X3RpbWVvdXRfbXMNCj4g4pSCwqDCoCDilJzilIDilIAgc3RvcF90aW1lb3V0
X21zDQo+IOKUgsKgwqAg4pSU4pSA4pSAIHRpbWVzbGljZV9kdXJhdGlvbl9tcw0KPiDilJzilIDi
lIAgaGVhcnRiZWF0X2ludGVydmFsX21zDQo+IOKUnOKUgOKUgCBpbnN0YW5jZQ0KPiDilJzilIDi
lIAga25vd25fY2FwYWJpbGl0aWVzDQo+IOKUnOKUgOKUgCBtYXhfYnVzeXdhaXRfZHVyYXRpb25f
bnMNCj4g4pSc4pSA4pSAIG1taW9fYmFzZQ0KPiDilJzilIDilIAgbmFtZQ0KPiDilJzilIDilIAg
cHJlZW1wdF90aW1lb3V0X21zDQo+IOKUnOKUgOKUgCBzdG9wX3RpbWVvdXRfbXMNCj4g4pSU4pSA
4pSAIHRpbWVzbGljZV9kdXJhdGlvbl9tcw0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9v
bmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBNYWNpZWogUGF0ZWxjenlrIDxt
YWNpZWoucGF0ZWxjenlrQGludGVsLmNvbT4NCg0KLU1hY2llalAuCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
