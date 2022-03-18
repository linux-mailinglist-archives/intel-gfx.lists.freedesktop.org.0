Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B1F4DD9B7
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 13:27:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28CA410E145;
	Fri, 18 Mar 2022 12:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3689510E145
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 12:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647606477; x=1679142477;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=9wKmmPvExmmvuF5YSWXgHB3Bu3+zvzMQQo8DxDrEQ7I=;
 b=GYDQ74MJ26adNOoqOYHB3wCx8uyN6HWxco97dAuwn8jrgn2XatBftzDb
 EdXcZcPUR+86PZexuQNjULBnkzA69py1fcTl5D5EPUuM5m77D8KFtWaRB
 OdrJ3WBnoeoqcxoah4qeDOPIZhNwUg6Fmk3ffOOZK4Svnu+uLPDfOn7Ad
 TZ0f8eU5KlGhMO1e0wSrJNNfS2aSoid8PxSiXGh/q+iHaWnaoF0gP+ls+
 5y7DGPUCw/twx8+5pqEnZ+KQJkcX0n+JazEh1bRck5yvM0j5cQVamj2V3
 f3c6UDKZ5zLQzU3WEDo+HAAyrEc4LZwhJNKaLZJVZ2Yx5QA7uYEq8IrRx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343560472"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="343560472"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 05:27:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="635731583"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Mar 2022 05:27:56 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Fri, 18 Mar 2022 12:27:55 +0000
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.021;
 Fri, 18 Mar 2022 05:27:53 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
Thread-Index: AQHYOqVt9C5fyYbzJ0256azdo8/uyazFhaqAgAAB4wA=
Date: Fri, 18 Mar 2022 12:27:53 +0000
Message-ID: <f60950ea65708dc7f093f5939efb164225b186c6.camel@intel.com>
References: <20220318085226.7348-1-stanislav.lisovskiy@intel.com>
 <530cc6962b181ee01e9c00a38190ab27e5940215.camel@intel.com>
In-Reply-To: <530cc6962b181ee01e9c00a38190ab27e5940215.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <F26D00631095A140931C54A370D0FF23@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl_p: Increase CDCLK by 15% if
 PSR2 is used
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

