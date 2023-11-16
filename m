Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4C27EE8E7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 22:46:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9558C10E2D5;
	Thu, 16 Nov 2023 21:46:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB5210E2D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 21:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700171192; x=1731707192;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lYS/XwE4T9m31U8U6PiVy7/orgkNft8vdzM3XW6w8uI=;
 b=mkIMivqYd2UJ5Wc/GQWY1G3gCrnKR7F0exky3osnZDiqhZUBc6FRGfOs
 ULzFLrkEPz0N5pXwoOkUfbSG1B0A2wAPoXwwp5CZfMWeM8ImlfnWb0zwb
 5muV46E/OOpEohxsJ1v7Ka+wxOJVivV1NtDelTeGQ6hiv44WFDzaccXjP
 2iHmM+GHPSyXqPC++/PiwiQjQP+vElOTS2f3tn5sAaG7q72PwPI56WMUn
 tiyd5z9A+de4/00KEbXhRVT7xUZRT0GwFEvmaktMM1qLnzQ/+NKlWEhV1
 iTrBGqfopgvUjJKWpwi0rep27fAm2hDYUFNDKKxM8Ixi1U/6B/DN5nWvr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="390044168"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="390044168"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 13:46:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="1012730464"
X-IronPort-AV: E=Sophos;i="6.04,205,1695711600"; d="scan'208";a="1012730464"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 13:46:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 13:46:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 13:46:30 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 13:46:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FFEoyGx6adU8JYhDj2aW0cb+JZb7S76Y8exrB9zo1iBcQfAbv6THa8QGgKmx6iosQ9BAhUWzJ5C+Wcxq5dgZwrsNoBFgbioDXwIy2Z9fpnc/wbCWWCLxlL+XIUNl6x8nM6byKWRltrRgq5gsv7nEXW1xCyV2gRxmmBzMzDfcI8h45PJXmMmbputVkO0c1gXb1FDUn/BqZdtEBTysI6BzBoChEBBiEeHx+ilUuiVRpzbVfPNgbT3UlGBiS+avvAWy5OknRZlWBPCwFGNz2/9PtSB3l4eCpxsK6WLCPJllaD4pG+Q5cUZJxK8Wbf0PN8ozokks16DUQtFcC/e0mAayZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OUkMKAWPQntXdfEkY2nqhgn8BEN2ozRYc6tLk13i6u8=;
 b=hPUp4REojLarATdNMVp8HxxFaHY0qj9Bvf7JAErnCWqVuvnkM/8l9ZMqsjnjjPTe283fnrTFloYrNe0VPh0lUOGC/bzF6yxe7HKpowETQjTGvdMqgpzTSs9+96+n2yCq7kzpm3SSexaF1gHpoFDd+gWIdCXC5C/kShgJxinos5a7gA8585QFwFqUHTUwFCiW3wjDu8vJqTZGAe2HgOCpq20n/s6GePTGwIwj3+7p2IxLVLDWtGMU7Q76+9HZ008B7SG2zN9N4f5t82ZKQV+FRF9fp61DCHiXIRJJiCsbzdkGnY5yKt6PxoNqDvP6cMsNsiCZq+UPxxPsNbO9RdYkXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 21:46:29 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 21:46:28 +0000
