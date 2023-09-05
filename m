Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3079A79212D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 10:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B8D10E46C;
	Tue,  5 Sep 2023 08:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A93910E46C
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 08:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693903958; x=1725439958;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ck21QjTXjimJXUePpCFe+LIb3P1AxcCW/j75ECheiwY=;
 b=geje3HGRzY+FM3axP8etbl5tGn1Ga80+meiJdTYApuND94e2VZg4UGNI
 sOcHKPUilNMAL+Q7MxWerg+jjZWlxaYO4X9AYNP2SOUCU2CMRaOSKuFe1
 lLJ/HUlBbWqxUU/rKoFihgvHU88OKTPmQ2j8+ZqWpCG8+bq0oOHR1rjpO
 EStOKkzxvKz2T4ZnsuAY0pQepf6uFPYxs69Gn4ofTHfUvW5B+C092zA4O
 wBt3cBQuCqg8bKF4uKr/1t1hy7YgefOEoo83LV9iyr8Mx9t/u4U5k7xGb
 +aBWyj+G+KFpHcyzgdJ/Vhe+buPhtt60pOlQy1vkM9hY0YpPOEhwndt7e w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="374132461"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="374132461"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 01:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="884247020"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="884247020"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2023 01:52:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 5 Sep 2023 01:52:35 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 5 Sep 2023 01:52:33 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 5 Sep 2023 01:52:33 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 5 Sep 2023 01:52:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PrgIH9O9lGmUeMAHDZpzyohv6A2sche7jpOcQf5rAeQXm0LVTwCAPV45EQ7fM+oBLH/kMHuMj2dDdeMOoilxQRfqsuezafahY8PW0QQIXXq3xWWALrikBBVjgShUEvi9cUiZK6JkYw7x9kth//xVLjCDWI2VzRYZkHUPb2AQvdXvLYV4qQ9J3J27ghoRwaoTutpn/dNJ30DggJc5yjgQbHqJqgGaFA2Lq5a2J/lTRmoaVb4UEYEi8utQcXRDnGQTIgiOiGR8wHYs3HD/446oWjOr65skrrq0svmDl0InU/Advb9uQkB39pzTIGHrOZ/WboBM5RC7SHnTtgo00TCNMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ck21QjTXjimJXUePpCFe+LIb3P1AxcCW/j75ECheiwY=;
 b=odyDHwTpgQ6gqjF72gHDeXs9aP9H38mrRF2J9cB/+9AbzUmBfkkZaVsRPmjPZOr2xznmq9099enuOA0sN4v0azTnl6bLGnbNn9a7FQPC17zXyWKaA08JqYMHa52WwGj3U5aESln2REYZ40J13yqWGx/e9B9/tlbH+qkAXd380TJKrolViXLtQZgiNvlJy37EolCkeHZMOIhZjtOPjMrp4mLHbB/zYiA0HrmncgCd3zY817T8FQfW/T2Bt5S8kZBqm1FC/SF8LBVpQVtuTS+jHlm+c0il0g5IpDvep0cxaSU1XPx1qgTUGSFkDFDgZGj3FVLgT1DWqi6ddFqJARdX6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by SJ0PR11MB5582.namprd11.prod.outlook.com (2603:10b6:a03:3aa::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Tue, 5 Sep
 2023 08:52:31 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::2d10:17dd:ff9c:7f59]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::2d10:17dd:ff9c:7f59%6]) with mapi id 15.20.6745.030; Tue, 5 Sep 2023
 08:52:30 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/psr: Add psr sink error status into
 sink status debugfs
