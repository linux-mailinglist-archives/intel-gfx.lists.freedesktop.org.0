Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719CC708B66
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 00:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 002F910E137;
	Thu, 18 May 2023 22:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB9910E137
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 22:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684448503; x=1715984503;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wAXuzMaEPAa50GmRvr32tFA+xceAj8rRL22IS7T9qqw=;
 b=Jsf/6j1ZS4OjPa1YQXUZzIYKNKGnck5YxmVe5zNSGGygwv+erXf9E0Is
 aQGrx+yv5iRmzjRjJnrhO2qk7+avoIPTY+NNPY8txXDAChRvl0BQvlBak
 hna8W3kXkHfM/cnZHubhhVHRLI1N1hKNLG//a9mg4UXibH9+vv/X6z+cm
 tN1JuetBjhPuQ/5JH+N++1V1tbmNVFTEqIZ7f7j/NOWE1a29kOaE0fLF/
 Zddd0RkmhE4Zvsf5AxLZr4v//IuelYq/rNvQJ/LajqMTA85DdLF4QgFr9
 4tlqARoFhnM2GPqZznl+HaGo3+ND1skaHk8KIXDMSNkIFRcZC4yS/FMP0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="349726380"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="349726380"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 15:21:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="652830438"
X-IronPort-AV: E=Sophos;i="6.00,175,1681196400"; d="scan'208";a="652830438"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 18 May 2023 15:21:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 15:21:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 15:21:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 15:21:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLzSspcdBDqm9NHOXTkYwe9PgE/icQQw9VTBDmum/AF3MRd5TJHB7iFgRH9/avVbNwz621kzS9Tbq5HCyZkRzGqBoxifjWTLU/usuKBbsI3OQSdWBl5aWN+sSza4tPGjNwqB7oiZew/RRmX2qDVROU6lXWFUMDtNpr/JDkkH6M0ArKMYd/Puhpx918hODN8+vlOAU3eAxdBvzzc2LEJWWuQDw1dgaGPp2pMxOaZYS9EQzLwRWGcI//623lDaT60tvrdlK8KjT5am/HE5PqJRXX5nEjUtGcxBDmBT9Xfgak8BMLuqgujQfj4UH6fVHzoN/m14so5QOhqGJ4aXGIrgBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wAXuzMaEPAa50GmRvr32tFA+xceAj8rRL22IS7T9qqw=;
 b=YVrgJsu/wcx+KsxOmxmZ8W68aqjA0V8O7FHJa4EOO3HjrhfCyNmUtSFp5H7zqiy+klVfGsSST8oOH/FkRDiEF6FNsgMjRfCJ88O0sLsfWVqta6Ax5D0XuKbcVGWw8UYaLhBa97PZnAk/WMbtxqLQbiQV5856GJBa/LBQLZYyEF+eL2A599OxhfNsEaWwq47eOrJuMQuXoI9FAPX6dbnxzp4pNN3/SxMDMfWehh2qB7wd9RkVCyR1vHGeBpXT8rcndqZl3bsbtqDvoaMNsBG+6XyL+uk/kgt9v5rgDpAz0WcXG+DK3VrW+FVtuWAWqHNXfF/nK+W2ky1nHA+ecgbVpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CH0PR11MB5442.namprd11.prod.outlook.com (2603:10b6:610:d1::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.19; Thu, 18 May 2023 22:21:39 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6411.019; Thu, 18 May 2023
 22:21:39 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 1/2] drm/i915/mtl: Add MTL performance tuning changes
Thread-Index: AQHZiFhqXck3D46Lx0uu0+pdSt4Mmq9e2lgAgAHDDAA=
Date: Thu, 18 May 2023 22:21:39 +0000
Message-ID: <DM4PR11MB5971634670983655F068C85D877F9@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230517004046.264131-1-radhakrishna.sripada@intel.com>
 <168435160680.464126.17128685016332348817@gjsousa-mobl2>
