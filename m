Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5DB6BD16C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 961D210ECEA;
	Thu, 16 Mar 2023 13:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84BF10ECEA
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974722; x=1710510722;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=mNQY6trhM6hOz9BBPnaaNXMgXZENDz1DRoDRJMh4bjQ=;
 b=MrV3AgzKiFz7IqZ1CakHJV0l7qSS95tI54jvT14/+4oy2QqHgU1lgDt2
 +RAAY/IkF4Od8F9P78WTpmsqoVp65UKdVLSUHtuITgP+NNDv6SpOu74cY
 jy6g0iwtW78h4/u8Ajq2HD+OnW3AaRAzSIXXDfgPvdPVNVDdx1FS3wvVn
 f8ivFJpep2QA0UrjHa+4V2KKZ9o4d9mqlsTRSeWRrlDWv5TGDEytuLN0v
 JhaC++C5HwazDtvglK/g9lhlPc5sibSd0QX9e4znHrE0cjO+UQZg+Jw9m
 9aTvQZ48kcKzRqHikhHPeM1vBonDFU5mhbhJcc31FQzMRpsUk7O5ekt+N w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="338009612"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="338009612"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:52:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="682316684"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="682316684"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 16 Mar 2023 06:52:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 06:52:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 06:52:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 06:52:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 06:52:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rxh5bH0sLiYnElMvw7rdTMhoUty3hFbXmbVTgWAd9q0QW0OClijGxeon3jaN8Wi+g7eBdk4U3EO1To+nJGOVV+GdEdioBg1du3tbXcCNqfBzzHvxx+9VkhamwsN7GH3h7ARlhNIIxVP61nQaf3govaYWuyuedrrUNa4IxKITsls2pPl2xU8VXLW6R0fkSCTm6y+bw1R7a8ewazxMxnksQ9mn8YHNhDU1iMwamMhlo7CqvHY+oswTxx8ionJUx5fYU8LyMTU/y0JlTvBI3WMX8VcgTfmabtVg5PjIx/YYrwPTXzSOCMMMk9afooSoYd423qk2UDHiKDuSP9IUcLCjSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mNQY6trhM6hOz9BBPnaaNXMgXZENDz1DRoDRJMh4bjQ=;
 b=hp+nbqCtL4glrKs4X1Bx6JybqvFa9AngnoOvgzWpoDnW4Q68A5olmxFJwGYIjyADHOGI1h8ODYWx07dXYuywjUNI+5L0U5ego4rzHN5D7CGVY2BgT4G3L3uv1A064ROpDmzF33bzJOmN1UtyUynZzSshh+q54MmXtkus40FJEoc/yE8iiXUSdmo1XIaB/0ImbI/KIqMqkq8KQCRYuoHeSY18Auoc8IUQrVkjguarbh01mZC341A1DSX+d3L9pBc60J7nSp04lnUsGYisN+YEKgUzMOcNtsZpqvvwbJNviP2A7x3mxF6Zx0vNnFJc+rKpt657W8mUsZjIgg+Da3kX+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by PH7PR11MB6723.namprd11.prod.outlook.com (2603:10b6:510:1af::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Thu, 16 Mar
 2023 13:51:59 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::ecb6:23da:cb6c:683b]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::ecb6:23da:cb6c:683b%10]) with mapi id 15.20.6178.031; Thu, 16 Mar
 2023 13:51:59 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH 03/14] drm/i915/tc: Fix the ICL PHY ownership check in
 TC-cold state