Date: Thu, 16 Nov 2023 13:46:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20231116214625.GU1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231116212511.1760446-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231116212511.1760446-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR05CA0131.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB5076:EE_
X-MS-Office365-Filtering-Correlation-Id: 892dc50c-d3ea-4668-9d14-08dbe6ed7d57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G6hD5JkSd0bOfceLquvlwjQ0bTFcvh/UcAeCVpJmCxglcW5m6GNaIa29qsInj0uLkO3RNqkcZE2s0XM3XKODPvt3cRRUnYoFJEOFHdEzuurscR6cgaDI4eTRCn9rCep5VRFm/X6xcslDf5b0Fn4QVNStXQm58T67ky/CQ9jAFjIBewMxCfq0sK6+g4SAMdoZ4Mjwvpyhly4Jhp5bjWDv1kTaOqn8J+aWMB3oRz3Knn2HqEt+wBrcgtmsNGBAJSey8B365XCATA3cnn5Y070vMj7plgkQWvgAgKC38l63rlZmccF63+OEL/TyTfKklhFjLjiR4fZLXIyqu7OEL25q7bfakxnOmbGGgD/MX6DhXot7VfkXxwCi63l22TeePHwidvA58gHF0+jnSGFsPMys/pKU1cQaT0nrQk+fZqueytILjUzm4/5QifFvTGgC3IDICc70ddMoq6maoFBFPaUvLJqdkxWa73wWlNkP/EEuEIQx+5iJY+VoS74IDsNAs+2tgNhSgyu+DLfWEOudDlU5+nU43tBIzWmHj19au5131M0ThdpHbNyk2OTjH03X64i5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(366004)(136003)(39860400002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(6512007)(316002)(6636002)(66946007)(66556008)(26005)(66476007)(1076003)(478600001)(6486002)(6506007)(6666004)(15650500001)(5660300002)(86362001)(82960400001)(38100700002)(2906002)(83380400001)(41300700001)(8676002)(8936002)(33656002)(6862004)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?a2o0ty6hxaSgXFDRJ+0gxqExrT2j9WAs2ltoNPYSXPNlQW4tW4S5hFSgxtWq?=
 =?us-ascii?Q?rqoQQ9DdzqBHS33VnJXswNPknsyMZ7IRfrnhllv6qBLAYXLgMT9yYUT4vXB9?=
 =?us-ascii?Q?tyQE0DqLkZim0u8okstDsmGm/qavsHzz/S8niIyXhGSGHZrmcZmxGQtyzVdY?=
 =?us-ascii?Q?1VHqOPsyUa6wHYMtCwoqzLHy12VQnDXHxf5Tmh4celSWrNKRhTn4OrcLF2WV?=
 =?us-ascii?Q?+M2oIZZ2Lri9NKkNLrgMA1Jb6bdtYBC4GEzUOwbU1bcITkfBKJojlk6yaN7z?=
 =?us-ascii?Q?HsXHTsw/X37s5wmdauIBAtsx5rvp0+MwxUkgEZHjf/C5X4O/wkGq76O8+kdu?=
 =?us-ascii?Q?yiyI6kI+se/M/4HZYyXVRFelJCC76Mx9+WHSxKM2nZNV+BBZA3Nu5BbDS9Kw?=
 =?us-ascii?Q?pdE9sUHZDLBICBTMsi4jflz41efC1O6vfNMr/4llD1xvzURb4kvu0aXDsmw9?=
 =?us-ascii?Q?7HZzLZ3ZF8qQZ8oIYndw/SoAeDJ5K5eiNufVCtEBwW+ZG9svlU1igJXDsWNc?=
 =?us-ascii?Q?002KbwkU249Po3FoZHWR2/3cAfC3UnHN7DuebLvgg46nFN+4bYuxM391PDII?=
 =?us-ascii?Q?o3u2/zFYENk8L2mHwCL8GbPAFLIaC4Mu/jHir8LF3YIqAxnL4O03QsF6dUg8?=
 =?us-ascii?Q?zWO0L4Uc75IDE05wH6D5wJH662voIHSii7BAt8gHclTIhj5V59R8EkXDArk9?=
 =?us-ascii?Q?EXAoaVCC8JKiP7+Quyvw3k724L32m/WDOeTdIZzTCC/3a7u+QYmMMhxf/5sT?=
 =?us-ascii?Q?K/czQTSlptB1RPrfTMUUU2Do2sb5w8lEBxJgaI3+tTfp6kbKvh/X4Hyq1XWX?=
 =?us-ascii?Q?r1SW/6wFZL8nX4n0lSLN/YCcOJrglAWMHqAqc/dA30BFyGQjt/VSzA9nXcyU?=
 =?us-ascii?Q?wkX6tYtr9JhKZBMfBlun9JN3bIrdLSoL7d56MD8oejEkCP7z5Q9yL/+64eya?=
 =?us-ascii?Q?mK86o8myfGm0t00SsIhRvIili6iFXlfczDxJ5sXRt3vQVye6PkAQ4hf4LFWs?=
 =?us-ascii?Q?9/VJr3AvUBZTMvifWkiV4DKaIzTz+/zES9I3S9jxtErX7tuXWEzKkgs1ffPC?=
 =?us-ascii?Q?VHzKBH0WDMY68Dvh+j9TpNexV7VcYiaDbc6spIBOuorpNfv3MHZIAxWUSUED?=
 =?us-ascii?Q?Vxm0HQAeMMpj4v3lAJoKiuih/vpUC4UAiCGzlc88HWhQ3K3a0y0DI+lECsel?=
 =?us-ascii?Q?3g2zDhmkMkYkOpaZfoimaeBr6Tls/Aiv45VlZ+Y1Iet88rBCPjh7IgTDaug8?=
 =?us-ascii?Q?7tpCm6dVzzAsvIaDbPNbwDKL1vvq/sqr0Xwzv/bnlYWBc4grNWl86uo/Vfyc?=
 =?us-ascii?Q?L3cddeRgDk1WD9s46gqUlm8cOGb1oDaG3F98d2l7g4xamsQdxrr/epw+J2af?=
 =?us-ascii?Q?Tw3KfxyFjokZ100lZRupm5OuUYtHliILS5EcvKvYjwci/nn/azilVMs0pgri?=
 =?us-ascii?Q?SDoxhoTSoXNesfVegnPCdsmnmlGI6w+CXUaG+juMpyi5+w4lzvqUfZg/Ss8s?=
 =?us-ascii?Q?JsHzYYaJ9GEQDUHLNLZPoD1SqnbmyQsq3hzlGkGvYm0fcXYaMjH0nvl+l3Ih?=
 =?us-ascii?Q?6MtLG6epQwUJ9yMj94QbZRj/D/uX9OlrEHGHe2Zsg49/1U36DgXBwrAwIgpy?=
 =?us-ascii?Q?+Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 892dc50c-d3ea-4668-9d14-08dbe6ed7d57
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2023 21:46:28.9024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r4ZJrDgYagNu3j9VDzbvEoFZcvJ/y8QmSg+6+Q5ecZwr/lhKBwiN7ppi0Lg4ENe4rTS5nfuveFtTbuwyZb3FTtIJydVd507n/WdEyPpMpuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Update Wa_22018931422
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

On Thu, Nov 16, 2023 at 01:25:11PM -0800, Radhakrishna Sripada wrote:
> Commit 78cc55e0b64c ("drm/i915/mcr: Hold GT forcewake during steering operations")
> introduced the workaround which was in early stages. With a valid
> lineage number update Workaround for future tracking.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

In case anyone is checking, the entries in the workaround database still
aren't 100% updated yet, but we've been working directly with the
hardware engineers on this one, so we know this is the correct lineage
number and that it is indeed needed on the MTL and ARL platforms that
this code will execute on.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 34913912d8ae..e253750a51c5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -388,8 +388,7 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
>  		 * registers.  This wakeref will be released in the unlock
>  		 * routine.
>  		 *
> -		 * This is expected to become a formally documented/numbered
> -		 * workaround soon.
> +		 * Wa_22018931422
>  		 */
>  		intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_GT);
>  
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
