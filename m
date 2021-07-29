Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5E33DAE92
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 23:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9474F6EE7E;
	Thu, 29 Jul 2021 21:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B5E6EE7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 21:55:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="209872284"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="209872284"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:55:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="666814562"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 29 Jul 2021 14:55:19 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 14:55:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 29 Jul 2021 14:55:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 29 Jul 2021 14:55:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d206LvWpzeq8DlKb6MEYLhsVfW5+UEsdOAQoYZEUEA+0XgPpq/r+bFZgFCfQVZnKGWz56Zt97+exFWmagkY6Tfe3C0K5MHt5mD7RbPEZFWg475+8MmBPOf1b82QD/NQOM0WiC/+KMq7sgUAoAzDfUF1qX8Mr3StO+IzWutdyR84KM4BaZFguEFcsxpFHOdy8f9b2iGSKrvzhgbbRioka6jWmFcZaAptTL5uiUtqf0rJmjhu7ogEUcS4J3TSXzZj+2Rq9NrG73rShWoEFIumRQ3bbXc+OfgzbIsGl3VHCyWWtMWwTxW+iXSr8G0j7sY2g4GwYcJvGOCSEjT5KOJSHsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l26gwTQki5wzF4uSRzg6fjzYW8eDv7QSQPSBSjXywLM=;
 b=jTj8cWuAYFy5cRcHdrYb9lnH6HHJLG/38UBSoAYR6s/X1UQ4Tdu0vVuYUu7dGJCd6WB6UDiNNq7nGmAF/chJ6h4iaMOu8oDyhxGVjqHyYACBvQIxurTOTJvx6MUEGq3hqm7rellAy1ig7fcEgXVeIS95+rvoNjdgaFts6RdB3WY3KaoS9aj10fKxMlCk0bjd8Ze2SqpvutzbCU2+oNEbC7gmyPTT/2pCVuBs/xjyrsyPN434vmhbDdC+aDm5txILIbJq+nrdA4JwSLJzuK+VEHHzBs6g3RarDTSwL1P7fxuqYnGKSy0UuLAHJc4nWgUhSiSvghhH3S5rnKf4ZEajfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l26gwTQki5wzF4uSRzg6fjzYW8eDv7QSQPSBSjXywLM=;
 b=tBv+zVlkk93RpN8yJrzz17cqn31zHOyP3mKiHhmNBJWFOiG7WQ2iZofZrENkgAV6eaCHtRP4GJuPcY6kb8l/vaPf1HbpDEXVaQci5ZRiMFkXtcJhi5ums/twEboCMWtDSv/ixyS5Eq/AAHuc0jwsSwm2my7Kd4tzMdmKkX27n34=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by MN2PR11MB4366.namprd11.prod.outlook.com (2603:10b6:208:190::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.19; Thu, 29 Jul
 2021 21:55:17 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044%5]) with mapi id 15.20.4352.033; Thu, 29 Jul 2021
 21:55:17 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/6] drm/i915: Make shadow tables
 range-based
Thread-Index: AQHXhI2kyybuxrbHtkG1/vDDuzZEM6taf7eA
Date: Thu, 29 Jul 2021 21:55:17 +0000
Message-ID: <c658dc81d234511b6ec194784b9322b1da3b5639.camel@intel.com>
References: <20210729054118.2458523-4-matthew.d.roper@intel.com>
 <20210729152158.2646246-1-matthew.d.roper@intel.com>
