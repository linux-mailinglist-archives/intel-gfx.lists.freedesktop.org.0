Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AB64E3215
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 21:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0A310E48C;
	Mon, 21 Mar 2022 20:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7419710E48B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 20:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647896225; x=1679432225;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=B/9FfZQ1ichyHgB8TMqiFNnuLrG43SYl780P7oQCfLs=;
 b=kpWOi02OUvhWG4Xv6SYPXwzux97C5DXSNoI66SWef21hH30LZLBTA88c
 dQswBKOO2KaJqNGf0GD4dBtJ3xWlahABv3Sus1MdZMbiIOB/b9INUm0bI
 xJIjJFpqwj/M/lnyCKTUZq7i6eAht1u7XvTfkR4zItWgf1ipHyMEqpfzO
 KL81wpmEMYzNKqP3OBcZ9VwiWu8jrttFNVHc+UCYyzCY07d2BI035HJOD
 WhJj1iTl4+ec/2dkmuLPStmQ4JSOXKRwEYFrmo2GhGhS9di4MiqFlkjgs
 SbaJrPYBO7ZONDy1Kk5Bj58dOftrHR7ytVJS4ejd06wZyFYzcdg3W8tBy A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="344076541"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="344076541"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 13:57:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="515067850"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 21 Mar 2022 13:57:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 21 Mar 2022 13:57:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Mon, 21 Mar 2022 13:57:03 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Mon, 21 Mar 2022 13:57:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 9/9] drm/i915: s/enable/active/ for DRRS
Thread-Index: AQHYOHCbt41s9naWfEeTZwDo1gFYlazBQPAAgAAYlACACXe5AA==
Date: Mon, 21 Mar 2022 20:57:03 +0000
Message-ID: <a16da7d73ef7ddc87aa6cd7cafa4fdd99c10f8f6.camel@intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
 <20220315132752.11849-10-ville.syrjala@linux.intel.com>
 <f83e90ee190e523c6b796b916c91b07b54649b20.camel@intel.com>
 <YjD1vpq7u4yXSopV@intel.com>
