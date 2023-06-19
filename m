Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3B4734BB9
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 08:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8437A10E0A5;
	Mon, 19 Jun 2023 06:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB5410E0A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 06:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687155845; x=1718691845;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+XstBw+Tx1xXacDhYAt1/ZSBLvyFTqe+THkvQyVjym4=;
 b=iMI/6Tm9nguP17bsZOWH61G9FiHLaAp1LOJBsmzybmTSyAWiz5jHWr9D
 F4dtNh/qBeP0eYzx1/9KBRQzKXV4IY0yeTIFaE7UlbYYZFhoThZMm1ULp
 b+1E7Qw4sywdcdF2JHoP+ifIGD7Ynfpo8tB8kWGhfpvrAerKG0z0GIL03
 IUlu9HnFnIS5ERiIGViBztLXpZ2NGBbuvCaGPYA+9OR0m/jVwMWovLQvK
 KaRnOMqcz11B0OzdcCkqHF0pvGPJZ6nE1y+OmVVYlCNMni9BNQIxdmEgw
 wXGGHe2AW2xM0SpS9KkAnFJeGyaH7YFBPm4Q7c+NxnFiqdrSZnHpkf1sW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="358428677"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="358428677"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2023 23:24:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="783596725"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="783596725"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jun 2023 23:24:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 18 Jun 2023 23:24:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 18 Jun 2023 23:24:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 18 Jun 2023 23:24:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b3RuyCbeVSpPqzJUIBiKWWaTn6aknFBWXmiNYSvvKaStC4KUBd0oGvKT7dgq9/43tNf7nXA4s0l6ptrbMwprvHR34E/A5+1HPh5XabWFsxaWDYCuCYuy2A2JPP8bTgSu8ACl0tWnsK5lAH49xyJ48801193cIpO8SefVCG0a2a6o3Gj47fbhYmOBmwyWdEmcILekRGMrZmAiyGS3jNSogmDg/OoTwBr1oyNxbtHkEq6iyRE63d6ylbHI+w8UAwABmrD8Lywmo9G0VLspBCI0wXq4RiM2UPpG/4AqXQn/U3QdqgAGgG/MskDON6uu2vh1JK3/D7kDbPdzXYE00TsrbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+XstBw+Tx1xXacDhYAt1/ZSBLvyFTqe+THkvQyVjym4=;
 b=DCEbDBzfZbZTMIV1WN6u2E9N+/jIQAdn/JvTgkstcvS7N+xTSqWMR38PGnyye1e3my2kC+01SBowQkK9NZFGDUfV2BYnLMDkJkkOouLrJluEEmRyf+iNgUv2xa3cIokN+PHy9s3wPKmuLpyo/1fIzG3K4yGHlP+XAOhlU2Kz3U4LAq2dbL4hefPybSNwmUQo7B8tkT/o1HAc10iBcQZfJ3Vlu7Pc5ZkP/hhGouHUSNOKsAyZnAzeZEZWH97V2An9vNsljf0SVMSeGjcmTKAHb5MTC+Ec8FE1JwVIAu1LB5TjfpFOOD1WxJ+KsLml5342C5JFbaaqN9HA1HLraZTlYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM4PR11MB5263.namprd11.prod.outlook.com (2603:10b6:5:38a::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6500.36; Mon, 19 Jun 2023 06:24:01 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::8d36:9828:33c0:c570%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 06:24:01 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCHv3] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
Thread-Index: AQHZnbKRvf7N2CK9tkmECesY0G0euK+IqpIAgAkG9gA=
Date: Mon, 19 Jun 2023 06:24:01 +0000
Message-ID: <DM6PR11MB317786D4F51DBF38BD7F741CBA5FA@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230613044239.691706-1-arun.r.murthy@intel.com>
 <SN7PR11MB70410FE5EB5B8B1D38924C49EF55A@SN7PR11MB7041.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB70410FE5EB5B8B1D38924C49EF55A@SN7PR11MB7041.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|DM4PR11MB5263:EE_
