Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9FA47DF66
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Dec 2021 08:15:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 384DC10E259;
	Thu, 23 Dec 2021 07:15:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 641B510E259
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Dec 2021 07:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640243740; x=1671779740;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KChi59CoWACLLFIiU0Frg6w2kW47+bAnYoQllPowmCs=;
 b=Q3MjKb3AwUQuN7+BSRFIJosMUuSYY6WuX4bwvkiT0NSo0uH2a3GD2oEy
 F6NlHffQMhqGHd6VWp/kCyTNekohAEHcbsr7C9vzaUOdtNzbwfMjBomD6
 P2c6jiRnggoIu8CxrLDNnUV9Gh+OAgZ1lPurouq/P2pH09EySfAb+jzYz
 BcJCRrFvtvE9DWzhoYE28vviezocL6Yg+OdgoMdEL5VS8jAx296lPoCmg
 xyfWP5yVE+KB/ruUDzpLL3+oBeC9jlsPLBsKMBJ7Zs0MVQ8Li6DaEqFLf
 xY++0une3Sz21IgemDY7lGqq3WVJkEpMjulJS2ro1RTOm3J9FEscJVB/Z w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="240577038"
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; d="scan'208";a="240577038"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 23:15:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; d="scan'208";a="607668965"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Dec 2021 23:15:39 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 23 Dec 2021 07:15:38 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Thu, 23 Dec 2021 07:15:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/fbc: Remember to update FBC state
 even when not reallocating CFB
Thread-Index: AQHX8m1MemLfCpll5kGIR9g862bjfKw/tMSg
Date: Thu, 23 Dec 2021 07:15:37 +0000
Message-ID: <4c1528eafb6444688b18307376d80d37@intel.com>
References: <20211216110822.8461-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211216110822.8461-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: Remember to update FBC state
 even when not reallocating CFB
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
cmphbGENCj4gU2VudDogVGh1cnNkYXksIERlY2VtYmVyIDE2LCAyMDIxIDE6MDggUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIXSBkcm0vaTkxNS9mYmM6IFJlbWVtYmVyIHRvIHVwZGF0ZSBGQkMgc3RhdGUgZXZlbg0K
PiB3aGVuIG5vdCByZWFsbG9jYXRpbmcgQ0ZCDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gV2UgbXVzdG4ndCBmb3JnZXQg
dG8gdXBkYXRlIG91ciBGQkMgc3RhdGUgZXZlbiBpZiB3ZSBkb24ndCBoYXZlIHRvIHJlYWxsb2Nh
dGUNCj4gdGhlIENGQi4gT3RoZXJ3aXNlIHdlIHdvbid0IHJlZnJlc2ggb3VyIG5vdGlvbiBvZiB3
aGF0IGVnLiB0aGUgbmV3IGZlbmNlIG9yDQo+IHRoZSBuZXcgb3ZlcnJpZGUgQ0ZCIHN0cmlkZSBz
aG91bGQgYmUuIFVzaW5nIHRoZSB3cm9uZyBDRkIgc3RyaWRlIGluIHBhcnRpY3VsYXINCj4gY2Fu
IGNhdXNlIHVuZGVycnVucyBhbmQgY291bGQgZXZlbiBjb3JydXB0IG90aGVyIHN0dWZmIGluIHN0
b2xlbi4NCj4gDQo+IEZpeGVzOiBmNGNmZGJiMDJjYTggKCJkcm0vaTkxNS9mYmM6IE51a2Ugc3Rh
dGVfY2FjaGUiKQ0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aW50ZWwvLS9pc3N1ZXMvNDc3NA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEg
PG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA0ICsrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCA5ODdlYTRjNGI1ZDAuLjQ2NWRjNGU5N2VhOCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC0xNDA4
LDggKzE0MDgsMTAgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfZW5hYmxlKHN0cnVjdA0KPiBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQlpZiAoZmJjLT5zdGF0ZS5wbGFuZSAhPSBw
bGFuZSkNCj4gIAkJCXJldHVybjsNCj4gDQo+IC0JCWlmIChpbnRlbF9mYmNfaXNfb2socGxhbmVf
c3RhdGUpKQ0KPiArCQlpZiAoaW50ZWxfZmJjX2lzX29rKHBsYW5lX3N0YXRlKSkgew0KPiArCQkJ
aW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZShzdGF0ZSwgY3J0YywgcGxhbmUpOw0KPiAgCQkJcmV0dXJu
Ow0KPiArCQl9DQo+IA0KPiAgCQlfX2ludGVsX2ZiY19kaXNhYmxlKGZiYyk7DQo+ICAJfQ0KPiAt
LQ0KPiAyLjMyLjANCg0K
