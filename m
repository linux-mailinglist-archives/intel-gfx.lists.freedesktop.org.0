Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA561153BF8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 00:31:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8355D6F97F;
	Wed,  5 Feb 2020 23:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A0E66E26F;
 Wed,  5 Feb 2020 23:31:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 15:31:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,407,1574150400"; d="scan'208";a="264404697"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga002.fm.intel.com with ESMTP; 05 Feb 2020 15:31:48 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 5 Feb 2020 15:31:48 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 5 Feb 2020 15:31:45 -0800
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 5 Feb 2020 15:31:45 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 5 Feb 2020 15:31:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bjz1j4m7+dWYqpZIUajDWTZv+PC7maiTld/C3W4LQKSkWbHJz6WC/gpbAqromjWuVFcZLc/pm0ADqQKCRA6Y7q/wtYsxpwq92bT/sgb8y0U2KEgVIVyWOf4gt8sDeu4Divrxka9tmLTX5zunAXpUNhIaCqvQzCU3umWuEZ9I27m5pfztJInVpLdzJvGcnK6HoLjU3LGNo7X6pdcEuRwp0ytCL5Wq/xLibhh6itcWrcFqYFFDOWlz/a5zwz3RYZD4EmzpqD0u5ILq4dv1Kwk2mZzTJhAbsM3Zt2bnVz5w476lqHXm/P5/63Jk2+c7XuJvVc+srXCDM2RhK9su4ozEoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LehGm/Qg8U7v2/yXtel+NAUW4v63qcYr5A2UJL0X4nc=;
 b=KVBzrvBH7iMOQZPuIYurCODFBxAiVEJH2tXJr9x+BmW+Yw3tcsbAsfjNfySY/ogiBKBQl3rxAyIJl74dYUhji/hM42vzkZ7B3L9dM3h9cDCMYWJLuHX4k1Afa52d8E7wPrCekfm0bm15PAwtKxIz96tKqpqxirIAr9ODsa8tDTUGKrEATdAdCfVT3lTJOu+s6MLhQ+2Ku5aES+NWbbL60gJmoPSolRScy8y8vnv04tiDDfWhqMpf03tqAxVaFUTefwV1tzPAZtEDUtV2azFR6R1oukhRiZIcjlhNiAR/hwNhhehdsWoS5M31v/W+HQW8tqmfT8BqVJNWiXKPSiQjXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LehGm/Qg8U7v2/yXtel+NAUW4v63qcYr5A2UJL0X4nc=;
 b=V+qnIlGBUBNuAqEczvWWc+bJizAhHpArmWER5Wi6GA8EgqxQtPaH1k8I/ovBEhNfbqyb0qCpfmDjfwTLKFtJCrDIOkLdyA12Cu0R/Oye5kWvPxXNxqUgHB7GAINm/l8bjkqmghBEct1/AvkXTXaWningqDXT6wyIXJ7Lvzo7wwc=
Received: from BL0PR11MB3410.namprd11.prod.outlook.com (20.177.206.225) by
 BL0PR11MB3267.namprd11.prod.outlook.com (10.167.235.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.29; Wed, 5 Feb 2020 23:31:13 +0000
Received: from BL0PR11MB3410.namprd11.prod.outlook.com
 ([fe80::492c:276f:613a:54bf]) by BL0PR11MB3410.namprd11.prod.outlook.com
 ([fe80::492c:276f:613a:54bf%6]) with mapi id 15.20.2707.020; Wed, 5 Feb 2020
 23:31:13 +0000
From: "Li, Juston" <juston.li@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v5 i-g-t 2/2] tests/kms_getfb: Add getfb2 tests
Thread-Index: AQHV0XoquaiYwy/ylkWOVxTTqD0Y2qgNVbuA
Date: Wed, 5 Feb 2020 23:31:13 +0000
Message-ID: <828af77119fdb58e0d7d93c85d0ee8dd29a03cb0.camel@intel.com>
References: <20200122231655.9702-1-juston.li@intel.com>
 <20200122231655.9702-2-juston.li@intel.com>