In-Reply-To: <168435160680.464126.17128685016332348817@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|CH0PR11MB5442:EE_
x-ms-office365-filtering-correlation-id: 1b312bff-d10e-491f-ff44-08db57ee402f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7+Uj2BK5GcjfvlyJpuOjNXJfQA2nTVcIp22+zUN3utGmBQ5yIRt6BTnR/ViA+NOMrHhXqDaJO4MxJtYe+K9WqDSnTcDRD1HiuQG0viblhlJW886bdQuOuhFn3kJuh6OF/BwOuJL2pu0hpZ7dle7zV8Cqs8jeDl1HX4p/90ZUxL1agfscd2WG1WwOb9EDlMReAKXvmzVSQ9WcrSw3Is3i1U65bCC/HFTLR/0BQS5mwlBJ+RW0K7+aBnjj40rL7kgNNA7pkHgjdRLPg0RR8OgbHH9haoChFIKcVuvOiwED3ZXvfNanRuTjn7+lfpjG9OAXLGkQbS9N6tXW1Tbf8ISoYNEGoefdKBEcWIFtyXcm0bVqUAG+1l95JuRAY9k39FwVfmY/VfQXkQeA7FG9bLaGDPaoJSi+r46yA8Q57IOjonkKh5Jf/+QrBT/olvlBThGlM51fBIbewR8bfpqiEF/Gi1lxhXVfx5ooc1zOFs0Cae85pt0z0hxSTTIAW01iPIVoNQDio5h7haTy/hxp0uMNgixIvP2fnCVWNdf//cMjU1pSMiFJGr1LVMhXxv52Bz/EOcY7UNn2V8F6gm+D4SIFQNHQaD1BE6m0et/Xx9zsdk0XxBGm4lNvPCHzzgq92iVG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(396003)(136003)(39860400002)(376002)(451199021)(5660300002)(71200400001)(41300700001)(2906002)(83380400001)(38100700002)(122000001)(86362001)(82960400001)(38070700005)(33656002)(8936002)(186003)(9686003)(6506007)(52536014)(55016003)(8676002)(26005)(53546011)(107886003)(66556008)(66946007)(64756008)(66446008)(66476007)(76116006)(110136005)(54906003)(7696005)(478600001)(4326008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ODRRdTVORWtFYWQzalp5M1ZOYmU4SDd3dEo4eE1FT0VySWRFbm1WV1c1WndC?=
 =?utf-8?B?WXZwK25pb3IvMHlsNTlxWC85cmxPUDFMWS9xOXhuVjBrMTBWK3NlenBtSHRE?=
 =?utf-8?B?djcyakYxNEo0YXVIQld6WUUxd0hmVW91N3JaOXY5bUJJWTdtU0tTaFlrdHlO?=
 =?utf-8?B?SHUyaEVZR3RZRHU2RDBSMFNuamR4YjlCMEVGUlBRTGlvRzJBZHRiSWwyOExL?=
 =?utf-8?B?emNaZUx4ZlVNZW1vZGNzMkdBdmQ3Z1dGaVNrc0VZZTZuT3Z4akhvZ08rd1lV?=
 =?utf-8?B?aTgrVFFLckdCOFV5UUxlVDRXclNKamx2SnlMQ0JyejM5T2hHM3lGdy9TWnlo?=
 =?utf-8?B?LzN3VzN5TnhxQjlZc2FjSGNocG5DQ1dtNjdDa2xIWlJvV2pVRXRkVHYxS0ZG?=
 =?utf-8?B?QVZ5NDlaOXRYQ2xodHRtcVZEdTZwUXgxeVNOQzBXWTBmQkZXYlgzNzBqZEV3?=
 =?utf-8?B?RW5pcUlvQWpLbEQySmdRQURMWDEvQm1BL3pFcmhES0xPTVh0RUpiYmgrZFRw?=
 =?utf-8?B?TXR1ZXJwTm5YaTRkQWgzbjR2WDkwNjdpRDFxOGtEWUFPYUxuS2cyS0paU3BH?=
 =?utf-8?B?WmhNdWlmWHdDT3UzbGNNY0wyRjRoRWk0enhoemtKTFAwVGtrbnROMHZrbzVO?=
 =?utf-8?B?VGJOYjlIWld1aUxGdytUT0pDMUcxOUVwUEpwelRvd01WamdUV0RlSVZ4WWJl?=
 =?utf-8?B?WFNNNUJhb3FKTzRENjFJU2VwT3hFTmhLSXJReVhldUFWUUpYVjFKaXd2SkRw?=
 =?utf-8?B?aGh1WEJxTkZ3aCsyNUVoR3QvMXoxQkkxQ2Y2UFlDUVF5WEMzV0ZHYmtOMkUz?=
 =?utf-8?B?VTU1aHpSc2Z1eEtQNmpXZXdXRTh3ZVJKWVN4TFFCbFozczhqTkJPT3hkUTJX?=
 =?utf-8?B?WUE3cTJIaW1VNUlRSis5NjRyVEVBb21uWVpPdFVkVm1jbXFmOGZHSFZ6NmVi?=
 =?utf-8?B?eTkxaW1IQkdtUFJBYUZUTnR1YTdKamVMQmR0MkswcWYzdXpCOUQyWU5vQUtu?=
 =?utf-8?B?QmhuSnN1OWlBTGI1emhNMGpYdy9yMGp0RG5PV29wUHlkOG5nbVhlWkVvOWQx?=
 =?utf-8?B?bEpGck5hRGF3b1RGSEI2WWNkOTdyR2FlaGtHS255Qm9qWFRwcGJKR0JINE81?=
 =?utf-8?B?V2djN0ZIRWExWWVYeWVraXNjMGh5UDRGSW9pMW9FQlNFRi8rNStQaVhJWHJk?=
 =?utf-8?B?c2hTdUxrZ1FKYnc4emRuV0NTaEFMU0duV1FXTTF2SDJRaUNNOWhpTnYwK1RR?=
 =?utf-8?B?QUJQSTF6UFdFVmZjQ1BLTW54WVJlcFZMVWJ4Q1VpcTdsVkUyQjR6dXhlMng1?=
 =?utf-8?B?RVM4bFZBU3BzejFWdUFFL25XL3V2QWhFdkwxTVdSNzlFNEtjSlFIdkt0cEY4?=
 =?utf-8?B?SW8zT25zUU1yRXFEa2E1UEhVQW9WYUNXdHl5TjgvZFhEcmtDYXBlUWNnNDlB?=
 =?utf-8?B?dFNLU3Rhc0tsYUpTTnZjVXI1ZENIWHl2amVlZUsyenZlem13QVNEekswNnI3?=
 =?utf-8?B?WU9DV3Yrc3BZbXE4aFhFNXBxZEh5N0tYR1IvVWhOMUNlQThocHArajBQajk2?=
 =?utf-8?B?YmJhUTA0SkZzM0QxejJPejRWdmpGQnZYZk1SM0dWWE5kbTNzalZOTjFGTlFz?=
 =?utf-8?B?L0d4UDBEd1dBSEQ1NWpsbEdYZmZPcENwbnFOMWFTNVlBdTVVUytNbVRNcVhu?=
 =?utf-8?B?bzdGMTlXbk4vQnNuaGhsNlB1RGxmTHozZnN6c1g4RkVFVjZXWlB5THhUd0Mr?=
 =?utf-8?B?Y21KRHo1UFBlaEN4eks5WnZ2czc0NlBDaGJUOEVjTnNCd3RWaS9neTBzalNM?=
 =?utf-8?B?T0Fhd0FFSWRmY1dZWW5vL0RkLzhpSXpYK29EQUh1aWVwNENRS05YUlljMXgz?=
 =?utf-8?B?ejhORWxUc0lvd05YZmt1Lys3Qjd1K0l5dnZYZ1BuMDJrUzZhd2VmS0M5dVVS?=
 =?utf-8?B?eG8ycExQZ2tjV1lnRjdieFhmelBmTHhJWldZM3BkRWRIRksvOElMczhXMC9R?=
 =?utf-8?B?cHA1VXc0Q2dZUUU2WjVVbDJNRno1S2V6dk1FQW13ZFlaVUJUQkFkYmhUSklS?=
 =?utf-8?B?Vk8rd3lzSnUvL3hBNWZhNlpUSFp5NmdET01mTTBKc0pBY1lSWWdqa3kyaWl3?=
 =?utf-8?B?UG1ScTE0SVpIYysvMW5qWnNLZWVrY2xDQkp0eGRKSVp2TytxSWJsZlJreVlV?=
 =?utf-8?B?ckE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b312bff-d10e-491f-ff44-08db57ee402f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2023 22:21:39.3388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iTZCrCdiq+ZobxsjxPmrV3F5H9fN6uq5Va3qqTsO2S9qnBLRmD4vTlrcickiJMFqywSoQ9zk0vjpYy0ubSzlRGMU0hZqbLtBCWo47hEA7jE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5442
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/mtl: Add MTL performance
 tuning changes
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmsgeW91IGZvciB0aGUgcmV2aWV3cy4gUHVzaGVkIHRoZSBwYXRjaGVzLg0KDQotIFJhZGhh
a3Jpc2huYSBTcmlwYWRhDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTog
U291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNk
YXksIE1heSAxNywgMjAyMyAxMjoyNyBQTQ0KPiBUbzogU3JpcGFkYSwgUmFkaGFrcmlzaG5hIDxy
YWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogSnVzdGVuLCBKb3JkYW4gTCA8am9yZGFuLmwuanVzdGVuQGludGVs
LmNvbT47IFNyaXBhZGEsIFJhZGhha3Jpc2huYQ0KPiA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50
ZWwuY29tPjsgS2FsdmFsYSwgSGFyaWRoYXINCj4gPGhhcmlkaGFyLmthbHZhbGFAaW50ZWwuY29t
PjsgUm9wZXIsIE1hdHRoZXcgRA0KPiA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogUmU6IFtQQVRDSCB2NCAxLzJdIGRybS9pOTE1L210bDogQWRkIE1UTCBwZXJmb3JtYW5j
ZSB0dW5pbmcNCj4gY2hhbmdlcw0KPiANCj4gUXVvdGluZyBSYWRoYWtyaXNobmEgU3JpcGFkYSAo
MjAyMy0wNS0xNiAyMTo0MDo0NS0wMzowMCkNCj4gPk1UTCByZXVzZXMgdGhlIHR1bmluZyBwYXJh
bWV0ZXJzIGZvciBERzIuIEV4dGVuZCB0aGUgZGcyDQo+ID5wZXJmb3JtYW5jZSB0dW5pbmcgcGFy
YW1ldGVycyB0byBNVEwuDQo+ID4NCj4gPnYyOiBBZGQgRFJBV19XQVRFUk1BUksgdHVuaW5nIHBh
cmFtZXRlci4NCj4gPnYzOiBMaW1pdCBEUkFXX1dBVEVSTUFSSyB0dW5pbmcgdG8gbm9uIEEwIHN0
ZXAuDQo+ID52NDogUmVvcmRlciBwbGF0Zm9ybSBjaGVja3MuDQo+ID4gICAgUmVzdHJpY3QgQmxl
bmQgZmlsbCBjYWNoaW5nIG9wdGltaXphdGlvbiB0byBSZW5kZXIgR1QuDQo+ID4NCj4gPkJzcGVj
OiA2ODMzMQ0KPiA+Q2M6IEhhcmlkaGFyIEthbHZhbGEgPGhhcmlkaGFyLmthbHZhbGFAaW50ZWwu
Y29tPg0KPiA+Q2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+ID5D
YzogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+ID5TaWduZWQtb2Zm
LWJ5OiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29t
Pg0KPiA+LS0tDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
YyB8IDE1ICsrKysrKysrKysrKysrLQ0KPiA+IDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+aW5kZXggNzg2MzQ5ZTk1NDg3Li5iNmQzMTg1Y2Y4Njgg
MTAwNjQ0DQo+ID4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jDQo+ID4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
DQo+ID5AQCAtODE3LDYgKzgxNywxMiBAQCBzdGF0aWMgdm9pZCBtdGxfY3R4X3dvcmthcm91bmRz
X2luaXQoc3RydWN0DQo+IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLA0KPiA+IHsNCj4gPiAgICAg
ICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZW5naW5lLT5pOTE1Ow0KPiA+DQo+
ID4rICAgICAgICBkZzJfY3R4X2d0X3R1bmluZ19pbml0KGVuZ2luZSwgd2FsKTsNCj4gPisNCj4g
PisgICAgICAgIGlmIChJU19NVExfR1JBUEhJQ1NfU1RFUChpOTE1LCBNLCBTVEVQX0IwLCBTVEVQ
X0ZPUkVWRVIpIHx8DQo+ID4rICAgICAgICAgICAgSVNfTVRMX0dSQVBISUNTX1NURVAoaTkxNSwg
UCwgU1RFUF9CMCwgU1RFUF9GT1JFVkVSKSkNCj4gPisgICAgICAgICAgICAgICAgd2FfYWRkKHdh
bCwgRFJBV19XQVRFUk1BUkssIFZFUlRfV01fVkFMLCAweDNGRiwgMCwgZmFsc2UpOw0KPiA+Kw0K
PiANCj4gSSB3b3VsZCBwdXQgdGhvc2UgKGRnMl9jdHhfZ3RfdHVuaW5nX2luaXQoKSBjYWxsIGFu
ZCBEUkFXX1dBVEVSTUFSSw0KPiBwcm9ncmFtbWluZykgaW4gYSBzZXBhcmF0ZSBtdGxfY3R4X2d0
X3R1bmluZ19pbml0KCkgZnVuY3Rpb24uIFRoYXQgd291bGQNCj4gYmUgbW9yZSBjb25zaXN0ZW50
IHdpdGggaGF2aW5nIHR1bmluZyBmb3IgY29udGV4dCBzYXZlL3Jlc3RvcmUgcmVnaXN0ZXJzDQo+
IGluIHNlcGFyYXRlIGZ1bmN0aW9ucyBhbmQgbWFrZXMgaXQgZWFzeSB0byBzZWUgdGhpcyBwYXJ0
aWN1bGFyIHByb2dyYW1taW5nIG9mDQo+IERSQVdfV0FURVJNQVJLIGlzIGEgcmVjb21tZW5kZWQg
dHVuaW5nIGluc3RlYWQgb2YgYSB3b3JrYXJvdW5kLg0KPiANCj4gV2l0aCB0aGF0LA0KPiANCj4g
UmV2aWV3ZWQtYnk6IEd1c3Rhdm8gU291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiAN
Cj4gLS0NCj4gR3VzdGF2byBTb3VzYQ0KPiANCj4gPiAgICAgICAgIGlmIChJU19NVExfR1JBUEhJ
Q1NfU1RFUChpOTE1LCBNLCBTVEVQX0EwLCBTVEVQX0IwKSB8fA0KPiA+ICAgICAgICAgICAgIElT
X01UTF9HUkFQSElDU19TVEVQKGk5MTUsIFAsIFNURVBfQTAsIFNURVBfQjApKSB7DQo+ID4gICAg
ICAgICAgICAgICAgIC8qIFdhXzE0MDE0OTQ3OTYzICovDQo+ID5AQCAtMTc0OCw2ICsxNzU0LDEz
IEBAIHhlbHBtcF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsDQo+IHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkNCj4gPiAgKi8NCj4gPiBzdGF0aWMgdm9pZCBndF90dW5p
bmdfc2V0dGluZ3Moc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2Fs
KQ0KPiA+IHsNCj4gPisgICAgICAgIGlmIChJU19NRVRFT1JMQUtFKGd0LT5pOTE1KSkgew0KPiA+
KyAgICAgICAgICAgICAgICBpZiAoZ3QtPnR5cGUgIT0gR1RfTUVESUEpDQo+ID4rICAgICAgICAg
ICAgICAgICAgICAgICAgd2FfbWNyX3dyaXRlX29yKHdhbCwgWEVIUF9MM1NDUVJFRzcsDQo+IEJM
RU5EX0ZJTExfQ0FDSElOR19PUFRfRElTKTsNCj4gPisNCj4gPisgICAgICAgICAgICAgICAgd2Ff
bWNyX3dyaXRlX29yKHdhbCwgWEVIUF9TUUNNLCBFTl8zMkJfQUNDRVNTKTsNCj4gPisgICAgICAg
IH0NCj4gPisNCj4gPiAgICAgICAgIGlmIChJU19QT05URVZFQ0NISU8oZ3QtPmk5MTUpKSB7DQo+
ID4gICAgICAgICAgICAgICAgIHdhX21jcl93cml0ZSh3YWwsIFhFSFBDX0wzU0NSVUIsDQo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTQ1JVQl9DTF9EV05HUkFERV9TSEFSRUQgfA0K
PiBTQ1JVQl9SQVRFXzRCX1BFUl9DTEspOw0KPiA+QEAgLTI5NDQsNyArMjk1Nyw3IEBAIHN0YXRp
YyB2b2lkDQo+ID4gYWRkX3JlbmRlcl9jb21wdXRlX3R1bmluZ19zZXR0aW5ncyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkNCj4gPiB7DQo+ID4tICAgICAgICBpZiAoSVNf
REcyKGk5MTUpKQ0KPiA+KyAgICAgICAgaWYgKElTX01FVEVPUkxBS0UoaTkxNSkgfHwgSVNfREcy
KGk5MTUpKQ0KPiA+ICAgICAgICAgICAgICAgICB3YV9tY3Jfd3JpdGVfY2xyX3NldCh3YWwsIFJU
X0NUUkwsIFNUQUNLSURfQ1RSTCwNCj4gU1RBQ0tJRF9DVFJMXzUxMik7DQo+ID4NCj4gPiAgICAg
ICAgIC8qDQo+ID4tLQ0KPiA+Mi4zNC4xDQo+ID4NCg==
