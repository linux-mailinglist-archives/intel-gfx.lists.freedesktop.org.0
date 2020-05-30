Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADED1E8CAD
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 03:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79946E990;
	Sat, 30 May 2020 01:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9AC6E990
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 May 2020 01:03:04 +0000 (UTC)
IronPort-SDR: uHhMNjkPhRrZdJfi0rL9QiemhUzM1hEh+YmwnWFF0Ag6ZubyPFWkIgYs9BRBTfowO65jbD5msC
 hd+d7Qwq9ffA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 18:02:59 -0700
IronPort-SDR: RhnxRmQVNsFPfXkeSwzZuKFKE45rqfKf9EO0+rn+C8fk/XP9H/5i6g/GQU8XnbxJdvCfDPI2DI
 ys15pL/+P6ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,450,1583222400"; d="scan'208";a="285706642"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga002.jf.intel.com with ESMTP; 29 May 2020 18:02:58 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 May 2020 18:02:58 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX126.amr.corp.intel.com (10.22.240.126) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 May 2020 18:02:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 May 2020 18:02:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XopJ2nRJGebcj1gobBQo9P8BncGrh1+rhdNsMVCjwoPO2ZO3eA2dlEnHk6MOtmBbgPVvnmPTTtIV4ts6LKYk+WN5Tw+g7OiIThW8LpDZyeAwQxrwSPXWAEXPJ0Vd/Iaj88WMdwZoE17bsDiuvSrhwFFdsy/QV3SgLYXo6fNfOxP2Vf05gz3oz6zaDhSMQsYsbU+My2Pzdi5L8OOeL//R9clK1HEMD+kauML6dJfAveUyiktNb8jeIfDZA4AJwtDZD/huQ0AlgyxZJnIrYN2isuL+Tk4Dk11hIvavBEZOeL+aGINzl2poiqF4QHQaF/SPmPBn/D9x1eVVvGMvXhjOqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vICBTQNRUqv3k9IaxiP47ZO/iwoiIe9VPtk3qTI/T3s=;
 b=kd9ESKXoK7hh9dXRyZ3H9ZYBcsN+M0mcgEOoR2BvxcaegfNL07Aa5kPQoPLGo2TnODK7saKb7i3eytxCLS0knwWuMFwhb7g1ddt93idNv5cKg4YOrFQcvD9/hdLLK7QvKSKruPMawbr8g19VyYsqPl65G+vo4rwPaP9pqUD+61xFImb56HpQGXilQ3v8hj8TRaUbM5dne0RVHPc5IKldw3NK1dt7WxB+RTFsXHAA3R2PuieDid+e4b+IB9WLl52IcafxixRjLhJT3tnUErA1ePJyMgmP8VJf+U77Al6zZfBMOcdoqGjIVuTd+Y1m7g2VA8wpBpfXtTLoenyD/89/ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vICBTQNRUqv3k9IaxiP47ZO/iwoiIe9VPtk3qTI/T3s=;
 b=HbwLrJ6w9XDaK4iZoExzX8SA4vFYeUo+SisOD+blbZOMK3sw5Qq+HIX/vJEojFXquuaziLOx2uFyV5R8CKSnp47UhWSXSw4WoNyyGoHC5p61YcUjAsLQSzm4cqq1MaiMAPGHlFecgd/+UP6nl9pV9KxRTarhkGly2aZ6a64xZNM=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MW3PR11MB4649.namprd11.prod.outlook.com (2603:10b6:303:5b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Sat, 30 May
 2020 01:02:44 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::50ed:555f:177:c782]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::50ed:555f:177:c782%9]) with mapi id 15.20.3045.018; Sat, 30 May 2020
 01:02:44 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/tgl: Update TC DP vswing table
