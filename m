Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FE92DADA1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 14:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C006E321;
	Tue, 15 Dec 2020 13:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F319D6E1A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 13:02:24 +0000 (UTC)
IronPort-SDR: bOF15wWnU8Pa24d3DSUlXvCOJYoYwmfPTVhRoOskwGxRdTgLKkyXx21kdYchXcT63EuXkVHFZD
 PVSG3E0HJyOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="154678448"
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="154678448"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 05:02:24 -0800
IronPort-SDR: 1QTJowsIoNcaMk40DFSHq2FjwVyRI9JGSVwu7yrlv15TUTRXnMUqIFQam1jxrs8LuhGr0hFJ+2
 3Uktu2sZXqWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; d="scan'208";a="337015590"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 15 Dec 2020 05:02:24 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 05:02:23 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 05:02:23 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Tue, 15 Dec 2020 13:02:21 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v6 2/5] drm/i915/display/psr: Use plane damage clips to
 calculate damaged area
Thread-Index: AQHW0kFnG9xaBSlIR0azx/tb/87zUqn4IHAA
Date: Tue, 15 Dec 2020 13:02:21 +0000
Message-ID: <57d6f185c5b9fbd63f38e3339d1df4f0b1d4a70c.camel@intel.com>
References: <20201214174912.174065-1-jose.souza@intel.com>
 <20201214174912.174065-2-jose.souza@intel.com>
In-Reply-To: <20201214174912.174065-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <9F870CCED362D44FA7E50C17CE1B092D@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 2/5] drm/i915/display/psr: Use plane
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

