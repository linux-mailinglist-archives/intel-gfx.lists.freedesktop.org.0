Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B3C1A888C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 20:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CE3F6E255;
	Tue, 14 Apr 2020 18:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32EA6E25A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 18:05:51 +0000 (UTC)
IronPort-SDR: 7Um2Y/p5WcU2rqcguUQGbE1FZpbf227GkozPIgDnvY8fAHjW6YT9SkmN05tk3ioBEZI4gr11Mu
 AY+QiWd+z9aw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 11:05:49 -0700
IronPort-SDR: i2BdHwt+AJC157OrSVHeRthWFKVChrPt3FnZhFQSBM4S41zp2SSc7oDtkLnGn35hHeK74KYp0G
 SWscBRozHvng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="270983629"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga008.jf.intel.com with ESMTP; 14 Apr 2020 11:05:49 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Apr 2020 11:05:48 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.183]) with mapi id 14.03.0439.000;
 Tue, 14 Apr 2020 11:05:48 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 8/9] drm/i915/tc: Do not warn when aux
 power well of static TC ports timeout
Thread-Index: AQHWEbK2A1KT+q1pDkePGHxFb1M4Cqh5W5kAgAAFfYA=
Date: Tue, 14 Apr 2020 18:05:47 +0000
Message-ID: <0e918eb9f1b65376ccf47c42e4b91b5fb7b63d8f.camel@intel.com>
References: <20200413164515.13355-1-jose.souza@intel.com>
 <20200413164515.13355-8-jose.souza@intel.com>
 <20200414174754.GC5942@ideak-desk.fi.intel.com>