x-ms-office365-filtering-correlation-id: d7fa85f1-7354-4198-6853-08db708dc5c0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4HmpGqv3GW5f5dlTb9C/q3NB9uMh6EY0vJscggJ07b9ESMSjxsLy80w6tcLOx9MPLltHibqJqcz6eavQ0gbIp6LzZG6Cv3hVMiBdzmmol3PptI/tCC8TmsRUQDKCJtRXrQdF0a6jrax1rieHnAhSjVZBEnBMjS9Gb/pasjQQzm/QJDGm2flg3y6x8xRBH6xALHmmtglJQs2q9AnmwuU+CIrZ/c+juoz9wdfufmE7F4P6DWJhdVP/U1yLx1P6dtr/8XYLhfpbm+MqhFF3/71A2GImPubcFni5O91Af4w6VOLY2zNikPEFOVAH0vNImMWPUxPrU/j5Y5kFRDxtsrTzJsC8NebFZPTTisok2qsW3PmjOfpOBIengxg3a1Dy1E4FIvM/l4mP8FhFLmIDQ8ChyEtcr42G760lYD00P5l6Q+HlNcIhNT6UiZGWxTlbobL91uucuYhm6T5mxSwA/+MxwYlz70jKcxaxefGg84GtO7mMKLh8DKxhA8eMxw66FnS7iTW3K4ObmkMUHR2eo8OjDa2FZOpjpVrgtHptNG5Q5dfccLnyvieC0nCfhWnpB9OW2Q1KynZq5NYBXLV+PS9fA0Tg3r2x+tEXvxFM/qHtrDMOhS2l6Mz8imepCZ2y3Ph/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(39860400002)(346002)(376002)(136003)(451199021)(41300700001)(5660300002)(52536014)(8676002)(8936002)(2906002)(38070700005)(33656002)(55016003)(86362001)(9686003)(53546011)(55236004)(478600001)(107886003)(26005)(6506007)(110136005)(186003)(7696005)(71200400001)(122000001)(76116006)(66946007)(66556008)(66446008)(64756008)(66476007)(4326008)(316002)(38100700002)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDBaaDRiQU5Wc1p6K1NCRnk3bDJaR2l5RE41blhIekJPSXhlaDBFTEZNd0RC?=
 =?utf-8?B?cmxrWmxTc1ZHVlc4NCsyNWFzZVIxbmhRTWYyVThNS3NpN3NtT045TnJpS2Ni?=
 =?utf-8?B?c0tsczZQekg5aUtVUXZoUm41a1RkZmVzOXoxeTI3a0Vnc2NVM3pEeDRpMk16?=
 =?utf-8?B?Q0xHTkgzRWRHWVNZUUpaVUs2ZzVUcmN1SjNEWGNVR0Foek12VWVvK0lodjN1?=
 =?utf-8?B?QmNIVE1hNm5IOXM4akdHbmtLVjNOZkc2Z0MydjFNNDJiU1YvY2JNRVAwbW9M?=
 =?utf-8?B?dVhPRi9SZmZYcTZxTG9wMVdZelNXRHhveDhYM0JETVlzZ3FKUHBGWEpyd3Mw?=
 =?utf-8?B?YjZTZ0tQa283SHRZL0ZaaWNVU1pCdTdBK3RvK1JEMGZIU0hJY2s4TXd4RmNI?=
 =?utf-8?B?bDZzTEg4VUtTektab3Z3eEdmYzdaSzJpTyt1bWxsYUpDMnBxU3BmK3FueW5T?=
 =?utf-8?B?Vjc1Q0c5RWhDWUNMWitud1FsMTgyNTRnT0Zkd3RnVDV3WCtJR2JjN1o1VXZR?=
 =?utf-8?B?ZktZVmh0dUhtOUtoMUQzK04rYUtqWUpzU0FYTFVxcW9TNytnWmxSNC9nb2Nz?=
 =?utf-8?B?WFRMbHU0VlFJWGZ1aWF1b3NLN3V1blZQeEZIcVI4UklIZGt4ZmNJaE5rcTBQ?=
 =?utf-8?B?a1hXdWdmSWk1VzAvRHdlOHBaS1dqbFFTdFRkMWhybHdDMVIrbkJKeCthdU5D?=
 =?utf-8?B?UFhEVU85M2hwSDBqUExoZTJxc20vQUIvY3Y1dkxBdzZOWExabWcvaFN3N3JI?=
 =?utf-8?B?SjB5SXBXR2FENUxlZXBidG1ra0RiSDdzQzNtcWlmVitJQTNhbjk1NUcyT2dQ?=
 =?utf-8?B?ejFYSU1GMG5WYlRJL0ptRlVKYkpUSUEyRXN3REYrSkpRVmZnTEdkYmpqVnZS?=
 =?utf-8?B?cllpeU1BOUV1TE1YR1hxZ05LZEZxZjFyMlkyc1RQZ1A1Z2h5YXBVVkRUa3JM?=
 =?utf-8?B?U2lDTUhVajVNNG95UGJtWUxWVlhGUUh0Zkw4SU1sVlhFdnZML2lFZ0VwN2Rq?=
 =?utf-8?B?eUFBLzViTERvVFJzY0lBVXZsa1MzZitoRW0rM2tEd2xMWVNZNGpBR0tOaEFJ?=
 =?utf-8?B?S2NhRW5QamZFakVDREd2cFNDSDZSYVBnRXRXM1U4OE10N3VvU05PZmlsQWhR?=
 =?utf-8?B?aHY1ZkNId1hCQy9kVk9xQ2FIQlVwRWIycW45VXdsYzNtdEhtcGtlVDZnQjNv?=
 =?utf-8?B?M2xiNDF1eGRqaTNYTGVYRHdjdXR1UGYwQSt3UmQwRWlwSVo2eHI2S0pYczN1?=
 =?utf-8?B?Ums2VzJyOVhUQXlYM0VCRXh6RlNUWGVweVAvaGdhRVVOVWVGV2taZ0ptM2Yr?=
 =?utf-8?B?bHlDaE9jK3hzN1h1Y3NsdEU1RnhweXFaRjlZZFg1M1RHQ0VIMkkwZlN6R3hP?=
 =?utf-8?B?THZyZVEvMFBEdDlmdmZxZU5TejB4cnl2bEliSGhNOTB4OFp5WFQzS1VSVzlt?=
 =?utf-8?B?VHZiR2phaFAzU0h2V3J1aDZrUnU2alByaTlOQ01JQmRES1psWFk1SU55a205?=
 =?utf-8?B?ZDFSbS9tZkNYSTk5SWdjQ1JrZFU5WGxDUHplc1E2OW1ndzc4djZSUXJ5Y2c1?=
 =?utf-8?B?aGQwMUxNbUJkVENvcTdEOXUzb1RkeWlpRzJTNEJvaWhUL3d3SmdiTi9rcVZ2?=
 =?utf-8?B?d1Vuc0NZbSszRGZ3R3VGb1R3YzU2M094K1NFeE9uSzRXSCsrQTR4WExyeUE3?=
 =?utf-8?B?Q0N0c0ZTNGhzMnRCN3ZiaTBheW02cVREb0k5ekR5K2RGemp4anQzY3k5WE9C?=
 =?utf-8?B?ZWcwTjVpSmxjY29Mc244SWpSaTVYZDk5eDBnZE1jU09ONVJib0huZmQydDdS?=
 =?utf-8?B?TUNHOXVid09FazAweVZFL3lTcjdIbXdkYjVHeTNxN0hsckxXQ1Fjd1V0MDFK?=
 =?utf-8?B?dW1FWStDSXE3Y2s1K3lyMzZlbGdNRmVFbWgwTXMvbG1aNU9VL05md3RhRVJh?=
 =?utf-8?B?a3dXL1BxNU0yVGRCYkVkNWxBbFZteFJsRitnTllkZ0dqeUk3UWdGMUJpL3dy?=
 =?utf-8?B?K2Z5VHJpaDI3WXdpSUZ0bm8yN1FENEV0YzRFL1NGTTJxQWRvRVpSZzBISXR0?=
 =?utf-8?B?RlJyNmMwejU4L0JWR0xXakd3dWN2T3pIQjBOQ1k3RStJT3F6bElWVDlkUW1P?=
 =?utf-8?Q?X6aLb02RiNRDoDiBAc7JCwMWH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7fa85f1-7354-4198-6853-08db708dc5c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 06:24:01.3260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y0i71NGOz+PgVygNFV04sDIHDNpJlwo88Mjl7AXVjcDkH1s+jeF9hMit++GVZNfe7dz2t0AX1jq/DdpQnxA7uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5263
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYWhvbGEsIE1pa2EgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSnVuZSAxMywgMjAyMyA2OjAyIFBN
DQo+IFRvOiBNdXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBpbnRlbC0N
Cj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSBbUEFUQ0h2M10gZHJt
L2k5MTUvZGlzcGxheS9kcDogT24gQVVYIHhmZXIgdGltZW91dA0KPiByZXN0YXJ0IGZyZXNobHkN
Cj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZngg
PGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+
ID4gQXJ1biBSIE11cnRoeQ0KPiA+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMTMsIDIwMjMgNzo0MyBB
TQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IE5pa3Vs
YSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSHYzXSBkcm0vaTkxNS9kaXNwbGF5L2RwOiBPbiBBVVggeGZlcg0KPiA+IHRpbWVvdXQg
cmVzdGFydCBmcmVzaGx5DQo+ID4NCj4gPiBPbiBBVVggdHJhbnNmZXIgdGltZW91dCwgYXMgcGVy
IERQIHNwZWMgbmVlZCB0byByZXRyeSBmb3IgMyB0aW1lcyBhbmQgaGFzDQo+IHRvIGJlIHJlc3Rh
cnRlZCBmcmVzaGx5Lg0KPiA+DQo+ID4gdjM6IGhhbmRsZSB0aW1lb3V0IGFuZCBkb250IHJlbHkg
b24gcmVnaXN0ZXIgdmFsdWUgb24gdGltZW91dCAoSW1yZSkNCj4gPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMSAtDQo+
ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMgICB8IDcyICsr
KysrKysrKy0tLS0tLS0tLS0NCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCsp
LCAzOSBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCAyZDgyOTdmOGQw
ODguLjA5NDJiMTA5YjRjYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTE3NDEsNyArMTc0MSw2
IEBAIHN0cnVjdCBpbnRlbF9kcCB7DQo+ID4gIAkvKiBzaW5rIG9yIGJyYW5jaCBkZXNjcmlwdG9y
ICovDQo+ID4gIAlzdHJ1Y3QgZHJtX2RwX2Rlc2MgZGVzYzsNCj4gPiAgCXN0cnVjdCBkcm1fZHBf
YXV4IGF1eDsNCj4gPiAtCXUzMiBhdXhfYnVzeV9sYXN0X3N0YXR1czsNCj4gPiAgCXU4IHRyYWlu
X3NldFs0XTsNCj4gPg0KPiA+ICAJc3RydWN0IGludGVsX3BwcyBwcHM7DQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBpbmRleCAwYzI3
ZGI4YWU0ZjEuLjI0NGI0ZDdkNzE2ZCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYw0KPiA+IEBAIC0zNiwyNSArMzYsMjQgQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZHBfYXV4X3VucGFjayh1MzIgc3JjLCB1OCAqZHN0LA0KPiBpbnQgZHN0X2J5
dGVzKQ0KPiA+ICAJCWRzdFtpXSA9IHNyYyA+PiAoKDMgLSBpKSAqIDgpOw0KPiA+ICB9DQo+ID4N
Cj4gPiAtc3RhdGljIHUzMg0KPiA+IC1pbnRlbF9kcF9hdXhfd2FpdF9kb25lKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApDQo+ID4gK3N0YXRpYyBpbnQNCj4gPiAraW50ZWxfZHBfYXV4X3dhaXRf
ZG9uZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1MzIgKnN0YXR1cykNCj4gPiAgew0KPiA+
ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsN
Cj4gPiAgCWk5MTVfcmVnX3QgY2hfY3RsID0gaW50ZWxfZHAtPmF1eF9jaF9jdGxfcmVnKGludGVs
X2RwKTsNCj4gPiAgCWNvbnN0IHVuc2lnbmVkIGludCB0aW1lb3V0X21zID0gMTA7DQo+ID4gLQl1
MzIgc3RhdHVzOw0KPiA+ICAJaW50IHJldDsNCj4gPg0KPiA+ICAJcmV0ID0gX19pbnRlbF9kZV93
YWl0X2Zvcl9yZWdpc3RlcihpOTE1LCBjaF9jdGwsDQo+ID4gIAkJCQkJICAgRFBfQVVYX0NIX0NU
TF9TRU5EX0JVU1ksIDAsDQo+ID4gLQkJCQkJICAgMiwgdGltZW91dF9tcywgJnN0YXR1cyk7DQo+
ID4gKwkJCQkJICAgNTAsIHRpbWVvdXRfbXMsIHN0YXR1cyk7DQo+ID4NCj4gPiAgCWlmIChyZXQg
PT0gLUVUSU1FRE9VVCkNCj4gPiAgCQlkcm1fZXJyKCZpOTE1LT5kcm0sDQo+ID4gIAkJCSIlczog
ZGlkIG5vdCBjb21wbGV0ZSBvciB0aW1lb3V0IHdpdGhpbiAldW1zDQo+IChzdGF0dXMgMHglMDh4
KVxuIiwNCj4gPiAtCQkJaW50ZWxfZHAtPmF1eC5uYW1lLCB0aW1lb3V0X21zLCBzdGF0dXMpOw0K
PiA+ICsJCQlpbnRlbF9kcC0+YXV4Lm5hbWUsIHRpbWVvdXRfbXMsICpzdGF0dXMpOw0KPiA+DQo+
ID4gLQlyZXR1cm4gc3RhdHVzOw0KPiA+ICsJcmV0dXJuIHJldDsNCj4gPiAgfQ0KPiA+DQo+ID4g
IHN0YXRpYyB1MzIgZzR4X2dldF9hdXhfY2xvY2tfZGl2aWRlcihzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLCBpbnQNCj4gPiBpbmRleCkgQEAgLTE4NiwxMCArMTg1LDcgQEAgc3RhdGljIHUzMiBz
a2xfZ2V0X2F1eF9zZW5kX2N0bChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICAJ
ICovDQo+ID4gIAlyZXQgPSBEUF9BVVhfQ0hfQ1RMX1NFTkRfQlVTWSB8DQo+ID4gIAkJRFBfQVVY
X0NIX0NUTF9ET05FIHwNCj4gPiAtCQlEUF9BVVhfQ0hfQ1RMX0lOVEVSUlVQVCB8DQo+ID4gLQkJ
RFBfQVVYX0NIX0NUTF9USU1FX09VVF9FUlJPUiB8DQo+ID4gIAkJRFBfQVVYX0NIX0NUTF9USU1F
X09VVF9NQVggfA0KPiA+IC0JCURQX0FVWF9DSF9DVExfUkVDRUlWRV9FUlJPUiB8DQo+ID4gIAkJ
RFBfQVVYX0NIX0NUTF9NRVNTQUdFX1NJWkUoc2VuZF9ieXRlcykgfA0KPiA+DQo+IAlEUF9BVVhf
Q0hfQ1RMX0ZXX1NZTkNfUFVMU0VfU0tMKGludGVsX2RwX2F1eF9md19zeW5jX2xlbigpKQ0KPiB8
DQo+ID4NCj4gCURQX0FVWF9DSF9DVExfU1lOQ19QVUxTRV9TS0woaW50ZWxfZHBfYXV4X3N5bmNf
bGVuKCkpOw0KPiA+IEBAIC0yNzMsMzAgKzI2OSw2IEBAIGludGVsX2RwX2F1eF94ZmVyKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gIAkgKiBpdCB1c2luZyB0aGUgc2FtZSBBVVggQ0gg
c2ltdWx0YW5lb3VzbHkNCj4gPiAgCSAqLw0KPiA+DQo+ID4gLQkvKiBUcnkgdG8gd2FpdCBmb3Ig
YW55IHByZXZpb3VzIEFVWCBjaGFubmVsIGFjdGl2aXR5ICovDQo+ID4gLQlmb3IgKHRyeSA9IDA7
IHRyeSA8IDM7IHRyeSsrKSB7DQo+ID4gLQkJc3RhdHVzID0gaW50ZWxfZGVfcmVhZF9ub3RyYWNl
KGk5MTUsIGNoX2N0bCk7DQo+ID4gLQkJaWYgKChzdGF0dXMgJiBEUF9BVVhfQ0hfQ1RMX1NFTkRf
QlVTWSkgPT0gMCkNCj4gPiAtCQkJYnJlYWs7DQo+ID4gLQkJbXNsZWVwKDEpOw0KPiA+IC0JfQ0K
PiA+IC0JLyoganVzdCB0cmFjZSB0aGUgZmluYWwgdmFsdWUgKi8NCj4gPiAtCXRyYWNlX2k5MTVf
cmVnX3J3KGZhbHNlLCBjaF9jdGwsIHN0YXR1cywgc2l6ZW9mKHN0YXR1cyksIHRydWUpOw0KPiA+
IC0NCj4gPiAtCWlmICh0cnkgPT0gMykgew0KPiA+IC0JCWNvbnN0IHUzMiBzdGF0dXMgPSBpbnRl
bF9kZV9yZWFkKGk5MTUsIGNoX2N0bCk7DQo+ID4gLQ0KPiA+IC0JCWlmIChzdGF0dXMgIT0gaW50
ZWxfZHAtPmF1eF9idXN5X2xhc3Rfc3RhdHVzKSB7DQo+ID4gLQkJCWRybV9XQVJOKCZpOTE1LT5k
cm0sIDEsDQo+ID4gLQkJCQkgIiVzOiBub3Qgc3RhcnRlZCAoc3RhdHVzIDB4JTA4eClcbiIsDQo+
ID4gLQkJCQkgaW50ZWxfZHAtPmF1eC5uYW1lLCBzdGF0dXMpOw0KPiA+IC0JCQlpbnRlbF9kcC0+
YXV4X2J1c3lfbGFzdF9zdGF0dXMgPSBzdGF0dXM7DQo+ID4gLQkJfQ0KPiA+IC0NCj4gPiAtCQly
ZXQgPSAtRUJVU1k7DQo+ID4gLQkJZ290byBvdXQ7DQo+ID4gLQl9DQo+ID4gLQ0KPiA+ICAJLyog
T25seSA1IGRhdGEgcmVnaXN0ZXJzISAqLw0KPiA+ICAJaWYgKGRybV9XQVJOX09OKCZpOTE1LT5k
cm0sIHNlbmRfYnl0ZXMgPiAyMCB8fCByZWN2X3NpemUgPiAyMCkpIHsNCj4gPiAgCQlyZXQgPSAt
RTJCSUc7DQo+ID4gQEAgLTMwNCwxNCArMjc2LDMxIEBAIGludGVsX2RwX2F1eF94ZmVyKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gIAl9DQo+ID4NCj4gPiAgCXdoaWxlICgoYXV4X2Ns
b2NrX2RpdmlkZXIgPSBpbnRlbF9kcC0NCj4gPmdldF9hdXhfY2xvY2tfZGl2aWRlcihpbnRlbF9k
cCwgY2xvY2srKykpKSB7DQo+ID4gLQkJdTMyIHNlbmRfY3RsID0gaW50ZWxfZHAtPmdldF9hdXhf
c2VuZF9jdGwoaW50ZWxfZHAsDQo+ID4gKwkJLyogTXVzdCB0cnkgYXQgbGVhc3QgMyB0aW1lcyBh
Y2NvcmRpbmcgdG8gRFAgc3BlYyAqLw0KPiA+ICsJCWZvciAodHJ5ID0gMDsgdHJ5IDwgNTsgdHJ5
KyspIHsNCj4gSXQgc2VlbXMgdGhhdCB3ZSB0cnkgNSB0aW1lcyBoZXJlLiBXYXMgdGhpcyBpbnRl
bnRpb24gb3Iga2VlcCB0cmllcyBpbiAzIGFzDQo+IGNvbW1pdCBtZXNzYWdlL2NvbW1lbnQgd291
bGQgc3VnZ2VzdD8NCj4gDQpXaWxsIGNoYW5nZSB0aGUgY29tbWVudC4gQXMgcGVyIHRoZSBzcGVj
IHllcyBpdHMgMyB0aW1lcywgYnV0IHdpdGggc29mdHdhcmUgb3ZlcmhlYWQgd2UgaGF2ZSBiZWVu
IHRyeWluZyB0aGlzIHJldHJ5IGZvciA1IHRpbWVzLg0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpB
cnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAtTWlrYS0NCj4gPiArCQkJdTMy
IHNlbmRfY3RsID0gaW50ZWxfZHAtPmdldF9hdXhfc2VuZF9jdGwoaW50ZWxfZHAsDQo+ID4gIAkJ
CQkJCQkgIHNlbmRfYnl0ZXMsDQo+ID4gIAkJCQkJCQkgIGF1eF9jbG9ja19kaXZpZGVyKTsNCj4g
Pg0KPiA+IC0JCXNlbmRfY3RsIHw9IGF1eF9zZW5kX2N0bF9mbGFnczsNCj4gPiArCQkJc2VuZF9j
dGwgfD0gYXV4X3NlbmRfY3RsX2ZsYWdzOw0KPiA+ICsNCj4gPiArCQkJLyogVHJ5IHRvIHdhaXQg
Zm9yIGFueSBwcmV2aW91cyBBVVggY2hhbm5lbCBhY3Rpdml0eQ0KPiAqLw0KPiA+ICsJCQkvKiBU
T0RPOiBpZiB0eXBlQyB0aGVuIDQuMm1zIGVsc2UgODAwdXMuIEZvciBERzINCj4gYWRkIDEuNW1z
IGZvciBib3RoIGNhc2VzICovDQo+ID4gKwkJCXJldCA9IGludGVsX2RwX2F1eF93YWl0X2RvbmUo
aW50ZWxfZHAsICZzdGF0dXMpOw0KPiA+ICsJCQkvKiBqdXN0IHRyYWNlIHRoZSBmaW5hbCB2YWx1
ZSAqLw0KPiA+ICsJCQl0cmFjZV9pOTE1X3JlZ19ydyhmYWxzZSwgY2hfY3RsLCBzdGF0dXMsIHNp
emVvZihzdGF0dXMpLA0KPiB0cnVlKTsNCj4gPiArDQo+ID4gKwkJCS8qIE9uIHRpbWVvdXQgZG9u
dCByZWFkIHRoZSBzdGF0dXMgYml0cyBhcyBpdHMgbm90DQo+IHVwZGF0ZWQgKi8NCj4gPiArCQkJ
aWYgKHJldCA9PSAtRVRJTUVET1VUKSB7DQo+ID4gKwkJCQlkcm1fV0FSTigmaTkxNS0+ZHJtLCAx
LA0KPiA+ICsJCQkJCSAiJXM6IG5vdCBzdGFydGVkLCBwcmV2aW91cyBUeCBzdGlsbCBpbg0KPiBw
cm9jZXNzIChzdGF0dXMgMHglMDh4KVxuIiwNCj4gPiArCQkJCQkgaW50ZWxfZHAtPmF1eC5uYW1l
LCBzdGF0dXMpOw0KPiA+ICsJCQkJaWYgKHRyeSA+IDMpDQo+ID4gKwkJCQkJZ290byBvdXQ7DQo+
ID4gKwkJCQllbHNlDQo+ID4gKwkJCQkJY29udGludWU7DQo+ID4gKwkJCX0NCj4gPg0KPiA+IC0J
CS8qIE11c3QgdHJ5IGF0IGxlYXN0IDMgdGltZXMgYWNjb3JkaW5nIHRvIERQIHNwZWMgKi8NCj4g
PiAtCQlmb3IgKHRyeSA9IDA7IHRyeSA8IDU7IHRyeSsrKSB7DQo+ID4gIAkJCS8qIExvYWQgdGhl
IHNlbmQgZGF0YSBpbnRvIHRoZSBhdXggY2hhbm5lbCBkYXRhDQo+IHJlZ2lzdGVycyAqLw0KPiA+
ICAJCQlmb3IgKGkgPSAwOyBpIDwgc2VuZF9ieXRlczsgaSArPSA0KQ0KPiA+ICAJCQkJaW50ZWxf
ZGVfd3JpdGUoaTkxNSwgY2hfZGF0YVtpID4+IDJdLCBAQCAtDQo+IDMyMCw4ICszMDksMTUgQEAN
Cj4gPiBpbnRlbF9kcF9hdXhfeGZlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+DQo+
ID4gIAkJCS8qIFNlbmQgdGhlIGNvbW1hbmQgYW5kIHdhaXQgZm9yIGl0IHRvIGNvbXBsZXRlICov
DQo+ID4gIAkJCWludGVsX2RlX3dyaXRlKGk5MTUsIGNoX2N0bCwgc2VuZF9jdGwpOw0KPiA+ICsJ
CQlpbnRlbF9kZV9ybXcoaTkxNSwgY2hfY3RsLA0KPiBEUF9BVVhfQ0hfQ1RMX0lOVEVSUlVQVCB8
DQo+ID4gKwkJCQkgICAgIERQX0FVWF9DSF9DVExfVElNRV9PVVRfRVJST1IgfA0KPiA+ICsJCQkJ
ICAgICBEUF9BVVhfQ0hfQ1RMX1JFQ0VJVkVfRVJST1IsIDApOw0KPiA+DQo+ID4gLQkJCXN0YXR1
cyA9IGludGVsX2RwX2F1eF93YWl0X2RvbmUoaW50ZWxfZHApOw0KPiA+ICsJCQlyZXQgPSBpbnRl
bF9kcF9hdXhfd2FpdF9kb25lKGludGVsX2RwLCAmc3RhdHVzKTsNCj4gPiArDQo+ID4gKwkJCS8q
IE9uIHRpbWVvdXQgZG9udCByZWFkIHRoZSBzdGF0dXMgYml0cyBhcyBpdHMgbm90DQo+IHVwZGF0
ZWQgKi8NCj4gPiArCQkJaWYgKHJldCA9PSAtRVRJTUVET1VUKQ0KPiA+ICsJCQkJY29udGludWU7
DQo+ID4NCj4gPiAgCQkJLyogQ2xlYXIgZG9uZSBzdGF0dXMgYW5kIGFueSBlcnJvcnMgKi8NCj4g
PiAgCQkJaW50ZWxfZGVfd3JpdGUoaTkxNSwgY2hfY3RsLA0KPiA+IC0tDQo+ID4gMi4yNS4xDQoN
Cg==
