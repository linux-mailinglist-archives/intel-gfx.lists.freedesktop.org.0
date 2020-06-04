Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 084091EEB80
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 22:06:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49DAC6E5AB;
	Thu,  4 Jun 2020 20:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 684F36E5AE
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 20:06:03 +0000 (UTC)
IronPort-SDR: 3UtTJKoR+M/6hGuUizOrHbizYOVS5QtM078SN+Zbx0jZLNPJg5GZR+jcE10Iq1Ibyc+asabwtH
 +Ys7Ui0yZ1SA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 13:06:02 -0700
IronPort-SDR: sg6XNp92L/wcmSCr3RWTjgkiHp7+FD71d0QfTa69xbYhNgk/YuHgYMS5QnrqoVykhI6L6w61rT
 PkzgUIAGI7Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="471540136"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jun 2020 13:06:02 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 13:06:02 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 13:06:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 4 Jun 2020 13:05:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSprFGwGWhThfl+3a23Wh5lNG1A4t/95KCuR4SA8wO4y9v8/HWHSbKsNFeEoCR0ZTw8wl0l7cFxEJXWYRyrtk9kmXPTBtjYIPZ9Egp5P3mWueZYLB2i857jALyXfTY/Yz1Mnb2DUvTTxewAA/dQL7g90zFK0420TbXgqIF3XGoGa0qLZUNATD1DoV9NE5ePW6+tGUH8gWWJ0gttIMAhkcHq1KiKbx0Qo1qLHuuN4QPKh1iDwcUkze4XVMaTS40z52osQxVogP1+t4819XEz9rbfmWzrfgLWJXh8kcJpAEqi7pOKihmSRx4DUoXzf7oXj6OA0y+FI/W/TX5MNo6mGbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BmwWg2GgepR2KDNujo3vG7ljEWapmCprzOvgBoNC+Y4=;
 b=KeFyYpOmOXMlVN9uvUb7c8EzQ+VBgKo9GGcgO6Dpyz4+ajz9Pqn8YMpInpjW6lFfi2r1GHvzylbbks/qakH87RHcSyTBJ/+4/r3+GyqRmyAXkxgiBMxMZ1zmJEKHW/xkn+0MegbpjguHvuRooaeLB/lo9L2mLZnFtRnR3eF+lzyPvUx8G4Xntg3DqWQXo5/CtW23aXedH+jmrjj2vsGZnfLdUxTQkg/eYei3jHfwU/P1Ko6h0+oGJ0NIf1r5rBi10M9FvU+2n2GXWnx1t5MjwA2ThYHqRt/ZRz9AMyon8aJ2ZdgSBmXtqre3jMZ67ijjUaY3h06FVbD04wyN4OiBHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BmwWg2GgepR2KDNujo3vG7ljEWapmCprzOvgBoNC+Y4=;
 b=LRz6/BIWVsPQXAEAP4KOSvLVPKYgtto7rHsjzOlOPxGDoFzNUAdTVJxTDZMlnYlWYHk+Jm6vRY966pL35cG7r4fk3PxsI25m9cXhye/HvYJWyGXI8ew8Fbhvl5ZFoFsD+V6aPS7acJtjhW8iYBlWt+AnmucjZnaLkEL7qAijW80=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MW3PR11MB4572.namprd11.prod.outlook.com (2603:10b6:303:5e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Thu, 4 Jun
 2020 20:05:37 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::b840:82ba:a83a:d8c3]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::b840:82ba:a83a:d8c3%5]) with mapi id 15.20.3066.019; Thu, 4 Jun 2020
 20:05:37 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/tgl: Add HBR and HBR2+ voltage swing table