Thread-Index: AQHZWAmx1lZL4gWAokCCiQxTAl2ojq79bNyA
Date: Thu, 16 Mar 2023 13:51:58 +0000
Message-ID: <d1f7cf09a93bf539a9b11eae69e57c46083d6e98.camel@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-4-imre.deak@intel.com>
In-Reply-To: <20230316131724.359612-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|PH7PR11MB6723:EE_
x-ms-office365-filtering-correlation-id: 90b2e0e8-c879-40fe-bede-08db26259cc9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ydMybJPCExldRmnY5B8fgFDGcBg7tT0ALl0Qoy/Gq3an09d2ylN2zcNKjjj4oS5YcQd6rdfiz9ZDPvTaqXGRhQD8PCHBEqDFrWQe9mr0j75uX1hcN6EwUT3o0cDqfpUbK5inb7rE+TMbEvmELGpIQLjhY72vrNH29+QIBUHU3sbMFtnS46mM4lEK92FIXotPBei3m/dyC9u4yeSw2Hurhuvm5M2pgZtFFqc22w8tso32hyDDsfXs7PvCdxKgjEUefB2sc63wsG46LWmjNCizQJbrSnbX4kvBJx8tgZF10y9scUjmn51evbb4XEaYEv/qmPfsWo8rXyuarnr/bxFUsyQk1mricB4OoK7Q0Xk+o9lbt8xaGF1gF7QYlrNTvI6lNL2dUsCJk0tiTPHEp5o+4pSimwFXQ0CgKajYyLXxpApQHbBpFYNSHKFJ2ypH9uFpyBTSimKOktpw0/Sh0pCSXlQmGq4BwxhJPPYa5iM7DhKefA7TW87pkzNlBdojfFUiyh7jrVgbBcZtFpS1pLrKYYJdPqjDHoSsFskM4amWIGBE80vZwdPIx3RWTocTnOHVH7qOb81nC7UgYZzt4ijODL7Mmr6yeHCdqoZ3p7hO3brj4q/GoFucY698QHog12j3/WfgnycyhXMa6ZZfVBt+kVzPTXeryBn6pQ11b823ft1PiqFIPD7gLOgClardchYUupCoQXo76l4lQdz5OTQYnw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(39860400002)(136003)(396003)(346002)(451199018)(6486002)(82960400001)(2906002)(83380400001)(71200400001)(26005)(6506007)(8676002)(5660300002)(66946007)(186003)(66556008)(66476007)(6512007)(8936002)(76116006)(41300700001)(2616005)(91956017)(38070700005)(64756008)(66446008)(122000001)(36756003)(6636002)(86362001)(316002)(38100700002)(110136005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzFxRk1ZUDRUWnRUT3JzU2FDc0h4elNjS0ZWdFNGOUVLRlI4TlRhcnlUNmdt?=
 =?utf-8?B?MGFXTk1DM1BIcHNXVTFiVjBCTmVEL3VraEhmVWp5bk5BWSsrS2JKTzE0c2Vm?=
 =?utf-8?B?MXdTOXVhRmxma2tDVm8vc0VlMFMvQ3JmYjYvZytJQ3NZYWNaQTJTaFE5TXQ1?=
 =?utf-8?B?by9iM2orMlljNDRlRU5zVUo1VWZEMGZiVGRPbXZHZER3djhadHp1QlYrcHdZ?=
 =?utf-8?B?Vk5DL0VkcU0zSGJReWtPWHdjdHM2VVltYUlQNVo4MkRqU0VYRDVUOHhTN25Y?=
 =?utf-8?B?Z1pka0w4WktYVnRmblhhMjlYMmxNZUU5WTQzNStYZ0hramVqalRGLzhPZXg0?=
 =?utf-8?B?NTFmOGFDK2ZzeVBFbnhaK1J5NE1iSTZPUDV5dzc0Nm1EdjFIdGRqNGhhMFlW?=
 =?utf-8?B?ZmFVVGliSGhEa24xM05Oc3I2L2NnNTFadFhvM2RWNllqd2hFaWk2MlFTWmxn?=
 =?utf-8?B?ME1CQVhYWUZPL2tvSEJ0NVozRGRlRWpndGRka0JWb2ppTlVBZVZScUlTeHVj?=
 =?utf-8?B?NUFMRnpyeDdLbUk1d2lnMGcyMEZzQXZRdHRwMUhOanRnb2l4Z21NUkZ1azBP?=
 =?utf-8?B?OTlzZjVsLzg3Y1VjcnV5VTVXR1JlR0pIeXl4L1gvRjlMcm9LS0JsWjRTU3JU?=
 =?utf-8?B?OXlIVFFudW42S0VrWVVaZ1F5SXg5cDhlMDVlSmY1NE9QWlFEbTNhQUgyM0NM?=
 =?utf-8?B?ekZ6d1dzNmppZmxnbk5OeWdGQUNCQVNzTWZKcjZJbnZvUitSeFlEaDVSQlZI?=
 =?utf-8?B?YjhsaXc5M1E2anpiZXVMUXphZ0RQUXB0dVN0bGFCRXR6eDk3RjRNNFlIVzhM?=
 =?utf-8?B?eENOZGxJYjI4dGlkeGY1NGJIYzVzSnE1TzlwZHZkNC9NclZZcGd2Q2ZWQ0Zo?=
 =?utf-8?B?N3lqMkE4MFJSNzNvMjRtd1E1YnoxbVZVMW9TcUNvWXVmMUdoempkZ1gvS3Bh?=
 =?utf-8?B?U2taQ200WlJDWHhiMmQvQWpTUkg1Vi93LyszOTFzSWVZaEZLSndwTGNzRXpz?=
 =?utf-8?B?YnNxZk9HM1oyUllPdWExZ21sYkI0VTNWWVVXZTVtTGVHY3JIbEMyWjVOVEt1?=
 =?utf-8?B?SHFFLzhRYjVvSkF2WHBqNWlXb2NpZzlaemNVNllxdEZ6cmZJa1dZVktMVFBh?=
 =?utf-8?B?T1FWZDNNbDkzbmZCbllhMWFuVjNVaVhzWHlMSEFJQXFueDNRRVNac2lyZlFr?=
 =?utf-8?B?Q0xYcTFZTWp2ZTJEY21ValZOMkRWWUM5RHB6Tm9iaFJ3bVRMenZCek9tbGZE?=
 =?utf-8?B?SzZBZE5TSHk4SzhGNjdwTnJMdzBoa0dBYkt1WWc2Zjd0Yjh1WDc0WWZtbjJ5?=
 =?utf-8?B?NTZzZmlhQjFwNVpZbkJlcnhZMEQ2d0E1TERtQTZLVFpPUDNoYmwxV2JuT2lx?=
 =?utf-8?B?OG1lZE0veEFPZFA3WVBJc24xQmtlRlYyVTFIR0ZBU0xBa0NkYVg1RmF3c0pw?=
 =?utf-8?B?SGl1N0dpM3VZREZmZTF5dUZvaTlPU0hoRFpmMFVHTGxLYmFXS01oZXZPWnNR?=
 =?utf-8?B?MmpXUXY5S1VSUUtnZU5KZ3NBZEY0SzlsNEJqZnZPK0V2ZkpDYm1uLytvVG5S?=
 =?utf-8?B?Rm0relYzQ0xRRWdqUmpZd09jUG1SZCtBU2hMOWxyY3B3SFlCeDRxR2k5eks4?=
 =?utf-8?B?WUYrNHBNTEg1OGtnM1Jmd2VBay9nZnBpRkl6VDNRN0REaEVHdTBTMEdpWGE1?=
 =?utf-8?B?dkxnemJCdUsvaHZmNUI4bEhLMFZsSStkS2ErMFdIbEVrcFJzbkM2UjdMUU5a?=
 =?utf-8?B?S2tWZWo4dUNFejQvWGRnZGF0UWY1cVNGbm54TUhsKzJTZkd4d2kwRnFFeXlt?=
 =?utf-8?B?NzFnbVlEZzZBajlYaGNzbmcrbjlEVlNSQ2xQREgzWHVvcW8xRnNkU0thNnZ4?=
 =?utf-8?B?UmhEOU1nZXJpampUUnV4UVBGbWNRci9FWllZOFhhVlRwMDJLU2ZlQUc0YXlv?=
 =?utf-8?B?NUR1VzFWcHZtRExQSHJLMHBiUkk1V0FHaFE4dXMvbGVGektSM05yMkRKWFVJ?=
 =?utf-8?B?OVo3UktYeStDOCs4UlBqenozSmlXWFozcThnQjl0RUgrNVRwTW4rYmpwT1M2?=
 =?utf-8?B?ZVBGaThXMjlnSlR5MjdFMHRpeVBoUUZqWHk3NTNZZzF4WjU2Y0xRVGxoSysr?=
 =?utf-8?B?RVgyU3hzMVhONW0vTzM4M2NkbHlWcmJvS3grYWxRQkxpeEE2Ly9kK2tEUUVI?=
 =?utf-8?B?bnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F6941CE481CCD94B95160225D765277A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90b2e0e8-c879-40fe-bede-08db26259cc9
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 13:51:58.9013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1TXhSWi+uVU0iwlGjjy2tD042X3/XWrAAn3OIHGrG5a4EClmWwtUbAFYkPP1O1CpVlKK/T3GalSOeDskC25EjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6723
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915/tc: Fix the ICL PHY
 ownership check in TC-cold state
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

T24gVGh1LCAyMDIzLTAzLTE2IGF0IDE1OjE3ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBjb21taXQgcmVuYW1pbmcgaWNsX3RjX3BoeV9pc19pbl9zYWZlX21vZGUoKSB0bw0KPiBpY2xf
dGNfcGh5X3Rha2Vfb3duZXJzaGlwKCkgZGlkbid0IGZsaXAgdGhlIGZ1bmN0aW9uJ3MgcmV0dXJu
IHZhbHVlDQo+IGFjY29yZGluZ2x5LCBmaXggdGhpcyB1cC4NCj4gDQo+IFRoaXMgZGlkbid0IGNh
dXNlIGFuIGFjdHVhbCBwcm9ibGVtIGJlc2lkZXMgc3RhdGUgY2hlY2sgZXJyb3JzLCBzaW5jZQ0K
PiB0aGUgZnVuY3Rpb24gaXMgb25seSB1c2VkIGR1cmluZyBIVyByZWFkb3V0Lg0KDQpSZXZpZXdl
ZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4g
DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4g
Rml4ZXM6IGY1Mzk3OWQ2OGE3NyAoImRybS9pOTE1L2Rpc3BsYXkvdGM6IFJlbmFtZSBzYWZlX21v
ZGUgZnVuY3Rpb25zIG93bmVyc2hpcCIpDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3RjLmMgfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90
Yy5jDQo+IGluZGV4IDBiNmZlOTZhYjQ3NTkuLmZkODI2Yjk2NTdlOTMgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTQxOCw5ICs0MTgsOSBAQCBz
dGF0aWMgYm9vbCBpY2xfdGNfcGh5X2lzX293bmVkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0KQ0KPiAgCXZhbCA9IGludGVsX2RlX3JlYWQoaTkxNSwgUE9SVF9UWF9ERkxFWERQ
Q1NTUyhkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOw0KPiAgCWlmICh2YWwgPT0gMHhmZmZmZmZmZikg
ew0KPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiAtCQkJICAgICJQb3J0ICVzOiBQSFkg
aW4gVENDT0xELCBhc3N1bWUgc2FmZSBtb2RlXG4iLA0KPiArCQkJICAgICJQb3J0ICVzOiBQSFkg
aW4gVENDT0xELCBhc3N1bWUgbm90IG93bmVkXG4iLA0KPiAgCQkJICAgIGRpZ19wb3J0LT50Y19w
b3J0X25hbWUpOw0KPiAtCQlyZXR1cm4gdHJ1ZTsNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiAgCX0N
Cj4gIA0KPiAgCXJldHVybiB2YWwgJiBEUF9QSFlfTU9ERV9TVEFUVVNfTk9UX1NBRkUoZGlnX3Bv
cnQtPnRjX3BoeV9maWFfaWR4KTsNCg0K
