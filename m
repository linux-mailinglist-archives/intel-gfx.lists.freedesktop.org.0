Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D9C666771
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 01:13:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705D810E176;
	Thu, 12 Jan 2023 00:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B52410E176
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 00:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673482414; x=1705018414;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=duj1NSck37iJZf5onRZJZWMfJTKJ2t7Stp4fhz4sgdM=;
 b=F6OchhLrZTbSDos7brZrwLG/nTrX0AcyLSSMgwHLe6NPAZxfc19A9Cmd
 3fxY+K4hWHKSeKUTUecs46cXLIcjj2yX4ZcqviHYwelrXGFEmDrpI8lJd
 6Qh1gnrb4kIKydgm9xPX7Yg3W0PtQDITZQg92pHt1P5zGP7UoQnTX9fF1
 hYLOip/FczgRpQSDCJbqYiUfcIuuVfOXBy9WiWVqtwV1O8LMtEtjOVI+Q
 Bh5xwNzHa2a7l3n1+q3RQm5rqXzU/WT8lUAYn9WEW+URz+WpKN9r+o/Tx
 BwfWoiTsCW8YfLnPKprFxsBNTNLC/lBgDvzRP6OD1sFgkCmLmaEAgLU9d Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="311393580"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="311393580"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 16:13:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831491483"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831491483"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 11 Jan 2023 16:13:30 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 16:13:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 16:13:30 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 16:13:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YyX9077pmjtktnWB0qZa/ypn7FoT08ErhlJsiDhEjprzxIH47WuM/YY0pH4Wk5+5XmXQp/ivbsxPKk/VqSwaOR2S3fGs6Bfy4Xp7U2IJwEcGwUKOPjTSJMHr/4kjLHNuUWCVxbC5eMPxMtzzPQneAer2L2csfiamzdkHMyexSHibDL7u8ehKX6HRWcht4CehOTDvEJEq6iioaOOG54A/Yvr+8RXqxBdQPwJb6D8L6QFWeCBjU/ecWkScnSLP6bbyZeVkxXf6oChnPrHLPmQHm7GRYF9luQqZflrLbBRp2/mwbqAiB+GYuASu58zx0U+bj9e/u+W+MmATSfMKB3I8pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3wZkMzAUazOwVm/ha6N49mXXHnBHVBBo6iyn+irefok=;
 b=ek8FRJ1dikRCakPa6jH4cKepYQ90R1NVYgjVrEutl9aLGQMC4bX1KE9smnHAUJ5nIMP5REJaFQCM0/2EyG1BXCzed2zpGjpEi/J2lCeS0ioCfOIbn1Qx6fkx5gUPdFKrB+6aop1PJWEPRgVnyE9EHWpQWCcUaxKobBpjOSWxYNMaJcEEmUUDCzurChJnDE+XkpMk6qO6BQzTR43lL57TwSAFk7LygBVurC+dA1nmyp1z0vsBad8gHLAPjl1YusP7hYerR+7rbW8N5tFH6qKjlonaX+8fVyGPSspHjMMrbEtx0zqQCGylAWoZPEWXCVSW0jqGzNy4MlRhIxzKkiJVMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH3PR11MB7794.namprd11.prod.outlook.com (2603:10b6:610:125::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 12 Jan
 2023 00:13:28 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 00:13:28 +0000
Date: Wed, 11 Jan 2023 16:13:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y79QpWPBirK7sv3/@mdroper-desk1.amr.corp.intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
 <20230111235531.3353815-2-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230111235531.3353815-2-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR05CA0045.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH3PR11MB7794:EE_
X-MS-Office365-Filtering-Correlation-Id: dd124323-ec6e-4cf3-79b0-08daf431d46b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CdfyYmLFsZ83vYLb+4qWdreNWyZieS1x799AcSNMUmi2Fj6F2HdPjdESVkHwJLNOAw7pbcrXOGb+7lKyVOvdbB6F4OqOYYnVNTpygx1MEvKpoo+gA9cK6bUIEds1zC9lAxSmMZ6z1PPQ2sozm9rwyZCA48joIFtNe9pgdwa/rFb09oyjIkTEyDhaQBK3WQtCwNvF9M341fSGEvOOJ7ciPFV/aE1UqQyJvTPvcz3P/ca09sD/aJaDRcN84eeNx/TzDc4SzLtTFJfQItoy8SJYhoZApg1NgGZoAMQo8gsEOcHu3AEYt10lsKK+nqnCjQ/RDX//TLLGCzCvqd19I8yAXcdjywCt4IU4P+3JEnGc9k264J4jhrAMsTrqQlm2CgRQaMXWpToLnRtL1TI3jqvFvntNFddv4dqaa8bjd3d6kAplMgccE47Dofj95oWhgXmBuugpczR/V6HCmT5NVUgE5edQtvb6z7hOQjfaeye1K9gawpW4HfZP0Bl0ahvhrtZKqWWvrkZ2TJ///byfHe8IKTCftSE4rbQKAcU9y0zCai7cSkojI4axpWgZhsDH6EG2m8pTg+P3Uj1wpXG19jxzxLPcx0DQEkbbbzCEFJ+gF6mS2ZGi1jZs3otJvMGpDgcjXa4DAnZsmeU2pOqhrVlDtw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(366004)(39860400002)(346002)(451199015)(4326008)(8676002)(66946007)(66556008)(66476007)(6862004)(8936002)(5660300002)(41300700001)(6666004)(478600001)(83380400001)(6486002)(6512007)(26005)(186003)(6506007)(316002)(6636002)(86362001)(82960400001)(38100700002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?53D5gKbFrWaX2eHiN4lHbpDxlyUEqfIbkheXhT9uh34fnO4rp5lOuWzfhJdV?=
 =?us-ascii?Q?bcP9Wzxf+UGFUIzCBZJwc/RyDpFADji0F+kY61jL6Oyp7Hgmyt0W07B8nFSM?=
 =?us-ascii?Q?Sn/oYMAKwknhFGmN6j8HJbUc3azqX7igVvfEQta+e+ERPq50ijHKmStlFrQv?=
 =?us-ascii?Q?dRb2A8gsbERM6olEqfkvPN8Y3HstHFFc2qolkCv/dsO0BH+x/kVemsJjFiZA?=
 =?us-ascii?Q?yeAzRZMhPHrJ5KQ0QHAWSPRjnLOr4IGgtDV73kIaztcGa88jIewldN0ivAKX?=
 =?us-ascii?Q?GY9UQ7ClhL92QgMdHv3nQrfbLFNnbNkZTpRBT+/xCs0wpbvoThbaMuJfETOU?=
 =?us-ascii?Q?GFjcJ3bPkmpODH+RIDOcmgNY9qioIiPV/ktuUc87XlOMDU6JKp+yPOlIfEe1?=
 =?us-ascii?Q?AGJq7i49xBbBr7rFQGBKZQZnoix9CQMtnp94rxj8d3/o17cEdbHaQgG39c8h?=
 =?us-ascii?Q?2zkkH22tufoncfdOtoRD5e0BC+EafpaQlHmFVw0Ox5cHPJ5zO6Lgbju2UBw7?=
 =?us-ascii?Q?PGGWHJwXWjJQ+UzYMSvOinyItOjtaYC6NkSAzaDVSUXgKbOEz2px9EKdzLa4?=
 =?us-ascii?Q?fh8rf3Z4xABMDvmNH0GbZP/u0VGi17zfm9X5q8umsQbqz3w6J4i6db+fKp1X?=
 =?us-ascii?Q?hOB9pwEHEgcVyOJrp8gCcVVHxVS62wOiubKUwpiznytHVm6HVCLTXGS/hJuu?=
 =?us-ascii?Q?ARF6WtIGG8DiexdzwqjRi6it/EEfjXvJE5VqLyPMepKn7o9hAKP2/CxLmMm2?=
 =?us-ascii?Q?W86Ra1fYB1rxzOPGYeDNd5oYiC+GTXBghX8ou8mggrqppV8cnLLfJuONOXNX?=
 =?us-ascii?Q?LRmkpI333FHw4Kt/YfU+msB+VgOnJFvPInJfYORHm65mr+k22CGOJGREluVZ?=
 =?us-ascii?Q?4e80IIIP7JDYIs1r0Qqcqfa7cvXGdWHGBIxKPW8JijkwHp68/PeaC+/GYJOQ?=
 =?us-ascii?Q?7/6rcco6QFBSVZVaeBl/u2P8vi05fNgOxVg5e17rGl/MR8+EJAnllsmokwk/?=
 =?us-ascii?Q?290Qm1dBCPlI+FjzVl3ZB5KZ26Nyl8zdCOxAdX0ky4BkssGoLpPEhdSn5a13?=
 =?us-ascii?Q?uiB9D7l5TDATHfZ0OX4XLPj8VeK//vf0qhz2izaDrD4gMEJg/P3UmeihDV0x?=
 =?us-ascii?Q?Vt/c06f+LVdbTSYK0muXs40eBTbnWkvjlAzDESW546p7QtFHvSfJQWhx8/jS?=
 =?us-ascii?Q?wrJFbeFzNnEDGMoXdunaEdU2zWyFXzGvi7wt1BfXbxjPDEnlYZ5sSbfpojp4?=
 =?us-ascii?Q?UJr8CvuxpRHi0yg8eRIsLoKd1rYw59WxD59HwtN+l+kltcvNy8cP3SHcfhWZ?=
 =?us-ascii?Q?u6K9HpEArYOvUdBzY9Kkdnf9lTiHkelIrX/G7DR9CV0nLeXmGMCdCmNnBVtS?=
 =?us-ascii?Q?xSqOElk4zpVXcu/G644pE25DM8LqcphBJNUce4fjRnRf8C2MKRHCLeullg8f?=
 =?us-ascii?Q?HaBU596EhCpuXLGybyPd2BWvPzJrq9xv6M5GkXz7VCZyZxezHVcQmmSa+vZB?=
 =?us-ascii?Q?ih0rlO+oAfAZNWZZJQ/OZHBmiSzz1xbSG7pBRIIR01fiTzaFJfkR21ZRZjwx?=
 =?us-ascii?Q?D3R9BQz9QOoKz3BJvP9YXerba4y/1z4V8LJAA6z7fgnz5OUQAj3w2aZk6U83?=
 =?us-ascii?Q?MQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dd124323-ec6e-4cf3-79b0-08daf431d46b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 00:13:28.1515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q7y+UfkAE+4lzaQGaqbOfpLQ3tVInzJQsVteF4pZh8ypomDvBgQfg5EoU9o78XdrhqKkrYQmDuksIfT6a+BjvTNVxzdWsGgalstBbG8K0dk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7794
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 1/9] drm/i915/mtl: Fix bcs
 default context
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 11, 2023 at 03:55:23PM -0800, Radhakrishna Sripada wrote:
> From: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> Commit 0d0e7d1eea9e ("drm/i915/mtl: Define engine context layouts")
> added the engine context for Meteor Lake. In a second revision of the
> patch it was believed the xcs offsets were wrong due to a tagging
> issue in the spec. The first version was actually correct, as shown
> by the intel_lrc_live_selftests/live_lrc_layout test:
> 
> 	i915: Running gt_lrc
> 	i915: Running intel_lrc_live_selftests/live_lrc_layout
> 	bcs0: LRI command mismatch at dword 1, expected 1108101d found 11081019
> 	[drm:drm_helper_probe_single_connector_modes [drm_kms_helper]] [CONNECTOR:236:DP-1] disconnected
> 	bcs0: HW register image:
> 	[0000] 00000000 1108101d 00022244 ffff0008 00022034 00000088 00022030 00000088
> 	...
> 	bcs0: SW register image:
> 	[0000] 00000000 11081019 00022244 00090009 00022034 00000000 00022030 00000000
> 
> The difference in the 2 additional dwords (0x1d vs 0x19) are the offsets
>  0x120 / 0x124 that are indeed part of the context image.
> 
> Bspec: 45585
> 
> Fixes: 0d0e7d1eea9e ("drm/i915/mtl: Define engine context layouts")
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I'll poke the bspec people about getting the platform information fixed
for this so that we don't run into confusion here again.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 37 +----------------------------
>  1 file changed, 1 insertion(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 7771a19008c6..bbeeb6dde7ae 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -288,39 +288,6 @@ static const u8 dg2_xcs_offsets[] = {
>  	END
>  };
>  
> -static const u8 mtl_xcs_offsets[] = {
> -	NOP(1),
> -	LRI(13, POSTED),
> -	REG16(0x244),
> -	REG(0x034),
> -	REG(0x030),
> -	REG(0x038),
> -	REG(0x03c),
> -	REG(0x168),
> -	REG(0x140),
> -	REG(0x110),
> -	REG(0x1c0),
> -	REG(0x1c4),
> -	REG(0x1c8),
> -	REG(0x180),
> -	REG16(0x2b4),
> -	NOP(4),
> -
> -	NOP(1),
> -	LRI(9, POSTED),
> -	REG16(0x3a8),
> -	REG16(0x28c),
> -	REG16(0x288),
> -	REG16(0x284),
> -	REG16(0x280),
> -	REG16(0x27c),
> -	REG16(0x278),
> -	REG16(0x274),
> -	REG16(0x270),
> -
> -	END
> -};
> -
>  static const u8 gen8_rcs_offsets[] = {
>  	NOP(1),
>  	LRI(14, POSTED),
> @@ -739,9 +706,7 @@ static const u8 *reg_offsets(const struct intel_engine_cs *engine)
>  		else
>  			return gen8_rcs_offsets;
>  	} else {
> -		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 70))
> -			return mtl_xcs_offsets;
> -		else if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
> +		if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 55))
>  			return dg2_xcs_offsets;
>  		else if (GRAPHICS_VER(engine->i915) >= 12)
>  			return gen12_xcs_offsets;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