Thread-Index: AQHWOR/gaGQi1hMto06lClxSGtSRVajI5MUA
Date: Thu, 4 Jun 2020 20:05:36 +0000
Message-ID: <127fff4c24554a8a269590a5f49f38101032a0b8.camel@intel.com>
References: <20200602205424.138143-1-jose.souza@intel.com>
In-Reply-To: <20200602205424.138143-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.139.76]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 032e1d9b-5b0a-4532-85a4-08d808c2a5d0
x-ms-traffictypediagnostic: MW3PR11MB4572:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB45725D28F1BBAD59822967DB89890@MW3PR11MB4572.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8DSLaQKyrdi/JYutpZGvbzidKuAFY3BmVJNNmGuJazhmr1w+K8DZQ+XU8mLowTUFOUWHHc1xQpYsnA6EcmYxjzuqEylBDI6AWjdqOYzmzTuXbGi7O8mkAMXucj++u87H8T+abAiJNYk1B8gXFUlmPf2PCSsP7dix9Br99c9JDPrsUp5vSDuBH6OS8wBS91P3Bn04F8ikCYqAhXw9QduW/124BSz8UzA6byG8z2+n3rMUeXPw1af7mru1VYBECeqomRMrHBJcrMXg3NVIjkggtPy/pYKuBbMd8ZFkeDNTdg3xtZYaDH+APqqFebVltCF+Z8rLASR4O49n/Mkwjdqjaw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(136003)(396003)(346002)(376002)(39860400002)(86362001)(76116006)(316002)(83380400001)(110136005)(2616005)(6512007)(6486002)(8936002)(8676002)(6506007)(478600001)(2906002)(6636002)(5660300002)(66556008)(36756003)(64756008)(66446008)(26005)(71200400001)(186003)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: sk5JNr2kcVB7fzly0sL7Qsrmt6H2L/getD0JPgoky3rqVx3gBFWYQ1yja3phVDg7ZBtw8+owAUvW+Db5lrzY+wnbmJcldn/atoVaqfm2UibwFgFHPlOgTPcBwY0oTBQ6zLbYiFWci4bcqV40Ad2n/DhKAR6mxAZsHekHeDDkDLjux8ZAc4XMpnoFYp2rmlkrpD94U1rKeZsHsvONSDOXsGi69Vrn9zkmOcV5l/+xM6AcHESSh2dF6OqnCzKZF7aPogwsxUh4XF6t3NKaDCVusHaaPNlRGQJl8mOi92/g/CLzWM1Rf/WS/l0LBIkCCJYUi/gYBhEju2ADAmt6X3XKY9nb3Q6UQEAKihSKYJPJkvqr5HMpZRcZWUAClpunBg888ct96SZRlbOEDRDDZR1qtpKT/8fSqFy56xmUNKRl71lr46FgjzE9vfkJmIm3Iklq3+AQRaRBxd6P1/IbW9efxjMxSCn16loIdjongLnIlWEwfPxgvMUku+JYKK2hN0ja
Content-ID: <1CDD928674EB82428C244C7780AB4B1B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 032e1d9b-5b0a-4532-85a4-08d808c2a5d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 20:05:37.0184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gmemgJ3KbxOoEG79oefYPYj7NHtG7aBf/tS6X8vNekwpEHibPuy7TurnwNy+hd/JUKFvlJiU3yzyzypv3CBOfq3HvBEZOD983JIQkHLslzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4572
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add HBR and HBR2+ voltage
 swing table
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