Thread-Index: AQHWNhC3b833oGBHqU6kAgdNCkKJz6i/z+qA
Date: Sat, 30 May 2020 01:02:44 +0000
Message-ID: <10e80f1eda153cbe3c3e455a5508a30f3de6e596.camel@intel.com>
References: <20200529232757.37832-1-jose.souza@intel.com>
In-Reply-To: <20200529232757.37832-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.54.40]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a7beac4-fd93-4368-2358-08d804352917
x-ms-traffictypediagnostic: MW3PR11MB4649:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB46493B7C2F9DACA93A604456898C0@MW3PR11MB4649.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 041963B986
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BLCcUDuNYcqStl591HkTp6HjgidCfI7kpIuS1lCrjs9dLhiOohU/Lys5XazKqTnWF/7j9yZKFoFkheLdH4GoctYPkcH0m3BG/aQ/iOeUn4ID+fMS88nfHF8vr0bn/o9DEU9E3dJDru5ZNf8iwVDoXn08NYRSnKBa8Hfi0dT3fuSbcmjDBNuTRsC4anGBry9j1Ut6Y1ETiBXqq67WmmjJ8zcEUMFcQ3TDMNYpDdNjBAGCi/K8kNp8gL2WRcBlZCQ/F04r2nEOqFNwlbYnz+vmCsrqTK8EFmuu23NRVJAG98VHeDT+FNgmB5LNCA/ddO7gX4+dBbUSXjnSGwx7P+4p2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(396003)(39860400002)(346002)(136003)(366004)(6506007)(86362001)(6486002)(2906002)(5660300002)(2616005)(71200400001)(83380400001)(8936002)(66446008)(6636002)(36756003)(26005)(186003)(6512007)(110136005)(15650500001)(316002)(8676002)(478600001)(66946007)(76116006)(64756008)(66476007)(91956017)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: MPUBIDgtn1D7yhycFTMdh1RujBTK3BbdYMkrfJ2AUYVCVuZevMO8HS3e3JAvTrnJJ8UeSNjc3xaQLMojlgHpy50EgFejEuLCI8E6yKuNkYkxQ7HEDIhZAI0zIDgdDll0DEVVMR6ieFIYDTm0QI1ICcvFen1mdtLMsweQ3O8qL/XXDiO11FvHxdYLiKoTZERRBXbm9y72rvlA587ucUI+oy3VSTXavOUD62EBkpDrHqOlE4DzVAoER1eb3IO3ntbl2pnC+yP8i8+YrhywBORs4ngfvBmyPfO2iePC4lNA79P5qqvpnZHk534o2a52skOQx8ZU0JSxN+lXWO7dTWpHx8HhrNPesjmKYOpZ1lsdPiuea1+rRRGB/47xMS0ctITOKmeZlWvhPavosxNOqpOVtuCom7JSvQg+gDt5QuOOzsnw0ErzZfhY0mgq7QtEBrfxRzvNu8fN3GbJZZyox97U7NuxVYtF3TleqEWFHFL5jMg=
Content-ID: <BF8E33B75E9A804BB31BA7BFFD7A2B8F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a7beac4-fd93-4368-2358-08d804352917
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2020 01:02:44.0850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eoFt4Lpi2XfoLvpwwaY57U+QhDxScxu9EylGP4ffJZ6YWssjWIPOJ4FggSnbbSmYlEd0bFJcLGrCd8cWrsE+9nGEUx08Hiqw8VkC7a04XS8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4649
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Update TC DP vswing table
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

T24gRnJpLCAyMDIwLTA1LTI5IGF0IDE2OjI3IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBTbWFsbCB1cGRhdGVzIGluIGRrbF9kZV9lbXBoYXNpc19jb250cm9sIGZpZWxk
Lg0KPiANCj4gQlNwZWM6IDQ5MjkyDQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA2ICsrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCBhYTIyNDY1YmI1NmUuLmNkMjExZjQ4YzQw
MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBA
IC02MzksMTEgKzYzOSwxMSBAQCBzdHJ1Y3QgdGdsX2RrbF9waHlfZGRpX2J1Zl90cmFucyB7DQo+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IHRnbF9ka2xfcGh5X2RkaV9idWZfdHJhbnMNCj4gdGdsX2Rr
bF9waHlfZHBfZGRpX3RyYW5zW10gPSB7DQo+ICAJCQkJLyogVlMJcHJlLWVtcAlOb24tdHJhbnMg
bVYJUHJlLQ0KPiBlbXBoIGRCICovDQo+ICAJeyAweDcsIDB4MCwgMHgwMCB9LAkvKiAwCTAJNDAw
bVYJCTAgZEINCj4gKi8NCj4gLQl7IDB4NSwgMHgwLCAweDAzIH0sCS8qIDAJMQk0MDBtVgkJMy41
DQo+IGRCICovDQo+IC0JeyAweDIsIDB4MCwgMHgwYiB9LAkvKiAwCTIJNDAwbVYJCTYgZEINCj4g
Ki8NCj4gKwl7IDB4NSwgMHgwLCAweDA1IH0sCS8qIDAJMQk0MDBtVgkJMy41DQo+IGRCICovDQo+
ICsJeyAweDIsIDB4MCwgMHgwQiB9LAkvKiAwCTIJNDAwbVYJCTYgZEINCj4gKi8NCj4gIAl7IDB4
MCwgMHgwLCAweDE5IH0sCS8qIDAJMwk0MDBtVgkJOS41DQo+IGRCICovDQo+ICAJeyAweDUsIDB4
MCwgMHgwMCB9LAkvKiAxCTAJNjAwbVYJCTAgZEINCj4gKi8NCj4gLQl7IDB4MiwgMHgwLCAweDAz
IH0sCS8qIDEJMQk2MDBtVgkJMy41DQo+IGRCICovDQo+ICsJeyAweDIsIDB4MCwgMHgwOCB9LAkv
KiAxCTEJNjAwbVYJCTMuNQ0KPiBkQiAqLw0KPiAgCXsgMHgwLCAweDAsIDB4MTQgfSwJLyogMQky
CTYwMG1WCQk2IGRCDQo+ICovDQo+ICAJeyAweDIsIDB4MCwgMHgwMCB9LAkvKiAyCTAJODAwbVYJ
CTAgZEINCj4gKi8NCj4gIAl7IDB4MCwgMHgwLCAweDBCIH0sCS8qIDIJMQk4MDBtVgkJMy41DQo+
IGRCICovDQoNClJldmlld2VkLWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFs
bGF3eUBpbnRlbC5jb20+DQoNClRoYW5rcw0KS2hhbGVkDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
