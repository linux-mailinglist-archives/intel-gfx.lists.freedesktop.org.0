Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3892DD0F4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Dec 2020 12:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150536E2EF;
	Thu, 17 Dec 2020 11:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81F946E2EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Dec 2020 11:59:15 +0000 (UTC)
IronPort-SDR: sE5h1J1ZE2WHcVDqyDUmPOsJDOuT86Gr+NF6vQwkvz6JeAmW2t04o19Tlb3cDnVHM53yekKo35
 gua0xPNBl6UA==
X-IronPort-AV: E=McAfee;i="6000,8403,9837"; a="175382578"
X-IronPort-AV: E=Sophos;i="5.78,427,1599548400"; d="scan'208";a="175382578"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 03:59:13 -0800
IronPort-SDR: vwq6UK8K/dhBpE3PQHERDi7ROc1ZNJ8rK7WbVJRtHtLNWot/xgbAQUtlUQ8jsve0cUZ1h0jDBf
 5hhZ4F4QH5eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,427,1599548400"; d="scan'208";a="413336472"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 17 Dec 2020 03:59:13 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Dec 2020 03:59:13 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Dec 2020 03:59:12 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Thu, 17 Dec 2020 11:59:11 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v7 2/5] drm/i915/display/psr: Use plane damage clips to
 calculate damaged area
Thread-Index: AQHW09O0c37+ZakSM020EkDx84s/OKn7ME6A
Date: Thu, 17 Dec 2020 11:59:11 +0000
Message-ID: <9958ee0100972bbf27f5fb9cea431f9736700472.camel@intel.com>
References: <20201216174900.185178-1-jose.souza@intel.com>
 <20201216174900.185178-2-jose.souza@intel.com>
In-Reply-To: <20201216174900.185178-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <228CE13A32941F488009A59B96DE484D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 2/5] drm/i915/display/psr: Use plane
 damage clips to calculate damaged area
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

