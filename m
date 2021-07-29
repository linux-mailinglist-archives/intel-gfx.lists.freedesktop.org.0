Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BCA3DAFE9
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 01:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A8E6E06E;
	Thu, 29 Jul 2021 23:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 996D56E06E
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 23:36:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="200207141"
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="200207141"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 16:36:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,280,1620716400"; d="scan'208";a="499442877"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 29 Jul 2021 16:36:58 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 16:36:58 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 16:36:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 29 Jul 2021 16:36:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 29 Jul 2021 16:36:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XaquTihuETkRWPnZ8XX4LNVjpwRrTNM0H6W9rkFc08A4v7FIp42PhLECprQsdBY0+efATFjcfI8L9sF4muMcQEiQXJPgmm0/CvOI6DBHzcgZW+xNgm8ir60llHHuFg9fqb0sC0pj/kTVM6/Wk6jiQull++Li4P3CTKWicAoPo92p5JPeTyLNnfiaFcPMOvQl5/DqdSGD22c5+2HosX8BturRoQ6Om1Ea34Tj3HyFTIc1hYqsVVchZwkCt3jJstczhi76VBL7RnrjNpXYIgOV9sbpU+RF/YOFTxNl/KlVJYcACXLzUn4Y39+WR94mD5FzrYKhINoyyD3eWvR156SwKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VFCk2gTdZGjeN/enskhLA4gmuSXhM3efmWvDAgnviC0=;
 b=dtRBHxbviRVAEZ6McZgYTQWafdOoj+Fpp08f1j31Fmr9P3bJB1Uw7B452g2N1W7PDuVmp/326Ic4zl3MEFEaH7Xdkqnguu4ON9nRpPryoptOrbAJmMt24y9XKlR4K1iTC1+OnWavp9G9ds++gXFtVVs5Cm5XgY/OkgKA/tMloRCMvi6ZcBbiOI127ciYJuv716LQW5nb50lqwolN71OQsaCAWT7WLiANr9s9dHSUzjXfgjU4Nv0Uijmm7y3FNs6a7l+M09d+0c3CEPyWeIlXIKUVpwtNa4jq0CYTYtkJTp1kSk7NLM7MQvXNDQFjJwmSZy+eDbtyBNiDUg8Aw0qAKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VFCk2gTdZGjeN/enskhLA4gmuSXhM3efmWvDAgnviC0=;
 b=TFSdzM8v2yl65HXGq6w2yfSX7VfVGfqdWKoRnh2121RWMVUAePogGcA09rpWWs032WtCPlqBbtI4T2PZHihRC/7/xSYBVm6FItomNjXaQjwy/Z7alohijN06FxLYZexyt8AEm/nCaIwnpSXVkTNpf13zJSXpvBj+IA37NUPQqFE=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by BL0PR11MB3092.namprd11.prod.outlook.com (2603:10b6:208:7d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.29; Thu, 29 Jul
 2021 23:36:56 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044%5]) with mapi id 15.20.4352.033; Thu, 29 Jul 2021
 23:36:56 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/6] drm/i915/xehp: Xe_HP shadowed registers
 are a strict superset of gen12
Thread-Index: AQHXhDxz13dJS0MosEaiMPYXfqo6catanMAA
Date: Thu, 29 Jul 2021 23:36:55 +0000
Message-ID: <efb403e90b16ccf689bb636db9029985042d7540.camel@intel.com>
References: <20210729054118.2458523-1-matthew.d.roper@intel.com>
 <20210729054118.2458523-7-matthew.d.roper@intel.com>
