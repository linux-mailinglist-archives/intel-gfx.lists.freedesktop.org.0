Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F4C4E5854
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:23:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 488AB10E061;
	Wed, 23 Mar 2022 18:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F395610E061
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648059806; x=1679595806;
 h=from:to:cc:subject:date:message-id:content-id:
 content-transfer-encoding:mime-version;
 bh=f3zuTRiWwgO6bF6KOugu3/ZqLRuIGgEe+XKRHDCSSMs=;
 b=SQY4swUO6KxMEgu3CcYQTrzLAYrk5iCgXpVPkI2sIsUlGb9ABbT6U4FM
 qhkS5VJZ7svqDYpY1Bo8iYgluLiaBAEHFgK+vqieoTC/17h0jwBrym15+
 E6IgdWb9gtjfG3hAt1FzlCHPkUYKYeOb3eAZ5L9yWYLezp7iZsgFmp0Rm
 5iIeHYQ+4+l//4q0Y4UMJAJDcdtmm6/vkzKq62bCo0+X4Xq+oexHP3zej
 F4YZqhB4mjeCPRO7tweqHaAtD3na2awAy9bxMdprV6vokMk9o+yOiR96R
 wvaL+CTmGRWeTl2Ghv5R2fvt+Y4RmIH0FnAl2veU8/p5hKdUb0xV+/H43 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="318907865"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="318907865"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:23:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="544316425"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 23 Mar 2022 11:23:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 23 Mar 2022 11:23:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 23 Mar 2022 11:23:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 23 Mar 2022 11:23:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HjV426nvBZZfE9ZySuIi4bVpJqeNk2DakGW7hvtsgkRpS7cMPFL/9xO7gP3yM6NeWgGMKKgA3WYLx2by4hBVDtHCwdMIKWPc7bAEh6OgMfFXaLk4asvHFUgkvvrM60ofrltgTf0qEwoDZYwhUwHyCHz8PZB6mzJgZSXS5l1vrPAtv9VSF2cI+QriLMrVnsf8vbeijK5QMPEK/f6p4FS5ibrwoSR2Ihka1BDErQ14gpvjbG1H09kR9Fri1nMXmgr9RSYsXewCxr95jvD5w9FOuU+GcbSrPHhnsH1qqXxlXmNVgwf4A1HkwzYMfJYouflZi7gGNw0OtmbnnVSzVri20w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f3zuTRiWwgO6bF6KOugu3/ZqLRuIGgEe+XKRHDCSSMs=;
 b=XfSegPrd2ufL8cyPdQyvoGhNX8xTIEp0uju5+vG9WVc/+3MPN6IWQA3EJmeyNaYCPrguEhebePWdYPAS0aXkgJAdscymyqx1Z9vDxN+unO+drKEYuksgyMhuadm98dMyG9OhNIeqLLL2ozevLY/ohN9ljw8M6pXqksjQZWYIewIc7aoVOYl11Vd6fV0uevjEVbCorAgrMWWU/4KcNi0OaMbAGdkQIAp/LQL/LIvCFlKLTQN1BBoLzBW9/Mj0kHnRUG6vyE+kGLsZSF4TjbS81XbJesZMWBYduOnVvMlMt7pfoaSM8kB0fdolZU+MZ2rUCjXsBLkVlCjQYVEP+qDehw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by BL0PR11MB3124.namprd11.prod.outlook.com (2603:10b6:208:30::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Wed, 23 Mar
 2022 18:23:05 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::4818:ff2c:ac59:8bc4]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::4818:ff2c:ac59:8bc4%3]) with mapi id 15.20.5102.016; Wed, 23 Mar 2022
 18:23:04 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [CI] PR for DG2 DMC v2.06
