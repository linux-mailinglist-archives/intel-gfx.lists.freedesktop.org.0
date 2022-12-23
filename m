Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF8B65539D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Dec 2022 19:25:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B87610E0F0;
	Fri, 23 Dec 2022 18:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546CC10E083
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Dec 2022 18:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671819903; x=1703355903;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=BemXpc9S0rBFQUhC+OrjxRpjp5QXPWnyySPTZ0UReMU=;
 b=PE4djcPHSzrIwQplZBJbKGx5vlekvruQGJT9DrDZnPJvw3EDskIIYgTQ
 1HRUi6YaoRrhZn8NflUibVk7r6o+JPp4ti/OLsVGHQLQZpDNJlRF/9QhF
 l/qQeZgvrI7mD4Bx0mh4rX4rBtPdBnF4kEAfSrse2+e4nNdiYK24WwIml
 uXJEcUr/Cvd1mdJeAQvsF003b1A4TBqEQijlSO218FG0a+i0Qpk/V+IPg
 sG7KbI0JuqQBIRgMCDMqEbmpkmLdrXjh902xHKroE47YeEA6xa9/99t4i
 hQgT5vSNaCCPNx3yIGKaLNOuHZfj7SX4geA7k0BlXc85OIUgNmVdtFQ+Z Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="320422634"
X-IronPort-AV: E=Sophos;i="5.96,269,1665471600"; d="scan'208";a="320422634"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2022 10:24:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10570"; a="682785253"
X-IronPort-AV: E=Sophos;i="5.96,269,1665471600"; d="scan'208";a="682785253"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 23 Dec 2022 10:24:55 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 10:24:55 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 23 Dec 2022 10:24:54 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 23 Dec 2022 10:24:54 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 23 Dec 2022 10:24:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VOF8LZ8ogL8tPdd+po0SqyIYyrW7DQnqPq4FUZtcVtpRgdiCAqxIwOA5vnNJA2pyu7aveXU+xmHnR/VE8HLHrDPJwcT8b01oTswolrfj0N7q0QHibjj0E4w26gidDhYr5VGywSSutPFr5h/64GihNpA7cXOL7imX9IjF/byZs1NSltsoEFJ00AySH/j9RQcedAc1xdGZKpvsuXo7r0RrI9R+DGDx+DArglG2wKXFWaBE8B5KVIKyhUaPSJKQCxlApvO43+XqaYslthek4iUpzI1DVE3XPwJjlr99zrJD39IP9dJDT/WmtZHCXcjuxN+22rCYOZOfDLwTedxHzMd0hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BemXpc9S0rBFQUhC+OrjxRpjp5QXPWnyySPTZ0UReMU=;
 b=h3D7TZ0zpyQaHhi1SOQlO5h2ted2HA9fkX6USHR1c5hHfg+bgJLSzRYWc4uKbYgir+HG/KyZ+OJaOrBtCncm/CMQFEsEQBnZnBvK4HwZPC/ecZOCwLFg9RlHbC8GPwlR+4Wcm3c5k111zqGCVV0NlEckOsE59PZJ3qWRTIDkeF2gDy9Svk0csDaF0UqHlT8+kfjcs5/0PyQYaxcHzi50C6Qn0Hr2OL/S7wDQfPDKc/UJx+eU8ClOvid7QwbQxU8NVRN1vtqTaxBSDjJeLfHmrGWfDPHu97F0osQ9GfYLXcBYw1TXxT5WHGxMzNOmNmkIuNY54OdTQhiXBKcMFUmayA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by SA1PR11MB5780.namprd11.prod.outlook.com (2603:10b6:806:233::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Fri, 23 Dec
 2022 18:24:52 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f%4]) with mapi id 15.20.5924.016; Fri, 23 Dec 2022
 18:24:52 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v7 2/2] drm/i915/mtl: update scaler source
 and destination limits for MTL
