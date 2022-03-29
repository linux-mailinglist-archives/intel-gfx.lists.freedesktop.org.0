Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07D14EB408
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 21:20:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2C710EE48;
	Tue, 29 Mar 2022 19:20:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4427110EE48
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 19:20:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648581640; x=1680117640;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3rH9Yt7w8iUIpm9GGKCUDf/CEwXCCTV85Dx4eU+GMvY=;
 b=HUUkXo3WrZd5h9MbdMjetKdskMlHDrLkFIZsPRhzF9zLv7URP+FP+f7e
 +JB2s9WtlgAc89l2yxDiZkvQvmrrh+zs0vWqOZgb6MieFMRbjkfDIvrf5
 HcovNvzUmbZMbqQOeLRUA+/L/wHh9WBWQqV03UgRLBGuNDcQm0q3lxiWg
 mi7pnfqgaFsfNkOfY54Me2dDPkkq4tsx/W4LeCEQDOTWU7V/PLclnaHzr
 Xox3xiXpPJ035eVrbh281yg4hn/Z3FKJfUfiKz/+ydSkAJu/Uh3bHqXw3
 GrhUX0RdhoUSMYC1GtLkgqfUWXfxrF9FR9gG3tQKuKOYzPo9sKk1BwrAj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239942448"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239942448"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 12:20:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="503014420"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga003.jf.intel.com with ESMTP; 29 Mar 2022 12:20:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 20:20:37 +0100
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Tue, 29 Mar 2022 12:20:36 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Program
 PIPE_MBUS_DBOX_CTL with adl-p values
Thread-Index: AQHYQtglryl3BoZ/TUWVC6vl9z4+b6zXIVUAgAAS1QA=
Date: Tue, 29 Mar 2022 19:20:35 +0000
Message-ID: <57b983a2ba4797e198b466cd4bd9726c4535c483.camel@intel.com>
References: <20220328191617.122838-1-jose.souza@intel.com>
 <YkNMiEdouCGD2rsv@intel.com>
