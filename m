Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7818837402
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 21:40:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0928810EC94;
	Mon, 22 Jan 2024 20:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D752810EC9E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jan 2024 20:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705955971; x=1737491971;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bbo9gXqeg5o7CIUB1Om8OESxPxdpTEt+qPCuuRIk66Q=;
 b=eps+4k48hfXw1H53y0x1Xq9hoNWPnzS76uLU9XR0OaLNtPYDa/LqqBCY
 1t6gDj2Scdh5N9XxcleOx+mIfE8zgBj1QeD+YF7tbO1ldJWBM3MoctKpj
 Y6h1xwv59zmly7AW2WgCxlvflTXKBNDcDKDnUd0A0XUyBZwl1qwa6BDjx
 L8oYb7ztsb32bWL6QiYReT9BgvjkYOofiZh9MPkQSECLR6dS/CAUfl0La
 dTQ0Xb+8hS0ZtUqVkoha7X5N3Q7tU4ltweZQz21QZqSu3qfLXrdXQTbY3
 4O2nnIumNivdrP3grZSZxw5JWjPLOxWnpod3yi18HQUYpB0fN+KvKJt6a Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="1176897"
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; 
   d="scan'208";a="1176897"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 12:39:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,212,1701158400"; d="scan'208";a="34162951"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2024 12:39:30 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 12:39:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 12:39:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Jan 2024 12:39:28 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Jan 2024 12:39:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mh4TsA1OMkIev70Yr0YIBhWpxDY2xmuF67D6FqMEkBkJLMTH0Fj7xjO3TKddOTTzO6+rGY2aKkmV8cz/ZfI5OkGErF+/917zRjHCJCLT5HVDQZWRvsCf0pjrxlshGOYA0e99Paq9jOv+J2/GMFqraEnF0T3pH+UZU/GRpZyOaGqd/PnLvgW83iy7tEeH7x0ILsUpxcQ5w3BHzuHY2jyYgAIj85Tb4z7hBCZhatggACZrimgaolWQVit3LDKx6s7LjBcgkF4TVJ28VoSVGY6O0oRKudGIoBm4a1ulxLJzX/Duq0L5/63J8voTm/pslL58LSKiKsS5B1BWCp21Zgdu3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LeGziXpS1WE9VS+gAT1SZQSPJJrD1GUnDhBzPXPaum4=;
 b=O2OpJCxcpRgN4E4aB7piZ9vFl2umfuGSyIsSwofwHR9yQkAx6rx9tW7W1euQnS9ep6qOBS31KizlpcgqxsSgNH5NW9Hfhh/9L0lGc3zrU8C6aS6JYV5CvwqwzJ06jhyuOLOLzYHGBpWRklRiZwRi+RaRbruNFeLCc60Kt3+9kV5tYrnHaEFKDeRkbtAiSrVSyVJJzLuLdnknH9KRCsdCk+4QWvYVYHBJ7tT5F3peMikIpykWbbhzo/ADmeXwz0uxZFEbc6+1VzzE0ug2V6lB088mo1SwBMIraQdrAb/Tq2qLkZkyVaqRBnbs2aqu43gX81iKvxvlxSf/+dlleUpsrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB5061.namprd11.prod.outlook.com (2603:10b6:510:3c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Mon, 22 Jan
 2024 20:39:26 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7202.031; Mon, 22 Jan 2024
 20:39:26 +0000
Date: Mon, 22 Jan 2024 15:39:22 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Juan Escamilla <jcescami@wasd.net>
Subject: Re: [PATCH] drm/i915/gt: Reflect the true and current status of
 rc6_enable
Message-ID: <Za7SeuSoXAWghhXS@intel.com>
References: <20240116172922.3460695-1-jcescami@wasd.net>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240116172922.3460695-1-jcescami@wasd.net>
X-ClientProxiedBy: SJ0PR05CA0196.namprd05.prod.outlook.com
 (2603:10b6:a03:330::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB5061:EE_
X-MS-Office365-Filtering-Correlation-Id: 120b7fdc-bf9f-45f7-634f-08dc1b8a3928
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Im6KjZWD2cAMQbhrBJORyTGZK4kuFJ2005s1MhHn+/NGXL0awQhE0TycBq54zjTR8M0uQneigO+zfG1ONjlQs0gFzAB/ThBUIYWpe/CpZkytARJrPYiAHZbYcv6KInP9Ou/pk6aeFM6jcYuO7IK61Nm4Kl+p7A1qpMk2m03xbI4TAnTKZxNry67N1ASsWFOGciXN+0lABzYUlPPFADgRnvVElY1yz4PFOskQMJgZiXuq7V9xexCnfzKrWPP07Y+cnEvnkYdRLmltTYI3BdfVaIpj+0RyDMpoP8ys29Qs5DD2eW/4I/MiQi33MasNxYEDniDIJewwIXeRx9ZezPOgQk6qe9nbKMj68MiVpRoytkm0ygDokUQyYm/5mPEQmJiOuDXPuexfOo4/025RiqEW78lmFv0XkG96LGTzgFleSInO7GTNKL3PkzAfVFK58RoqponOXKqKGbYX4/gn6pUQzyWXVAnkd3N0dcDYh3CfldDgmumEQgpNyyd2I9NTPMlkPkSU4IaaAvuLqUo9Hlzc0gjtMASN0sxJVmrIkBhnbvY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(366004)(136003)(396003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(6506007)(26005)(2616005)(6666004)(6512007)(5660300002)(83380400001)(2906002)(44832011)(41300700001)(478600001)(66946007)(6486002)(966005)(66556008)(8936002)(66476007)(316002)(6916009)(4326008)(8676002)(36756003)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eMM3a4AWQgLoR7WBEt4bKwdur2eIhnR1AkVOR5hE2gzaLfIUqDtqDmtavzs4?=
 =?us-ascii?Q?1jaWjlFlrAcUFs08bcNM0reRd/S0o/t0r3s/XwnNu05M/unIDljzpaRJGrrw?=
 =?us-ascii?Q?nTuYsTo7IyHXBxuov1XoTm5lZPshhMsP4Y3nKUO4BVrAZ7M4MHjqXWUbBjsX?=
 =?us-ascii?Q?ja/1Lz+8MSe1lNjcKAnM1A3iDpEHfGYqYvn+3wUG3sKRvwq39aYBOY05tztq?=
 =?us-ascii?Q?2rXR+o+endKoVqnCupvHkU1+RuNH+3JGiGLf/wcij4QlX8jA9cDKaKGaoO+W?=
 =?us-ascii?Q?z0VqrMkCeVFyvA6t8rIU0/P9aJVQTiseEzzKyK6JI52EMlMGsL2+i3hkvscY?=
 =?us-ascii?Q?HHHNT0Bnu6GQMgqoD1305KZvoOCn9FUSu3YNFTgqmYsGH3eKj/cB/lwrHFVx?=
 =?us-ascii?Q?uN3yTmlhwsgCvL4FUMD/8iB++sUvEVnf0KwqzEeg9CHQ+c0MWvjHl+IUkDEl?=
 =?us-ascii?Q?LHvm6TaUj3vJeyXBdHTyzzE5iI8OOlSgz/xh3Z2Nxb8k0ucJsRuIYWvPiJ9F?=
 =?us-ascii?Q?qZFxxfJ73odZ3xpvb7PJ9BMrF5tekM7OUcq9T3gktTh17SfnhrcyYqaWA16Z?=
 =?us-ascii?Q?HoPwGSaN9DOJMBJfSQsnjNS9b8jBwcf3uN4OXODeauZAxsisJZFQNrqCtF1C?=
 =?us-ascii?Q?CoWfLUaELzxAEn/5Xz2hn1gJiV7FjvRaE0cLayBTDhlG4xXefKVQ2q9T83d8?=
 =?us-ascii?Q?eqLAjKE0mJMQ4gI0PQGqlSsUvYhsGnfr2AlDDkKD2XetCRa9lxbIb43/bAen?=
 =?us-ascii?Q?7/bQXFmF1qx3j5xpm2dOJi+IbdhXaja+Y4NmfFLeKAoEzG++GbUepAF2UZxt?=
 =?us-ascii?Q?h+6+tZBHJqUAUA3DTyQ3TSsDnYLM4fWAnT9SF1pS4dZWAto1IofHsJ4O2SZ9?=
 =?us-ascii?Q?cWTmr5aShQpATxin3Cr1/OEQlVp4NZyng0LXSC7HejzqQwG3U3qkjM0v/DSL?=
 =?us-ascii?Q?Ds5lgNoLs2Y/t0iBRfbdrd43C42fYsYaHZV30sxZ5rKjkoBg8lAxtyBxqDC1?=
 =?us-ascii?Q?MEaIOEJHScOiyZeeUkhbtHhd1Qzqp7lGaE+t3X7hz6nMvH6c66g4IZfk54IJ?=
 =?us-ascii?Q?QgRQewv7hICWYypK5RXcbPU+JwqlCLkuXDfS52Bzl1QZ3apRlT20GyKQK8B0?=
 =?us-ascii?Q?NZh4/BmFmxWa0rsH5iYE88YjGYsHreZs5mJiknTESJIvbvmhmoldlwcTkqZK?=
 =?us-ascii?Q?kW3DqhYkb0jc/60jLnuSVhxAk/zTc9bo7Tqm0jIdJsiUOMUwrwQ7s8FTjFun?=
 =?us-ascii?Q?OjkTiprKqUJKNsy7eQ1u1xRq3gZn2YZSqVNtVPuJKPx9pBMvrhrUYLgnpfb3?=
 =?us-ascii?Q?SnaqxbE8S9L5nBvBflKz+O9yulfvUo1kIj6Rt50yetLoJcfSR4gyIWFg7Jc3?=
 =?us-ascii?Q?+eSoLJHGOm0N2sNO0AdWJIui/7BOx9+7JkY6VCTyMtAwqThcangzJmyrXWqF?=
 =?us-ascii?Q?efi4F9DtXkCNEZewe+Yu1mgEwESpaupGmbIzmuTYqFkUx30HVNkhPHbFwFNv?=
 =?us-ascii?Q?/5gbxeA77mfo4+FuSTvDTz8Ab5Xl3lKEGMlPUVFyWD5Z4Cwm/AbeJb302RtL?=
 =?us-ascii?Q?swL8XVEAIlU8tJNNRiE1YvkfLYK6Qe0JCVwwQ/t+FzRYaftgMszDrNeu25gW?=
 =?us-ascii?Q?cQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 120b7fdc-bf9f-45f7-634f-08dc1b8a3928
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2024 20:39:26.1764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kwmaszHG5jtAiYcmeBVp2MiR1MaD1vyOpzU/7vyEhYe2lxfUhCvph279o3A1ak+gBS0t+acBolkG68E6AO5ZsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5061
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 09:29:19AM -0800, Juan Escamilla wrote:
> The sysfs file is named 'enabled', thus users might want to know the
> true state of the RC6 instead of only the indication if the RC6
> should be enabled.
> 
> Let's use rc6.enable directly instead of rc6.supported.

For a moment I got concerned about this case here:
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128839v2/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html

but then I noticed it pass the test requirement for RC6:
(i915_pm_rc6_residency:5167) DEBUG: Test requirement passed: __pmu_wait_for_rc6(fd)

Which also anyway is using the residency directly.

Then, I'm also happy with the tests that really uses this like
the accuracy and rc6_disable.

So,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Juan Escamilla <jcescami@wasd.net>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> index 2d3c4dab6d21..c0b202223940 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
> @@ -182,7 +182,7 @@ static ssize_t rc6_enable_show(struct kobject *kobj,
>  {
>  	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(kobj, attr->attr.name);
>  
> -	return sysfs_emit(buff, "%x\n", gt->rc6.supported);
> +	return sysfs_emit(buff, "%x\n", gt->rc6.enabled);
>  }
>  
>  static ssize_t rc6_enable_dev_show(struct device *dev,
> @@ -191,7 +191,7 @@ static ssize_t rc6_enable_dev_show(struct device *dev,
>  {
>  	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(&dev->kobj, attr->attr.name);
>  
> -	return sysfs_emit(buff, "%x\n", gt->rc6.supported);
> +	return sysfs_emit(buff, "%x\n", gt->rc6.enabled);
>  }
>  
>  static u32 __rc6_residency_ms_show(struct intel_gt *gt)
> -- 
> 2.43.0
> 