T24gTW9uLCAyMDIwLTEyLTE0IGF0IDA5OjQ5IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBOb3cgdXNpbmcgcGxhbmUgZGFtYWdlIGNsaXBzIHByb3BlcnR5IHRvIGNhbGN1
YWx0ZSB0aGUgZGFtYWdlZCBhcmVhLg0KPiBTZWxlY3RpdmUgZmV0Y2ggb25seSBzdXBwb3J0cyBv
bmUgcmVnaW9uIHRvIGJlIGZldGNoZWQgc28gc29mdHdhcmUNCj4gbmVlZHMgdG8gY2FsY3VsYXRl
IGEgYm91bmRpbmcgYm94IGFyb3VuZCBhbGwgZGFtYWdlIGNsaXBzLg0KPiANCj4gTm93IHRoYXQg
d2UgYXJlIG5vdCBjb21wbGV0ZSBmZXRjaGluZyBlYWNoIHBsYW5lLCB0aGVyZSBpcyBhbm90aGVy
DQo+IGxvb3AgbmVlZGVkIGFzIGFsbCB0aGUgcGxhbmUgYXJlYXMgdGhhdCBpbnRlcnNlY3Qgd2l0
aCB0aGUgcGlwZQ0KPiBkYW1hZ2VkIGFyZWEgbmVlZHMgdG8gYmUgZmV0Y2hlZCBmcm9tIG1lbW9y
eSBzbyB0aGUgY29tcGxldGUgYmxlbmRpbmcNCj4gb2YgYWxsIHBsYW5lcyBjYW4gaGFwcGVuLg0K
PiANCkhpLA0KPiB2MjoNCj4gLSBkbyBub3Qgc2hpZnRoaW5nIG5ld19wbGFuZV9zdGF0ZS0+dWFw
aS5kc3Qgb25seSBzcmMgaXMgaW4gMTYuMTYgDQpUeXBvIG9uIGNvbW1pdCBtZXNzYWdlLiBzaGlm
dGhpbmcgLT4gc2hpZnRpbmcNCj4gZm9ybWF0DQo+IA0KPiB2NDoNCj4gLSBzZXR0aW5nIHBsYW5l
IHNlbGVjdGl2ZSBmZXRjaCBhcmVhIHVzaW5nIHRoZSB3aG9sZSBwaXBlIGRhbWFnZSBhcmVhDQo+
IC0gbWFyayB0aGUgd2hvbGUgcGxhbmUgYXJlYSBkYW1hZ2VkIGlmIHBsYW5lIHZpc2liaWxpdHkg
b3IgYWxwaGENCj4gY2hhbmdlZA0KPiANCj4gdjU6DQo+IC0gdGFraW5nIGluIGNvbnNpZGVyYXRp
b24gc3JjLnkxIGluIHRoZSBkYW1hZ2UgY29vcmRpbmF0ZXMNCj4gLSBhZGRpbmcgdG8gdGhlIHBp
cGUgZGFtYWdlZCBhcmVhIHBsYW5lcyB0aGF0IHdlcmUgdmlzaWJsZSBidXQgYXJlDQo+IGludmlz
aWJsZSBpbiB0aGUgbmV3IHN0YXRlDQo+IA0KPiB2NjoNCj4gLSBjb25zaWRlciBvbGQgc3RhdGUg
cGxhbmUgY29vcmRpbmF0ZXMgd2hlbiB2aXNpYmlsaXR5IGNoYW5nZXMgb3IgaXQNCj4gbW92ZWQg
dG8gY2FsY3VsYXRlIGRhbWFnZWQgYXJlYQ0KPiAtIHJlbW92ZSBmcm9tIGRhbWFnZWQgYXJlYSB0
aGUgcG9ydGlvbiBub3QgaW4gc3JjIGNsaXANCj4gDQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2Fu
LWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgOTggKysrKysrKysrKysrKysrKysrKysrLQ0KPiAt
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDg2IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4
IGQ5YTM5NWM0ODZkMy4uN2RhZWQwOThmYTc0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTEyNjksOCArMTI2OSw4IEBAIGludCBpbnRlbF9w
c3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJCQkJc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICB7DQo+ICAJc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0
YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwlzdHJ1Y3QgZHJtX3JlY3QgcGlwZV9jbGlwID0geyAueDEg
PSAwLCAueTEgPSAtMSwgLngyID0gSU5UX01BWCwNCj4gLnkyID0gLTEgfTsNCj4gIAlzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZSwgKm9sZF9wbGFuZV9zdGF0ZTsNCj4g
LQlzdHJ1Y3QgZHJtX3JlY3QgcGlwZV9jbGlwID0geyAueTEgPSAtMSB9Ow0KPiAgCXN0cnVjdCBp
bnRlbF9wbGFuZSAqcGxhbmU7DQo+ICAJYm9vbCBmdWxsX3VwZGF0ZSA9IGZhbHNlOw0KPiAgCWlu
dCBpLCByZXQ7DQo+IEBAIC0xMjgyLDkgKzEyODIsMTcgQEAgaW50IGludGVsX3BzcjJfc2VsX2Zl
dGNoX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlpZiAo
cmV0KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiAgDQo+ICsJLyoNCj4gKwkgKiBDYWxjdWxhdGUgbWlu
aW1hbCBzZWxlY3RpdmUgZmV0Y2ggYXJlYSBvZiBlYWNoIHBsYW5lIGFuZA0KPiBjYWxjdWxhdGUN
Cj4gKwkgKiB0aGUgcGlwZSBkYW1hZ2VkIGFyZWEuDQo+ICsJICogSW4gdGhlIG5leHQgbG9vcCB0
aGUgcGxhbmUgc2VsZWN0aXZlIGZldGNoIGFyZWEgd2lsbA0KPiBhY3R1YWxseSBiZSBzZXQNCj4g
KwkgKiB1c2luZyB3aG9sZSBwaXBlIGRhbWFnZWQgYXJlYS4NCj4gKwkgKi8NCj4gIAlmb3JfZWFj
aF9vbGRuZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoc3RhdGUsIHBsYW5lLA0KPiBvbGRfcGxhbmVf
c3RhdGUsDQo+ICAJCQkJCSAgICAgbmV3X3BsYW5lX3N0YXRlLCBpKSB7DQo+IC0JCXN0cnVjdCBk
cm1fcmVjdCAqc2VsX2ZldGNoX2FyZWEsIHRlbXA7DQo+ICsJCXN0cnVjdCBkcm1fcmVjdCBzcmMs
IGRhbWFnZWRfYXJlYSA9IHsgLngxID0gMCwgLnkxID0NCj4gLTEsIC54MiA9IElOVF9NQVgsIC55
MiA9IC0xIH07DQo+ICsJCXN0cnVjdCBkcm1fbW9kZV9yZWN0ICpkYW1hZ2VkX2NsaXBzOw0KPiAr
CQl1MzIgbnVtX2NsaXBzLCBqOw0KPiAgDQo+ICAJCWlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGku
Y3J0YyAhPSBjcnRjX3N0YXRlLQ0KPiA+dWFwaS5jcnRjKQ0KPiAgCQkJY29udGludWU7DQo+IEBA
IC0xMzAwLDIzICsxMzA4LDg5IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQlicmVhazsNCj4gIAkJfQ0K
PiAgDQo+IC0JCWlmICghbmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpDQo+IC0JCQljb250
aW51ZTsNCj4gKwkJZHJtX3JlY3RfY29udmVydF8xNl8xNl90b19yZWd1bGFyKCZuZXdfcGxhbmVf
c3RhdGUtDQo+ID51YXBpLnNyYywgJnNyYyk7DQo+ICsJCWRhbWFnZWRfY2xpcHMgPQ0KPiBkcm1f
cGxhbmVfZ2V0X2RhbWFnZV9jbGlwcygmbmV3X3BsYW5lX3N0YXRlLT51YXBpKTsNCj4gKwkJbnVt
X2NsaXBzID0NCj4gZHJtX3BsYW5lX2dldF9kYW1hZ2VfY2xpcHNfY291bnQoJm5ld19wbGFuZV9z
dGF0ZS0+dWFwaSk7DQo+ICANCj4gIAkJLyoNCj4gLQkJICogRm9yIG5vdyBkb2luZyBhIHNlbGVj
dGl2ZSBmZXRjaCBpbiB0aGUgd2hvbGUgcGxhbmUNCj4gYXJlYSwNCj4gLQkJICogb3B0aW1pemF0
aW9ucyB3aWxsIGNvbWUgaW4gdGhlIGZ1dHVyZS4NCj4gKwkJICogSWYgdmlzaWJpbGl0eSBvciBw
bGFuZSBtb3ZlZCwgbWFyayB0aGUgd2hvbGUgcGxhbmUNCj4gYXJlYSBhcw0KPiArCQkgKiBkYW1h
Z2VkIGFzIGl0IG5lZWRzIHRvIGJlIGNvbXBsZXRlIHJlZHJhdyBpbiB0aGUgbmV3DQo+IGFuZCBv
bGQNCj4gKwkJICogcG9zaXRpb24uDQo+ICAJCSAqLw0KPiArCQlpZiAobmV3X3BsYW5lX3N0YXRl
LT51YXBpLnZpc2libGUgIT0gb2xkX3BsYW5lX3N0YXRlLQ0KPiA+dWFwaS52aXNpYmxlIHx8DQo+
ICsJCSAgICAhZHJtX3JlY3RfZXF1YWxzKCZuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LA0KPiAr
CQkJCSAgICAgJm9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5kc3QpKSB7DQo+ICsJCQlkYW1hZ2VkX2Fy
ZWEueTEgPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkxDQo+ID4+IDE2Ow0KPiArCQkJZGFt
YWdlZF9hcmVhLnkxID0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLnNyYy55Mg0KPiA+PiAxNjsNCj4g
KwkJCWRhbWFnZWRfYXJlYS55MSArPSBvbGRfcGxhbmVfc3RhdGUtDQo+ID51YXBpLmRzdC55MTsN
Cj4gKwkJCWRhbWFnZWRfYXJlYS55MiArPSBvbGRfcGxhbmVfc3RhdGUtDQo+ID51YXBpLmRzdC55
MTsNCj4gKwkJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQo+
ICsNCj4gKwkJCW51bV9jbGlwcyA9IDA7DQo+ICsJCQlkYW1hZ2VkX2FyZWEueTEgPSBzcmMueTE7
DQo+ICsJCQlkYW1hZ2VkX2FyZWEueTIgPSBzcmMueTI7DQoxLiBWaXNpYmlsaXR5IGNoYW5nZSBj
YXNlDQogVGhlIHBpcGUgZGFtYWdlZCBhcmVhIChUaGUgU2VsZWN0aXZlIFVwZGF0ZSByZWdpb24p
IG5lZWRzIHRvDQphY2N1bXVsYXRlIGJlaW5nIHZpc2libGUgcGxhbmUncyBkc3QgYmV0d2VlbiBv
bGQgYW5kIG5ldyBwbGFuZSdzIGRzdC4NCg0KaWYgeW91IGFyZSBpbXBsZW1lbnRpbmcgdGhpcyBz
Y2VuYXJpbywgdGhlIGNvZGUgc2hvdWxlIGJlIGxpa2UgdGhpcywNCg0KaWYgKG5ld19wbGFuZV9z
dGF0ZS0+dWFwaS52aXNpYmxlICE9IG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlKSB7DQog
ICBpZiAobmV3X3BsYW5lX3N0YXRlLT51YXBpLnZpc2libGUpIHsNCiAgICAgIGRhbWFnZWRfYXJl
YS55MSA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQogICAgICBkYW1hZ2VkX2FyZWEu
eTIgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkyOw0KICAgfSBlbHNlIHsNCiAgICAgIGRh
bWFnZWRfYXJlYS55MSA9IG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQogICAgICBkYW1h
Z2VkX2FyZWEueTIgPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkyOw0KICAgfQ0KICAgY2xp
cF9hcmVhX3VwZGF0ZSgmcGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsNCiAgIGNvbnRpbnVlOw0K
fQ0KDQoyLiBNb3ZlIGNhc2UNCiBUaGUgcGlwZSBkYW1hZ2VkIGFyZWEgKFRoZSBTZWxlY3RpdmUg
VXBkYXRlIHJlZ2lvbikgbmVlZHMgdG8NCmFjY3VtdWxhdGUgYm90aCBvbGQgYW5kIG5ldyBwbGFu
ZSdzIGRzdA0KDQppZiB5b3UgYXJlIGltcGxlbWVudGluZyB0aGlzIHNjZW5hcmlvLCB0aGUgY29k
ZSBzaG91bGUgYmUgbGlrZSB0aGlzLA0KDQplbHNlIGlmICghZHJtX3JlY3RfZXF1YWxzKCZuZXdf
cGxhbmVfc3RhdGUtPnVhcGkuZHN0LCAmb2xkX3BsYW5lX3N0YXRlLQ0KPnVhcGkuZHN0KSkgew0K
ICAgZGFtYWdlZF9hcmVhLnkxID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCiAgIGRh
bWFnZWRfYXJlYS55MiA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTI7DQogICBjbGlwX2Fy
ZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZkYW1hZ2VkX2FyZWEpOw0KDQogICBkYW1hZ2VkX2FyZWEu
eTEgPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0KICAgZGFtYWdlZF9hcmVhLnkyID0g
b2xkX3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MjsNCiAgIGNsaXBfYXJlYV91cGRhdGUoJnBpcGVf
Y2xpcCwgJmRhbWFnZWRfYXJlYSk7DQogICANCiAgIGNvbnRpbnVlOw0KfQ0KPiArCQl9IGVsc2Ug
aWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5hbHBoYSAhPQ0KPiBvbGRfcGxhbmVfc3RhdGUtPnVh
cGkuYWxwaGEpIHsNCj4gKwkJCW51bV9jbGlwcyA9IDA7DQo+ICsJCQlkYW1hZ2VkX2FyZWEueTEg
PSBzcmMueTE7DQo+ICsJCQlkYW1hZ2VkX2FyZWEueTIgPSBzcmMueTI7DQozLiBhbHBoYSBoYXMg
Y2hhbmdlZCAoIGJlY2F1c2UgYWxwaGEgaGFuZGxpbmcgc2VjdGlvbiBpcyBub3Qgb3B0aW1pemVk
LA0KaXQgY2FuIGJlIHRyZWF0ZWQgd2l0aCB0aGUgbW92ZSBzZWN0aW9uKQ0KDQplbHNlIGlmIChu
ZXdfcGxhbmVfc3RhdGUtPnVhcGkuYWxwaGEgIT0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLmFscGhh
KSB7DQogICBkYW1hZ2VkX2FyZWEueTEgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0K
ICAgZGFtYWdlZF9hcmVhLnkyID0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MjsNCiAgIGNs
aXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQoNCiAgIGRhbWFnZWRf
YXJlYS55MSA9IG9sZF9wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQogICBkYW1hZ2VkX2FyZWEu
eTIgPSBvbGRfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkyOw0KICAgY2xpcF9hcmVhX3VwZGF0ZSgm
cGlwZV9jbGlwLCAmZGFtYWdlZF9hcmVhKTsNCiAgIA0KICAgY29udGludWU7DQp9IA0KPiArCQl9
IGVsc2UgaWYgKCFudW1fY2xpcHMgJiYNCj4gKwkJCSAgIG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5m
YiAhPSBvbGRfcGxhbmVfc3RhdGUtDQo+ID51YXBpLmZiKSB7DQo+ICsJCQkvKg0KPiArCQkJICog
SWYgdGhlIHBsYW5lIGRvbid0IGhhdmUgZGFtYWdlIGFyZWFzIGJ1dCB0aGUNCj4gKwkJCSAqIGZy
YW1lYnVmZmVyIGNoYW5nZWQsIG1hcmsgdGhlIHdob2xlIHBsYW5lDQo+IGFyZWEgYXMNCj4gKwkJ
CSAqIGRhbWFnZWQuDQo+ICsJCQkgKi8NCj4gKwkJCWRhbWFnZWRfYXJlYS55MSA9IHNyYy55MTsN
Cj4gKwkJCWRhbWFnZWRfYXJlYS55MiA9IHNyYy55MjsNCj4gKwkJfQ0KPiArDQplbHNlIGlmICgh
bnVtX2NsaXBzICYmIG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5mYiAhPSBvbGRfcGxhbmVfc3RhdGUt
DQo+dWFwaS5mYikgew0KICAgLyoNCiAgICAqIElmIHRoZSBwbGFuZSBkb24ndCBoYXZlIGRhbWFn
ZSBhcmVhcyBidXQgdGhlDQogICAgKiBmcmFtZWJ1ZmZlciBjaGFuZ2VkLCBtYXJrIHRoZSB3aG9s
ZSBwbGFuZSBhcmVhIGFzDQogICAgKiBkYW1hZ2VkLg0KICAgICovDQogICBkYW1hZ2VkX2FyZWEu
eTEgPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0KICAgZGFtYWdlZF9hcmVhLnkyID0g
bmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MjsNCiAgIGNsaXBfYXJlYV91cGRhdGUoJnBpcGVf
Y2xpcCwgJmRhbWFnZWRfYXJlYSk7DQogICBjb250aW51ZTsNCn0NCj4gKwkJZm9yIChqID0gMDsg
aiA8IG51bV9jbGlwczsgaisrKSB7DQo+ICsJCQlzdHJ1Y3QgZHJtX3JlY3QgY2xpcDsNCj4gKw0K
PiArCQkJY2xpcC55MSA9IGRhbWFnZWRfY2xpcHNbal0ueTE7DQo+ICsJCQljbGlwLnkyID0gZGFt
YWdlZF9jbGlwc1tqXS55MjsNCj4gKwkJCWNsaXBfYXJlYV91cGRhdGUoJmRhbWFnZWRfYXJlYSwg
JmNsaXApOw0KPiArCQl9DQo+ICsNCj4gKwkJaWYgKCFkcm1fcmVjdF9pbnRlcnNlY3QoJmRhbWFn
ZWRfYXJlYSwgJnNyYykpDQo+ICsJCQljb250aW51ZTsNCj4gKw0KPiArCQlkYW1hZ2VkX2FyZWEu
eTEgKz0gbmV3X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCj4gKwkJZGFtYWdlZF9hcmVhLnky
ICs9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QueTE7DQo+ICsJCWNsaXBfYXJlYV91cGRhdGUo
JnBpcGVfY2xpcCwgJmRhbWFnZWRfYXJlYSk7DQo+ICsJfQ0KPiArDQplbHNlIGlmIChudW1fY2xp
cHMpIHsNCiAgIHN0cnVjdCBkcm1fcmVjdCBwbGFuZV9kYW1hZ2VkX2FyZWE7DQogICBwbGFuZV9k
YW1hZ2VkX2FyZWEueDEgPSBzcmMueDE7DQogICBwbGFuZV9kYW1hZ2VkX2FyZWEueDIgPSBzcmMu
eDI7DQogICBwbGFuZV9kYW1hZ2VkX2FyZWEueTEgPSAwOw0KICAgcGxhbmVfZGFtYWdlZF9hcmVh
LnkyID0gMDsNCgkgICAgICAgIA0KICAgZm9yIChqID0gMDsgaiA8IG51bV9jbGlwczsgaisrKSB7
DQogICAgICBzdHJ1Y3QgZHJtX3JlY3QgY2xpcDsNCg0KICAgICAgY2xpcC54MSA9IGRhbWFnZWRf
Y2xpcHNbal0ueDE7DQogICAgICBjbGlwLngyID0gZGFtYWdlZF9jbGlwc1tqXS54MjsNCiAgICAg
IGNsaXAueTEgPSBkYW1hZ2VkX2NsaXBzW2pdLnkxOw0KICAgICAgY2xpcC55MiA9IGRhbWFnZWRf
Y2xpcHNbal0ueTI7DQoNCiAgICAgIGlmIChkcm1fcmVjdF9pbnRlcnNlY3QoJmNsaXAsICZzcmMp
KSB7DQogICAgICAgICBjbGlwX2FyZWFfdXBkYXRlKCZwbGFuZV9kYW1hZ2VkX2FyZWEsICZjbGlw
KTsNCiAgICAgIH0NCiAgIH0NCg0KICBpZiAoZHJtX3JlY3RfdmlzaWJsZShwbGFuZV9kYW1hZ2Vk
X2FyZWEpKSB7DQogICAgIHBsYW5lX2RhbWFnZWRfYXJlYS55MSA9IHBsYW5lX2RhbWFnZWRfYXJl
YS55MSAtIHNyYy55MSArDQpuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkxOw0KICAgICBwbGFu
ZV9kYW1hZ2VkX2FyZWEueTIgPSBwbGFuZV9kYW1hZ2VkX2FyZWEueTIgLSBzcmMueTEgKw0KbmV3
X3BsYW5lX3N0YXRlLT51YXBpLmRzdC55MTsNCg0KICAgICBjbGlwX2FyZWFfdXBkYXRlKCZwaXBl
X2NsaXAsICZwbGFuZV9kYW1hZ2VkX2FyZWEpOw0KICAgICBjb250aW51ZTsNCiAgfQ0KfQ0KdGhl
IGNhbGN1bGF0aW9uIGFuZCB0cmFuc2xhdGluZyBjb29yaWRpbmF0ZXMgaXMgYWxyZWF5IGltcGxl
bWVudGVkIGhlcmUNCiggaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzQw
NDI2NC8/c2VyaWVzPTg0MzQwJnJldj0xDQogIGl0IGhhcyBjb21tZXRucyB3aGljaCBleHBsYWlu
cyBzY2VuYXJpb3MuKSANCj4gKwlpZiAoZnVsbF91cGRhdGUpDQo+ICsJCWdvdG8gc2tpcF9zZWxf
ZmV0Y2hfc2V0X2xvb3A7DQo+ICsNCj4gKwkvKg0KPiArCSAqIE5vdyB0aGF0IHdlIGhhdmUgdGhl
IHBpcGUgZGFtYWdlZCBhcmVhIGNoZWNrIGlmIGl0IGludGVyc2VjdA0KPiB3aXRoDQo+ICsJICog
ZXZlcnkgcGxhbmUsIGlmIGl0IGRvZXMgc2V0IHRoZSBwbGFuZSBzZWxlY3RpdmUgZmV0Y2ggYXJl
YS4NCj4gKwkgKi8NCj4gKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoc3Rh
dGUsIHBsYW5lLA0KPiBvbGRfcGxhbmVfc3RhdGUsDQo+ICsJCQkJCSAgICAgbmV3X3BsYW5lX3N0
YXRlLCBpKSB7DQo+ICsJCXN0cnVjdCBkcm1fcmVjdCAqc2VsX2ZldGNoX2FyZWEsIGludGVyLCBz
cmM7DQo+ICsNCj4gKwkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5jcnRjICE9IGNydGNfc3Rh
dGUtPnVhcGkuY3J0YyANCj4gfHwNCj4gKwkJICAgICFuZXdfcGxhbmVfc3RhdGUtPnVhcGkudmlz
aWJsZSkNCj4gKwkJCWNvbnRpbnVlOw0KPiArDQo+ICsJCWludGVyID0gcGlwZV9jbGlwOw0KPiAr
CQlpZiAoIWRybV9yZWN0X2ludGVyc2VjdCgmaW50ZXIsICZuZXdfcGxhbmVfc3RhdGUtDQo+ID51
YXBpLmRzdCkpDQo+ICsJCQljb250aW51ZTsNCj4gKw0KPiArCQlkcm1fcmVjdF9jb252ZXJ0XzE2
XzE2X3RvX3JlZ3VsYXIoJm5ld19wbGFuZV9zdGF0ZS0NCj4gPnVhcGkuc3JjLCAmc3JjKTsNCj4g
Kw0KPiAgCQlzZWxfZmV0Y2hfYXJlYSA9ICZuZXdfcGxhbmVfc3RhdGUtPnBzcjJfc2VsX2ZldGNo
X2FyZWE7DQo+IC0JCXNlbF9mZXRjaF9hcmVhLT55MSA9IG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5z
cmMueTEgPj4NCj4gMTY7DQo+IC0JCXNlbF9mZXRjaF9hcmVhLT55MiA9IG5ld19wbGFuZV9zdGF0
ZS0+dWFwaS5zcmMueTIgPj4NCj4gMTY7DQo+ICsJCXNlbF9mZXRjaF9hcmVhLT55MSA9IGludGVy
LnkxIC0gbmV3X3BsYW5lX3N0YXRlLQ0KPiA+dWFwaS5kc3QueTE7DQo+ICsJCXNlbF9mZXRjaF9h
cmVhLT55MiA9IGludGVyLnkyIC0gbmV3X3BsYW5lX3N0YXRlLQ0KPiA+dWFwaS5kc3QueTE7DQpz
ZWxfZmV0Y2hfYXJlYS0+eTEgPSBpbnRlci55MSAtIG5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3Qu
eTEgKyBzcmMueTE7DQpzZWxfZmV0Y2hfYXJlYS0+eTIgPSBpbnRlci55MiAtIG5ld19wbGFuZV9z
dGF0ZS0+dWFwaS5kc3QueTEgKyBzcmMueTE7DQo+ICsJCXNlbF9mZXRjaF9hcmVhLT54MSA9IHNy
Yy54MTsNCj4gKwkJc2VsX2ZldGNoX2FyZWEtPngyID0gc3JjLngyOw0KPiAgDQo+IC0JCXRlbXAg
PSAqc2VsX2ZldGNoX2FyZWE7DQo+IC0JCXRlbXAueTEgKz0gbmV3X3BsYW5lX3N0YXRlLT51YXBp
LmRzdC55MTsNCj4gLQkJdGVtcC55MiArPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZHN0LnkyOw0K
PiAtCQljbGlwX2FyZWFfdXBkYXRlKCZwaXBlX2NsaXAsICZ0ZW1wKTsNCj4gKwkJZHJtX3JlY3Rf
aW50ZXJzZWN0KHNlbF9mZXRjaF9hcmVhLCAmc3JjKTsNCndoeSB0aGlzIGxpbmUgaXMgbmVlZGVk
Pw0KPiAgCX0NCj4gIA0KPiArc2tpcF9zZWxfZmV0Y2hfc2V0X2xvb3A6DQo+ICAJcHNyMl9tYW5f
dHJrX2N0bF9jYWxjKGNydGNfc3RhdGUsICZwaXBlX2NsaXAsIGZ1bGxfdXBkYXRlKTsNCj4gIAly
ZXR1cm4gMDsNCj4gIH0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