T24gRnJpLCAyMDIyLTAzLTE4IGF0IDA1OjIyIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBPbiBGcmksIDIwMjItMDMtMTggYXQgMTA6NTIgKzAyMDAsIFN0YW5pc2xhdiBM
aXNvdnNraXkgd3JvdGU6DQo+ID4gV2UgYXJlIGN1cnJlbnRseSBnZXR0aW5nIEZJRk8gdW5kZXJy
dW5zLCBpbiBwYXJ0aWN1bGFyDQo+ID4gd2hlbiBQU1IyIGlzIGVuYWJsZWQuIFRoZXJlIHNlZW0g
dG8gYmUgbm8gZXhpc3Rpbmcgd29ya2Fyb3VuZA0KPiA+IG9yIHBhdGNoZXMsIHdoaWNoIGNhbiBm
aXggdGhhdCBpc3N1ZSh3ZXJlIGV4cGVjdGluZyBzb21lIHJlY2VudA0KPiA+IHNlbGVjdGl2ZSBm
ZXRjaCB1cGRhdGUgYW5kIERCdWYgYncvU0FHViBmaXhlcyB0byBoZWxwLA0KPiA+IHdoaWNoIHVu
Zm9ydHVuYXRlbHkgZGlkbid0KS4NCj4gPiBDdXJyZW50IGlkZWEgaXMgdGhhdCBpdCBsb29rcyBs
aWtlIGZvciBzb21lIHJlYXNvbiB0aGUNCj4gPiBEQnVmIHByZWZpbGwgdGltZSBpc24ndCBlbm91
Z2ggb25jZSB3ZSBleGl0IFBTUjIsIGRlc3BpdGUgaXRzDQo+ID4gdGhlb3JldGljYWxseSBjb3Jy
ZWN0Lg0KPiA+IFNvIGJ1bXAgaXQgdXAgYSBiaXQgYnkgMTUlKG1pbmltdW0gZXhwZXJpbWVudGFs
IGFtb3VudCByZXF1aXJlZA0KPiA+IHRvIGdldCBpdCB3b3JraW5nKSwgaWYgUFNSMiBpcyBlbmFi
bGVkLg0KPiA+IEZvciBQU1IxIHRoZXJlIGlzIG5vIG5lZWQgaW4gdGhpcyBoYWNrLCBzbyB3ZSBs
aW1pdCBpdCBvbmx5DQo+ID4gdG8gUFNSMiBhbmQgQWxkZXJsYWtlLg0KPiANCj4gSXQgdGhpcyB3
b3JrYXJvdW5kIG1lYW50IHRvIGJlIHBlcm1hbmVudD8gSWYgeWVzIHdlIHNob3VsZCBmaWxlIGEg
SFNEIGFuZCBnZXQgaGFyZHdhcmUgZm9sa3MgZmVlZGJhY2suDQo+IA0KPiA+IA0KPiA+IFNpZ25l
ZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMgfCAxMyArKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYw0KPiA+IGluZGV4IDg4ODhmZGE4YjcwMS4uMDk1Yjc5OTUwNzg4IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYw0KPiA+IEBAIC0yMzI1
LDYgKzIzMjUsMTkgQEAgaW50IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gIAkJCQkJZGV2X3ByaXYtPm1h
eF9jZGNsa19mcmVxKSk7DQo+ID4gIAl9DQo+ID4gIA0KPiANCj4gUGxlYXNlIGFkZCBzb21lIGNv
bW1lbnQgaW4gdGhlIGNvZGUgYWJvdXQgdGhpcyB3b3JrYXJvdW5kLg0KPiANCj4gDQo+ID4gKwlp
ZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKSB7DQo+ID4gKwkJc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXI7DQo+ID4gKw0KPiA+ICsJCWZvcl9lYWNoX2ludGVsX2VuY29kZXJfd2l0aF9w
c3IoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpIHsNCj4gPiArCQkJc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gPiArDQo+ID4gKwkJCWlmIChp
bnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkgew0KPiANCj4gWW91IHNob3VsZCBjaGVjayB0aGUg
aGFzX3BzcjIgaW4gdGhlIGNydGNfc3RhdGUsIFBTUjIgY291bGQgYmUgZGlzYWJsZWQgd2hlbiB0
aGlzIHN0YXRlIGlzIGNvbW1pdHRlZC4NCg0KQWggYW5kIGlmIGEgcmVtZW1iZXIgY29ycmVjdGx5
IHRob3NlIHVuZGVycnVucyBvbmx5IGhhcHBlbnMgaW4gYSBzY2VuYXJpbyB3aXRoIDQgcGlwZXMg
ZW5hYmxlZD8gb3IgaXQgYWxzbyBoYXBwZW5zIHdpdGggMiBhbmQgMyBwaXBlcz8NCkFueXdheXMg
d291bGQgYmUgYmV0dGVyIHRvIG5hcnJvdyBkb3duIHRoZSBjYXNlcyB3aGVyZSB0aGUgd29ya2Fy
b3VuZCBpcyBhcHBsaWVkLg0KU28gZm9yIGF0IGxlYXN0IGluIGEgY2FzZSB3aXRoIGEgc2luZ2xl
IHBpcGUgZW5hYmxlZCB3ZSBjYW4gaGF2ZSB0aGUgbG93ZXN0IGNkY2xrIGFzIHBvc3NpYmxlLiAN
Cg0KPiANCj4gPiArCQkJCW1pbl9jZGNsayA9IERJVl9ST1VORF9VUChtaW5fY2RjbGsgKiAxMDAs
IDg1KTsNCj4gDQo+IFRoaXMgaXMgbm90IGluY3JlYXNpbmcgYnkgMTUlLg0KPiANCj4gbWluX2Nk
Y2xrID0gNTAwDQo+IDUwMCAqIDEwMCA9IDUwMDAwDQo+IDUwMDAwIC8gODUgPSA1ODguMjM1Mjk0
MTE4DQo+IA0KPiBXaGlsZSAxNSUgb2YgNTAwIGlzIDc1Lg0KPiANCj4gQWxzbyBpZiB0aGVyZSBp
cyB0d28gQ1JUQ3Mgd2l0aCBQU1IyIGVuYWJsZWQgeW91IHdpbGwgYnVtcCBtaW5fY2RjbGsgdHdp
Y2UuDQo+IA0KPiA+ICsJCQkJYnJlYWs7DQo+ID4gKwkJCX0NCj4gPiArCQl9DQo+ID4gKwl9DQo+
ID4gKw0KPiA+ICAJaWYgKG1pbl9jZGNsayA+IGRldl9wcml2LT5tYXhfY2RjbGtfZnJlcSkgew0K
PiA+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiA+ICAJCQkgICAgInJlcXVpcmVk
IGNkY2xrICglZCBrSHopIGV4Y2VlZHMgbWF4ICglZCBrSHopXG4iLA0KPiANCg0K
