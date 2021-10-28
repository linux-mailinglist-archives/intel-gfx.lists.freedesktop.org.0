Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B1243E6C1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 19:02:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B1896E062;
	Thu, 28 Oct 2021 17:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB71A6E062
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 17:02:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="230725322"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="230725322"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:02:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="498487487"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga008.jf.intel.com with ESMTP; 28 Oct 2021 10:02:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 28 Oct 2021 18:02:42 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 28 Oct 2021 10:02:41 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/psr2: Do full fetches when doing
 async flips
Thread-Index: AQHXy2JsUvo0zFK/Z0CWP/vcGcJ2s6vo3ycAgAA8cQA=
Date: Thu, 28 Oct 2021 17:02:41 +0000
Message-ID: <ff05e4fa04fe0ebcc79c9b86e249bd5ab5392529.camel@intel.com>
References: <20211027184855.108731-1-jose.souza@intel.com>
 <YXqmfPPnSr3j/mDe@intel.com>
In-Reply-To: <YXqmfPPnSr3j/mDe@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <F10529C2A7D5B0458AE03452DFABE8BD@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr2: Do full fetches when doing
 async flips
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

T24gVGh1LCAyMDIxLTEwLTI4IGF0IDE2OjMyICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgT2N0IDI3LCAyMDIxIGF0IDExOjQ4OjU1QU0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gQXN5bmMgZmxpcHMgYXJlIG5vdCBzdXBwb3J0ZWQgYnkg
c2VsZWN0aXZlIGZldGNoIGFuZCB3ZSBoYWQgYSBjaGVjaw0KPiA+IGZvciB0aGF0IGJ1dCB0aGF0
IGNoZWNrIHdhcyBvbmx5IGV4ZWN1dGVkIHdoZW4gZG9pbmcgbW9kZXNldHMuDQo+ID4gU28gbW92
aW5nIHRoaXMgY2hlY2sgdG8gdGhlIHBhZ2UgZmxpcCBwYXRoLCBzbyBpdCBjYW4gYmUgcHJvcGVy
bHkNCj4gPiBoYW5kbGVkLg0KPiA+IA0KPiA+IFRoaXMgZml4IGEgZmFpbHVyZSBpbiBrbXNfYXN5
bmNfZmxpcHNAdGVzdC1jdXJzb3IuDQo+ID4gDQo+ID4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQo+ID4gQ2M6IEpvdW5pIEhvZ2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMgfCA4ICsrLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggOGQwOGUzY2YwOGMxZi4uY2U2ODUwZWQ3
MmM2MCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IEBAIC03MjksMTIgKzcyOSw2IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfc2VsX2Zl
dGNoX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICAJCXJldHVy
biBmYWxzZTsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gLQlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5hc3lu
Y19mbGlwKSB7DQo+ID4gLQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ID4gLQkJCSAg
ICAiUFNSMiBzZWwgZmV0Y2ggbm90IGVuYWJsZWQsIGFzeW5jIGZsaXAgZW5hYmxlZFxuIik7DQo+
ID4gLQkJcmV0dXJuIGZhbHNlOw0KPiA+IC0JfQ0KPiA+IC0NCj4gPiAgCS8qIFdhXzE0MDEwMjU0
MTg1IFdhXzE0MDEwMTAzNzkyICovDQo+ID4gIAlpZiAoSVNfVEdMX0RJU1BMQVlfU1RFUChkZXZf
cHJpdiwgU1RFUF9BMCwgU1RFUF9DMCkpIHsNCj4gPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYt
PmRybSwNCj4gPiBAQCAtMTU5Miw2ICsxNTg2LDggQEAgc3RhdGljIGJvb2wgcHNyMl9zZWxfZmV0
Y2hfcGlwZV9zdGF0ZV9zdXBwb3J0ZWQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmMN
Cj4gPiAgew0KPiA+ICAJaWYgKGNydGNfc3RhdGUtPnNjYWxlcl9zdGF0ZS5zY2FsZXJfaWQgPj0g
MCkNCj4gPiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5hc3lu
Y19mbGlwKQ0KPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gDQo+IFRoaXMgbG9va3MgZG9kZ3kuIFBy
ZXR0eSBzdXJlIHdlIGNhbid0IHR1cm4gb2ZmIHRoaXMgdGhpbmcgZHVyaW5nDQo+IGFuIGFzeW5j
IGZsaXAuIFNvIEkgdGhpbmsgdGhlIGNvcnJlY3Qgc2hvcnQgdGVybSBmaXggaXMgdG8gbm90IGRv
DQo+IGFzeW5jIGZsaXBzIHdpdGggcHNyMiBlbmFibGVkLiBUaGUgbG9uZ2VyIHRlcm0gZml4IHdv
dWxkIGludm9sdmUNCj4gdXNpbmcgdGhlIHNhbWUgYXBwcm9hY2ggU3RhbiBpcyBwcmVwYXJpbmcg
Zm9yIHRoZSBhc3luYyBmbGlwDQo+IHdhdGVybWFyayB0d2Vha2luZywgd2hpY2ggaXMgdG8gY29u
dmVydCB0aGUgZmlyc3QgYXN5bmMgZmxpcCBpbnRvDQo+IGEgc3luYyBmbGlwLg0KPiANCg0KSXQg
aXMgbm90IHR1cm5pbmcgUFNSMiBvZmYsIGl0IGlzIHRlbGxpbmcgaGFyZHdhcmUgdG8gZmV0Y2gg
dGhlIHdob2xlIG1lbW9yeSBvZiBhbGwgcGxhbmVzIGFuZCBzZW5kIHRoZSB3aG9sZSBzY3JlZW4g
dG8gcGFuZWwgaW5zdGVhZCBvZiBmZXRjaGluZyBhbmQNCnNlbmRpbmcgYSBzbWFsbGVyIGFyZWEg
Zm9yIHRoaXMgZnJhbWUsIHdlIGFsc28gZG8gdGhhdCB3aGVuIGEgcGxhbmUgaXMgbW92ZWQgdG8g
YSBuZWdhdGl2ZSBjb29yZGluYXRlLg0K