In-Reply-To: <20200122231655.9702-2-juston.li@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=juston.li@intel.com; 
x-originating-ip: [134.134.139.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 18f4bed8-f434-4aba-55ca-08d7aa937d7d
x-ms-traffictypediagnostic: BL0PR11MB3267:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB3267C51288BE5F60EB17B0AAFD020@BL0PR11MB3267.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:901;
x-forefront-prvs: 0304E36CA3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(39860400002)(346002)(366004)(136003)(396003)(199004)(189003)(6512007)(4326008)(66574012)(8676002)(186003)(81166006)(81156014)(966005)(316002)(2616005)(66446008)(64756008)(66556008)(110136005)(478600001)(66476007)(76116006)(91956017)(8936002)(66946007)(5660300002)(6506007)(2906002)(36756003)(6486002)(71200400001)(86362001)(54906003)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR11MB3267;
 H:BL0PR11MB3410.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9/nxwoz/wnyPQohdAMahjqk2CAWWI2zhMikfX9+S2m2clUgqV7ilgiEGUnLdy9PrFnjM2BKxaBoWvBKRPNgZ9kcrZ310CweTUJ2/ULK/+7WbWggOjCXyi+c8QF7lEofA7CAvng02+/Zq4x6PLlCVS9t2O0Z5PUicdJ+uOiOKM238c666fuDc622jjp4XIino6A2+RnMnb3cicy7kSZaU5+9kVElIwFFBaF3m2rhSPbIj8sj5Urc5qwzZ+a9i/L7Io6+8O5FmPYIC1hXnaa/5VDrDe2k4rXomckgVuPkAphZP1MX92H8pPKhyMIzjp2pYRbUOL5RWzfETUgNxySxIFcXmhTLdOAwpO+EfZc2ulwTX/lAXaR8Wjl2JDbvtqtSRTKBavMqaN8SgQvt7B7+MywemJsqFer5w4CBEyImFrM/jho8y3Y1iem+IZvczRGNJPGFQHux5NqxMlNriALZJzCAMJ279L/fzaEMahNlN5LiPjclHn3fw93TSXVsXzoiRrhAEtc6IJugTzO8mdHnSsg==
x-ms-exchange-antispam-messagedata: zW+FeXrImcaPtDLp8qy1KwWJdMKQOTSqjYaxC20hbXGJuFVOIvGYF+MQuIrpcsVWEnVUxd69m656OSIl5OSEHqnW1PdXPltL1XM/mrmX+nw7KtpO9FeI+iWG4p73gmwC9uR+eI8EG8nUP6WOiA/GCQ==
Content-ID: <4909F889F71C5F409FB6F3BA67C07172@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 18f4bed8-f434-4aba-55ca-08d7aa937d7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2020 23:31:13.7635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /7phYIwnZ1BKCL6UFnpDJU/9QMGL3NgIeBBvhsP/z/g6WddZ4HHwW0bjFRIcGjEepDpny6YgREniKzxqAGyu+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3267
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 i-g-t 2/2] tests/kms_getfb: Add getfb2
 tests
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
Cc: "daniels@collabora.com" <daniels@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTAxLTIyIGF0IDE1OjE2IC0wODAwLCBKdXN0b24gTGkgd3JvdGU6DQo+IEZy
b206IERhbmllbCBTdG9uZSA8ZGFuaWVsc0Bjb2xsYWJvcmEuY29tPg0KPiANCj4gTWlycm9yaW5n
IGFkZGZiMiwgYWRkIHRlc3RzIGZvciB0aGUgbmV3IGlvY3RsIHdoaWNoIHdpbGwgcmV0dXJuIHVz
DQo+IGluZm9ybWF0aW9uIGFib3V0IGZyYW1lYnVmZmVycyBjb250YWluaW5nIG11bHRpcGxlIGJ1
ZmZlcnMsIGFzIHdlbGwNCj4gYXMNCj4gbW9kaWZpZXJzLg0KPiANCj4gQ2hhbmdlcyBzaW5jZSB2
NDoNCj4gLSBSZW1vdmUgdW5uZWNlc3NhcnkgYm8gY3JlYXRpb24gZm9yIGdldGZiMi1oYW5kbGUt
Y2xvc2VkIHN1YnRlc3QNCj4gDQo+IENoYW5nZXMgc2luY2UgdjM6DQo+IC0gQWRkIHN1YnRlc3Rz
IHRvIGVuc3VyZSBoYW5kbGVzIGFyZW4ndCByZXR1cm5lZCBmb3Igbm9uLXJvb3QgYW5kDQo+ICAg
bm9uLW1hc3RlciBjYWxsZXJzDQo+IA0KPiBDaGFuZ2VzIHNpbmNlIHYxOg0KPiAtIEFkZCB0ZXN0
IHRoYXQgdXNlcyBnZXRmYjIgb3V0cHV0IHRvIGNhbGwgYWRkZmIyIGFzIHN1Z2dlc3RlZCBieQ0K
PiBWaWxsZQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFN0b25lIDxkYW5pZWxzQGNvbGxh
Ym9yYS5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEp1c3RvbiBMaSA8anVzdG9uLmxpQGludGVsLmNv
bT4NCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IC0tLQ0KPiAgdGVzdHMva21zX2dldGZiLmMgfCAxNTYNCj4gKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQs
IDE1NiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvdGVzdHMva21zX2dldGZiLmMg
Yi90ZXN0cy9rbXNfZ2V0ZmIuYw0KPiBpbmRleCAyOTI2NzlhZDNlYjkuLmUwNDZhNDNhMTU1NSAx
MDA2NDQNCj4gLS0tIGEvdGVzdHMva21zX2dldGZiLmMNCj4gKysrIGIvdGVzdHMva21zX2dldGZi
LmMNCj4gQEAgLTQwLDYgKzQwLDggQEANCj4gICNpbmNsdWRlICJkcm0uaCINCj4gICNpbmNsdWRl
ICJkcm1fZm91cmNjLmgiDQo+ICANCj4gKyNpbmNsdWRlICJpZ3RfZGV2aWNlLmgiDQo+ICsNCj4g
IHN0YXRpYyBib29sIGhhc19nZXRmYl9pZmFjZShpbnQgZmQpDQo+ICB7DQo+ICAJc3RydWN0IGRy
bV9tb2RlX2ZiX2NtZCBhcmcgPSB7IH07DQo+IEBAIC0yNTIsNiArMjU0LDE1NCBAQCBzdGF0aWMg
dm9pZCB0ZXN0X2R1cGxpY2F0ZV9oYW5kbGVzKGludCBmZCkNCj4gIAl9DQo+ICB9DQo+ICANCj4g
K3N0YXRpYyB2b2lkIHRlc3RfZ2V0ZmIyKGludCBmZCkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX21v
ZGVfZmJfY21kMiBhZGRfYmFzaWMgPSB7fTsNCj4gKw0KPiArCWlndF9maXh0dXJlIHsNCj4gKwkJ
c3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgZ2V0ID0ge307DQo+ICsNCj4gKwkJYWRkX2Jhc2ljLndp
ZHRoID0gMTAyNDsNCj4gKwkJYWRkX2Jhc2ljLmhlaWdodCA9IDEwMjQ7DQo+ICsJCWFkZF9iYXNp
Yy5waXhlbF9mb3JtYXQgPSBEUk1fRk9STUFUX1hSR0I4ODg4Ow0KPiArCQlhZGRfYmFzaWMucGl0
Y2hlc1swXSA9IDEwMjQqNDsNCj4gKwkJYWRkX2Jhc2ljLmhhbmRsZXNbMF0gPQ0KPiBpZ3RfY3Jl
YXRlX2JvX3dpdGhfZGltZW5zaW9ucyhmZCwgMTAyNCwgMTAyNCwNCj4gKwkJCURSTV9GT1JNQVRf
WFJHQjg4ODgsIDAsIDAsIE5VTEwsIE5VTEwsIE5VTEwpOw0KPiArCQlpZ3RfYXNzZXJ0KGFkZF9i
YXNpYy5oYW5kbGVzWzBdKTsNCj4gKwkJZG9faW9jdGwoZmQsIERSTV9JT0NUTF9NT0RFX0FEREZC
MiwgJmFkZF9iYXNpYyk7DQo+ICsNCj4gKwkJZ2V0LmZiX2lkID0gYWRkX2Jhc2ljLmZiX2lkOw0K
PiArCQlkb19pb2N0bChmZCwgRFJNX0lPQ1RMX01PREVfR0VURkIyLCAmZ2V0KTsNCj4gKwkJaWd0
X2Fzc2VydF9uZXFfdTMyKGdldC5oYW5kbGVzWzBdLCAwKTsNCj4gKwkJZ2VtX2Nsb3NlKGZkLCBn
ZXQuaGFuZGxlc1swXSk7DQo+ICsJfQ0KPiArDQo+ICsJaWd0X3N1YnRlc3QoImdldGZiMi1oYW5k
bGUtemVybyIpIHsNCj4gKwkJc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgZ2V0ID0ge307DQo+ICsJ
CWRvX2lvY3RsX2VycihmZCwgRFJNX0lPQ1RMX01PREVfR0VURkIyLCAmZ2V0LCBFTk9FTlQpOw0K
PiArCX0NCj4gKw0KPiArCWlndF9zdWJ0ZXN0KCJnZXRmYjItaGFuZGxlLWNsb3NlZCIpIHsNCj4g
KwkJc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgYWRkID0gYWRkX2Jhc2ljOw0KPiArCQlzdHJ1Y3Qg
ZHJtX21vZGVfZmJfY21kMiBnZXQgPSB7IH07DQo+ICsNCj4gKwkJZG9faW9jdGwoZmQsIERSTV9J
T0NUTF9NT0RFX0FEREZCMiwgJmFkZCk7DQo+ICsJCWRvX2lvY3RsKGZkLCBEUk1fSU9DVExfTU9E
RV9STUZCLCAmYWRkLmZiX2lkKTsNCj4gKw0KPiArCQlnZXQuZmJfaWQgPSBhZGQuZmJfaWQ7DQo+
ICsJCWRvX2lvY3RsX2VycihmZCwgRFJNX0lPQ1RMX01PREVfR0VURkIyLCAmZ2V0LCBFTk9FTlQp
Ow0KPiArCX0NCj4gKw0KPiArCWlndF9zdWJ0ZXN0KCJnZXRmYjItaGFuZGxlLW5vdC1mYiIpIHsN
Cj4gKwkJc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgZ2V0ID0geyAuZmJfaWQgPQ0KPiBnZXRfYW55
X3Byb3BfaWQoZmQpIH07DQo+ICsJCWlndF9yZXF1aXJlKGdldC5mYl9pZCA+IDApOw0KPiArCQlk
b19pb2N0bF9lcnIoZmQsIERSTV9JT0NUTF9NT0RFX0dFVEZCMiwgJmdldCwgRU5PRU5UKTsNCj4g
Kwl9DQo+ICsNCj4gKwlpZ3Rfc3VidGVzdCgiZ2V0ZmIyLWFjY2VwdC1jY3MiKSB7DQo+ICsJCXN0
cnVjdCBkcm1fbW9kZV9mYl9jbWQyIGFkZF9jY3MgPSB7IH07DQo+ICsJCXN0cnVjdCBkcm1fbW9k
ZV9mYl9jbWQyIGdldCA9IHsgfTsNCj4gKwkJaW50IGk7DQo+ICsNCj4gKwkJZ2V0X2Njc19mYihm
ZCwgJmFkZF9jY3MpOw0KPiArCQlpZ3RfcmVxdWlyZShhZGRfY2NzLmZiX2lkICE9IDApOw0KPiAr
CQlnZXQuZmJfaWQgPSBhZGRfY2NzLmZiX2lkOw0KPiArCQlkb19pb2N0bChmZCwgRFJNX0lPQ1RM
X01PREVfR0VURkIyLCAmZ2V0KTsNCj4gKw0KPiArCQlpZ3RfYXNzZXJ0X2VxX3UzMihnZXQud2lk
dGgsIGFkZF9jY3Mud2lkdGgpOw0KPiArCQlpZ3RfYXNzZXJ0X2VxX3UzMihnZXQuaGVpZ2h0LCBh
ZGRfY2NzLmhlaWdodCk7DQo+ICsJCWlndF9hc3NlcnQoZ2V0LmZsYWdzICYgRFJNX01PREVfRkJf
TU9ESUZJRVJTKTsNCj4gKw0KPiArCQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShnZXQuaGFu
ZGxlcyk7IGkrKykgew0KPiArCQkJaWd0X2Fzc2VydF9lcV91MzIoZ2V0LnBpdGNoZXNbaV0sDQo+
IGFkZF9jY3MucGl0Y2hlc1tpXSk7DQo+ICsJCQlpZ3RfYXNzZXJ0X2VxX3UzMihnZXQub2Zmc2V0
c1tpXSwNCj4gYWRkX2Njcy5vZmZzZXRzW2ldKTsNCj4gKwkJCWlmIChhZGRfY2NzLmhhbmRsZXNb
aV0gIT0gMCkgew0KPiArCQkJCWlndF9hc3NlcnRfbmVxX3UzMihnZXQuaGFuZGxlc1tpXSwgMCk7
DQo+ICsJCQkJaWd0X2Fzc2VydF9uZXFfdTMyKGdldC5oYW5kbGVzW2ldLA0KPiArCQkJCQkJICAg
YWRkX2Njcy5oYW5kbGVzW2ldKTsNCj4gKwkJCQlpZ3RfYXNzZXJ0X2VxX3U2NChnZXQubW9kaWZp
ZXJbaV0sDQo+ICsJCQkJCQkgIGFkZF9jY3MubW9kaWZpZXJbaV0pOw0KPiArCQkJfSBlbHNlIHsN
Cj4gKwkJCQlpZ3RfYXNzZXJ0X2VxX3UzMihnZXQuaGFuZGxlc1tpXSwgMCk7DQo+ICsJCQkJaWd0
X2Fzc2VydF9lcV91NjQoZ2V0Lm1vZGlmaWVyW2ldLCAwKTsNCj4gKwkJCX0NCj4gKwkJfQ0KPiAr
CQlpZ3RfYXNzZXJ0X2VxX3UzMihnZXQuaGFuZGxlc1swXSwgZ2V0LmhhbmRsZXNbMV0pOw0KPiAr
DQo+ICsJCWRvX2lvY3RsKGZkLCBEUk1fSU9DVExfTU9ERV9STUZCLCAmZ2V0LmZiX2lkKTsNCj4g
KwkJZ2VtX2Nsb3NlKGZkLCBhZGRfY2NzLmhhbmRsZXNbMF0pOw0KPiArCQlnZW1fY2xvc2UoZmQs
IGdldC5oYW5kbGVzWzBdKTsNCj4gKwl9DQo+ICsNCj4gKwlpZ3Rfc3VidGVzdCgiZ2V0ZmIyLWlu
dG8tYWRkZmIyIikgew0KPiArCQlzdHJ1Y3QgZHJtX21vZGVfZmJfY21kMiBjbWQgPSB7IH07DQo+
ICsNCj4gKwkJY21kLmZiX2lkID0gYWRkX2Jhc2ljLmZiX2lkOw0KPiArCQlkb19pb2N0bChmZCwg
RFJNX0lPQ1RMX01PREVfR0VURkIyLCAmY21kKTsNCj4gKwkJZG9faW9jdGwoZmQsIERSTV9JT0NU
TF9NT0RFX0FEREZCMiwgJmNtZCk7DQo+ICsNCj4gKwkJZG9faW9jdGwoZmQsIERSTV9JT0NUTF9N
T0RFX1JNRkIsICZjbWQuZmJfaWQpOw0KPiArCQlnZW1fY2xvc2UoZmQsIGNtZC5oYW5kbGVzWzBd
KTsNCj4gKwl9DQo+ICsNCj4gKwlpZ3RfZml4dHVyZSB7DQo+ICsJCWRvX2lvY3RsKGZkLCBEUk1f
SU9DVExfTU9ERV9STUZCLCAmYWRkX2Jhc2ljLmZiX2lkKTsNCj4gKwkJZ2VtX2Nsb3NlKGZkLCBh
ZGRfYmFzaWMuaGFuZGxlc1swXSk7DQo+ICsJfQ0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCB0
ZXN0X2hhbmRsZV9wcm90ZWN0aW9uKHZvaWQpIHsNCj4gKwlpbnQgbm9uX21hc3Rlcl9mZDsNCj4g
KwlzdHJ1Y3QgZHJtX21vZGVfZmJfY21kMiBub25fbWFzdGVyX2FkZCA9IHt9Ow0KPiArDQo+ICsJ
aWd0X2ZpeHR1cmUgew0KPiArCQlub25fbWFzdGVyX2ZkID0gZHJtX29wZW5fZHJpdmVyKERSSVZF
Ul9BTlkpOw0KPiArDQo+ICsJCW5vbl9tYXN0ZXJfYWRkLndpZHRoID0gMTAyNDsNCj4gKwkJbm9u
X21hc3Rlcl9hZGQuaGVpZ2h0ID0gMTAyNDsNCj4gKwkJbm9uX21hc3Rlcl9hZGQucGl4ZWxfZm9y
bWF0ID0gRFJNX0ZPUk1BVF9YUkdCODg4ODsNCj4gKwkJbm9uX21hc3Rlcl9hZGQucGl0Y2hlc1sw
XSA9IDEwMjQqNDsNCj4gKwkJbm9uX21hc3Rlcl9hZGQuaGFuZGxlc1swXSA9DQo+IGlndF9jcmVh
dGVfYm9fd2l0aF9kaW1lbnNpb25zKG5vbl9tYXN0ZXJfZmQsIDEwMjQsIDEwMjQsDQo+ICsJCQlE
Uk1fRk9STUFUX1hSR0I4ODg4LCAwLCAwLCBOVUxMLCBOVUxMLCBOVUxMKTsNCj4gKwkJaWd0X3Jl
cXVpcmUobm9uX21hc3Rlcl9hZGQuaGFuZGxlc1swXSAhPSAwKTsNCj4gKwkJZG9faW9jdGwobm9u
X21hc3Rlcl9mZCwgRFJNX0lPQ1RMX01PREVfQURERkIyLA0KPiAmbm9uX21hc3Rlcl9hZGQpOw0K
PiArCX0NCj4gKw0KPiArCWlndF9zdWJ0ZXN0KCJnZXRmYi1oYW5kbGUtcHJvdGVjdGlvbiIpIHsN
Cj4gKwkJc3RydWN0IGRybV9tb2RlX2ZiX2NtZCBnZXQgPSB7IC5mYl9pZCA9DQo+IG5vbl9tYXN0
ZXJfYWRkLmZiX2lkfTsNCj4gKw0KPiArCQlpZ3RfZm9yayhjaGlsZCwgMSkgew0KPiArCQkJaWd0
X2Ryb3Bfcm9vdCgpOw0KPiArDQo+ICsJCQlkb19pb2N0bChub25fbWFzdGVyX2ZkLCBEUk1fSU9D
VExfTU9ERV9HRVRGQiwNCj4gJmdldCk7DQo+ICsJCQkvKiBpb2N0bCBzdWNjZWVkcyBidXQgaGFu
ZGxlIHNob3VsZCBiZSAwICovDQo+ICsJCQlpZ3RfYXNzZXJ0X2VxX3UzMihnZXQuaGFuZGxlLCAw
KTsNCj4gKwkJfQ0KPiArCQlpZ3Rfd2FpdGNoaWxkcmVuKCk7DQo+ICsJfQ0KPiArDQo+ICsJaWd0
X3N1YnRlc3QoImdldGZiMi1oYW5kbGUtcHJvdGVjdGlvbiIpIHsNCj4gKwkJc3RydWN0IGRybV9t
b2RlX2ZiX2NtZDIgZ2V0ID0geyAuZmJfaWQgPQ0KPiBub25fbWFzdGVyX2FkZC5mYl9pZH07DQo+
ICsJCWludCBpOw0KPiArDQo+ICsJCWlndF9mb3JrKGNoaWxkLCAxKSB7DQo+ICsJCQlpZ3RfZHJv
cF9yb290KCk7DQo+ICsNCj4gKwkJCWRvX2lvY3RsKG5vbl9tYXN0ZXJfZmQsIERSTV9JT0NUTF9N
T0RFX0dFVEZCMiwNCj4gJmdldCk7DQo+ICsJCQkvKiBpb2N0bCBzdWNjZWVkcyBidXQgaGFuZGxl
cyBzaG91bGQgYmUgMCAqLw0KPiArCQkJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoZ2V0Lmhh
bmRsZXMpOyBpKyspIHsNCj4gKwkJCQlpZ3RfYXNzZXJ0X2VxX3UzMihnZXQuaGFuZGxlc1tpXSwg
MCk7DQo+ICsJCQl9DQo+ICsJCX0NCj4gKwkJaWd0X3dhaXRjaGlsZHJlbigpOw0KPiArCX0NCj4g
Kw0KPiArCWlndF9maXh0dXJlIHsNCj4gKwkJZG9faW9jdGwobm9uX21hc3Rlcl9mZCwgRFJNX0lP
Q1RMX01PREVfUk1GQiwNCj4gJm5vbl9tYXN0ZXJfYWRkLmZiX2lkKTsNCj4gKwkJZ2VtX2Nsb3Nl
KG5vbl9tYXN0ZXJfZmQsIG5vbl9tYXN0ZXJfYWRkLmhhbmRsZXNbMF0pOw0KPiArCX0NCj4gK30N
Cj4gKw0KPiAgaWd0X21haW4NCj4gIHsNCj4gIAlpbnQgZmQ7DQo+IEBAIC0yNjcsNiArNDE3LDEy
IEBAIGlndF9tYWluDQo+ICAJaWd0X3N1YnRlc3RfZ3JvdXANCj4gIAkJdGVzdF9kdXBsaWNhdGVf
aGFuZGxlcyhmZCk7DQo+ICANCj4gKwlpZ3Rfc3VidGVzdF9ncm91cA0KPiArCQl0ZXN0X2dldGZi
MihmZCk7DQo+ICsNCj4gKwlpZ3Rfc3VidGVzdF9ncm91cA0KPiArCQl0ZXN0X2hhbmRsZV9wcm90
ZWN0aW9uKCk7DQo+ICsNCj4gIAlpZ3RfZml4dHVyZQ0KPiAgCQljbG9zZShmZCk7DQo+ICB9DQoN
CkZyaWVuZGx5IGJ1bXAuIENhbiB0aGlzIGJlIG1lcmdlZCBub3c/DQoNCmdldGZiMiBoYXMgYmVl
biBtZXJnZWQgaW50byBkcm0tbWlzYzoNCmh0dHBzOi8vY2dpdC5mcmVlZGVza3RvcC5vcmcvZHJt
L2RybS1taXNjL2NvbW1pdC8/aWQ9NDU1ZTAwZjE0MTJmZTUxZmE3YmQyMWFkNmZlMDAxNWIxNjNm
YTllNQ0KDQpUaGFua3MNCkp1c3Rvbg0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