Thread-Index: AQHYPuMJhsBSxygKoUWrPZ6ke5oRfg==
Date: Wed, 23 Mar 2022 18:23:04 +0000
Message-ID: <2ebce4dd176208e368ba13d0c2f3d4591bf230e9.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e168ac86-8434-4c25-2d2e-08da0cfa2c24
x-ms-traffictypediagnostic: BL0PR11MB3124:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BL0PR11MB31240E78A5ADBC3FB13A5954C7189@BL0PR11MB3124.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4ocg06cHFN4MBAvAxKxLEtbELvuJogB2F73m0uaiYCkd0BQkYbbE7ukghnwIUHn8AKmGyvYTbLhotUrl637ghJHCruQIZtj79lhzEPzsbPoTBdPp/m3eWM5azNnwvaq6LJeze0f9lgtYN4ZNTTq7Kv8j0uB1aqKYPEbCdP0Pfd3lasy9TY43RSWA7+thN9exZlqnXgXvjqyazFH9gwYO2Ixd4AHFMx3qKTUpH029CcdrMbydSz106SozP3Cbx6Z3vcVFsezJVw60QFu6A8sJhHow2a+xWcldPQ1M4uJvSrfznv3kT8L9Ia+U8xtLwfMdUjeZCBM/9YG34NGl/C1bw6PYN81epZU8zFdjhgds5OCMBFCI60CfoKvv4MmLvWZZhoXW2pOvFjo0ceyfIIKukf1hiI7iUpYZQpkf6EOYpWDRKGl5IuiSiPg2McWYCehHXgG5qveHWO9coS4K78achZ1mlIhB5VTK/3hE2RlOktz452PKh7hKLH06fetkhMa6xvd+YkGYC50fD37jaSpZICfMNP5hpCR8taGXBL39Jmpx9tuzwtI3Xt7VgumwZneDOqzJ2+ykaBdXC8GlofEIWNwb+CAYoTajM669GZtb1wY9ZaRbDbYnGv739yJRyImKDhcdXlBmbOjc9XybkK+Q4UZwzh8HJkRD56wU4RxGY2/MQgDmpWMi5KbiDqoM34YydzzCzW7YA7reFWvlTW++Xw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(66946007)(66476007)(64756008)(66556008)(36756003)(107886003)(66446008)(186003)(6512007)(76116006)(38100700002)(6916009)(316002)(4326008)(8676002)(71200400001)(2906002)(38070700005)(6506007)(508600001)(2616005)(122000001)(86362001)(83380400001)(5660300002)(8936002)(6486002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UEdGcXMyRzhCVzdBZld2SUFxaVJOdWc1WHhRUXczdEFpL2tUYXMxclNOazV1?=
 =?utf-8?B?NGNISXg5Z09YVDJxU3dHSTRGTXJZQTJlUHpOK09yM1lncjBwM2hjNFNyMUpr?=
 =?utf-8?B?bkU4bVROOE5HZTIyQkVCd0pZaGFldE1CTVJFeEVwRlp1SjlXeWdCQ2plZFY2?=
 =?utf-8?B?RkF1L1I4bVFuRFBCbjJhdExRUFFPamRjV1AxK3YwaDBZb0lPaG5ycVBVNTRs?=
 =?utf-8?B?RlRKVzkxcVJ5NWFIM21VTHA2U0xsQUU3QXpMVG5xZk05T2h4TnR3akJ2ODRL?=
 =?utf-8?B?UzZaT1c5clZRWm5BMkFieUhFSXFJNURpZlR5T1R6SFoxU2pxbnl0M1ZDV25k?=
 =?utf-8?B?NmlqRTlxMTV3Sml1dUEreGsxN0JpN1pEZzFsNW9HMmVsYVBYc2tqRFZkNnla?=
 =?utf-8?B?c0ZXMmlqSllFL3dWeUhxcW5TMEd3M242eklOKzgvdnVSbXJyUUdCNUViVGp1?=
 =?utf-8?B?N1p3VlNQUzlDQVQ0VjIrbDZKcDVUVitNc1ZDQXQyZTg4RVNqdHpBTm5XOFFI?=
 =?utf-8?B?dEJLNVFybGFBZ1JuWDJFZmNvcmJsQ2JxVGJyeXgvMWpPdHJiTkJhTGEycXhO?=
 =?utf-8?B?dGMycmJPamFWRGFoTXZEanZVclBTQW9HTy9ieGNKa0hyQlptdjl0a3RKYlVK?=
 =?utf-8?B?Sm43bEhFZ3pzU0FwYmUreEEwZTBNWFlsSi9SeklqV0hmSWhXOFhlTlViN0xH?=
 =?utf-8?B?SUR5TnJVcHBjelo4VDVGNFZJWmZlS1RIQ2dDeGFpc1RPUmhrMVUwcy9LZ3p4?=
 =?utf-8?B?YWVrS3J1M3U4SHI2a2cyNDlxajdMZ2RGZHJOaFZoUWRueTNMaXM1WTEwdmFr?=
 =?utf-8?B?cjhjSStmV3VNQ05PMnRUZ0I0SUF5bUhycmtQUEdSZ1BrUGxWNENEU1hmaG1P?=
 =?utf-8?B?SXExaHgvdGs0cU9uZjZwMlRRcUhIMzhqSnJMN2lGT0N1UDJRUExRK2RlZDlF?=
 =?utf-8?B?NUFiMjMwZys4bGx2bFgzb29zQlNFWGt1VG40UENJSTQzZFFMKzJ2T0xOUEwy?=
 =?utf-8?B?Q2RKL1JrTWs3dVNYbUpqdmFlaW5MQWV2SHF6MmVyQ29raU5ENTF4UVkrWjNS?=
 =?utf-8?B?Mnp0REdBY1NUYjZQbmowTzVob1AzYTRzYUlkMDBzVWpHdzAxQVVicTFVMXdT?=
 =?utf-8?B?SXZZMjdha3BZWHlNZkRpK0t4QnRrTVdnK1Q0MnRhby83T3Q3REQzNmwxeGVR?=
 =?utf-8?B?R091cmpnc05nenRWVEJOSHpKVmZaeXhqeFlWZnZJVm1BRnhXOExsMWY4NUFU?=
 =?utf-8?B?UXJ3S0ZGdGpXNzhidjZ5QXBtSnNSditKTEJUSy9DblJzc2dTODhkdUc3OXph?=
 =?utf-8?B?cGJDZ3NadGlkTUhVbWFOMGtsSnBjQUFZeGZOQ25EODBIcFMzUVo1S0R5VlNm?=
 =?utf-8?B?aWxaN0VFWWhMYnlqVzA5OGowMmJjaWFJaU5acjl6SDdFcXFFSmRSbmNGWTlL?=
 =?utf-8?B?Vi9TOVZSRFRQUWlVWUNueHdyZHI1SWNwb1FJM2M4eGU0RUxXUzBHK1g0eWp2?=
 =?utf-8?B?YmZ2YkJZaURrZmlSYUN6NGJpd213bDI0b1BVVnNsSmFuVStWTG1MSnViUXFU?=
 =?utf-8?B?dENlUkNrWDBKOXFyMUtPa3Zac0VIczA0VVI2ZmhQNmsvT2hUdkZ1dmFSSHRO?=
 =?utf-8?B?cUFtNmdWRlptTUpKWmVuWTdrVVlCUFB5T0YwTnFiVWMxVENQQllxUDViMkJH?=
 =?utf-8?B?MW5tcDBzSjQzZDlhV3hFdFZOdmVJMDBUNDNSY0hLMytGcXVvUnpWdWZGL0xL?=
 =?utf-8?B?Z24wVWJlbkVvTkd2amtJNEJRM1ZwVGdXR052SXhRYzFzRFI1OU5WanVTbTNr?=
 =?utf-8?B?Tm94cUxYK2k1bHJsSDFCQy9PWnlzdG55UCtuQTdkY2YzU2dpREhMTnVGeWRl?=
 =?utf-8?B?UExVL0VvRFBwZSs2RDgrU2JHdUVGNXNkVjJ0SFhFUDhHTzlIODRBMmQvNEU1?=
 =?utf-8?B?S1FOM2Nha3lnR0JTT2J5ZjZySGQ4OTdGTUZPVFJPRkVOR1NOMFBOZiszNmtB?=
 =?utf-8?B?QU9pTWIzaTF0bE9UTGtjMWk2WDJzdW5jUENFc3g3ZmxYcTdQTHZES21aV0V5?=
 =?utf-8?B?RlRuV3NaOFJpUmQ1ZVV2Vmo0RWhkeWMxZkgwT09QTjBLTUsvVGtiZXFMSEc2?=
 =?utf-8?Q?1fvE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CCA9298124CE514593C4D2E3F5ABCEB2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e168ac86-8434-4c25-2d2e-08da0cfa2c24
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2022 18:23:04.7491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iTQusBFTXHKdOd/Liz/DKJby8F6AdPjAh+cR+d6qan1WsxzxMmvouGiGFw4KGPM3KyOyVgUWrqNvmsvKco0jMYRppfUWCyldYeiPebEwBM64Q4fzBsIAW0KsgsmhEgOVqSQi/MuWtKVdkeZcpMkD1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3124
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [CI] PR for DG2 DMC v2.06
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdA0KNjgxMjgxZTQ5ZmI2Nzc4ODMxMzcw
ZTVkOTRlNmUxZDk3ZjA3NTJkNjoNCg0KICBhbWRncHU6IHVwZGF0ZSBQU1AgMTMuMC44IGZpcm13
YXJlICgyMDIyLTAzLTE4IDA3OjM1OjU0IC0wNDAwKQ0KDQphcmUgYXZhaWxhYmxlIGluIHRoZSBH
aXQgcmVwb3NpdG9yeSBhdDoNCg0KICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0v
ZHJtLWZpcm13YXJlIGRnMl9kbWNfdjIuMDYNCg0KZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVw
IHRvDQplY2MyODA3MGVhNWVkZDQ3MzNiNzg1NTAzMjZjMWQ1Njg1ODE4MWFmOg0KDQogIGk5MTU6
IEFkZCBETUMgdjIuMDYgZm9yIERHMiAoMjAyMi0wMy0yMyAxMToxNToxMiAtMDcwMCkNCg0KLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KTWFkaHVtaXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXAgKDEpOg0KICAgICAgaTkxNTog
QWRkIERNQyB2Mi4wNiBmb3IgREcyDQoNCiBXSEVOQ0UgICAgICAgICAgICAgICAgICAgfCAgIDMg
KysrDQogaTkxNS9kZzJfZG1jX3ZlcjJfMDYuYmluIHwgQmluIDAgLT4gMjI0MTYgYnl0ZXMNCiAy
IGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBpOTE1
L2RnMl9kbWNfdmVyMl8wNi5iaW4NCg0K
