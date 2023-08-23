Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C897861BB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 22:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCA5810E0E9;
	Wed, 23 Aug 2023 20:49:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5341C10E0E3;
 Wed, 23 Aug 2023 20:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692823767; x=1724359767;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9ZK4MwlbD4T6TmSDEznzWY7mkwT05eIv73JApIePnJY=;
 b=GuiIaENQsP8egN6hG682w1WviRH+ojy7JLatlni2FqICOFd3EaUw1P83
 4oT9YOFW7w1gqBZ/e0bJS1Kivu6kaKD5gtYjTUfke9/bZPE7/66TDiV9y
 iDz+7JTlsiPU/+NKHidNdT6T6lBmfADj+SEJg7CGwa0SucdP0vgrbarqa
 AWctgTwEwxwwhVO4khlDjz9G6Cu00UBmuFzx9xayCngJ+ThNfaq/HhHTB
 cGCBoYG84THDsZ1EiEXtQ3XXBvQcgBxLD0NqOi5A61Ug1C5L9OVRP6Zum
 TvherYSrmX2nl8dgFZYfA1ryTxivm7bCfCz/k1dQAxo9BJE0s8EzXEEAI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="378021518"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="378021518"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:49:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="736798285"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="736798285"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 23 Aug 2023 13:49:26 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:49:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:49:26 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:49:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FUerf3JaPSI/x1GCHRC5YZNkc8hZuUmg3BP2ixmvXRLMocQt7A1jmN+P1Hn+v2JG9qb6y634XHE9GJ85KhZ2aRhi8clVLGoicVAIaCAYDUO27mXbd2k52ZDEzMVJd6yweqq2ufdB6FLaG1EkVsr0NlN3Ov5qZJUAABJTZ+zPpAgfEXHtTAklTlchDMJiJk7PuMXUN6IymjRC7/+yRzxk1yptFGX9XSGuX/27HNA8pBsEeROnn7bsrPNo1FkJfcH8FP1Hho8Tt3Gn9cxTqg+4+A273UXPyyIkNQF6dsFXVHQAChWiM9O8sRJaZOMkRXrPJ8mfcCXhXMmLmMCV08xizg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5WQQjGzz98hFcNHQyvukUAiglPDy/GW+XL5yUU8Is6E=;
 b=Z/NmXshR/3RPbkLnj5J5vPGJt30rCVe1xPdwobOBWW/o85O3WFTqjur39efpE9yuPuZz0LpYbKUlXgBd/YFmxbKAd/S329Zz1ZPP2SqHdGp8VybMch6TdQtroL1oCeUqRUWqzc4lsYVPjSO+4IhgqvNFeKNZmZv/vz7qB0L34QBxVetrl1NdIjPWUvWh5KMC6m7oNKfW0m7fqOAlEw1iBPI4Vm6KYP4zpOJXKim5iO41H69oBbr0pgbKYpHHibm/ncP0RDrZoFGdmZKg5FaPh3JJ9c2fW5FsjYrOMHnMOjqiQo1H9ngp0XS5Q1dk06p2uS3jZl+FQm6I5FcwUuXSnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM8PR11MB5575.namprd11.prod.outlook.com (2603:10b6:8:38::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.26; Wed, 23 Aug 2023 20:49:24 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 20:49:24 +0000
Date: Wed, 23 Aug 2023 13:49:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823204921.GL1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-32-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-32-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR05CA0052.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::27) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM8PR11MB5575:EE_
X-MS-Office365-Filtering-Correlation-Id: 856f86f1-db5d-408b-028c-08dba41a6ee7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JeFJqb/aXBc5cux5k93HiPqRWXQ9+wYjRw8s6EzpOUVJ19BXtDd9gQXCoUniv196if7OYxmmdMOjFE7FoPm3YZgHzYG9DJyyJMeuXu9ekskapCbipDfa8Lq3az5LYd8k/nENejLzp7bcN9Ko2xU29exs3uwuQaV5InBX80PVXn2DhGAZhphDPE86V1LrQfC8CbjkIqcx0UDhMsh31swe/7/WZXohFu0W0fQDfRTuBKw5P9WvQxGIpfanuXs5iCJmd3f35o/C5VEHuH7MHRUOiY42U41drM172ZBXLdIH8MmzstRi9touQec1YBgSFprmXr+xgCSXTZNkxBFyOGC6R6vaGlaGJzYZErJGFpdVFxCKzklOJbEAfpQ99sJlvKqt9BciXnyT6IyeZS5FcIvpH6oJujD4L+V1T0oR6B57FJNNQMrKcM4sphqkThK8yonecNDZpLrWz33r0CkSRrmCwQfvfjs3rRdSdolDrb6u4jaeaxrJiptDbI9/MRkdzvaxwDXr3nSZGDc8sbMMmhxSF3aibC7hDRQ9QRdQPapWRtcssRkYbTb0IPYjVQqyzs0h
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(39860400002)(376002)(396003)(451199024)(186009)(1800799009)(478600001)(33656002)(86362001)(6486002)(6506007)(66476007)(66556008)(6636002)(316002)(66946007)(6666004)(41300700001)(6512007)(38100700002)(82960400001)(8676002)(450100002)(4326008)(8936002)(6862004)(5660300002)(107886003)(1076003)(26005)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hI9SNX6mvd/04LgI3uLk3govqz7wSV/mZTwtLPC90eC7Ewl9ivyw/pKpkOcO?=
 =?us-ascii?Q?TQe6qMVABJXxPc4SCTTJ4bUGN9MiV7c3I4NEuMSXo5u7syuHjHRFA96gT/s7?=
 =?us-ascii?Q?2Kjej78qjkZAcoiZD0yhKAoxgNQtyOBeZfI+4XO6H0QrmGxEP2DlQAMtLwMv?=
 =?us-ascii?Q?kPL6nJaWBurIhAsT2/VOwiHN+0QbAeyZeZPD3QSdlATUZX4ljVT3YQokwoBD?=
 =?us-ascii?Q?Ix0OMVLGh+RYoLJoR+iTpNQAzuHjnKb4lUSQW3ImmOQmUMR1FVj9tgi9b2mD?=
 =?us-ascii?Q?sVVKal+xMPhOl9l6KMIC0YoKk3OLbC+ewlaIqysI5wN8ZlrgY55romXKYtvH?=
 =?us-ascii?Q?FaTqSdOWqkVRKFhJ1AQsfYCXAFMPW5Ri97hXK0zHt3d0gBl/ut6ZavxnDGrr?=
 =?us-ascii?Q?cvO18pvSNdI0Wr8am2QNqkKJEFatYSaBaTMFFf+uF9xB3LDhf7o82Y2UKfEm?=
 =?us-ascii?Q?FX1LnA1mZFhITcM67BcLD4qiJUJmucx5SZDrP2Z0BccNoGhfqloVliJ4/oSf?=
 =?us-ascii?Q?lx2X5lAlo+E16O9erFlW+OVbInS30sKvX2j3G6l2HSFweaFzxQ4d2lazm4bR?=
 =?us-ascii?Q?A403xf2OQnEWVx6EKxgF0BQP54/XOUBBhIiDdFn74Kl9B6A6z1GzqFxbOrca?=
 =?us-ascii?Q?dy0J35xnZNV3GDvlH+znDplJYzXZGH6GxMhjwNd84hw5kXCzHQJ+9EKEYF5M?=
 =?us-ascii?Q?YGTzC/9L0+2I+7bqNK5WHSuxK0SSDzf7bUH+xq+0M4ySYjcpRTeQVvJe0l2a?=
 =?us-ascii?Q?dKuPi4M49lCLqXIw/vwqDJLGruce+eW6UFLit1kxDsCVq/WX7l1QFgyULfCl?=
 =?us-ascii?Q?k61SJRYYlYaJj339BE9gvKJCc78AB7Jqyncgmz1lQaV629bUwWQnM3VY59cf?=
 =?us-ascii?Q?v0/mMgMCN39SkVnr0BWtBFxejeHb9xEkPLVLvHqCvfK5SUCNHgqtgLJ5RjQT?=
 =?us-ascii?Q?E+TYrOE0aMmyfQyH/zTasQqgkrwNGBSAYKSJy0rtSvP/HbvnUNEUIMlPlrAO?=
 =?us-ascii?Q?1IcJTfB5IZ9h2oJWs0YKT/F18a9SypmiYPy6uOyQgmegoBRq2u8KBatZGg9F?=
 =?us-ascii?Q?p58tDYRCf9RCh3D2+y3AsAtsbt0tBzyMFxEmB1tgDCDkfXBwd+w5qjszex3T?=
 =?us-ascii?Q?EPwGE9pJaE3nfHu1HyRD/DyeocQY24441S0G5z5xe22UBnbgNsPcJQv4XNtx?=
 =?us-ascii?Q?i5eb4gfPUnhJjxfz/a04RFyYWTe9cxjovshzTz4ronj30PMxl/4GAR/YKKVz?=
 =?us-ascii?Q?+8jSudy8XZnQ/iGBf9Ce61gywUQ2uWBdHZpyTh/hCm1ru18AVXEZ0wf/3KVP?=
 =?us-ascii?Q?aa+QiW5vKNCpmxqx2Z0Qqy+LP7aTL97rIGVLBX0Uf8GWa2NUU0Mk+q4UvHvS?=
 =?us-ascii?Q?WUojBo2TvzhYyqkR8AnXTnqEL0uswa0yKTPUBje4ClgRbE/sMfc/eYXmRKzo?=
 =?us-ascii?Q?vEVchh+nHv/4oanf/2xG3d3mBxi1fb9W92FNTOQTcUl4nV0SPIoJmUKJymp1?=
 =?us-ascii?Q?oUDWcnZ+MiCVPZYq8XGEx2ftIATTQBbpM/6oQwB+6lwYF1FKyp5A7k99Qw/e?=
 =?us-ascii?Q?aCijqpTgxm4apLK+i6U4eDzrwtNPbu7tbgg7bEvmeDPVD4SGJ9wBaoGNy36X?=
 =?us-ascii?Q?OQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 856f86f1-db5d-408b-028c-08dba41a6ee7
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:49:24.1456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fwxd+5OK07SM29R0Tk6NeecrKBIypsEcBsQvOzYqNzbErFQ+aczJzUvnwmXkaK37kpG2PXm0Yi1Hc1Mt0vK+s13uUHYjSV8wppXjVC/XwrQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 31/42] drm/i915/lnl: Add
 gmbus/ddc support
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:29AM -0700, Lucas De Marchi wrote:
> LNL's south display uses the same table as MTP. Check for LNL's fake PCH
> to make it consistent with the other checks.
> 
> The VBT table doesn't contain the VBT -> spec mapping for LNL. Like in
> other cases, uses the same as the previous platform.
> 
> Bspec: 68971, 20124
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c | 5 ++++-
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 097c1f23d3ae..3772b91e155c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2195,7 +2195,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>  	const u8 *ddc_pin_map;
>  	int i, n_entries;
>  
> -	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
> +	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915) || IS_LUNARLAKE(i915)) {

The LUNARLAKE here vs PCH_LNL below seems inconsistent.  Either way, we
should probably put the newer platform first in the condition.

Aside from those

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  		ddc_pin_map = adlp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
>  	} else if (IS_ALDERLAKE_S(i915)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index e95ddb580ef6..801fabbccf7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -155,7 +155,10 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>  	const struct gmbus_pin *pins;
>  	size_t size;
>  
> -	if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
> +	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
> +		pins = gmbus_pins_mtp;
> +		size = ARRAY_SIZE(gmbus_pins_mtp);
> +	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
>  		pins = gmbus_pins_dg2;
>  		size = ARRAY_SIZE(gmbus_pins_dg2);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