Thread-Index: AQHZ2Yo1xTtAv5xjoESxc9dOw8xcwbAL+SjA
Date: Tue, 5 Sep 2023 08:52:30 +0000
Message-ID: <BL1PR11MB5979C1C04C9B3553E8A05E92F9E8A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20230828083107.1520501-1-jouni.hogander@intel.com>
In-Reply-To: <20230828083107.1520501-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|SJ0PR11MB5582:EE_
x-ms-office365-filtering-correlation-id: 2677342a-3406-4095-9772-08dbaded7072
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xUWu3ZGPJh/RVaZ4NULLAXusFwCZJA3ZRYDAh0deAEsfvi4UWwQD5XKs040wbmgPjnQr1/6pi2/2cEUvVIFbLcRy1QiU57OJ2BrVoNznK/YwcUzZ5ELSGxEaNJeIGwIpPPy/1piMh+sNq9cVdway/TNXjuF5Lbpy7acPJ6cxE5C431DLf89ulIMfeJyqy3XdoD2vk5WgcIHJY3ahtsF1aRPD0E7YaOEHcXR3nJRStiSGTZHIXCcMyWisa3MLB5GkdOuJ7OmHWUWpUNzeSNC7Ud62s/gkVL2elW7VeoK9kB/jiMxbAEMkSHtsBaA6LDgaljesjSdM4BVia2bgbuskzMF8Ppge9uLfAMp2UhnMaYQ0yRrl4gi5qZLcPxF2sakAFHQi9KR2oEjPfqtHBiYum9GAGlNYQUQtWozCmI37BV64Lznoo3FnsUYUsBUddNsEHQG7h3ULL7EiR9UbZYR5QNlW+r3vpqQxhpmGL0CEVJbj2XC3/ACgw2y6NmHqDv+GoMGxaRvfi/wj3WS9nQsF4+u+nEwRDBVmR2aOLgH8iHX56AiGCuooT3cVSuBrjAaJJ4be0yPVlTst9LUFyzlm7VF2uhS6bC9jpkr6LLdhszzWm2Fba7KugLliCrs3Jcm7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(136003)(366004)(376002)(451199024)(186009)(1800799009)(33656002)(82960400001)(38100700002)(38070700005)(86362001)(55016003)(71200400001)(478600001)(26005)(52536014)(5660300002)(7696005)(6506007)(53546011)(66446008)(110136005)(66556008)(316002)(66946007)(76116006)(66476007)(64756008)(41300700001)(122000001)(9686003)(8936002)(8676002)(2906002)(66574015)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDdPalhxRFJaM1A4bEY5cHFWREFDRnVWa1kyR1ptdVlhNjFRTnFVdzRVUE9l?=
 =?utf-8?B?Szk4NDdSVTBkMi9VbmgwY05FV21OQnRHQmcrWTJrcUpGUFhaL3F3cXA0MEdE?=
 =?utf-8?B?QVQ5NFBlUnBlRGVyanlHcFJlVDg3Z0xnR2VmSFUzM2o3cW1uYUJaVFhFSTNQ?=
 =?utf-8?B?Y2VYekJaVm5kemRpUWo4dHRxNUFaZmlmZ1V6UXd5SVcya2c2WnlLcXZUOTdU?=
 =?utf-8?B?dnZzdDlvMVZreDFQdFJBQWpXSEVTK0RwMU9rZ0VWZzkvL2dVeTg2ZjdRa21E?=
 =?utf-8?B?NUN2U0xsUFBlbXF4NzNURmU1VGNLSU5YZVVSWjdGZWswU1BSSVNIZUFOU3Ru?=
 =?utf-8?B?eFkybGE2c1NBa1ZhNHRXcVdkZ2RobjFlMEVyN2YwVklza21Wa0s2bk16S0pu?=
 =?utf-8?B?dFZaNEhDMlhDY3dNNXZBTUZYZ0JrU3R5L3ZsZytQTk40aUxWcGVlV2dQNWoy?=
 =?utf-8?B?K21RQWxkWktvVFpyOTdza2NFc05VaVVnYnowcGxzcXhPa2NhUzdtWmZVLzdR?=
 =?utf-8?B?S3NYZmV3a3NjQ2oxbjhGZ1UvVHltZGl2TjNyTGhpZW40L0VyY01nQjJRV1FZ?=
 =?utf-8?B?bkdVZkZ0R1dSVnRiMDQ4QWN5UXg2b3kyQnRxdE5jZ0tEZVFxSDNrZEN3UzA1?=
 =?utf-8?B?VnFsbDJRWENWVVJjRDNlU3lIYzIyN1FYMnJsK3VSc2pabThXa3JScHNrWGtj?=
 =?utf-8?B?Qm80c0JlMEVxNFExRXBodVp5RUU4Qk5iUGs4N1JWeVZIdmJJT0Nybnprellt?=
 =?utf-8?B?d2ZVL2ZoTVVRU0R2SGtJMnl2SE1hdjNJTUtPNk9KZGNaVE5semE4WElGQ3hK?=
 =?utf-8?B?R3VsNEtTNFF3TFd6VDdyUzIvcnBVRFU3b1c1TWJhc0o1cnRMNFRxc29RaFFj?=
 =?utf-8?B?bFpYS0c0QmdsMU95OXhvWm1ITjloMDAwRXJ6WWRpc2RXMkltMW1TdzBSUHpW?=
 =?utf-8?B?S1A5ems2bmZJenpmRzBNcE1JMlQ1NTFTSmhtbTd1Zll1YndsQ1ZXVnVnUWRJ?=
 =?utf-8?B?cTdXenFxaElqVG1rQVhQaG5pNUZkMlhkYWZaaEN3TUF0Rnl1Zk9SaldLazNV?=
 =?utf-8?B?MEIxVkpkSER6alZvYVVrUktyUFRHRUFkdHJFVFdPMml1MDBMa2NpTzFlZFIw?=
 =?utf-8?B?b0NIZmtSYlM3UTRWaElwQ0xBN2FKdVc5VVR2Y0NVVHFvMG85VmYveDJwMVla?=
 =?utf-8?B?OFJyV2RvdDhzT0UrdXo3V2RnazA0RkJVQ2ZsVEpMS1l0dnZxckx1bWtaN0VH?=
 =?utf-8?B?WXlJSmtDVXVQeHlWYVdTWG1DZGxFcm40WExkNnlpWGFaNm9LM0FzSVRhdmgy?=
 =?utf-8?B?dlAxZEo0WFNGakpKUE4yWUdaTTlGMnM4OStlejBPd1dKWGp3MWJqbzN2TCtG?=
 =?utf-8?B?VGc0SEtYMWxLb1ZOa3VJQXBLOGhzS2xZZ2ZFRkRJYVJuVTh2VERxTWNXR052?=
 =?utf-8?B?alBQVmNjYWIycFE3VjVKcUFKVS9DbFFUbWNoYVh1UjNacGhnOE12UmNNbmR3?=
 =?utf-8?B?RGhHbWdTS2cvZEZOeVNIU2ZiUHZ0T1V2bFcxWTl3bjN5d0d2SFZSUk5kUGl2?=
 =?utf-8?B?elBpMjY0aXJaUjNpKzZpNFprdGlBR1lRQ3dkbXJyb0lKUEhFbTNxNDF5SUVF?=
 =?utf-8?B?QVZFUlRsSWplKzJjTjR3TkxwSlF0Qm1NRHJWQUlxajhmaWdndWE1QldyK0JV?=
 =?utf-8?B?aUZRbHM4WFZZMUphZk95ekxZV1lta3ltTGN5aEl4SEhsUXZDYlJRdmhLWmJC?=
 =?utf-8?B?d2o1RG5DYXNURlRkbkFoM2YrY0RjY0hGV1ZXa21DNTFQNGllY1BUU01MUEZC?=
 =?utf-8?B?SjR4UE5TOU0zcUoyVTY3MGZNUTIxWTZOQ1VFRVk5YURDRjdVNlFkdXBUVGpQ?=
 =?utf-8?B?TXc0MklIb3kvVnM5Y0tmUkdrQllwOUxFS1JBWUp6RWVMbnVYeXFEY1lCZ3RT?=
 =?utf-8?B?N0hEbTZSVHFaUG9pdi9rTDVjdXp4UDlXdWNwZWhMVk5EWmcrNnlTNEhoWjNL?=
 =?utf-8?B?TGJnVkpzR3hPNGdrb21RWXpqMjNEMXRZbXNNYzYxUUthM3R1Z1BjUHNsdENX?=
 =?utf-8?B?S1ZncERCOU1ETDM5NGdzMXJaaGIxcEVUYklwb1RPTk1zR0pxblJNbTViMWxn?=
 =?utf-8?Q?Pp95xeuz0+v9kxIo3nWRe4+LU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2677342a-3406-4095-9772-08dbaded7072
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2023 08:52:30.8304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kLRk1ISwipD5jImklC93FYaN61OujX8ZI/d3baBNZMw4gwNwE9uIyfZ7N++ONj4PmwGL74/N/A9yU0PMuQrQGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5582
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Add psr sink error status
 into sink status debugfs
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogTW9uZGF5LCBBdWd1c3QgMjgsIDIwMjMgMjowMSBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0hdIGRybS9pOTE1L3BzcjogQWRkIHBzciBzaW5rIGVycm9yIHN0YXR1cyBpbnRvIHNp
bmsNCj4gc3RhdHVzIGRlYnVnZnMNCj4gDQo+IE5vcm1hbGx5IFBTUiBlcnJvcnMgZGV0ZWN0ZWQg
YnkgdGhlIHBhbmVsIGFyZSB0cmlnZ2VyaW5nIEhQRCBpbnRlcnJ1cHQgYW5kDQo+IHNlZW4gYXMg
ZXJyb3IgaW4gZG1lc2cuIFNvbWUgcGFuZWxzIGFyZSBub3QgdHJpZ2dlcmluZyB0aGUgaW50ZXJy
dXB0IGV2ZW4gaXQgaXMNCj4gcmVxdWVzdGVkIGFuZCB0aGV5IGFyZSBkZXRlY3RpbmcgZXJyb3Iu
IER1ZSB0byB0aGlzIGl0IHdvdWxkIGJlIGdvb2QgdG8gaGF2ZQ0KPiBwb3NzaWJpbGl0eSB0byBj
aGVjayBwYW5lbCBkZXRlY3RlZCBlcnJvcnMuIEFkZCBQU1IgZXJyb3Igc3RhdHVzIGludG8gUFNS
IHNpbmsNCj4gc3RhdHVzIGRlYnVnZnMgaW50ZXJmYWNlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZp
ZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMzQgKysrKysr
KysrKysrKysrKystLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwg
OSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCA3Mjg4N2MyOWZiNTEuLmEwMDg5MThiNGQ3MSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMyw2ICsyMyw3IEBA
DQo+IA0KPiAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPg0KPiAgI2luY2x1ZGUg
PGRybS9kcm1fZGFtYWdlX2hlbHBlci5oPg0KPiArI2luY2x1ZGUgPGRybS9kcm1fZGVidWdmcy5o
Pg0KPiANCj4gICNpbmNsdWRlICJpOTE1X2Rydi5oIg0KPiAgI2luY2x1ZGUgImk5MTVfcmVnLmgi
DQo+IEBAIC0zMTUzLDcgKzMxNTQsNyBAQCBzdGF0aWMgaW50IGk5MTVfcHNyX3Npbmtfc3RhdHVz
X3Nob3coc3RydWN0IHNlcV9maWxlDQo+ICptLCB2b2lkICpkYXRhKQ0KPiAgCX07DQo+ICAJY29u
c3QgY2hhciAqc3RyOw0KPiAgCWludCByZXQ7DQo+IC0JdTggdmFsOw0KPiArCXU4IHN0YXR1cywg
ZXJyb3Jfc3RhdHVzOw0KPiANCj4gIAlpZiAoIUNBTl9QU1IoaW50ZWxfZHApKSB7DQo+ICAJCXNl
cV9wdXRzKG0sICJQU1IgVW5zdXBwb3J0ZWRcbiIpOw0KPiBAQCAtMzE2MywxOSArMzE2NCwzNCBA
QCBzdGF0aWMgaW50IGk5MTVfcHNyX3Npbmtfc3RhdHVzX3Nob3coc3RydWN0DQo+IHNlcV9maWxl
ICptLCB2b2lkICpkYXRhKQ0KPiAgCWlmIChjb25uZWN0b3ItPmJhc2Uuc3RhdHVzICE9IGNvbm5l
Y3Rvcl9zdGF0dXNfY29ubmVjdGVkKQ0KPiAgCQlyZXR1cm4gLUVOT0RFVjsNCj4gDQo+IC0JcmV0
ID0gZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9TVEFUVVMsICZ2YWwp
Ow0KPiAtCWlmIChyZXQgIT0gMSkNCj4gLQkJcmV0dXJuIHJldCA8IDAgPyByZXQgOiAtRUlPOw0K
PiArCXJldCA9IHBzcl9nZXRfc3RhdHVzX2FuZF9lcnJvcl9zdGF0dXMoaW50ZWxfZHAsICZzdGF0
dXMsDQo+ICZlcnJvcl9zdGF0dXMpOw0KPiArCWlmIChyZXQpDQo+ICsJCXJldHVybiByZXQ7DQo+
IA0KPiAtCXZhbCAmPSBEUF9QU1JfU0lOS19TVEFURV9NQVNLOw0KPiAtCWlmICh2YWwgPCBBUlJB
WV9TSVpFKHNpbmtfc3RhdHVzKSkNCj4gLQkJc3RyID0gc2lua19zdGF0dXNbdmFsXTsNCj4gKwlz
dGF0dXMgJj0gRFBfUFNSX1NJTktfU1RBVEVfTUFTSzsNCj4gKwlpZiAoc3RhdHVzIDwgQVJSQVlf
U0laRShzaW5rX3N0YXR1cykpDQo+ICsJCXN0ciA9IHNpbmtfc3RhdHVzW3N0YXR1c107DQo+ICAJ
ZWxzZQ0KPiAgCQlzdHIgPSAidW5rbm93biI7DQo+IA0KPiAtCXNlcV9wcmludGYobSwgIlNpbmsg
UFNSIHN0YXR1czogMHgleCBbJXNdXG4iLCB2YWwsIHN0cik7DQo+ICsJc2VxX3ByaW50ZihtLCAi
U2luayBQU1Igc3RhdHVzOiAweCV4IFslc11cbiIsIHN0YXR1cywgc3RyKTsNCj4gDQo+IC0JcmV0
dXJuIDA7DQo+ICsJc2VxX3ByaW50ZihtLCAiU2luayBQU1IgZXJyb3Igc3RhdHVzOiAweCV4Iiwg
ZXJyb3Jfc3RhdHVzKTsNCj4gKw0KPiArCWlmIChlcnJvcl9zdGF0dXMgJiAoRFBfUFNSX1JGQl9T
VE9SQUdFX0VSUk9SIHwNCj4gKwkJCSAgICBEUF9QU1JfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VS
Uk9SIHwNCj4gKwkJCSAgICBEUF9QU1JfTElOS19DUkNfRVJST1IpKQ0KPiArCQlzZXFfcHV0cyht
LCAiOlxuIik7DQo+ICsJZWxzZQ0KPiArCQlzZXFfcHV0cyhtLCAiXG4iKTsNCj4gKwlpZiAoZXJy
b3Jfc3RhdHVzICYgRFBfUFNSX1JGQl9TVE9SQUdFX0VSUk9SKQ0KPiArCQlzZXFfcHV0cyhtLCAi
XHRQU1IgUkZCIHN0b3JhZ2UgZXJyb3JcbiIpOw0KPiArCWlmIChlcnJvcl9zdGF0dXMgJiBEUF9Q
U1JfVlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9SKQ0KPiArCQlzZXFfcHV0cyhtLCAiXHRQU1Ig
VlNDIFNEUCB1bmNvcnJlY3RhYmxlIGVycm9yXG4iKTsNCj4gKwlpZiAoZXJyb3Jfc3RhdHVzICYg
RFBfUFNSX0xJTktfQ1JDX0VSUk9SKQ0KPiArCQlzZXFfcHV0cyhtLCAiXHRQU1IgTGluayBDUkMg
ZXJyb3JcbiIpOw0KPiArDQo+ICsJcmV0dXJuIHJldDsNCj4gIH0NCj4gIERFRklORV9TSE9XX0FU
VFJJQlVURShpOTE1X3Bzcl9zaW5rX3N0YXR1cyk7DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