In-Reply-To: <20210729054118.2458523-7-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4855acc9-b081-42a8-4a3f-08d952e9c081
x-ms-traffictypediagnostic: BL0PR11MB3092:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB3092F66AC23B6838A66428719FEB9@BL0PR11MB3092.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y6T7buIndkuHCWJzswhQdxr6B/7y0234S/C6N1geWh/5E0UTxnUSFUu2wmO/Il0rPkk7WRxibdXfo+fY/Ib33BxG3x0MzPxsU7YG8n/IHmWJI7R2gbO9P2Epv55PmCXgdSCBs0xc1x+gno1y0HRjSIr5QsKJgLbQ0tq1DtpFdxEuklxjtP3b6o7ZILBHYss3EdaeheCbv/xNFV+csRs4eWIAfgd7wTQyWrIQ98rSUircrC7uWeWW8Vlb9BllWUGu7LAroGaHhbvXDiMcmQDQLaOIB6kP3191hUsnHRom/4cRADEcBefe+lFQ6/VWnYRrPI7ZTj7JRb4Y1WcDrN55MTJjcZQidHXclP6A4XcNeG9sSmyLOCRTNyu+J9bMYMLXkPnwoOgqfw6gtr79PjinkKI6ZKhi5/4JX8h1jLN9iswe/k3YpV/7u7H8TSBztB6EuUbuTkoHOXezw0522iUAOm+uNdrMKFcjIC+BgXCHuwjOk6taUkJY18jJilV9obtj6+F01EQiU9J69Fb9SQq0UlYpxahswxso72aevvlZe8Cb2oui2Et1ED299Cic92DoNvm7ppAWoQmZwKX1B4UZjqHyTBRx267DS1L272UlqxH42+1aPRnBWsYUhIqlT7zz0VQqLe6NaGQeSO5St7EHEfJEtfJ23J7nizjugVT8oa+pfPO747E+5FMcl/fqmfKbATWqImDfhnwlu9EisRfY5g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(76116006)(71200400001)(64756008)(38070700005)(66446008)(66946007)(91956017)(6486002)(66476007)(6512007)(83380400001)(66556008)(86362001)(5660300002)(6506007)(26005)(38100700002)(316002)(110136005)(186003)(122000001)(36756003)(2906002)(2616005)(478600001)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RHNmdTloNDMwYnZDYUhnZWpXaE1RZzlrR1VzeC83SEp6YjhROEoyTWQ2eTVX?=
 =?utf-8?B?TDVrVkVwSXJuQ2JUdWFvdVhWS1Q1dmVVYnExMi9WdmVhdmFpVkZLbkJ0ZTVY?=
 =?utf-8?B?MHB3bFFJdVA3bjRjQWtLaU1uUTVjM2YzMWpqM0UxdFlHRVRJb1ZZU0F2REhI?=
 =?utf-8?B?UGtsSmhMU3dkMHM1RUdvVUtBYmpiTXVMemFROFVERE53a2NnczNSTzNFVzV1?=
 =?utf-8?B?Sm00RDVFZ1BQSWZmbzVONnFSWWpIQW93RzZWTmhmVnI0LytOMGZnMXUvNExJ?=
 =?utf-8?B?aFBFRnZIbXdhVDZIOTdObmEwRUp5MmR4UUZtWHR2SlFweXNnalBnZXJ2VUo0?=
 =?utf-8?B?NklUaWNFL291MURQVEtQK0Erbm1PYlhwRkN4OWRQbFJ3bWlva3htcFVhWDZ6?=
 =?utf-8?B?dUlzbEh3TWh0WFFPT2ZMZlZIdjBFY25JVCtLNGVFSjJEWUlUY3FYczIyN0tq?=
 =?utf-8?B?NWVWbFV4NU9sUStESXVIbGNRUDN1R05YSXk5cU5aSHV1MFpuaDdZS1VKZWxH?=
 =?utf-8?B?ZCtzVU0yRHR3cFViaEw5Q3l1OEVibDJ0VHF6bk8zMjRXVjJhVW1HL2RVVUp3?=
 =?utf-8?B?cWt2TEFaSGpTZ1oyWUsycFNkYUw0bXdmNGdPT2plZHFtNlpQaFNoMG1oSGN3?=
 =?utf-8?B?bFlEd1REbWtnYlhZWHJUUUYwMTV0QkdGTVY0TG1TU2EwcklYQmpRaHZtckpx?=
 =?utf-8?B?QWptd0tteVpEOHliZXo0aWJNcGhRQ0FmK2lEUENCSE9qV25qdUlaQUZTTWpz?=
 =?utf-8?B?Mm5qOVc1RHlzWFMvUDQyQVFMajR6SEhBZDA4V1NWeHZDc0k2OFRTcFA0bUh5?=
 =?utf-8?B?eWoxWGdmdTY2dG41c0hhcjNZWWhnZDF0dkhBYitTenFYUnBDZ0V4eGVtZGJB?=
 =?utf-8?B?dHVQcFQzNXhXTGJSamhDTCtkZDdMSXVrYWQxT2FyQXFFbi9mSi9Pclc3eWJ5?=
 =?utf-8?B?WTZ2UjZ6N0ZzS2xLbU9yblpsdjBRbXFrWjYyc0MxVU1Oa293emNYYTFDY0R1?=
 =?utf-8?B?dldLbWVwWjBqY1hPZWZzWk84VkpxVzVabXhaaFR4eklodFJCcXRBSzVtejI4?=
 =?utf-8?B?SW9zSDRaYk9HbE4rVGhvWEx5aGZpaUljcXRIdW5SbGYvbitWWXhOZ1NmZGpw?=
 =?utf-8?B?VkdrOWVtWm1PK1VENXVaU040Z00zaUV5em1MWjNaM0JHcjZJOFFvWFlScDhT?=
 =?utf-8?B?NytJUndzMnFVTlhtSXVvbW9FTFZVSG9kTzlzWHlPeGs1V2VwM2FNZlZWVVhO?=
 =?utf-8?B?QkUvM2c0YmkzMlROS3VZK01wR0w5MDB5eHhoUEJWVXYySStaN0hJL05USVlY?=
 =?utf-8?B?elRRRjZ1MUtjWjZyMGFYNEp3WU8vMVU2TWVKWW5LcG1kZzJkSU82WXZKL2ZB?=
 =?utf-8?B?bVhlUFZleVg3OS9uRTUwS1dJUWNBZ3ljbUd0K0gvck4xOTQzMlU5NUJiRSt6?=
 =?utf-8?B?ZnhnekVjb1Q3aTQ3UTlqR1lXV0xQd1JERkMxalZsRGpIUGxuSW15SWpGTC9j?=
 =?utf-8?B?S1UwUklXK3E0Q3pzeHRnY3FJL2NtNk9veHJYV3BLS2RRRTQxbXhOd1dBZWRI?=
 =?utf-8?B?VHBmMG5kcHlTcFh2ZmUvbEhqYkxZb0w1K0xMTmQ4NDc0U1Z1a0l6WFFyOFNv?=
 =?utf-8?B?S1FWVlJXUEF3TkZPNHlZaGRqc3FFNGQ0a1VZYjFuUTBFeUNLbnBiYStaQzR6?=
 =?utf-8?B?SWdnSW85eC80K3dEdWpOZkF3TVdleE40dC9oQ2J0a1c4UHZSQy9RWTRoSkJ6?=
 =?utf-8?Q?8D6lSS1uqHdQp+GqCCni0G8xUiTzErwzGcGyf2f?=