In-Reply-To: <YkNMiEdouCGD2rsv@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <4DEB5E706A4F3B42AFC0109B108F04ED@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/display: Program
 PIPE_MBUS_DBOX_CTL with adl-p values
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIyLTAzLTI5IGF0IDIxOjE0ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgTWFyIDI4LCAyMDIyIGF0IDEyOjE2OjE1UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gRnJvbTogQ2F6IFlva295YW1hIDxjYXoueW9rb3lhbWFA
aW50ZWwuY29tPg0KPiA+IA0KPiA+IEIgY3JlZGl0cyBzZXQgYnkgSUZXSSBkbyBub3QgbWF0Y2gg
d2l0aCBzcGVjaWZpY2F0aW9uIGRlZmF1bHQsIHNvIGhlcmUNCj4gPiBwcm9ncmFtbWluZyB0aGUg
cmlnaHQgdmFsdWUuDQo+ID4gDQo+ID4gQWxzbyB3aGlsZSBhdCBpdCwgdGFraW5nIHRoZSBvcG9y
dHVuaXR5IHRvIGRvIGEgcmVhZC1tb2RpZnktd3JpdGUgdG8NCj4gPiBub3Qgb3ZlcndyaXRlIGFs
bCBvdGhlciBiaXRzIGluIHRoaXMgcmVnaXN0ZXIgdGhhdCBzcGVjaWZpY2F0aW9uIGRvbid0DQo+
ID4gYXNrIHVzIHRvIGNoYW5nZS4NCj4gDQo+IFJNV3MgY29uc2lkZXJlZCBoYXJtZnVsLiBUaGlz
IGlzIGEgZG91YmxlIGJ1ZmZlcmVkIHJlZ2lzdGVyIGFuZCBpbiB0aGUNCj4gZnV0dXJlIHdlIG1h
eSBoYXZlIHRvIHByb2dyYW0gaXQgdmlhIERTQiB0byB1cGRhdGUgaXQgYXRvbWljYWxseSB3aXRo
DQo+IHRoZSByZXN0IG9mIHRoZSByZWdpc3RlcnMgKGVnLiBpZiB3ZSB3YW50IHRvIGF2b2lkIHRo
ZSBtb2Rlc2V0IGZvciB0aGUNCj4gbWJ1cyBqb2luaW5nIGNoYW5nZSkuIEFuZCB3aGVuIHRoYXQg
aGFwcGVucyB0aGUgUk1XIHdpbGwgaGF2ZSB0byBiZQ0KPiByZW1vdmVkIGFnYWluIHNpbmNlIHRo
ZSBEU0IgY2FuJ3QgZXZlbiByZWFkIHJlZ2lzdGVycy4gU28gSU1PIGJldHRlcg0KPiB0byBub3Qg
ZXZlbiBzdGFydCBkb3duIHRoaXMgcGF0aC4NCg0KT2theSBidXQgcmlnaHQgbm93IGl0IGlzIG5v
dCBoYXJtZnVsIGFzIGFmZmVjdGVkIHBpcGVzIHdvdWxkIGJlIGRpc2FibGVkIGF0IHRoaXMgcG9p
bnQuDQpXaXRob3V0IHRoZSBSTVcgd2lsbCBuZWVkIHRvIHNldCB0aGUgZGVmYXVsdCB2YWx1ZSBm
b3IgMyBvdGhlciByZWdpc3RlcnMgaW4gUElQRV9NQlVTX0RCT1hfQ1RMIG9mZnNldC4NCg0KSSdt
IGdvb2Qgd2l0aCBhbnksIG9wdGlvbi4gDQoNCj4gDQo+ID4gDQo+ID4gQlNwZWM6IDQ5MjEzDQo+
ID4gQlNwZWM6IDUwMzQzDQo+ID4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRl
bC5jb20+DQo+ID4gQ2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlA
aW50ZWwuY29tPg0KPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCAxMiArKysrKysrKystLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IDNkMmZmMjU4ZjBhOTQuLjA3
OGFkYTA0MWUxY2QgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0xODMwLDEzICsxODMwLDE5IEBAIHN0YXRpYyB2b2lk
IGljbF9waXBlX21idXNfZW5hYmxlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBib29sIGpvaW5l
ZF9tYnVzKQ0KPiA+ICAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiA+ICAJdTMyIHZh
bDsNCj4gPiAgDQo+ID4gKwl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQSVBFX01CVVNf
REJPWF9DVEwocGlwZSkpOw0KPiA+ICsJdmFsICY9IH5NQlVTX0RCT1hfQV9DUkVESVRfTUFTSzsN
Cj4gPiAgCS8qIFdhXzIyMDEwOTQ3MzU4OmFkbC1wICovDQo+ID4gIAlpZiAoSVNfQUxERVJMQUtF
X1AoZGV2X3ByaXYpKQ0KPiA+IC0JCXZhbCA9IGpvaW5lZF9tYnVzID8gTUJVU19EQk9YX0FfQ1JF
RElUKDYpIDogTUJVU19EQk9YX0FfQ1JFRElUKDQpOw0KPiA+ICsJCXZhbCB8PSBqb2luZWRfbWJ1
cyA/IE1CVVNfREJPWF9BX0NSRURJVCg2KSA6IE1CVVNfREJPWF9BX0NSRURJVCg0KTsNCj4gPiAg
CWVsc2UNCj4gPiAtCQl2YWwgPSBNQlVTX0RCT1hfQV9DUkVESVQoMik7DQo+ID4gKwkJdmFsIHw9
IE1CVVNfREJPWF9BX0NSRURJVCgyKTsNCj4gPiAgDQo+ID4gLQlpZiAoRElTUExBWV9WRVIoZGV2
X3ByaXYpID49IDEyKSB7DQo+ID4gKwl2YWwgJj0gfihNQlVTX0RCT1hfQldfQ1JFRElUX01BU0sg
fCBNQlVTX0RCT1hfQl9DUkVESVRfTUFTSyk7DQo+ID4gKwlpZiAoSVNfQUxERVJMQUtFX1AoZGV2
X3ByaXYpKSB7DQo+ID4gKwkJdmFsIHw9IE1CVVNfREJPWF9CV19DUkVESVQoMik7DQo+ID4gKwkJ
dmFsIHw9IE1CVVNfREJPWF9CX0NSRURJVCg4KTsNCj4gPiArCX0gZWxzZSBpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpID49IDEyKSB7DQo+ID4gIAkJdmFsIHw9IE1CVVNfREJPWF9CV19DUkVESVQo
Mik7DQo+ID4gIAkJdmFsIHw9IE1CVVNfREJPWF9CX0NSRURJVCgxMik7DQo+ID4gIAl9IGVsc2Ug
ew0KPiA+IC0tIA0KPiA+IDIuMzUuMQ0KPiANCg0K
