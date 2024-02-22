Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D16186050B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 22:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A1B10EA7C;
	Thu, 22 Feb 2024 21:46:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="naLuFGM7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9959C10EA7C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 21:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708638366; x=1740174366;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1A0Bj2V5h1K+jSLoP5eCq3U605q7cBi5Fyghf6ywg74=;
 b=naLuFGM79vwr8oUVUVtuRHqNrv+jnrTFHJ3zhvvBo5VdsdSKKun65z6i
 1E4R+wpOK/VSlzYQPWgeZ9VmvwPgdRPgSD3RcYsrvTAFIEw9qMlUO7wGg
 0x+rnWrj0x9u/SjAKI4zIlk0sNDphRE3Dllu1hMtjGr6M5zpAuXC+9rcR
 BZr2bTxN3gf1HPiq3NtbJtyQkQQLMmAgKeGc7l+/ZhSkpR94qJvm1Bn9i
 HQlXNTkoYxeTllhVN453m5RsePYRMdPbFw92K0c7g7dv+01VFsqSOD5ge
 tvOv50r0L+PFvCk9m28Q4eDf/4YabRjoH5x+Shi2zyEzQgFJ/xFN3QT+a w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2816330"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2816330"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 13:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5532099"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 13:46:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:46:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:46:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 13:46:03 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 13:46:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bjU9MxgVeXvpWvU9PLDQcQujfBPBWTuSNOmLSvtOBc0J3uE6RAdiyzPD4cN/KrE3ikaqlMpct2rdtoBO7NOu/imDRxSnmQRK+NYyljtaDaxEIDpg++i5LQ58likxX/hwIK6TxhgnGe8jGUZXfEgr/A4J/Wey2BsYL8CAVqK2xpD35mdjcV2k9J1P4cSqzkZ2jnkmK0OhTWQgi9H6cyWTCUIJca8zeS2ospK7kkxw1k4p0zTLPIBgtbC7Y9+WIY7hSGmmKD1rI+m/scoCln4Ou6DfPYl6gjK9QCgHCD3fZApHdNhyKh6VT7AN6K7rVoMQ/FY8SMGGaYskuJTlHvacjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M95mNP86X51cVH0ShRD7j8WuVZdCSYvqrb3qky42ZI0=;
 b=SqHNlbI8KHyoVCn4oFYMxiS5KbQL7Vk51Zwi5Cs50Zl9G3r64GcCF1aQ5SdALtKCO9ECUBcnoXnVDVryiIZLd11nTcICOU1xr/BGhUXZiH7/nm+U24g61BeORIgu/Xu4d2/1NQERUO/THHIE5Qe3HdQDiHBROKwQx2NgnDJbiA2Ace5e913WKQreTrt7alZzz+y1Sljzg4/zy+dpE4V7LfWh3nrYnZNxZfyfUaGUkPcRlMZqsuiauhjVERk751OC/gyqrm6wFBLLWInhlnq/W7VlOy+BfsCbMbwEG5eckjGkplCJH5H3n+IJTIR6Y6efqgWp5i27jIP5j5A9cUZ5/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.10; Thu, 22 Feb
 2024 21:45:59 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::e8bb:5354:3889:6092]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::e8bb:5354:3889:6092%3]) with mapi id 15.20.7292.036; Thu, 22 Feb 2024
 21:45:59 +0000
