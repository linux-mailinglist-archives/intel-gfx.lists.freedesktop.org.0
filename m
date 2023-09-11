Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3659079AB6C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 23:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010C110E355;
	Mon, 11 Sep 2023 21:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4074110E1E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 21:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694466299; x=1726002299;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Gi41e5Ms1gX8+oPzaaLYs0SmWuwATxlC6IYdZiNfQ84=;
 b=keCDdpN+GahgAxhAzcwRCVqJnftA88NBSez7V8K3PoAzz9z4tD3FHNKu
 eDviM2JEHLwpFvKbsO5CEQUmscBNlSnj2ODo/SltS18BFivQxomL6DQST
 bReo0/aPiIdy0IPvFpwXI0KIlzwrMsspg4cVHOUJrQzYZ3DtzR2w/vEY7
 FDUvFy3DJt8ru4f1SkiFMB+Oh/KuETWg/+W44zhQ832hK6kMV+3JFjCTq
 RcZqnlPEluM01u/KSJm/mADkl3m+A8cTdQpAd5G2wxD67ffPkpVp92g4n
 YZV5+c6BVt6WS4ByU/md4sENQEEMtLloP8B/+BWxtU3kA/WPS4Yiu9QmN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="442210638"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="442210638"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 14:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="990248271"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="990248271"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 14:04:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 14:04:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 14:04:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 14:04:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KKYNNacx6woePV3hSKFCeLDKlg1WlW/lABkZD2j6QgsfR5fxxr7+3FbXDtw/D9b5LI0gSxbp4ykbadw2tlZjGZ5ucE9iIe9eB1pASv9g+iRJBMezlv++1SOaAoYqkfC8T5JEUF4QHXvd3oXDqlBDKSs5s3eYXpXU6cbLrabGcX8yjL8XEeHM2WlZHf5SAA4KbO7cyIulsiqIpogQVfE31q7tOwj6ATo+ojApFGJraLJWyYvmnSIw9Vqef3tp3ryqxLdH4svYRH7RIkrIwdMKCP2YbYkTfdDf/TX7zyVlLs/fKszWFYjLt85ZdFD/xr2L5YtNVvhqtXLPlsZj7DzPTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gi41e5Ms1gX8+oPzaaLYs0SmWuwATxlC6IYdZiNfQ84=;
 b=ZjcxCr10Sc5MIxcWWQv9DTuqbPfKl5wafQd0Pt7/n2CMsvk6yrZieGZUH2PjNIYgEpE8/Q88Cfv6fKqlIf9dbFSk8pDRdZyj4qX13afBdWJ1HB9ExR2IbC1xRE6cuAs5JTEjgScZ9u+pz+l7FigzCatx88acTIVI4UxMV64sCcxNck6SaEqAwy3YsWaPeX3diG55+mRYjQgGkcA94p2oX5cSZ4Zih5T+CulUSDQCQPUnkumonByWxqu38zG25A+JfQs6QNrYm1UU27Di+d/YJG/Rcv6It0SV9J5obE08HfYFkCG0RLXfpoPYPontlZqB2p1SQKOsxiVV6Y5nikmM3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BN9PR11MB5417.namprd11.prod.outlook.com (2603:10b6:408:11e::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.35; Mon, 11 Sep 2023 21:04:50 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 21:04:50 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 10/19] drm/i915/dsb: Add support for
 non-posted DSB registers writes
Thread-Index: AQHZmKtSXD5k72FcaEaYyNDk3O7Eb6+0Q9GAgGJxfiA=
Date: Mon, 11 Sep 2023 21:04:50 +0000
Message-ID: <DM4PR11MB6360EDA67FDB16FB63D730AAF4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-11-ville.syrjala@linux.intel.com>
 <PH7PR11MB598121C453A9C54A11C43AA2F931A@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB598121C453A9C54A11C43AA2F931A@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BN9PR11MB5417:EE_
