Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD965EC0AC
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30C810E285;
	Tue, 27 Sep 2022 11:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF06510E285
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664277137; x=1695813137;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e2ful33GQu2x04GvmyFet21t/a8dzNrPJOaSjTehj2I=;
 b=csmJC4pbpneGVMKkppOkKULxnNq1EaEt8p/PkFtgZ83xDSNJnjNg/fyA
 qWr3v+IP9mGSss9O6SoI0xHT0JgnPZ4q3me5HUmNJucXrXPk1QUk6hfjJ
 X9e7RH6SY7HZxG7GXq8/lhHovZ5+zrPuedn0V2q+1EPtr6o5YxP3yyUOB
 zPbLINHoDwW6BIJMvwobekzxSii6fjyKDXSJ8wSZzH+rRtEMTb+TFCtvf
 xqeFG5pH2+1Mkhp0iEXTTv6r9R/FxZ4RId2AhcM1KZ93yboHcoYo+lhIZ
 bnLAVNK4q4TlXMzJGFvM43zvUE55aFOhpHN0TcSi48qthhI/bvlBtEyDg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="298884969"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="298884969"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:12:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="599142458"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="599142458"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 27 Sep 2022 04:12:17 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 04:12:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 04:12:16 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 04:12:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PukH5ERQRo8OSuK5zpfaO8qEVVrZhxYIkTFVxvoFhMzYeAFETDEcAAvJztXbwlx66RO0Yk14hCfyHQBPOK4QHYBgk3f7PWBSKQEzEOkpwjw4TOe+7YT+a4VsOKtpjbETR20flJVlX6boiMuGWytkICybbqbyLefNxCtspC9CJealvtMOKqWUzBV7y5iOY8bvNhRrZU4DwkpmZs8voHzJE30K6+g9fw8iia8kSqvAQI45ZQUTFHqtkCXIlTvjuPCD1Wj6g+9h1mDCIflW42EEpWJh+W5r2I7ggExmMUYqW5qWJmWc9SIaKEPhqRb9FqNL+Sr3wvbJs4tJyjPtq0SX0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e2ful33GQu2x04GvmyFet21t/a8dzNrPJOaSjTehj2I=;
 b=DO89GyaPQGu0EGXiGPi+FPnBzQYpnMR/DPUE/yC7Erfiy4sPXznASlxm0aihNR6CI/K2gxx2fZ9tmicrSfJvdJdktROl4cpe/ZeMhSaM6BcyzTVBBJ1+CdS8DQk/3HZwb+DGLjAjOux3mlUYP3OwD4nM9M1jJSUhj55low+UOA2Ab4ssMSHwzDEkOMAu+n5WtS+e8Wxf/bXtXasx5C/iBWJHbjNcyGe8jR+kZtPOZIlLjJDctV7Zgzu9CDqSTFHO4qwrUgb9zgwAgsjFW/Iryw7Co6Xd9qlwSNDatpELOK+V6nnK7oU/ki74GnYauoEXFKc4RIKC/igu9n8oHBzLJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH7PR11MB6500.namprd11.prod.outlook.com (2603:10b6:510:213::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Tue, 27 Sep
 2022 11:12:15 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::c144:218:70eb:9cbe]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::c144:218:70eb:9cbe%5]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 11:12:14 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>, "Tauro, Riana"
 <riana.tauro@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/3] drm/i915/guc/slpc: Add SLPC selftest live_slpc_power
Thread-Index: AQHYzzvPtNKXtjAo4UussceMs6zdKq3x5POAgAE/yhA=
Date: Tue, 27 Sep 2022 11:12:14 +0000
Message-ID: <CY5PR11MB6211F84E31B356A627ABBE6795559@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220923110043.789178-1-riana.tauro@intel.com>
 <20220923110043.789178-4-riana.tauro@intel.com>
 <52445825-138d-f2f8-25d9-c13ff25dee12@intel.com>
