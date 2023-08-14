Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0325177C3A2
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 00:52:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 142E610E12D;
	Mon, 14 Aug 2023 22:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D97C10E12D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 22:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692053557; x=1723589557;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vNQbqX1SnkjTHgX6Z2QPx4MJr6L9lZYwPmw1eZmh5sQ=;
 b=QC4Ah5NwiOHGR1UzBBGDg12zSO1p2snuPcNxEIEQs/cIOVS6XDGRBCg5
 H2DznuOKMxYdxEqpQt4zc1qKoV+8bR9OZqWJCVbH5B5DaXG26Cf/795eD
 Wr1wY1J7dGUeuSS84YrAzwm/R6BtSKVCN9YwPA8VlQJDurRLDrpCu4BZX
 MhwcBn4YH9stNERsgROwijpl0QpJFcdYeAFt8bXtT/iiS4uxkUJ6Cfcj0
 ZzM8xhWZeaH1dQz7ytahq/j27F667vllvyna9/a/CP15qlNY+z0MfgnzI
 oY/qwZKm9p7EhshOre/3q4sPKO06ao+j0r3MsZAIuhgk6MeAhrPQu/NlL A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="371057655"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="371057655"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 15:52:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="798980032"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="798980032"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 14 Aug 2023 15:52:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 15:52:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 15:52:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 15:52:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 15:52:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cHI+5PvPx6BZYyjzj1JOI6w/ImjgR/Qq2WSxOVI6sI6+BXI5R5LoHs8EDBur1MtPbdVkGwKjk2c/54pmcFEJIkYaZeZjZzzoG0Fv/hBvfBc036azHZPJzNa0hSBzjRs/o8IEcbpvNfktwkiT7do2rPS9J6+cJuEYgdqbMnDGkwv30q18f/hljKkFGHiscn160lvGbx1fRuQAltXs44XY6p9xWJH+pXnyu3kOVUgv/wtYRUEqD7Xh36yQWr1ODJPNXrFqjXeCrLoiuQBzqsyGchzueQEKyDzVjlNTRDqG6odFQdzLtz0lEMN4Caw1ej0j/WsZsV2wQeVI1W6PMyssGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zWTpG7e8owF+zaYIfy6bTwEckkgaaVGj1WoN2vZjZvE=;
 b=dsjGqcJKqfJ80Om+KtOYQMTnxd2oWKjgQe9qUuvdgESZB+IG+eQOEPbOljinybcaURbcIejRNQ6KptzWc0mK1upZuFxjqUVbfz1pzqA6BmNz1V8yEt4xCXFycVa8d+Zo8vqsz8YOr7nxKHWLMdHt1Mk8HpAccuJpjJiVhOEsqF0WB4nQCYWPkTprtJBA0DJ5UlW2bGiTHV4j1hoQ1Appm/1FVX0j0Dw/sWg5E4+roqEQM6x6IwQATlO58pcZ/+OxoP5mgPT5PWq5HSy3xj7AUyFqBOZ7mzDfdeqBLmG/0QdMJay+HOFFuahRkWBqwxPOHYZtPpBP2TYvEcD1ls3mqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB6423.namprd11.prod.outlook.com (2603:10b6:8:c5::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.24; Mon, 14 Aug 2023 22:52:34 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 22:52:34 +0000
Date: Mon, 14 Aug 2023 15:52:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <20230814225230.GM3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230810203620.388827-1-jonathan.cavitt@intel.com>
 <20230810203620.388827-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230810203620.388827-2-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SJ0PR05CA0173.namprd05.prod.outlook.com
 (2603:10b6:a03:339::28) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB6423:EE_
X-MS-Office365-Filtering-Correlation-Id: e1f4cfcd-8970-4bb5-c027-08db9d1925cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +28igddlS3czSM8acAk/YfgHts/NNvjHtIgPSy6nFHengvaqlVJBvoHSyVpt6x+Kmr0VyPMwza6aKXncDdvWXXKhovrF5xH5H7xSgU4JNSdSS4A53CBUQwgp2KjU/6HGel86KaO2XAQgr7loOwHfavRNEWd/iLOlKHcjUm5j3W321FoO3U2PGLBOg+EJPFoKerqe2/8QnTpMjbKzYHZtYqoTp1+vVN2+NsXsxtr8ln+aWW4Mj7J6pGz6j83a7YKim/UX6h48Elb1BEEOkT4aQ9MZGN8SFXopu/Lfp1Emgmh4gjURH/9+px4K9urGBW8kj6vWz2CFQ1pYo5AHjl393wWNyAtQSaMGgBj4T9TgNgJbOAA0TSn/71qnyls0rX4JUfvBnNY5QR0gG6JdeVRS9AbmzOey+cKZDRmJtqsUfY+CoyzlxgZHWnCdGgifpTcHQi2UYzFtXsEK5nirqLZqhkWM1t01lsGPQIOFLzORFEVY3xved6zZRI9S2/hrv4vUKwHuDT4WKeZO+bZA3runUXEKYMpl2cZb/34sFVCwHooVOHXpq14Atsu2qcZpazGE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(366004)(376002)(396003)(1800799006)(186006)(451199021)(6862004)(82960400001)(478600001)(8676002)(6666004)(8936002)(4326008)(41300700001)(316002)(6636002)(38100700002)(66476007)(66946007)(66556008)(83380400001)(6506007)(6486002)(1076003)(26005)(6512007)(86362001)(2906002)(5660300002)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?466a81uyJn1OwSgM1vgmhj+o+gSBQkQorFoQ+iR7h+y7LVvD6CDHZ1glye1D?=
 =?us-ascii?Q?ZstqwMSuM033O6CPF7LMkJnWSdn2dmsGa0si/VKl6YKkyzyWYp72WsnoOr8t?=
 =?us-ascii?Q?vqDR3TnD5XEa39fg0KaWDUwEkZOQyXhoM/VXwEWPbhd6ZorHLo07UzLIgzcK?=
 =?us-ascii?Q?ZSU9Weujc5V00DECrkL96TruOclzDDIgPiE39WX6bP/o42Pjx8et1qj/6FEu?=
 =?us-ascii?Q?4HMSVF+5fGwL2/CceJ3DLNFTPlbNi5VDXxsTx1R1kTIrGZJxsimSkD+NF5h+?=
 =?us-ascii?Q?XJRhYYfKHyBomINVoLuEv/Ak4SDkWbUzCgPvo5K/1AQ5ylhxQMFCbJGMMcCW?=
 =?us-ascii?Q?DCv6Sjc1kVM47S1EH/B4vp9ZiYBMQcdOCE5P57TUfnWciuF36AnkK8uL1RSl?=
 =?us-ascii?Q?xcUnmwLxenxjzSUGVCdwBLo0HDDLCuA5wY6YdI/wXU4UKCJ7asLDhIoxYEfV?=
 =?us-ascii?Q?pbHTMdlVLmXWD2MWTNJP+5/C7NG42ZVv0CUJM7lg2SJ+8ejmUpqpLtcYd+q/?=
 =?us-ascii?Q?xpQXY73tV6khqamaghhkBB/2Ni1j8mIQEzSlS+m4D4cm8E1qTqzPz6JVnJ36?=
 =?us-ascii?Q?EFvsu8geq40t13LVCK0i0qGo3RBJY0OqRjJPFMHES0MxuhFD1TEQNf6hNGnX?=
 =?us-ascii?Q?55NToWdE4klXyXdMXe+d0fOzFsvrdsHCQTBFtieaSMFTMC1mxTgdmClODIbX?=
 =?us-ascii?Q?htxjzENTnTeIJnjT0AKDMpYU2Q7DHjVrJ5IbDk0/i5oPbeA10bhtGsILoRU+?=
 =?us-ascii?Q?6vQDeQQrFn/1To9oiJktRVR80XY7XZe7AHdbPODVS5HsM1szJWjOBBVh6/9L?=
 =?us-ascii?Q?RWk50+ySzzTtAqpRq3xkk3GWGQbvnKClI7CeQIdJC3FrPR6M2fb2OZCQKMKI?=
 =?us-ascii?Q?Qt6d9X75WtBT7xThdWq0StbNpsrLgiSmZvgXeKpO6NipxUwbMUGze3cAmL9O?=
 =?us-ascii?Q?xs1DU8TGh8rRyWLcbfvpneJ4TR1+tiiUDZPcZEKmrG1rSeijXC8APUt72DWa?=
 =?us-ascii?Q?O84bOtiFO455puqxVi4H3r9L28yEdSsoET08lXwy2MCKczc5swnyGQI++EY3?=
 =?us-ascii?Q?j9QCA9nue+nbcDNFZz/0xw6v7DY4y1wp8Zzlmnv7r36h3/8TcG+xnfaFoyml?=
 =?us-ascii?Q?GRBu/q0d1S+JViuBVA3V4sj7WhZSboPtcsvL0Sr4FA79BnnjRL8x2p/YFdi8?=
 =?us-ascii?Q?8+rPOxM1dBYvP8vZFU+YKJqs91L/utvugJCrjBdO7wcAns4p44mUt5dJeLuj?=
 =?us-ascii?Q?YzFqNLzh8ZKyDAwh7AWip4jWeMZzCL7b0wXTcgDGCDEhDn5dVRV84LDYDr4c?=
 =?us-ascii?Q?wLxX2DLKTjP1dVFAYCn9Rumf7PHo158iK1sruDF18PzSgPIQse32JDNkXLRI?=
 =?us-ascii?Q?PN6OdsySixO4EV/zXLR6bEdLfZhj6H3vTDAHHycfldkX8VdfLfAJHkJRCi5H?=
 =?us-ascii?Q?oybuuWW70x4SEZjZq2tSVpgjwjT3+MDvs8inpoTLcZxPHo0ZJJi7gYY9cUgn?=
 =?us-ascii?Q?dybh6wE6gBfAZr5weqlC1vVnaMmHoGmUB6ZcdFV7wtY9eJLR9WcKRktWtPUr?=
 =?us-ascii?Q?An4v44fKCfoJBQbCWJaTL86n1YT/JxrpbQFIuUm1BwexR0jVw842YyueojyD?=
 =?us-ascii?Q?og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1f4cfcd-8970-4bb5-c027-08db9d1925cd
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 22:52:33.9468 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K/6dhFKGGac5tYrFgHJfPOdUdmcVWAfaX1/sl5ZNOLj4lbtpoFH7cWt5j11KNYKtJ61SuWWLzPc18KOcVoR3md1Uj9i8xI/GKdSKcGszED4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6423
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: andi.shyti@intel.com, michal.winiarski@intel.com,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 10, 2023 at 01:36:20PM -0700, Jonathan Cavitt wrote:
> Align igt_spinner_create_request with the hang_create_request
> implementation in selftest_hangcheck.c.

The change looks fine, but can we refactor so that there's just a single
copy of the common code in igt_spinner.c?  If more changes are needed
for future platforms it would be better if we didn't have to remember to
make the changes in multiple places.


Matt

> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 0f064930ef11..8c3e1f20e5a1 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -179,6 +179,9 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  
>  	*batch++ = arbitration_command;
>  
> +	memset32(batch, MI_NOOP, 128);
> +	batch += 128;
> +
>  	if (GRAPHICS_VER(rq->i915) >= 8)
>  		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
>  	else if (IS_HASWELL(rq->i915))
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
