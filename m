Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCAC62F7BC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 15:35:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89BB10E704;
	Fri, 18 Nov 2022 14:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3869110E704
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668782133; x=1700318133;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=iycTRCINpJ8qm578nawjPamnnT4mwGswWjbekutf5PE=;
 b=RauVxWg3RBst2xGb9vd6So4agg+sJgS6qqd/C13n5tfl7kQSyll29m4J
 NM1G3Rp53uSsZCqGPDu6pwyPP15MNB3h5eE5z6JF9Rb1QeZi8liC0ae2y
 2fvhrlzdY2fq/D0w997AG2AiP2QEQgPI07s8BPtB4V4gK+hEvUxVcel1V
 9MkoZwrhHGy2bTFjavhWaXidzv5C9AdNFifINiuqcFbgDvO3WHeSnbX4G
 jo9Jk7lkHHLeGEHqzB80y8yM4yNyxjLCqNIvGOhAzhFkINyJZQSjSHlAt
 YphfKAjN9bhHvchbF7ZqivMziQYz3GNqdtvC6JcoLFYmUv1TlOZpL956g g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="311848856"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="311848856"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 06:35:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="671332286"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="671332286"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 18 Nov 2022 06:35:32 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 06:35:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 06:35:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 06:35:31 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 06:35:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXGj80DGVBGpIQelyIxQPfqOVVFOjyOgwkpFkTuF7F1pn8D7CwsjKHv8Wo5dihdDjjJuu94TbDGpIdzaPlW0sORmZbNrsVhShwOPncJhCvehwzbiyxra+8Bo7yk2D1zTcT2UEtbviYiHqH61Z6mu1raZNxuCXUdMYBWMcG3yvcO9AD38Oi6NY1Ht8CTWypxC0+6cjUat9D0Om/IwApAuKpbjhReCYAeUpsFHPqsY4xIe5nugqkFMkMbsmER6fDx3QANuqLP50Wjei20KQzQ7lmf1EUU9m0aEP0AkL+QEfSdcjqofztvMGmZCS8kogTfS+ZheFuvfdYou1QFMV3kZ3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+PTLSqFcyVCvLdKlmLoOitTzj+aWU09hug4AigmQ8og=;
 b=C2R6QXjGjkunF667jnGeFXuVfalC6AG3Kfs6eTXpOFHtcXXNAof2FkekF6kVRHRkPqXgbptQNKP0syra7RESt+uQY1CJ2NuvtZ6t+0IYyvGlPZ6nVxKc1JQdTVNZmxvJprWmfJDcMPN9u4wcFcJ61cUoB2h22tSQiDBy081cdsCtSjiEAO55Z+ebBB5lJex8LZkn3DsTwndoXm7SzBvjEFWryh0tBwVvaDQztjZymSuMxetRdJbaGrUsUEFigSEUN+C8z4XSs6iS3rZEZDVPSuBOOLwHhS+KJepaIOHk9u6MSJkBhTpZ+tgOuwyWi9m2nyyCxbn7iB25yMtJ/2Z/Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM4PR11MB6358.namprd11.prod.outlook.com (2603:10b6:8:b7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.13; Fri, 18 Nov
 2022 14:35:28 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01%4]) with mapi id 15.20.5834.009; Fri, 18 Nov 2022
 14:35:28 +0000
Date: Fri, 18 Nov 2022 11:35:20 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20221118143520.73cp5bt7ukp7jqze@gjsousa-mobl2>
References: <20221117222447.193245-1-matthew.s.atwood@intel.com>
 <20221117222447.193245-2-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117222447.193245-2-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BY5PR13CA0008.namprd13.prod.outlook.com
 (2603:10b6:a03:180::21) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM4PR11MB6358:EE_
