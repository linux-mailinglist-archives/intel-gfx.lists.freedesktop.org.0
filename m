Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C93521EEB77
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 22:02:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073AE6E5A1;
	Thu,  4 Jun 2020 20:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523C56E5A0;
 Thu,  4 Jun 2020 20:02:00 +0000 (UTC)
IronPort-SDR: 19cEpsbwQVrZ+KFPg1BstucLI54elk7qcgZqLZubhKEP/1lWzspAIFZL7+klbDixlj5YMYGseB
 K9d/Pz8aAyjA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 13:01:58 -0700
IronPort-SDR: 0cYSyiIQgSTtaHKG2Q50dEs67PvW47Z97HMN/rBiAorLEWtr2534lc6HG6uVw18mnYCTyzfQKs
 DfU1KSywm67A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="471651771"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga005.fm.intel.com with ESMTP; 04 Jun 2020 13:01:58 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 13:01:58 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx122.amr.corp.intel.com (10.18.125.37) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 13:01:58 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 4 Jun 2020 13:01:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XYYAgkXISUdEI8GunjEVeMtI1sapp2k0JosPpg0YtoSfx9D+uTZ0PdfnJ1gVTEczMu/rgaO3M4JQXF5ogsWIfvwsVENncryOLQ15xh7R0E5N4DZDEOVHR76TVfOhpXSOBrXnFIyH1PZpLrs18TGTwg9fmFkSgRZRgmOuZPEVAfFaixhrVuZEaq/mV0cGPxTXiCH/rLpffU4FJRVuoc8AIvy2vVOuZLRh5wj/x5/3qoF040oFRA7mQ/Rv2bS1vuh/yy1hWwmBxpTaQBU+yjGh0I+OwqWQ76EOf5nNixd4a2PSJkq6sl5zL9J3ghxLpXLIId8jS6ojw08dY4skSaAlSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T9vl+Ig3LAl6/BVNPypZyHVWd9EJQRYdSujsiU5KjZk=;
 b=YAyZHm+Iva6mq9GRb4ZUVdxBD5UfMG+pyo+gpTOI/Zszcs8nobD3EDohucnsDSbecwkN41hyIQlbSZZwgrV6jtekTzOIBGs/9ENHsnfeogUHuU93aFtgKv/NrEGMRFu+odSNyPQSNjznnxNvA5VQU/n9+5NUvcQa5Pk91wRdbcqmc3PIz1zCo3LRSxp1ZKjIkn4u3xr4/5J/SFt6S2XwC35R6TEgPLXWm9Bmobr+pb/NasdS9alAgRV9i1Iz8vlwQ1p5mNhk27gav+5TuYdip7fGmpxm8BF2lUNvWFPOwByPOy5qFpfD29vkg2V95SH17mljZNgeQM14hRyUN3TxGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T9vl+Ig3LAl6/BVNPypZyHVWd9EJQRYdSujsiU5KjZk=;
 b=PyfVykcb+AXaghae4YVplG6kBFg0Y8gVHDJI2M/9rvN5kIWg0UvvZh7Vk+Sb4K243l3pLwl/89nj/d4ZtKrypgLhDmBVxoizJRyQzrwQgT1OdxVz0S44U+xf3o8iaipR0TKdcHvuUoIS3COR7xtArYjJZaeCcjz329q6exo2Zxc=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MW3PR11MB4553.namprd11.prod.outlook.com (2603:10b6:303:2c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Thu, 4 Jun
 2020 20:01:03 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::b840:82ba:a83a:d8c3]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::b840:82ba:a83a:d8c3%5]) with mapi id 15.20.3066.019; Thu, 4 Jun 2020
 20:01:03 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Taylor, 
 Clinton A" <clinton.a.taylor@intel.com>, "Srinivas, Vidya"
 <vidya.srinivas@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: DP PHY compliance for JSL
Thread-Index: AQHWOi4cvB8J7RlH8UeyeQFRnau4QqjI0hAAgAAPUgA=
Date: Thu, 4 Jun 2020 20:01:03 +0000
Message-ID: <fea323968324ceefe813d34d80fdd9779614aa01.camel@intel.com>
References: <1591247028-5868-1-git-send-email-vidya.srinivas@intel.com>
 <20200604190612.GI6112@intel.com>