T24gV2VkLCAyMDIwLTEyLTE2IGF0IDA5OjQ4IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBOb3cgdXNpbmcgcGxhbmUgZGFtYWdlIGNsaXBzIHByb3BlcnR5IHRvIGNhbGN1
YWx0ZSB0aGUgZGFtYWdlZCBhcmVhLg0KPiBTZWxlY3RpdmUgZmV0Y2ggb25seSBzdXBwb3J0cyBv
bmUgcmVnaW9uIHRvIGJlIGZldGNoZWQgc28gc29mdHdhcmUNCj4gbmVlZHMgdG8gY2FsY3VsYXRl
IGEgYm91bmRpbmcgYm94IGFyb3VuZCBhbGwgZGFtYWdlIGNsaXBzLg0KPiANCj4gTm93IHRoYXQg
d2UgYXJlIG5vdCBjb21wbGV0ZSBmZXRjaGluZyBlYWNoIHBsYW5lLCB0aGVyZSBpcyBhbm90aGVy
DQo+IGxvb3AgbmVlZGVkIGFzIGFsbCB0aGUgcGxhbmUgYXJlYXMgdGhhdCBpbnRlcnNlY3Qgd2l0
aCB0aGUgcGlwZQ0KPiBkYW1hZ2VkIGFyZWEgbmVlZHMgdG8gYmUgZmV0Y2hlZCBmcm9tIG1lbW9y
eSBzbyB0aGUgY29tcGxldGUgYmxlbmRpbmcNCj4gb2YgYWxsIHBsYW5lcyBjYW4gaGFwcGVuLg0K
PiANCj4gdjI6DQo+IC0gZG8gbm90IHNoaWZ0aGluZyBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0
IG9ubHkgc3JjIGlzIGluIDE2LjE2DQo+IGZvcm1hdA0KPiANCj4gdjQ6DQo+IC0gc2V0dGluZyBw
bGFuZSBzZWxlY3RpdmUgZmV0Y2ggYXJlYSB1c2luZyB0aGUgd2hvbGUgcGlwZSBkYW1hZ2UgYXJl
YQ0KPiAtIG1hcmsgdGhlIHdob2xlIHBsYW5lIGFyZWEgZGFtYWdlZCBpZiBwbGFuZSB2aXNpYmls
aXR5IG9yIGFscGhhDQo+IGNoYW5nZWQNCj4gDQo+IHY1Og0KPiAtIHRha2luZyBpbiBjb25zaWRl
cmF0aW9uIHNyYy55MSBpbiB0aGUgZGFtYWdlIGNvb3JkaW5hdGVzDQo+IC0gYWRkaW5nIHRvIHRo
ZSBwaXBlIGRhbWFnZWQgYXJlYSBwbGFuZXMgdGhhdCB3ZXJlIHZpc2libGUgYnV0IGFyZQ0KPiBp
bnZpc2libGUgaW4gdGhlIG5ldyBzdGF0ZQ0KPiANCj4gdjY6DQo+IC0gY29uc2lkZXIgb2xkIHN0
YXRlIHBsYW5lIGNvb3JkaW5hdGVzIHdoZW4gdmlzaWJpbGl0eSBjaGFuZ2VzIG9yIGl0DQo+IG1v
dmVkIHRvIGNhbGN1bGF0ZSBkYW1hZ2VkIGFyZWENCj4gLSByZW1vdmUgZnJvbSBkYW1hZ2VkIGFy
ZWEgdGhlIHBvcnRpb24gbm90IGluIHNyYyBjbGlwDQo+IA0KPiB2NzoNCj4gLSBpbnRlcnNlYyBl
dmVyeSBkYW1hZ2UgY2xpcCB3aXRoIHNyYyB0byBtaW5pbWl6ZSBkYW1hZ2VkIGFyZWENCj4gDQo+
IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBD
YzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTAxICsr
KysrKysrKysrKysrKysrKysrLQ0KPiAtLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDg5IGluc2VydGlv
bnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGQ5YTM5NWM0ODZkMy4uNGJlZDE4NDIyYzhhIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTEyNjks
OCArMTI2OSw4IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJc3RydWN0IGludGVsX2NydGMgKmNydGMp
DQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiBpbnRl
bF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwlzdHJ1Y3QgZHJt
X3JlY3QgcGlwZV9jbGlwID0geyAueDEgPSAwLCAueTEgPSAtMSwgLngyID0gSU5UX01BWCwNCj4g
LnkyID0gLTEgfTsNCj4gIAlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0
ZSwgKm9sZF9wbGFuZV9zdGF0ZTsNCj4gLQlzdHJ1Y3QgZHJtX3JlY3QgcGlwZV9jbGlwID0geyAu
eTEgPSAtMSB9Ow0KPiAgCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmU7DQo+ICAJYm9vbCBmdWxs
X3VwZGF0ZSA9IGZhbHNlOw0KPiAgCWludCBpLCByZXQ7DQo+IEBAIC0xMjgyLDkgKzEyODIsMTcg
QEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gIAlpZiAocmV0KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiAgDQo+ICsJ
LyoNCj4gKwkgKiBDYWxjdWxhdGUgbWluaW1hbCBzZWxlY3RpdmUgZmV0Y2ggYXJlYSBvZiBlYWNo
IHBsYW5lIGFuZA0KPiBjYWxjdWxhdGUNCj4gKwkgKiB0aGUgcGlwZSBkYW1hZ2VkIGFyZWEuDQo+
ICsJICogSW4gdGhlIG5leHQgbG9vcCB0aGUgcGxhbmUgc2VsZWN0aXZlIGZldGNoIGFyZWEgd2ls
bA0KPiBhY3R1YWxseSBiZSBzZXQNCj4gKwkgKiB1c2luZyB3aG9sZSBwaXBlIGRhbWFnZWQgYXJl
YS4NCj4gKwkgKi8NCj4gIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoc3Rh
dGUsIHBsYW5lLA0KPiBvbGRfcGxhbmVfc3RhdGUsDQo+ICAJCQkJCSAgICAgbmV3X3BsYW5lX3N0
YXRlLCBpKSB7DQo+IC0JCXN0cnVjdCBkcm1fcmVjdCAqc2VsX2ZldGNoX2FyZWEsIHRlbXA7DQo+
ICsJCXN0cnVjdCBkcm1fcmVjdCBzcmMsIGRhbWFnZWRfYXJlYSA9IHsgLnkxID0gLTEgfTsNCj4g
KwkJc3RydWN0IGRybV9tb2RlX3JlY3QgKmRhbWFnZWRfY2xpcHM7DQo+ICsJCXUzMiBudW1fY2xp
cHMsIGo7DQo+ICANCj4gIAkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjICE9IGNydGNf
c3RhdGUtDQo+ID51YXBpLmNydGMpDQo+ICAJCQljb250aW51ZTsNCj4gQEAgLTEzMDAsMjMgKzEz
MDgsOTIgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCWJyZWFrOw0KPiAgCQl9DQo+ICANCj4gLQkJaWYg
KCFuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkNCj4gLQkJCWNvbnRpbnVlOw0KPiArCQlk
cm1fcmVjdF9mcF90b19pbnQoJnNyYywgJm5ld19wbGFuZV9zdGF0ZS0+dWFwaS5zcmMpOw0KPiAr
CQlkYW1hZ2VkX2NsaXBzID0NCj4gZHJtX3BsYW5lX2dldF9kYW1hZ2VfY2xpcHMoJm5ld19wbGFu
ZV9zdGF0ZS0+dWFwaSk7DQo+ICsJCW51bV9jbGlwcyA9DQo+IGRybV9wbGFuZV9nZXRfZGFtYWdl
X2NsaXBzX2NvdW50KCZuZXdfcGxhbmVfc3RhdGUtPnVhcGkpOw0KPiAgDQo+ICAJCS8qDQo+IC0J
CSAqIEZvciBub3cgZG9pbmcgYSBzZWxlY3RpdmUgZmV0Y2ggaW4gdGhlIHdob2xlIHBsYW5lDQo+
IGFyZWEsDQo+IC0JCSAqIG9wdGltaXphdGlvbnMgd2lsbCBjb21lIGluIHRoZSBmdXR1cmUuDQo+
ICsJCSAqIElmIHZpc2liaWxpdHkgb3IgcGxhbmUgbW92ZWQsIG1hcmsgdGhlIHdob2xlIHBsYW5l
DQo+IGFyZWEgYXMNCj4gKwkJICogZGFtYWdlZCBhcyBpdCBuZWVkcyB0byBiZSBjb21wbGV0ZSBy
ZWRyYXcgaW4gdGhlIG5ldw0KPiBhbmQgb2xkDQo+ICsJCSAqIHBvc2l0aW9uLg0KPiAgCQkgKi8N
Cj4gKwkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlICE9IG9sZF9wbGFuZV9zdGF0
ZS0NCj4gPnVhcGkudmlzaWJsZSB8fA0KPiArCQkgICAgIWRybV9yZWN0X2VxdWFscygmbmV3X3Bs
YW5lX3N0YXRlLT51YXBpLmRzdCwNCj4gKwkJCQkgICAgICZvbGRfcGxhbmVfc3RhdGUtPnVhcGku
ZHN0KSkgew0KPiArCQkJZGFtYWdlZF9hcmVhLnkxID0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLnNy
Yy55MQ0KPiA+PiAxNjsNCj4gKwkJCWRhbWFnZWRfYXJlYS55MSA9IG9sZF9wbGFuZV9zdGF0ZS0+
dWFwaS5zcmMueTINCj4gPj4gMTY7DQo+ICsJCQlkYW1hZ2VkX2FyZWEueTEgKz0gb2xkX3BsYW5l
X3N0YXRlLQ0KPiA+dWFwaS5kc3QueTE7DQo+ICsJCQlkYW1hZ2VkX2FyZWEueTIgKz0gb2xkX3Bs
YW5lX3N0YXRlLQ0KPiA+dWFwaS5kc3QueTE7DQo+ICsJCQljbGlwX2FyZWFfdXBkYXRlKCZwaXBl
X2NsaXAsICZkYW1hZ2VkX2FyZWEpOw0KPiArDQpIaSwgSSBjb21tZW50ZWQgaXNzdWVzIG9mIHVz
aW5nIHNyYyBvbiANCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC80MDgw
MzUvP3Nlcmllcz04NDkxMCZyZXY9MQ0KcGxlYXNlIGNoZWNrIGl0Lg0KPiArCQkJbnVtX2NsaXBz
ID0gMDsNCj4gKwkJCWRhbWFnZWRfYXJlYS55MSA9IHNyYy55MTsNCj4gKwkJCWRhbWFnZWRfYXJl
YS55MiA9IHNyYy55MjsNCj4gKwkJfSBlbHNlIGlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuYWxw
aGEgIT0NCj4gb2xkX3BsYW5lX3N0YXRlLT51YXBpLmFscGhhKSB7DQo+ICsJCQludW1fY2xpcHMg
PSAwOw0KPiArCQkJZGFtYWdlZF9hcmVhLnkxID0gc3JjLnkxOw0KPiArCQkJZGFtYWdlZF9hcmVh
LnkyID0gc3JjLnkyOw0KPiArCQl9IGVsc2UgaWYgKCFudW1fY2xpcHMgJiYNCj4gKwkJCSAgIG5l
d19wbGFuZV9zdGF0ZS0+dWFwaS5mYiAhPSBvbGRfcGxhbmVfc3RhdGUtDQo+ID51YXBpLmZiKSB7
DQo+ICsJCQkvKg0KPiArCQkJICogSWYgdGhlIHBsYW5lIGRvbid0IGhhdmUgZGFtYWdlIGFyZWFz
IGJ1dCB0aGUNCj4gKwkJCSAqIGZyYW1lYnVmZmVyIGNoYW5nZWQsIG1hcmsgdGhlIHdob2xlIHBs
YW5lDQo+IGFyZWEgYXMNCj4gKwkJCSAqIGRhbWFnZWQuDQo+ICsJCQkgKi8NCj4gKwkJCWRhbWFn
ZWRfYXJlYS55MSA9IHNyYy55MTsNCj4gKwkJCWRhbWFnZWRfYXJlYS55MiA9IHNyYy55MjsNCj4g
KwkJfQ0KPiArDQo+ICsJCWZvciAoaiA9IDA7IGogPCBudW1fY2xpcHM7IGorKykgew0KPiArCQkJ
c3RydWN0IGRybV9yZWN0IGNsaXA7DQo+ICsNCj4gKwkJCWNsaXAueDEgPSBkYW1hZ2VkX2NsaXBz
W2pdLngxOw0KPiArCQkJY2xpcC55MSA9IGRhbWFnZWRfY2xpcHNbal0ueTE7DQo+ICsJCQljbGlw
LngyID0gZGFtYWdlZF9jbGlwc1tqXS54MjsNCj4gKwkJCWNsaXAueTIgPSBkYW1hZ2VkX2NsaXBz
W2pdLnkyOw0KPiArCQkJaWYgKGRybV9yZWN0X2ludGVyc2VjdCgmY2xpcCwgJnNyYykpDQo+ICsJ
CQkJY2xpcF9hcmVhX3VwZGF0ZSgmZGFtYWdlZF9hcmVhLCAmY2xpcCk7DQo+ICsJCX0NCj4gKw0K
PiArCQlpZiAoZGFtYWdlZF9hcmVhLnkxID09IC0xKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4g
KwkJZGFtYWdlZF9hcmVhLnkxICs9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQo+ICsJ
CWRhbWFnZWRfYXJlYS55MiArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0KPiArCQlj
bGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2FyZWEpOw0KPiArCX0NCj4gKw0K
PiArCWlmIChmdWxsX3VwZGF0ZSkNCj4gKwkJZ290byBza2lwX3NlbF9mZXRjaF9zZXRfbG9vcDsN
Cj4gKw0KPiArCS8qDQo+ICsJICogTm93IHRoYXQgd2UgaGF2ZSB0aGUgcGlwZSBkYW1hZ2VkIGFy
ZWEgY2hlY2sgaWYgaXQgaW50ZXJzZWN0DQo+IHdpdGgNCj4gKwkgKiBldmVyeSBwbGFuZSwgaWYg
aXQgZG9lcyBzZXQgdGhlIHBsYW5lIHNlbGVjdGl2ZSBmZXRjaCBhcmVhLg0KPiArCSAqLw0KPiAr
CWZvcl9lYWNoX29sZG5ld19pbnRlbF9wbGFuZV9pbl9zdGF0ZShzdGF0ZSwgcGxhbmUsDQo+IG9s
ZF9wbGFuZV9zdGF0ZSwNCj4gKwkJCQkJICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsNCj4gKwkJ
c3RydWN0IGRybV9yZWN0ICpzZWxfZmV0Y2hfYXJlYSwgaW50ZXIsIHNyYzsNCj4gKw0KPiArCQlp
ZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLmNydGMgIT0gY3J0Y19zdGF0ZS0+dWFwaS5jcnRjIA0K
PiB8fA0KPiArCQkgICAgIW5ld19wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKQ0KPiArCQkJY29u
dGludWU7DQo+ICsNCj4gKwkJaW50ZXIgPSBwaXBlX2NsaXA7DQo+ICsJCWlmICghZHJtX3JlY3Rf
aW50ZXJzZWN0KCZpbnRlciwgJm5ld19wbGFuZV9zdGF0ZS0NCj4gPnVhcGkuZHN0KSkNCj4gKwkJ
CWNvbnRpbnVlOw0KPiArDQo+ICsJCWRybV9yZWN0X2ZwX3RvX2ludCgmc3JjLCAmbmV3X3BsYW5l
X3N0YXRlLT51YXBpLnNyYyk7DQo+ICsNCj4gIAkJc2VsX2ZldGNoX2FyZWEgPSAmbmV3X3BsYW5l
X3N0YXRlLT5wc3IyX3NlbF9mZXRjaF9hcmVhOw0KPiAtCQlzZWxfZmV0Y2hfYXJlYS0+eTEgPSBu
ZXdfcGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkxID4+DQo+IDE2Ow0KPiAtCQlzZWxfZmV0Y2hfYXJl
YS0+eTIgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkyID4+DQo+IDE2Ow0KPiArCQlzZWxf
ZmV0Y2hfYXJlYS0+eTEgPSBpbnRlci55MSAtIG5ld19wbGFuZV9zdGF0ZS0NCj4gPnVhcGkuZHN0
LnkxOw0KPiArCQlzZWxfZmV0Y2hfYXJlYS0+eTIgPSBpbnRlci55MiAtIG5ld19wbGFuZV9zdGF0
ZS0NCj4gPnVhcGkuZHN0LnkxOw0KPiArCQlzZWxfZmV0Y2hfYXJlYS0+eDEgPSBzcmMueDE7DQo+
ICsJCXNlbF9mZXRjaF9hcmVhLT54MiA9IHNyYy54MjsNCj4gIA0KPiAtCQl0ZW1wID0gKnNlbF9m
ZXRjaF9hcmVhOw0KPiAtCQl0ZW1wLnkxICs9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7
DQo+IC0JCXRlbXAueTIgKz0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MjsNCj4gLQkJY2xp
cF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmdGVtcCk7DQo+ICsJCWRybV9yZWN0X2ludGVyc2Vj
dChzZWxfZmV0Y2hfYXJlYSwgJnNyYyk7DQo+ICAJfQ0KPiAgDQo+ICtza2lwX3NlbF9mZXRjaF9z
ZXRfbG9vcDoNCj4gIAlwc3IyX21hbl90cmtfY3RsX2NhbGMoY3J0Y19zdGF0ZSwgJnBpcGVfY2xp
cCwgZnVsbF91cGRhdGUpOw0KPiAgCXJldHVybiAwOw0KPiAgfQ0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