In-Reply-To: <20210729152158.2646246-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4815c104-b836-48a3-f86d-08d952db8d8c
x-ms-traffictypediagnostic: MN2PR11MB4366:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB43669F60BC5FB673426EB5A39FEB9@MN2PR11MB4366.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KcQfI0bCaCYIGl3eTeHAAL/J6m1W2STVvCJaObG5D9kMC+4qGWjHWjFBeOgDsQ+fx9ljopXtY6XJUebwYDuZZrKrgJ5hkkQJPNa2i7VsC9EgSFNJzFK4pGJCxnHMPMyy6dQVwd2RoegREL1koA/UBxim4UagcjV0odJ2fPV25DbOQS0VRCumNzCvVEmINQxm0DMzkeS0K/nZBtMQYnmhBVcD6OGaRgEWDljR+msXUK5xc4oht7jFmPK61n+smugq1EEIbn6KUJfUZSURN0YM67k5sp6vjJoMmvGsS1ZPy0/cRy3AgqQ4TCp/0BxVShmFu4xmekO3K9TGAjtmVz15UTQ2nAdCx1GrCd1Xd//759C0yQf8G1n7EDWYHHYRLsPbDXhWs+mIi6a9wdYabqudlJUCJLadpm1pdycpea4ZbZnRrWb1RDTlwd64dPp5BpSSoFf2f3beJQhZZi7UVlIVnSjgBS+Er4LV0fuVKXp2TifO7fyKDrLqUUs0FVqGiFFJap2griJojC5NeoPRDwZzZRrkrKQYbRW+NWnMP/AAtl4HM1BdgmBJY9qpcrMjIT1JqRDGin6CvBfpKqGGEUKoaRGIvr4ui30L1YYSsu9Ek/RokA5bI1SR4OQf9A/AeiF1FYEJmLQ7l7k10EwwC4yFoUPY29+KeV4TKRVWqESHOsUaUsmQrhcnLmo7IuTKI8zPqje9EomUhqzj+w5ZIMDC+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(136003)(346002)(366004)(396003)(36756003)(2906002)(6506007)(186003)(478600001)(76116006)(8676002)(8936002)(26005)(316002)(83380400001)(110136005)(2616005)(64756008)(30864003)(91956017)(122000001)(66946007)(38100700002)(5660300002)(66446008)(38070700005)(66476007)(66556008)(71200400001)(6486002)(6512007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEJzb0FlL2kyVFBxaEZMcjNSSElhQ0RMQUxjVngyS1g3aXFDY29QYkRDbWhR?=
 =?utf-8?B?REZUWUd1enFvOGEzSkFqdUEwd29QMjNnUVFITVdUZmlrKzVTdGc5aDZFdisw?=
 =?utf-8?B?YWZsM2YweFZ1TWZ0NytkckFOelVsSCtOaTBxdWxiRi9lQnpRcHdqUEFKMHg2?=
 =?utf-8?B?UndVbklnZEJ4dzVKcWFyTklqajBlVE5rQmt1TXhIQzJUMmpyS0dzL2tnbzZp?=
 =?utf-8?B?MlR0WnRCM1gzSHdHNHFzcTRpSjRDWjd2SWlEQTZSV2drMmRsQ0R2MVJrQlFS?=
 =?utf-8?B?azMvRGVCMzg2MWRxNnFvZVdBK2xtc0pSWGFRL3k2ZzUxbEFFS3VONW5EUUtT?=
 =?utf-8?B?UFY4ZFJmSGZ6VEtxcDhtQzRvNTJVRWREQ2N3MHJVUXBJWnM2UHNHOS93MmRk?=
 =?utf-8?B?bTVNeFFrOWx5MmVMY2dYMytCMDIvbGtBQ3VjZ1dqRTJsRFNSbGRMdVZ3bG1H?=
 =?utf-8?B?TjgxMEZZL0NFeUtuSW0ySHdLTjE2UDFBU3lPbjFjYmhTVFZzNlhEWkRoZ3lR?=
 =?utf-8?B?bldnZHFnTXdhQ29FVkpQd2RYUGV0NHRVU3l6dUlKUDdZN1IzdXlhSzJzUUpQ?=
 =?utf-8?B?TFRzTjlGR2NPbWlDbktxYm05WGM1OUc3SXlZemdUWnJCRFNqTkVxQTRiejR6?=
 =?utf-8?B?SG5XZzZGOWRyaWtwd3l1RGdsc1BacUVLbmpXVzlQdXdxMjRWdzlzOEEzZXNn?=
 =?utf-8?B?M2FERHlFY2xqdVg3TzVaSmF2azJ1azNOV3NETDZFcFFzR2htU21SK0gwNEZD?=
 =?utf-8?B?UzZady9Ebzc2aU5BZE1YRzlvZkFTOXNBaGE0ak82TVRRaWtsT21ldUZsNi9L?=
 =?utf-8?B?MDJYaW1Nb0RDb3BNVVJFWjd6Y3NDRllnVzZyNFhjVm84QmdISGl5dTh5VUVD?=
 =?utf-8?B?THlrbk05VHkvL2QvWUNFVlJtS3hob284ajFCTHdEWWh2NE01SVIzc0NrZXF3?=
 =?utf-8?B?anQ1UmRoTHRQc1hvckY0cXlDV3ZBN3ZBV2QwWng5SWtRYmhkSWRLTEpiZW5O?=
 =?utf-8?B?S2Z0YUJrR2pWNXJobWZMRVdSYkVJQ0xuZDlBNStUVFlkcS83Yk9tL0NSZzlU?=
 =?utf-8?B?eVYrMVh6Y2c2MkdtSWZqMjVLT0dqV29RbHZockRSVCt1bFM5aXI5V2JFTkVW?=
 =?utf-8?B?WVBvM3hDcE55dzhENGxIVlRsMGhNUi9vVUFRbVkvdUF4TTM2ZGtLU0lKaFVx?=
 =?utf-8?B?V3lXNkxCajlWWHIrbnlTYmJpM3R2UzZxYm1BTGRCemx1cUNUb0NYWmRjRFRr?=
 =?utf-8?B?OFlIN3hXeXNJT1J6WnhFZGRxVFNSUnJMSUtXQ0NJVGg1RlVyMjcrMVFWb2dZ?=
 =?utf-8?B?L0lDOWE2VUcrYWhVMWRHeUFjSWlHZHY3OEN0MXkxOUNqNzJPZllmZC9nTHc2?=
 =?utf-8?B?Uklza2VpU3diMjVUMlZIRi9ySVVIcG01aHl5M1M1NE1ETDdOcFFwc1VtbTlX?=
 =?utf-8?B?ZXltVHZ2Z21FSW9raFZZY295OVg0SVIweVMzM3ErRjVkODJSYkhONjhXakts?=
 =?utf-8?B?NlA5Vkw2NG1tbS9XOFQ3aFdITkEyclNJd0gvL1hoRmM0V05KczNHUXNaR1p0?=
 =?utf-8?B?MDdKbHVXaUZjbENXU2t6NFFaN2pGQnlsQW41NmR0Q1QxNTR3SUQ1aXBDN1RQ?=
 =?utf-8?B?dXRsVjVmVzYyczQzcW9qVHhBL25aamppWEpUMnhkek1jLy9raFpBY3gxbmNX?=
 =?utf-8?B?Vkw0eVZuTCthRExrRFdIa1hvbzZCK1V4Nk9Ra1l2MkErdElablhMTENlWVBx?=
 =?utf-8?Q?YldDFDZqHaIRiyzv4yEPAj6Sypv/p66XlOMMual?=