T24gVHVlLCAyMDIwLTA2LTAyIGF0IDEzOjU0IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBBcyBsYXRlc3QgdXBkYXRlIHdlIGhhdmUgbm93IDIgdm9sdGFnZSBzd2luZyB0
YWJsZXMgZm9yIERQIG92ZXIgREtMDQo+IFBIWSB3aXRoIG9ubHkgb25lIGRpZmZlcmVuY2UgaW4g
TGV2ZWwgMCBwcmUtZW1waGFzaXMgMy4NCj4gU28gd2l0aCAyIHRhYmxlcyBmb3IgRFAgaXMgdGlt
ZSB0byBoYXZlIG9uZSBzaW5nbGUgZnVuY3Rpb24gdG8gcmV0dXJuDQo+IGFsbCBES0wgdm9sdGFn
ZSBzd2luZyB0YWJsZXMuDQo+IA0KPiBCU3BlYzogNDkyOTINCj4gQ2M6IEtoYWxlZCBBbG1haGFs
bGF3eSA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDUwICsrKysrKysrKysrKysr
KysrKysrDQo+IC0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jDQo+IGluZGV4IGNkMjExZjQ4YzQwMS4uNzYzZDc2MDU2Y2E5IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTY0MSw2ICs2NDEsMjAgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCB0Z2xfZGtsX3BoeV9kZGlfYnVmX3RyYW5zDQo+IHRnbF9ka2xf
cGh5X2RwX2RkaV90cmFuc1tdID0gew0KPiAgCXsgMHg3LCAweDAsIDB4MDAgfSwJLyogMAkwCTQw
MG1WCQkwIGRCDQo+ICovDQo+ICAJeyAweDUsIDB4MCwgMHgwNSB9LAkvKiAwCTEJNDAwbVYJCTMu
NQ0KPiBkQiAqLw0KPiAgCXsgMHgyLCAweDAsIDB4MEIgfSwJLyogMAkyCTQwMG1WCQk2IGRCDQo+
ICovDQo+ICsJeyAweDAsIDB4MCwgMHgxOCB9LAkvKiAwCTMJNDAwbVYJCTkuNQ0KPiBkQiAqLw0K
PiArCXsgMHg1LCAweDAsIDB4MDAgfSwJLyogMQkwCTYwMG1WCQkwIGRCDQo+ICovDQo+ICsJeyAw
eDIsIDB4MCwgMHgwOCB9LAkvKiAxCTEJNjAwbVYJCTMuNQ0KPiBkQiAqLw0KPiArCXsgMHgwLCAw
eDAsIDB4MTQgfSwJLyogMQkyCTYwMG1WCQk2IGRCDQo+ICovDQo+ICsJeyAweDIsIDB4MCwgMHgw
MCB9LAkvKiAyCTAJODAwbVYJCTAgZEINCj4gKi8NCj4gKwl7IDB4MCwgMHgwLCAweDBCIH0sCS8q
IDIJMQk4MDBtVgkJMy41DQo+IGRCICovDQo+ICsJeyAweDAsIDB4MCwgMHgwMCB9LAkvKiAzCTAJ
MTIwMG1WCQkwIGRCDQo+IEhETUkgZGVmYXVsdCAqLw0KPiArfTsNCj4gKw0KPiArc3RhdGljIGNv
bnN0IHN0cnVjdCB0Z2xfZGtsX3BoeV9kZGlfYnVmX3RyYW5zDQo+IHRnbF9ka2xfcGh5X2RwX2Rk
aV90cmFuc19oYnIyW10gPSB7DQo+ICsJCQkJLyogVlMJcHJlLWVtcAlOb24tdHJhbnMgbVYJUHJl
LQ0KPiBlbXBoIGRCICovDQo+ICsJeyAweDcsIDB4MCwgMHgwMCB9LAkvKiAwCTAJNDAwbVYJCTAg
ZEINCj4gKi8NCj4gKwl7IDB4NSwgMHgwLCAweDA1IH0sCS8qIDAJMQk0MDBtVgkJMy41DQo+IGRC
ICovDQo+ICsJeyAweDIsIDB4MCwgMHgwQiB9LAkvKiAwCTIJNDAwbVYJCTYgZEINCj4gKi8NCj4g
IAl7IDB4MCwgMHgwLCAweDE5IH0sCS8qIDAJMwk0MDBtVgkJOS41DQo+IGRCICovDQo+ICAJeyAw
eDUsIDB4MCwgMHgwMCB9LAkvKiAxCTAJNjAwbVYJCTAgZEINCj4gKi8NCj4gIAl7IDB4MiwgMHgw
LCAweDA4IH0sCS8qIDEJMQk2MDBtVgkJMy41DQo+IGRCICovDQo+IEBAIC0xMDE0LDYgKzEwMjgs
MjIgQEAgdGdsX2dldF9jb21ib19idWZfdHJhbnMoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBpbnQgdHlwZSwgaW50IHJhdGUsDQo+ICAJcmV0dXJuIHRnbF9jb21ib19waHlf
ZGRpX3RyYW5zbGF0aW9uc19kcF9oYnI7DQo+ICB9DQo+ICANCj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgdGdsX2RrbF9waHlfZGRpX2J1Zl90cmFucyAqDQo+ICt0Z2xfZ2V0X2RrbF9idWZfdHJhbnMo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgdHlwZSwNCj4gaW50IHJhdGUs
DQo+ICsJCSAgICAgIGludCAqbl9lbnRyaWVzKQ0KPiArew0KPiArCWlmICh0eXBlID09IElOVEVM
X09VVFBVVF9IRE1JKSB7DQo+ICsJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKHRnbF9ka2xfcGh5
X2hkbWlfZGRpX3RyYW5zKTsNCj4gKwkJcmV0dXJuIHRnbF9ka2xfcGh5X2hkbWlfZGRpX3RyYW5z
Ow0KPiArCX0gZWxzZSBpZiAocmF0ZSA+IDI3MDAwMCkgew0KPiArCQkqbl9lbnRyaWVzID0gQVJS
QVlfU0laRSh0Z2xfZGtsX3BoeV9kcF9kZGlfdHJhbnNfaGJyMik7DQo+ICsJCXJldHVybiB0Z2xf
ZGtsX3BoeV9kcF9kZGlfdHJhbnNfaGJyMjsNCj4gKwl9DQo+ICsNCj4gKwkqbl9lbnRyaWVzID0g
QVJSQVlfU0laRSh0Z2xfZGtsX3BoeV9kcF9kZGlfdHJhbnMpOw0KPiArCXJldHVybiB0Z2xfZGts
X3BoeV9kcF9kZGlfdHJhbnM7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpbnQgaW50ZWxfZGRpX2hk
bWlfbGV2ZWwoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ICB7DQo+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7
DQo+IEBAIC0xMDI1LDcgKzEwNTUsOCBAQCBzdGF0aWMgaW50IGludGVsX2RkaV9oZG1pX2xldmVs
KHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KPiAgCQkJdGdsX2dldF9jb21ib19i
dWZfdHJhbnMoZGV2X3ByaXYsDQo+IElOVEVMX09VVFBVVF9IRE1JLA0KPiAgCQkJCQkJMCwgJm5f
ZW50cmllcyk7DQo+ICAJCWVsc2UNCj4gLQkJCW5fZW50cmllcyA9DQo+IEFSUkFZX1NJWkUodGds
X2RrbF9waHlfaGRtaV9kZGlfdHJhbnMpOw0KPiArCQkJdGdsX2dldF9ka2xfYnVmX3RyYW5zKGRl
dl9wcml2LA0KPiBJTlRFTF9PVVRQVVRfSERNSSwgMCwNCj4gKwkJCQkJICAgICAgJm5fZW50cmll
cyk7DQo+ICAJCWRlZmF1bHRfZW50cnkgPSBuX2VudHJpZXMgLSAxOw0KPiAgCX0gZWxzZSBpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA9PSAxMSkgew0KPiAgCQlpZiAoaW50ZWxfcGh5X2lzX2NvbWJv
KGRldl9wcml2LCBwaHkpKQ0KPiBAQCAtMjEwOCw3ICsyMTM5LDggQEAgdTggaW50ZWxfZGRpX2Rw
X3ZvbHRhZ2VfbWF4KHN0cnVjdA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KPiAgCQkJdGds
X2dldF9jb21ib19idWZfdHJhbnMoZGV2X3ByaXYsIGVuY29kZXItDQo+ID50eXBlLA0KPiAgCQkJ
CQkJaW50ZWxfZHAtPmxpbmtfcmF0ZSwNCj4gJm5fZW50cmllcyk7DQo+ICAJCWVsc2UNCj4gLQkJ
CW5fZW50cmllcyA9DQo+IEFSUkFZX1NJWkUodGdsX2RrbF9waHlfZHBfZGRpX3RyYW5zKTsNCj4g
KwkJCXRnbF9nZXRfZGtsX2J1Zl90cmFucyhkZXZfcHJpdiwgZW5jb2Rlci0+dHlwZSwNCj4gKwkJ
CQkJICAgICAgaW50ZWxfZHAtPmxpbmtfcmF0ZSwNCj4gJm5fZW50cmllcyk7DQo+ICAJfSBlbHNl
IGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID09IDExKSB7DQo+ICAJCWlmIChJU19FTEtIQVJUTEFL
RShkZXZfcHJpdikpDQo+ICAJCQllaGxfZ2V0X2NvbWJvX2J1Zl90cmFucyhkZXZfcHJpdiwgZW5j
b2Rlci0NCj4gPnR5cGUsDQo+IEBAIC0yNTg1LDE1ICsyNjE3LDE3IEBAIHRnbF9ka2xfcGh5X2Rk
aV92c3dpbmdfc2VxdWVuY2Uoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCBs
aW5rX2Nsb2NrLA0KPiAgCWVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaW50ZWxfcG9ydF90b190Yyhk
ZXZfcHJpdiwgZW5jb2Rlci0NCj4gPnBvcnQpOw0KPiAgCWNvbnN0IHN0cnVjdCB0Z2xfZGtsX3Bo
eV9kZGlfYnVmX3RyYW5zICpkZGlfdHJhbnNsYXRpb25zOw0KPiAgCXUzMiBuX2VudHJpZXMsIHZh
bCwgbG4sIGRwY250X21hc2ssIGRwY250X3ZhbDsNCj4gKwlpbnQgcmF0ZSA9IDA7DQo+ICANCj4g
LQlpZiAoZW5jb2Rlci0+dHlwZSA9PSBJTlRFTF9PVVRQVVRfSERNSSkgew0KPiAtCQluX2VudHJp
ZXMgPSBBUlJBWV9TSVpFKHRnbF9ka2xfcGh5X2hkbWlfZGRpX3RyYW5zKTsNCj4gLQkJZGRpX3Ry
YW5zbGF0aW9ucyA9IHRnbF9ka2xfcGh5X2hkbWlfZGRpX3RyYW5zOw0KPiAtCX0gZWxzZSB7DQo+
IC0JCW5fZW50cmllcyA9IEFSUkFZX1NJWkUodGdsX2RrbF9waHlfZHBfZGRpX3RyYW5zKTsNCj4g
LQkJZGRpX3RyYW5zbGF0aW9ucyA9IHRnbF9ka2xfcGh5X2RwX2RkaV90cmFuczsNCj4gKwlpZiAo
ZW5jb2Rlci0+dHlwZSAhPSBJTlRFTF9PVVRQVVRfSERNSSkgew0KPiArCQlzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiArDQo+ICsJCXJhdGUg
PSBpbnRlbF9kcC0+bGlua19yYXRlOw0KPiAgCX0NCj4gIA0KPiArCWRkaV90cmFuc2xhdGlvbnMg
PSB0Z2xfZ2V0X2RrbF9idWZfdHJhbnMoZGV2X3ByaXYsIGVuY29kZXItDQo+ID50eXBlLCByYXRl
LA0KPiArCQkJCQkJICZuX2VudHJpZXMpOw0KPiArDQo+ICAJaWYgKGxldmVsID49IG5fZW50cmll
cykNCj4gIAkJbGV2ZWwgPSBuX2VudHJpZXMgLSAxOw0KPiAgDQoNClRoaXMgaW1wbGVtZW50YXRp
b24gcGFzc2VzIERQb0MxLjRhIFBoeSBjb21wbGlhbmNlIFBMVFBBVCB0ZXN0cy4NCg0KVGVzdGVk
LWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+DQpS
ZXZpZXdlZC1ieTogS2hhbGVkIEFsbWFoYWxsYXd5PGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5j
b20+ICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