In-Reply-To: <20200414174754.GC5942@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.209.55.81]
Content-ID: <785090388BCF53439A127C37FE0FEF86@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 8/9] drm/i915/tc: Do not warn when aux
 power well of static TC ports timeout
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTA0LTE0IGF0IDIwOjQ3ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IE1vbiwgQXByIDEzLCAyMDIwIGF0IDA5OjQ1OjE0QU0gLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emENCj4gd3JvdGU6DQo+ID4gVGhpcyBpcyBhIGV4cGVjdGVkIHRpbWVvdXQgb2Ygc3RhdGlj
IFRDIHBvcnRzIG5vdCBjb25uZWNldGVkLCBzbw0KPiA+IG5vdCB0aHJvd2luZyB3YXJuaW5ncyB0
aGF0IHdvdWxkIHRhaW50IENJLg0KPiA+IA0KPiA+IHYzOg0KPiA+IC0gbW92ZWQgY2hlY2tzIHRv
IHRjX3BoeV9hdXhfdGltZW91dF9leHBlY3RlZCgpDQo+ID4gDQo+ID4gdjQ6DQo+ID4gLSBtb3Zl
ZCBhbmQgYWRkIGNvbW1lbnRzIHRvIHRjX3BoeV9hdXhfdGltZW91dF9leHBlY3RlZCgpDQo+ID4g
DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYyAgICB8IDU2ICsrKysrKysrKysrKysNCj4gPiAtLS0tLS0NCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMNCj4gPiBpbmRleCAwMGRlOTI2YWFjY2YuLjJkMjEyNWQxNTM0YiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jDQo+ID4gQEAgLTI4NCw2ICsyODQsMjEgQEAgc3RhdGljIHZvaWQgaHN3X3Bvd2VyX3dlbGxf
cHJlX2Rpc2FibGUoc3RydWN0DQo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4g
IAkJZ2VuOF9pcnFfcG93ZXJfd2VsbF9wcmVfZGlzYWJsZShkZXZfcHJpdiwNCj4gPiBpcnFfcGlw
ZV9tYXNrKTsNCj4gPiAgfQ0KPiA+ICANCj4gPiArI2RlZmluZSBJQ0xfQVVYX1BXX1RPX0NIKHB3
X2lkeCkJXA0KPiA+ICsJKChwd19pZHgpIC0gSUNMX1BXX0NUTF9JRFhfQVVYX0EgKyBBVVhfQ0hf
QSkNCj4gPiArDQo+ID4gKyNkZWZpbmUgSUNMX1RCVF9BVVhfUFdfVE9fQ0gocHdfaWR4KQlcDQo+
ID4gKwkoKHB3X2lkeCkgLSBJQ0xfUFdfQ1RMX0lEWF9BVVhfVEJUMSArIEFVWF9DSF9DKQ0KPiA+
ICsNCj4gPiArc3RhdGljIGVudW0gYXV4X2NoIGljbF90Y19waHlfYXV4X2NoKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlDQo+ID4gKmRldl9wcml2LA0KPiA+ICsJCQkJICAgICBzdHJ1Y3QgaTkxNV9w
b3dlcl93ZWxsDQo+ID4gKnBvd2VyX3dlbGwpDQo+ID4gK3sNCj4gPiArCWludCBwd19pZHggPSBw
b3dlcl93ZWxsLT5kZXNjLT5oc3cuaWR4Ow0KPiA+ICsNCj4gPiArCXJldHVybiBwb3dlcl93ZWxs
LT5kZXNjLT5oc3cuaXNfdGNfdGJ0ID8NCj4gPiBJQ0xfVEJUX0FVWF9QV19UT19DSChwd19pZHgp
IDoNCj4gPiArCQkJCQkJIElDTF9BVVhfUFdfVE9fQ0gocHdfaWQNCj4gPiB4KTsNCj4gPiArfQ0K
PiA+ICsNCj4gPiAgc3RhdGljIHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKg0KPiA+ICBhdXhf
Y2hfdG9fZGlnaXRhbF9wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4g
PiAgCQkgICAgICAgZW51bSBhdXhfY2ggYXV4X2NoKQ0KPiA+IEBAIC0zMTEsNiArMzI2LDI3IEBA
IGF1eF9jaF90b19kaWdpdGFsX3BvcnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiAqZGV2
X3ByaXYsDQo+ID4gIAlyZXR1cm4gZGlnX3BvcnQ7DQo+ID4gIH0NCj4gPiAgDQo+ID4gK3N0YXRp
YyBib29sIHRjX3BoeV9hdXhfdGltZW91dF9leHBlY3RlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQ0KPiA+ICpkZXZfcHJpdiwNCj4gPiArCQkJCQlzdHJ1Y3QgaTkxNV9wb3dlcl93ZWxsDQo+ID4g
KnBvd2VyX3dlbGwpDQo+ID4gK3sNCj4gPiArCS8qIEFuIEFVWCB0aW1lb3V0IGlzIGV4cGVjdGVk
IGlmIHRoZSBUQlQgRFAgdHVubmVsIGlzIGRvd24uICovDQo+ID4gKwlpZiAocG93ZXJfd2VsbC0+
ZGVzYy0+aHN3LmlzX3RjX3RidCkNCj4gPiArCQlyZXR1cm4gdHJ1ZTsNCj4gPiArDQo+ID4gKwkv
Kg0KPiA+ICsJICogQW4gQVVYIHRpbWVvdXQgaXMgZXhwZWN0ZWQgYmVjYXVzZSB3ZSBlbmFibGUg
VEMgbGVnYWN5IHBvcnQNCj4gPiBhdXgNCj4gPiArCSAqIHRvIGhvbGQgcG9ydCBvdXQgb2YgVEMg
Y29sZA0KPiA+ICsJICovDQo+ID4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA9PSAxMSkgew0K
PiANCj4gWW91IG1pc3NlZCBteSBjb21tZW50IG9uIHRoZSBwcmV2aW91cyB2ZXJzaW9uLCBzaG91
bGQgYmU6DQo+ICAJaWYgKEdFTj09MTEgJiYgcG93ZXJfd2VsbC0+ZGVzYy0+b3BzID09DQo+ICZp
Y2xfdGNfcGh5X2F1eF9wb3dlcl93ZWxsX29wcykgew0KDQpTb3JyeSwgZml4aW5nIGl0Lg0KDQo+
IA0KPiA+ICsJCWVudW0gYXV4X2NoIGF1eF9jaCA9IGljbF90Y19waHlfYXV4X2NoKGRldl9wcml2
LA0KPiA+IHBvd2VyX3dlbGwpOw0KPiA+ICsJCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0ID0NCj4gPiBhdXhfY2hfdG9fZGlnaXRhbF9wb3J0KGRldl9wcml2LCBhdXhfY2gpOw0K
PiA+ICsNCj4gPiArCQlyZXR1cm4gZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0Ow0KPiA+ICsJfQ0K
PiA+ICsNCj4gPiArCXJldHVybiBmYWxzZTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgc3RhdGljIHZv
aWQgaHN3X3dhaXRfZm9yX3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
DQo+ID4gKmRldl9wcml2LA0KPiA+ICAJCQkJCSAgIHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwNCj4g
PiAqcG93ZXJfd2VsbCkNCj4gPiAgew0KPiA+IEBAIC0zMjMsOCArMzU5LDkgQEAgc3RhdGljIHZv
aWQNCj4gPiBoc3dfd2FpdF9mb3JfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LA0KPiA+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiJXMg
cG93ZXIgd2VsbCBlbmFibGUNCj4gPiB0aW1lb3V0XG4iLA0KPiA+ICAJCQkgICAgcG93ZXJfd2Vs
bC0+ZGVzYy0+bmFtZSk7DQo+ID4gIA0KPiA+IC0JCS8qIEFuIEFVWCB0aW1lb3V0IGlzIGV4cGVj
dGVkIGlmIHRoZSBUQlQgRFAgdHVubmVsIGlzDQo+ID4gZG93bi4gKi8NCj4gPiAtCQlkcm1fV0FS
Tl9PTigmZGV2X3ByaXYtPmRybSwgIXBvd2VyX3dlbGwtPmRlc2MtDQo+ID4gPmhzdy5pc190Y190
YnQpOw0KPiA+ICsJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLA0KPiA+ICsJCQkgICAgIXRj
X3BoeV9hdXhfdGltZW91dF9leHBlY3RlZChkZXZfcHJpdiwNCj4gPiBwb3dlcl93ZWxsKSk7DQo+
ID4gKw0KPiA+ICAJfQ0KPiA+ICB9DQo+ID4gIA0KPiA+IEBAIC01MjAsMjEgKzU1Nyw2IEBAIGlj
bF9jb21ib19waHlfYXV4X3Bvd2VyX3dlbGxfZGlzYWJsZShzdHJ1Y3QNCj4gPiBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwNCj4gPiAgCWhzd193YWl0X2Zvcl9wb3dlcl93ZWxsX2Rpc2FibGUo
ZGV2X3ByaXYsIHBvd2VyX3dlbGwpOw0KPiA+ICB9DQo+ID4gIA0KPiA+IC0jZGVmaW5lIElDTF9B
VVhfUFdfVE9fQ0gocHdfaWR4KQlcDQo+ID4gLQkoKHB3X2lkeCkgLSBJQ0xfUFdfQ1RMX0lEWF9B
VVhfQSArIEFVWF9DSF9BKQ0KPiA+IC0NCj4gPiAtI2RlZmluZSBJQ0xfVEJUX0FVWF9QV19UT19D
SChwd19pZHgpCVwNCj4gPiAtCSgocHdfaWR4KSAtIElDTF9QV19DVExfSURYX0FVWF9UQlQxICsg
QVVYX0NIX0MpDQo+ID4gLQ0KPiA+IC1zdGF0aWMgZW51bSBhdXhfY2ggaWNsX3RjX3BoeV9hdXhf
Y2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiAqZGV2X3ByaXYsDQo+ID4gLQkJCQkgICAg
IHN0cnVjdCBpOTE1X3Bvd2VyX3dlbGwNCj4gPiAqcG93ZXJfd2VsbCkNCj4gPiAtew0KPiA+IC0J
aW50IHB3X2lkeCA9IHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pZHg7DQo+ID4gLQ0KPiA+IC0JcmV0
dXJuIHBvd2VyX3dlbGwtPmRlc2MtPmhzdy5pc190Y190YnQgPw0KPiA+IElDTF9UQlRfQVVYX1BX
X1RPX0NIKHB3X2lkeCkgOg0KPiA+IC0JCQkJCQkgSUNMX0FVWF9QV19UT19DSChwd19pZA0KPiA+
IHgpOw0KPiA+IC19DQo+ID4gLQ0KPiA+ICAjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVf
REVCVUdfUlVOVElNRV9QTSkNCj4gPiAgDQo+ID4gIHN0YXRpYyB1NjQgYXN5bmNfcHV0X2RvbWFp
bnNfbWFzayhzdHJ1Y3QgaTkxNV9wb3dlcl9kb21haW5zDQo+ID4gKnBvd2VyX2RvbWFpbnMpOw0K
PiA+IC0tIA0KPiA+IDIuMjYuMA0KPiA+IA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