Content-ID: <A218A1A945AC3648AD2D5C09182AFB75@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4855acc9-b081-42a8-4a3f-08d952e9c081
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2021 23:36:55.9256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wcAnwXZ2+fuU6clp6t7bBKbWYaa+qTC89fMeZCx4Z68R625bm33VaVYDkz/xITvAUDWHjPT3870zRQnTXXlVTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3092
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/xehp: Xe_HP shadowed registers
 are a strict superset of gen12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: az Yokoyama <caz.yokoyama@intel.com>
-caz

On Wed, 2021-07-28 at 22:41 -0700, Matt Roper wrote:
> The list of shadowed registers on XeHP is identical to the set for
> earlier gen12 platforms, with additional ranges added for the new VCS
> and VECS engines.  Since those register ranges were reserved on
> earlier
> gen12 platforms, it's safe to consolidate to a single gen12 table
> rather than tracking Xe_HP separately.
> 
> Bspec: 52077
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c           | 50 +++++----------
> ----
>  drivers/gpu/drm/i915/selftests/intel_uncore.c |  1 -
>  2 files changed, 12 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> b/drivers/gpu/drm/i915/intel_uncore.c
> index 42acf106a6df..4abe9df5fb76 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1006,39 +1006,24 @@ static const struct i915_range
> gen12_shadowed_regs[] = {
>  	{ .start = 0x1D4510, .end = 0x1D4550 },
>  	{ .start = 0x1D8030, .end = 0x1D8030 },
>  	{ .start = 0x1D8510, .end = 0x1D8550 },
> -};
>  
> -static const struct i915_range xehp_shadowed_regs[] = {
> -	{ .start =   0x2000, .end =   0x2030 },
> -	{ .start =   0x2550, .end =   0x2550 },
> -	{ .start =   0xA008, .end =   0xA00C },
> -	{ .start =  0x22030, .end =  0x22030 },
> -	{ .start =  0x22550, .end =  0x22550 },
> -	{ .start = 0x1C0030, .end = 0x1C0030 },
> -	{ .start = 0x1C0550, .end = 0x1C0550 },
> -	{ .start = 0x1C4030, .end = 0x1C4030 },
> -	{ .start = 0x1C4550, .end = 0x1C4550 },
> -	{ .start = 0x1C8030, .end = 0x1C8030 },
> -	{ .start = 0x1C8550, .end = 0x1C8550 },
> -	{ .start = 0x1D0030, .end = 0x1D0030 },
> -	{ .start = 0x1D0550, .end = 0x1D0550 },
> -	{ .start = 0x1D4030, .end = 0x1D4030 },
> -	{ .start = 0x1D4550, .end = 0x1D4550 },
> -	{ .start = 0x1D8030, .end = 0x1D8030 },
> -	{ .start = 0x1D8550, .end = 0x1D8550 },
> +	/*
> +	 * The rest of these ranges are specific to Xe_HP and beyond,
> but
> +	 * are reserved/unused ranges on earlier gen12 platforms, so
> they can
> +	 * be safely added to the gen12 table.
> +	 */
>  	{ .start = 0x1E0030, .end = 0x1E0030 },
> -	{ .start = 0x1E0550, .end = 0x1E0550 },
> +	{ .start = 0x1E0510, .end = 0x1E0550 },
>  	{ .start = 0x1E4030, .end = 0x1E4030 },
> -	{ .start = 0x1E4550, .end = 0x1E4550 },
> +	{ .start = 0x1E4510, .end = 0x1E4550 },
>  	{ .start = 0x1E8030, .end = 0x1E8030 },
> -	{ .start = 0x1E8550, .end = 0x1E8550 },
> +	{ .start = 0x1E8510, .end = 0x1E8550 },
>  	{ .start = 0x1F0030, .end = 0x1F0030 },
> -	{ .start = 0x1F0550, .end = 0x1F0550 },
> +	{ .start = 0x1F0510, .end = 0x1F0550 },
>  	{ .start = 0x1F4030, .end = 0x1F4030 },
> -	{ .start = 0x1F4550, .end = 0x1F4550 },
> +	{ .start = 0x1F4510, .end = 0x1F4550 },
>  	{ .start = 0x1F8030, .end = 0x1F8030 },
> -	{ .start = 0x1F8550, .end = 0x1F8550 },
> -	/* TODO: Other registers are not yet used */
> +	{ .start = 0x1F8510, .end = 0x1F8550 },
>  };
>  
>  static int mmio_range_cmp(u32 key, const struct i915_range *range)
> @@ -1062,7 +1047,6 @@ static bool is_##x##_shadowed(u32 offset) \
>  __is_X_shadowed(gen8)
>  __is_X_shadowed(gen11)
>  __is_X_shadowed(gen12)
> -__is_X_shadowed(xehp)
>  
>  static enum forcewake_domains
>  gen6_reg_write_fw_domains(struct intel_uncore *uncore, i915_reg_t
> reg)
> @@ -1126,15 +1110,6 @@ static const struct intel_forcewake_range
> __chv_fw_ranges[] = {
>  	__fwd; \
>  })
>  
> -#define __xehp_fwtable_reg_write_fw_domains(uncore, offset) \
> -({ \
> -	enum forcewake_domains __fwd = 0; \
> -	const u32 __offset = (offset); \
> -	if (!is_xehp_shadowed(__offset)) \
> -		__fwd = find_fw_domain(uncore, __offset); \
> -	__fwd; \
> -})
> -
>  /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
>  static const struct intel_forcewake_range __gen9_fw_ranges[] = {
>  	GEN_FW_RANGE(0x0, 0xaff, FORCEWAKE_GT),
> @@ -1710,7 +1685,6 @@ __gen_write(func, 8) \
>  __gen_write(func, 16) \
>  __gen_write(func, 32)
>  
> -__gen_reg_write_funcs(xehp_fwtable);
>  __gen_reg_write_funcs(gen12_fwtable);
>  __gen_reg_write_funcs(gen11_fwtable);
>  __gen_reg_write_funcs(fwtable);
> @@ -2087,7 +2061,7 @@ static int uncore_forcewake_init(struct
> intel_uncore *uncore)
>  
>  	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __xehp_fw_ranges);
> -		ASSIGN_WRITE_MMIO_VFUNCS(uncore, xehp_fwtable);
> +		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
>  		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
>  	} else if (GRAPHICS_VER(i915) >= 12) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen12_fw_ranges);
> diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> index d3e36ed32646..63b75585865f 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> @@ -68,7 +68,6 @@ static int intel_shadow_table_check(void)
>  		{ gen8_shadowed_regs, ARRAY_SIZE(gen8_shadowed_regs) },
>  		{ gen11_shadowed_regs, ARRAY_SIZE(gen11_shadowed_regs)
> },
>  		{ gen12_shadowed_regs, ARRAY_SIZE(gen12_shadowed_regs)
> },
> -		{ xehp_shadowed_regs, ARRAY_SIZE(xehp_shadowed_regs) },
>  	};
>  	const struct i915_range *range;
>  	unsigned int i, j;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