x-ms-office365-filtering-correlation-id: 48f4eda1-ec03-4ffa-1c0b-08dbb30abd17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XZd6vVm1SOycie+WL/svkuyMTq1nPWJMV+1jRWgf4HRoneHb8AHV56geURGNfjWyJTxknFSSBldIDCPs45djlzljebnjCImbaMa5Wlvw838C2tlRDuRQZCJ3PIpg4hc8AsliaIPH9GmN0wTOsHm1Tqc8Mc+E8CS1jMhNyD8cZe2cf7inQxoOKCqHWl/iA5XslhK147I68FHXQTI1nxijSql3SyMo5DlMrGwlh6HtG4H4VCbCnSZOqZRoEk7OVC8VOpn6mAlVsGDAKMOdbnAuBlmmbdWaRja554Bmi+EbfXutfcTYHArElLVQZD27PepQr9Tauc0E/MuF7qVF/QZ+HRWFaVxWIyLo9sDn+7htnW0Gq5nXN9hGx6oEea0cDsD9mctq7yuvdaD6wSSqy2xal30kyw6nzIJBdObXxnUXzgED4TY4MlKXxymh9PvDTioPx0ootQDopcAttcvz+eyAWfHl8bGgNz0/ZY81pfR5470CJuX/pCm0C0TcPCIXXBjcKym3CLLckCfu8Rnik/TT3n0YAjfuG01n1rNJVATf6yV1jRGvb9IrfQvKK+jS5MQg3DnD5uXFO5lUHcmOtU8m0Q8Nc/aUcqqj4a7RT0cNLzbqVKFxBVHX3BWF1BFjQLyP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(366004)(39860400002)(396003)(1800799009)(186009)(451199024)(110136005)(71200400001)(7696005)(6506007)(53546011)(9686003)(478600001)(83380400001)(26005)(2906002)(76116006)(64756008)(66946007)(66476007)(66556008)(66446008)(41300700001)(5660300002)(316002)(52536014)(8936002)(8676002)(122000001)(82960400001)(86362001)(33656002)(55016003)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUNVZmlIcXE5cWxjRjlJTXJIR1JIWStNZmNuRWdaejhkZzJiRXZPOXY0a09H?=
 =?utf-8?B?cmU3alBpamJ5Zko3akZZSTdyVUtqZUlKL2FXWlFYZis0bSt6dnBISzdoRHU3?=
 =?utf-8?B?bGJ2cHVZbmVoNzl3OWZyVW0zeXhhRjV3M0VQU2pLNDdybDBZS3A5V0U2Zksx?=
 =?utf-8?B?RHA3aWx1NEt6aWh2UHhqTXdPWHoyKy9SNStqb2JkK0UyUXhiZUVPbGJlaito?=
 =?utf-8?B?OG9KRGtIQjVCZE5TVHNNa0VaNVJpbFplUzIrMjVSeXRXQlpEdW1weWs5azRU?=
 =?utf-8?B?NFlqMUlBQ2I5UFcrZVhQRDhzRUhPdTg0N294S1V2WU9oa1pUajhiRHpybnRT?=
 =?utf-8?B?QXhHRVhPWk5BeHQreG53dEFlTDBJOVNvbkpOaHBpRk10WUxKR29FY1VOMzg5?=
 =?utf-8?B?Y05aT2kzekVCZFdsaURlWTZKNnVHbkVBbW52WmhsVXFJZVo2RUQ4Z1M2K2xT?=
 =?utf-8?B?ZDNjU3JCNlNOOEdQd2pYS3F0VWZjZkw5STVhK2w1dGtBajNPN2NPOGRTSVRr?=
 =?utf-8?B?NkF1Qm4yR1dOYzlZdDk0eW1RQ081dWVNbGpsZ2FRNWZRaWxNc1VYK3kxSXZ0?=
 =?utf-8?B?MXJsYUxaRnJ1dnFkZEZSRmRzU0dNMzZLN2hSRGtJelo1a2Z4cGdWNDZ3MTk3?=
 =?utf-8?B?emI1VmRPdWFXUlJrdFViNzdEUGNGN3dGL3QyenVIOXhXTHFURU45aVNKSXFY?=
 =?utf-8?B?R2E5RnJEU3RkTHMrOW9QR2FvTDlJUENYS3MxU29Dc2JZd2szVEt3bHBGQXRZ?=
 =?utf-8?B?VlZDVDl0ZmN4bWV5OWFqNURBNFhSb1d6U1pGNHFZNUNHOHpYUG5pTno3c0tE?=
 =?utf-8?B?ajFlU0Uyc0U5QnFSZUhTVHZtUlFxcGxGTDZkV3VITjdXZ1hvQmhGaFlnV0ky?=
 =?utf-8?B?MWUrZWdUdHNlcjMxZXllaWhUUGZxcVIwRXFNS3Q0MytvNlFyUEZiTFdEZnlq?=
 =?utf-8?B?R084bm1LbkVGS3ovQm9RTlNaVnBocEtmc1BRbGd4MTZwRHBrVFQ5V2RLbW5G?=
 =?utf-8?B?RmR3VEVaMHlqM1lwSXNUTTZ1bkZ5Ti9YRmpWdnNDd2phcmJoMUNDNWdhbG9u?=
 =?utf-8?B?V1FUTlZJQ2tOWGIrUFdFb2p4bWE0Rk40bzNKRWU1cFZoc2p3S0VqRUdMeTZs?=
 =?utf-8?B?Rjk1OWI3anFNaXgxc2pqT3lEUDJadElya2J2bVZPNSt0a0trbXpPMFhodzVa?=
 =?utf-8?B?bzZ5S1lkR3F5T0NRbnBPK2c2Y1M0SnVxNkszdXFjSzhMaUJzOEJCK2MxQzc2?=
 =?utf-8?B?clpqN2srRWhWcGYyaHNVVHVUNDQ3QjVvTExTR1hYdkpLSDUwU1N4RXUvMXRu?=
 =?utf-8?B?UUNOekpTU3cvb2pVMVI3V1pMZDlBNE1ud0FIdWJZMFJZOHJSTWtyY2RWQlMv?=
 =?utf-8?B?dFl3WDM2VEZmTFFKWjlVMGNERDh5ZlZQOXlNTXNyWE8zNlR2WXlxRUtCZjVN?=
 =?utf-8?B?K1hGWTNFNmxEYlZ0Ui9XR1k0cnplNXdzeTd5RTgwUGxrdzA2Y2ZvbUk4VjNo?=
 =?utf-8?B?WTA5Zkg1L2VBTVFLeWNONm43TWxLQXJLeFhYK3BEOGdXM3grd0JRV21iUkQv?=
 =?utf-8?B?em1XSE1JbkpseGFydVN6cnZHazVDRWJlSmYyN2FQRHY4TzBiSDM3VTBpYXE1?=
 =?utf-8?B?MWVCL0tmWnVLWFQxMGdxUHFUcTMydHpZK21ZdC9MaHpoMXh4MVdkWWl0T0dK?=
 =?utf-8?B?Ti9ZUktJZmdkRm9NVnRsMTUxZVpCRDV3a0U0Y2pxa0RnSENRclpVc0dVYTlt?=
 =?utf-8?B?TVJJQ2dhaHg4OGM2YWdkNnhiNHhWU1RyOUhLejltbzBjRjJxUnFSMXVzQmdT?=
 =?utf-8?B?WDB6VXJTM1EvcDRscEZkQS9jdEpMb3ZJdHRORzRUTWhXRU91eHp1U21ZcFRW?=
 =?utf-8?B?YnRrSWRIWU83bVd6b3FiL0R4V1FPdno1TGppY2FYTVNsQ2tmM1NyQWlsTG13?=
 =?utf-8?B?T0t5aWtGakdoUFBkcklGOENzUW8za0Q1eWFtbUkvQ3RUUkFGb0VpWjErRytD?=
 =?utf-8?B?bWFzZHo2bHh5WXNLQkFub3pXd1R3dC9ia1RQc3k1bkxCNUJDa1QvK2t5WFRo?=
 =?utf-8?B?bnJmZkpvUktzNi93RUdiYTZweG4xSHl3VFBpRFIzQTZhdVRzd3hwV2lGRGxW?=
 =?utf-8?Q?UdSIDUXP/JM/tvshDnrSXOkCS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48f4eda1-ec03-4ffa-1c0b-08dbb30abd17
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 21:04:50.6064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Uwo9175dSUSwWLr6ZtDQPkGLq3kTEQef4wcANJtJxYVpE0sZ0LyGxwD9c/hvwcsjWG0qUd+Zn7ETI0BzdHdsnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5417
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 10/19] drm/i915/dsb: Add support for
 non-posted DSB registers writes
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBNYW5uYSwN
Cj4gQW5pbWVzaA0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDExLCAyMDIzIDExOjEzIEFNDQo+IFRv
OiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRD
SCB2MiAxMC8xOV0gZHJtL2k5MTUvZHNiOiBBZGQgc3VwcG9ydCBmb3Igbm9uLQ0KPiBwb3N0ZWQg
RFNCIHJlZ2lzdGVycyB3cml0ZXMNCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4gPiBWaWxsZSBTeXJqYWxhDQo+ID4gU2VudDog
V2VkbmVzZGF5LCBKdW5lIDcsIDIwMjMgMTI6NDUgQU0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiA+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCB2MiAxMC8x
OV0gZHJtL2k5MTUvZHNiOiBBZGQgc3VwcG9ydCBmb3INCj4gPiBub24tIHBvc3RlZCBEU0IgcmVn
aXN0ZXJzIHdyaXRlcw0KPiA+DQo+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPg0KPiA+IFdyaXRpbmcgc3BlY2lmaWMgdHJhbnNjb2Rl
ciByZWdpc3RlcnMgKGFuZCBhcyBpdCB0dXJucyBvdXQsIHRoZSBsZWdhY3kNCj4gPiBMVVQgYXMN
Cj4gPiB3ZWxsKSB2aWEgRFNCIG5lZWRzIGEgbWFnaWMgc2VxdWVuY2UgdG8gZW1pdCBub24tcG9z
dGVkIHJlZ2lzdGVyIHdyaXRlcy4NCj4gPiBBZGQgYSBoZWxwZXIgZm9yIHRoaXMuDQo+ID4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiANCj4gVHJpZWQgdG8gY2hlY2sgaW4gYnNwZWMgd2hlcmUgbm9uLXBvc3RlZCB3
cml0ZSBmb3IgRFNCIGlzIHJlcXVpcmVkIGFuZCBpdHMNCj4gYWR2YW50YWdlIGJ1dCBjb3VsZCBu
b3QgbG9jYXRlLiBOb3Qgc3VyZSBpZiBpdCBpcyBjYXB0dXJlZCBpbiBic3BlYy4gV291bGQgaXQg
YmUNCj4gcG9zc2libGUgdG8gYWRkIHNvbWUgcmVmZXJlbmNlIGluIGNvbW1pdCBkZXNjcmlwdGlv
bi4NCg0KSXQncyBpbiAic3BlY2lhbCBwcm9ncmFtbWluZyIgc2VjdGlvbiBpbiBEU0IgRW5naW5l
IHByb2dyYW1taW5nIHBhZ2UgaW4gYnNwZWMuDQoNCk92ZXJhbGwgY2hhbmdlIGxvb2tzIGdvb2Qg
dG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4N
Cg0KPiBSZWdhcmRzLA0KPiBBbmltZXNoDQo+IA0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMjAgKysrKysrKysrKysrKysrKysrKysNCj4g
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oIHwgIDMgKysrDQo+ID4g
IDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiBpbmRleCA2YmUzNTNmZGM3ZmMu
LjczZDYwOTUwN2YyNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYw0KPiA+IEBAIC0yNjEsNiArMjYxLDI2IEBAIHZvaWQgaW50ZWxfZHNiX25vb3Ao
c3RydWN0IGludGVsX2RzYiAqZHNiLCBpbnQNCj4gPiBjb3VudCkNCj4gPiAgCQkJICAgICAgIERT
Ql9PUENPREVfTk9PUCA8PCBEU0JfT1BDT0RFX1NISUZUKTsgIH0NCj4gPg0KPiA+ICt2b2lkIGlu
dGVsX2RzYl9ub25wb3N0X3N0YXJ0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikgew0KPiA+ICsJc3Ry
dWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+ID4gKwllbnVtIHBpcGUgcGlwZSA9
IGNydGMtPnBpcGU7DQo+ID4gKw0KPiA+ICsJaW50ZWxfZHNiX3JlZ193cml0ZV9tYXNrZWQoZHNi
LCBEU0JfQ1RSTChwaXBlLCBkc2ItPmlkKSwNCj4gPiArCQkJCSAgIERTQl9OT05fUE9TVEVELCBE
U0JfTk9OX1BPU1RFRCk7DQo+ID4gKwlpbnRlbF9kc2Jfbm9vcChkc2IsIDQpOw0KPiA+ICt9DQo+
ID4gKw0KPiA+ICt2b2lkIGludGVsX2RzYl9ub25wb3N0X2VuZChzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IpIHsNCj4gPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOw0KPiA+ICsJ
ZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiA+ICsNCj4gPiArCWludGVsX2RzYl9yZWdf
d3JpdGVfbWFza2VkKGRzYiwgRFNCX0NUUkwocGlwZSwgZHNiLT5pZCksDQo+ID4gKwkJCQkgICBE
U0JfTk9OX1BPU1RFRCwgMCk7DQo+ID4gKwlpbnRlbF9kc2Jfbm9vcChkc2IsIDQpOw0KPiA+ICt9
DQo+ID4gKw0KPiA+ICBzdGF0aWMgdm9pZCBpbnRlbF9kc2JfYWxpZ25fdGFpbChzdHJ1Y3QgaW50
ZWxfZHNiICpkc2IpICB7DQo+ID4gIAl1MzIgYWxpZ25lZF90YWlsLCB0YWlsOw0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+ID4gaW5kZXggOTgzYjBk
NThhZDQ0Li41NGU5ZTFkYzMxZWUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmgNCj4gPiBAQCAtMjIsNiArMjIsOSBAQCB2b2lkIGludGVsX2RzYl9y
ZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiA+IHZvaWQgaW50ZWxfZHNiX3JlZ193
cml0ZV9tYXNrZWQoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiA+ICAJCQkJaTkxNV9yZWdfdCBy
ZWcsIHUzMiBtYXNrLCB1MzIgdmFsKTsgIHZvaWQNCj4gaW50ZWxfZHNiX25vb3Aoc3RydWN0DQo+
ID4gaW50ZWxfZHNiICpkc2IsIGludCBjb3VudCk7DQo+ID4gK3ZvaWQgaW50ZWxfZHNiX25vbnBv
c3Rfc3RhcnQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsgdm9pZA0KPiA+ICtpbnRlbF9kc2Jfbm9u
cG9zdF9lbmQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsNCj4gPiArDQo+ID4gIHZvaWQgaW50ZWxf
ZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ID4gIAkJICAgICAgYm9vbCB3YWl0
X2Zvcl92YmxhbmspOw0KPiA+ICB2b2lkIGludGVsX2RzYl93YWl0KHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYik7DQo+ID4gLS0NCj4gPiAyLjM5LjMNCg0K