In-Reply-To: <YjD1vpq7u4yXSopV@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C7139A631FB0D240B7C5A75A7029D161@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: s/enable/active/ for DRRS
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIyLTAzLTE1IGF0IDIyOjIzICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgTWFyIDE1LCAyMDIyIGF0IDA2OjU0OjIxUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMi0wMy0xNSBhdCAxNToyNyArMDIwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IFJlbmFtZSB0aGUgRFJSUyBmdW5jdGlvc24g
dG8gc2F5ICIoZGUpYWN0aXZhdGUiIHJhdGhlciB0aGFuDQo+ID4gPiAiZW5hYmxlL2Rpc2FibGUi
LiBUaGlzIGxldCdzIHVzIGRpZmZlcmVudGlhdGUgYmV0d2VlbiB0aGUNCj4gPiA+IGxvZ2ljYWxs
eSBlbmFibGVkIHZzLiBhY3R1YWxseSBjdXJyZW50bHkgYWN0aXZlIGNhc2VzLg0KPiA+ID4gDQo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMgIHwgIDQgKystLQ0KPiA+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jICB8IDE1ICsrKysrKysrLS0tLS0NCj4gPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RycnMuYyAgICAgfCAyMiArKysrKysrKysr
LS0tLS0tLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJz
LmggICAgIHwgIDYgKystLS0NCj4gPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMo
KyksIDIwIGRlbGV0aW9ucygtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gaW5kZXggODZmYzhkZGQwYjhmLi45MGQ1
NDI4MTUzNWQgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+IEBAIC0xMjQ2LDcgKzEyNDYsNyBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gPiA+ICAJICAgICFuZWVkc19jdXJzb3JjbGtfd2EobmV3X2NydGNfc3RhdGUpKQ0KPiA+
ID4gIAkJaWNsX3dhX2N1cnNvcmNsa2dhdGluZyhkZXZfcHJpdiwgcGlwZSwgZmFsc2UpOw0KPiA+
ID4gIA0KPiA+ID4gLQlpbnRlbF9kcnJzX2VuYWJsZShuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gPiAr
CWludGVsX2RycnNfYWN0aXZhdGUobmV3X2NydGNfc3RhdGUpOw0KPiA+ID4gIH0NCj4gPiA+ICAN
Cj4gPiA+ICBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2VuYWJsZV9mbGlwX2RvbmUoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gPiBAQCAtMTMyNCw3ICsxMzI0LDcgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gPiA+ICAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUs
IGNydGMpOw0KPiA+ID4gIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+ID4gPiAgDQo+
ID4gPiAtCWludGVsX2RycnNfZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSk7DQo+ID4gPiArCWludGVs
X2RycnNfZGVhY3RpdmF0ZShvbGRfY3J0Y19zdGF0ZSk7DQo+ID4gPiAgDQo+ID4gPiAgCWludGVs
X3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0YXRlLCBjcnRjKTsNCj4gPiA+ICANCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdm
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMu
Yw0KPiA+ID4gaW5kZXggZTBhMTI2ZTdlYmI4Li4xOGI5ODc4OGIyM2UgMTAwNjQ0DQo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5j
DQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
ZGVidWdmcy5jDQo+ID4gPiBAQCAtMTE1OSw2ICsxMTU5LDkgQEAgc3RhdGljIGludCBpOTE1X2Ry
cnNfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQ0KPiA+ID4gIAlzZXFf
cHV0cyhtLCAiXG4iKTsNCj4gPiA+ICANCj4gPiA+ICAJZm9yX2VhY2hfaW50ZWxfY3J0YygmZGV2
X3ByaXYtPmRybSwgY3J0Yykgew0KPiA+ID4gKwkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUgPQ0KPiA+ID4gKwkJCXRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFz
ZS5zdGF0ZSk7DQo+ID4gPiArDQo+ID4gPiAgCQlzZXFfcHJpbnRmKG0sICJbQ1JUQzolZDolc106
XG4iLA0KPiA+ID4gIAkJCSAgIGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lKTsN
Cj4gPiA+ICANCj4gPiA+IEBAIC0xMTY2LDcgKzExNjksMTAgQEAgc3RhdGljIGludCBpOTE1X2Ry
cnNfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQ0KPiA+ID4gIA0KPiA+
ID4gIAkJLyogRFJSUyBTdXBwb3J0ZWQgKi8NCj4gPiA+ICAJCXNlcV9wcmludGYobSwgIlx0RFJS
UyBFbmFibGVkOiAlc1xuIiwNCj4gPiA+IC0JCQkgICBzdHJfeWVzX25vKGludGVsX2RycnNfaXNf
ZW5hYmxlZChjcnRjKSkpOw0KPiA+ID4gKwkJCSAgIHN0cl95ZXNfbm8oY3J0Y19zdGF0ZS0+aGFz
X2RycnMpKTsNCj4gPiA+ICsNCj4gPiA+ICsJCXNlcV9wcmludGYobSwgIlx0RFJSUyBBY3RpdmU6
ICVzXG4iLA0KPiA+ID4gKwkJCSAgIHN0cl95ZXNfbm8oaW50ZWxfZHJyc19pc19hY3RpdmUoY3J0
YykpKTsNCj4gPiANCj4gPiBTbyB0aGVyZSBpcyBubyB3YXkgdG8ga25vdyBpZiB0aGUgd29ya2Vy
IHRocmVhZCBoYXZlIGFjdGl2YXRlZCB0aGUgZG93bmNsb2NrIG1vZGU/DQo+ID4gSSBwcmVmZXIg
dG8gaGF2ZSB0aGUgImFjdGl2YXRlZCIgYXMgbWVhbmluZyB0aGF0IHRoZSBkb3dubG9jayBpcyBp
biB1c2UuDQo+IA0KPiBUaGUgIkRSUlMgcmVmcmVzaCByYXRlIiBwcmludCBzaG93cyBpZiB3ZSdy
ZSBhY3R1YWxseSBydW5uaW5nIGF0DQo+IGhpZ2ggb3IgbG93IHJlZnJlc2ggcmF0ZSByaWdodCBu
b3cuDQo+IA0KDQoNCk9rYXksIHJlYWRpbmcgaXQgYWdhaW4gbWFrZXMgc2Vuc2UgdG8gaGF2ZSAn
ZW5hYmxlZCcgd2hlbiBoYXNfZHJycyBpcyBzZXQgYW5kICdhY3RpdmUnIHdoZW4gZmVhdHVyZSBp
cyBhcm1lZC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPg0KDQo=