In-Reply-To: <52445825-138d-f2f8-25d9-c13ff25dee12@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH7PR11MB6500:EE_
x-ms-office365-filtering-correlation-id: 510b1a27-a4c8-4a1c-d4b1-08daa07921f6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: keCwoSQw/6N0ouB0ImoTd9Ghj7CTr+EvIReZwFn+usHc1SUn1BsEoy6wb0io3MpQNQ52eQrhKKUnQLT3ERODJg+9LY2Hr29x14KyyLXsrpQTz0fI8PT6MatH7L6p4JdiumJcxCSWgRZqv9nl4yzw6UjDQ6K49ynUCMlUr2ltfRAqxit2cpty56kAJ6hhd7WSTJBEAivBfjohFc7PvlCY0vw/6uG9JlI4n25OHCTMd6mlUYwQSqb3mFHttD+51dYRFEsorO2sa1B48mgnnt2XKWMtkTr0F7ZFvBae9NVe7I2Y9wzmJHQqo2n/ybLue1O33l9JQwniIXp9cnk8bxXItltCNvzLfiJrYypIhCplFcH7XtMZyuo7A0AuSvwXsKaT34Pt85sxPCPv8bqMCrcyuSepcooHTBcVMJ8+egFRLLHVAzZRPFAsR/65IGM/ahCNAizW5M+RwU0sgXbz8MOpyeTwDuBaZmfWrlO4HSNdlpxOIqh8hT1deN8LqyII/TFXW2CZuB01LQbet3Dlzqd7OPWIVuxavBXKJEz9Z29zDz7Ccy2LvtAb71j7n8Wd4AFpfZazNBI3J2GLuIYmIz9/zyCCb3NF65h7dL1bqyd2/v1O8+zGf20hLqgyfYSKnjmvdPUrjrDSK+91li6Mk03QQk7QWA/4Prz4IQC6ldPPDG1HsbcbAx3GNtdQO3YH+Yno5CGaD8KL7nENQ286ADlY1eD9jbT7V/PC34/WEYZLXz6vWJ0L1njXmuk8iCssPGiuNqfhKODF9MYm8tz90c8grg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(396003)(366004)(346002)(451199015)(6506007)(71200400001)(7696005)(53546011)(107886003)(55236004)(41300700001)(478600001)(83380400001)(9686003)(5660300002)(186003)(2906002)(26005)(55016003)(52536014)(64756008)(54906003)(110136005)(8936002)(66476007)(66556008)(66946007)(66446008)(76116006)(8676002)(316002)(4326008)(82960400001)(38100700002)(86362001)(38070700005)(122000001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rmw0YlBFVVBrTFZJRlJQMkdud0x2Z0dYMTVycUM0dnhsTFJ4THlQeDJESnFt?=
 =?utf-8?B?VnNkMDZKczBocHc3bFFQNzI3OHNnYTdrUzFpUEErL2tOeit3QTBPQUYrNno3?=
 =?utf-8?B?aktJRDFYdEVFdnY1YWhseU5IZE9EdXJYenpyckRFcVNCVVRKQWZZeHM1cVZQ?=
 =?utf-8?B?WXpnNXlGdmNGWlA5WVZ1SEpTNmFoWXp0RFYySitKRThtYjVNb0JGRU9hMVg5?=
 =?utf-8?B?VHNQeXZwVE5wV3U3czY2WHlXdmJqMGFKbVRabVF2UmlFd29TNXY5T2xVZVND?=
 =?utf-8?B?em1OTDg4MUo4OXRocVBJVFowZVEwK202NDNNK0oyRTlXT2h3UnVtazlUbFJG?=
 =?utf-8?B?NnY3eXgwbGxxYjV4L1J6akJpMktIWjZ1MkZLR3d1RWQ1VVUxN2hTMUNyYUF2?=
 =?utf-8?B?THlPUi9oZUNlaGIrR0hCVFROTitMRDl6cWxRME16NjM1NlRQVVIzb2E3eTBi?=
 =?utf-8?B?OVNkRWpnay83aFJIbjFiOVdUQzEvckphdXJYN2s4aDR0b2ZlcHVNVExWR3VU?=
 =?utf-8?B?cE5ZL3BhWU93V29sQXErRU5lSmhKdzRhREdtMXRHbTEzVGh5K0dleHdHbXMv?=
 =?utf-8?B?UHk4UExMQ3V6eXBMK0lWVU9nN2Q4a2VNVWlRUmtLOVM1WmZzcUNudTZ2Qlpr?=
 =?utf-8?B?dWh0dzlGK0RYN3pPUTRrdUt3STNOMiszRE1uTnZlVmtsNG9laHdKeW5CUjRX?=
 =?utf-8?B?cVUwTUhlb2d6TkgyTnEybVM5NTNjV0RiVEVIb1lyYTBRcFFoL0NwNlhic1Jp?=
 =?utf-8?B?OVJkdUFseUhoZ0pqc2twaFd5NVB0V08vVkhqUThyTFNiakdsMmhLcy96UW1M?=
 =?utf-8?B?c2dPZDhUNUZ4dUJ5YlowUVJhWXN3K3V5SVNBRnRDUDdXSFpvb1JMQlUvYkpp?=
 =?utf-8?B?dTc2NmJOVmppSTdsaUg4R3FXQlpvYngyemJWMVRjOGV3akplVTRrVW80aFN1?=
 =?utf-8?B?cnJISGwwblRDbXRaeGtkbWN5NDJQREZVNFcvbnNLRHZrZTUycEoyTDBCZ1Vs?=
 =?utf-8?B?TFJ5aTI2eVJlclg1TFh4QmFRQytRbGw3ZlMweEZwWnRIbE5aVXNJSkVwN0lt?=
 =?utf-8?B?M2RFMGdPZ3hXV2RRK1FEZ2wyOWlEd3AzWEV3Z05Hazl1RUUzcy9pd2pkMHB2?=
 =?utf-8?B?RDF5Q1JDL014Q1NNT1VVcnlrNitXeWFsV2cwT0ZVVjFTajVjQXdCSGh6cVN2?=
 =?utf-8?B?VlZESnlMSndmU0h4bE5QUjlvUy90WEVVckJDK0xXejBIOEdEallhV1lQVGdF?=
 =?utf-8?B?c3loUXRCZ3RHdGJuaEI0dmdQMHdrQS9mdGYxSlQwNHdKMmtuYzdCa204aU1j?=
 =?utf-8?B?ODBhMUJpbzZmUDRvREhoWlVYUUxoZ0w2TWhPQ1JmN3NaWEJkSHgxV0tvNzJV?=
 =?utf-8?B?MkNMbmNIOU95QThUbEQ3QlU4aXpVZE1SOFBmN2RZc1pXSUFyb3hvT2lLRUk3?=
 =?utf-8?B?TWV2ODRJUDN0bVdhWU9lYXU2NCswS1VWamRXZjJXOVVacitYRnNuZFNiaytl?=
 =?utf-8?B?WTh3VlVKWjY3R2xYcjJZL1grb1hwZGk4SjlCYVlOalNDcUsxam1hZ1JZSFpr?=
 =?utf-8?B?YlRDSmd6eHh5Y1pFb0E0RzB2VThqOTMvZG9zeHJwVVpGMmtpd2NFc2JMMmhh?=
 =?utf-8?B?Mmkyb1BHYTRoZlQzd21UeS9MWVp6ZXM2c3NEaDBYUVprWDFtQ0pTTmoxZ3Uy?=
 =?utf-8?B?bVJ3SEJkYjhWVUNzYWt0MUNIeEZ6b1RCWnZkcERPR2Z6MXJTWWg3bmppR2hi?=
 =?utf-8?B?c2VFcmo0anZ3aFpsZ1RSRVZOd2I3bVgxS1p3VTc0bTNNY1A4WTNpMklFU3VX?=
 =?utf-8?B?L2FZNUVveXpuajVjajVtMmZrZjFlVXlMT0M3bGpwY0NreXFMMWhCRHNZMkt4?=
 =?utf-8?B?NWVseDZCWGtHMURpTU9BK01tL1VTcWlMdjdsWlQyakErWlQ4RnhKMDlMOXMx?=
 =?utf-8?B?K2hCY2JmWEs3Rms5WDR1RnN6RWVHUldsUXQxTCtKcm41ZDNxTTRSR2llLzd4?=
 =?utf-8?B?ZW5STyt6M1Rva1FXN3FTNytoYlFWR2ZpT1p2aGIyWTlwMGozZ3A4SEg3NjJL?=
 =?utf-8?B?MGZIOG53cmZtU3NyTWJmQXUyWm56YVcxM2I0ZDNjeDNWcHA3N0tDeXpGZ1dv?=
 =?utf-8?Q?vSJSxbYzOA5/yvpVpzcNAeYeY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 510b1a27-a4c8-4a1c-d4b1-08daa07921f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 11:12:14.7033 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oGYWPjr2QfmMoZSxpfVMtsNADa85HQUFpREn8ybo0/bkYu8uhlZsD4N9A5eQBK933rRfrRQpiXJzD4k+Wvm12o39idBNGorHxAi0whMgejw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6500
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/guc/slpc: Add SLPC selftest
 live_slpc_power
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQmVsZ2F1bWthciwgVmlu
YXkgPHZpbmF5LmJlbGdhdW1rYXJAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIFNlcHRlbWJl
ciAyNiwgMjAyMiA5OjM1IFBNDQo+IFRvOiBUYXVybywgUmlhbmEgPHJpYW5hLnRhdXJvQGludGVs
LmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEd1cHRhLCBBbnNo
dW1hbiA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPjsgRGl4aXQsIEFzaHV0b3NoDQo+IDxhc2h1
dG9zaC5kaXhpdEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMy8zXSBkcm0vaTkx
NS9ndWMvc2xwYzogQWRkIFNMUEMgc2VsZnRlc3QgbGl2ZV9zbHBjX3Bvd2VyDQo+IA0KPiANCj4g
T24gOS8yMy8yMDIyIDQ6MDAgQU0sIFJpYW5hIFRhdXJvIHdyb3RlOg0KPiA+IEEgZnVuZGFtZW50
YWwgYXNzdW1wdGlvbiBpcyB0aGF0IGF0IGxvd2VyIGZyZXF1ZW5jaWVzLCBub3Qgb25seSBkbyB3
ZQ0KPiA+IHJ1biBzbG93ZXIsIGJ1dCB3ZSBzYXZlIHBvd2VyIGNvbXBhcmVkIHRvIGhpZ2hlciBm
cmVxdWVuY2llcy4NCj4gPiBsaXZlX3NscGNfcG93ZXIgY2hlY2tzIGlmIHJ1bm5pbmcgYXQgbG93
IGZyZXF1ZW5jeSBzYXZlcyBwb3dlcg0KPiA+DQo+ID4gdjI6IHJlLXVzZSBjb2RlIHRvIG1lYXN1
cmUgcG93ZXINCj4gPiAgICAgIGZpeGVkIGNvc21ldGljIHJldmlldyBjb21tZW50cyAoVmluYXkp
DQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSaWFuYSBUYXVybyA8cmlhbmEudGF1cm9AaW50ZWwu
Y29tPg0KPiANCj4gTEdUTSwNCj4gDQo+IFJldmlld2VkLWJ5OiBWaW5heSBCZWxnYXVta2FyIDx2
aW5heS5iZWxnYXVta2FyQGludGVsLmNvbT4NCj4gDQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9zbHBjLmMgfCAxMjcgKysrKysrKysrKysrKysrKysrKysr
Ky0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMTE4IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25z
KC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3Rfc2xwYy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9zbHBjLmMN
Cj4gPiBpbmRleCA5MjhmNzQ3MTg4ODEuLjRjNmU5MjU3ZTU5MyAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9zbHBjLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9zbHBjLmMNCj4gPiBAQCAtMTEsNyArMTEsOCBAQA0K
PiA+ICAgZW51bSB0ZXN0X3R5cGUgew0KPiA+ICAgCVZBUllfTUlOLA0KPiA+ICAgCVZBUllfTUFY
LA0KPiA+IC0JTUFYX0dSQU5URUQNCj4gPiArCU1BWF9HUkFOVEVELA0KPiA+ICsJU0xQQ19QT1dF
UiwNCj4gPiAgIH07DQo+ID4NCj4gPiAgIHN0YXRpYyBpbnQgc2xwY19zZXRfbWluX2ZyZXEoc3Ry
dWN0IGludGVsX2d1Y19zbHBjICpzbHBjLCB1MzIgZnJlcSkNCj4gPiBAQCAtNDEsNiArNDIsMzkg
QEAgc3RhdGljIGludCBzbHBjX3NldF9tYXhfZnJlcShzdHJ1Y3QgaW50ZWxfZ3VjX3NscGMgKnNs
cGMsDQo+IHUzMiBmcmVxKQ0KPiA+ICAgCXJldHVybiByZXQ7DQo+ID4gICB9DQo+ID4NCj4gPiAr
c3RhdGljIGludCBzbHBjX3NldF9mcmVxKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHUzMiBmcmVxKSB7
DQo+ID4gKwlpbnQgZXJyOw0KPiA+ICsJc3RydWN0IGludGVsX2d1Y19zbHBjICpzbHBjID0gJmd0
LT51Yy5ndWMuc2xwYzsNCj4gPiArDQo+ID4gKwllcnIgPSBzbHBjX3NldF9tYXhfZnJlcShzbHBj
LCBmcmVxKTsNCj4gPiArCWlmIChlcnIpIHsNCj4gPiArCQlwcl9lcnIoIlVuYWJsZSB0byB1cGRh
dGUgbWF4IGZyZXEiKTsNCj4gPiArCQlyZXR1cm4gZXJyOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAr
CWVyciA9IHNscGNfc2V0X21pbl9mcmVxKHNscGMsIGZyZXEpOw0KPiA+ICsJaWYgKGVycikgew0K
PiA+ICsJCXByX2VycigiVW5hYmxlIHRvIHVwZGF0ZSBtaW4gZnJlcSIpOw0KPiA+ICsJCXJldHVy
biBlcnI7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGVycjsNCj4gPiArfQ0KPiA+ICsN
Cj4gPiArc3RhdGljIHU2NCBtZWFzdXJlX3Bvd2VyX2F0X2ZyZXEoc3RydWN0IGludGVsX2d0ICpn
dCwgaW50ICpmcmVxLCB1NjQNCj4gPiArKnBvd2VyKSB7DQo+ID4gKwlpbnQgZXJyID0gMDsNCj4g
PiArDQo+ID4gKwllcnIgPSBzbHBjX3NldF9mcmVxKGd0LCAqZnJlcSk7DQo+ID4gKwlpZiAoZXJy
KQ0KPiA+ICsJCXJldHVybiBlcnI7DQo+ID4gKwkqZnJlcSA9IGludGVsX3Jwc19yZWFkX2FjdHVh
bF9mcmVxdWVuY3koJmd0LT5ycHMpOw0KPiA+ICsJKnBvd2VyID0gbWVhc3VyZV9wb3dlcigmZ3Qt
PnJwcywgZnJlcSk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGVycjsNCj4gPiArfQ0KPiA+ICsNCj4g
PiAgIHN0YXRpYyBpbnQgdmFyeV9tYXhfZnJlcShzdHJ1Y3QgaW50ZWxfZ3VjX3NscGMgKnNscGMs
IHN0cnVjdCBpbnRlbF9ycHMgKnJwcywNCj4gPiAgIAkJCSB1MzIgKm1heF9hY3RfZnJlcSkNCj4g
PiAgIHsNCj4gPiBAQCAtMTEzLDYgKzE0Nyw1OCBAQCBzdGF0aWMgaW50IHZhcnlfbWluX2ZyZXEo
c3RydWN0IGludGVsX2d1Y19zbHBjICpzbHBjLA0KPiBzdHJ1Y3QgaW50ZWxfcnBzICpycHMsDQo+
ID4gICAJcmV0dXJuIGVycjsNCj4gPiAgIH0NCj4gPg0KPiA+ICtzdGF0aWMgaW50IHNscGNfcG93
ZXIoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGludGVsX2VuZ2luZV9jcw0KPiA+ICsqZW5n
aW5lKSB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZ3VjX3NscGMgKnNscGMgPSAmZ3QtPnVjLmd1Yy5z
bHBjOw0KPiA+ICsJc3RydWN0IHsNCj4gPiArCQl1NjQgcG93ZXI7DQo+ID4gKwkJaW50IGZyZXE7
DQo+ID4gKwl9IG1pbiwgbWF4Ow0KPiA+ICsJaW50IGVyciA9IDA7DQo+ID4gKw0KPiA+ICsJLyoN
Cj4gPiArCSAqIE91ciBmdW5kYW1lbnRhbCBhc3N1bXB0aW9uIGlzIHRoYXQgcnVubmluZyBhdCBs
b3dlciBmcmVxdWVuY3kNCj4gPiArCSAqIGFjdHVhbGx5IHNhdmVzIHBvd2VyLiBMZXQncyBzZWUg
aWYgb3VyIFJBUEwgbWVhc3VyZW1lbnQgc3VwcG9ydHMNCj4gPiArCSAqIHRoYXQgdGhlb3J5Lg0K
PiA+ICsJICovDQo+ID4gKwlpZiAoIWxpYnJhcGxfc3VwcG9ydGVkKGd0LT5pOTE1KSkNCj4gPiAr
CQlyZXR1cm4gMDsNCglUaGlzIHNlZW1zIGEgd3JvbmcgYWJzdHJhY3Rpb24sIHRoaXMgc2hvdWxk
IGEgZ2VuZXJpYyBjYWxsIHNob3VsZCBjaGVjayBib3RoIGh3bW9uIHJlZ2lzdHJhdGlvbiBmb3Ig
ZGdmeCBhbmQgcmFwbCBmb3IgaWdmeC4NCglCciwNCglBbnNodW1hbiBHdXB0YS4NCj4gPiArDQo+
ID4gKwltaW4uZnJlcSA9IHNscGMtPm1pbl9mcmVxOw0KPiA+ICsJZXJyID0gbWVhc3VyZV9wb3dl
cl9hdF9mcmVxKGd0LCAmbWluLmZyZXEsICZtaW4ucG93ZXIpOw0KPiA+ICsNCj4gPiArCWlmIChl
cnIpDQo+ID4gKwkJcmV0dXJuIGVycjsNCj4gPiArDQo+ID4gKwltYXguZnJlcSA9IHNscGMtPnJw
MF9mcmVxOw0KPiA+ICsJZXJyID0gbWVhc3VyZV9wb3dlcl9hdF9mcmVxKGd0LCAmbWF4LmZyZXEs
ICZtYXgucG93ZXIpOw0KPiA+ICsNCj4gPiArCWlmIChlcnIpDQo+ID4gKwkJcmV0dXJuIGVycjsN
Cj4gPiArDQo+ID4gKwlwcl9pbmZvKCIlczogbWluOiVsbHVtVyBAICV1TUh6LCBtYXg6JWxsdW1X
IEAgJXVNSHpcbiIsDQo+ID4gKwkJZW5naW5lLT5uYW1lLA0KPiA+ICsJCW1pbi5wb3dlciwgbWlu
LmZyZXEsDQo+ID4gKwkJbWF4LnBvd2VyLCBtYXguZnJlcSk7DQo+ID4gKw0KPiA+ICsJaWYgKDEw
ICogbWluLmZyZXEgPj0gOSAqIG1heC5mcmVxKSB7DQo+ID4gKwkJcHJfbm90aWNlKCJDb3VsZCBu
b3QgY29udHJvbCBmcmVxdWVuY3ksIHJhbiBhdCBbJXVNSHosDQo+ICV1TWh6XVxuIiwNCj4gPiAr
CQkJICBtaW4uZnJlcSwgbWF4LmZyZXEpOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlmICgxMSAq
IG1pbi5wb3dlciA+IDEwICogbWF4LnBvd2VyKSB7DQo+ID4gKwkJcHJfZXJyKCIlczogZGlkIG5v
dCBjb25zZXJ2ZSBwb3dlciB3aGVuIHNldHRpbmcgbG93ZXINCj4gZnJlcXVlbmN5IVxuIiwNCj4g
PiArCQkgICAgICAgZW5naW5lLT5uYW1lKTsNCj4gPiArCQllcnIgPSAtRUlOVkFMOw0KPiA+ICsJ
fQ0KPiA+ICsNCj4gPiArCS8qIFJlc3RvcmUgbWluL21heCBmcmVxdWVuY2llcyAqLw0KPiA+ICsJ
c2xwY19zZXRfbWF4X2ZyZXEoc2xwYywgc2xwYy0+cnAwX2ZyZXEpOw0KPiA+ICsJc2xwY19zZXRf
bWluX2ZyZXEoc2xwYywgc2xwYy0+bWluX2ZyZXEpOw0KPiA+ICsNCj4gPiArCXJldHVybiBlcnI7
DQo+ID4gK30NCj4gPiArDQo+ID4gICBzdGF0aWMgaW50IG1heF9ncmFudGVkX2ZyZXEoc3RydWN0
IGludGVsX2d1Y19zbHBjICpzbHBjLCBzdHJ1Y3QgaW50ZWxfcnBzICpycHMsDQo+IHUzMiAqbWF4
X2FjdF9mcmVxKQ0KPiA+ICAgew0KPiA+ICAgCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBycHNfdG9f
Z3QocnBzKTsgQEAgLTIzMywxNyArMzE5LDIzIEBAIHN0YXRpYw0KPiA+IGludCBydW5fdGVzdChz
dHJ1Y3QgaW50ZWxfZ3QgKmd0LCBpbnQgdGVzdF90eXBlKQ0KPiA+DQo+ID4gICAJCQllcnIgPSBt
YXhfZ3JhbnRlZF9mcmVxKHNscGMsIHJwcywgJm1heF9hY3RfZnJlcSk7DQo+ID4gICAJCQlicmVh
azsNCj4gPiArDQo+ID4gKwkJY2FzZSBTTFBDX1BPV0VSOg0KPiA+ICsJCQllcnIgPSBzbHBjX3Bv
d2VyKGd0LCBlbmdpbmUpOw0KPiA+ICsJCQlicmVhazsNCj4gPiAgIAkJfQ0KPiA+DQo+ID4gLQkJ
cHJfaW5mbygiTWF4IGFjdHVhbCBmcmVxdWVuY3kgZm9yICVzIHdhcyAlZFxuIiwNCj4gPiAtCQkJ
ZW5naW5lLT5uYW1lLCBtYXhfYWN0X2ZyZXEpOw0KPiA+ICsJCWlmICh0ZXN0X3R5cGUgIT0gU0xQ
Q19QT1dFUikgew0KPiA+ICsJCQlwcl9pbmZvKCJNYXggYWN0dWFsIGZyZXF1ZW5jeSBmb3IgJXMg
d2FzICVkXG4iLA0KPiA+ICsJCQkJZW5naW5lLT5uYW1lLCBtYXhfYWN0X2ZyZXEpOw0KPiA+DQo+
ID4gLQkJLyogQWN0dWFsIGZyZXF1ZW5jeSBzaG91bGQgcmlzZSBhYm92ZSBtaW4gKi8NCj4gPiAt
CQlpZiAobWF4X2FjdF9mcmVxIDw9IHNscGNfbWluX2ZyZXEpIHsNCj4gPiAtCQkJcHJfZXJyKCJB
Y3R1YWwgZnJlcSBkaWQgbm90IHJpc2UgYWJvdmUgbWluXG4iKTsNCj4gPiAtCQkJcHJfZXJyKCJQ
ZXJmIExpbWl0IFJlYXNvbnM6IDB4JXhcbiIsDQo+ID4gLQkJCSAgICAgICBpbnRlbF91bmNvcmVf
cmVhZChndC0+dW5jb3JlLA0KPiBHVDBfUEVSRl9MSU1JVF9SRUFTT05TKSk7DQo+ID4gLQkJCWVy
ciA9IC1FSU5WQUw7DQo+ID4gKwkJCS8qIEFjdHVhbCBmcmVxdWVuY3kgc2hvdWxkIHJpc2UgYWJv
dmUgbWluICovDQo+ID4gKwkJCWlmIChtYXhfYWN0X2ZyZXEgPD0gc2xwY19taW5fZnJlcSkgew0K
PiA+ICsJCQkJcHJfZXJyKCJBY3R1YWwgZnJlcSBkaWQgbm90IHJpc2UgYWJvdmUgbWluXG4iKTsN
Cj4gPiArCQkJCXByX2VycigiUGVyZiBMaW1pdCBSZWFzb25zOiAweCV4XG4iLA0KPiA+ICsJCQkJ
ICAgICAgIGludGVsX3VuY29yZV9yZWFkKGd0LT51bmNvcmUsDQo+IEdUMF9QRVJGX0xJTUlUX1JF
QVNPTlMpKTsNCj4gPiArCQkJCWVyciA9IC1FSU5WQUw7DQo+ID4gKwkJCX0NCj4gPiAgIAkJfQ0K
PiA+DQo+ID4gICAJCWlndF9zcGlubmVyX2VuZCgmc3Bpbik7DQo+ID4gQEAgLTMxNiwxMiArNDA4
LDI5IEBAIHN0YXRpYyBpbnQgbGl2ZV9zbHBjX21heF9ncmFudGVkKHZvaWQgKmFyZykNCj4gPiAg
IAlyZXR1cm4gcmV0Ow0KPiA+ICAgfQ0KPiA+DQo+ID4gK3N0YXRpYyBpbnQgbGl2ZV9zbHBjX3Bv
d2VyKHZvaWQgKmFyZykgew0KPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBh
cmc7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0Ow0KPiA+ICsJdW5zaWduZWQgaW50IGk7DQo+
ID4gKwlpbnQgcmV0Ow0KPiA+ICsNCj4gPiArCWZvcl9lYWNoX2d0KGd0LCBpOTE1LCBpKSB7DQo+
ID4gKwkJcmV0ID0gcnVuX3Rlc3QoZ3QsIFNMUENfUE9XRVIpOw0KPiA+ICsJCWlmIChyZXQpDQo+
ID4gKwkJCXJldHVybiByZXQ7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJcmV0dXJuIHJldDsNCj4g
PiArfQ0KPiA+ICsNCj4gPiAgIGludCBpbnRlbF9zbHBjX2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICAgew0KPiA+ICAgCXN0YXRpYyBjb25zdCBzdHJ1
Y3QgaTkxNV9zdWJ0ZXN0IHRlc3RzW10gPSB7DQo+ID4gICAJCVNVQlRFU1QobGl2ZV9zbHBjX3Zh
cnlfbWF4KSwNCj4gPiAgIAkJU1VCVEVTVChsaXZlX3NscGNfdmFyeV9taW4pLA0KPiA+ICAgCQlT
VUJURVNUKGxpdmVfc2xwY19tYXhfZ3JhbnRlZCksDQo+ID4gKwkJU1VCVEVTVChsaXZlX3NscGNf
cG93ZXIpLA0KPiA+ICAgCX07DQo+ID4NCj4gPiAgIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0Ow0K
