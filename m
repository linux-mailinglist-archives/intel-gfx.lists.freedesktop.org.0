Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F4065D18D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 12:36:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C686410E576;
	Wed,  4 Jan 2023 11:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3407910E576
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 11:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672832211; x=1704368211;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=N5UtNBrbvjLmfV1rvLpuqnpRxKEzs4GMsPyFj0PeRFI=;
 b=j1XCYFD1j+A74ljBeI1WoV6v0VVLhnHKr5JserbjbGuL4qpo/iH6IE1L
 LlcKs87dtivikxXkCjaYNbtFwnQGmrCi95c6Whs5/pFhCtNRowvaKQFv8
 LcikMOghMROsWebqqeH5QGRscTPofADd+Gp0od4TmXkO79a6O6q28MOUg
 TLmT6ZiXvQHTk1ENQaamN3+ZkJ0uQ4yc2CGS8AEZ+43CVCHSxzJEfEbSu
 08PLIMnG/fHIFYkUQHUS9/s3RylsQ1SoGQQFElRKc5JXC9JUmtLB5pxPy
 MY/iDCXntgw43D1cZVcBf/DnRsT97wkvfLX6MmJUxNIBPLoCpywtRR+IU A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="301606522"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="301606522"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 03:36:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="605162498"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="605162498"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 04 Jan 2023 03:36:50 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 03:36:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 03:36:49 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 03:36:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ESHzg9hf7gCmkh7EWRV7JVyymJMJB/WSW73IEiQ6hcX3Qet1U7k2EE1/p8SApjTzcHubKkXt3RLY1TEcj4yKr7YF5zV3at/jSurlsudhvksZWirBCD4S6Kd9/fcWFeYT0W4e1O5+uvLZd4fsz91otidDNSRw1bNA4JyC2IIGgzsgm2Qm/VK5hozcAGoONZ49Iq5H6mYgNTMKvqVi/P+dL1zBOA/Ksb7oZRLJLE4JANARSJCUafSDFvj4UglOboc0g88ikx+B0EUhOODxV93CYZO1uxlifCoeTkTtlAolRMnTOIWoGZ+4Q9o5C5dA2WpQm/SUU04BcMBhg/uP7NZxFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N5UtNBrbvjLmfV1rvLpuqnpRxKEzs4GMsPyFj0PeRFI=;
 b=XTJSmDLplVtA1368JXpDSH5CHVLtQtXksiXj35Bc7NCRsbxEZodwNd1DVxayJIXV0JVbK6c6CHQ3H5DtGNYXlVEx0VanWMGTINMt9Y4pASeR9rYg4DxOpuZThoi8PdVgSSe+S+EK5p7T19LglnY+6YUQInqx3A+ZoVnpORqLl1yLfhp5JfOcII4+DhiUGaWI3h1z3Yu1mJSCNMRvp/Ic2xWRw4KBYKmAxO5WSjgXBxhNRuoQEb0S49b0tDDUa1Vb9FtgxSZWIJhsNj7sXqFXsfmi2Mi9NkhX00ROWl8ddBdIXfL+0y9x8J8hzgOf5U2E91XX+rMXOQowBGU8U1dfqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 11:36:46 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 11:36:46 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/13] drm/i915/dsb: Extract
 assert_dsb_has_room()
