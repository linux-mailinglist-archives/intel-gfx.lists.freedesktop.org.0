Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1E744D6A6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 13:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E5E6E0C2;
	Thu, 11 Nov 2021 12:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DE066E0C2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Nov 2021 12:28:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10164"; a="293725628"
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="293725628"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 04:28:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,226,1631602800"; d="scan'208";a="501856451"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga007.fm.intel.com with ESMTP; 11 Nov 2021 04:28:38 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 11 Nov 2021 12:28:37 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2242.012;
 Thu, 11 Nov 2021 12:28:37 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 00/17] drm/i915/fbc: Prep work for multiple
 FBC instances
Thread-Index: AQHX0Yql5Qdc6kdrBkKZRIC9gjYAmKv06WeAgAliVRA=
Date: Thu, 11 Nov 2021 12:28:37 +0000
Message-ID: <44f76ff667b14eb8a4b0037611b0383d@intel.com>
References: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
 <87v91692cq.fsf@intel.com>
In-Reply-To: <87v91692cq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/17] drm/i915/fbc: Prep work for multiple
 FBC instances
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkNCj4gTmlr
dWxhDQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIgNSwgMjAyMSAzOjA5IFBNDQo+IFRvOiBWaWxs
ZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSCAwMC8x
N10gZHJtL2k5MTUvZmJjOiBQcmVwIHdvcmsgZm9yIG11bHRpcGxlIEZCQw0KPiBpbnN0YW5jZXMN
Cj4gDQo+IE9uIFRodSwgMDQgTm92IDIwMjEsIFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+DQo+ID4gQnVuY2ggb2YgcmVmYWN0b3Jpbmcg
YW5kIGNsZWFudXBzLCBtYWlubHkgYXMgcHJlcCB3b3JrIGZvciBpbnRyb2R1Y2luZw0KPiA+IG11
bHRpcGxlIEZCQyBpbnN0YW5jZXMgaW4gdGhlIGZ1dHVyZS4NCj4gDQo+IEV5ZWJhbGxlZCB0aHJv
dWdoIHRoZSBzZXJpZXMsIGFuZCBJIGxpa2UgYWxsIG9mIGl0LiBSZWFsbHkgbmljZS4NCj4gDQo+
IEFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQpUaGUgc2Vy
aWVzIGxvb2tzIG9rIHRvIG1lLg0KDQpGb3IgdGhlIHNlcmllcw0KDQpSZXZpZXdlZC1ieTogTWlr
YSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiANCj4gPg0KPiA+IFZpbGxlIFN5
cmrDpGzDpCAoMTcpOg0KPiA+ICAgZHJtL2k5MTUvZmJjOiBFeHJhY3Qgc25iX2ZiY19wcm9ncmFt
X2ZlbmNlKCkNCj4gPiAgIGRybS9pOTE1L2ZiYzogRXh0cmFjdCB7c2tsLGdsa31fZmJjX3Byb2dy
YW1fY2ZiX3N0cmlkZSgpDQo+ID4gICBkcm0vaTkxNS9mYmM6IEp1c3QgdXNlIHBhcmFtcy0+ZmVu
Y2VfeV9vZmZzZXQgYWx3YXlzDQo+ID4gICBkcm0vaTkxNS9mYmM6IEludHJvZHVjZSBpbnRlbF9m
YmNfaXNfY29tcHJlc3NpbmcoKQ0KPiA+ICAgZHJtL2k5MTUvZmJjOiBFeHRyYWN0IGhlbHBlcnMg
dG8gY29tcHV0ZSBGQkMgY29udHJvbCByZWdpc3RlciB2YWx1ZXMNCj4gPiAgIGRybS9pOTE1L2Zi
YzogSW50cm9kdWNlIGludGVsX2ZiY19mdW5jcw0KPiA+ICAgZHJtL2k5MTUvZmJjOiBJbnRyb2R1
Y2UgLm51a2UoKSB2ZnVuYw0KPiA+ICAgZHJtL2k5MTUvZmJjOiBzL2dlbjcvaXZiLw0KPiA+ICAg
ZHJtL2k5MTUvZmJjOiBJbnRyb2R1Y2UgLnByb2dyYW1fY2ZiKCkgdmZ1bmMNCj4gPiAgIGRybS9p
OTE1L2ZiYzogSW50cm9kdWNlIGludGVsX2ZiY19zZXRfZmFsc2VfY29sb3IoKQ0KPiA+ICAgZHJt
L2k5MTUvZmJjOiBOdWtlIEJEV19GQkNfQ09NUF9TRUdfTUFTSw0KPiA+ICAgZHJtL2k5MTUvZmJj
OiBDbGVhbiB1cCBhbGwgcmVnaXN0ZXIgZGVmaW5lcw0KPiA+ICAgZHJtL2k5MTUvZmJjOiBGaW5p
c2ggcG9saXNoaW5nIEZCQzEgcmVnaXN0ZXJzDQo+ID4gICBkcm0vaTkxNTogUmVsb2NhdGUgRkJD
X0xMQ19SRUFEX0NUUkwNCj4gPiAgIGRybS9pOTE1L2ZiYzogcy9kZXZfcHJpdi9pOTE1Lw0KPiA+
ICAgZHJtL2k5MTUvZmJjOiBTdGFydCBwYXNzaW5nIGFyb3VuZCBpbnRlbF9mYmMNCj4gPiAgIGRy
bS8xOTE1L2ZiYzogUmVwbGFjZSBwbGFuZS0+aGFzX2ZiYyB3aXRoIGEgcG9pbnRlciB0byB0aGUg
ZmJjDQo+ID4gICAgIGluc3RhbmNlDQo+ID4NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pOXh4X3BsYW5lLmMgICAgIHwgIDEwICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAgNCArLQ0KPiA+ICAuLi4vZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyAgfCAgNDMgKy0NCj4gPiAgLi4uL2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICA0ICstDQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgICAgICB8IDk5NiArKysrKysrKysrLS0t
LS0tLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuaCAgICAg
IHwgIDExICstDQo+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZpZm9fdW5kZXJydW4u
YyAgICB8ICAgMiArLQ0KPiA+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3Bs
YW5lLmMgICAgfCAgMTAgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAg
ICAgICAgICAgICAgIHwgICA0ICsNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCAgICAgICAgICAgICAgIHwgMTU0ICstLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jICAgICAgICAgICAgICAgfCAgMTYgKy0NCj4gPiAgMTEgZmlsZXMgY2hhbmdlZCwgNjk1
IGluc2VydGlvbnMoKyksIDU1OSBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+IEphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCg==