Date: Thu, 22 Feb 2024 13:45:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915/mtl: Update workaround 14018778641
Message-ID: <20240222214556.GH5347@mdroper-desk1.amr.corp.intel.com>
References: <20240222135715.1552235-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240222135715.1552235-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: BYAPR05CA0058.namprd05.prod.outlook.com
 (2603:10b6:a03:74::35) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB6825:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f805684-8305-45f1-cd55-08dc33efa842
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P2m7iW0qzNchbarySUpjf/XYMFyorxcPZ2Me9Cbwv+mihV3xpiT0hp7Md7JAfK+b6ZJBfk8JMNIdhJCzkWJlQd9IxHqJVQmy835kOf3wNyMqMTTtM07PxsSuGwDienNirUxlXH9byubOEih5bWrWvpjT7E+GBRvKQbbxQ0yjRmuW0Srau8Rj8drehrKfJRbtsQS000fhQnSNZ7MuWRfGh5nZ28cYzgkonrRS2VXg6VQjjSlhItmiuMj0fpAV9DlwAoXZ7dI9Ah8M63CzKpFsF3aah7pFtgKUXa1GNPl2KvPBwn5/4dfE8LzkOMC0QPJ77HNwlyTWefRDNGnK5SrHWfICvlqs69VPE3nieK9fsPHouYZ3Uuj64yzjonW5zrDbruDa2RRjY8nvGq4wd6CyRzsPVU8qepl57H9hxnoVTFL+0IOVpCDIJ+2uKU++yLXhvWoEbvGgey0Du9GZZgrOlcIiSAZCt7uQKhyNeg2kTHdQSLPpm/1Vv+4ngPOokjZBG6F5itu+O0TKaE2JABDrM2daBvigGN7bpFavsVuqFeA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JgWP1jR4dxf5+i0XfvoG6I6/yqblMKtbC8M/fUntZtr/YdxRCbWtfORPh+Ro?=
 =?us-ascii?Q?0YFhUf7uXZ8gSf1jOfjVkhB9P2NCfyPu8jgXYATj+VH5OBEehVO2VhI4onrv?=
 =?us-ascii?Q?3qJsUbvhak+HAptnTHZhhfcIMhIwMZbMJ1DoCV78PUNJBV1U2/ENGPZCOh5M?=
 =?us-ascii?Q?2tK70p+6ZqVv4FQSjqXscLVjQcH0FudOVzCm3dxh36o4mCwF7Dvy+lgsfQxx?=
 =?us-ascii?Q?nohocrbfTW7RwGeFwseRJ9cgE63x01bs0qSx4XosFT4kmuNbJXaVjnGzSl1/?=
 =?us-ascii?Q?vlM+8JUSfo0tslUO4aPxoc61kD0S8nRgnJLBi9I2NIRuw/h7+RR3pidEXxO/?=
 =?us-ascii?Q?pgi+xjD2BYO8d+TekB1wf67GJfUKQGnF7+/d2eKmKucsm8mtjXbPmAHRUS1W?=
 =?us-ascii?Q?Vy0GSFrnaOIcL8NY06z4NiIP6llHzMuJG006hUWRQTHKcrBCxNvpQ68xzpvF?=
 =?us-ascii?Q?Zs9YA8Fv2nkxPfQNXZKQ0L8OW3Kd7fleqEjDRX+RU6HUp4NrddkzM/hpZpD0?=
 =?us-ascii?Q?NgUWMh+pSIXBJIyI8GR3VVP8vsKuQRFcFIF97qGJ6M517wxU8p+W7w/81MMz?=
 =?us-ascii?Q?A+8rSePIo34Xpryq6qBHPITXH/7IbMLmA186CNTNBpJiO629QW5t9PD2/+JP?=
 =?us-ascii?Q?0Xb3UT2YK69CkaHMAF+lM+yFksypf6g8Lv0JB2Wdd2e9VaEQN4QYj5CfhZX0?=
 =?us-ascii?Q?sv0orqASbjcALRNoDbyzA/Gv9gm1B247P1TA1fetiQbBHM9E9lwT0zZOUSRa?=
 =?us-ascii?Q?WpdUYcIk47eM7DDLHRCkYsdeWsvhGhnJOMLuREo6mI1Q+2ArrgYBzjW50Xdo?=
 =?us-ascii?Q?dLygnt8WMFBLQkz5XqtI9muAwoCNMQ8eSmytMOJxr+CSoNutB07romih2u+I?=
 =?us-ascii?Q?SO8wragJ5sLWzM/O77/zKMlRgfpMGvUcAX4dgXYKc/Fu0vL/xkHLu5W8o+2O?=
 =?us-ascii?Q?9ztmpHILfjNB29AYxfQfdKvNEI0JDbjOfNx4Wp9bR3WaQAMdOUjEERjshgJg?=
 =?us-ascii?Q?z3mmABG/JjtGMfLLZIma1dcb3SbizK65OX26/s8Gqfa/66CgsE0swVltPg1M?=
 =?us-ascii?Q?u0kA6mMc5f42TfS04hktmDKdj/2zrd7jP9B7Fu1hf6BKgWq3EwKlYW/KpO6K?=
 =?us-ascii?Q?gmI1lp4Fr+GknoPbMkPC/ZZoh/5S+H7Wqc51uuF3nZM9Z2nL0GHXsqCk9orb?=
 =?us-ascii?Q?yJpCjpYTLwAKuq5q5GGJRQq8H6QEhaM2LxFcy73m5I7M0C/RtW+oXZU+N8aX?=
 =?us-ascii?Q?GFrKyyOlpXWqnd/eHFNjljZ8VIlGQsUK9ogAHMt3MWK1lnVX+tUGEVnKilPl?=
 =?us-ascii?Q?U5QHzn8wfVS2FZFOJVUjj3skPVGExeZLivbRPmSE+NIHy8wrK3pnzTTgMDbX?=
 =?us-ascii?Q?MPLf+t/S9QOpYxIGWNM7MRbv9RR8AJBc/2goJuKHouBOJUWgbTcvv5F2gCC1?=
 =?us-ascii?Q?OABmp5ybjaoBPPyygr/4BD4O+dz7Z0fYA2km1Akpk8sgwItEtC+hAQgvtLMI?=
 =?us-ascii?Q?3xu5ZlPwMXgaxHPywpdTaYEAekxwZWDe13oNBIMAkSYnaOUmgvqEpJORgQoq?=
 =?us-ascii?Q?OaCcdwvEHx48guG5XKNrbuK8ZME0Jhhb3wxs+Zbs3XUedoyQMSkyd5zPY/ZD?=
 =?us-ascii?Q?Wg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f805684-8305-45f1-cd55-08dc33efa842
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 21:45:59.4078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5gckKaK3+zF0CMx19dRYZNQq6BHqp5P95V46fjng9PqdYO8xt3BU5swPw8H3y2teG2reNYiF8GDrNR2HnlDjrUTaHYFPG4/02F+cOdAUus8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6825
X-OriginatorOrg: intel.com
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

On Thu, Feb 22, 2024 at 07:27:15PM +0530, Tejas Upadhyay wrote:
> Applying WA 14018778641 only on Compute engine has impact on

14018778641 is not a workaround number.  The only lineage numbers that
are relevant to this programming are Wa_18018781329 (for DG2) and
Wa_14018575942 (for MTL/ARL).  Even though other things like internal
tickets and work tracking records have similar numbers we should not be
mixing those up with the actual workaround (lineage) numbers.


Matt

> some apps like chrome. Updating this WA to apply on Render
> engine as well as it is helping with performance on Chrome.
> 
> Note: There is no concern from media team thus not applying
> WA on media engines. We will revisit if any issues reported
> from media team.
> 
> Fixes: 668f37e1ee11 ("drm/i915/mtl: Update workaround 14018778641")
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index d67d44611c28..46607aefc026 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1652,7 +1652,8 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	/* Wa_14018575942 / Wa_18018781329 */
> +	/* Wa_14018575942 / Wa_14018778641 / Wa_18018781329 */
> +	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  
>  	/* Wa_22016670082 */
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