In-Reply-To: <20200604190612.GI6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.139.76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 64907a6c-6e8a-4d98-ee0e-08d808c202cc
x-ms-traffictypediagnostic: MW3PR11MB4553:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB455380F76C06A901F8C55EF489890@MW3PR11MB4553.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rvcOXZaFewpfP6GUqMdjoi99D4xPgvWZ0zDG6Sa4XkALmZkXURpSj3ryuRi9SYEoGbatED3SAGkUTeFLSxs3xAMPZOMoi75JV5GjfO8PrjaCnn2J2xNseq5sZZGOvY+afaoSj+xafSVg5dBerhR6fsEP8ki53lxv6XGjsv6CAAhD8v23T6MoO49VDPGxHyeVkb3D3DiOUPe+HOMNJ28OFmPt3ksvhtvELGpITLhUAbfxLoMUAb11Mubbt69AMNVjAEwt0nhFtbOfyUKnkYof9Foz5UysfMrpE6fN5P3Kc5rBgbYHrS3JilG0o3qMOftVrmiyhf7uZX3QwLzakr/awpnMIsAQoQdsu7VtJGXKurKse0ai/GSvlcDn5qAOjW3YA2ecDa3zPV11Rzz+aMacA6UHMY7kHj6YFTjI/Goondo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(366004)(376002)(346002)(396003)(136003)(5660300002)(76116006)(66556008)(64756008)(66446008)(66946007)(71200400001)(966005)(2616005)(478600001)(6636002)(8936002)(4326008)(8676002)(6486002)(2906002)(6512007)(36756003)(26005)(186003)(6506007)(66476007)(110136005)(316002)(54906003)(86362001)(66574014)(83380400001)(505234006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: JsZB/v2p96lLm7B6/Brh6D6jU3LzmTZUyhglVvZgA3IB1EQyHZnEAr51VXNxpFrcm9UOnNIn9F3cF18cK1/qGGqQOFLpbQCaVYg2et5ELUdjfRiINZPuNw4m1D9lTrlzVrxUOWRGBdCjnzkaH0NOaYoby/wjboE5cCdzKbKQdFj9MzY0BBgjZLTpBXW5MlpOlVQvNPh6uqBpB0mdiH54h6q0BFzytFgAdUXSR7rAkPiqtASGtmjloNZ90rE1loG3fsIwSlSbLGLscPmzy94n6cSWETn8X26ZgqG7z8KB7zUKbw8x3TCNKhgHK+zqdeIIisOfQ0fizhCCANIMQZdWwE3o1aiYRglrFc55NGv/eC+IA6jp0RiAeceXQZHGAT5JeLGA1iCIlKiBBCam9epVD6zL3W7l7X0ng2iCAuvGNTdFy3EcwHnjrU1s5iFJ6kzzfCnVmxitwUfzmMA+yqAIcZVvjmmxmBuiBfCsImAM1utgjpjArX8UfLrFuW6S4xtR
Content-ID: <02F7DF160053E348A74CA4CA9670475A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 64907a6c-6e8a-4d98-ee0e-08d808c202cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 20:01:03.5283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XqaWQG7pv8M8xYGvCS/G/H8SGlVR5r9CMRWt8pSspxqrYFFQVYK5B0V9o+FdqnGALOby9LA7B2YIUdF+m5xtVh2Hj1BBTGrxJ7PJWDiq56I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4553
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: DP PHY compliance for JSL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIwLTA2LTA0IGF0IDIyOjA2ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgSnVuIDA0LCAyMDIwIGF0IDEwOjMzOjQ4QU0gKzA1MzAsIFZpZHlhIFNyaW5p
dmFzIHdyb3RlOg0KPiA+IFNpZ25lZC1vZmYtYnk6IEtoYWxlZCBBbG1haGFsbGF3eSA8a2hhbGVk
LmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWR5YSBTcmluaXZh
cyA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA0MA0KPiA+ICsrKysrKysrKysrKysrKysrKysr
KysrKysrLS0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgOCBk
ZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gPiBpbmRleCA3MjIzMzY3MTcxZDEuLjQ0NjYzZThhYzlhMSAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiBAQCAtNTQ3MCwy
MiArNTQ3MCwzMiBAQCBpbnRlbF9kcF9hdXRvdGVzdF9waHlfZGRpX2Rpc2FibGUoc3RydWN0DQo+
ID4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShkZXYpOw0KPiA+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0
b19pbnRlbF9jcnRjKGludGVsX2RpZ19wb3J0LQ0KPiA+ID5iYXNlLmJhc2UuY3J0Yyk7DQo+ID4g
IAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+ID4gLQl1MzIgdHJhbnNfZGRpX2Z1bmNf
Y3RsX3ZhbHVlLCB0cmFuc19jb25mX3ZhbHVlLA0KPiA+IGRwX3RwX2N0bF92YWx1ZTsNCj4gPiAr
CXUzMiB0cmFuc19kZGlfZnVuY19jdGxfdmFsdWUsIHRyYW5zX2NvbmZfdmFsdWUsDQo+ID4gZHBf
dHBfY3RsX3ZhbHVlLCB0cmFuc19kZGlfcG9ydF9tYXNrOw0KPiA+ICsJZW51bSBwb3J0IHBvcnQg
PSBpbnRlbF9kaWdfcG9ydC0+YmFzZS5wb3J0Ow0KPiA+ICsJaTkxNV9yZWdfdCBkcF90cF9yZWc7
DQo+ID4gKw0KPiA+ICsJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkgew0KPiA+ICsJCWRw
X3RwX3JlZyA9IERQX1RQX0NUTChwb3J0KTsNCj4gPiArCQl0cmFuc19kZGlfcG9ydF9tYXNrID0g
VFJBTlNfRERJX1BPUlRfTUFTSzsNCj4gPiArCX0gZWxzZSBpZiAoSVNfVElHRVJMQUtFKGRldl9w
cml2KSkgew0KPiA+ICsJCWRwX3RwX3JlZyA9IFRHTF9EUF9UUF9DVEwocGlwZSk7DQo+ID4gKwkJ
dHJhbnNfZGRpX3BvcnRfbWFzayA9IFRHTF9UUkFOU19ERElfUE9SVF9NQVNLOw0KPiA+ICsJfQ0K
PiA+ICANCj4gPiAgCXRyYW5zX2RkaV9mdW5jX2N0bF92YWx1ZSA9IGludGVsX2RlX3JlYWQoZGV2
X3ByaXYsDQo+ID4gIAkJCQkJCSBUUkFOU19ERElfRlVOQ19DVEwocGlwDQo+ID4gZSkpOw0KPiA+
ICAJdHJhbnNfY29uZl92YWx1ZSA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFBJUEVDT05GKHBp
cGUpKTsNCj4gPiAtCWRwX3RwX2N0bF92YWx1ZSA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFRH
TF9EUF9UUF9DVEwocGlwZSkpOw0KPiA+ICANCj4gPiArCWRwX3RwX2N0bF92YWx1ZSA9IGludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIGRwX3RwX3JlZyk7DQo+ID4gIAl0cmFuc19kZGlfZnVuY19jdGxf
dmFsdWUgJj0gfihUUkFOU19ERElfRlVOQ19FTkFCTEUgfA0KPiA+IC0JCQkJICAgICAgVEdMX1RS
QU5TX0RESV9QT1JUX01BU0spOw0KPiA+ICsJCQkJCXRyYW5zX2RkaV9wb3J0X21hc2spOw0KPiA+
ICAJdHJhbnNfY29uZl92YWx1ZSAmPSB+UElQRUNPTkZfRU5BQkxFOw0KPiA+ICAJZHBfdHBfY3Rs
X3ZhbHVlICY9IH5EUF9UUF9DVExfRU5BQkxFOw0KPiA+ICANCj4gPiAgCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBQSVBFQ09ORihwaXBlKSwgdHJhbnNfY29uZl92YWx1ZSk7DQo+ID4gIAlpbnRl
bF9kZV93cml0ZShkZXZfcHJpdiwgVFJBTlNfRERJX0ZVTkNfQ1RMKHBpcGUpLA0KPiA+ICAJCSAg
ICAgICB0cmFuc19kZGlfZnVuY19jdGxfdmFsdWUpOw0KPiA+IC0JaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIFRHTF9EUF9UUF9DVEwocGlwZSksIGRwX3RwX2N0bF92YWx1ZSk7DQo+ID4gKwlpbnRl
bF9kZV93cml0ZShkZXZfcHJpdiwgZHBfdHBfcmVnLCBkcF90cF9jdGxfdmFsdWUpOw0KPiANCj4g
QWxsIHRoaXMgYWQtaG9jIG1vZGVzZXQgY29kZSByZWFsbHkgc2hvdWxkIG5vdCBleGlzdC4gSXQn
cyBnb2luZyB0bw0KPiBoYXZlIGRpZmZlcmVudCBidWdzIHRoYW4gdGhlIG5vcm1hIG1vZGVzZXQg
cGF0aHMsIHNvIGNvbXBsaWFuY2UNCj4gdGVzdGluZw0KPiB0aGlzIHNwZWNpYWwgY29kZSBwcm92
ZXMgYWJzb2x1dGVseSBub3RoaW5nIGFib3V0IHRoZSBub3JtYWwgbW9kZXNldA0KPiBjb2RlLiBJ
TU8gc29tZW9uZSBuZWVkcyB0byB0YWtlIHVwIHRoZSB0YXNrIG9mIHJld3J0aXRpbmcgYWxsIHRo
aXMgdG8NCj4ganVzdCBwZXJmb3JtIG5vcm1hbCBtb2Rlc2V0cy4NCg0KQWdyZWUuIEkndmUganVz
dCBmb3VuZCB0aGF0IHdlIGdldCBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGFuZA0K
cGFuaWMgd2hlbiB3ZSB0cnkgdG8gYWNjZXNzIHRvX2ludGVsX2NydGMoaW50ZWxfZGlnX3BvcnQt
DQo+YmFzZS5iYXNlLmNydGMpLiBUaGlzIGlzIGJlY2F1c2Ugd2UgZGlkbid0IHJlYWxpemUgd2hl
biB3ZSBkZXZlbG9wZWQNCnRoZSBjb2RlIHRoYXQgdGVzdCBzY29wZSBoYXMgYW4gb3B0aW9uIHRv
IHNlbmQgUEhZIHRlc3QgcmVxdWVzdCBvbiBMb25nDQpIUEQuIEN1cnJlbnQgZGVzaW5nIGFzc3Vt
ZSBQSFkgdGVzdCByZXF1ZXN0IG9uIHNob3J0IEhQRC4gQmVjYXVzZSBvZg0KdGhhdCB3ZSBnb3Qg
dGhlIGZvbGxvd2luZyBlcnJvcg0KDQoNClsgIDEwNi44MTA4ODJdIGk5MTUgMDAwMDowMDowMi4w
OiBbZHJtOmludGVsX2hwZF9pcnFfaGFuZGxlciBbaTkxNV1dDQpkaWdpdGFsIGhwZCBvbiBbRU5D
T0RFUjozMDg6RERJIEZdIC0gbG9uZw0KWyAgMTA2LjgxMDkxNl0gaTkxNSAwMDAwOjAwOjAyLjA6
IFtkcm06aW50ZWxfaHBkX2lycV9oYW5kbGVyIFtpOTE1XV0NClJlY2VpdmVkIEhQRCBpbnRlcnJ1
cHQgb24gUElOIDkgLSBjbnQ6IDEwDQpbICAxMDYuODExMDI2XSBpOTE1IDAwMDA6MDA6MDIuMDog
W2RybTppbnRlbF9kcF9ocGRfcHVsc2UgW2k5MTVdXSBnb3QNCmhwZCBpcnEgb24gW0VOQ09ERVI6
MzA4OkRESSBGXSAtIGxvbmcNClsgIDEwNi44MTEwOTVdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJt
Omk5MTVfaG90cGx1Z193b3JrX2Z1bmMgW2k5MTVdXQ0KcnVubmluZyBlbmNvZGVyIGhvdHBsdWcg
ZnVuY3Rpb25zDQpbICAxMDYuODExMTg0XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTppOTE1X2hv
dHBsdWdfd29ya19mdW5jIFtpOTE1XV0NCkNvbm5lY3RvciBEUC0zIChwaW4gOSkgcmVjZWl2ZWQg
aG90cGx1ZyBldmVudC4gKHJldHJ5IDApDQpbICAxMDYuODExMjI3XSBpOTE1IDAwMDA6MDA6MDIu
MDogW2RybTppbnRlbF9kcF9kZXRlY3QgW2k5MTVdXQ0KW0NPTk5FQ1RPUjozMDk6RFAtM10NClsg
IDEwNi44MTEyOTJdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVsX3Bvd2VyX3dlbGxfZW5h
YmxlIFtpOTE1XV0NCmVuYWJsaW5nIFRDIGNvbGQgb2ZmDQpbICAxMDYuODExMzY1XSBpOTE1IDAw
MDA6MDA6MDIuMDogW2RybTp0Z2xfdGNfY29sZF9yZXF1ZXN0IFtpOTE1XV0gVEMNCmNvbGQgYmxv
Y2sgc3VjY2VlZGVkDQpbICAxMDYuODExNDg5XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTpfX2lu
dGVsX3RjX3BvcnRfbG9jayBbaTkxNV1dDQpQb3J0IEYvVEMjMzogVEMgcG9ydCBtb2RlIHJlc2V0
ICh0YnQtYWx0IC0+IGRwLWFsdCkNClsgIDEwNi44MTE2NjNdIGk5MTUgMDAwMDowMDowMi4wOiBb
ZHJtOmludGVsX3Bvd2VyX3dlbGxfZW5hYmxlIFtpOTE1XV0NCmVuYWJsaW5nIEFVWCBGIFRDMw0K
WyAgMTA2LjgxMjQ0OV0gW2RybTpkcm1fZHBfZHBjZF9yZWFkXSBBVVggRi9wb3J0IEY6IDB4MDAw
MDAgQVVYIC0+DQoocmV0PSAxNSkgMTIgMTQgMDQgODAgMDAgMDAgMDEgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDANClsgIDEwNi44MTI0ODRdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVsX2Rw
X3JlYWRfZHBjZCBbaTkxNV1dIERQQ0Q6DQoxMiAxNCAwNCA4MCAwMCAwMCAwMSAwMCAwMCAwMCAw
MCAwMCAwMCAwMCAwMA0KWyAgMTA2LjgxMzI2Nl0gW2RybTpkcm1fZHBfZHBjZF9yZWFkXSBBVVgg
Ri9wb3J0IEY6IDB4MDA0MDAgQVVYIC0+DQoocmV0PSAxMikgMDAgMDAgMDAgMDAgMDAgMDAgMDAg
MDAgMDAgMDAgMDAgMDANClsgIDEwNi44MTMyNzFdIFtkcm06ZHJtX2RwX3JlYWRfZGVzY10gRFAg
c2luazogT1VJIDAwLTAwLTAwIGRldi1JRCAgSFctDQpyZXYgMC4wIFNXLXJldiAwLjAgcXVpcmtz
IDB4MDAwMA0KWyAgMTA2LjgxMzg5MV0gW2RybTpkcm1fZHBfZHBjZF9yZWFkXSBBVVggRi9wb3J0
IEY6IDB4MDAyMDAgQVVYIC0+DQoocmV0PSAgMSkgMDENClsgIDEwNi44MTM5NDBdIGk5MTUgMDAw
MDowMDowMi4wOiBbZHJtOmludGVsX2RwX3ByaW50X3JhdGVzIFtpOTE1XV0NCnNvdXJjZSByYXRl
czogMTYyMDAwLCAyMTYwMDAsIDI3MDAwMCwgMzI0MDAwLCA0MzIwMDAsIDU0MDAwMCwgNjQ4MDAw
LA0KODEwMDAwDQpbICAxMDYuODEzOTc0XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF9k
cF9wcmludF9yYXRlcyBbaTkxNV1dDQpzaW5rIHJhdGVzOiAxNjIwMDAsIDI3MDAwMCwgNTQwMDAw
DQpbICAxMDYuODE0MDA3XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF9kcF9wcmludF9y
YXRlcyBbaTkxNV1dDQpjb21tb24gcmF0ZXM6IDE2MjAwMCwgMjcwMDAwLCA1NDAwMDANClsgIDEw
Ni44MTQ1NTBdIFtkcm06ZHJtX2RwX2RwY2RfcmVhZF0gQVVYIEYvcG9ydCBGOiAweDAwMDIxIEFV
WCAtPg0KKHJldD0gIDEpIDAwDQpbICAxMDYuODE0NTgzXSBpOTE1IDAwMDA6MDA6MDIuMDogW2Ry
bTppbnRlbF9kcF9kZXRlY3QgW2k5MTVdXQ0KW0VOQ09ERVI6MzA4OkRESSBGXSBNU1Qgc3VwcG9y
dDogcG9ydDogeWVzLCBzaW5rOiBubywgbW9kcGFyYW06IHllcw0KDQouLi4uLg0KDQpbICAxMDYu
OTI3MjkxXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF9kcF9jaGVja19zZXJ2aWNlX2ly
cQ0KW2k5MTVdXSBQSFlfUEFUVEVSTiB0ZXN0IHJlcXVlc3RlZA0KWyAgMTA2LjkyNzg5N10gW2Ry
bTpkcm1fZHBfZHBjZF9yZWFkXSBBVVggRi9wb3J0IEY6IDB4MDAyMTkgQVVYIC0+DQoocmV0PSAg
MSkgMGENClsgIDEwNi45Mjg1MDddIFtkcm06ZHJtX2RwX2RwY2RfcmVhZF0gQVVYIEYvcG9ydCBG
OiAweDAwMjIwIEFVWCAtPg0KKHJldD0gIDEpIDA0DQpbICAxMDYuOTI5MTQzXSBbZHJtOmRybV9k
cF9kcGNkX3JlYWRdIEFVWCBGL3BvcnQgRjogMHgwMDI0OCBBVVggLT4NCihyZXQ9ICAxKSAwMA0K
WyAgMTA2LjkyOTgyNF0gW2RybTpkcm1fZHBfZHBjZF9yZWFkXSBBVVggRi9wb3J0IEY6IDB4MDAy
MDIgQVVYIC0+DQoocmV0PSAgNikgMDAgMDAgODAgMDAgMDAgMDANClsgIDEwNi45Mjk4MzBdIEJV
Rzoga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSwgYWRkcmVzczoNCjAwMDAwMDAwMDAw
MDA1NzgNClsgIDEwNi45MzY4MDldICNQRjogc3VwZXJ2aXNvciByZWFkIGFjY2VzcyBpbiBrZXJu
ZWwgbW9kZQ0KWyAgMTA2Ljk0MTk1M10gI1BGOiBlcnJvcl9jb2RlKDB4MDAwMCkgLSBub3QtcHJl
c2VudCBwYWdlDQpbICAxMDYuOTQ3MDgyXSBQR0QgMCBQNEQgMCANClsgIDEwNi45NDk2NDNdIE9v
cHM6IDAwMDAgWyMxXSBQUkVFTVBUIFNNUCBOT1BUSQ0KWyAgMTA2Ljk1NDAxMF0gQ1BVOiA2IFBJ
RDogMjAwIENvbW06IGt3b3JrZXIvNjoyIE5vdCB0YWludGVkIDUuNy4wLXJjNy0NCkNJLUNJX0RS
TV84NTY2KyAjNQ0KWyAgMTA2Ljk3NTI1MV0gV29ya3F1ZXVlOiBldmVudHMgaTkxNV9ob3RwbHVn
X3dvcmtfZnVuYyBbaTkxNV0NClsgIDEwNi45ODA4ODddIFJJUDogMDAxMDppbnRlbF9kcF9wcm9j
ZXNzX3BoeV9yZXF1ZXN0KzB4OTQvMHg1YTAgW2k5MTVdDQpbICAxMDYuOTg3MjM5XSBDb2RlOiA0
OCA4MyBjNCAyMCA1YiA1ZCA0MSA1YyA0MSA1ZCA0MSA1ZSA0MSA1ZiBjMyA0OCA4ZA0KNzQgMjQg
MTIgNGMgODkgZjcgZTggM2EgM2UgMDAgMDAgNDkgOGIgODYgMjggZmYgZmYgZmYgNDkgOGIgOWUg
ZDggZmUgZmYNCmZmIDw0OD4gNjMgODAgNzggMDUgMDAgMDAgOGIgOTMgNTQgMGQgMDAgMDAgNDgg
OGQgYWIgZTggMGUgMDAgMDAgNDggODkNClsgIDEwNy4wMDU4OTBdIFJTUDogMDAxODpmZmZmYzkw
MDAwNDZmYjIwIEVGTEFHUzogMDAwMTAyNDYNCg0KSSBwbGFuIHRvIHRlbXBvcmFyaWx5IGZpeCB0
aGlzIGlzc3VlIGJ5IGlnbm9yZWluZyBzY29wZSByZXF1ZXN0IG9uIGxvbmcNCkhQRCwgdW50aWwg
d2UgaGF2ZSBtb2Rlc2V0IGJhc2VkIGltcGxlbWVudGF0aW9uLg0KDQo+ID4gIH0NCj4gPiAgDQo+
ID4gIHN0YXRpYyB2b2lkDQo+ID4gQEAgLTU0OTcsMjAgKzU1MDcsMjggQEAgaW50ZWxfZHBfYXV0
b3Rlc3RfcGh5X2RkaV9lbmFibGUoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLCB1aW50
OF90IGxhbmVfY250KQ0KPiA+ICAJZW51bSBwb3J0IHBvcnQgPSBpbnRlbF9kaWdfcG9ydC0+YmFz
ZS5wb3J0Ow0KPiA+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGlu
dGVsX2RpZ19wb3J0LQ0KPiA+ID5iYXNlLmJhc2UuY3J0Yyk7DQo+ID4gIAllbnVtIHBpcGUgcGlw
ZSA9IGNydGMtPnBpcGU7DQo+ID4gLQl1MzIgdHJhbnNfZGRpX2Z1bmNfY3RsX3ZhbHVlLCB0cmFu
c19jb25mX3ZhbHVlLA0KPiA+IGRwX3RwX2N0bF92YWx1ZTsNCj4gPiArCXUzMiB0cmFuc19kZGlf
ZnVuY19jdGxfdmFsdWUsIHRyYW5zX2NvbmZfdmFsdWUsDQo+ID4gZHBfdHBfY3RsX3ZhbHVlLCB0
cmFuc19kZGlfc2VsX3BvcnQ7DQo+ID4gKwlpOTE1X3JlZ190IGRwX3RwX3JlZzsNCj4gPiArDQo+
ID4gKwlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpKSB7DQo+ID4gKwkJZHBfdHBfcmVnID0g
RFBfVFBfQ1RMKHBvcnQpOw0KPiA+ICsJCXRyYW5zX2RkaV9zZWxfcG9ydCA9IFRSQU5TX0RESV9T
RUxFQ1RfUE9SVChwb3J0KTsNCj4gPiArCX0gZWxzZSBpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2
KSkgew0KPiA+ICsJCWRwX3RwX3JlZyA9IFRHTF9EUF9UUF9DVEwocGlwZSk7DQo+ID4gKwkJdHJh
bnNfZGRpX3NlbF9wb3J0ID0gVEdMX1RSQU5TX0RESV9TRUxFQ1RfUE9SVChwb3J0KTsNCj4gPiAr
CX0NCj4gPiAgDQo+ID4gIAl0cmFuc19kZGlfZnVuY19jdGxfdmFsdWUgPSBpbnRlbF9kZV9yZWFk
KGRldl9wcml2LA0KPiA+ICAJCQkJCQkgVFJBTlNfRERJX0ZVTkNfQ1RMKHBpcA0KPiA+IGUpKTsN
Cj4gPiAgCXRyYW5zX2NvbmZfdmFsdWUgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQSVBFQ09O
RihwaXBlKSk7DQo+ID4gIAlkcF90cF9jdGxfdmFsdWUgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2
LCBUR0xfRFBfVFBfQ1RMKHBpcGUpKTsNCj4gPiAtDQo+ID4gIAl0cmFuc19kZGlfZnVuY19jdGxf
dmFsdWUgfD0gVFJBTlNfRERJX0ZVTkNfRU5BQkxFIHwNCj4gPiAtCQkJCSAgICBUR0xfVFJBTlNf
RERJX1NFTEVDVF9QT1JUKHBvcnQpOw0KPiA+ICsJCQkJICAgIHRyYW5zX2RkaV9zZWxfcG9ydDsN
Cj4gPiAgCXRyYW5zX2NvbmZfdmFsdWUgfD0gUElQRUNPTkZfRU5BQkxFOw0KPiA+ICAJZHBfdHBf
Y3RsX3ZhbHVlIHw9IERQX1RQX0NUTF9FTkFCTEU7DQo+ID4gIA0KPiA+ICAJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIFBJUEVDT05GKHBpcGUpLCB0cmFuc19jb25mX3ZhbHVlKTsNCj4gPiAtCWlu
dGVsX2RlX3dyaXRlKGRldl9wcml2LCBUR0xfRFBfVFBfQ1RMKHBpcGUpLCBkcF90cF9jdGxfdmFs
dWUpOw0KPiA+ICsJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIGRwX3RwX3JlZywgZHBfdHBfY3Rs
X3ZhbHVlKTsNCj4gPiAgCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBUUkFOU19ERElfRlVOQ19D
VEwocGlwZSksDQo+ID4gIAkJICAgICAgIHRyYW5zX2RkaV9mdW5jX2N0bF92YWx1ZSk7DQo+ID4g
IH0NCj4gPiBAQCAtNTU1Nyw2ICs1NTc1LDcgQEAgc3RhdGljIHU4DQo+ID4gaW50ZWxfZHBfYXV0
b3Rlc3RfcGh5X3BhdHRlcm4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiAgc3RhdGlj
IHZvaWQgaW50ZWxfZHBfaGFuZGxlX3Rlc3RfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZHANCj4gPiAq
aW50ZWxfZHApDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
ZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSBpOTE1Ow0KPiA+ICAJdTggcmVzcG9uc2UgPSBEUF9URVNUX05BSzsNCj4gPiAgCXU4
IHJlcXVlc3QgPSAwOw0KPiA+ICAJaW50IHN0YXR1czsNCj4gPiBAQCAtNTU4Miw2ICs1NjAxLDEx
IEBAIHN0YXRpYyB2b2lkDQo+ID4gaW50ZWxfZHBfaGFuZGxlX3Rlc3RfcmVxdWVzdChzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICAJCXJlc3BvbnNlID0gaW50ZWxfZHBfYXV0b3Rlc3Rf
ZWRpZChpbnRlbF9kcCk7DQo+ID4gIAkJYnJlYWs7DQo+ID4gIAljYXNlIERQX1RFU1RfTElOS19Q
SFlfVEVTVF9QQVRURVJOOg0KPiA+ICsJCWlmICghSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpIHx8
DQo+ID4gIUlTX1RJR0VSTEFLRShkZXZfcHJpdikpIHsNCj4gPiArCQkJZHJtX2RiZ19rbXMoJmk5
MTUtPmRybSwNCj4gPiArCQkJCSJQSFkgY29tcGxpYW5jZSBmb3IgcGxhdGZvcm0gbm90DQo+ID4g
c3VwcG9ydGVkXG4iKTsNCj4gPiArCQkJcmV0dXJuOw0KPiA+ICsJCX0NCj4gPiAgCQlkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLCAiUEhZX1BBVFRFUk4gdGVzdA0KPiA+IHJlcXVlc3RlZFxuIik7DQo+
ID4gIAkJcmVzcG9uc2UgPSBpbnRlbF9kcF9hdXRvdGVzdF9waHlfcGF0dGVybihpbnRlbF9kcCk7
DQo+ID4gIAkJYnJlYWs7DQo+ID4gLS0gDQo+ID4gMi43LjQNCj4gPiANCj4gPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4gDQo+
IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
