Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CDE9D6F0
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 21:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 055796E2E8;
	Mon, 26 Aug 2019 19:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 312966E2E8;
 Mon, 26 Aug 2019 19:44:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 12:44:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="209479131"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 26 Aug 2019 12:44:27 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 26 Aug 2019 12:44:27 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx101.amr.corp.intel.com (10.18.124.199) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 26 Aug 2019 12:44:26 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.143]) with mapi id 14.03.0439.000;
 Tue, 27 Aug 2019 01:14:24 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 5/6] drm/i915/dp: Program an Infoframe SDP Header
 and DB for HDR Static Metadata
Thread-Index: AQHVWZiJUyk6DXb4zECo96SSUVypE6cN1fEA
Date: Mon, 26 Aug 2019 19:44:24 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D1E74@BGSMSX104.gar.corp.intel.com>
References: <20190823095232.28908-1-gwan-gyeong.mun@intel.com>
 <20190823095232.28908-6-gwan-gyeong.mun@intel.com>
In-Reply-To: <20190823095232.28908-6-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTMyODM2MjYtYTIyOS00NjczLTgxYTEtOTNkYjUwMTY4ZmFlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUHh2RndcL0tOVVNxQjhJM202T0xhZE9aaEFVcUtvMnpOUUZkNktRY2Y2ZE9oV0I2aTA0d3B6blF3XC9hNFdJS0RFIn0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/dp: Program an Infoframe
 SDP Header and DB for HDR Static Metadata
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IE11biwgR3dhbi1neWVvbmcN
Cj5TZW50OiBGcmlkYXksIEF1Z3VzdCAyMywgMjAxOSAzOjIzIFBNDQo+VG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj5DYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Ow0KPlNoYXJtYSwgU2hhc2hh
bmsgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+DQo+U3ViamVjdDogW1BBVENIIHYyIDUvNl0g
ZHJtL2k5MTUvZHA6IFByb2dyYW0gYW4gSW5mb2ZyYW1lIFNEUCBIZWFkZXIgYW5kIERCIGZvcg0K
PkhEUiBTdGF0aWMgTWV0YWRhdGENCj4NCj5GdW5jdGlvbiBpbnRlbF9kcF9zZXR1cF9oZHJfbWV0
YWRhdGFfaW5mb2ZyYW1lX3NkcCBoYW5kbGVzIEluZm9mcmFtZSBTRFANCj5oZWFkZXIgYW5kIGRh
dGEgYmxvY2sgc2V0dXAgZm9yIEhEUiBTdGF0aWMgTWV0YWRhdGEuIEl0IGVuYWJsZXMgd3JpdGlu
ZyBvZiBIRFINCj5tZXRhZGF0YSBpbmZvZnJhbWUgU0RQIHRvIHBhbmVsLiBTdXBwb3J0IGZvciBI
RFIgdmlkZW8gd2FzIGludHJvZHVjZWQgaW4NCj5EaXNwbGF5UG9ydCAxLjQuIEl0IGltcGxlbWVu
dHMgdGhlIENUQS04NjEtRyBzdGFuZGFyZCBmb3IgdHJhbnNwb3J0IG9mIHN0YXRpYyBIRFINCj5t
ZXRhZGF0YS4gVGhlIEhEUiBNZXRhZGF0YSB3aWxsIGJlIHByb3ZpZGVkIGJ5IHVzZXJzcGFjZSBj
b21wb3NpdG9ycywgYmFzZWQgb24NCj5ibGVuZGluZyBwb2xpY2llcyBhbmQgcGFzc2VkIHRvIHRo
ZSBkcml2ZXIgdGhyb3VnaCBhIGJsb2IgcHJvcGVydHkuDQo+DQo+QmVjYXVzZSBlYWNoIG9mIEdF
TjExIGFuZCBwcmlvciBHRU4xMSBoYXZlIGRpZmZlcmVudCByZWdpc3RlciBzaXplIGZvciBIRFIN
Cj5NZXRhZGF0YSBJbmZvZnJhbWUgU0RQIHBhY2tldCwgaXQgYWRkcyBhbmQgdXNlcyBkaWZmZXJl
bnQgcmVnaXN0ZXIgc2l6ZS4NCj4NCj5TZXR1cCBJbmZvZnJhbWUgU0RQIGhlYWRlciBhbmQgZGF0
YSBibG9jayBpbiBmdW5jdGlvbg0KPmludGVsX2RwX3NldHVwX2hkcl9tZXRhZGF0YV9pbmZvZnJh
bWVfc2RwIGZvciBIRFIgU3RhdGljIE1ldGFkYXRhIGFzIHBlciBkcCAxLjQNCj5zcGVjIGFuZCBD
VEEtODYxLUYgc3BlYy4NCj5BcyBwZXIgRFAgMS40IHNwZWMsIDIuMi4yLjUgU0RQIEZvcm1hdHMu
IEl0IGVuYWJsZXMgRHluYW1pYyBSYW5nZSBhbmQgTWFzdGVyaW5nDQo+SW5mb2ZyYW1lIGZvciBI
RFIgY29udGVudCwgd2hpY2ggaXMgZGVmaW5lZCBpbiBDVEEtODYxLUYgc3BlYy4NCj5BY2NvcmRp
bmcgdG8gRFAgMS40IHNwZWMgYW5kIENFQS04NjEtRiBzcGVjIFRhYmxlIDUsIGluIG9yZGVyIHRv
IHRyYW5zbWl0IHN0YXRpYyBIRFINCj5tZXRhZGF0YSwgd2UgaGF2ZSB0byB1c2UgTm9uLWF1ZGlv
IElORk9GUkFNRSBTRFAgdjEuMy4NCj4NCj4rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj58ICAgICAgWyBQYWNrZXQgVHlw
ZSBWYWx1ZSBdICAgICB8ICAgICAgIFsgUGFja2V0IFR5cGUgXSAgICAgICAgIHwNCj4rLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSsNCj58IDgwaCArIE5vbi1hdWRpbyBJTkZPRlJBTUUgVHlwZSB8IENFQS04NjEtRiBOb24tYXVk
aW8gSU5GT0ZSQU1FIHwNCj4rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj58ICAgICAgW1RyYW5zbWlzc2lvbiBUaW1pbmdd
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4rLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj58IEFz
IHBlciBDRUEtODYxLUYgZm9yIElORk9GUkFNRSwgaW5jbHVkaW5nIENFQS04NjEuMyB3aXRoaW4g
ICAgIHwNCj58IHdoaWNoIER5bmFtaWMgUmFuZ2UgYW5kIE1hc3RlcmluZyBJTkZPRlJBTUUgYXJl
IGRlZmluZWQgICAgICAgIHwNCj4rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCj4NCj52MjogQWRkIGEgbWlzc2VkIGJsYW5r
IGxpbmUgYWZ0ZXIgZnVuY3Rpb24gZGVjbGFyYXRpb24uDQo+DQo+U2lnbmVkLW9mZi1ieTogR3dh
bi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPi0tLQ0KPiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgIDEgKw0KPmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgfCA5MSArKysrKysrKysrKysrKysrKysrKysrKysN
Cj5kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggIHwgIDMgKw0KPiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgIDEgKw0KPiA0IGZpbGVzIGNo
YW5nZWQsIDk2IGluc2VydGlvbnMoKykNCj4NCj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYw0KPmluZGV4IDVjNDJiNThjMWMyZi4uOWY1YmVhOTQxYmNkIDEwMDY0NA0K
Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4rKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+QEAgLTM0NzgsNiArMzQ3
OCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2VuYWJsZV9kZGlfZHAoc3RydWN0IGludGVsX2VuY29k
ZXINCj4qZW5jb2RlciwNCj4gCWludGVsX2VkcF9iYWNrbGlnaHRfb24oY3J0Y19zdGF0ZSwgY29u
bl9zdGF0ZSk7DQo+IAlpbnRlbF9wc3JfZW5hYmxlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4g
CWludGVsX2RwX3ZzY19lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOw0K
PisJaW50ZWxfZHBfaGRyX21ldGFkYXRhX2VuYWJsZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSwgY29u
bl9zdGF0ZSk7DQo+IAlpbnRlbF9lZHBfZHJyc19lbmFibGUoaW50ZWxfZHAsIGNydGNfc3RhdGUp
Ow0KPg0KPiAJaWYgKGNydGNfc3RhdGUtPmhhc19hdWRpbykNCj5kaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj5pbmRleCA3MjE4ZTE1OWY1NWQuLjAwZGE4MjIxZWFiYSAx
MDA2NDQNCj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4r
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj5AQCAtNDU1NCw2
ICs0NTU0LDg1IEBAIGludGVsX2RwX3NldHVwX3ZzY19zZHAoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwNCj4gCQkJY3J0Y19zdGF0ZSwgRFBfU0RQX1ZTQywgJnZzY19zZHAsIHNpemVvZih2c2Nf
c2RwKSk7ICB9DQo+DQo+K3N0YXRpYyBpbnQNCj4raW50ZWxfZHBfc2V0dXBfaGRyX21ldGFkYXRh
X2luZm9mcmFtZV9zZHAoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4rCQkJCQkgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPisJCQkJCSAgY29uc3Qgc3Ry
dWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCg0KVGhlIHJldHVybiB2YWx1ZSBpcyBub3QgaGFuZGxl
ZCwgeW91IG1heSBjb252ZXJ0IGl0IGFzIHZvaWQuDQoNCj4qY29ubl9zdGF0ZSkgew0KPisJc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQgPSBkcF90b19kaWdfcG9ydChp
bnRlbF9kcCk7DQo+KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsNCj4rCXN0cnVjdCBkcF9zZHAgaW5mb2Zy
YW1lX3NkcCA9IHt9Ow0KPisJc3RydWN0IGhkbWlfZHJtX2luZm9mcmFtZSBkcm1faW5mb2ZyYW1l
ID0ge307DQo+Kwljb25zdCBpbnQgaW5mb2ZyYW1lX3NpemUgPSBIRE1JX0lORk9GUkFNRV9IRUFE
RVJfU0laRSArDQo+SERNSV9EUk1fSU5GT0ZSQU1FX1NJWkU7DQo+Kwl1bnNpZ25lZCBjaGFyIGJ1
ZltIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRSArDQo+SERNSV9EUk1fSU5GT0ZSQU1FX1NJWkVd
Ow0KPisJc3NpemVfdCBsZW47DQo+KwlpbnQgcmV0Ow0KPisNCj4rCXJldCA9IGRybV9oZG1pX2lu
Zm9mcmFtZV9zZXRfaGRyX21ldGFkYXRhKCZkcm1faW5mb2ZyYW1lLCBjb25uX3N0YXRlKTsNCj4r
CWlmIChyZXQpIHsNCj4rCQlEUk1fREVCVUdfS01TKCJjb3VsZG4ndCBzZXQgSERSIG1ldGFkYXRh
IGluIGluZm9mcmFtZVxuIik7DQo+KwkJcmV0dXJuIHJldDsNCj4rCX0NCj4rDQo+KwlsZW4gPSBo
ZG1pX2RybV9pbmZvZnJhbWVfcGFja19vbmx5KCZkcm1faW5mb2ZyYW1lLCBidWYsIHNpemVvZihi
dWYpKTsNCj4rCWlmIChsZW4gPCAwKSB7DQo+KwkJRFJNX0RFQlVHX0tNUygiYnVmZmVyIHNpemUg
aXMgc21hbGxlciB0aGFuIGhkciBtZXRhZGF0YQ0KPmluZm9mcmFtZVxuIik7DQo+KwkJcmV0dXJu
IChpbnQpbGVuOw0KDQpJZiBtYWRlIHZvaWQsIHRoaXMgd2lsbCBub3QgYmUgcmVxdWlyZWQuDQoN
Cj4rCX0NCj4rDQo+KwlpZiAobGVuICE9IGluZm9mcmFtZV9zaXplKSB7DQo+KwkJRFJNX0RFQlVH
X0tNUygid3Jvbmcgc3RhdGljIGhkciBtZXRhZGF0YSBzaXplXG4iKTsNCj4rCQlyZXR1cm4gLUVJ
TlZBTDsNCj4rCX0NCj4rDQo+KwkvKg0KPisJICogU2V0IHVwIHRoZSBpbmZvZnJhbWUgc2RwIHBh
Y2tldCBmb3IgSERSIHN0YXRpYyBtZXRhZGF0YS4NCj4rCSAqIFByZXBhcmUgVlNDIEhlYWRlciBm
b3IgU1UgYXMgcGVyIERQIDEuNGEgc3BlYywNCj4rCSAqIFRhYmxlIDItMTAwIGFuZCBUYWJsZSAy
LTEwMQ0KPisJICovDQo+Kw0KPisJLyogUGFja2V0IElELCAwMGggZm9yIG5vbi1BdWRpbyBJTkZP
RlJBTUUgKi8NCj4rCWluZm9mcmFtZV9zZHAuc2RwX2hlYWRlci5IQjAgPSAwOw0KPisJLyoNCj4r
CSAqIFBhY2tldCBUeXBlIDgwaCArIE5vbi1hdWRpbyBJTkZPRlJBTUUgVHlwZSB2YWx1ZQ0KPisJ
ICogSERNSV9JTkZPRlJBTUVfVFlQRV9EUk06IDB4ODcsDQo+KwkgKi8NCj4rCWluZm9mcmFtZV9z
ZHAuc2RwX2hlYWRlci5IQjEgPSBkcm1faW5mb2ZyYW1lLnR5cGU7DQo+KwkvKg0KPisJICogTGVh
c3QgU2lnbmlmaWNhbnQgRWlnaHQgQml0cyBvZiAoRGF0YSBCeXRlIENvdW50IOKAkyAxKQ0KPisJ
ICogaW5mb2ZyYW1lX3NpemUgLSAxLA0KPisJICovDQo+KwlpbmZvZnJhbWVfc2RwLnNkcF9oZWFk
ZXIuSEIyID0gMHgxRDsNCj4rCS8qIElORk9GUkFNRSBTRFAgVmVyc2lvbiBOdW1iZXIgKi8NCj4r
CWluZm9mcmFtZV9zZHAuc2RwX2hlYWRlci5IQjMgPSAoMHgxMyA8PCAyKTsNCj4rCS8qIENUQSBI
ZWFkZXIgQnl0ZSAyIChJTkZPRlJBTUUgVmVyc2lvbiBOdW1iZXIpICovDQo+KwlpbmZvZnJhbWVf
c2RwLmRiWzBdID0gZHJtX2luZm9mcmFtZS52ZXJzaW9uOw0KPisJLyogQ1RBIEhlYWRlciBCeXRl
IDMgKExlbmd0aCBvZiBJTkZPRlJBTUUpOiBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRQ0KPiovDQo+
KwlpbmZvZnJhbWVfc2RwLmRiWzFdID0gZHJtX2luZm9mcmFtZS5sZW5ndGg7DQo+KwkvKg0KPisJ
ICogQ29weSBIRE1JX0RSTV9JTkZPRlJBTUVfU0laRSBzaXplIGZyb20gYSBidWZmZXIgYWZ0ZXIN
Cj4rCSAqIEhETUlfSU5GT0ZSQU1FX0hFQURFUl9TSVpFDQo+KwkgKi8NCj4rCW1lbWNweSgmaW5m
b2ZyYW1lX3NkcC5kYlsyXSwgJmJ1ZltIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRV0sDQo+Kwkg
ICAgICAgSERNSV9EUk1fSU5GT0ZSQU1FX1NJWkUpOw0KPisNCj4rCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDExKQ0KPisJCWludGVsX2RpZ19wb3J0LT53cml0ZV9pbmZvZnJhbWUoJmludGVs
X2RpZ19wb3J0LT5iYXNlLA0KPisJCQkJCQljcnRjX3N0YXRlLA0KPisNCj4JSERNSV9QQUNLRVRf
VFlQRV9HQU1VVF9NRVRBREFUQSwNCj4rCQkJCQkJJmluZm9mcmFtZV9zZHAsDQo+KwkJCQkJCVZJ
REVPX0RJUF9HTVBfREFUQV9TSVpFKTsNCg0KVGhpcyBuZXcgVklERU9fRElQX0dNUF9EQVRBX1NJ
WkUgZG9lc24ndCBzZWVtIHRvIGJlIGhhbmRsZWQgaW4gaHN3X3dyaXRlX2luZm9mcmFtZQ0KKGhz
d19kaXBfZGF0YV9zaXplKS4gQ2FuIHlvdSBwbGVhc2UgY2hlY2sgdGhpcy4NCg0KPisJZWxzZQ0K
PisJCS8qIFByaW9yIHRvIEdFTjExLCBIZWFkZXIgc2l6ZTogNCBieXRlcywgRGF0YSBzaXplOiAy
OCBieXRlcyAqLw0KPisJCWludGVsX2RpZ19wb3J0LT53cml0ZV9pbmZvZnJhbWUoJmludGVsX2Rp
Z19wb3J0LT5iYXNlLA0KPisJCQkJCQljcnRjX3N0YXRlLA0KPisNCj4JSERNSV9QQUNLRVRfVFlQ
RV9HQU1VVF9NRVRBREFUQSwNCj4rCQkJCQkJJmluZm9mcmFtZV9zZHAsDQo+KwkJCQkJCVZJREVP
X0RJUF9EQVRBX1NJWkUpOw0KPisNCg0KQWxzbyBjYW4geW91IHVwZGF0ZSB0aGUgc2VyaWVzIHRv
IGhhbmRsZSBzdGF0ZSBjaGVja2luZyBhbHNvIGZvciBtZXRhZGF0YSBzZW50IHRvIERQIHNpbmsu
DQoNCj4rCXJldHVybiAwOw0KPit9DQo+Kw0KPiB2b2lkIGludGVsX2RwX3ZzY19lbmFibGUoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLA0KPiAJCQkgY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUg
KmNvbm5fc3RhdGUpIEBAIC0NCj40NTY1LDYgKzQ2NDQsMTggQEAgdm9pZCBpbnRlbF9kcF92c2Nf
ZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IAlpbnRlbF9kcF9zZXR1cF92c2Nf
c2RwKGludGVsX2RwLCBjcnRjX3N0YXRlLCBjb25uX3N0YXRlKTsgIH0NCj4NCj4rdm9pZCBpbnRl
bF9kcF9oZHJfbWV0YWRhdGFfZW5hYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+KwkJ
CQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPisJCQkJICBj
b25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkgew0KPisJaWYgKCFj
b25uX3N0YXRlLT5oZHJfb3V0cHV0X21ldGFkYXRhKQ0KPisJCXJldHVybjsNCj4rDQo+KwlpbnRl
bF9kcF9zZXR1cF9oZHJfbWV0YWRhdGFfaW5mb2ZyYW1lX3NkcChpbnRlbF9kcCwNCj4rCQkJCQkJ
ICBjcnRjX3N0YXRlLA0KPisJCQkJCQkgIGNvbm5fc3RhdGUpOw0KPit9DQo+Kw0KPiBzdGF0aWMg
dTggaW50ZWxfZHBfYXV0b3Rlc3RfbGlua190cmFpbmluZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKSAgew0KPiAJaW50IHN0YXR1cyA9IDA7DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5oDQo+aW5kZXggYjJkYTdjOTk5OGY3Li5jMzU5MzY5MWRkMzggMTAwNjQ0DQo+
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+KysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+QEAgLTExNSw2ICsxMTUsOSBA
QCBib29sIGludGVsX2RwX25lZWRzX3ZzY19jb2xvcmltZXRyeSh1MzIgY29sb3JzcGFjZSk7ICB2
b2lkDQo+aW50ZWxfZHBfdnNjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAJ
CQkgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IAkJCSBjb25z
dCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSk7DQo+K3ZvaWQgaW50ZWxf
ZHBfaGRyX21ldGFkYXRhX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPisJCQkJ
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4rCQkJCSAgY29u
c3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpOw0KPiBib29sIGludGVs
X2RpZ2l0YWxfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOw0K
Pg0KPiBzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludCBpbnRlbF9kcF91bnVzZWRfbGFuZV9tYXNr
KGludCBsYW5lX2NvdW50KSBkaWZmIC0tZ2l0DQo+YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBpbmRleA0KPmVhMmYwZmEy
NDAyZC4uOTI4ODU0MTZkNTM5IDEwMDY0NA0KPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgNCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+QEAgLTQ2
NDUsNiArNDY0NSw3IEBAIGVudW0gew0KPiAgKiAoSGFzd2VsbCBhbmQgbmV3ZXIpIHRvIHNlZSB3
aGljaCBWSURFT19ESVBfREFUQSBieXRlIGNvcnJlc3BvbmRzIHRvIGVhY2ggYnl0ZQ0KPiAgKiBv
ZiB0aGUgaW5mb2ZyYW1lIHN0cnVjdHVyZSBzcGVjaWZpZWQgYnkgQ0VBLTg2MS4gKi8NCj4gI2Rl
ZmluZSAgIFZJREVPX0RJUF9EQVRBX1NJWkUJMzINCj4rI2RlZmluZSAgIFZJREVPX0RJUF9HTVBf
REFUQV9TSVpFCTM2DQo+ICNkZWZpbmUgICBWSURFT19ESVBfVlNDX0RBVEFfU0laRQkzNg0KPiAj
ZGVmaW5lICAgVklERU9fRElQX1BQU19EQVRBX1NJWkUJMTMyDQo+ICNkZWZpbmUgVklERU9fRElQ
X0NUTAkJX01NSU8oMHg2MTE3MCkNCj4tLQ0KPjIuMjIuMA0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