Content-ID: <DE4CC2CB72C85A40B98202A4A8A0DB5F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4815c104-b836-48a3-f86d-08d952db8d8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2021 21:55:17.4343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ir+Hahq8gz8+TPrSfU0ln7vgPlCEhbXM12Nyu7AoRUzoFPKxejqq3SaOKv5JoWtUZMtzQeB+pURewQJmcxXhWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4366
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915: Make shadow tables
 range-based
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

On Thu, 2021-07-29 at 08:21 -0700, Matt Roper wrote:
> Rather than defining our shadow tables as a list of individual
> registers, provide them as a list of register ranges; we'll have some
> ranges of multiple registers being added soon (and we already have a
> couple adjacent registers that we can squash into a single range
> now).
> 
> This change also defines the table with hex literal values rather
> than
> symbolic register names; since that's how the tables are defined in
> the
> bspec, this change will make it easier to review the tables overall.
> 
> v2:
>  - Force signed comparison on range overlap sanity check
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  13 +-
>  drivers/gpu/drm/i915/intel_uncore.c           | 160 +++++++++-------
> --
>  drivers/gpu/drm/i915/intel_uncore.h           |   6 +
>  drivers/gpu/drm/i915/selftests/intel_uncore.c |  32 ++--
>  4 files changed, 108 insertions(+), 103 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9173df59821a..7558414bafb2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1963,12 +1963,7 @@ void intel_engine_apply_workarounds(struct
> intel_engine_cs *engine)
>  	wa_list_apply(engine->gt, &engine->wa_list);
>  }
>  
> -struct mcr_range {
> -	u32 start;
> -	u32 end;
> -};
> -
> -static const struct mcr_range mcr_ranges_gen8[] = {
> +static const struct i915_range mcr_ranges_gen8[] = {
>  	{ .start = 0x5500, .end = 0x55ff },
>  	{ .start = 0x7000, .end = 0x7fff },
>  	{ .start = 0x9400, .end = 0x97ff },
> @@ -1977,7 +1972,7 @@ static const struct mcr_range mcr_ranges_gen8[]
> = {
>  	{},
>  };
>  
> -static const struct mcr_range mcr_ranges_gen12[] = {
> +static const struct i915_range mcr_ranges_gen12[] = {
>  	{ .start =  0x8150, .end =  0x815f },
>  	{ .start =  0x9520, .end =  0x955f },
>  	{ .start =  0xb100, .end =  0xb3ff },
> @@ -1986,7 +1981,7 @@ static const struct mcr_range
> mcr_ranges_gen12[] = {
>  	{},
>  };
>  
> -static const struct mcr_range mcr_ranges_xehp[] = {
> +static const struct i915_range mcr_ranges_xehp[] = {
>  	{ .start =  0x4000, .end =  0x4aff },
>  	{ .start =  0x5200, .end =  0x52ff },
>  	{ .start =  0x5400, .end =  0x7fff },
> @@ -2004,7 +1999,7 @@ static const struct mcr_range mcr_ranges_xehp[]
> = {
>  
>  static bool mcr_range(struct drm_i915_private *i915, u32 offset)
>  {
> -	const struct mcr_range *mcr_ranges;
> +	const struct i915_range *mcr_ranges;
>  	int i;
>  
>  	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> b/drivers/gpu/drm/i915/intel_uncore.c
> index ea910f7ee635..2cfbc16f7dee 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -946,101 +946,95 @@ static const struct intel_forcewake_range
> __vlv_fw_ranges[] = {
>  	find_fw_domain(uncore, offset)
>  
>  /* *Must* be sorted by offset! See intel_shadow_table_check(). */
> -static const i915_reg_t gen8_shadowed_regs[] = {
> -	RING_TAIL(RENDER_RING_BASE),	/* 0x2000 (base) */
> -	GEN6_RPNSWREQ,			/* 0xA008 *
> -	GEN6_RC_VIDEO_FREQ,		/* 0xA00C */
> -	RING_TAIL(GEN6_BSD_RING_BASE),	/* 0x12000 (base) */
> -	RING_TAIL(VEBOX_RING_BASE),	/* 0x1a000 (base) */
> -	RING_TAIL(BLT_RING_BASE),	/* 0x22000 (base) */
> +static const struct i915_range gen8_shadowed_regs[] = {
> +	{ .start =  0x2030, .end =  0x2030 },
> +	{ .start =  0xA008, .end =  0xA00C },
> +	{ .start = 0x12030, .end = 0x12030 },
> +	{ .start = 0x1a030, .end = 0x1a030 },
> +	{ .start = 0x22030, .end = 0x22030 },
You are replacing macro defined values by literal values. These macro
defined values are no longer used in this patch, but used in other
places such as intel_rps.c:gen6_rps_set(). What plan do you have about
the same address is defined in 2 ways, i.e. macro and literal value?
-caz

>  	/* TODO: Other registers are not yet used */
>  };
>  
> -static const i915_reg_t gen11_shadowed_regs[] = {
> -	RING_TAIL(RENDER_RING_BASE),			/* 0x2000
> (base) */
> -	RING_EXECLIST_CONTROL(RENDER_RING_BASE),        /* 0x2550 */
> -	GEN6_RPNSWREQ,					/* 0xA008 */
> -	GEN6_RC_VIDEO_FREQ,				/* 0xA00C */
> -	RING_TAIL(BLT_RING_BASE),			/* 0x22000 (base) */
> -	RING_EXECLIST_CONTROL(BLT_RING_BASE),		/* 0x22550 */
> -	RING_TAIL(GEN11_BSD_RING_BASE),			/* 0x1C0000
> (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD_RING_BASE),	/* 0x1C0550
> */
> -	RING_TAIL(GEN11_BSD2_RING_BASE),		/* 0x1C4000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD2_RING_BASE),	/* 0x1C4550
> */
> -	RING_TAIL(GEN11_VEBOX_RING_BASE),		/* 0x1C8000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_VEBOX_RING_BASE),	/* 0x1C8550
> */
> -	RING_TAIL(GEN11_BSD3_RING_BASE),		/* 0x1D0000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD3_RING_BASE),	/* 0x1D0550
> */
> -	RING_TAIL(GEN11_BSD4_RING_BASE),		/* 0x1D4000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD4_RING_BASE),	/* 0x1D4550
> */
> -	RING_TAIL(GEN11_VEBOX2_RING_BASE),		/* 0x1D8000
> (base) */
> -	RING_EXECLIST_CONTROL(GEN11_VEBOX2_RING_BASE),	/* 0x1D8550
> */
> +static const struct i915_range gen11_shadowed_regs[] = {
> +	{ .start =   0x2030, .end =   0x2030 },
> +	{ .start =   0x2550, .end =   0x2550 },
> +	{ .start =   0xA008, .end =   0xA00C },
> +	{ .start =  0x22030, .end =  0x22030 },
> +	{ .start =  0x22550, .end =  0x22550 },
> +	{ .start = 0x1C0030, .end = 0x1C0030 },
> +	{ .start = 0x1C0550, .end = 0x1C0550 },
> +	{ .start = 0x1C4030, .end = 0x1C4030 },
> +	{ .start = 0x1C4550, .end = 0x1C4550 },
> +	{ .start = 0x1C8030, .end = 0x1C8030 },
> +	{ .start = 0x1C8550, .end = 0x1C8550 },
> +	{ .start = 0x1D0030, .end = 0x1D0030 },
> +	{ .start = 0x1D0550, .end = 0x1D0550 },
> +	{ .start = 0x1D4030, .end = 0x1D4030 },
> +	{ .start = 0x1D4550, .end = 0x1D4550 },
> +	{ .start = 0x1D8030, .end = 0x1D8030 },
> +	{ .start = 0x1D8550, .end = 0x1D8550 },
>  	/* TODO: Other registers are not yet used */
>  };
>  
> -static const i915_reg_t gen12_shadowed_regs[] = {
> -	RING_TAIL(RENDER_RING_BASE),			/* 0x2000
> (base) */
> -	RING_EXECLIST_CONTROL(RENDER_RING_BASE),	/* 0x2550 */
> -	GEN6_RPNSWREQ,					/* 0xA008 */
> -	GEN6_RC_VIDEO_FREQ,				/* 0xA00C */
> -	RING_TAIL(BLT_RING_BASE),			/* 0x22000 (base) */
> -	RING_EXECLIST_CONTROL(BLT_RING_BASE),		/* 0x22550 */
> -	RING_TAIL(GEN11_BSD_RING_BASE),			/* 0x1C0000
> (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD_RING_BASE),	/* 0x1C0550
> */
> -	RING_TAIL(GEN11_BSD2_RING_BASE),		/* 0x1C4000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD2_RING_BASE),	/* 0x1C4550
> */
> -	RING_TAIL(GEN11_VEBOX_RING_BASE),		/* 0x1C8000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_VEBOX_RING_BASE),	/* 0x1C8550
> */
> -	RING_TAIL(GEN11_BSD3_RING_BASE),		/* 0x1D0000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD3_RING_BASE),	/* 0x1D0550
> */
> -	RING_TAIL(GEN11_BSD4_RING_BASE),		/* 0x1D4000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD4_RING_BASE),	/* 0x1D4550
> */
> -	RING_TAIL(GEN11_VEBOX2_RING_BASE),		/* 0x1D8000
> (base) */
> -	RING_EXECLIST_CONTROL(GEN11_VEBOX2_RING_BASE),	/* 0x1D8550
> */
> +static const struct i915_range gen12_shadowed_regs[] = {
> +	{ .start =   0x2030, .end =   0x2030 },
> +	{ .start =   0x2550, .end =   0x2550 },
> +	{ .start =   0xA008, .end =   0xA00C },
> +	{ .start =  0x22030, .end =  0x22030 },
> +	{ .start =  0x22550, .end =  0x22550 },
> +	{ .start = 0x1C0030, .end = 0x1C0030 },
> +	{ .start = 0x1C0550, .end = 0x1C0550 },
> +	{ .start = 0x1C4030, .end = 0x1C4030 },
> +	{ .start = 0x1C4550, .end = 0x1C4550 },
> +	{ .start = 0x1C8030, .end = 0x1C8030 },
> +	{ .start = 0x1C8550, .end = 0x1C8550 },
> +	{ .start = 0x1D0030, .end = 0x1D0030 },
> +	{ .start = 0x1D0550, .end = 0x1D0550 },
> +	{ .start = 0x1D4030, .end = 0x1D4030 },
> +	{ .start = 0x1D4550, .end = 0x1D4550 },
> +	{ .start = 0x1D8030, .end = 0x1D8030 },
> +	{ .start = 0x1D8550, .end = 0x1D8550 },
>  	/* TODO: Other registers are not yet used */
>  };
>  
> -static const i915_reg_t xehp_shadowed_regs[] = {
> -	RING_TAIL(RENDER_RING_BASE),			/* 0x2000
> (base) */
> -	RING_EXECLIST_CONTROL(RENDER_RING_BASE),        /* 0x2550 */
> -	GEN6_RPNSWREQ,					/* 0xA008 */
> -	GEN6_RC_VIDEO_FREQ,				/* 0xA00C */
> -	RING_TAIL(BLT_RING_BASE),			/* 0x22000 (base) */
> -	RING_EXECLIST_CONTROL(BLT_RING_BASE),		/* 0x22550 */
> -	RING_TAIL(GEN11_BSD_RING_BASE),			/* 0x1C0000
> (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD_RING_BASE),	/* 0x1C0550
> */
> -	RING_TAIL(GEN11_BSD2_RING_BASE),		/* 0x1C4000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD2_RING_BASE),	/* 0x1C4550
> */
> -	RING_TAIL(GEN11_VEBOX_RING_BASE),		/* 0x1C8000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_VEBOX_RING_BASE),	/* 0x1C8550
> */
> -	RING_TAIL(GEN11_BSD3_RING_BASE),		/* 0x1D0000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD3_RING_BASE),	/* 0x1D0550
> */
> -	RING_TAIL(GEN11_BSD4_RING_BASE),		/* 0x1D4000 (base) */
> -	RING_EXECLIST_CONTROL(GEN11_BSD4_RING_BASE),	/* 0x1D4550
> */
> -	RING_TAIL(GEN11_VEBOX2_RING_BASE),		/* 0x1D8000
> (base) */
> -	RING_EXECLIST_CONTROL(GEN11_VEBOX2_RING_BASE),	/* 0x1D8550
> */
> -	RING_TAIL(XEHP_BSD5_RING_BASE),			/* 0x1E0000
> (base) */
> -	RING_EXECLIST_CONTROL(XEHP_BSD5_RING_BASE),	/* 0x1E0550
> */
> -	RING_TAIL(XEHP_BSD6_RING_BASE),			/* 0x1E4000
> (base) */
> -	RING_EXECLIST_CONTROL(XEHP_BSD6_RING_BASE),	/* 0x1E4550
> */
> -	RING_TAIL(XEHP_VEBOX3_RING_BASE),		/* 0x1E8000 (base) */
> -	RING_EXECLIST_CONTROL(XEHP_VEBOX3_RING_BASE),	/* 0x1E8550
> */
> -	RING_TAIL(XEHP_BSD7_RING_BASE),			/* 0x1F0000
> (base) */
> -	RING_EXECLIST_CONTROL(XEHP_BSD7_RING_BASE),	/* 0x1F0550
> */
> -	RING_TAIL(XEHP_BSD8_RING_BASE),			/* 0x1F4000
> (base) */
> -	RING_EXECLIST_CONTROL(XEHP_BSD8_RING_BASE),	/* 0x1F4550
> */
> -	RING_TAIL(XEHP_VEBOX4_RING_BASE),		/* 0x1F8000 (base) */
> -	RING_EXECLIST_CONTROL(XEHP_VEBOX4_RING_BASE),	/* 0x1F8550
> */
> +static const struct i915_range xehp_shadowed_regs[] = {
> +	{ .start =   0x2000, .end =   0x2030 },
> +	{ .start =   0x2550, .end =   0x2550 },
> +	{ .start =   0xA008, .end =   0xA00C },
> +	{ .start =  0x22030, .end =  0x22030 },
> +	{ .start =  0x22550, .end =  0x22550 },
> +	{ .start = 0x1C0030, .end = 0x1C0030 },
> +	{ .start = 0x1C0550, .end = 0x1C0550 },
> +	{ .start = 0x1C4030, .end = 0x1C4030 },
> +	{ .start = 0x1C4550, .end = 0x1C4550 },
> +	{ .start = 0x1C8030, .end = 0x1C8030 },
> +	{ .start = 0x1C8550, .end = 0x1C8550 },
> +	{ .start = 0x1D0030, .end = 0x1D0030 },
> +	{ .start = 0x1D0550, .end = 0x1D0550 },
> +	{ .start = 0x1D4030, .end = 0x1D4030 },
> +	{ .start = 0x1D4550, .end = 0x1D4550 },
> +	{ .start = 0x1D8030, .end = 0x1D8030 },
> +	{ .start = 0x1D8550, .end = 0x1D8550 },
> +	{ .start = 0x1E0030, .end = 0x1E0030 },
> +	{ .start = 0x1E0550, .end = 0x1E0550 },
> +	{ .start = 0x1E4030, .end = 0x1E4030 },
> +	{ .start = 0x1E4550, .end = 0x1E4550 },
> +	{ .start = 0x1E8030, .end = 0x1E8030 },
> +	{ .start = 0x1E8550, .end = 0x1E8550 },
> +	{ .start = 0x1F0030, .end = 0x1F0030 },
> +	{ .start = 0x1F0550, .end = 0x1F0550 },
> +	{ .start = 0x1F4030, .end = 0x1F4030 },
> +	{ .start = 0x1F4550, .end = 0x1F4550 },
> +	{ .start = 0x1F8030, .end = 0x1F8030 },
> +	{ .start = 0x1F8550, .end = 0x1F8550 },
>  	/* TODO: Other registers are not yet used */
>  };
>  
> -static int mmio_reg_cmp(u32 key, const i915_reg_t *reg)
> +static int mmio_range_cmp(u32 key, const struct i915_range *range)
>  {
> -	u32 offset = i915_mmio_reg_offset(*reg);
> -
> -	if (key < offset)
> +	if (key < range->start)
>  		return -1;
> -	else if (key > offset)
> +	else if (key > range->end)
>  		return 1;
>  	else
>  		return 0;
> @@ -1049,9 +1043,9 @@ static int mmio_reg_cmp(u32 key, const
> i915_reg_t *reg)
>  #define __is_X_shadowed(x) \
>  static bool is_##x##_shadowed(u32 offset) \
>  { \
> -	const i915_reg_t *regs = x##_shadowed_regs; \
> +	const struct i915_range *regs = x##_shadowed_regs; \
>  	return BSEARCH(offset, regs, ARRAY_SIZE(x##_shadowed_regs), \
> -		       mmio_reg_cmp); \
> +		       mmio_range_cmp); \
>  }
>  
>  __is_X_shadowed(gen8)
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h
> b/drivers/gpu/drm/i915/intel_uncore.h
> index 3c0b0a8b5250..531665b08039 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -119,6 +119,12 @@ struct intel_forcewake_range {
>  	enum forcewake_domains domains;
>  };
>  
> +/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> +struct i915_range {
> +	u32 start;
> +	u32 end;
> +};
> +
>  struct intel_uncore {
>  	void __iomem *regs;
>  
> diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> index 720b60853f8b..d6a9c11afa23 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> @@ -62,30 +62,40 @@ static int intel_fw_table_check(const struct
> intel_forcewake_range *ranges,
>  static int intel_shadow_table_check(void)
>  {
>  	struct {
> -		const i915_reg_t *regs;
> +		const struct i915_range *regs;
>  		unsigned int size;
> -	} reg_lists[] = {
> +	} range_lists[] = {
>  		{ gen8_shadowed_regs, ARRAY_SIZE(gen8_shadowed_regs) },
>  		{ gen11_shadowed_regs, ARRAY_SIZE(gen11_shadowed_regs)
> },
>  		{ gen12_shadowed_regs, ARRAY_SIZE(gen12_shadowed_regs)
> },
>  		{ xehp_shadowed_regs, ARRAY_SIZE(xehp_shadowed_regs) },
>  	};
> -	const i915_reg_t *reg;
> +	const struct i915_range *range;
>  	unsigned int i, j;
>  	s32 prev;
>  
> -	for (j = 0; j < ARRAY_SIZE(reg_lists); ++j) {
> -		reg = reg_lists[j].regs;
> -		for (i = 0, prev = -1; i < reg_lists[j].size; i++,
> reg++) {
> -			u32 offset = i915_mmio_reg_offset(*reg);
> +	for (j = 0; j < ARRAY_SIZE(range_lists); ++j) {
> +		range = range_lists[j].regs;
> +		for (i = 0, prev = -1; i < range_lists[j].size; i++,
> range++) {
> +			if (range->end < range->start) {
> +				pr_err("%s: range[%d]:(%06x-%06x) has
> end before start\n",
> +				       __func__, i, range->start,
> range->end);
> +				return -EINVAL;
> +			}
> +
> +			if (prev >= (s32)range->start) {
> +				pr_err("%s: range[%d]:(%06x-%06x) is
> before end of previous (%06x)\n",
> +				       __func__, i, range->start,
> range->end, prev);
> +				return -EINVAL;
> +			}
>  
> -			if (prev >= (s32)offset) {
> -				pr_err("%s: entry[%d]:(%x) is before
> previous (%x)\n",
> -				       __func__, i, offset, prev);
> +			if (range->start % 4) {
> +				pr_err("%s: range[%d]:(%06x-%06x) has
> non-dword-aligned start\n",
> +				       __func__, i, range->start,
> range->end);
>  				return -EINVAL;
>  			}
>  
> -			prev = offset;
> +			prev = range->end;
>  		}
>  	}
>  
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
