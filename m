Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 874D56748C2
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 02:25:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD08B10EA02;
	Fri, 20 Jan 2023 01:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6208110EA02
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 01:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674177937; x=1705713937;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+EjZZu5j+LSwp3EdUn62JZ/DSxcieugLMSe0hXxUcHE=;
 b=EDHAWVSuK2y2bofu6igB/WwMlEGSTquEhfI3wEG9lcYXAs+0waVpcAzB
 cMNdrE05aJIdh6VsBRPJZOFc10FlWpQ7Lu3d1tUrYt9WCenMgpgy6KOE0
 Dp+afhPSbi30rXpKm3Y2Ey2q486zOx/xELjPgEI9GhGJWLaE/Vd8xu0/M
 JlJkcjKImVIaN7fPRbq+q0GGngLgmZ9rRIiz0iVrFaAI9BvRqpF1RvnAA
 FGOGEEpsAbBgZl/9Oz3Xa7HjiMrQWfi+8gwJ3vDfPVboVlT9iBnRSli9m
 3SuyZ/591lLIm2i1lVNsg4dVmDdXo4zJkBD5SKhP3DWo7nFoRQdKe5DFM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="323173332"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="323173332"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 17:25:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="802903566"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="802903566"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jan 2023 17:25:36 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 17:25:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 17:25:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 17:25:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IVkSN899NwdjuYGjRTufoOa5hr6FImUiVdzAUf/Q5tPFu5dBOfddisLvRxrA18XtZX8+LAtrf9UU1lekCiZy0T/77MbJnNZVM77nzCWZpR7bApBlQNSXe7219B9/v2mxytGW9qom36p3LwWAgb0Fvb5I2JLQXQ2T1WFD+rmQuhqfeDgb70XMFkN6BGicgUXM2cyOc4ZVK8PoO970WK2UicyFfslKJrN4kdRFscI/hIfb8lTw1qEaOrZ29lR4ysidaN30/+PRUMbxfecCygN/+XFEFyNoUH9b29AN8vYqRMESmv2N4RfBpDHFFOGm4jy5c89O8fqmpMm9PGQ4KA3oRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cDV9G8SwjYDrwuxOwt/6Av4/1U/wT57M2c1jVZfNn8Y=;
 b=aKjIm05I9Q4BnuE9M4/tSSOQWr0d/IkyaW/vo9alKd8AsvwsBLbfBxfStOBjlu22xBpg6anKbDKHJqQGn6XDUyyS9faPegveaps3PnRhaLldHhAZ4ukrFCLlIrgVrF07nX+zs2Kg/NVrXi1zgelVLxpmtF1NVK2IZyhsDgLRpZuWxIRTTGbKtMbmbUWwvCejIqC0Hn1ZUJ138X2A7GRsWu0+gyjOnY3HRC0voi7NLc3Axo8/aQmumwAECHGR412U2N3pBLZVwQl1X2AzQ77Za9+XCQtLxBvt0EpwN4WZG6q7uJ9I8Gn0DSL4iM6+iQ/hVQZaAjBwS1SIa5/OutGPqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB7618.namprd11.prod.outlook.com (2603:10b6:a03:4cb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.25; Fri, 20 Jan
 2023 01:25:32 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.6002.024; Fri, 20 Jan 2023
 01:25:32 +0000
Date: Thu, 19 Jan 2023 17:25:29 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y8ntids89iu4soYr@mdroper-desk1.amr.corp.intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
 <20230111235531.3353815-7-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230111235531.3353815-7-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY5PR17CA0063.namprd17.prod.outlook.com
 (2603:10b6:a03:167::40) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB7618:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f1d8a65-8fd8-480e-2bcf-08dafa853908
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: upuT5aHmO7fLpJjExgw0SFUsxPXLVvRK68amZCBGwrsbSpmxBAuYReQ81apbuvaryU1UNK/UAB+2LSQW3r2lMKDD3aPUwTXrELESVMbkQ57xyXSS0woDDavqbRkmqL/wWSFKN4r5uxr1Iq5TfDxE5Gz7utH55V99mHSYuMRo0qioDWw4KvrWwF/RKfxB4XNNElspCDzgc3JJzlC6iHjs+BPu2ETKauBSA13OGeTJJ/8wc2kxrVQZJGIE9L3K9puZ+5woxhMhYP2a5e4UF4+912MthWCXP23ByzfjS0VgHstaWBA/HXRcuhWH8OO+b76FtrtCzcKmkvMzFdzbx5Ni3QvK9yR4FvxHoFs6ZCXGcxs2P8zaKAVI8MexV17fnbSsM/qtEqGe40+ddWnclBfNT2mc/WLK1aqHqlSych2qVGq/QJuYX85WneTbmIo68T5yFhWolrxVdz1Moa2pf9oLyhUrD15QLD3ZL1dSzbtnSeL21ulHyX9Aqbb+YwJyKFBAgKvHcFoidgDm28Yd7TOsv51bYgltLouEjmuwD84xvjmMEsSvbeopJMJNvl6DJOka7Jl0n8tnc0Zn76DdazoJ08dypa9XrhHNWzmbgqsSmxWNiIYFJn75pw4LDiAUhaDQuyt4w3JUIInfIOl1xNk5XJ9XDQAJeEnILsNPg78mquD8bPTSxb8lODr+Zt3fEoCA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(346002)(396003)(376002)(366004)(451199015)(86362001)(6486002)(6506007)(6666004)(478600001)(8936002)(316002)(6862004)(5660300002)(82960400001)(4326008)(66556008)(66476007)(38100700002)(8676002)(66946007)(41300700001)(6512007)(186003)(26005)(83380400001)(2906002)(6636002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VWMHLBQamTHEQbvAmLkX8vmiW++X6/28asJQRICMFyDZNI2s9/NPs9qGrbZS?=
 =?us-ascii?Q?ZwTJACpM9dWQkUIWNAl1VR0C6GrUntCHYnNaiB4onHyhjjF0YuJjy58BcQZL?=
 =?us-ascii?Q?QUF+sZbcerBK/CgxcdAEtwCmFX/7+WWCA01wKlNeD834iRVRV8HgzeGJO36H?=
 =?us-ascii?Q?bdwlYNNA+g8kpUu68LVfdc2Khz1XNrRF2SJR316veakVSlQEAp6fX0BnDUkQ?=
 =?us-ascii?Q?zHt02XZOU3J5aNUtJUTNMY3bHpXjMxwBvbz/33g1lLUK+IT8/kHIDMT10/qN?=
 =?us-ascii?Q?u6nngg5Jv4xhwUlZdfmET4B9CAX4xg+dowGMYysGXNRx7pSCi8jgQy/UMAX+?=
 =?us-ascii?Q?Oy+E4dFY9jGxXwgf3W4t23u5IFVvY16Xc5PxqASB9/PAmM/TUhvEMUwy48Iu?=
 =?us-ascii?Q?dRe/N3yNn9s58sxBkIiZ+4syOJgMruqWSXnSjgNc2yBT6ADidvv3NfDnIAX4?=
 =?us-ascii?Q?5IH9G1tXWyjlkJvtSO8WeJMmOVouJ0tTxdNcgVtAC6dMN+LNYNVyxFpaoUIA?=
 =?us-ascii?Q?QrGWL0XX7gKryklbV0dgoZyVZLc1IHJ/lWz0Q6iZP6f1Hc9DVAwsbJx1tyXr?=
 =?us-ascii?Q?t3HLWCZ18JmExav91CLMJqWF479tjZDOX4LWwuDOv6TOT3U0aqrVrgS1LhtJ?=
 =?us-ascii?Q?fG5Pp0SdlV6cINucNFR61ApGp1FcmysLJckPQ68eBPK3cdyt50aMaqHIUELJ?=
 =?us-ascii?Q?FJiqaWa37AeNOq52co/fDQoM+2x3fN0smTVrn+5J4ahq28j8hyhxOaUd2e3o?=
 =?us-ascii?Q?vjBj2/afrLz+mMP82CF1gT3Emnp/SpMVypQxpCtPKRzf/1SuLMVtM8izX5eQ?=
 =?us-ascii?Q?Op6pvU6KgKm4vJwyLko0/ZQkqb7Jnh9rAhuNOR+l56RnxdeYyrEaSwoITcYO?=
 =?us-ascii?Q?qobUuihrdvBlnw0iLo4qDaq0hqRWkAG2GaU9fQbHhNYd/pAGAQjH6W9RPVVP?=
 =?us-ascii?Q?LjTJgICDVRb8mkAHwwiUORFWHf9MDiBDrES5cSMn+KkBoO2tcBtvpMWVD6ha?=
 =?us-ascii?Q?4CauxBtfDGt6ZGfTzPI8CI5Wjthv3mmHcPXvnWBfENAyXwdZO6eSfYwp3+VN?=
 =?us-ascii?Q?AfTGquNOLOlNN/1jkEANpaVQlInJdumBET6DrW+l11dwtwdUUj88vVdWTibQ?=
 =?us-ascii?Q?bm4sUFn5XiHxYS6fC/4A6DHjkX/dLpWfDdn3RcCna0tYxtFFXiITa6t0v2WK?=
 =?us-ascii?Q?9tb0G/TNBSV+AQ0xm6ke6ETNo8Qnowc09ax5qFyeiBxbnok1SsfNthox+wkW?=
 =?us-ascii?Q?27ZKJYR7NGd9dKUKOQ8XQ0mzFAlvRbd9TTXC/5mY7bZo6Dafy8R8ytDWtyA0?=
 =?us-ascii?Q?dCfdco2xu4oo6nDhBzTijyTWtTOvDppTTaN76fBoXqGsHM8RhQCStY24Ps7k?=
 =?us-ascii?Q?vB7pFp5FSsdWvd+xiGC4lNiozzZdIHE++OhE2je78xi0yLVlr8CglcUdSwXG?=
 =?us-ascii?Q?VpMyruu2l6NhN9ZK8yq4AYmU4JX1hSB7OGdPZWX89lzL31cUR4Tads/uvOBx?=
 =?us-ascii?Q?jeLJ5KvVFo3yxJEaHWGQBxwDSgPT/WVTAf1ZSSk/jEpl4noqAPeEdCtFvrx8?=
 =?us-ascii?Q?4cQVTxdoO86Rp9HOgsZ5WyIrQ7cri8FgsSJdEX5abbVqKCOYkEBrPv5wxubi?=
 =?us-ascii?Q?pQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f1d8a65-8fd8-480e-2bcf-08dafa853908
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 01:25:32.2340 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kB+iEqZWB7FiIHlfIDHWPzugh/uJdAiklvw48BVKfj+NPb/XXxA8pyzQoR9KxnjO9P2EP5PNXBgVulcSjmQjxO82KIKdNk2Wpd8zg2NwWAU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7618
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 6/9] drm/i915/debugfs: Multiplex
 upper layer interfaces to act on all gt's
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

On Wed, Jan 11, 2023 at 03:55:28PM -0800, Radhakrishna Sripada wrote:
> From: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Commit 82a149a62b6b5 ('drm/i915/gt: move remaining debugfs
> interfaces into gt') moves gt related debugfs files in the gtX/
> directories to act on specific gt's individually.

There's another thread somewhere on the list where these top-level
entries are being discussed (maybe that one is sysfs rather than
debugfs, but the idea is the same).  Having entries in the per-gt
directories and another copy outside the GT hierarchy is just confusing
since the semantics aren't clear.  It would be better if we just clean
up the interface and stop exposing those top-level nodes on any platform
that's still under force_probe protection.

> 
> The original files are kept intact in the same location in order
> to not break userspace users. But they were performing only on
> the root tile (tile 0).

When starting to work on a new platform we have the opportunity to
change API's (even stuff that's ABI) and sunset legacy interfaces that
no longer make sense as long as the platform isn't fully enabled with
force_probe protection lifted.  There's no requirement that userspace
for platform n-1 must work without any changes on platform n.  That's
especially true for debugfs which isn't even considered ABI.

> 
> Add a multiplexing functionality to the higher directories files
> so that they can perform the operations on all the tiles in a
> with a single write.

This sounds unnecessary.

> 
> In the read case they provide an or'ed value amongst the tiles.

And this sounds like it could be harmful on a platform like MTL with
heterogeneous GTs that are responsible for very different things.  And
if some debugfs interfaces return information other than booleans, using
different semantics to combine the information from multiple GTs could
lead to even more confusion and problems.  I think it's much better to
keep things simple, eliminate the ambiguous entries that are outside the
gt directories, and keep things simple.


Matt

> 
> Cc: Maciej Patelczyk <maciej.patelczyk@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 38 ++++++++++++++++++++++++++---
>  1 file changed, 34 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index a356ca490159..d64e9e3a439d 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -575,14 +575,36 @@ static int i915_wa_registers(struct seq_file *m, void *unused)
>  static int i915_wedged_get(void *data, u64 *val)
>  {
>  	struct drm_i915_private *i915 = data;
> +	struct intel_gt *gt;
> +	unsigned int i;
>  
> -	return intel_gt_debugfs_reset_show(to_gt(i915), val);
> +	*val = 0;
> +
> +	for_each_gt(gt, i915, i) {
> +		int ret;
> +		u64 v;
> +
> +		ret = intel_gt_debugfs_reset_show(gt, &v);
> +		if (ret)
> +			return ret;
> +
> +		/* at least one tile should be wedged */
> +		*val |= !!v;
> +		if (*val)
> +			break;
> +	}
> +
> +	return 0;
>  }
>  
>  static int i915_wedged_set(void *data, u64 val)
>  {
>  	struct drm_i915_private *i915 = data;
> -	intel_gt_debugfs_reset_store(to_gt(i915), val);
> +	struct intel_gt *gt;
> +	unsigned int i;
> +
> +	for_each_gt(gt, i915, i)
> +		intel_gt_debugfs_reset_store(gt, val);
>  
>  	return 0;
>  }
> @@ -732,7 +754,11 @@ static int i915_sseu_status(struct seq_file *m, void *unused)
>  static int i915_forcewake_open(struct inode *inode, struct file *file)
>  {
>  	struct drm_i915_private *i915 = inode->i_private;
> -	intel_gt_pm_debugfs_forcewake_user_open(to_gt(i915));
> +	struct intel_gt *gt;
> +	unsigned int i;
> +
> +	for_each_gt(gt, i915, i)
> +		intel_gt_pm_debugfs_forcewake_user_open(gt);
>  
>  	return 0;
>  }
> @@ -740,7 +766,11 @@ static int i915_forcewake_open(struct inode *inode, struct file *file)
>  static int i915_forcewake_release(struct inode *inode, struct file *file)
>  {
>  	struct drm_i915_private *i915 = inode->i_private;
> -	intel_gt_pm_debugfs_forcewake_user_release(to_gt(i915));
> +	struct intel_gt *gt;
> +	unsigned int i;
> +
> +	for_each_gt(gt, i915, i)
> +		intel_gt_pm_debugfs_forcewake_user_release(gt);
>  
>  	return 0;
>  }
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