Thread-Index: AQHZEObdkZhqeFYSD0qwigXdgDi8YK6OP5FA
Date: Wed, 4 Jan 2023 11:36:46 +0000
Message-ID: <PH7PR11MB59819A26EAC1D1AA09643DC5F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH0PR11MB7636:EE_
x-ms-office365-filtering-correlation-id: 156e80db-5845-49a5-c869-08daee47f5db
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K5an4cxa7bp0oHK5L++J9SS10SHGp71llwcupiGm2qv7qoLNAc5tYNtJsUh4yaK3820ayKpnwnYNGhr4/kgH7ftbzSa5wA6YzIC5Vh8ln5IkF+9e5MayqFXy1wMu3JRgb9IKU4h5EKr1PEnaiCJJbayG6Vzkzuss89xuab9e/wPvv3HldBJVFVvKGjMt9eAlbLzgrgKKD/O0oeGgi2IsY26OT2BF7HlCVq2w2q2zw9CnsEk17HFli0AiBvk/s1dyE3fRczMJrdGN5gU6Tl1uyEsjELAqB+lvnyYP7AUXlQ9rjPY1Yuy73REQbGtkgiiknk+3aqaP6a+s0wNDZyUR2PtiLPFYXryUJjefZBG9SHVBSSRupd8IJ2HbWkicFb6NnPEvCjUAQtLBHK9BBYm89I7a+1cShHx3MfDH+CCfb0Z41//QfPZLfth23kirwzUfTH2tlFrkJNbtqqsHw2EbJ0QfnPWn2Poa2nmK5te9AeH2LALuVT28GXO2ZLO/mIfGvJ/nJkvt/5HdhdpLgyrchC4xI270Pwbs09/URG8EOvluQhlqW2eeYoji+KEe+QBCfgDillZ5pmr/48lPtNM31ZFlT2YOG0qo+evgVovGOgBXRPPfLriBGeWz6wOB6Xm1UB+iImZu60Dn60mGm84J1ZkiFFcsunbtOfJXuilJOUhctlPvDPJvmbvoe7LoFsOu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(39860400002)(136003)(376002)(451199015)(5660300002)(8676002)(66476007)(316002)(76116006)(66446008)(66556008)(66946007)(64756008)(41300700001)(52536014)(8936002)(7696005)(2906002)(71200400001)(110136005)(33656002)(478600001)(6506007)(38070700005)(38100700002)(82960400001)(9686003)(186003)(55236004)(53546011)(26005)(55016003)(86362001)(122000001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ui9sNGdqNjhFMkNuZ2JkS0RwOWprNjNmWFQrYi9DbG5VVWF3bFJxcmFRbWRP?=
 =?utf-8?B?K3d4dG04bWpNblFXRkt0Uk1KZTdCUmV1R0lVWXErNEs0TEJTbVhyQURrcjVI?=
 =?utf-8?B?cXdQZTJkTXhMMlJ2NHU3N2NsbEVJTXVROSswc2Q4bjI5UEYzOUcwd0dIMCsv?=
 =?utf-8?B?QURzZnpQd0hFdEEvaWxGRWpzL0dFSThGeTdSSkc4cC9YRm5qUkVpZGtzK2l4?=
 =?utf-8?B?b255aUZmUnRJNGtoaHdxZDZFRXUzRTluMXVsNXNieWZkQU5PYlVRWW4xazVD?=
 =?utf-8?B?cmxucWpmNndES0M1WDU4dGN3VlBhS2ZDMlNlamVLK09maWFCQTlsOTgxZzJV?=
 =?utf-8?B?T3JEeERxMlI5MXBncEY0dVdZQzFHTzEvWUZWTllJUXRTOVF5Q1I4SDdmR21v?=
 =?utf-8?B?YVdYRThJL2xrcE1VcFlscm92aHlRSktRNHNLbWtJTm9Jb05TSDJtNW5saXZU?=
 =?utf-8?B?T1Ntbmp4YjZqSTh2Y3JOUkRxUzhCaGowMk56NWtPc0JINTEvNWNWcmF2Mmgv?=
 =?utf-8?B?S1VNWEJnc0krV0hNYTI1U0toUXVNcU9ncm5uSk5TcGYyaGpDVXRXd2UwWlgx?=
 =?utf-8?B?YmJEUVRGMGtMZDVvYmVUd29kMlo3NTJsMVBTSGFXOFp2K0t5U2xCdnM5NzRj?=
 =?utf-8?B?QXUxcXI2RVBTUmorUUpiQy9KQ3ByS1RjSWs5L0Z4SE83YTR5MnJwRnB6L29q?=
 =?utf-8?B?MzEvY2ZWMERXUDFxdm1NRWxJdk9KblRQbjFIek4yU3hrWFRIV055d1JuQkxy?=
 =?utf-8?B?MUhsd2NmQ3pzMkFuUjNxeTFZVFAyUkVEQXBXV20zaVBhUVllWm5ybGttNytZ?=
 =?utf-8?B?bEtPNzVhMElpRTFOK0Vmb0IxbzBwL3pESkdDY3RHSGhhVExzMDIzakdteFRr?=
 =?utf-8?B?NmM3TlhpbEc3SmRibHAwbGx6Vlp5clNqYXRsaDFDQ2l6Ym9KZkdrdTRTVGN1?=
 =?utf-8?B?N2ZLeEpJQWwyQlpWME9RcEd2NlcwSmg2ZURQcXJJSExHZjcwTTh0Zzlqb3Ix?=
 =?utf-8?B?ZkMwellCM0F6OXdzMGlCS2cydFhFd1BYNEhWbXY1SDN2NFExWkZBazZralBR?=
 =?utf-8?B?eTdQblQ5NDFlRzZtUFJYcU9RMEszaDFiZnVaeFJuUGhCc2E1elhlcTE2ZnFE?=
 =?utf-8?B?cFk5YjRkY091VVNLOVAxVUx1STRyT3JKSW5yVU85VEFpVnFyRUtVOXV2c2k3?=
 =?utf-8?B?NHJZN3F6L1BXaGp6Y0d4NkpRdXEzZGhlOU1BY0t1Mk1jSkhCT3dJMlpHMDMy?=
 =?utf-8?B?Zk5QRTB5aGJJTGhHNkZ2dmgrWitWZlVzRDhuT2xoN20yenZiOVdFNW9SeU94?=
 =?utf-8?B?eHdxRlB2S2xqanBiazhPb21ER2ZNbk1KU0lMdW8xaTd6Ni92VUo5Q01LaTNL?=
 =?utf-8?B?Y0poRG04dkE4WVN5NVZiUmZQTVphUkFrSzNvZXpBKzVaNW9oRWhOSy96ak03?=
 =?utf-8?B?bHpjdTN5SWNuZU4xNWFpL1hzUEJxdUExRmdJZTFJNHpSR3A1cG8vZURxR1BU?=
 =?utf-8?B?YXRoSnp2K2Y2SVl1Rk55Wmc5Ym5xVzEvMUV4bURQZ2RYY1FkbXl2SXJpdnZ0?=
 =?utf-8?B?WTJhRmJDU3FvOTNDUmI2Qi9XTFh4WHRySEpTQnhVODJ5OEU3TDZiV2twcGhZ?=
 =?utf-8?B?c0VvM2pCVE9SbVNUeWhoNW5IU3QrZThScG1TeXRJMmY3cWxMZFFpYnp1Tmti?=
 =?utf-8?B?V252OG9nZ0dwNGxjM1pyZ2dhU2xHNHhzWFo0aXh6bkpQSW9YSTBYLzVQdHpw?=
 =?utf-8?B?bzJndlRPaDhsMUl6ZE5BV2hDZWEzaWRrNHpDbmIySEFZSVBmOWNYSC9lSlox?=
 =?utf-8?B?aEdBenhvbSsvUmdRcGovdzJGZExTcDBMdlNVNElwd0ZTbWhveVRZTnU0bXZV?=
 =?utf-8?B?RGliK2JDWjlaUWFGdTVpKy9NQm55dlRlMUNUL0JyMmhvdEFzbS9CZkZNa0Vk?=
 =?utf-8?B?ZUIzSno4RkNvbXRCUGpUekh0c0dzUStLdzlKaTN6WUpwZ3ZhNkJNaU1SQ05H?=
 =?utf-8?B?YjA3dHlWcEk3ZEFIczVLczB0MTJaRW1Tak85TmZxbFpBRUdacFZjbFR0M0RK?=
 =?utf-8?B?a0NMYkhHV2FvR2xjOWp1WUtEWG16RnBOeWpWY2ZJOEJFVENmYVFiUWRRdFdQ?=
 =?utf-8?Q?6DAM/eg8/R3TqXkCqiPvfHevC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 156e80db-5845-49a5-c869-08daee47f5db
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 11:36:46.1100 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9UAqLa+M1Gv/Wm5a6nIbbR3t5Cugy5YUMHCpQMoYHxnqdNgDcCHXMim4FfiYV/vLuFkRC5FH4s+i4YMgbEAedw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7636
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/dsb: Extract
 assert_dsb_has_room()
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTYsIDIwMjIgNjowOCBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDUvMTNdIGRybS9pOTE1L2RzYjogRXh0cmFjdA0KPiBhc3NlcnRfZHNiX2hhc19y
b29tKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IA0KPiBQdWxsIHRoZSBEU0IgY29tbWFuZCBidWZmZXIgc2l6ZSBjaGVja3Mg
aW50byBhIHNtYWxsIGhlbHBlciBzbyB3ZSBkb24ndA0KPiBoYXZlIHJlcGVhdCB0aGUgc2FtZSB0
aGluZyBtdWx0aXBsZSB0aW1lcy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdlZC1ieTog
QW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMjIgKysrKysrKysrKysrLS0t
LS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+
IGluZGV4IGZiY2JmOWVmZDAzOS4uNmZjN2QwODdhN2NhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTcwLDYgKzcwLDE2IEBAIHN0cnVjdCBp
bnRlbF9kc2Igew0KPiAgI2RlZmluZSBEU0JfQllURV9FTl9TSElGVAkJMjANCj4gICNkZWZpbmUg
RFNCX1JFR19WQUxVRV9NQVNLCQkweGZmZmZmDQo+IA0KPiArc3RhdGljIGJvb2wgYXNzZXJ0X2Rz
Yl9oYXNfcm9vbShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpIHsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IGRzYi0+Y3J0YzsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiArDQo+ICsJLyogZWFjaCBpbnN0cnVjdGlvbiBp
cyAyIGR3b3JkcyAqLw0KPiArCXJldHVybiAhZHJtX1dBUk4oJmk5MTUtPmRybSwgQUxJR04oZHNi
LT5mcmVlX3BvcywgMikgPg0KPiBEU0JfQlVGX1NJWkUgLyA0IC0gMiwNCj4gKwkJCSAiRFNCIGJ1
ZmZlciBvdmVyZmxvd1xuIik7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29sIGlzX2RzYl9idXN5
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtIHBpcGUgcGlwZSwNCj4gIAkJCWVu
dW0gZHNiX2lkIGlkKQ0KPiAgew0KPiBAQCAtOTIsMTUgKzEwMiwxMSBAQCBzdGF0aWMgYm9vbCBp
c19kc2JfYnVzeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqaTkxNSwgZW51bSBwaXBlIHBp
cGUsICB2b2lkIGludGVsX2RzYl9pbmRleGVkX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiDQo+
ICpkc2IsDQo+ICAJCQkJIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKQ0KPiAgew0KPiAtCXN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOw0KPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiAgCXUzMiAqYnVmID0g
ZHNiLT5jbWRfYnVmOw0KPiAgCXUzMiByZWdfdmFsOw0KPiANCj4gLQlpZiAoZHJtX1dBUk5fT04o
JmRldl9wcml2LT5kcm0sIEFMSUdOKGRzYi0+ZnJlZV9wb3MsIDIpID4NCj4gRFNCX0JVRl9TSVpF
IC8gNCAtIDIpKSB7DQo+IC0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiRFNCIGJ1ZmZl
ciBvdmVyZmxvd1xuIik7DQo+ICsJaWYgKCFhc3NlcnRfZHNiX2hhc19yb29tKGRzYikpDQo+ICAJ
CXJldHVybjsNCj4gLQl9DQo+IA0KPiAgCS8qDQo+ICAJICogRm9yIGV4YW1wbGUgdGhlIGJ1ZmZl
ciB3aWxsIGxvb2sgbGlrZSBiZWxvdyBmb3IgMyBkd29yZHMgZm9yIGF1dG8NCj4gQEAgLTE2Mywx
NCArMTY5LDEwIEBAIHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKHN0cnVjdCBpbnRl
bF9kc2INCj4gKmRzYiwgIHZvaWQgaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNi
ICpkc2IsDQo+ICAJCQkgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpDQo+ICB7DQo+IC0Jc3RydWN0
IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+ICAJdTMyICpidWYgPSBk
c2ItPmNtZF9idWY7DQo+IA0KPiAtCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgQUxJ
R04oZHNiLT5mcmVlX3BvcywgMikgPg0KPiBEU0JfQlVGX1NJWkUgLyA0IC0gMikpIHsNCj4gLQkJ
ZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJEU0IgYnVmZmVyIG92ZXJmbG93XG4iKTsNCj4g
KwlpZiAoIWFzc2VydF9kc2JfaGFzX3Jvb20oZHNiKSkNCj4gIAkJcmV0dXJuOw0KPiAtCX0NCj4g
DQo+ICAJLyogRXZlcnkgaW5zdHJ1Y3Rpb24gc2hvdWxkIGJlIDggYnl0ZSBhbGlnbmVkLiAqLw0K
PiAgCWRzYi0+ZnJlZV9wb3MgPSBBTElHTihkc2ItPmZyZWVfcG9zLCAyKTsNCj4gLS0NCj4gMi4z
Ny40DQoNCg==