Thread-Index: AQHZFtfuNRVdsXn3AEuTd/S3GffEgK57g4IAgABGagA=
Date: Fri, 23 Dec 2022 18:24:52 +0000
Message-ID: <c3f038459745667a582124002ed794c9c503c9ac.camel@intel.com>
References: <20221223130509.43245-1-luciano.coelho@intel.com>
 <20221223130509.43245-3-luciano.coelho@intel.com>
 <7252418d-6631-b609-c67a-5ca65c460acb@intel.com>
 <d01d9a88-648e-0edd-f867-305bf07337fb@intel.com>
In-Reply-To: <d01d9a88-648e-0edd-f867-305bf07337fb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.2-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|SA1PR11MB5780:EE_
x-ms-office365-filtering-correlation-id: 4d0ea1e6-ca15-4243-7513-08dae512fbc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ets9C9teYSqlPSJuNmwvmsc4UkH110M/M1lX6lSvgxqXWsLqGaulGQFdi8+xQ1f6XYiftU8avheu5/cgqmR7o0wM1YONKfeYrnSOJradYtYFvxFmDQKGT/zkkKStoLk0nqZ466p7vKB5D7rr6W6Ux5984hrWEKYRUhDn/vqNH2Io9LKI48Fz7ZSBVX27ZkXtNAlItGQTlSifT8X61tPfx++nvqnZb7+eg1f8s8ZBEveJ2gop6sMDDNYC2g9oJf1BLRZZzgNOgXkcJYzpecpuA4iqhCTQ/VQWp0WCfG57izKp6tIc2exstSKUv4+kdc0sttipcx/EEb+rD0YSK9yu74OObKyBAmazVbQpORtqV3dqSl/GBhf5U9/cvI9l80c3aZ+mfZtZbJHEleFAsSiTPPJFs+kClvPXZkHYn7bBquflYbNHXRYMFtQHTSCXcVFV+hKTfdlqV1awe2gWSB0K3TNpEwwEH4wUwvXsHUkvaYglT4KXf9AO0p3bbpm/JuJ0s1fItFTX81rvDlQ8K/AjSqztc+B0730TbwbCgI37o0FGAc27ZMqd2VxiJ32RDO+qiHEKQIUIKprmV1dDkU5OkEntmoZS9W9Oyy3Tied8vwxv1/yWW4lebRJSnfq1x9YGO8J6U6JyuFd4NDuQeLD6wDcFYI+SePWwzqGYchzcZwQtMwrJd5uTyiSESEskXK6S
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(366004)(376002)(346002)(396003)(451199015)(38070700005)(2616005)(66476007)(64756008)(66446008)(66946007)(66556008)(76116006)(8676002)(82960400001)(186003)(26005)(122000001)(6512007)(8936002)(91956017)(38100700002)(41300700001)(316002)(2906002)(4001150100001)(86362001)(83380400001)(5660300002)(6486002)(478600001)(36756003)(15650500001)(6506007)(53546011)(71200400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHljZWRGVURxWGIwWVBsN2hHbGQzQkQ4V1VBNi9tT1hIQ05wNm1UTEk3MHJD?=
 =?utf-8?B?TVBnbzR6eThaVGRRbVhMYldZSW5YQ2RqaE5RczgxZEdDa0trcUlBem1JR2NZ?=
 =?utf-8?B?OXVpTGxpT2IvQi96RFQxWkovSk95QWg2Y3JNK2Y2OUU4M25QZ1ZmbU1QbUhJ?=
 =?utf-8?B?T2ZsaHQ3blFjdFlHTHFsL0RIOVI3em9EYkM0RHAwSzlwVExYNjRrSVJzcGFK?=
 =?utf-8?B?a2djQWhZTXNQaThTZFhwK0YwMHdwOHBuQTlFMUx6SVFvSVJNbkVSa0FMSjlT?=
 =?utf-8?B?bm90RkRCekJkSnZCTjhTLzFabnZSbDAzaG5RbU9YNDd1N3BIUWs3dmdmSGlm?=
 =?utf-8?B?U3NtbzhpUjlNWU9xWXZKaUZHN29hTE9RY01GRlRCUkU3ckd4amJ4WENvVk5a?=
 =?utf-8?B?SmJReHdicDAyRjRIYVJnRGxoUmViZVlLYUpsZ1VoR3E1Z1M1THljblZHMStl?=
 =?utf-8?B?ZUFtSEF2d3pnMldHMzd2YkxEUjNCdExhQ1k5ZFZHM2c2RzRhbGloa2U0azdH?=
 =?utf-8?B?QTV0RVR6Ukl3VHlPem1TeEIxYjN3cU9GVDJRT1VVNWJLUE5DNmpkZ241NDlT?=
 =?utf-8?B?NmdubVVsajA0UzNWaWQxWlhqTkhUVmpGZVYzaVkxdnJoUGJDbG85dThCd09N?=
 =?utf-8?B?SmxFbHR5cFVZVlRVdy9SWnd6YkpZM3ZmcUJ6Q1g2d3lPcThvWVpBbzNQSXoz?=
 =?utf-8?B?aG14czAvVjBaYUZocStRYUtqTDhjNnROem9TNHBnMjFzTFMzU2I1a2ZwcGVq?=
 =?utf-8?B?dExhNGtGMXpteHRXeWwxTkYwb2FCSUJvdlB0YWFQMUJoTElVTHZGS285UjZa?=
 =?utf-8?B?ZFNhaVc1M05lSnRhWW44QjFTeHlJamw3OSs5NEhFSFpzSVB6V1RHRnA2V0VD?=
 =?utf-8?B?K2M1U2k5MW43aHcyQ00wd041UHdKVHNld00zV2tTYjZFcURPZXFpUllCOE1k?=
 =?utf-8?B?aWZLUkdEbjR5bTFDdGkwdUxLVWlVSFJaSHVEdGloN1BCYXg0SUxjUzJFNFNk?=
 =?utf-8?B?bG9hd0o5RjRDdTZQdDREVlRsMUJuYjBCSHFSZjMrRUxHWk9yRW9QOXNaNys4?=
 =?utf-8?B?SXBuK0hiYVJERE9VZUlZTjZoMDFmeTlENGhDSjRsQ1paamp2a2hPZGVZR3dk?=
 =?utf-8?B?OHpMZ0V5S0ViOWl3WGVabWpyZ09MM2htRW9YdDBmYmlQVndnOWVEMGRkRFVL?=
 =?utf-8?B?MTg0NSs5UjhhWGFwRk81MUdmYjRaaUJNak1pSzFTMlBWOGtJUEpIaDVoWnlH?=
 =?utf-8?B?R3I1eGovMFZ4cDlhTWhFSWU5SUxTdzJ1WVdHRXlieXlFR3B5QVNzengvUXVI?=
 =?utf-8?B?akFhdTBDS0FuZXN3eWcyWjJCdytjb2p6YVZoeWRiQWZGV2tJUGdDMjFCejho?=
 =?utf-8?B?VGRhVjEwOUhmb1czTTE4UEJLa2NvQTIwdk1JMnJka25xYVQ3ckYya0c1TENR?=
 =?utf-8?B?QnpqWlo3VXhUaXNtTi9XV1hiWUY3SkpKSCtBaUswS0lVZ1JFTDUrMHJaazZT?=
 =?utf-8?B?Njdpb0dMZXNITUNGc1pkM1JXUUdaajRNY1VpY1dGRjhDYkxRNW5tdG5Nckc5?=
 =?utf-8?B?ZW8vNDdZVHArcGhEUXY1R3dzRmUzZmRsSUxJWHlUeXkxYUR4Yk1ZMTJIMzhS?=
 =?utf-8?B?TkFpK0pVNmxUN1F6VDVZK3BzTGdGQkd0RHZYcTIxOXJZRjhFYjlIVnlFbWk5?=
 =?utf-8?B?QXpleGNMeFZVUXVRczRsL1NFaTZld3hmS3JhNExUMXVkL3RCVThrWjJQM0hu?=
 =?utf-8?B?c29ZZURGTWlpRUhYancyODd6T2tzZ1ZSblRxQm84Z2JRTkhEbTdZM0k1L2Rn?=
 =?utf-8?B?aGsyWlZiOHVObkl4K1JEWml1ZlVUMGVmNFovVWZOS3ZmVVBHaVZFSlFrMCtt?=
 =?utf-8?B?ZDAyV2w2R2kxc3RLaUt2TGJyeTFRTHRVMm5VWGpXYzdXVktud3BvbGhtcEps?=
 =?utf-8?B?aVl4NnhqQXJmcVFPdW4rMHcza29FN0pobDVhSFM5SVMrbm1nditUNmFqci9K?=
 =?utf-8?B?SitlZFluOWdOY3lTSEJWeUNFbzVUWFlVYnNscSs5MzVFVytuN1Y4bUxTZm8z?=
 =?utf-8?B?bWE1L0N5RXV6SzRyRXJkRXpCTG5GWHB2SWE5MVpYZWRHQzAwZ2dwNndyaTE2?=
 =?utf-8?B?cGgyUFMzT1hOYk9waEovVWdwd1dsZkhMYWtPdVpsRzhYV0M1STZ4ckhaUnl2?=
 =?utf-8?B?ZVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9F711DFB0B3F0F40AD42FACFECB2E46F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d0ea1e6-ca15-4243-7513-08dae512fbc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2022 18:24:52.1965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kh9wCoaj0T5D/qnUTpKDPLX2ywytmiA4ws0tWX8alSuV37ay9rslfudGUiXsn+Y1sEGnhKHc8j+QXlWzhxGuV9aenUvHvv/gl6FnPYkByJ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5780
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 2/2] drm/i915/mtl: update scaler source
 and destination limits for MTL
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