X-MS-Office365-Filtering-Correlation-Id: ca263dd1-f4f6-4217-8d83-08dac97222fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q5mfykC9W4stkPBm5K5dM0CLh0Oh4etvmYMl5ZwZixD/ZR+2VlImxYmCEdE4+sksLwvrMsHljK2hMMADY45q1pc0Z/p/UsxH2NBzuui6G+9c60orAoTfHKGtILrEucu38ghheaE6aUpZ94amRrjKkpxdMsEOep4HXFhctv5k4MJPS7vL/n/prf7sbeCUOqX9BUpfYMT7pdYIjo1ogenLQnA7yIXD/xyC+5AtbI9oXzqVWtSkjprqsFLGa6rBBJR8dWZ61AV9Syh87n72ws6zjW359lXzMOYApI73qEB58LnYype2O9Uv/6N7PvC+JXE4HDyWY2FvfCRRfJN++9krLWEy1ktblVJ83hjM7lSrXdiyorVLclOT7Q6OHKuBdckDWaYMp5c6ppVc36r0SGUOWUsqSWCDH8rAcatmcgg9EuV5rDZgms27EO1TmnQErthwP55QM2EIWkF/Pg85GgMh0iR7kBO529zEr1UyGwBjTykG7cc6REU7ZsOpLP2d/4rQot2gk6sYN34KzSEiAuu0exncyx+H5Un69Or/TB2+sEEzkPcCuLQ5cDUsHk5VqyFAP2TaV7GKrrvGa9nrCxvGdHYqlCFiPfBh46X3t3aEa11c3guYz/imiI4Xp4J7BMdv8B181g4QOcLJBbIhSu7ChA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(39860400002)(136003)(376002)(366004)(346002)(451199015)(86362001)(44832011)(83380400001)(1076003)(5660300002)(82960400001)(2906002)(186003)(9686003)(8936002)(66476007)(38100700002)(26005)(6506007)(316002)(8676002)(41300700001)(66946007)(6486002)(66556008)(33716001)(6512007)(478600001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MUDoDED3gdXtjDSgiqBU1qxTbQ/zyCsbCGMS1mDrT6ewVobhus2391QxTFe4?=
 =?us-ascii?Q?04wU5zkXITKZrYLA1pqBHnSjtaGUeZJjDTLMIZrLaZchEUimVgTlrdVewWtY?=
 =?us-ascii?Q?Lr8uV/cdJTN9yRL6mX2T1AprBy4sZOiJNaRfznV04Zpb0Z6MoWc/nXQ8Hb20?=
 =?us-ascii?Q?97vVxUSgIOQRv8a77uFJ5meiO5LntpnB+oACSOHyMPTbwLtpUQRKL5AJnocg?=
 =?us-ascii?Q?Pyiu2rg1pAY3l3AjLghPYbPdu6N2mK90ETeGIPdEFkUoqU21o3bhvtLaS/aH?=
 =?us-ascii?Q?DCodtr25wVDL5R/fC0qgd/NcX1cMiuDiD2l9BKOn1pjTWO7dfZbIsdhID/Hf?=
 =?us-ascii?Q?afPBawz1w1KYLXYAI/ZfdhrqOB1VcuFtNeZhMSLP2vXq6ZB9X9DvXQJ7mcVV?=
 =?us-ascii?Q?6abEB4DLCmBtecJA18eergfEtxO8mCS9sw9ly2ceYaoPXHbXcrtEc3sKIrSA?=
 =?us-ascii?Q?7qMOVWbfgwJjXZuesqsGirC6Crs+140BH3Bc5EenhkHYAlpAigxEr0X+Mr9S?=
 =?us-ascii?Q?rZEI6mI8J5IzqU1EoiRUcwq48L5RYxV/Ra+blLEJI9tAED/QjFn7P0TBGdMA?=
 =?us-ascii?Q?NhMY9caDHyNbocyYv0LbPSsBBwepprJayyTbDVqohZSDE9VRdzvlFJfxmcZx?=
 =?us-ascii?Q?KBCVJmFF7joLiZA/ODTQAIfP4OuETfZffEv7+nHICS7Qas2yMNJ7FYZ9kFRs?=
 =?us-ascii?Q?T9iLxKctSKNfXZRUs+TdoWQV4SJ4+d1TnZHI9HHEAZdmbfIVw1cXIaoDxn6E?=
 =?us-ascii?Q?bIS/TE/SxJTaLiP7yOeTJv9DRgYym+8nWPltSDNtHeJePvqIT71UpXia2aIE?=
 =?us-ascii?Q?P2b+Lwxsdo/CUyYLtLzrgWHbYXBJ5wjWRTurb5Kqexu+Pc2PQS4ndOvBPxAz?=
 =?us-ascii?Q?uMlj0E9sQevCXfZ/bF48wxA3BRsieA59K2zZ7nDChxLJ+FyPW+TQDxSUbKas?=
 =?us-ascii?Q?yGXEM3j0O5RsdxLbBKEgaBKkbdHaF4VOjlnUqrpSJ3/F65rBwpFHHCfeeb+/?=
 =?us-ascii?Q?rmZm+oO9IYNMza1dmXYcFJNdAQsIosauOk8vV2AvV8TBdW3fcpZnTSfacPwS?=
 =?us-ascii?Q?gnhvAkIs46DryaohU86BBzOuMa+7Kg37d7oQ84fT4oSssre8YGrShyoRYyxI?=
 =?us-ascii?Q?RgKYbaW524tt9gqoh7zbyrlJsAcVn62R6P/75Wme06+4q037OqrbqP/FedFf?=
 =?us-ascii?Q?pgeSHmLP/+KHl6mo0Sn96UsAaJN9QgZheZ63M3XmtIthxpRY9Bwfc7gafk3K?=
 =?us-ascii?Q?h2lBpLNdb+JNstCU4kQ/bFmY6rsVz2XL6AFkUI+PtOjKlLqbLriQ9hZSQMA0?=
 =?us-ascii?Q?eO3JzK3UlTsGYfNfceV8+IbrVnjr5aoFVerAQfDi9GFyA/QvAPjzhAC8B/Hy?=
 =?us-ascii?Q?IO38NBN7o76+xbH81g2lR5le5z/7qGjpGH15aL8aioR/N9G7XcmCQ5tl0PcR?=
 =?us-ascii?Q?8t88xZJbKRLpy6dAX3hEnHvwBmjijLjASnygFAjWjqBUsnC1hl07cFuscip5?=
 =?us-ascii?Q?4rB8kA8d9Nx5s6T7x/js3tFjxXnCXwqy4T+kPquSWoVNKPp1UEvfneeS4ft/?=
 =?us-ascii?Q?+kOqnPxA7PavoYQCLmnNQCLmJUQaO3dCu6iMnDW+pHuRiA7MP9PTu6nzpRT5?=
 =?us-ascii?Q?lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca263dd1-f4f6-4217-8d83-08dac97222fb
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 14:35:28.2024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ldrGb5eQYTHOrfl36jNiEyiI7fIXJuFB8U6vHM2EI5Kk7qxQhmK7ZnTjBxlAUQaDqf1n2Oyif5MzKV/3ibIibA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6358
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/dg2: Introduce
 Wa_18019271663
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

On Thu, Nov 17, 2022 at 02:24:47PM -0800, Matt Atwood wrote:
> Wa_18019271663 applies to all DG2 steppings and skus.
> 
> Bspec: 66622
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 7 ++++---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 1711dbf9dd462..62a17baacf03e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -429,9 +429,10 @@
>  #define   RC_OP_FLUSH_ENABLE			(1 << 0)
>  #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
>  #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
> -#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	(1 << 6)
> -#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
> -#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
> +#define   MSAA_OPTIMIZATION_REDUC_DISABLE	REG_BIT(11)
> +#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	REG_BIT(6)
> +#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	REG_BIT(6)
> +#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	REG_BIT(1)
>  
>  #define GEN7_GT_MODE				_MMIO(0x7008)
>  #define   GEN9_IZ_HASHING_MASK(slice)		(0x3 << ((slice) * 2))
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 483fd2a83ca19..452e423233207 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -781,6 +781,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_15010599737:dg2 */
>  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> +
> +	/*Wa_18019271663:dg2 */

Nitpick: add a space after "/*". With that,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> +	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> -- 
> 2.38.1
> 