T24gRnJpLCAyMDIyLTEyLTIzIGF0IDE5OjQyICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gT24gMTIvMjMvMjAyMiA3OjM3IFBNLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90ZToNCj4g
PiANCj4gPiBPbiAxMi8yMy8yMDIyIDY6MzUgUE0sIEx1Y2EgQ29lbGhvIHdyb3RlOg0KPiA+ID4g
RnJvbTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gPiANCj4g
PiA+IFRoZSBtYXggc291cmNlIGFuZCBkZXN0aW5hdGlvbiBsaW1pdHMgZm9yIHNjYWxlcnMgaW4g
TVRMIGhhdmUgY2hhbmdlZC4NCj4gPiA+IFVzZSB0aGUgbmV3IHZhbHVlcyBhY2NvcmRpbmdseS4N
Cj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxh
bmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ29lbGhv
IDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IA0KPiA+ID4gSW4g
djI6DQo+ID4gPiDCoMKgwqAgKiBObyBjaGFuZ2VzOw0KPiA+ID4gDQo+ID4gPiBJbiB2MzoNCj4g
PiA+IMKgwqDCoCAqIFJlbW92ZWQgc3RyYXkgcmV2aWV3ZWQtYnkgdGFnOw0KPiA+ID4gwqDCoMKg
ICogQWRkZWQgbXkgcy1vLWIuDQo+ID4gPiANCj4gPiA+IEluIHY0Og0KPiA+ID4gwqDCoMKgICog
Tm8gY2hhbmdlcy4NCj4gPiA+IA0KPiA+ID4gSW4gdjU6DQo+ID4gPiDCoMKgwqAgKiBKdXN0IHJl
c2VudCB3aXRoIGEgY292ZXIgbGV0dGVyLg0KPiA+ID4gDQo+ID4gPiBJbiB2NjoNCj4gPiA+IMKg
wqDCoCAqIE5vdyB0aGUgY29ycmVjdCB2ZXJzaW9uIGFnYWluIChzYW1lIGFzIHY0KS4NCj4gPiA+
IA0KPiA+ID4gSW4gdjc6DQo+ID4gPiDCoMKgwqAgKiBVcGRhdGUgdG8gbmV3IE1UTCBsaW1pdHMg
YWNjb3JkaW5nIHRvIHRoZSBic3BlYy4NCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiDCoCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2FsZXIuYyB8IDQwICsrKysrKysrKysrKysrKysr
Ky0tLS0tDQo+ID4gPiDCoCAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgOCBkZWxl
dGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3NjYWxlci5jIA0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3NrbF9zY2FsZXIuYw0KPiA+ID4gaW5kZXggZDczOTAwNjdiN2Q0Li4wMWU4ODEyOTM2MTIg
MTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF9zY2Fs
ZXIuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfc2NhbGVy
LmMNCj4gPiA+IEBAIC04Nyw2ICs4NywxMCBAQCBzdGF0aWMgdTE2IHNrbF9zY2FsZXJfY2FsY19w
aGFzZShpbnQgc3ViLCBpbnQgDQo+ID4gPiBzY2FsZSwgYm9vbCBjaHJvbWFfY29zaXRlZCkNCj4g
PiA+IMKgICNkZWZpbmUgSUNMX01BWF9TUkNfSCA0MDk2DQo+ID4gPiDCoCAjZGVmaW5lIElDTF9N
QVhfRFNUX1cgNTEyMA0KPiA+ID4gwqAgI2RlZmluZSBJQ0xfTUFYX0RTVF9IIDQwOTYNCj4gPiA+
ICsjZGVmaW5lIE1UTF9NQVhfU1JDX1cgNDA5Ng0KPiA+ID4gKyNkZWZpbmUgTVRMX01BWF9TUkNf
SCA4MTkyDQo+ID4gPiArI2RlZmluZSBNVExfTUFYX0RTVF9XIDgxOTINCj4gPiA+ICsjZGVmaW5l
IE1UTF9NQVhfRFNUX0ggODE5Mg0KPiA+ID4gwqAgI2RlZmluZSBTS0xfTUlOX1lVVl80MjBfU1JD
X1cgMTYNCj4gPiA+IMKgICNkZWZpbmUgU0tMX01JTl9ZVVZfNDIwX1NSQ19IIDE2DQo+ID4gPiDC
oCBAQCAtMTAzLDYgKzEwNyw4IEBAIHNrbF91cGRhdGVfc2NhbGVyKHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlIA0KPiA+ID4gKmNydGNfc3RhdGUsIGJvb2wgZm9yY2VfZGV0YWNoLA0KPiA+ID4gwqDC
oMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMt
PmJhc2UuZGV2KTsNCj4gPiA+IMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21v
ZGUgKmFkanVzdGVkX21vZGUgPQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgICZjcnRjX3N0YXRl
LT5ody5hZGp1c3RlZF9tb2RlOw0KPiA+ID4gK8KgwqDCoCBpbnQgbWluX3NyY193LCBtaW5fc3Jj
X2gsIG1pbl9kc3RfdywgbWluX2RzdF9oOw0KPiA+ID4gK8KgwqDCoCBpbnQgbWF4X3NyY193LCBt
YXhfc3JjX2gsIG1heF9kc3RfdywgbWF4X2RzdF9oOw0KPiA+ID4gwqAgwqDCoMKgwqDCoCAvKg0K
PiA+ID4gwqDCoMKgwqDCoMKgICogU3JjIGNvb3JkaW5hdGVzIGFyZSBhbHJlYWR5IHJvdGF0ZWQg
YnkgMjcwIGRlZ3JlZXMgZm9yDQo+ID4gPiBAQCAtMTU3LDE1ICsxNjMsMzMgQEAgc2tsX3VwZGF0
ZV9zY2FsZXIoc3RydWN0IGludGVsX2NydGNfc3RhdGUgDQo+ID4gPiAqY3J0Y19zdGF0ZSwgYm9v
bCBmb3JjZV9kZXRhY2gsDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7
DQo+ID4gPiDCoMKgwqDCoMKgIH0NCj4gPiA+IMKgICvCoMKgwqAgbWluX3NyY193ID0gU0tMX01J
Tl9TUkNfVzsNCj4gPiA+ICvCoMKgwqAgbWluX3NyY19oID0gU0tMX01JTl9TUkNfSDsNCj4gPiA+
ICvCoMKgwqAgbWluX2RzdF93ID0gU0tMX01JTl9EU1RfVzsNCj4gPiA+ICvCoMKgwqAgbWluX2Rz
dF9oID0gU0tMX01JTl9EU1RfSDsNCj4gPiA+ICsNCj4gPiA+ICvCoMKgwqAgaWYgKERJU1BMQVlf
VkVSKGRldl9wcml2KSA8IDExKSB7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgbWF4X3NyY193ID0g
U0tMX01BWF9TUkNfVzsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoCBtYXhfc3JjX2ggPSBTS0xfTUFY
X1NSQ19IOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgIG1heF9kc3RfdyA9IFNLTF9NQVhfRFNUX1c7
DQo+ID4gPiArwqDCoMKgwqDCoMKgwqAgbWF4X2RzdF9oID0gU0tMX01BWF9EU1RfSDsNCj4gPiA+
ICvCoMKgwqAgfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAxNCkgew0KPiA+ID4g
K8KgwqDCoMKgwqDCoMKgIG1heF9zcmNfdyA9IElDTF9NQVhfU1JDX1c7DQo+ID4gPiArwqDCoMKg
wqDCoMKgwqAgbWF4X3NyY19oID0gSUNMX01BWF9TUkNfSDsNCj4gPiA+ICvCoMKgwqDCoMKgwqDC
oCBtYXhfZHN0X3cgPSBJQ0xfTUFYX0RTVF9XOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgIG1heF9k
c3RfaCA9IElDTF9NQVhfRFNUX0g7DQo+ID4gDQo+ID4gSGkgTHVjYSwNCj4gPiANCj4gPiBSZWNl
bnRseSB0aGVyZSBpcyBhIGNoYW5nZSBpbiBCc3BlYzo1MDQ0MSBhbmQgbm93IGZvciBHZW4gMTIg
c2NhbGVycywgDQo+ID4gdGhlIE1BWF9TUkNfVyBpcyA1MTIwIHBpeGVscyBhbmQgTUFYX1NSQ19I
IGlzIDgxOTIuDQo+IA0KPiANCj4gU2xpZ2h0IGNvcnJlY3Rpb24gOiB0aGlzIGlzIGZvciBib3Ro
IEdlbjEyLGFuZCAxMy4NCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBBbmtpdA0KPiANCj4gDQo+ID4g
DQo+ID4gTUFYX0RTVF9XLCBhbmQgTUFYX0RTVF9IIGFyZSA4MTkyLg0KPiA+IA0KPiA+IEFzIHdl
IGFyZSByZWZhY3RvcmluZyB0aGlzIHBhcnQsIGNhbiB3ZSBpbmNsdWRlIGEgc2VwYXJhdGUgcGF0
Y2ggZm9yIA0KPiA+IEdlbiAxMiBpbiB0aGlzIHNlcmllcz8NCg0KVGhhbmtzIGZvciBwb2ludGlu
ZyBvdXQsIEFua2l0IQ0KDQpCdXQgc2luY2UgbXkgc2VyaWVzIGlzIHNwZWNpZmljYWxseSB0YXJn
ZXRpbmcgTVRMLCBJJ20gZ29pbmcgdG8gc2VuZCBpdA0KYXMgYSBzdGFuZC1hbG9uZSBwYXRjaCwg
aWYgdGhhdCdzIG9rLg0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
